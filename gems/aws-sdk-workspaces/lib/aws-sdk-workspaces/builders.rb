# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'
require 'stringio'

module AWS::SDK::WorkSpaces
  module Builders

    # Operation Builder for AssociateConnectionAlias
    class AssociateConnectionAlias
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkspacesService.AssociateConnectionAlias'
        data = {}
        data['AliasId'] = input[:alias_id] unless input[:alias_id].nil?
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AssociateIpGroups
    class AssociateIpGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkspacesService.AssociateIpGroups'
        data = {}
        data['DirectoryId'] = input[:directory_id] unless input[:directory_id].nil?
        data['GroupIds'] = IpGroupIdList.build(input[:group_ids]) unless input[:group_ids].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for IpGroupIdList
    class IpGroupIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for AuthorizeIpRules
    class AuthorizeIpRules
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkspacesService.AuthorizeIpRules'
        data = {}
        data['GroupId'] = input[:group_id] unless input[:group_id].nil?
        data['UserRules'] = IpRuleList.build(input[:user_rules]) unless input[:user_rules].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for IpRuleList
    class IpRuleList
      def self.build(input)
        data = []
        input.each do |element|
          data << IpRuleItem.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for IpRuleItem
    class IpRuleItem
      def self.build(input)
        data = {}
        data['ipRule'] = input[:ip_rule] unless input[:ip_rule].nil?
        data['ruleDesc'] = input[:rule_desc] unless input[:rule_desc].nil?
        data
      end
    end

    # Operation Builder for CopyWorkspaceImage
    class CopyWorkspaceImage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkspacesService.CopyWorkspaceImage'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['SourceImageId'] = input[:source_image_id] unless input[:source_image_id].nil?
        data['SourceRegion'] = input[:source_region] unless input[:source_region].nil?
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagList
    class TagList
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

    # Operation Builder for CreateConnectClientAddIn
    class CreateConnectClientAddIn
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkspacesService.CreateConnectClientAddIn'
        data = {}
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['URL'] = input[:url] unless input[:url].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateConnectionAlias
    class CreateConnectionAlias
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkspacesService.CreateConnectionAlias'
        data = {}
        data['ConnectionString'] = input[:connection_string] unless input[:connection_string].nil?
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateIpGroup
    class CreateIpGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkspacesService.CreateIpGroup'
        data = {}
        data['GroupName'] = input[:group_name] unless input[:group_name].nil?
        data['GroupDesc'] = input[:group_desc] unless input[:group_desc].nil?
        data['UserRules'] = IpRuleList.build(input[:user_rules]) unless input[:user_rules].nil?
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateTags
    class CreateTags
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkspacesService.CreateTags'
        data = {}
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateUpdatedWorkspaceImage
    class CreateUpdatedWorkspaceImage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkspacesService.CreateUpdatedWorkspaceImage'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['SourceImageId'] = input[:source_image_id] unless input[:source_image_id].nil?
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateWorkspaceBundle
    class CreateWorkspaceBundle
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkspacesService.CreateWorkspaceBundle'
        data = {}
        data['BundleName'] = input[:bundle_name] unless input[:bundle_name].nil?
        data['BundleDescription'] = input[:bundle_description] unless input[:bundle_description].nil?
        data['ImageId'] = input[:image_id] unless input[:image_id].nil?
        data['ComputeType'] = ComputeType.build(input[:compute_type]) unless input[:compute_type].nil?
        data['UserStorage'] = UserStorage.build(input[:user_storage]) unless input[:user_storage].nil?
        data['RootStorage'] = RootStorage.build(input[:root_storage]) unless input[:root_storage].nil?
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for RootStorage
    class RootStorage
      def self.build(input)
        data = {}
        data['Capacity'] = input[:capacity] unless input[:capacity].nil?
        data
      end
    end

    # Structure Builder for UserStorage
    class UserStorage
      def self.build(input)
        data = {}
        data['Capacity'] = input[:capacity] unless input[:capacity].nil?
        data
      end
    end

    # Structure Builder for ComputeType
    class ComputeType
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data
      end
    end

    # Operation Builder for CreateWorkspaces
    class CreateWorkspaces
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkspacesService.CreateWorkspaces'
        data = {}
        data['Workspaces'] = WorkspaceRequestList.build(input[:workspaces]) unless input[:workspaces].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for WorkspaceRequestList
    class WorkspaceRequestList
      def self.build(input)
        data = []
        input.each do |element|
          data << WorkspaceRequest.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for WorkspaceRequest
    class WorkspaceRequest
      def self.build(input)
        data = {}
        data['DirectoryId'] = input[:directory_id] unless input[:directory_id].nil?
        data['UserName'] = input[:user_name] unless input[:user_name].nil?
        data['BundleId'] = input[:bundle_id] unless input[:bundle_id].nil?
        data['VolumeEncryptionKey'] = input[:volume_encryption_key] unless input[:volume_encryption_key].nil?
        data['UserVolumeEncryptionEnabled'] = input[:user_volume_encryption_enabled] unless input[:user_volume_encryption_enabled].nil?
        data['RootVolumeEncryptionEnabled'] = input[:root_volume_encryption_enabled] unless input[:root_volume_encryption_enabled].nil?
        data['WorkspaceProperties'] = WorkspaceProperties.build(input[:workspace_properties]) unless input[:workspace_properties].nil?
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        data
      end
    end

    # Structure Builder for WorkspaceProperties
    class WorkspaceProperties
      def self.build(input)
        data = {}
        data['RunningMode'] = input[:running_mode] unless input[:running_mode].nil?
        data['RunningModeAutoStopTimeoutInMinutes'] = input[:running_mode_auto_stop_timeout_in_minutes] unless input[:running_mode_auto_stop_timeout_in_minutes].nil?
        data['RootVolumeSizeGib'] = input[:root_volume_size_gib] unless input[:root_volume_size_gib].nil?
        data['UserVolumeSizeGib'] = input[:user_volume_size_gib] unless input[:user_volume_size_gib].nil?
        data['ComputeTypeName'] = input[:compute_type_name] unless input[:compute_type_name].nil?
        data
      end
    end

    # Operation Builder for DeleteClientBranding
    class DeleteClientBranding
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkspacesService.DeleteClientBranding'
        data = {}
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        data['Platforms'] = ClientDeviceTypeList.build(input[:platforms]) unless input[:platforms].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ClientDeviceTypeList
    class ClientDeviceTypeList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DeleteConnectClientAddIn
    class DeleteConnectClientAddIn
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkspacesService.DeleteConnectClientAddIn'
        data = {}
        data['AddInId'] = input[:add_in_id] unless input[:add_in_id].nil?
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteConnectionAlias
    class DeleteConnectionAlias
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkspacesService.DeleteConnectionAlias'
        data = {}
        data['AliasId'] = input[:alias_id] unless input[:alias_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteIpGroup
    class DeleteIpGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkspacesService.DeleteIpGroup'
        data = {}
        data['GroupId'] = input[:group_id] unless input[:group_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteTags
    class DeleteTags
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkspacesService.DeleteTags'
        data = {}
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        data['TagKeys'] = TagKeyList.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagKeyList
    class TagKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DeleteWorkspaceBundle
    class DeleteWorkspaceBundle
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkspacesService.DeleteWorkspaceBundle'
        data = {}
        data['BundleId'] = input[:bundle_id] unless input[:bundle_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteWorkspaceImage
    class DeleteWorkspaceImage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkspacesService.DeleteWorkspaceImage'
        data = {}
        data['ImageId'] = input[:image_id] unless input[:image_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeregisterWorkspaceDirectory
    class DeregisterWorkspaceDirectory
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkspacesService.DeregisterWorkspaceDirectory'
        data = {}
        data['DirectoryId'] = input[:directory_id] unless input[:directory_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeAccount
    class DescribeAccount
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkspacesService.DescribeAccount'
        data = {}
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeAccountModifications
    class DescribeAccountModifications
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkspacesService.DescribeAccountModifications'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeClientBranding
    class DescribeClientBranding
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkspacesService.DescribeClientBranding'
        data = {}
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeClientProperties
    class DescribeClientProperties
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkspacesService.DescribeClientProperties'
        data = {}
        data['ResourceIds'] = ResourceIdList.build(input[:resource_ids]) unless input[:resource_ids].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ResourceIdList
    class ResourceIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeConnectClientAddIns
    class DescribeConnectClientAddIns
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkspacesService.DescribeConnectClientAddIns'
        data = {}
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeConnectionAliasPermissions
    class DescribeConnectionAliasPermissions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkspacesService.DescribeConnectionAliasPermissions'
        data = {}
        data['AliasId'] = input[:alias_id] unless input[:alias_id].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeConnectionAliases
    class DescribeConnectionAliases
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkspacesService.DescribeConnectionAliases'
        data = {}
        data['AliasIds'] = ConnectionAliasIdList.build(input[:alias_ids]) unless input[:alias_ids].nil?
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ConnectionAliasIdList
    class ConnectionAliasIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeIpGroups
    class DescribeIpGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkspacesService.DescribeIpGroups'
        data = {}
        data['GroupIds'] = IpGroupIdList.build(input[:group_ids]) unless input[:group_ids].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeTags
    class DescribeTags
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkspacesService.DescribeTags'
        data = {}
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeWorkspaceBundles
    class DescribeWorkspaceBundles
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkspacesService.DescribeWorkspaceBundles'
        data = {}
        data['BundleIds'] = BundleIdList.build(input[:bundle_ids]) unless input[:bundle_ids].nil?
        data['Owner'] = input[:owner] unless input[:owner].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for BundleIdList
    class BundleIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeWorkspaceDirectories
    class DescribeWorkspaceDirectories
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkspacesService.DescribeWorkspaceDirectories'
        data = {}
        data['DirectoryIds'] = DirectoryIdList.build(input[:directory_ids]) unless input[:directory_ids].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for DirectoryIdList
    class DirectoryIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeWorkspaceImagePermissions
    class DescribeWorkspaceImagePermissions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkspacesService.DescribeWorkspaceImagePermissions'
        data = {}
        data['ImageId'] = input[:image_id] unless input[:image_id].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeWorkspaceImages
    class DescribeWorkspaceImages
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkspacesService.DescribeWorkspaceImages'
        data = {}
        data['ImageIds'] = WorkspaceImageIdList.build(input[:image_ids]) unless input[:image_ids].nil?
        data['ImageType'] = input[:image_type] unless input[:image_type].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for WorkspaceImageIdList
    class WorkspaceImageIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeWorkspaceSnapshots
    class DescribeWorkspaceSnapshots
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkspacesService.DescribeWorkspaceSnapshots'
        data = {}
        data['WorkspaceId'] = input[:workspace_id] unless input[:workspace_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeWorkspaces
    class DescribeWorkspaces
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkspacesService.DescribeWorkspaces'
        data = {}
        data['WorkspaceIds'] = WorkspaceIdList.build(input[:workspace_ids]) unless input[:workspace_ids].nil?
        data['DirectoryId'] = input[:directory_id] unless input[:directory_id].nil?
        data['UserName'] = input[:user_name] unless input[:user_name].nil?
        data['BundleId'] = input[:bundle_id] unless input[:bundle_id].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for WorkspaceIdList
    class WorkspaceIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeWorkspacesConnectionStatus
    class DescribeWorkspacesConnectionStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkspacesService.DescribeWorkspacesConnectionStatus'
        data = {}
        data['WorkspaceIds'] = WorkspaceIdList.build(input[:workspace_ids]) unless input[:workspace_ids].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisassociateConnectionAlias
    class DisassociateConnectionAlias
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkspacesService.DisassociateConnectionAlias'
        data = {}
        data['AliasId'] = input[:alias_id] unless input[:alias_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisassociateIpGroups
    class DisassociateIpGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkspacesService.DisassociateIpGroups'
        data = {}
        data['DirectoryId'] = input[:directory_id] unless input[:directory_id].nil?
        data['GroupIds'] = IpGroupIdList.build(input[:group_ids]) unless input[:group_ids].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ImportClientBranding
    class ImportClientBranding
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkspacesService.ImportClientBranding'
        data = {}
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        data['DeviceTypeWindows'] = DefaultImportClientBrandingAttributes.build(input[:device_type_windows]) unless input[:device_type_windows].nil?
        data['DeviceTypeOsx'] = DefaultImportClientBrandingAttributes.build(input[:device_type_osx]) unless input[:device_type_osx].nil?
        data['DeviceTypeAndroid'] = DefaultImportClientBrandingAttributes.build(input[:device_type_android]) unless input[:device_type_android].nil?
        data['DeviceTypeIos'] = IosImportClientBrandingAttributes.build(input[:device_type_ios]) unless input[:device_type_ios].nil?
        data['DeviceTypeLinux'] = DefaultImportClientBrandingAttributes.build(input[:device_type_linux]) unless input[:device_type_linux].nil?
        data['DeviceTypeWeb'] = DefaultImportClientBrandingAttributes.build(input[:device_type_web]) unless input[:device_type_web].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for DefaultImportClientBrandingAttributes
    class DefaultImportClientBrandingAttributes
      def self.build(input)
        data = {}
        data['Logo'] = ::Base64::encode64(input[:logo]).strip unless input[:logo].nil?
        data['SupportEmail'] = input[:support_email] unless input[:support_email].nil?
        data['SupportLink'] = input[:support_link] unless input[:support_link].nil?
        data['ForgotPasswordLink'] = input[:forgot_password_link] unless input[:forgot_password_link].nil?
        data['LoginMessage'] = LoginMessage.build(input[:login_message]) unless input[:login_message].nil?
        data
      end
    end

    # Map Builder for LoginMessage
    class LoginMessage
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for IosImportClientBrandingAttributes
    class IosImportClientBrandingAttributes
      def self.build(input)
        data = {}
        data['Logo'] = ::Base64::encode64(input[:logo]).strip unless input[:logo].nil?
        data['Logo2x'] = ::Base64::encode64(input[:logo2x]).strip unless input[:logo2x].nil?
        data['Logo3x'] = ::Base64::encode64(input[:logo3x]).strip unless input[:logo3x].nil?
        data['SupportEmail'] = input[:support_email] unless input[:support_email].nil?
        data['SupportLink'] = input[:support_link] unless input[:support_link].nil?
        data['ForgotPasswordLink'] = input[:forgot_password_link] unless input[:forgot_password_link].nil?
        data['LoginMessage'] = LoginMessage.build(input[:login_message]) unless input[:login_message].nil?
        data
      end
    end

    # Operation Builder for ImportWorkspaceImage
    class ImportWorkspaceImage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkspacesService.ImportWorkspaceImage'
        data = {}
        data['Ec2ImageId'] = input[:ec2_image_id] unless input[:ec2_image_id].nil?
        data['IngestionProcess'] = input[:ingestion_process] unless input[:ingestion_process].nil?
        data['ImageName'] = input[:image_name] unless input[:image_name].nil?
        data['ImageDescription'] = input[:image_description] unless input[:image_description].nil?
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        data['Applications'] = ApplicationList.build(input[:applications]) unless input[:applications].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ApplicationList
    class ApplicationList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListAvailableManagementCidrRanges
    class ListAvailableManagementCidrRanges
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkspacesService.ListAvailableManagementCidrRanges'
        data = {}
        data['ManagementCidrRangeConstraint'] = input[:management_cidr_range_constraint] unless input[:management_cidr_range_constraint].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for MigrateWorkspace
    class MigrateWorkspace
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkspacesService.MigrateWorkspace'
        data = {}
        data['SourceWorkspaceId'] = input[:source_workspace_id] unless input[:source_workspace_id].nil?
        data['BundleId'] = input[:bundle_id] unless input[:bundle_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ModifyAccount
    class ModifyAccount
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkspacesService.ModifyAccount'
        data = {}
        data['DedicatedTenancySupport'] = input[:dedicated_tenancy_support] unless input[:dedicated_tenancy_support].nil?
        data['DedicatedTenancyManagementCidrRange'] = input[:dedicated_tenancy_management_cidr_range] unless input[:dedicated_tenancy_management_cidr_range].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ModifyClientProperties
    class ModifyClientProperties
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkspacesService.ModifyClientProperties'
        data = {}
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        data['ClientProperties'] = ClientProperties.build(input[:client_properties]) unless input[:client_properties].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ClientProperties
    class ClientProperties
      def self.build(input)
        data = {}
        data['ReconnectEnabled'] = input[:reconnect_enabled] unless input[:reconnect_enabled].nil?
        data
      end
    end

    # Operation Builder for ModifySelfservicePermissions
    class ModifySelfservicePermissions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkspacesService.ModifySelfservicePermissions'
        data = {}
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        data['SelfservicePermissions'] = SelfservicePermissions.build(input[:selfservice_permissions]) unless input[:selfservice_permissions].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for SelfservicePermissions
    class SelfservicePermissions
      def self.build(input)
        data = {}
        data['RestartWorkspace'] = input[:restart_workspace] unless input[:restart_workspace].nil?
        data['IncreaseVolumeSize'] = input[:increase_volume_size] unless input[:increase_volume_size].nil?
        data['ChangeComputeType'] = input[:change_compute_type] unless input[:change_compute_type].nil?
        data['SwitchRunningMode'] = input[:switch_running_mode] unless input[:switch_running_mode].nil?
        data['RebuildWorkspace'] = input[:rebuild_workspace] unless input[:rebuild_workspace].nil?
        data
      end
    end

    # Operation Builder for ModifyWorkspaceAccessProperties
    class ModifyWorkspaceAccessProperties
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkspacesService.ModifyWorkspaceAccessProperties'
        data = {}
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        data['WorkspaceAccessProperties'] = WorkspaceAccessProperties.build(input[:workspace_access_properties]) unless input[:workspace_access_properties].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for WorkspaceAccessProperties
    class WorkspaceAccessProperties
      def self.build(input)
        data = {}
        data['DeviceTypeWindows'] = input[:device_type_windows] unless input[:device_type_windows].nil?
        data['DeviceTypeOsx'] = input[:device_type_osx] unless input[:device_type_osx].nil?
        data['DeviceTypeWeb'] = input[:device_type_web] unless input[:device_type_web].nil?
        data['DeviceTypeIos'] = input[:device_type_ios] unless input[:device_type_ios].nil?
        data['DeviceTypeAndroid'] = input[:device_type_android] unless input[:device_type_android].nil?
        data['DeviceTypeChromeOs'] = input[:device_type_chrome_os] unless input[:device_type_chrome_os].nil?
        data['DeviceTypeZeroClient'] = input[:device_type_zero_client] unless input[:device_type_zero_client].nil?
        data['DeviceTypeLinux'] = input[:device_type_linux] unless input[:device_type_linux].nil?
        data
      end
    end

    # Operation Builder for ModifyWorkspaceCreationProperties
    class ModifyWorkspaceCreationProperties
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkspacesService.ModifyWorkspaceCreationProperties'
        data = {}
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        data['WorkspaceCreationProperties'] = WorkspaceCreationProperties.build(input[:workspace_creation_properties]) unless input[:workspace_creation_properties].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for WorkspaceCreationProperties
    class WorkspaceCreationProperties
      def self.build(input)
        data = {}
        data['EnableWorkDocs'] = input[:enable_work_docs] unless input[:enable_work_docs].nil?
        data['EnableInternetAccess'] = input[:enable_internet_access] unless input[:enable_internet_access].nil?
        data['DefaultOu'] = input[:default_ou] unless input[:default_ou].nil?
        data['CustomSecurityGroupId'] = input[:custom_security_group_id] unless input[:custom_security_group_id].nil?
        data['UserEnabledAsLocalAdministrator'] = input[:user_enabled_as_local_administrator] unless input[:user_enabled_as_local_administrator].nil?
        data['EnableMaintenanceMode'] = input[:enable_maintenance_mode] unless input[:enable_maintenance_mode].nil?
        data
      end
    end

    # Operation Builder for ModifyWorkspaceProperties
    class ModifyWorkspaceProperties
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkspacesService.ModifyWorkspaceProperties'
        data = {}
        data['WorkspaceId'] = input[:workspace_id] unless input[:workspace_id].nil?
        data['WorkspaceProperties'] = WorkspaceProperties.build(input[:workspace_properties]) unless input[:workspace_properties].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ModifyWorkspaceState
    class ModifyWorkspaceState
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkspacesService.ModifyWorkspaceState'
        data = {}
        data['WorkspaceId'] = input[:workspace_id] unless input[:workspace_id].nil?
        data['WorkspaceState'] = input[:workspace_state] unless input[:workspace_state].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RebootWorkspaces
    class RebootWorkspaces
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkspacesService.RebootWorkspaces'
        data = {}
        data['RebootWorkspaceRequests'] = RebootWorkspaceRequests.build(input[:reboot_workspace_requests]) unless input[:reboot_workspace_requests].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for RebootWorkspaceRequests
    class RebootWorkspaceRequests
      def self.build(input)
        data = []
        input.each do |element|
          data << RebootRequest.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for RebootRequest
    class RebootRequest
      def self.build(input)
        data = {}
        data['WorkspaceId'] = input[:workspace_id] unless input[:workspace_id].nil?
        data
      end
    end

    # Operation Builder for RebuildWorkspaces
    class RebuildWorkspaces
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkspacesService.RebuildWorkspaces'
        data = {}
        data['RebuildWorkspaceRequests'] = RebuildWorkspaceRequests.build(input[:rebuild_workspace_requests]) unless input[:rebuild_workspace_requests].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for RebuildWorkspaceRequests
    class RebuildWorkspaceRequests
      def self.build(input)
        data = []
        input.each do |element|
          data << RebuildRequest.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for RebuildRequest
    class RebuildRequest
      def self.build(input)
        data = {}
        data['WorkspaceId'] = input[:workspace_id] unless input[:workspace_id].nil?
        data
      end
    end

    # Operation Builder for RegisterWorkspaceDirectory
    class RegisterWorkspaceDirectory
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkspacesService.RegisterWorkspaceDirectory'
        data = {}
        data['DirectoryId'] = input[:directory_id] unless input[:directory_id].nil?
        data['SubnetIds'] = SubnetIds.build(input[:subnet_ids]) unless input[:subnet_ids].nil?
        data['EnableWorkDocs'] = input[:enable_work_docs] unless input[:enable_work_docs].nil?
        data['EnableSelfService'] = input[:enable_self_service] unless input[:enable_self_service].nil?
        data['Tenancy'] = input[:tenancy] unless input[:tenancy].nil?
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for SubnetIds
    class SubnetIds
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for RestoreWorkspace
    class RestoreWorkspace
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkspacesService.RestoreWorkspace'
        data = {}
        data['WorkspaceId'] = input[:workspace_id] unless input[:workspace_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RevokeIpRules
    class RevokeIpRules
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkspacesService.RevokeIpRules'
        data = {}
        data['GroupId'] = input[:group_id] unless input[:group_id].nil?
        data['UserRules'] = IpRevokedRuleList.build(input[:user_rules]) unless input[:user_rules].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for IpRevokedRuleList
    class IpRevokedRuleList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for StartWorkspaces
    class StartWorkspaces
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkspacesService.StartWorkspaces'
        data = {}
        data['StartWorkspaceRequests'] = StartWorkspaceRequests.build(input[:start_workspace_requests]) unless input[:start_workspace_requests].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for StartWorkspaceRequests
    class StartWorkspaceRequests
      def self.build(input)
        data = []
        input.each do |element|
          data << StartRequest.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for StartRequest
    class StartRequest
      def self.build(input)
        data = {}
        data['WorkspaceId'] = input[:workspace_id] unless input[:workspace_id].nil?
        data
      end
    end

    # Operation Builder for StopWorkspaces
    class StopWorkspaces
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkspacesService.StopWorkspaces'
        data = {}
        data['StopWorkspaceRequests'] = StopWorkspaceRequests.build(input[:stop_workspace_requests]) unless input[:stop_workspace_requests].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for StopWorkspaceRequests
    class StopWorkspaceRequests
      def self.build(input)
        data = []
        input.each do |element|
          data << StopRequest.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for StopRequest
    class StopRequest
      def self.build(input)
        data = {}
        data['WorkspaceId'] = input[:workspace_id] unless input[:workspace_id].nil?
        data
      end
    end

    # Operation Builder for TerminateWorkspaces
    class TerminateWorkspaces
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkspacesService.TerminateWorkspaces'
        data = {}
        data['TerminateWorkspaceRequests'] = TerminateWorkspaceRequests.build(input[:terminate_workspace_requests]) unless input[:terminate_workspace_requests].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TerminateWorkspaceRequests
    class TerminateWorkspaceRequests
      def self.build(input)
        data = []
        input.each do |element|
          data << TerminateRequest.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for TerminateRequest
    class TerminateRequest
      def self.build(input)
        data = {}
        data['WorkspaceId'] = input[:workspace_id] unless input[:workspace_id].nil?
        data
      end
    end

    # Operation Builder for UpdateConnectClientAddIn
    class UpdateConnectClientAddIn
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkspacesService.UpdateConnectClientAddIn'
        data = {}
        data['AddInId'] = input[:add_in_id] unless input[:add_in_id].nil?
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['URL'] = input[:url] unless input[:url].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateConnectionAliasPermission
    class UpdateConnectionAliasPermission
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkspacesService.UpdateConnectionAliasPermission'
        data = {}
        data['AliasId'] = input[:alias_id] unless input[:alias_id].nil?
        data['ConnectionAliasPermission'] = ConnectionAliasPermission.build(input[:connection_alias_permission]) unless input[:connection_alias_permission].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ConnectionAliasPermission
    class ConnectionAliasPermission
      def self.build(input)
        data = {}
        data['SharedAccountId'] = input[:shared_account_id] unless input[:shared_account_id].nil?
        data['AllowAssociation'] = input[:allow_association] unless input[:allow_association].nil?
        data
      end
    end

    # Operation Builder for UpdateRulesOfIpGroup
    class UpdateRulesOfIpGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkspacesService.UpdateRulesOfIpGroup'
        data = {}
        data['GroupId'] = input[:group_id] unless input[:group_id].nil?
        data['UserRules'] = IpRuleList.build(input[:user_rules]) unless input[:user_rules].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateWorkspaceBundle
    class UpdateWorkspaceBundle
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkspacesService.UpdateWorkspaceBundle'
        data = {}
        data['BundleId'] = input[:bundle_id] unless input[:bundle_id].nil?
        data['ImageId'] = input[:image_id] unless input[:image_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateWorkspaceImagePermission
    class UpdateWorkspaceImagePermission
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkspacesService.UpdateWorkspaceImagePermission'
        data = {}
        data['ImageId'] = input[:image_id] unless input[:image_id].nil?
        data['AllowCopyImage'] = input[:allow_copy_image] unless input[:allow_copy_image].nil?
        data['SharedAccountId'] = input[:shared_account_id] unless input[:shared_account_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
