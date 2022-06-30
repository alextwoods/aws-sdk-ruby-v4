# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::EFS
  module Validators

    class AccessPointAlreadyExists
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessPointAlreadyExists, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:access_point_id], ::String, context: "#{context}[:access_point_id]")
      end
    end

    class AccessPointDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessPointDescription, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:access_point_id], ::String, context: "#{context}[:access_point_id]")
        Hearth::Validator.validate!(input[:access_point_arn], ::String, context: "#{context}[:access_point_arn]")
        Hearth::Validator.validate!(input[:file_system_id], ::String, context: "#{context}[:file_system_id]")
        Validators::PosixUser.validate!(input[:posix_user], context: "#{context}[:posix_user]") unless input[:posix_user].nil?
        Validators::RootDirectory.validate!(input[:root_directory], context: "#{context}[:root_directory]") unless input[:root_directory].nil?
        Hearth::Validator.validate!(input[:owner_id], ::String, context: "#{context}[:owner_id]")
        Hearth::Validator.validate!(input[:life_cycle_state], ::String, context: "#{context}[:life_cycle_state]")
      end
    end

    class AccessPointDescriptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AccessPointDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AccessPointLimitExceeded
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessPointLimitExceeded, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AccessPointNotFound
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessPointNotFound, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AvailabilityZonesMismatch
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AvailabilityZonesMismatch, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class BackupPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BackupPolicy, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class BadRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BadRequest, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CreateAccessPointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAccessPointInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:file_system_id], ::String, context: "#{context}[:file_system_id]")
        Validators::PosixUser.validate!(input[:posix_user], context: "#{context}[:posix_user]") unless input[:posix_user].nil?
        Validators::RootDirectory.validate!(input[:root_directory], context: "#{context}[:root_directory]") unless input[:root_directory].nil?
      end
    end

    class CreateAccessPointOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAccessPointOutput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:access_point_id], ::String, context: "#{context}[:access_point_id]")
        Hearth::Validator.validate!(input[:access_point_arn], ::String, context: "#{context}[:access_point_arn]")
        Hearth::Validator.validate!(input[:file_system_id], ::String, context: "#{context}[:file_system_id]")
        Validators::PosixUser.validate!(input[:posix_user], context: "#{context}[:posix_user]") unless input[:posix_user].nil?
        Validators::RootDirectory.validate!(input[:root_directory], context: "#{context}[:root_directory]") unless input[:root_directory].nil?
        Hearth::Validator.validate!(input[:owner_id], ::String, context: "#{context}[:owner_id]")
        Hearth::Validator.validate!(input[:life_cycle_state], ::String, context: "#{context}[:life_cycle_state]")
      end
    end

    class CreateFileSystemInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFileSystemInput, context: context)
        Hearth::Validator.validate!(input[:creation_token], ::String, context: "#{context}[:creation_token]")
        Hearth::Validator.validate!(input[:performance_mode], ::String, context: "#{context}[:performance_mode]")
        Hearth::Validator.validate!(input[:encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:encrypted]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:throughput_mode], ::String, context: "#{context}[:throughput_mode]")
        Hearth::Validator.validate!(input[:provisioned_throughput_in_mibps], ::Float, context: "#{context}[:provisioned_throughput_in_mibps]")
        Hearth::Validator.validate!(input[:availability_zone_name], ::String, context: "#{context}[:availability_zone_name]")
        Hearth::Validator.validate!(input[:backup], ::TrueClass, ::FalseClass, context: "#{context}[:backup]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateFileSystemOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFileSystemOutput, context: context)
        Hearth::Validator.validate!(input[:owner_id], ::String, context: "#{context}[:owner_id]")
        Hearth::Validator.validate!(input[:creation_token], ::String, context: "#{context}[:creation_token]")
        Hearth::Validator.validate!(input[:file_system_id], ::String, context: "#{context}[:file_system_id]")
        Hearth::Validator.validate!(input[:file_system_arn], ::String, context: "#{context}[:file_system_arn]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:life_cycle_state], ::String, context: "#{context}[:life_cycle_state]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:number_of_mount_targets], ::Integer, context: "#{context}[:number_of_mount_targets]")
        Validators::FileSystemSize.validate!(input[:size_in_bytes], context: "#{context}[:size_in_bytes]") unless input[:size_in_bytes].nil?
        Hearth::Validator.validate!(input[:performance_mode], ::String, context: "#{context}[:performance_mode]")
        Hearth::Validator.validate!(input[:encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:encrypted]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:throughput_mode], ::String, context: "#{context}[:throughput_mode]")
        Hearth::Validator.validate!(input[:provisioned_throughput_in_mibps], ::Float, context: "#{context}[:provisioned_throughput_in_mibps]")
        Hearth::Validator.validate!(input[:availability_zone_name], ::String, context: "#{context}[:availability_zone_name]")
        Hearth::Validator.validate!(input[:availability_zone_id], ::String, context: "#{context}[:availability_zone_id]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateMountTargetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateMountTargetInput, context: context)
        Hearth::Validator.validate!(input[:file_system_id], ::String, context: "#{context}[:file_system_id]")
        Hearth::Validator.validate!(input[:subnet_id], ::String, context: "#{context}[:subnet_id]")
        Hearth::Validator.validate!(input[:ip_address], ::String, context: "#{context}[:ip_address]")
        Validators::SecurityGroups.validate!(input[:security_groups], context: "#{context}[:security_groups]") unless input[:security_groups].nil?
      end
    end

    class CreateMountTargetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateMountTargetOutput, context: context)
        Hearth::Validator.validate!(input[:owner_id], ::String, context: "#{context}[:owner_id]")
        Hearth::Validator.validate!(input[:mount_target_id], ::String, context: "#{context}[:mount_target_id]")
        Hearth::Validator.validate!(input[:file_system_id], ::String, context: "#{context}[:file_system_id]")
        Hearth::Validator.validate!(input[:subnet_id], ::String, context: "#{context}[:subnet_id]")
        Hearth::Validator.validate!(input[:life_cycle_state], ::String, context: "#{context}[:life_cycle_state]")
        Hearth::Validator.validate!(input[:ip_address], ::String, context: "#{context}[:ip_address]")
        Hearth::Validator.validate!(input[:network_interface_id], ::String, context: "#{context}[:network_interface_id]")
        Hearth::Validator.validate!(input[:availability_zone_id], ::String, context: "#{context}[:availability_zone_id]")
        Hearth::Validator.validate!(input[:availability_zone_name], ::String, context: "#{context}[:availability_zone_name]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
      end
    end

    class CreateReplicationConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateReplicationConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:source_file_system_id], ::String, context: "#{context}[:source_file_system_id]")
        Validators::DestinationsToCreate.validate!(input[:destinations], context: "#{context}[:destinations]") unless input[:destinations].nil?
      end
    end

    class CreateReplicationConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateReplicationConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:source_file_system_id], ::String, context: "#{context}[:source_file_system_id]")
        Hearth::Validator.validate!(input[:source_file_system_region], ::String, context: "#{context}[:source_file_system_region]")
        Hearth::Validator.validate!(input[:source_file_system_arn], ::String, context: "#{context}[:source_file_system_arn]")
        Hearth::Validator.validate!(input[:original_source_file_system_arn], ::String, context: "#{context}[:original_source_file_system_arn]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Validators::Destinations.validate!(input[:destinations], context: "#{context}[:destinations]") unless input[:destinations].nil?
      end
    end

    class CreateTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTagsInput, context: context)
        Hearth::Validator.validate!(input[:file_system_id], ::String, context: "#{context}[:file_system_id]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTagsOutput, context: context)
      end
    end

    class CreationInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreationInfo, context: context)
        Hearth::Validator.validate!(input[:owner_uid], ::Integer, context: "#{context}[:owner_uid]")
        Hearth::Validator.validate!(input[:owner_gid], ::Integer, context: "#{context}[:owner_gid]")
        Hearth::Validator.validate!(input[:permissions], ::String, context: "#{context}[:permissions]")
      end
    end

    class DeleteAccessPointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAccessPointInput, context: context)
        Hearth::Validator.validate!(input[:access_point_id], ::String, context: "#{context}[:access_point_id]")
      end
    end

    class DeleteAccessPointOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAccessPointOutput, context: context)
      end
    end

    class DeleteFileSystemInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFileSystemInput, context: context)
        Hearth::Validator.validate!(input[:file_system_id], ::String, context: "#{context}[:file_system_id]")
      end
    end

    class DeleteFileSystemOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFileSystemOutput, context: context)
      end
    end

    class DeleteFileSystemPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFileSystemPolicyInput, context: context)
        Hearth::Validator.validate!(input[:file_system_id], ::String, context: "#{context}[:file_system_id]")
      end
    end

    class DeleteFileSystemPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFileSystemPolicyOutput, context: context)
      end
    end

    class DeleteMountTargetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMountTargetInput, context: context)
        Hearth::Validator.validate!(input[:mount_target_id], ::String, context: "#{context}[:mount_target_id]")
      end
    end

    class DeleteMountTargetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMountTargetOutput, context: context)
      end
    end

    class DeleteReplicationConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteReplicationConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:source_file_system_id], ::String, context: "#{context}[:source_file_system_id]")
      end
    end

    class DeleteReplicationConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteReplicationConfigurationOutput, context: context)
      end
    end

    class DeleteTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTagsInput, context: context)
        Hearth::Validator.validate!(input[:file_system_id], ::String, context: "#{context}[:file_system_id]")
        Validators::TagKeys.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class DeleteTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTagsOutput, context: context)
      end
    end

    class DependencyTimeout
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DependencyTimeout, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DescribeAccessPointsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAccessPointsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:access_point_id], ::String, context: "#{context}[:access_point_id]")
        Hearth::Validator.validate!(input[:file_system_id], ::String, context: "#{context}[:file_system_id]")
      end
    end

    class DescribeAccessPointsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAccessPointsOutput, context: context)
        Validators::AccessPointDescriptions.validate!(input[:access_points], context: "#{context}[:access_points]") unless input[:access_points].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeAccountPreferencesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAccountPreferencesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeAccountPreferencesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAccountPreferencesOutput, context: context)
        Validators::ResourceIdPreference.validate!(input[:resource_id_preference], context: "#{context}[:resource_id_preference]") unless input[:resource_id_preference].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeBackupPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeBackupPolicyInput, context: context)
        Hearth::Validator.validate!(input[:file_system_id], ::String, context: "#{context}[:file_system_id]")
      end
    end

    class DescribeBackupPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeBackupPolicyOutput, context: context)
        Validators::BackupPolicy.validate!(input[:backup_policy], context: "#{context}[:backup_policy]") unless input[:backup_policy].nil?
      end
    end

    class DescribeFileSystemPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFileSystemPolicyInput, context: context)
        Hearth::Validator.validate!(input[:file_system_id], ::String, context: "#{context}[:file_system_id]")
      end
    end

    class DescribeFileSystemPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFileSystemPolicyOutput, context: context)
        Hearth::Validator.validate!(input[:file_system_id], ::String, context: "#{context}[:file_system_id]")
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
      end
    end

    class DescribeFileSystemsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFileSystemsInput, context: context)
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:creation_token], ::String, context: "#{context}[:creation_token]")
        Hearth::Validator.validate!(input[:file_system_id], ::String, context: "#{context}[:file_system_id]")
      end
    end

    class DescribeFileSystemsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFileSystemsOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Validators::FileSystemDescriptions.validate!(input[:file_systems], context: "#{context}[:file_systems]") unless input[:file_systems].nil?
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
      end
    end

    class DescribeLifecycleConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLifecycleConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:file_system_id], ::String, context: "#{context}[:file_system_id]")
      end
    end

    class DescribeLifecycleConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLifecycleConfigurationOutput, context: context)
        Validators::LifecyclePolicies.validate!(input[:lifecycle_policies], context: "#{context}[:lifecycle_policies]") unless input[:lifecycle_policies].nil?
      end
    end

    class DescribeMountTargetSecurityGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeMountTargetSecurityGroupsInput, context: context)
        Hearth::Validator.validate!(input[:mount_target_id], ::String, context: "#{context}[:mount_target_id]")
      end
    end

    class DescribeMountTargetSecurityGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeMountTargetSecurityGroupsOutput, context: context)
        Validators::SecurityGroups.validate!(input[:security_groups], context: "#{context}[:security_groups]") unless input[:security_groups].nil?
      end
    end

    class DescribeMountTargetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeMountTargetsInput, context: context)
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:file_system_id], ::String, context: "#{context}[:file_system_id]")
        Hearth::Validator.validate!(input[:mount_target_id], ::String, context: "#{context}[:mount_target_id]")
        Hearth::Validator.validate!(input[:access_point_id], ::String, context: "#{context}[:access_point_id]")
      end
    end

    class DescribeMountTargetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeMountTargetsOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Validators::MountTargetDescriptions.validate!(input[:mount_targets], context: "#{context}[:mount_targets]") unless input[:mount_targets].nil?
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
      end
    end

    class DescribeReplicationConfigurationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeReplicationConfigurationsInput, context: context)
        Hearth::Validator.validate!(input[:file_system_id], ::String, context: "#{context}[:file_system_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeReplicationConfigurationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeReplicationConfigurationsOutput, context: context)
        Validators::ReplicationConfigurationDescriptions.validate!(input[:replications], context: "#{context}[:replications]") unless input[:replications].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTagsInput, context: context)
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:file_system_id], ::String, context: "#{context}[:file_system_id]")
      end
    end

    class DescribeTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTagsOutput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
      end
    end

    class Destination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Destination, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:file_system_id], ::String, context: "#{context}[:file_system_id]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:last_replicated_timestamp], ::Time, context: "#{context}[:last_replicated_timestamp]")
      end
    end

    class DestinationToCreate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DestinationToCreate, context: context)
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:availability_zone_name], ::String, context: "#{context}[:availability_zone_name]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
      end
    end

    class Destinations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Destination.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DestinationsToCreate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DestinationToCreate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FileSystemAlreadyExists
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FileSystemAlreadyExists, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:file_system_id], ::String, context: "#{context}[:file_system_id]")
      end
    end

    class FileSystemDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FileSystemDescription, context: context)
        Hearth::Validator.validate!(input[:owner_id], ::String, context: "#{context}[:owner_id]")
        Hearth::Validator.validate!(input[:creation_token], ::String, context: "#{context}[:creation_token]")
        Hearth::Validator.validate!(input[:file_system_id], ::String, context: "#{context}[:file_system_id]")
        Hearth::Validator.validate!(input[:file_system_arn], ::String, context: "#{context}[:file_system_arn]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:life_cycle_state], ::String, context: "#{context}[:life_cycle_state]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:number_of_mount_targets], ::Integer, context: "#{context}[:number_of_mount_targets]")
        Validators::FileSystemSize.validate!(input[:size_in_bytes], context: "#{context}[:size_in_bytes]") unless input[:size_in_bytes].nil?
        Hearth::Validator.validate!(input[:performance_mode], ::String, context: "#{context}[:performance_mode]")
        Hearth::Validator.validate!(input[:encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:encrypted]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:throughput_mode], ::String, context: "#{context}[:throughput_mode]")
        Hearth::Validator.validate!(input[:provisioned_throughput_in_mibps], ::Float, context: "#{context}[:provisioned_throughput_in_mibps]")
        Hearth::Validator.validate!(input[:availability_zone_name], ::String, context: "#{context}[:availability_zone_name]")
        Hearth::Validator.validate!(input[:availability_zone_id], ::String, context: "#{context}[:availability_zone_id]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class FileSystemDescriptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::FileSystemDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FileSystemInUse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FileSystemInUse, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class FileSystemLimitExceeded
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FileSystemLimitExceeded, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class FileSystemNotFound
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FileSystemNotFound, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class FileSystemSize
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FileSystemSize, context: context)
        Hearth::Validator.validate!(input[:value], ::Integer, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:timestamp], ::Time, context: "#{context}[:timestamp]")
        Hearth::Validator.validate!(input[:value_in_ia], ::Integer, context: "#{context}[:value_in_ia]")
        Hearth::Validator.validate!(input[:value_in_standard], ::Integer, context: "#{context}[:value_in_standard]")
      end
    end

    class IncorrectFileSystemLifeCycleState
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IncorrectFileSystemLifeCycleState, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class IncorrectMountTargetState
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IncorrectMountTargetState, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InsufficientThroughputCapacity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InsufficientThroughputCapacity, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InternalServerError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerError, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidPolicyException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidPolicyException, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class IpAddressInUse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IpAddressInUse, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LifecyclePolicies
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::LifecyclePolicy.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LifecyclePolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LifecyclePolicy, context: context)
        Hearth::Validator.validate!(input[:transition_to_ia], ::String, context: "#{context}[:transition_to_ia]")
        Hearth::Validator.validate!(input[:transition_to_primary_storage_class], ::String, context: "#{context}[:transition_to_primary_storage_class]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ModifyMountTargetSecurityGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyMountTargetSecurityGroupsInput, context: context)
        Hearth::Validator.validate!(input[:mount_target_id], ::String, context: "#{context}[:mount_target_id]")
        Validators::SecurityGroups.validate!(input[:security_groups], context: "#{context}[:security_groups]") unless input[:security_groups].nil?
      end
    end

    class ModifyMountTargetSecurityGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyMountTargetSecurityGroupsOutput, context: context)
      end
    end

    class MountTargetConflict
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MountTargetConflict, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class MountTargetDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MountTargetDescription, context: context)
        Hearth::Validator.validate!(input[:owner_id], ::String, context: "#{context}[:owner_id]")
        Hearth::Validator.validate!(input[:mount_target_id], ::String, context: "#{context}[:mount_target_id]")
        Hearth::Validator.validate!(input[:file_system_id], ::String, context: "#{context}[:file_system_id]")
        Hearth::Validator.validate!(input[:subnet_id], ::String, context: "#{context}[:subnet_id]")
        Hearth::Validator.validate!(input[:life_cycle_state], ::String, context: "#{context}[:life_cycle_state]")
        Hearth::Validator.validate!(input[:ip_address], ::String, context: "#{context}[:ip_address]")
        Hearth::Validator.validate!(input[:network_interface_id], ::String, context: "#{context}[:network_interface_id]")
        Hearth::Validator.validate!(input[:availability_zone_id], ::String, context: "#{context}[:availability_zone_id]")
        Hearth::Validator.validate!(input[:availability_zone_name], ::String, context: "#{context}[:availability_zone_name]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
      end
    end

    class MountTargetDescriptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::MountTargetDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MountTargetNotFound
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MountTargetNotFound, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NetworkInterfaceLimitExceeded
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NetworkInterfaceLimitExceeded, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NoFreeAddressesInSubnet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoFreeAddressesInSubnet, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PolicyNotFound
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PolicyNotFound, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PosixUser
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PosixUser, context: context)
        Hearth::Validator.validate!(input[:uid], ::Integer, context: "#{context}[:uid]")
        Hearth::Validator.validate!(input[:gid], ::Integer, context: "#{context}[:gid]")
        Validators::SecondaryGids.validate!(input[:secondary_gids], context: "#{context}[:secondary_gids]") unless input[:secondary_gids].nil?
      end
    end

    class PutAccountPreferencesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutAccountPreferencesInput, context: context)
        Hearth::Validator.validate!(input[:resource_id_type], ::String, context: "#{context}[:resource_id_type]")
      end
    end

    class PutAccountPreferencesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutAccountPreferencesOutput, context: context)
        Validators::ResourceIdPreference.validate!(input[:resource_id_preference], context: "#{context}[:resource_id_preference]") unless input[:resource_id_preference].nil?
      end
    end

    class PutBackupPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutBackupPolicyInput, context: context)
        Hearth::Validator.validate!(input[:file_system_id], ::String, context: "#{context}[:file_system_id]")
        Validators::BackupPolicy.validate!(input[:backup_policy], context: "#{context}[:backup_policy]") unless input[:backup_policy].nil?
      end
    end

    class PutBackupPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutBackupPolicyOutput, context: context)
        Validators::BackupPolicy.validate!(input[:backup_policy], context: "#{context}[:backup_policy]") unless input[:backup_policy].nil?
      end
    end

    class PutFileSystemPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutFileSystemPolicyInput, context: context)
        Hearth::Validator.validate!(input[:file_system_id], ::String, context: "#{context}[:file_system_id]")
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
        Hearth::Validator.validate!(input[:bypass_policy_lockout_safety_check], ::TrueClass, ::FalseClass, context: "#{context}[:bypass_policy_lockout_safety_check]")
      end
    end

    class PutFileSystemPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutFileSystemPolicyOutput, context: context)
        Hearth::Validator.validate!(input[:file_system_id], ::String, context: "#{context}[:file_system_id]")
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
      end
    end

    class PutLifecycleConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutLifecycleConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:file_system_id], ::String, context: "#{context}[:file_system_id]")
        Validators::LifecyclePolicies.validate!(input[:lifecycle_policies], context: "#{context}[:lifecycle_policies]") unless input[:lifecycle_policies].nil?
      end
    end

    class PutLifecycleConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutLifecycleConfigurationOutput, context: context)
        Validators::LifecyclePolicies.validate!(input[:lifecycle_policies], context: "#{context}[:lifecycle_policies]") unless input[:lifecycle_policies].nil?
      end
    end

    class ReplicationConfigurationDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplicationConfigurationDescription, context: context)
        Hearth::Validator.validate!(input[:source_file_system_id], ::String, context: "#{context}[:source_file_system_id]")
        Hearth::Validator.validate!(input[:source_file_system_region], ::String, context: "#{context}[:source_file_system_region]")
        Hearth::Validator.validate!(input[:source_file_system_arn], ::String, context: "#{context}[:source_file_system_arn]")
        Hearth::Validator.validate!(input[:original_source_file_system_arn], ::String, context: "#{context}[:original_source_file_system_arn]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Validators::Destinations.validate!(input[:destinations], context: "#{context}[:destinations]") unless input[:destinations].nil?
      end
    end

    class ReplicationConfigurationDescriptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ReplicationConfigurationDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReplicationNotFound
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplicationNotFound, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceIdPreference
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceIdPreference, context: context)
        Hearth::Validator.validate!(input[:resource_id_type], ::String, context: "#{context}[:resource_id_type]")
        Validators::Resources.validate!(input[:resources], context: "#{context}[:resources]") unless input[:resources].nil?
      end
    end

    class Resources
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class RootDirectory
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RootDirectory, context: context)
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        Validators::CreationInfo.validate!(input[:creation_info], context: "#{context}[:creation_info]") unless input[:creation_info].nil?
      end
    end

    class SecondaryGids
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::Integer, context: "#{context}[#{index}]")
        end
      end
    end

    class SecurityGroupLimitExceeded
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SecurityGroupLimitExceeded, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SecurityGroupNotFound
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SecurityGroupNotFound, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SecurityGroups
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SubnetNotFound
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SubnetNotFound, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TagKeys
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class Tags
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ThroughputLimitExceeded
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThroughputLimitExceeded, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyRequests
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyRequests, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UnsupportedAvailabilityZone
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnsupportedAvailabilityZone, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Validators::TagKeys.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateFileSystemInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFileSystemInput, context: context)
        Hearth::Validator.validate!(input[:file_system_id], ::String, context: "#{context}[:file_system_id]")
        Hearth::Validator.validate!(input[:throughput_mode], ::String, context: "#{context}[:throughput_mode]")
        Hearth::Validator.validate!(input[:provisioned_throughput_in_mibps], ::Float, context: "#{context}[:provisioned_throughput_in_mibps]")
      end
    end

    class UpdateFileSystemOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFileSystemOutput, context: context)
        Hearth::Validator.validate!(input[:owner_id], ::String, context: "#{context}[:owner_id]")
        Hearth::Validator.validate!(input[:creation_token], ::String, context: "#{context}[:creation_token]")
        Hearth::Validator.validate!(input[:file_system_id], ::String, context: "#{context}[:file_system_id]")
        Hearth::Validator.validate!(input[:file_system_arn], ::String, context: "#{context}[:file_system_arn]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:life_cycle_state], ::String, context: "#{context}[:life_cycle_state]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:number_of_mount_targets], ::Integer, context: "#{context}[:number_of_mount_targets]")
        Validators::FileSystemSize.validate!(input[:size_in_bytes], context: "#{context}[:size_in_bytes]") unless input[:size_in_bytes].nil?
        Hearth::Validator.validate!(input[:performance_mode], ::String, context: "#{context}[:performance_mode]")
        Hearth::Validator.validate!(input[:encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:encrypted]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:throughput_mode], ::String, context: "#{context}[:throughput_mode]")
        Hearth::Validator.validate!(input[:provisioned_throughput_in_mibps], ::Float, context: "#{context}[:provisioned_throughput_in_mibps]")
        Hearth::Validator.validate!(input[:availability_zone_name], ::String, context: "#{context}[:availability_zone_name]")
        Hearth::Validator.validate!(input[:availability_zone_id], ::String, context: "#{context}[:availability_zone_id]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

  end
end
