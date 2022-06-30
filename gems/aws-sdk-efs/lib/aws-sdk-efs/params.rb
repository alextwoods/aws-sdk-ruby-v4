# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::EFS
  module Params

    module AccessPointAlreadyExists
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessPointAlreadyExists, context: context)
        type = Types::AccessPointAlreadyExists.new
        type.error_code = params[:error_code]
        type.message = params[:message]
        type.access_point_id = params[:access_point_id]
        type
      end
    end

    module AccessPointDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessPointDescription, context: context)
        type = Types::AccessPointDescription.new
        type.client_token = params[:client_token]
        type.name = params[:name]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.access_point_id = params[:access_point_id]
        type.access_point_arn = params[:access_point_arn]
        type.file_system_id = params[:file_system_id]
        type.posix_user = PosixUser.build(params[:posix_user], context: "#{context}[:posix_user]") unless params[:posix_user].nil?
        type.root_directory = RootDirectory.build(params[:root_directory], context: "#{context}[:root_directory]") unless params[:root_directory].nil?
        type.owner_id = params[:owner_id]
        type.life_cycle_state = params[:life_cycle_state]
        type
      end
    end

    module AccessPointDescriptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AccessPointDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AccessPointLimitExceeded
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessPointLimitExceeded, context: context)
        type = Types::AccessPointLimitExceeded.new
        type.error_code = params[:error_code]
        type.message = params[:message]
        type
      end
    end

    module AccessPointNotFound
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessPointNotFound, context: context)
        type = Types::AccessPointNotFound.new
        type.error_code = params[:error_code]
        type.message = params[:message]
        type
      end
    end

    module AvailabilityZonesMismatch
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AvailabilityZonesMismatch, context: context)
        type = Types::AvailabilityZonesMismatch.new
        type.error_code = params[:error_code]
        type.message = params[:message]
        type
      end
    end

    module BackupPolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BackupPolicy, context: context)
        type = Types::BackupPolicy.new
        type.status = params[:status]
        type
      end
    end

    module BadRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BadRequest, context: context)
        type = Types::BadRequest.new
        type.error_code = params[:error_code]
        type.message = params[:message]
        type
      end
    end

    module CreateAccessPointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAccessPointInput, context: context)
        type = Types::CreateAccessPointInput.new
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.file_system_id = params[:file_system_id]
        type.posix_user = PosixUser.build(params[:posix_user], context: "#{context}[:posix_user]") unless params[:posix_user].nil?
        type.root_directory = RootDirectory.build(params[:root_directory], context: "#{context}[:root_directory]") unless params[:root_directory].nil?
        type
      end
    end

    module CreateAccessPointOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAccessPointOutput, context: context)
        type = Types::CreateAccessPointOutput.new
        type.client_token = params[:client_token]
        type.name = params[:name]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.access_point_id = params[:access_point_id]
        type.access_point_arn = params[:access_point_arn]
        type.file_system_id = params[:file_system_id]
        type.posix_user = PosixUser.build(params[:posix_user], context: "#{context}[:posix_user]") unless params[:posix_user].nil?
        type.root_directory = RootDirectory.build(params[:root_directory], context: "#{context}[:root_directory]") unless params[:root_directory].nil?
        type.owner_id = params[:owner_id]
        type.life_cycle_state = params[:life_cycle_state]
        type
      end
    end

    module CreateFileSystemInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFileSystemInput, context: context)
        type = Types::CreateFileSystemInput.new
        type.creation_token = params[:creation_token] || SecureRandom.uuid
        type.performance_mode = params[:performance_mode]
        type.encrypted = params[:encrypted]
        type.kms_key_id = params[:kms_key_id]
        type.throughput_mode = params[:throughput_mode]
        type.provisioned_throughput_in_mibps = params[:provisioned_throughput_in_mibps]
        type.availability_zone_name = params[:availability_zone_name]
        type.backup = params[:backup]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateFileSystemOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFileSystemOutput, context: context)
        type = Types::CreateFileSystemOutput.new
        type.owner_id = params[:owner_id]
        type.creation_token = params[:creation_token]
        type.file_system_id = params[:file_system_id]
        type.file_system_arn = params[:file_system_arn]
        type.creation_time = params[:creation_time]
        type.life_cycle_state = params[:life_cycle_state]
        type.name = params[:name]
        type.number_of_mount_targets = params[:number_of_mount_targets]
        type.size_in_bytes = FileSystemSize.build(params[:size_in_bytes], context: "#{context}[:size_in_bytes]") unless params[:size_in_bytes].nil?
        type.performance_mode = params[:performance_mode]
        type.encrypted = params[:encrypted]
        type.kms_key_id = params[:kms_key_id]
        type.throughput_mode = params[:throughput_mode]
        type.provisioned_throughput_in_mibps = params[:provisioned_throughput_in_mibps]
        type.availability_zone_name = params[:availability_zone_name]
        type.availability_zone_id = params[:availability_zone_id]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateMountTargetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateMountTargetInput, context: context)
        type = Types::CreateMountTargetInput.new
        type.file_system_id = params[:file_system_id]
        type.subnet_id = params[:subnet_id]
        type.ip_address = params[:ip_address]
        type.security_groups = SecurityGroups.build(params[:security_groups], context: "#{context}[:security_groups]") unless params[:security_groups].nil?
        type
      end
    end

    module CreateMountTargetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateMountTargetOutput, context: context)
        type = Types::CreateMountTargetOutput.new
        type.owner_id = params[:owner_id]
        type.mount_target_id = params[:mount_target_id]
        type.file_system_id = params[:file_system_id]
        type.subnet_id = params[:subnet_id]
        type.life_cycle_state = params[:life_cycle_state]
        type.ip_address = params[:ip_address]
        type.network_interface_id = params[:network_interface_id]
        type.availability_zone_id = params[:availability_zone_id]
        type.availability_zone_name = params[:availability_zone_name]
        type.vpc_id = params[:vpc_id]
        type
      end
    end

    module CreateReplicationConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateReplicationConfigurationInput, context: context)
        type = Types::CreateReplicationConfigurationInput.new
        type.source_file_system_id = params[:source_file_system_id]
        type.destinations = DestinationsToCreate.build(params[:destinations], context: "#{context}[:destinations]") unless params[:destinations].nil?
        type
      end
    end

    module CreateReplicationConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateReplicationConfigurationOutput, context: context)
        type = Types::CreateReplicationConfigurationOutput.new
        type.source_file_system_id = params[:source_file_system_id]
        type.source_file_system_region = params[:source_file_system_region]
        type.source_file_system_arn = params[:source_file_system_arn]
        type.original_source_file_system_arn = params[:original_source_file_system_arn]
        type.creation_time = params[:creation_time]
        type.destinations = Destinations.build(params[:destinations], context: "#{context}[:destinations]") unless params[:destinations].nil?
        type
      end
    end

    module CreateTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTagsInput, context: context)
        type = Types::CreateTagsInput.new
        type.file_system_id = params[:file_system_id]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateTagsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTagsOutput, context: context)
        type = Types::CreateTagsOutput.new
        type
      end
    end

    module CreationInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreationInfo, context: context)
        type = Types::CreationInfo.new
        type.owner_uid = params[:owner_uid]
        type.owner_gid = params[:owner_gid]
        type.permissions = params[:permissions]
        type
      end
    end

    module DeleteAccessPointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAccessPointInput, context: context)
        type = Types::DeleteAccessPointInput.new
        type.access_point_id = params[:access_point_id]
        type
      end
    end

    module DeleteAccessPointOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAccessPointOutput, context: context)
        type = Types::DeleteAccessPointOutput.new
        type
      end
    end

    module DeleteFileSystemInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFileSystemInput, context: context)
        type = Types::DeleteFileSystemInput.new
        type.file_system_id = params[:file_system_id]
        type
      end
    end

    module DeleteFileSystemOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFileSystemOutput, context: context)
        type = Types::DeleteFileSystemOutput.new
        type
      end
    end

    module DeleteFileSystemPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFileSystemPolicyInput, context: context)
        type = Types::DeleteFileSystemPolicyInput.new
        type.file_system_id = params[:file_system_id]
        type
      end
    end

    module DeleteFileSystemPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFileSystemPolicyOutput, context: context)
        type = Types::DeleteFileSystemPolicyOutput.new
        type
      end
    end

    module DeleteMountTargetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteMountTargetInput, context: context)
        type = Types::DeleteMountTargetInput.new
        type.mount_target_id = params[:mount_target_id]
        type
      end
    end

    module DeleteMountTargetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteMountTargetOutput, context: context)
        type = Types::DeleteMountTargetOutput.new
        type
      end
    end

    module DeleteReplicationConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteReplicationConfigurationInput, context: context)
        type = Types::DeleteReplicationConfigurationInput.new
        type.source_file_system_id = params[:source_file_system_id]
        type
      end
    end

    module DeleteReplicationConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteReplicationConfigurationOutput, context: context)
        type = Types::DeleteReplicationConfigurationOutput.new
        type
      end
    end

    module DeleteTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTagsInput, context: context)
        type = Types::DeleteTagsInput.new
        type.file_system_id = params[:file_system_id]
        type.tag_keys = TagKeys.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module DeleteTagsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTagsOutput, context: context)
        type = Types::DeleteTagsOutput.new
        type
      end
    end

    module DependencyTimeout
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DependencyTimeout, context: context)
        type = Types::DependencyTimeout.new
        type.error_code = params[:error_code]
        type.message = params[:message]
        type
      end
    end

    module DescribeAccessPointsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAccessPointsInput, context: context)
        type = Types::DescribeAccessPointsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.access_point_id = params[:access_point_id]
        type.file_system_id = params[:file_system_id]
        type
      end
    end

    module DescribeAccessPointsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAccessPointsOutput, context: context)
        type = Types::DescribeAccessPointsOutput.new
        type.access_points = AccessPointDescriptions.build(params[:access_points], context: "#{context}[:access_points]") unless params[:access_points].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeAccountPreferencesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAccountPreferencesInput, context: context)
        type = Types::DescribeAccountPreferencesInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeAccountPreferencesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAccountPreferencesOutput, context: context)
        type = Types::DescribeAccountPreferencesOutput.new
        type.resource_id_preference = ResourceIdPreference.build(params[:resource_id_preference], context: "#{context}[:resource_id_preference]") unless params[:resource_id_preference].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeBackupPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeBackupPolicyInput, context: context)
        type = Types::DescribeBackupPolicyInput.new
        type.file_system_id = params[:file_system_id]
        type
      end
    end

    module DescribeBackupPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeBackupPolicyOutput, context: context)
        type = Types::DescribeBackupPolicyOutput.new
        type.backup_policy = BackupPolicy.build(params[:backup_policy], context: "#{context}[:backup_policy]") unless params[:backup_policy].nil?
        type
      end
    end

    module DescribeFileSystemPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFileSystemPolicyInput, context: context)
        type = Types::DescribeFileSystemPolicyInput.new
        type.file_system_id = params[:file_system_id]
        type
      end
    end

    module DescribeFileSystemPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFileSystemPolicyOutput, context: context)
        type = Types::DescribeFileSystemPolicyOutput.new
        type.file_system_id = params[:file_system_id]
        type.policy = params[:policy]
        type
      end
    end

    module DescribeFileSystemsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFileSystemsInput, context: context)
        type = Types::DescribeFileSystemsInput.new
        type.max_items = params[:max_items]
        type.marker = params[:marker]
        type.creation_token = params[:creation_token]
        type.file_system_id = params[:file_system_id]
        type
      end
    end

    module DescribeFileSystemsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFileSystemsOutput, context: context)
        type = Types::DescribeFileSystemsOutput.new
        type.marker = params[:marker]
        type.file_systems = FileSystemDescriptions.build(params[:file_systems], context: "#{context}[:file_systems]") unless params[:file_systems].nil?
        type.next_marker = params[:next_marker]
        type
      end
    end

    module DescribeLifecycleConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLifecycleConfigurationInput, context: context)
        type = Types::DescribeLifecycleConfigurationInput.new
        type.file_system_id = params[:file_system_id]
        type
      end
    end

    module DescribeLifecycleConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLifecycleConfigurationOutput, context: context)
        type = Types::DescribeLifecycleConfigurationOutput.new
        type.lifecycle_policies = LifecyclePolicies.build(params[:lifecycle_policies], context: "#{context}[:lifecycle_policies]") unless params[:lifecycle_policies].nil?
        type
      end
    end

    module DescribeMountTargetSecurityGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeMountTargetSecurityGroupsInput, context: context)
        type = Types::DescribeMountTargetSecurityGroupsInput.new
        type.mount_target_id = params[:mount_target_id]
        type
      end
    end

    module DescribeMountTargetSecurityGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeMountTargetSecurityGroupsOutput, context: context)
        type = Types::DescribeMountTargetSecurityGroupsOutput.new
        type.security_groups = SecurityGroups.build(params[:security_groups], context: "#{context}[:security_groups]") unless params[:security_groups].nil?
        type
      end
    end

    module DescribeMountTargetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeMountTargetsInput, context: context)
        type = Types::DescribeMountTargetsInput.new
        type.max_items = params[:max_items]
        type.marker = params[:marker]
        type.file_system_id = params[:file_system_id]
        type.mount_target_id = params[:mount_target_id]
        type.access_point_id = params[:access_point_id]
        type
      end
    end

    module DescribeMountTargetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeMountTargetsOutput, context: context)
        type = Types::DescribeMountTargetsOutput.new
        type.marker = params[:marker]
        type.mount_targets = MountTargetDescriptions.build(params[:mount_targets], context: "#{context}[:mount_targets]") unless params[:mount_targets].nil?
        type.next_marker = params[:next_marker]
        type
      end
    end

    module DescribeReplicationConfigurationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeReplicationConfigurationsInput, context: context)
        type = Types::DescribeReplicationConfigurationsInput.new
        type.file_system_id = params[:file_system_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeReplicationConfigurationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeReplicationConfigurationsOutput, context: context)
        type = Types::DescribeReplicationConfigurationsOutput.new
        type.replications = ReplicationConfigurationDescriptions.build(params[:replications], context: "#{context}[:replications]") unless params[:replications].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTagsInput, context: context)
        type = Types::DescribeTagsInput.new
        type.max_items = params[:max_items]
        type.marker = params[:marker]
        type.file_system_id = params[:file_system_id]
        type
      end
    end

    module DescribeTagsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTagsOutput, context: context)
        type = Types::DescribeTagsOutput.new
        type.marker = params[:marker]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.next_marker = params[:next_marker]
        type
      end
    end

    module Destination
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Destination, context: context)
        type = Types::Destination.new
        type.status = params[:status]
        type.file_system_id = params[:file_system_id]
        type.region = params[:region]
        type.last_replicated_timestamp = params[:last_replicated_timestamp]
        type
      end
    end

    module DestinationToCreate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DestinationToCreate, context: context)
        type = Types::DestinationToCreate.new
        type.region = params[:region]
        type.availability_zone_name = params[:availability_zone_name]
        type.kms_key_id = params[:kms_key_id]
        type
      end
    end

    module Destinations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Destination.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DestinationsToCreate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DestinationToCreate.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FileSystemAlreadyExists
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FileSystemAlreadyExists, context: context)
        type = Types::FileSystemAlreadyExists.new
        type.error_code = params[:error_code]
        type.message = params[:message]
        type.file_system_id = params[:file_system_id]
        type
      end
    end

    module FileSystemDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FileSystemDescription, context: context)
        type = Types::FileSystemDescription.new
        type.owner_id = params[:owner_id]
        type.creation_token = params[:creation_token]
        type.file_system_id = params[:file_system_id]
        type.file_system_arn = params[:file_system_arn]
        type.creation_time = params[:creation_time]
        type.life_cycle_state = params[:life_cycle_state]
        type.name = params[:name]
        type.number_of_mount_targets = params[:number_of_mount_targets]
        type.size_in_bytes = FileSystemSize.build(params[:size_in_bytes], context: "#{context}[:size_in_bytes]") unless params[:size_in_bytes].nil?
        type.performance_mode = params[:performance_mode]
        type.encrypted = params[:encrypted]
        type.kms_key_id = params[:kms_key_id]
        type.throughput_mode = params[:throughput_mode]
        type.provisioned_throughput_in_mibps = params[:provisioned_throughput_in_mibps]
        type.availability_zone_name = params[:availability_zone_name]
        type.availability_zone_id = params[:availability_zone_id]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module FileSystemDescriptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FileSystemDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FileSystemInUse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FileSystemInUse, context: context)
        type = Types::FileSystemInUse.new
        type.error_code = params[:error_code]
        type.message = params[:message]
        type
      end
    end

    module FileSystemLimitExceeded
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FileSystemLimitExceeded, context: context)
        type = Types::FileSystemLimitExceeded.new
        type.error_code = params[:error_code]
        type.message = params[:message]
        type
      end
    end

    module FileSystemNotFound
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FileSystemNotFound, context: context)
        type = Types::FileSystemNotFound.new
        type.error_code = params[:error_code]
        type.message = params[:message]
        type
      end
    end

    module FileSystemSize
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FileSystemSize, context: context)
        type = Types::FileSystemSize.new
        type.value = params[:value]
        type.timestamp = params[:timestamp]
        type.value_in_ia = params[:value_in_ia]
        type.value_in_standard = params[:value_in_standard]
        type
      end
    end

    module IncorrectFileSystemLifeCycleState
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IncorrectFileSystemLifeCycleState, context: context)
        type = Types::IncorrectFileSystemLifeCycleState.new
        type.error_code = params[:error_code]
        type.message = params[:message]
        type
      end
    end

    module IncorrectMountTargetState
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IncorrectMountTargetState, context: context)
        type = Types::IncorrectMountTargetState.new
        type.error_code = params[:error_code]
        type.message = params[:message]
        type
      end
    end

    module InsufficientThroughputCapacity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InsufficientThroughputCapacity, context: context)
        type = Types::InsufficientThroughputCapacity.new
        type.error_code = params[:error_code]
        type.message = params[:message]
        type
      end
    end

    module InternalServerError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerError, context: context)
        type = Types::InternalServerError.new
        type.error_code = params[:error_code]
        type.message = params[:message]
        type
      end
    end

    module InvalidPolicyException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidPolicyException, context: context)
        type = Types::InvalidPolicyException.new
        type.error_code = params[:error_code]
        type.message = params[:message]
        type
      end
    end

    module IpAddressInUse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IpAddressInUse, context: context)
        type = Types::IpAddressInUse.new
        type.error_code = params[:error_code]
        type.message = params[:message]
        type
      end
    end

    module LifecyclePolicies
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LifecyclePolicy.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LifecyclePolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LifecyclePolicy, context: context)
        type = Types::LifecyclePolicy.new
        type.transition_to_ia = params[:transition_to_ia]
        type.transition_to_primary_storage_class = params[:transition_to_primary_storage_class]
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_id = params[:resource_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ModifyMountTargetSecurityGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyMountTargetSecurityGroupsInput, context: context)
        type = Types::ModifyMountTargetSecurityGroupsInput.new
        type.mount_target_id = params[:mount_target_id]
        type.security_groups = SecurityGroups.build(params[:security_groups], context: "#{context}[:security_groups]") unless params[:security_groups].nil?
        type
      end
    end

    module ModifyMountTargetSecurityGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyMountTargetSecurityGroupsOutput, context: context)
        type = Types::ModifyMountTargetSecurityGroupsOutput.new
        type
      end
    end

    module MountTargetConflict
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MountTargetConflict, context: context)
        type = Types::MountTargetConflict.new
        type.error_code = params[:error_code]
        type.message = params[:message]
        type
      end
    end

    module MountTargetDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MountTargetDescription, context: context)
        type = Types::MountTargetDescription.new
        type.owner_id = params[:owner_id]
        type.mount_target_id = params[:mount_target_id]
        type.file_system_id = params[:file_system_id]
        type.subnet_id = params[:subnet_id]
        type.life_cycle_state = params[:life_cycle_state]
        type.ip_address = params[:ip_address]
        type.network_interface_id = params[:network_interface_id]
        type.availability_zone_id = params[:availability_zone_id]
        type.availability_zone_name = params[:availability_zone_name]
        type.vpc_id = params[:vpc_id]
        type
      end
    end

    module MountTargetDescriptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MountTargetDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MountTargetNotFound
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MountTargetNotFound, context: context)
        type = Types::MountTargetNotFound.new
        type.error_code = params[:error_code]
        type.message = params[:message]
        type
      end
    end

    module NetworkInterfaceLimitExceeded
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NetworkInterfaceLimitExceeded, context: context)
        type = Types::NetworkInterfaceLimitExceeded.new
        type.error_code = params[:error_code]
        type.message = params[:message]
        type
      end
    end

    module NoFreeAddressesInSubnet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NoFreeAddressesInSubnet, context: context)
        type = Types::NoFreeAddressesInSubnet.new
        type.error_code = params[:error_code]
        type.message = params[:message]
        type
      end
    end

    module PolicyNotFound
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PolicyNotFound, context: context)
        type = Types::PolicyNotFound.new
        type.error_code = params[:error_code]
        type.message = params[:message]
        type
      end
    end

    module PosixUser
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PosixUser, context: context)
        type = Types::PosixUser.new
        type.uid = params[:uid]
        type.gid = params[:gid]
        type.secondary_gids = SecondaryGids.build(params[:secondary_gids], context: "#{context}[:secondary_gids]") unless params[:secondary_gids].nil?
        type
      end
    end

    module PutAccountPreferencesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutAccountPreferencesInput, context: context)
        type = Types::PutAccountPreferencesInput.new
        type.resource_id_type = params[:resource_id_type]
        type
      end
    end

    module PutAccountPreferencesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutAccountPreferencesOutput, context: context)
        type = Types::PutAccountPreferencesOutput.new
        type.resource_id_preference = ResourceIdPreference.build(params[:resource_id_preference], context: "#{context}[:resource_id_preference]") unless params[:resource_id_preference].nil?
        type
      end
    end

    module PutBackupPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutBackupPolicyInput, context: context)
        type = Types::PutBackupPolicyInput.new
        type.file_system_id = params[:file_system_id]
        type.backup_policy = BackupPolicy.build(params[:backup_policy], context: "#{context}[:backup_policy]") unless params[:backup_policy].nil?
        type
      end
    end

    module PutBackupPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutBackupPolicyOutput, context: context)
        type = Types::PutBackupPolicyOutput.new
        type.backup_policy = BackupPolicy.build(params[:backup_policy], context: "#{context}[:backup_policy]") unless params[:backup_policy].nil?
        type
      end
    end

    module PutFileSystemPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutFileSystemPolicyInput, context: context)
        type = Types::PutFileSystemPolicyInput.new
        type.file_system_id = params[:file_system_id]
        type.policy = params[:policy]
        type.bypass_policy_lockout_safety_check = params[:bypass_policy_lockout_safety_check]
        type
      end
    end

    module PutFileSystemPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutFileSystemPolicyOutput, context: context)
        type = Types::PutFileSystemPolicyOutput.new
        type.file_system_id = params[:file_system_id]
        type.policy = params[:policy]
        type
      end
    end

    module PutLifecycleConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutLifecycleConfigurationInput, context: context)
        type = Types::PutLifecycleConfigurationInput.new
        type.file_system_id = params[:file_system_id]
        type.lifecycle_policies = LifecyclePolicies.build(params[:lifecycle_policies], context: "#{context}[:lifecycle_policies]") unless params[:lifecycle_policies].nil?
        type
      end
    end

    module PutLifecycleConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutLifecycleConfigurationOutput, context: context)
        type = Types::PutLifecycleConfigurationOutput.new
        type.lifecycle_policies = LifecyclePolicies.build(params[:lifecycle_policies], context: "#{context}[:lifecycle_policies]") unless params[:lifecycle_policies].nil?
        type
      end
    end

    module ReplicationConfigurationDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReplicationConfigurationDescription, context: context)
        type = Types::ReplicationConfigurationDescription.new
        type.source_file_system_id = params[:source_file_system_id]
        type.source_file_system_region = params[:source_file_system_region]
        type.source_file_system_arn = params[:source_file_system_arn]
        type.original_source_file_system_arn = params[:original_source_file_system_arn]
        type.creation_time = params[:creation_time]
        type.destinations = Destinations.build(params[:destinations], context: "#{context}[:destinations]") unless params[:destinations].nil?
        type
      end
    end

    module ReplicationConfigurationDescriptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReplicationConfigurationDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ReplicationNotFound
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReplicationNotFound, context: context)
        type = Types::ReplicationNotFound.new
        type.error_code = params[:error_code]
        type.message = params[:message]
        type
      end
    end

    module ResourceIdPreference
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceIdPreference, context: context)
        type = Types::ResourceIdPreference.new
        type.resource_id_type = params[:resource_id_type]
        type.resources = Resources.build(params[:resources], context: "#{context}[:resources]") unless params[:resources].nil?
        type
      end
    end

    module Resources
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module RootDirectory
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RootDirectory, context: context)
        type = Types::RootDirectory.new
        type.path = params[:path]
        type.creation_info = CreationInfo.build(params[:creation_info], context: "#{context}[:creation_info]") unless params[:creation_info].nil?
        type
      end
    end

    module SecondaryGids
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SecurityGroupLimitExceeded
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SecurityGroupLimitExceeded, context: context)
        type = Types::SecurityGroupLimitExceeded.new
        type.error_code = params[:error_code]
        type.message = params[:message]
        type
      end
    end

    module SecurityGroupNotFound
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SecurityGroupNotFound, context: context)
        type = Types::SecurityGroupNotFound.new
        type.error_code = params[:error_code]
        type.message = params[:message]
        type
      end
    end

    module SecurityGroups
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SubnetNotFound
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SubnetNotFound, context: context)
        type = Types::SubnetNotFound.new
        type.error_code = params[:error_code]
        type.message = params[:message]
        type
      end
    end

    module Tag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Tag, context: context)
        type = Types::Tag.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module TagKeys
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_id = params[:resource_id]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
        type
      end
    end

    module Tags
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.error_code = params[:error_code]
        type.message = params[:message]
        type
      end
    end

    module ThroughputLimitExceeded
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThroughputLimitExceeded, context: context)
        type = Types::ThroughputLimitExceeded.new
        type.error_code = params[:error_code]
        type.message = params[:message]
        type
      end
    end

    module TooManyRequests
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyRequests, context: context)
        type = Types::TooManyRequests.new
        type.error_code = params[:error_code]
        type.message = params[:message]
        type
      end
    end

    module UnsupportedAvailabilityZone
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnsupportedAvailabilityZone, context: context)
        type = Types::UnsupportedAvailabilityZone.new
        type.error_code = params[:error_code]
        type.message = params[:message]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_id = params[:resource_id]
        type.tag_keys = TagKeys.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceOutput, context: context)
        type = Types::UntagResourceOutput.new
        type
      end
    end

    module UpdateFileSystemInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFileSystemInput, context: context)
        type = Types::UpdateFileSystemInput.new
        type.file_system_id = params[:file_system_id]
        type.throughput_mode = params[:throughput_mode]
        type.provisioned_throughput_in_mibps = params[:provisioned_throughput_in_mibps]
        type
      end
    end

    module UpdateFileSystemOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFileSystemOutput, context: context)
        type = Types::UpdateFileSystemOutput.new
        type.owner_id = params[:owner_id]
        type.creation_token = params[:creation_token]
        type.file_system_id = params[:file_system_id]
        type.file_system_arn = params[:file_system_arn]
        type.creation_time = params[:creation_time]
        type.life_cycle_state = params[:life_cycle_state]
        type.name = params[:name]
        type.number_of_mount_targets = params[:number_of_mount_targets]
        type.size_in_bytes = FileSystemSize.build(params[:size_in_bytes], context: "#{context}[:size_in_bytes]") unless params[:size_in_bytes].nil?
        type.performance_mode = params[:performance_mode]
        type.encrypted = params[:encrypted]
        type.kms_key_id = params[:kms_key_id]
        type.throughput_mode = params[:throughput_mode]
        type.provisioned_throughput_in_mibps = params[:provisioned_throughput_in_mibps]
        type.availability_zone_name = params[:availability_zone_name]
        type.availability_zone_id = params[:availability_zone_id]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.error_code = params[:error_code]
        type.message = params[:message]
        type
      end
    end

  end
end
