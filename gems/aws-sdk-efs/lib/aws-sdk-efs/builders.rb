# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::EFS
  module Builders

    # Operation Builder for CreateAccessPoint
    class CreateAccessPoint
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/2015-02-01/access-points')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        data['Tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        data['FileSystemId'] = input[:file_system_id] unless input[:file_system_id].nil?
        data['PosixUser'] = Builders::PosixUser.build(input[:posix_user]) unless input[:posix_user].nil?
        data['RootDirectory'] = Builders::RootDirectory.build(input[:root_directory]) unless input[:root_directory].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for RootDirectory
    class RootDirectory
      def self.build(input)
        data = {}
        data['Path'] = input[:path] unless input[:path].nil?
        data['CreationInfo'] = Builders::CreationInfo.build(input[:creation_info]) unless input[:creation_info].nil?
        data
      end
    end

    # Structure Builder for CreationInfo
    class CreationInfo
      def self.build(input)
        data = {}
        data['OwnerUid'] = input[:owner_uid] unless input[:owner_uid].nil?
        data['OwnerGid'] = input[:owner_gid] unless input[:owner_gid].nil?
        data['Permissions'] = input[:permissions] unless input[:permissions].nil?
        data
      end
    end

    # Structure Builder for PosixUser
    class PosixUser
      def self.build(input)
        data = {}
        data['Uid'] = input[:uid] unless input[:uid].nil?
        data['Gid'] = input[:gid] unless input[:gid].nil?
        data['SecondaryGids'] = Builders::SecondaryGids.build(input[:secondary_gids]) unless input[:secondary_gids].nil?
        data
      end
    end

    # List Builder for SecondaryGids
    class SecondaryGids
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for Tags
    class Tags
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Tag.build(element) unless element.nil?
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

    # Operation Builder for CreateFileSystem
    class CreateFileSystem
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/2015-02-01/file-systems')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['CreationToken'] = input[:creation_token] unless input[:creation_token].nil?
        data['PerformanceMode'] = input[:performance_mode] unless input[:performance_mode].nil?
        data['Encrypted'] = input[:encrypted] unless input[:encrypted].nil?
        data['KmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data['ThroughputMode'] = input[:throughput_mode] unless input[:throughput_mode].nil?
        data['ProvisionedThroughputInMibps'] = Hearth::NumberHelper.serialize(input[:provisioned_throughput_in_mibps]) unless input[:provisioned_throughput_in_mibps].nil?
        data['AvailabilityZoneName'] = input[:availability_zone_name] unless input[:availability_zone_name].nil?
        data['Backup'] = input[:backup] unless input[:backup].nil?
        data['Tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateMountTarget
    class CreateMountTarget
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/2015-02-01/mount-targets')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['FileSystemId'] = input[:file_system_id] unless input[:file_system_id].nil?
        data['SubnetId'] = input[:subnet_id] unless input[:subnet_id].nil?
        data['IpAddress'] = input[:ip_address] unless input[:ip_address].nil?
        data['SecurityGroups'] = Builders::SecurityGroups.build(input[:security_groups]) unless input[:security_groups].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for SecurityGroups
    class SecurityGroups
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateReplicationConfiguration
    class CreateReplicationConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:source_file_system_id].to_s.empty?
          raise ArgumentError, "HTTP label :source_file_system_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2015-02-01/file-systems/%<SourceFileSystemId>s/replication-configuration',
            SourceFileSystemId: Hearth::HTTP.uri_escape(input[:source_file_system_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Destinations'] = Builders::DestinationsToCreate.build(input[:destinations]) unless input[:destinations].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for DestinationsToCreate
    class DestinationsToCreate
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::DestinationToCreate.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DestinationToCreate
    class DestinationToCreate
      def self.build(input)
        data = {}
        data['Region'] = input[:region] unless input[:region].nil?
        data['AvailabilityZoneName'] = input[:availability_zone_name] unless input[:availability_zone_name].nil?
        data['KmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data
      end
    end

    # Operation Builder for CreateTags
    class CreateTags
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:file_system_id].to_s.empty?
          raise ArgumentError, "HTTP label :file_system_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2015-02-01/create-tags/%<FileSystemId>s',
            FileSystemId: Hearth::HTTP.uri_escape(input[:file_system_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteAccessPoint
    class DeleteAccessPoint
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:access_point_id].to_s.empty?
          raise ArgumentError, "HTTP label :access_point_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2015-02-01/access-points/%<AccessPointId>s',
            AccessPointId: Hearth::HTTP.uri_escape(input[:access_point_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteFileSystem
    class DeleteFileSystem
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:file_system_id].to_s.empty?
          raise ArgumentError, "HTTP label :file_system_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2015-02-01/file-systems/%<FileSystemId>s',
            FileSystemId: Hearth::HTTP.uri_escape(input[:file_system_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteFileSystemPolicy
    class DeleteFileSystemPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:file_system_id].to_s.empty?
          raise ArgumentError, "HTTP label :file_system_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2015-02-01/file-systems/%<FileSystemId>s/policy',
            FileSystemId: Hearth::HTTP.uri_escape(input[:file_system_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteMountTarget
    class DeleteMountTarget
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:mount_target_id].to_s.empty?
          raise ArgumentError, "HTTP label :mount_target_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2015-02-01/mount-targets/%<MountTargetId>s',
            MountTargetId: Hearth::HTTP.uri_escape(input[:mount_target_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteReplicationConfiguration
    class DeleteReplicationConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:source_file_system_id].to_s.empty?
          raise ArgumentError, "HTTP label :source_file_system_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2015-02-01/file-systems/%<SourceFileSystemId>s/replication-configuration',
            SourceFileSystemId: Hearth::HTTP.uri_escape(input[:source_file_system_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteTags
    class DeleteTags
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:file_system_id].to_s.empty?
          raise ArgumentError, "HTTP label :file_system_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2015-02-01/delete-tags/%<FileSystemId>s',
            FileSystemId: Hearth::HTTP.uri_escape(input[:file_system_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['TagKeys'] = Builders::TagKeys.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
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

    # Operation Builder for DescribeAccessPoints
    class DescribeAccessPoints
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/2015-02-01/access-points')
        params = Hearth::Query::ParamList.new
        params['MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['AccessPointId'] = input[:access_point_id].to_s unless input[:access_point_id].nil?
        params['FileSystemId'] = input[:file_system_id].to_s unless input[:file_system_id].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeAccountPreferences
    class DescribeAccountPreferences
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/2015-02-01/account-preferences')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeBackupPolicy
    class DescribeBackupPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:file_system_id].to_s.empty?
          raise ArgumentError, "HTTP label :file_system_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2015-02-01/file-systems/%<FileSystemId>s/backup-policy',
            FileSystemId: Hearth::HTTP.uri_escape(input[:file_system_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeFileSystemPolicy
    class DescribeFileSystemPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:file_system_id].to_s.empty?
          raise ArgumentError, "HTTP label :file_system_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2015-02-01/file-systems/%<FileSystemId>s/policy',
            FileSystemId: Hearth::HTTP.uri_escape(input[:file_system_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeFileSystems
    class DescribeFileSystems
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/2015-02-01/file-systems')
        params = Hearth::Query::ParamList.new
        params['MaxItems'] = input[:max_items].to_s unless input[:max_items].nil?
        params['Marker'] = input[:marker].to_s unless input[:marker].nil?
        params['CreationToken'] = input[:creation_token].to_s unless input[:creation_token].nil?
        params['FileSystemId'] = input[:file_system_id].to_s unless input[:file_system_id].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeLifecycleConfiguration
    class DescribeLifecycleConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:file_system_id].to_s.empty?
          raise ArgumentError, "HTTP label :file_system_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2015-02-01/file-systems/%<FileSystemId>s/lifecycle-configuration',
            FileSystemId: Hearth::HTTP.uri_escape(input[:file_system_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeMountTargetSecurityGroups
    class DescribeMountTargetSecurityGroups
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:mount_target_id].to_s.empty?
          raise ArgumentError, "HTTP label :mount_target_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2015-02-01/mount-targets/%<MountTargetId>s/security-groups',
            MountTargetId: Hearth::HTTP.uri_escape(input[:mount_target_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeMountTargets
    class DescribeMountTargets
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/2015-02-01/mount-targets')
        params = Hearth::Query::ParamList.new
        params['MaxItems'] = input[:max_items].to_s unless input[:max_items].nil?
        params['Marker'] = input[:marker].to_s unless input[:marker].nil?
        params['FileSystemId'] = input[:file_system_id].to_s unless input[:file_system_id].nil?
        params['MountTargetId'] = input[:mount_target_id].to_s unless input[:mount_target_id].nil?
        params['AccessPointId'] = input[:access_point_id].to_s unless input[:access_point_id].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeReplicationConfigurations
    class DescribeReplicationConfigurations
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/2015-02-01/file-systems/replication-configurations')
        params = Hearth::Query::ParamList.new
        params['FileSystemId'] = input[:file_system_id].to_s unless input[:file_system_id].nil?
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeTags
    class DescribeTags
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:file_system_id].to_s.empty?
          raise ArgumentError, "HTTP label :file_system_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2015-02-01/tags/%<FileSystemId>s',
            FileSystemId: Hearth::HTTP.uri_escape(input[:file_system_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['MaxItems'] = input[:max_items].to_s unless input[:max_items].nil?
        params['Marker'] = input[:marker].to_s unless input[:marker].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:resource_id].to_s.empty?
          raise ArgumentError, "HTTP label :resource_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2015-02-01/resource-tags/%<ResourceId>s',
            ResourceId: Hearth::HTTP.uri_escape(input[:resource_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ModifyMountTargetSecurityGroups
    class ModifyMountTargetSecurityGroups
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:mount_target_id].to_s.empty?
          raise ArgumentError, "HTTP label :mount_target_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2015-02-01/mount-targets/%<MountTargetId>s/security-groups',
            MountTargetId: Hearth::HTTP.uri_escape(input[:mount_target_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['SecurityGroups'] = Builders::SecurityGroups.build(input[:security_groups]) unless input[:security_groups].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutAccountPreferences
    class PutAccountPreferences
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/2015-02-01/account-preferences')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ResourceIdType'] = input[:resource_id_type] unless input[:resource_id_type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutBackupPolicy
    class PutBackupPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:file_system_id].to_s.empty?
          raise ArgumentError, "HTTP label :file_system_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2015-02-01/file-systems/%<FileSystemId>s/backup-policy',
            FileSystemId: Hearth::HTTP.uri_escape(input[:file_system_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['BackupPolicy'] = Builders::BackupPolicy.build(input[:backup_policy]) unless input[:backup_policy].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for BackupPolicy
    class BackupPolicy
      def self.build(input)
        data = {}
        data['Status'] = input[:status] unless input[:status].nil?
        data
      end
    end

    # Operation Builder for PutFileSystemPolicy
    class PutFileSystemPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:file_system_id].to_s.empty?
          raise ArgumentError, "HTTP label :file_system_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2015-02-01/file-systems/%<FileSystemId>s/policy',
            FileSystemId: Hearth::HTTP.uri_escape(input[:file_system_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Policy'] = input[:policy] unless input[:policy].nil?
        data['BypassPolicyLockoutSafetyCheck'] = input[:bypass_policy_lockout_safety_check] unless input[:bypass_policy_lockout_safety_check].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutLifecycleConfiguration
    class PutLifecycleConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:file_system_id].to_s.empty?
          raise ArgumentError, "HTTP label :file_system_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2015-02-01/file-systems/%<FileSystemId>s/lifecycle-configuration',
            FileSystemId: Hearth::HTTP.uri_escape(input[:file_system_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['LifecyclePolicies'] = Builders::LifecyclePolicies.build(input[:lifecycle_policies]) unless input[:lifecycle_policies].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for LifecyclePolicies
    class LifecyclePolicies
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::LifecyclePolicy.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for LifecyclePolicy
    class LifecyclePolicy
      def self.build(input)
        data = {}
        data['TransitionToIA'] = input[:transition_to_ia] unless input[:transition_to_ia].nil?
        data['TransitionToPrimaryStorageClass'] = input[:transition_to_primary_storage_class] unless input[:transition_to_primary_storage_class].nil?
        data
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:resource_id].to_s.empty?
          raise ArgumentError, "HTTP label :resource_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2015-02-01/resource-tags/%<ResourceId>s',
            ResourceId: Hearth::HTTP.uri_escape(input[:resource_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:resource_id].to_s.empty?
          raise ArgumentError, "HTTP label :resource_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2015-02-01/resource-tags/%<ResourceId>s',
            ResourceId: Hearth::HTTP.uri_escape(input[:resource_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        unless input[:tag_keys].nil? || input[:tag_keys].empty?
          params['tagKeys'] = input[:tag_keys].map do |value|
            value.to_s unless value.nil?
          end
        end
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for UpdateFileSystem
    class UpdateFileSystem
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:file_system_id].to_s.empty?
          raise ArgumentError, "HTTP label :file_system_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2015-02-01/file-systems/%<FileSystemId>s',
            FileSystemId: Hearth::HTTP.uri_escape(input[:file_system_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ThroughputMode'] = input[:throughput_mode] unless input[:throughput_mode].nil?
        data['ProvisionedThroughputInMibps'] = Hearth::NumberHelper.serialize(input[:provisioned_throughput_in_mibps]) unless input[:provisioned_throughput_in_mibps].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
