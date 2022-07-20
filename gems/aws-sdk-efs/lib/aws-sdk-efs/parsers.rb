# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::EFS
  module Parsers

    # Operation Parser for CreateAccessPoint
    class CreateAccessPoint
      def self.parse(http_resp)
        data = Types::CreateAccessPointOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.client_token = map['ClientToken']
        data.name = map['Name']
        data.tags = (Parsers::Tags.parse(map['Tags']) unless map['Tags'].nil?)
        data.access_point_id = map['AccessPointId']
        data.access_point_arn = map['AccessPointArn']
        data.file_system_id = map['FileSystemId']
        data.posix_user = (Parsers::PosixUser.parse(map['PosixUser']) unless map['PosixUser'].nil?)
        data.root_directory = (Parsers::RootDirectory.parse(map['RootDirectory']) unless map['RootDirectory'].nil?)
        data.owner_id = map['OwnerId']
        data.life_cycle_state = map['LifeCycleState']
        data
      end
    end

    class RootDirectory
      def self.parse(map)
        data = Types::RootDirectory.new
        data.path = map['Path']
        data.creation_info = (Parsers::CreationInfo.parse(map['CreationInfo']) unless map['CreationInfo'].nil?)
        return data
      end
    end

    class CreationInfo
      def self.parse(map)
        data = Types::CreationInfo.new
        data.owner_uid = map['OwnerUid']
        data.owner_gid = map['OwnerGid']
        data.permissions = map['Permissions']
        return data
      end
    end

    class PosixUser
      def self.parse(map)
        data = Types::PosixUser.new
        data.uid = map['Uid']
        data.gid = map['Gid']
        data.secondary_gids = (Parsers::SecondaryGids.parse(map['SecondaryGids']) unless map['SecondaryGids'].nil?)
        return data
      end
    end

    class SecondaryGids
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class Tags
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Tag.parse(value) unless value.nil?
        end
        data
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

    # Error Parser for FileSystemNotFound
    class FileSystemNotFound
      def self.parse(http_resp)
        data = Types::FileSystemNotFound.new
        map = Hearth::JSON.load(http_resp.body)
        data.error_code = map['ErrorCode']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for BadRequest
    class BadRequest
      def self.parse(http_resp)
        data = Types::BadRequest.new
        map = Hearth::JSON.load(http_resp.body)
        data.error_code = map['ErrorCode']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for AccessPointAlreadyExists
    class AccessPointAlreadyExists
      def self.parse(http_resp)
        data = Types::AccessPointAlreadyExists.new
        map = Hearth::JSON.load(http_resp.body)
        data.error_code = map['ErrorCode']
        data.message = map['Message']
        data.access_point_id = map['AccessPointId']
        data
      end
    end

    # Error Parser for IncorrectFileSystemLifeCycleState
    class IncorrectFileSystemLifeCycleState
      def self.parse(http_resp)
        data = Types::IncorrectFileSystemLifeCycleState.new
        map = Hearth::JSON.load(http_resp.body)
        data.error_code = map['ErrorCode']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InternalServerError
    class InternalServerError
      def self.parse(http_resp)
        data = Types::InternalServerError.new
        map = Hearth::JSON.load(http_resp.body)
        data.error_code = map['ErrorCode']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        map = Hearth::JSON.load(http_resp.body)
        data.error_code = map['ErrorCode']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for AccessPointLimitExceeded
    class AccessPointLimitExceeded
      def self.parse(http_resp)
        data = Types::AccessPointLimitExceeded.new
        map = Hearth::JSON.load(http_resp.body)
        data.error_code = map['ErrorCode']
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateFileSystem
    class CreateFileSystem
      def self.parse(http_resp)
        data = Types::CreateFileSystemOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.owner_id = map['OwnerId']
        data.creation_token = map['CreationToken']
        data.file_system_id = map['FileSystemId']
        data.file_system_arn = map['FileSystemArn']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.life_cycle_state = map['LifeCycleState']
        data.name = map['Name']
        data.number_of_mount_targets = map['NumberOfMountTargets']
        data.size_in_bytes = (Parsers::FileSystemSize.parse(map['SizeInBytes']) unless map['SizeInBytes'].nil?)
        data.performance_mode = map['PerformanceMode']
        data.encrypted = map['Encrypted']
        data.kms_key_id = map['KmsKeyId']
        data.throughput_mode = map['ThroughputMode']
        data.provisioned_throughput_in_mibps = Hearth::NumberHelper.deserialize(map['ProvisionedThroughputInMibps'])
        data.availability_zone_name = map['AvailabilityZoneName']
        data.availability_zone_id = map['AvailabilityZoneId']
        data.tags = (Parsers::Tags.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    class FileSystemSize
      def self.parse(map)
        data = Types::FileSystemSize.new
        data.value = map['Value']
        data.timestamp = Time.at(map['Timestamp'].to_i) if map['Timestamp']
        data.value_in_ia = map['ValueInIA']
        data.value_in_standard = map['ValueInStandard']
        return data
      end
    end

    # Error Parser for InsufficientThroughputCapacity
    class InsufficientThroughputCapacity
      def self.parse(http_resp)
        data = Types::InsufficientThroughputCapacity.new
        map = Hearth::JSON.load(http_resp.body)
        data.error_code = map['ErrorCode']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for FileSystemAlreadyExists
    class FileSystemAlreadyExists
      def self.parse(http_resp)
        data = Types::FileSystemAlreadyExists.new
        map = Hearth::JSON.load(http_resp.body)
        data.error_code = map['ErrorCode']
        data.message = map['Message']
        data.file_system_id = map['FileSystemId']
        data
      end
    end

    # Error Parser for FileSystemLimitExceeded
    class FileSystemLimitExceeded
      def self.parse(http_resp)
        data = Types::FileSystemLimitExceeded.new
        map = Hearth::JSON.load(http_resp.body)
        data.error_code = map['ErrorCode']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ThroughputLimitExceeded
    class ThroughputLimitExceeded
      def self.parse(http_resp)
        data = Types::ThroughputLimitExceeded.new
        map = Hearth::JSON.load(http_resp.body)
        data.error_code = map['ErrorCode']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for UnsupportedAvailabilityZone
    class UnsupportedAvailabilityZone
      def self.parse(http_resp)
        data = Types::UnsupportedAvailabilityZone.new
        map = Hearth::JSON.load(http_resp.body)
        data.error_code = map['ErrorCode']
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateMountTarget
    class CreateMountTarget
      def self.parse(http_resp)
        data = Types::CreateMountTargetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.owner_id = map['OwnerId']
        data.mount_target_id = map['MountTargetId']
        data.file_system_id = map['FileSystemId']
        data.subnet_id = map['SubnetId']
        data.life_cycle_state = map['LifeCycleState']
        data.ip_address = map['IpAddress']
        data.network_interface_id = map['NetworkInterfaceId']
        data.availability_zone_id = map['AvailabilityZoneId']
        data.availability_zone_name = map['AvailabilityZoneName']
        data.vpc_id = map['VpcId']
        data
      end
    end

    # Error Parser for AvailabilityZonesMismatch
    class AvailabilityZonesMismatch
      def self.parse(http_resp)
        data = Types::AvailabilityZonesMismatch.new
        map = Hearth::JSON.load(http_resp.body)
        data.error_code = map['ErrorCode']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for NoFreeAddressesInSubnet
    class NoFreeAddressesInSubnet
      def self.parse(http_resp)
        data = Types::NoFreeAddressesInSubnet.new
        map = Hearth::JSON.load(http_resp.body)
        data.error_code = map['ErrorCode']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for IpAddressInUse
    class IpAddressInUse
      def self.parse(http_resp)
        data = Types::IpAddressInUse.new
        map = Hearth::JSON.load(http_resp.body)
        data.error_code = map['ErrorCode']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for SecurityGroupLimitExceeded
    class SecurityGroupLimitExceeded
      def self.parse(http_resp)
        data = Types::SecurityGroupLimitExceeded.new
        map = Hearth::JSON.load(http_resp.body)
        data.error_code = map['ErrorCode']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for MountTargetConflict
    class MountTargetConflict
      def self.parse(http_resp)
        data = Types::MountTargetConflict.new
        map = Hearth::JSON.load(http_resp.body)
        data.error_code = map['ErrorCode']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for NetworkInterfaceLimitExceeded
    class NetworkInterfaceLimitExceeded
      def self.parse(http_resp)
        data = Types::NetworkInterfaceLimitExceeded.new
        map = Hearth::JSON.load(http_resp.body)
        data.error_code = map['ErrorCode']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for SecurityGroupNotFound
    class SecurityGroupNotFound
      def self.parse(http_resp)
        data = Types::SecurityGroupNotFound.new
        map = Hearth::JSON.load(http_resp.body)
        data.error_code = map['ErrorCode']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for SubnetNotFound
    class SubnetNotFound
      def self.parse(http_resp)
        data = Types::SubnetNotFound.new
        map = Hearth::JSON.load(http_resp.body)
        data.error_code = map['ErrorCode']
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateReplicationConfiguration
    class CreateReplicationConfiguration
      def self.parse(http_resp)
        data = Types::CreateReplicationConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.source_file_system_id = map['SourceFileSystemId']
        data.source_file_system_region = map['SourceFileSystemRegion']
        data.source_file_system_arn = map['SourceFileSystemArn']
        data.original_source_file_system_arn = map['OriginalSourceFileSystemArn']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.destinations = (Parsers::Destinations.parse(map['Destinations']) unless map['Destinations'].nil?)
        data
      end
    end

    class Destinations
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Destination.parse(value) unless value.nil?
        end
        data
      end
    end

    class Destination
      def self.parse(map)
        data = Types::Destination.new
        data.status = map['Status']
        data.file_system_id = map['FileSystemId']
        data.region = map['Region']
        data.last_replicated_timestamp = Time.at(map['LastReplicatedTimestamp'].to_i) if map['LastReplicatedTimestamp']
        return data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.error_code = map['ErrorCode']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ReplicationNotFound
    class ReplicationNotFound
      def self.parse(http_resp)
        data = Types::ReplicationNotFound.new
        map = Hearth::JSON.load(http_resp.body)
        data.error_code = map['ErrorCode']
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateTags
    class CreateTags
      def self.parse(http_resp)
        data = Types::CreateTagsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteAccessPoint
    class DeleteAccessPoint
      def self.parse(http_resp)
        data = Types::DeleteAccessPointOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for AccessPointNotFound
    class AccessPointNotFound
      def self.parse(http_resp)
        data = Types::AccessPointNotFound.new
        map = Hearth::JSON.load(http_resp.body)
        data.error_code = map['ErrorCode']
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeleteFileSystem
    class DeleteFileSystem
      def self.parse(http_resp)
        data = Types::DeleteFileSystemOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for FileSystemInUse
    class FileSystemInUse
      def self.parse(http_resp)
        data = Types::FileSystemInUse.new
        map = Hearth::JSON.load(http_resp.body)
        data.error_code = map['ErrorCode']
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeleteFileSystemPolicy
    class DeleteFileSystemPolicy
      def self.parse(http_resp)
        data = Types::DeleteFileSystemPolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteMountTarget
    class DeleteMountTarget
      def self.parse(http_resp)
        data = Types::DeleteMountTargetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for MountTargetNotFound
    class MountTargetNotFound
      def self.parse(http_resp)
        data = Types::MountTargetNotFound.new
        map = Hearth::JSON.load(http_resp.body)
        data.error_code = map['ErrorCode']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for DependencyTimeout
    class DependencyTimeout
      def self.parse(http_resp)
        data = Types::DependencyTimeout.new
        map = Hearth::JSON.load(http_resp.body)
        data.error_code = map['ErrorCode']
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeleteReplicationConfiguration
    class DeleteReplicationConfiguration
      def self.parse(http_resp)
        data = Types::DeleteReplicationConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteTags
    class DeleteTags
      def self.parse(http_resp)
        data = Types::DeleteTagsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DescribeAccessPoints
    class DescribeAccessPoints
      def self.parse(http_resp)
        data = Types::DescribeAccessPointsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.access_points = (Parsers::AccessPointDescriptions.parse(map['AccessPoints']) unless map['AccessPoints'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class AccessPointDescriptions
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AccessPointDescription.parse(value) unless value.nil?
        end
        data
      end
    end

    class AccessPointDescription
      def self.parse(map)
        data = Types::AccessPointDescription.new
        data.client_token = map['ClientToken']
        data.name = map['Name']
        data.tags = (Parsers::Tags.parse(map['Tags']) unless map['Tags'].nil?)
        data.access_point_id = map['AccessPointId']
        data.access_point_arn = map['AccessPointArn']
        data.file_system_id = map['FileSystemId']
        data.posix_user = (Parsers::PosixUser.parse(map['PosixUser']) unless map['PosixUser'].nil?)
        data.root_directory = (Parsers::RootDirectory.parse(map['RootDirectory']) unless map['RootDirectory'].nil?)
        data.owner_id = map['OwnerId']
        data.life_cycle_state = map['LifeCycleState']
        return data
      end
    end

    # Operation Parser for DescribeAccountPreferences
    class DescribeAccountPreferences
      def self.parse(http_resp)
        data = Types::DescribeAccountPreferencesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.resource_id_preference = (Parsers::ResourceIdPreference.parse(map['ResourceIdPreference']) unless map['ResourceIdPreference'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ResourceIdPreference
      def self.parse(map)
        data = Types::ResourceIdPreference.new
        data.resource_id_type = map['ResourceIdType']
        data.resources = (Parsers::Resources.parse(map['Resources']) unless map['Resources'].nil?)
        return data
      end
    end

    class Resources
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DescribeBackupPolicy
    class DescribeBackupPolicy
      def self.parse(http_resp)
        data = Types::DescribeBackupPolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.backup_policy = (Parsers::BackupPolicy.parse(map['BackupPolicy']) unless map['BackupPolicy'].nil?)
        data
      end
    end

    class BackupPolicy
      def self.parse(map)
        data = Types::BackupPolicy.new
        data.status = map['Status']
        return data
      end
    end

    # Error Parser for PolicyNotFound
    class PolicyNotFound
      def self.parse(http_resp)
        data = Types::PolicyNotFound.new
        map = Hearth::JSON.load(http_resp.body)
        data.error_code = map['ErrorCode']
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DescribeFileSystemPolicy
    class DescribeFileSystemPolicy
      def self.parse(http_resp)
        data = Types::DescribeFileSystemPolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.file_system_id = map['FileSystemId']
        data.policy = map['Policy']
        data
      end
    end

    # Operation Parser for DescribeFileSystems
    class DescribeFileSystems
      def self.parse(http_resp)
        data = Types::DescribeFileSystemsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.marker = map['Marker']
        data.file_systems = (Parsers::FileSystemDescriptions.parse(map['FileSystems']) unless map['FileSystems'].nil?)
        data.next_marker = map['NextMarker']
        data
      end
    end

    class FileSystemDescriptions
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::FileSystemDescription.parse(value) unless value.nil?
        end
        data
      end
    end

    class FileSystemDescription
      def self.parse(map)
        data = Types::FileSystemDescription.new
        data.owner_id = map['OwnerId']
        data.creation_token = map['CreationToken']
        data.file_system_id = map['FileSystemId']
        data.file_system_arn = map['FileSystemArn']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.life_cycle_state = map['LifeCycleState']
        data.name = map['Name']
        data.number_of_mount_targets = map['NumberOfMountTargets']
        data.size_in_bytes = (Parsers::FileSystemSize.parse(map['SizeInBytes']) unless map['SizeInBytes'].nil?)
        data.performance_mode = map['PerformanceMode']
        data.encrypted = map['Encrypted']
        data.kms_key_id = map['KmsKeyId']
        data.throughput_mode = map['ThroughputMode']
        data.provisioned_throughput_in_mibps = Hearth::NumberHelper.deserialize(map['ProvisionedThroughputInMibps'])
        data.availability_zone_name = map['AvailabilityZoneName']
        data.availability_zone_id = map['AvailabilityZoneId']
        data.tags = (Parsers::Tags.parse(map['Tags']) unless map['Tags'].nil?)
        return data
      end
    end

    # Operation Parser for DescribeLifecycleConfiguration
    class DescribeLifecycleConfiguration
      def self.parse(http_resp)
        data = Types::DescribeLifecycleConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.lifecycle_policies = (Parsers::LifecyclePolicies.parse(map['LifecyclePolicies']) unless map['LifecyclePolicies'].nil?)
        data
      end
    end

    class LifecyclePolicies
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::LifecyclePolicy.parse(value) unless value.nil?
        end
        data
      end
    end

    class LifecyclePolicy
      def self.parse(map)
        data = Types::LifecyclePolicy.new
        data.transition_to_ia = map['TransitionToIA']
        data.transition_to_primary_storage_class = map['TransitionToPrimaryStorageClass']
        return data
      end
    end

    # Operation Parser for DescribeMountTargetSecurityGroups
    class DescribeMountTargetSecurityGroups
      def self.parse(http_resp)
        data = Types::DescribeMountTargetSecurityGroupsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.security_groups = (Parsers::SecurityGroups.parse(map['SecurityGroups']) unless map['SecurityGroups'].nil?)
        data
      end
    end

    class SecurityGroups
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Error Parser for IncorrectMountTargetState
    class IncorrectMountTargetState
      def self.parse(http_resp)
        data = Types::IncorrectMountTargetState.new
        map = Hearth::JSON.load(http_resp.body)
        data.error_code = map['ErrorCode']
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DescribeMountTargets
    class DescribeMountTargets
      def self.parse(http_resp)
        data = Types::DescribeMountTargetsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.marker = map['Marker']
        data.mount_targets = (Parsers::MountTargetDescriptions.parse(map['MountTargets']) unless map['MountTargets'].nil?)
        data.next_marker = map['NextMarker']
        data
      end
    end

    class MountTargetDescriptions
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::MountTargetDescription.parse(value) unless value.nil?
        end
        data
      end
    end

    class MountTargetDescription
      def self.parse(map)
        data = Types::MountTargetDescription.new
        data.owner_id = map['OwnerId']
        data.mount_target_id = map['MountTargetId']
        data.file_system_id = map['FileSystemId']
        data.subnet_id = map['SubnetId']
        data.life_cycle_state = map['LifeCycleState']
        data.ip_address = map['IpAddress']
        data.network_interface_id = map['NetworkInterfaceId']
        data.availability_zone_id = map['AvailabilityZoneId']
        data.availability_zone_name = map['AvailabilityZoneName']
        data.vpc_id = map['VpcId']
        return data
      end
    end

    # Operation Parser for DescribeReplicationConfigurations
    class DescribeReplicationConfigurations
      def self.parse(http_resp)
        data = Types::DescribeReplicationConfigurationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.replications = (Parsers::ReplicationConfigurationDescriptions.parse(map['Replications']) unless map['Replications'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ReplicationConfigurationDescriptions
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ReplicationConfigurationDescription.parse(value) unless value.nil?
        end
        data
      end
    end

    class ReplicationConfigurationDescription
      def self.parse(map)
        data = Types::ReplicationConfigurationDescription.new
        data.source_file_system_id = map['SourceFileSystemId']
        data.source_file_system_region = map['SourceFileSystemRegion']
        data.source_file_system_arn = map['SourceFileSystemArn']
        data.original_source_file_system_arn = map['OriginalSourceFileSystemArn']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.destinations = (Parsers::Destinations.parse(map['Destinations']) unless map['Destinations'].nil?)
        return data
      end
    end

    # Operation Parser for DescribeTags
    class DescribeTags
      def self.parse(http_resp)
        data = Types::DescribeTagsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.marker = map['Marker']
        data.tags = (Parsers::Tags.parse(map['Tags']) unless map['Tags'].nil?)
        data.next_marker = map['NextMarker']
        data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (Parsers::Tags.parse(map['Tags']) unless map['Tags'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for ModifyMountTargetSecurityGroups
    class ModifyMountTargetSecurityGroups
      def self.parse(http_resp)
        data = Types::ModifyMountTargetSecurityGroupsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for PutAccountPreferences
    class PutAccountPreferences
      def self.parse(http_resp)
        data = Types::PutAccountPreferencesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.resource_id_preference = (Parsers::ResourceIdPreference.parse(map['ResourceIdPreference']) unless map['ResourceIdPreference'].nil?)
        data
      end
    end

    # Operation Parser for PutBackupPolicy
    class PutBackupPolicy
      def self.parse(http_resp)
        data = Types::PutBackupPolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.backup_policy = (Parsers::BackupPolicy.parse(map['BackupPolicy']) unless map['BackupPolicy'].nil?)
        data
      end
    end

    # Operation Parser for PutFileSystemPolicy
    class PutFileSystemPolicy
      def self.parse(http_resp)
        data = Types::PutFileSystemPolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.file_system_id = map['FileSystemId']
        data.policy = map['Policy']
        data
      end
    end

    # Error Parser for InvalidPolicyException
    class InvalidPolicyException
      def self.parse(http_resp)
        data = Types::InvalidPolicyException.new
        map = Hearth::JSON.load(http_resp.body)
        data.error_code = map['ErrorCode']
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for PutLifecycleConfiguration
    class PutLifecycleConfiguration
      def self.parse(http_resp)
        data = Types::PutLifecycleConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.lifecycle_policies = (Parsers::LifecyclePolicies.parse(map['LifecyclePolicies']) unless map['LifecyclePolicies'].nil?)
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateFileSystem
    class UpdateFileSystem
      def self.parse(http_resp)
        data = Types::UpdateFileSystemOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.owner_id = map['OwnerId']
        data.creation_token = map['CreationToken']
        data.file_system_id = map['FileSystemId']
        data.file_system_arn = map['FileSystemArn']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.life_cycle_state = map['LifeCycleState']
        data.name = map['Name']
        data.number_of_mount_targets = map['NumberOfMountTargets']
        data.size_in_bytes = (Parsers::FileSystemSize.parse(map['SizeInBytes']) unless map['SizeInBytes'].nil?)
        data.performance_mode = map['PerformanceMode']
        data.encrypted = map['Encrypted']
        data.kms_key_id = map['KmsKeyId']
        data.throughput_mode = map['ThroughputMode']
        data.provisioned_throughput_in_mibps = Hearth::NumberHelper.deserialize(map['ProvisionedThroughputInMibps'])
        data.availability_zone_name = map['AvailabilityZoneName']
        data.availability_zone_id = map['AvailabilityZoneId']
        data.tags = (Parsers::Tags.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    # Error Parser for TooManyRequests
    class TooManyRequests
      def self.parse(http_resp)
        data = Types::TooManyRequests.new
        map = Hearth::JSON.load(http_resp.body)
        data.error_code = map['ErrorCode']
        data.message = map['Message']
        data
      end
    end
  end
end
