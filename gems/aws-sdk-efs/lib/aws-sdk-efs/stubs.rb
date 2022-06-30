# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::EFS
  module Stubs

    # Operation Stubber for CreateAccessPoint
    class CreateAccessPoint
      def self.default(visited=[])
        {
          client_token: 'client_token',
          name: 'name',
          tags: Stubs::Tags.default(visited),
          access_point_id: 'access_point_id',
          access_point_arn: 'access_point_arn',
          file_system_id: 'file_system_id',
          posix_user: Stubs::PosixUser.default(visited),
          root_directory: Stubs::RootDirectory.default(visited),
          owner_id: 'owner_id',
          life_cycle_state: 'life_cycle_state',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ClientToken'] = stub[:client_token] unless stub[:client_token].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['AccessPointId'] = stub[:access_point_id] unless stub[:access_point_id].nil?
        data['AccessPointArn'] = stub[:access_point_arn] unless stub[:access_point_arn].nil?
        data['FileSystemId'] = stub[:file_system_id] unless stub[:file_system_id].nil?
        data['PosixUser'] = Stubs::PosixUser.stub(stub[:posix_user]) unless stub[:posix_user].nil?
        data['RootDirectory'] = Stubs::RootDirectory.stub(stub[:root_directory]) unless stub[:root_directory].nil?
        data['OwnerId'] = stub[:owner_id] unless stub[:owner_id].nil?
        data['LifeCycleState'] = stub[:life_cycle_state] unless stub[:life_cycle_state].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for RootDirectory
    class RootDirectory
      def self.default(visited=[])
        return nil if visited.include?('RootDirectory')
        visited = visited + ['RootDirectory']
        {
          path: 'path',
          creation_info: Stubs::CreationInfo.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RootDirectory.new
        data = {}
        data['Path'] = stub[:path] unless stub[:path].nil?
        data['CreationInfo'] = Stubs::CreationInfo.stub(stub[:creation_info]) unless stub[:creation_info].nil?
        data
      end
    end

    # Structure Stubber for CreationInfo
    class CreationInfo
      def self.default(visited=[])
        return nil if visited.include?('CreationInfo')
        visited = visited + ['CreationInfo']
        {
          owner_uid: 1,
          owner_gid: 1,
          permissions: 'permissions',
        }
      end

      def self.stub(stub)
        stub ||= Types::CreationInfo.new
        data = {}
        data['OwnerUid'] = stub[:owner_uid] unless stub[:owner_uid].nil?
        data['OwnerGid'] = stub[:owner_gid] unless stub[:owner_gid].nil?
        data['Permissions'] = stub[:permissions] unless stub[:permissions].nil?
        data
      end
    end

    # Structure Stubber for PosixUser
    class PosixUser
      def self.default(visited=[])
        return nil if visited.include?('PosixUser')
        visited = visited + ['PosixUser']
        {
          uid: 1,
          gid: 1,
          secondary_gids: Stubs::SecondaryGids.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PosixUser.new
        data = {}
        data['Uid'] = stub[:uid] unless stub[:uid].nil?
        data['Gid'] = stub[:gid] unless stub[:gid].nil?
        data['SecondaryGids'] = Stubs::SecondaryGids.stub(stub[:secondary_gids]) unless stub[:secondary_gids].nil?
        data
      end
    end

    # List Stubber for SecondaryGids
    class SecondaryGids
      def self.default(visited=[])
        return nil if visited.include?('SecondaryGids')
        visited = visited + ['SecondaryGids']
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

    # List Stubber for Tags
    class Tags
      def self.default(visited=[])
        return nil if visited.include?('Tags')
        visited = visited + ['Tags']
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

    # Operation Stubber for CreateFileSystem
    class CreateFileSystem
      def self.default(visited=[])
        {
          owner_id: 'owner_id',
          creation_token: 'creation_token',
          file_system_id: 'file_system_id',
          file_system_arn: 'file_system_arn',
          creation_time: Time.now,
          life_cycle_state: 'life_cycle_state',
          name: 'name',
          number_of_mount_targets: 1,
          size_in_bytes: Stubs::FileSystemSize.default(visited),
          performance_mode: 'performance_mode',
          encrypted: false,
          kms_key_id: 'kms_key_id',
          throughput_mode: 'throughput_mode',
          provisioned_throughput_in_mibps: 1.0,
          availability_zone_name: 'availability_zone_name',
          availability_zone_id: 'availability_zone_id',
          tags: Stubs::Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['OwnerId'] = stub[:owner_id] unless stub[:owner_id].nil?
        data['CreationToken'] = stub[:creation_token] unless stub[:creation_token].nil?
        data['FileSystemId'] = stub[:file_system_id] unless stub[:file_system_id].nil?
        data['FileSystemArn'] = stub[:file_system_arn] unless stub[:file_system_arn].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LifeCycleState'] = stub[:life_cycle_state] unless stub[:life_cycle_state].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['NumberOfMountTargets'] = stub[:number_of_mount_targets] unless stub[:number_of_mount_targets].nil?
        data['SizeInBytes'] = Stubs::FileSystemSize.stub(stub[:size_in_bytes]) unless stub[:size_in_bytes].nil?
        data['PerformanceMode'] = stub[:performance_mode] unless stub[:performance_mode].nil?
        data['Encrypted'] = stub[:encrypted] unless stub[:encrypted].nil?
        data['KmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data['ThroughputMode'] = stub[:throughput_mode] unless stub[:throughput_mode].nil?
        data['ProvisionedThroughputInMibps'] = Hearth::NumberHelper.serialize(stub[:provisioned_throughput_in_mibps])
        data['AvailabilityZoneName'] = stub[:availability_zone_name] unless stub[:availability_zone_name].nil?
        data['AvailabilityZoneId'] = stub[:availability_zone_id] unless stub[:availability_zone_id].nil?
        data['Tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for FileSystemSize
    class FileSystemSize
      def self.default(visited=[])
        return nil if visited.include?('FileSystemSize')
        visited = visited + ['FileSystemSize']
        {
          value: 1,
          timestamp: Time.now,
          value_in_ia: 1,
          value_in_standard: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::FileSystemSize.new
        data = {}
        data['Value'] = stub[:value] unless stub[:value].nil?
        data['Timestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:timestamp]).to_i unless stub[:timestamp].nil?
        data['ValueInIA'] = stub[:value_in_ia] unless stub[:value_in_ia].nil?
        data['ValueInStandard'] = stub[:value_in_standard] unless stub[:value_in_standard].nil?
        data
      end
    end

    # Operation Stubber for CreateMountTarget
    class CreateMountTarget
      def self.default(visited=[])
        {
          owner_id: 'owner_id',
          mount_target_id: 'mount_target_id',
          file_system_id: 'file_system_id',
          subnet_id: 'subnet_id',
          life_cycle_state: 'life_cycle_state',
          ip_address: 'ip_address',
          network_interface_id: 'network_interface_id',
          availability_zone_id: 'availability_zone_id',
          availability_zone_name: 'availability_zone_name',
          vpc_id: 'vpc_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['OwnerId'] = stub[:owner_id] unless stub[:owner_id].nil?
        data['MountTargetId'] = stub[:mount_target_id] unless stub[:mount_target_id].nil?
        data['FileSystemId'] = stub[:file_system_id] unless stub[:file_system_id].nil?
        data['SubnetId'] = stub[:subnet_id] unless stub[:subnet_id].nil?
        data['LifeCycleState'] = stub[:life_cycle_state] unless stub[:life_cycle_state].nil?
        data['IpAddress'] = stub[:ip_address] unless stub[:ip_address].nil?
        data['NetworkInterfaceId'] = stub[:network_interface_id] unless stub[:network_interface_id].nil?
        data['AvailabilityZoneId'] = stub[:availability_zone_id] unless stub[:availability_zone_id].nil?
        data['AvailabilityZoneName'] = stub[:availability_zone_name] unless stub[:availability_zone_name].nil?
        data['VpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateReplicationConfiguration
    class CreateReplicationConfiguration
      def self.default(visited=[])
        {
          source_file_system_id: 'source_file_system_id',
          source_file_system_region: 'source_file_system_region',
          source_file_system_arn: 'source_file_system_arn',
          original_source_file_system_arn: 'original_source_file_system_arn',
          creation_time: Time.now,
          destinations: Stubs::Destinations.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['SourceFileSystemId'] = stub[:source_file_system_id] unless stub[:source_file_system_id].nil?
        data['SourceFileSystemRegion'] = stub[:source_file_system_region] unless stub[:source_file_system_region].nil?
        data['SourceFileSystemArn'] = stub[:source_file_system_arn] unless stub[:source_file_system_arn].nil?
        data['OriginalSourceFileSystemArn'] = stub[:original_source_file_system_arn] unless stub[:original_source_file_system_arn].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['Destinations'] = Stubs::Destinations.stub(stub[:destinations]) unless stub[:destinations].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for Destinations
    class Destinations
      def self.default(visited=[])
        return nil if visited.include?('Destinations')
        visited = visited + ['Destinations']
        [
          Stubs::Destination.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Destination.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Destination
    class Destination
      def self.default(visited=[])
        return nil if visited.include?('Destination')
        visited = visited + ['Destination']
        {
          status: 'status',
          file_system_id: 'file_system_id',
          region: 'region',
          last_replicated_timestamp: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Destination.new
        data = {}
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['FileSystemId'] = stub[:file_system_id] unless stub[:file_system_id].nil?
        data['Region'] = stub[:region] unless stub[:region].nil?
        data['LastReplicatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_replicated_timestamp]).to_i unless stub[:last_replicated_timestamp].nil?
        data
      end
    end

    # Operation Stubber for CreateTags
    class CreateTags
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteAccessPoint
    class DeleteAccessPoint
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteFileSystem
    class DeleteFileSystem
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteFileSystemPolicy
    class DeleteFileSystemPolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteMountTarget
    class DeleteMountTarget
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteReplicationConfiguration
    class DeleteReplicationConfiguration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteTags
    class DeleteTags
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DescribeAccessPoints
    class DescribeAccessPoints
      def self.default(visited=[])
        {
          access_points: Stubs::AccessPointDescriptions.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AccessPoints'] = Stubs::AccessPointDescriptions.stub(stub[:access_points]) unless stub[:access_points].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AccessPointDescriptions
    class AccessPointDescriptions
      def self.default(visited=[])
        return nil if visited.include?('AccessPointDescriptions')
        visited = visited + ['AccessPointDescriptions']
        [
          Stubs::AccessPointDescription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AccessPointDescription.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AccessPointDescription
    class AccessPointDescription
      def self.default(visited=[])
        return nil if visited.include?('AccessPointDescription')
        visited = visited + ['AccessPointDescription']
        {
          client_token: 'client_token',
          name: 'name',
          tags: Stubs::Tags.default(visited),
          access_point_id: 'access_point_id',
          access_point_arn: 'access_point_arn',
          file_system_id: 'file_system_id',
          posix_user: Stubs::PosixUser.default(visited),
          root_directory: Stubs::RootDirectory.default(visited),
          owner_id: 'owner_id',
          life_cycle_state: 'life_cycle_state',
        }
      end

      def self.stub(stub)
        stub ||= Types::AccessPointDescription.new
        data = {}
        data['ClientToken'] = stub[:client_token] unless stub[:client_token].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['AccessPointId'] = stub[:access_point_id] unless stub[:access_point_id].nil?
        data['AccessPointArn'] = stub[:access_point_arn] unless stub[:access_point_arn].nil?
        data['FileSystemId'] = stub[:file_system_id] unless stub[:file_system_id].nil?
        data['PosixUser'] = Stubs::PosixUser.stub(stub[:posix_user]) unless stub[:posix_user].nil?
        data['RootDirectory'] = Stubs::RootDirectory.stub(stub[:root_directory]) unless stub[:root_directory].nil?
        data['OwnerId'] = stub[:owner_id] unless stub[:owner_id].nil?
        data['LifeCycleState'] = stub[:life_cycle_state] unless stub[:life_cycle_state].nil?
        data
      end
    end

    # Operation Stubber for DescribeAccountPreferences
    class DescribeAccountPreferences
      def self.default(visited=[])
        {
          resource_id_preference: Stubs::ResourceIdPreference.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ResourceIdPreference'] = Stubs::ResourceIdPreference.stub(stub[:resource_id_preference]) unless stub[:resource_id_preference].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ResourceIdPreference
    class ResourceIdPreference
      def self.default(visited=[])
        return nil if visited.include?('ResourceIdPreference')
        visited = visited + ['ResourceIdPreference']
        {
          resource_id_type: 'resource_id_type',
          resources: Stubs::Resources.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceIdPreference.new
        data = {}
        data['ResourceIdType'] = stub[:resource_id_type] unless stub[:resource_id_type].nil?
        data['Resources'] = Stubs::Resources.stub(stub[:resources]) unless stub[:resources].nil?
        data
      end
    end

    # List Stubber for Resources
    class Resources
      def self.default(visited=[])
        return nil if visited.include?('Resources')
        visited = visited + ['Resources']
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

    # Operation Stubber for DescribeBackupPolicy
    class DescribeBackupPolicy
      def self.default(visited=[])
        {
          backup_policy: Stubs::BackupPolicy.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['BackupPolicy'] = Stubs::BackupPolicy.stub(stub[:backup_policy]) unless stub[:backup_policy].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for BackupPolicy
    class BackupPolicy
      def self.default(visited=[])
        return nil if visited.include?('BackupPolicy')
        visited = visited + ['BackupPolicy']
        {
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::BackupPolicy.new
        data = {}
        data['Status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Operation Stubber for DescribeFileSystemPolicy
    class DescribeFileSystemPolicy
      def self.default(visited=[])
        {
          file_system_id: 'file_system_id',
          policy: 'policy',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['FileSystemId'] = stub[:file_system_id] unless stub[:file_system_id].nil?
        data['Policy'] = stub[:policy] unless stub[:policy].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeFileSystems
    class DescribeFileSystems
      def self.default(visited=[])
        {
          marker: 'marker',
          file_systems: Stubs::FileSystemDescriptions.default(visited),
          next_marker: 'next_marker',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Marker'] = stub[:marker] unless stub[:marker].nil?
        data['FileSystems'] = Stubs::FileSystemDescriptions.stub(stub[:file_systems]) unless stub[:file_systems].nil?
        data['NextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for FileSystemDescriptions
    class FileSystemDescriptions
      def self.default(visited=[])
        return nil if visited.include?('FileSystemDescriptions')
        visited = visited + ['FileSystemDescriptions']
        [
          Stubs::FileSystemDescription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::FileSystemDescription.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FileSystemDescription
    class FileSystemDescription
      def self.default(visited=[])
        return nil if visited.include?('FileSystemDescription')
        visited = visited + ['FileSystemDescription']
        {
          owner_id: 'owner_id',
          creation_token: 'creation_token',
          file_system_id: 'file_system_id',
          file_system_arn: 'file_system_arn',
          creation_time: Time.now,
          life_cycle_state: 'life_cycle_state',
          name: 'name',
          number_of_mount_targets: 1,
          size_in_bytes: Stubs::FileSystemSize.default(visited),
          performance_mode: 'performance_mode',
          encrypted: false,
          kms_key_id: 'kms_key_id',
          throughput_mode: 'throughput_mode',
          provisioned_throughput_in_mibps: 1.0,
          availability_zone_name: 'availability_zone_name',
          availability_zone_id: 'availability_zone_id',
          tags: Stubs::Tags.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FileSystemDescription.new
        data = {}
        data['OwnerId'] = stub[:owner_id] unless stub[:owner_id].nil?
        data['CreationToken'] = stub[:creation_token] unless stub[:creation_token].nil?
        data['FileSystemId'] = stub[:file_system_id] unless stub[:file_system_id].nil?
        data['FileSystemArn'] = stub[:file_system_arn] unless stub[:file_system_arn].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LifeCycleState'] = stub[:life_cycle_state] unless stub[:life_cycle_state].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['NumberOfMountTargets'] = stub[:number_of_mount_targets] unless stub[:number_of_mount_targets].nil?
        data['SizeInBytes'] = Stubs::FileSystemSize.stub(stub[:size_in_bytes]) unless stub[:size_in_bytes].nil?
        data['PerformanceMode'] = stub[:performance_mode] unless stub[:performance_mode].nil?
        data['Encrypted'] = stub[:encrypted] unless stub[:encrypted].nil?
        data['KmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data['ThroughputMode'] = stub[:throughput_mode] unless stub[:throughput_mode].nil?
        data['ProvisionedThroughputInMibps'] = Hearth::NumberHelper.serialize(stub[:provisioned_throughput_in_mibps])
        data['AvailabilityZoneName'] = stub[:availability_zone_name] unless stub[:availability_zone_name].nil?
        data['AvailabilityZoneId'] = stub[:availability_zone_id] unless stub[:availability_zone_id].nil?
        data['Tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for DescribeLifecycleConfiguration
    class DescribeLifecycleConfiguration
      def self.default(visited=[])
        {
          lifecycle_policies: Stubs::LifecyclePolicies.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['LifecyclePolicies'] = Stubs::LifecyclePolicies.stub(stub[:lifecycle_policies]) unless stub[:lifecycle_policies].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for LifecyclePolicies
    class LifecyclePolicies
      def self.default(visited=[])
        return nil if visited.include?('LifecyclePolicies')
        visited = visited + ['LifecyclePolicies']
        [
          Stubs::LifecyclePolicy.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::LifecyclePolicy.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for LifecyclePolicy
    class LifecyclePolicy
      def self.default(visited=[])
        return nil if visited.include?('LifecyclePolicy')
        visited = visited + ['LifecyclePolicy']
        {
          transition_to_ia: 'transition_to_ia',
          transition_to_primary_storage_class: 'transition_to_primary_storage_class',
        }
      end

      def self.stub(stub)
        stub ||= Types::LifecyclePolicy.new
        data = {}
        data['TransitionToIA'] = stub[:transition_to_ia] unless stub[:transition_to_ia].nil?
        data['TransitionToPrimaryStorageClass'] = stub[:transition_to_primary_storage_class] unless stub[:transition_to_primary_storage_class].nil?
        data
      end
    end

    # Operation Stubber for DescribeMountTargetSecurityGroups
    class DescribeMountTargetSecurityGroups
      def self.default(visited=[])
        {
          security_groups: Stubs::SecurityGroups.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['SecurityGroups'] = Stubs::SecurityGroups.stub(stub[:security_groups]) unless stub[:security_groups].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for SecurityGroups
    class SecurityGroups
      def self.default(visited=[])
        return nil if visited.include?('SecurityGroups')
        visited = visited + ['SecurityGroups']
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

    # Operation Stubber for DescribeMountTargets
    class DescribeMountTargets
      def self.default(visited=[])
        {
          marker: 'marker',
          mount_targets: Stubs::MountTargetDescriptions.default(visited),
          next_marker: 'next_marker',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Marker'] = stub[:marker] unless stub[:marker].nil?
        data['MountTargets'] = Stubs::MountTargetDescriptions.stub(stub[:mount_targets]) unless stub[:mount_targets].nil?
        data['NextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for MountTargetDescriptions
    class MountTargetDescriptions
      def self.default(visited=[])
        return nil if visited.include?('MountTargetDescriptions')
        visited = visited + ['MountTargetDescriptions']
        [
          Stubs::MountTargetDescription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::MountTargetDescription.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MountTargetDescription
    class MountTargetDescription
      def self.default(visited=[])
        return nil if visited.include?('MountTargetDescription')
        visited = visited + ['MountTargetDescription']
        {
          owner_id: 'owner_id',
          mount_target_id: 'mount_target_id',
          file_system_id: 'file_system_id',
          subnet_id: 'subnet_id',
          life_cycle_state: 'life_cycle_state',
          ip_address: 'ip_address',
          network_interface_id: 'network_interface_id',
          availability_zone_id: 'availability_zone_id',
          availability_zone_name: 'availability_zone_name',
          vpc_id: 'vpc_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::MountTargetDescription.new
        data = {}
        data['OwnerId'] = stub[:owner_id] unless stub[:owner_id].nil?
        data['MountTargetId'] = stub[:mount_target_id] unless stub[:mount_target_id].nil?
        data['FileSystemId'] = stub[:file_system_id] unless stub[:file_system_id].nil?
        data['SubnetId'] = stub[:subnet_id] unless stub[:subnet_id].nil?
        data['LifeCycleState'] = stub[:life_cycle_state] unless stub[:life_cycle_state].nil?
        data['IpAddress'] = stub[:ip_address] unless stub[:ip_address].nil?
        data['NetworkInterfaceId'] = stub[:network_interface_id] unless stub[:network_interface_id].nil?
        data['AvailabilityZoneId'] = stub[:availability_zone_id] unless stub[:availability_zone_id].nil?
        data['AvailabilityZoneName'] = stub[:availability_zone_name] unless stub[:availability_zone_name].nil?
        data['VpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data
      end
    end

    # Operation Stubber for DescribeReplicationConfigurations
    class DescribeReplicationConfigurations
      def self.default(visited=[])
        {
          replications: Stubs::ReplicationConfigurationDescriptions.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Replications'] = Stubs::ReplicationConfigurationDescriptions.stub(stub[:replications]) unless stub[:replications].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ReplicationConfigurationDescriptions
    class ReplicationConfigurationDescriptions
      def self.default(visited=[])
        return nil if visited.include?('ReplicationConfigurationDescriptions')
        visited = visited + ['ReplicationConfigurationDescriptions']
        [
          Stubs::ReplicationConfigurationDescription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ReplicationConfigurationDescription.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ReplicationConfigurationDescription
    class ReplicationConfigurationDescription
      def self.default(visited=[])
        return nil if visited.include?('ReplicationConfigurationDescription')
        visited = visited + ['ReplicationConfigurationDescription']
        {
          source_file_system_id: 'source_file_system_id',
          source_file_system_region: 'source_file_system_region',
          source_file_system_arn: 'source_file_system_arn',
          original_source_file_system_arn: 'original_source_file_system_arn',
          creation_time: Time.now,
          destinations: Stubs::Destinations.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ReplicationConfigurationDescription.new
        data = {}
        data['SourceFileSystemId'] = stub[:source_file_system_id] unless stub[:source_file_system_id].nil?
        data['SourceFileSystemRegion'] = stub[:source_file_system_region] unless stub[:source_file_system_region].nil?
        data['SourceFileSystemArn'] = stub[:source_file_system_arn] unless stub[:source_file_system_arn].nil?
        data['OriginalSourceFileSystemArn'] = stub[:original_source_file_system_arn] unless stub[:original_source_file_system_arn].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['Destinations'] = Stubs::Destinations.stub(stub[:destinations]) unless stub[:destinations].nil?
        data
      end
    end

    # Operation Stubber for DescribeTags
    class DescribeTags
      def self.default(visited=[])
        {
          marker: 'marker',
          tags: Stubs::Tags.default(visited),
          next_marker: 'next_marker',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Marker'] = stub[:marker] unless stub[:marker].nil?
        data['Tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['NextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: Stubs::Tags.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ModifyMountTargetSecurityGroups
    class ModifyMountTargetSecurityGroups
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for PutAccountPreferences
    class PutAccountPreferences
      def self.default(visited=[])
        {
          resource_id_preference: Stubs::ResourceIdPreference.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ResourceIdPreference'] = Stubs::ResourceIdPreference.stub(stub[:resource_id_preference]) unless stub[:resource_id_preference].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for PutBackupPolicy
    class PutBackupPolicy
      def self.default(visited=[])
        {
          backup_policy: Stubs::BackupPolicy.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['BackupPolicy'] = Stubs::BackupPolicy.stub(stub[:backup_policy]) unless stub[:backup_policy].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for PutFileSystemPolicy
    class PutFileSystemPolicy
      def self.default(visited=[])
        {
          file_system_id: 'file_system_id',
          policy: 'policy',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['FileSystemId'] = stub[:file_system_id] unless stub[:file_system_id].nil?
        data['Policy'] = stub[:policy] unless stub[:policy].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for PutLifecycleConfiguration
    class PutLifecycleConfiguration
      def self.default(visited=[])
        {
          lifecycle_policies: Stubs::LifecyclePolicies.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['LifecyclePolicies'] = Stubs::LifecyclePolicies.stub(stub[:lifecycle_policies]) unless stub[:lifecycle_policies].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateFileSystem
    class UpdateFileSystem
      def self.default(visited=[])
        {
          owner_id: 'owner_id',
          creation_token: 'creation_token',
          file_system_id: 'file_system_id',
          file_system_arn: 'file_system_arn',
          creation_time: Time.now,
          life_cycle_state: 'life_cycle_state',
          name: 'name',
          number_of_mount_targets: 1,
          size_in_bytes: Stubs::FileSystemSize.default(visited),
          performance_mode: 'performance_mode',
          encrypted: false,
          kms_key_id: 'kms_key_id',
          throughput_mode: 'throughput_mode',
          provisioned_throughput_in_mibps: 1.0,
          availability_zone_name: 'availability_zone_name',
          availability_zone_id: 'availability_zone_id',
          tags: Stubs::Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['OwnerId'] = stub[:owner_id] unless stub[:owner_id].nil?
        data['CreationToken'] = stub[:creation_token] unless stub[:creation_token].nil?
        data['FileSystemId'] = stub[:file_system_id] unless stub[:file_system_id].nil?
        data['FileSystemArn'] = stub[:file_system_arn] unless stub[:file_system_arn].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LifeCycleState'] = stub[:life_cycle_state] unless stub[:life_cycle_state].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['NumberOfMountTargets'] = stub[:number_of_mount_targets] unless stub[:number_of_mount_targets].nil?
        data['SizeInBytes'] = Stubs::FileSystemSize.stub(stub[:size_in_bytes]) unless stub[:size_in_bytes].nil?
        data['PerformanceMode'] = stub[:performance_mode] unless stub[:performance_mode].nil?
        data['Encrypted'] = stub[:encrypted] unless stub[:encrypted].nil?
        data['KmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data['ThroughputMode'] = stub[:throughput_mode] unless stub[:throughput_mode].nil?
        data['ProvisionedThroughputInMibps'] = Hearth::NumberHelper.serialize(stub[:provisioned_throughput_in_mibps])
        data['AvailabilityZoneName'] = stub[:availability_zone_name] unless stub[:availability_zone_name].nil?
        data['AvailabilityZoneId'] = stub[:availability_zone_id] unless stub[:availability_zone_id].nil?
        data['Tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
