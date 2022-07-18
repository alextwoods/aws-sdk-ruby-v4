# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::WorkSpaces
  module Parsers

    # Operation Parser for AssociateConnectionAlias
    class AssociateConnectionAlias
      def self.parse(http_resp)
        data = Types::AssociateConnectionAliasOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.connection_identifier = map['ConnectionIdentifier']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data.resource_id = map['ResourceId']
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidParameterValuesException
    class InvalidParameterValuesException
      def self.parse(http_resp)
        data = Types::InvalidParameterValuesException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for OperationNotSupportedException
    class OperationNotSupportedException
      def self.parse(http_resp)
        data = Types::OperationNotSupportedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidResourceStateException
    class InvalidResourceStateException
      def self.parse(http_resp)
        data = Types::InvalidResourceStateException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ResourceAssociatedException
    class ResourceAssociatedException
      def self.parse(http_resp)
        data = Types::ResourceAssociatedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for AssociateIpGroups
    class AssociateIpGroups
      def self.parse(http_resp)
        data = Types::AssociateIpGroupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for ResourceLimitExceededException
    class ResourceLimitExceededException
      def self.parse(http_resp)
        data = Types::ResourceLimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for AuthorizeIpRules
    class AuthorizeIpRules
      def self.parse(http_resp)
        data = Types::AuthorizeIpRulesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for CopyWorkspaceImage
    class CopyWorkspaceImage
      def self.parse(http_resp)
        data = Types::CopyWorkspaceImageOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.image_id = map['ImageId']
        data
      end
    end

    # Error Parser for ResourceUnavailableException
    class ResourceUnavailableException
      def self.parse(http_resp)
        data = Types::ResourceUnavailableException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data.resource_id = map['ResourceId']
        data
      end
    end

    # Error Parser for ResourceAlreadyExistsException
    class ResourceAlreadyExistsException
      def self.parse(http_resp)
        data = Types::ResourceAlreadyExistsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for CreateConnectClientAddIn
    class CreateConnectClientAddIn
      def self.parse(http_resp)
        data = Types::CreateConnectClientAddInOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.add_in_id = map['AddInId']
        data
      end
    end

    # Error Parser for ResourceCreationFailedException
    class ResourceCreationFailedException
      def self.parse(http_resp)
        data = Types::ResourceCreationFailedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for CreateConnectionAlias
    class CreateConnectionAlias
      def self.parse(http_resp)
        data = Types::CreateConnectionAliasOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.alias_id = map['AliasId']
        data
      end
    end

    # Operation Parser for CreateIpGroup
    class CreateIpGroup
      def self.parse(http_resp)
        data = Types::CreateIpGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.group_id = map['GroupId']
        data
      end
    end

    # Operation Parser for CreateTags
    class CreateTags
      def self.parse(http_resp)
        data = Types::CreateTagsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for CreateUpdatedWorkspaceImage
    class CreateUpdatedWorkspaceImage
      def self.parse(http_resp)
        data = Types::CreateUpdatedWorkspaceImageOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.image_id = map['ImageId']
        data
      end
    end

    # Operation Parser for CreateWorkspaceBundle
    class CreateWorkspaceBundle
      def self.parse(http_resp)
        data = Types::CreateWorkspaceBundleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.workspace_bundle = (Parsers::WorkspaceBundle.parse(map['WorkspaceBundle']) unless map['WorkspaceBundle'].nil?)
        data
      end
    end

    class WorkspaceBundle
      def self.parse(map)
        data = Types::WorkspaceBundle.new
        data.bundle_id = map['BundleId']
        data.name = map['Name']
        data.owner = map['Owner']
        data.description = map['Description']
        data.image_id = map['ImageId']
        data.root_storage = (Parsers::RootStorage.parse(map['RootStorage']) unless map['RootStorage'].nil?)
        data.user_storage = (Parsers::UserStorage.parse(map['UserStorage']) unless map['UserStorage'].nil?)
        data.compute_type = (Parsers::ComputeType.parse(map['ComputeType']) unless map['ComputeType'].nil?)
        data.last_updated_time = Time.at(map['LastUpdatedTime'].to_i) if map['LastUpdatedTime']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        return data
      end
    end

    class ComputeType
      def self.parse(map)
        data = Types::ComputeType.new
        data.name = map['Name']
        return data
      end
    end

    class UserStorage
      def self.parse(map)
        data = Types::UserStorage.new
        data.capacity = map['Capacity']
        return data
      end
    end

    class RootStorage
      def self.parse(map)
        data = Types::RootStorage.new
        data.capacity = map['Capacity']
        return data
      end
    end

    # Operation Parser for CreateWorkspaces
    class CreateWorkspaces
      def self.parse(http_resp)
        data = Types::CreateWorkspacesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.failed_requests = (Parsers::FailedCreateWorkspaceRequests.parse(map['FailedRequests']) unless map['FailedRequests'].nil?)
        data.pending_requests = (Parsers::WorkspaceList.parse(map['PendingRequests']) unless map['PendingRequests'].nil?)
        data
      end
    end

    class WorkspaceList
      def self.parse(list)
        list.map do |value|
          Parsers::Workspace.parse(value) unless value.nil?
        end
      end
    end

    class Workspace
      def self.parse(map)
        data = Types::Workspace.new
        data.workspace_id = map['WorkspaceId']
        data.directory_id = map['DirectoryId']
        data.user_name = map['UserName']
        data.ip_address = map['IpAddress']
        data.state = map['State']
        data.bundle_id = map['BundleId']
        data.subnet_id = map['SubnetId']
        data.error_message = map['ErrorMessage']
        data.error_code = map['ErrorCode']
        data.computer_name = map['ComputerName']
        data.volume_encryption_key = map['VolumeEncryptionKey']
        data.user_volume_encryption_enabled = map['UserVolumeEncryptionEnabled']
        data.root_volume_encryption_enabled = map['RootVolumeEncryptionEnabled']
        data.workspace_properties = (Parsers::WorkspaceProperties.parse(map['WorkspaceProperties']) unless map['WorkspaceProperties'].nil?)
        data.modification_states = (Parsers::ModificationStateList.parse(map['ModificationStates']) unless map['ModificationStates'].nil?)
        return data
      end
    end

    class ModificationStateList
      def self.parse(list)
        list.map do |value|
          Parsers::ModificationState.parse(value) unless value.nil?
        end
      end
    end

    class ModificationState
      def self.parse(map)
        data = Types::ModificationState.new
        data.resource = map['Resource']
        data.state = map['State']
        return data
      end
    end

    class WorkspaceProperties
      def self.parse(map)
        data = Types::WorkspaceProperties.new
        data.running_mode = map['RunningMode']
        data.running_mode_auto_stop_timeout_in_minutes = map['RunningModeAutoStopTimeoutInMinutes']
        data.root_volume_size_gib = map['RootVolumeSizeGib']
        data.user_volume_size_gib = map['UserVolumeSizeGib']
        data.compute_type_name = map['ComputeTypeName']
        return data
      end
    end

    class FailedCreateWorkspaceRequests
      def self.parse(list)
        list.map do |value|
          Parsers::FailedCreateWorkspaceRequest.parse(value) unless value.nil?
        end
      end
    end

    class FailedCreateWorkspaceRequest
      def self.parse(map)
        data = Types::FailedCreateWorkspaceRequest.new
        data.workspace_request = (Parsers::WorkspaceRequest.parse(map['WorkspaceRequest']) unless map['WorkspaceRequest'].nil?)
        data.error_code = map['ErrorCode']
        data.error_message = map['ErrorMessage']
        return data
      end
    end

    class WorkspaceRequest
      def self.parse(map)
        data = Types::WorkspaceRequest.new
        data.directory_id = map['DirectoryId']
        data.user_name = map['UserName']
        data.bundle_id = map['BundleId']
        data.volume_encryption_key = map['VolumeEncryptionKey']
        data.user_volume_encryption_enabled = map['UserVolumeEncryptionEnabled']
        data.root_volume_encryption_enabled = map['RootVolumeEncryptionEnabled']
        data.workspace_properties = (Parsers::WorkspaceProperties.parse(map['WorkspaceProperties']) unless map['WorkspaceProperties'].nil?)
        data.tags = (Parsers::TagList.parse(map['Tags']) unless map['Tags'].nil?)
        return data
      end
    end

    class TagList
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

    # Operation Parser for DeleteClientBranding
    class DeleteClientBranding
      def self.parse(http_resp)
        data = Types::DeleteClientBrandingOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteConnectClientAddIn
    class DeleteConnectClientAddIn
      def self.parse(http_resp)
        data = Types::DeleteConnectClientAddInOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteConnectionAlias
    class DeleteConnectionAlias
      def self.parse(http_resp)
        data = Types::DeleteConnectionAliasOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteIpGroup
    class DeleteIpGroup
      def self.parse(http_resp)
        data = Types::DeleteIpGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteTags
    class DeleteTags
      def self.parse(http_resp)
        data = Types::DeleteTagsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteWorkspaceBundle
    class DeleteWorkspaceBundle
      def self.parse(http_resp)
        data = Types::DeleteWorkspaceBundleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteWorkspaceImage
    class DeleteWorkspaceImage
      def self.parse(http_resp)
        data = Types::DeleteWorkspaceImageOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeregisterWorkspaceDirectory
    class DeregisterWorkspaceDirectory
      def self.parse(http_resp)
        data = Types::DeregisterWorkspaceDirectoryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DescribeAccount
    class DescribeAccount
      def self.parse(http_resp)
        data = Types::DescribeAccountOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.dedicated_tenancy_support = map['DedicatedTenancySupport']
        data.dedicated_tenancy_management_cidr_range = map['DedicatedTenancyManagementCidrRange']
        data
      end
    end

    # Operation Parser for DescribeAccountModifications
    class DescribeAccountModifications
      def self.parse(http_resp)
        data = Types::DescribeAccountModificationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.account_modifications = (Parsers::AccountModificationList.parse(map['AccountModifications']) unless map['AccountModifications'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class AccountModificationList
      def self.parse(list)
        list.map do |value|
          Parsers::AccountModification.parse(value) unless value.nil?
        end
      end
    end

    class AccountModification
      def self.parse(map)
        data = Types::AccountModification.new
        data.modification_state = map['ModificationState']
        data.dedicated_tenancy_support = map['DedicatedTenancySupport']
        data.dedicated_tenancy_management_cidr_range = map['DedicatedTenancyManagementCidrRange']
        data.start_time = Time.at(map['StartTime'].to_i) if map['StartTime']
        data.error_code = map['ErrorCode']
        data.error_message = map['ErrorMessage']
        return data
      end
    end

    # Operation Parser for DescribeClientBranding
    class DescribeClientBranding
      def self.parse(http_resp)
        data = Types::DescribeClientBrandingOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.device_type_windows = (Parsers::DefaultClientBrandingAttributes.parse(map['DeviceTypeWindows']) unless map['DeviceTypeWindows'].nil?)
        data.device_type_osx = (Parsers::DefaultClientBrandingAttributes.parse(map['DeviceTypeOsx']) unless map['DeviceTypeOsx'].nil?)
        data.device_type_android = (Parsers::DefaultClientBrandingAttributes.parse(map['DeviceTypeAndroid']) unless map['DeviceTypeAndroid'].nil?)
        data.device_type_ios = (Parsers::IosClientBrandingAttributes.parse(map['DeviceTypeIos']) unless map['DeviceTypeIos'].nil?)
        data.device_type_linux = (Parsers::DefaultClientBrandingAttributes.parse(map['DeviceTypeLinux']) unless map['DeviceTypeLinux'].nil?)
        data.device_type_web = (Parsers::DefaultClientBrandingAttributes.parse(map['DeviceTypeWeb']) unless map['DeviceTypeWeb'].nil?)
        data
      end
    end

    class DefaultClientBrandingAttributes
      def self.parse(map)
        data = Types::DefaultClientBrandingAttributes.new
        data.logo_url = map['LogoUrl']
        data.support_email = map['SupportEmail']
        data.support_link = map['SupportLink']
        data.forgot_password_link = map['ForgotPasswordLink']
        data.login_message = (Parsers::LoginMessage.parse(map['LoginMessage']) unless map['LoginMessage'].nil?)
        return data
      end
    end

    class LoginMessage
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class IosClientBrandingAttributes
      def self.parse(map)
        data = Types::IosClientBrandingAttributes.new
        data.logo_url = map['LogoUrl']
        data.logo2x_url = map['Logo2xUrl']
        data.logo3x_url = map['Logo3xUrl']
        data.support_email = map['SupportEmail']
        data.support_link = map['SupportLink']
        data.forgot_password_link = map['ForgotPasswordLink']
        data.login_message = (Parsers::LoginMessage.parse(map['LoginMessage']) unless map['LoginMessage'].nil?)
        return data
      end
    end

    # Operation Parser for DescribeClientProperties
    class DescribeClientProperties
      def self.parse(http_resp)
        data = Types::DescribeClientPropertiesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.client_properties_list = (Parsers::ClientPropertiesList.parse(map['ClientPropertiesList']) unless map['ClientPropertiesList'].nil?)
        data
      end
    end

    class ClientPropertiesList
      def self.parse(list)
        list.map do |value|
          Parsers::ClientPropertiesResult.parse(value) unless value.nil?
        end
      end
    end

    class ClientPropertiesResult
      def self.parse(map)
        data = Types::ClientPropertiesResult.new
        data.resource_id = map['ResourceId']
        data.client_properties = (Parsers::ClientProperties.parse(map['ClientProperties']) unless map['ClientProperties'].nil?)
        return data
      end
    end

    class ClientProperties
      def self.parse(map)
        data = Types::ClientProperties.new
        data.reconnect_enabled = map['ReconnectEnabled']
        return data
      end
    end

    # Operation Parser for DescribeConnectClientAddIns
    class DescribeConnectClientAddIns
      def self.parse(http_resp)
        data = Types::DescribeConnectClientAddInsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.add_ins = (Parsers::ConnectClientAddInList.parse(map['AddIns']) unless map['AddIns'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ConnectClientAddInList
      def self.parse(list)
        list.map do |value|
          Parsers::ConnectClientAddIn.parse(value) unless value.nil?
        end
      end
    end

    class ConnectClientAddIn
      def self.parse(map)
        data = Types::ConnectClientAddIn.new
        data.add_in_id = map['AddInId']
        data.resource_id = map['ResourceId']
        data.name = map['Name']
        data.url = map['URL']
        return data
      end
    end

    # Operation Parser for DescribeConnectionAliasPermissions
    class DescribeConnectionAliasPermissions
      def self.parse(http_resp)
        data = Types::DescribeConnectionAliasPermissionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.alias_id = map['AliasId']
        data.connection_alias_permissions = (Parsers::ConnectionAliasPermissions.parse(map['ConnectionAliasPermissions']) unless map['ConnectionAliasPermissions'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ConnectionAliasPermissions
      def self.parse(list)
        list.map do |value|
          Parsers::ConnectionAliasPermission.parse(value) unless value.nil?
        end
      end
    end

    class ConnectionAliasPermission
      def self.parse(map)
        data = Types::ConnectionAliasPermission.new
        data.shared_account_id = map['SharedAccountId']
        data.allow_association = map['AllowAssociation']
        return data
      end
    end

    # Operation Parser for DescribeConnectionAliases
    class DescribeConnectionAliases
      def self.parse(http_resp)
        data = Types::DescribeConnectionAliasesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.connection_aliases = (Parsers::ConnectionAliasList.parse(map['ConnectionAliases']) unless map['ConnectionAliases'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ConnectionAliasList
      def self.parse(list)
        list.map do |value|
          Parsers::ConnectionAlias.parse(value) unless value.nil?
        end
      end
    end

    class ConnectionAlias
      def self.parse(map)
        data = Types::ConnectionAlias.new
        data.connection_string = map['ConnectionString']
        data.alias_id = map['AliasId']
        data.state = map['State']
        data.owner_account_id = map['OwnerAccountId']
        data.associations = (Parsers::ConnectionAliasAssociationList.parse(map['Associations']) unless map['Associations'].nil?)
        return data
      end
    end

    class ConnectionAliasAssociationList
      def self.parse(list)
        list.map do |value|
          Parsers::ConnectionAliasAssociation.parse(value) unless value.nil?
        end
      end
    end

    class ConnectionAliasAssociation
      def self.parse(map)
        data = Types::ConnectionAliasAssociation.new
        data.association_status = map['AssociationStatus']
        data.associated_account_id = map['AssociatedAccountId']
        data.resource_id = map['ResourceId']
        data.connection_identifier = map['ConnectionIdentifier']
        return data
      end
    end

    # Operation Parser for DescribeIpGroups
    class DescribeIpGroups
      def self.parse(http_resp)
        data = Types::DescribeIpGroupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.result = (Parsers::WorkspacesIpGroupsList.parse(map['Result']) unless map['Result'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class WorkspacesIpGroupsList
      def self.parse(list)
        list.map do |value|
          Parsers::WorkspacesIpGroup.parse(value) unless value.nil?
        end
      end
    end

    class WorkspacesIpGroup
      def self.parse(map)
        data = Types::WorkspacesIpGroup.new
        data.group_id = map['groupId']
        data.group_name = map['groupName']
        data.group_desc = map['groupDesc']
        data.user_rules = (Parsers::IpRuleList.parse(map['userRules']) unless map['userRules'].nil?)
        return data
      end
    end

    class IpRuleList
      def self.parse(list)
        list.map do |value|
          Parsers::IpRuleItem.parse(value) unless value.nil?
        end
      end
    end

    class IpRuleItem
      def self.parse(map)
        data = Types::IpRuleItem.new
        data.ip_rule = map['ipRule']
        data.rule_desc = map['ruleDesc']
        return data
      end
    end

    # Operation Parser for DescribeTags
    class DescribeTags
      def self.parse(http_resp)
        data = Types::DescribeTagsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tag_list = (Parsers::TagList.parse(map['TagList']) unless map['TagList'].nil?)
        data
      end
    end

    # Operation Parser for DescribeWorkspaceBundles
    class DescribeWorkspaceBundles
      def self.parse(http_resp)
        data = Types::DescribeWorkspaceBundlesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.bundles = (Parsers::BundleList.parse(map['Bundles']) unless map['Bundles'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class BundleList
      def self.parse(list)
        list.map do |value|
          Parsers::WorkspaceBundle.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeWorkspaceDirectories
    class DescribeWorkspaceDirectories
      def self.parse(http_resp)
        data = Types::DescribeWorkspaceDirectoriesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.directories = (Parsers::DirectoryList.parse(map['Directories']) unless map['Directories'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class DirectoryList
      def self.parse(list)
        list.map do |value|
          Parsers::WorkspaceDirectory.parse(value) unless value.nil?
        end
      end
    end

    class WorkspaceDirectory
      def self.parse(map)
        data = Types::WorkspaceDirectory.new
        data.directory_id = map['DirectoryId']
        data.alias = map['Alias']
        data.directory_name = map['DirectoryName']
        data.registration_code = map['RegistrationCode']
        data.subnet_ids = (Parsers::SubnetIds.parse(map['SubnetIds']) unless map['SubnetIds'].nil?)
        data.dns_ip_addresses = (Parsers::DnsIpAddresses.parse(map['DnsIpAddresses']) unless map['DnsIpAddresses'].nil?)
        data.customer_user_name = map['CustomerUserName']
        data.iam_role_id = map['IamRoleId']
        data.directory_type = map['DirectoryType']
        data.workspace_security_group_id = map['WorkspaceSecurityGroupId']
        data.state = map['State']
        data.workspace_creation_properties = (Parsers::DefaultWorkspaceCreationProperties.parse(map['WorkspaceCreationProperties']) unless map['WorkspaceCreationProperties'].nil?)
        data.ip_group_ids = (Parsers::IpGroupIdList.parse(map['ipGroupIds']) unless map['ipGroupIds'].nil?)
        data.workspace_access_properties = (Parsers::WorkspaceAccessProperties.parse(map['WorkspaceAccessProperties']) unless map['WorkspaceAccessProperties'].nil?)
        data.tenancy = map['Tenancy']
        data.selfservice_permissions = (Parsers::SelfservicePermissions.parse(map['SelfservicePermissions']) unless map['SelfservicePermissions'].nil?)
        return data
      end
    end

    class SelfservicePermissions
      def self.parse(map)
        data = Types::SelfservicePermissions.new
        data.restart_workspace = map['RestartWorkspace']
        data.increase_volume_size = map['IncreaseVolumeSize']
        data.change_compute_type = map['ChangeComputeType']
        data.switch_running_mode = map['SwitchRunningMode']
        data.rebuild_workspace = map['RebuildWorkspace']
        return data
      end
    end

    class WorkspaceAccessProperties
      def self.parse(map)
        data = Types::WorkspaceAccessProperties.new
        data.device_type_windows = map['DeviceTypeWindows']
        data.device_type_osx = map['DeviceTypeOsx']
        data.device_type_web = map['DeviceTypeWeb']
        data.device_type_ios = map['DeviceTypeIos']
        data.device_type_android = map['DeviceTypeAndroid']
        data.device_type_chrome_os = map['DeviceTypeChromeOs']
        data.device_type_zero_client = map['DeviceTypeZeroClient']
        data.device_type_linux = map['DeviceTypeLinux']
        return data
      end
    end

    class IpGroupIdList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class DefaultWorkspaceCreationProperties
      def self.parse(map)
        data = Types::DefaultWorkspaceCreationProperties.new
        data.enable_work_docs = map['EnableWorkDocs']
        data.enable_internet_access = map['EnableInternetAccess']
        data.default_ou = map['DefaultOu']
        data.custom_security_group_id = map['CustomSecurityGroupId']
        data.user_enabled_as_local_administrator = map['UserEnabledAsLocalAdministrator']
        data.enable_maintenance_mode = map['EnableMaintenanceMode']
        return data
      end
    end

    class DnsIpAddresses
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class SubnetIds
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeWorkspaceImagePermissions
    class DescribeWorkspaceImagePermissions
      def self.parse(http_resp)
        data = Types::DescribeWorkspaceImagePermissionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.image_id = map['ImageId']
        data.image_permissions = (Parsers::ImagePermissions.parse(map['ImagePermissions']) unless map['ImagePermissions'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ImagePermissions
      def self.parse(list)
        list.map do |value|
          Parsers::ImagePermission.parse(value) unless value.nil?
        end
      end
    end

    class ImagePermission
      def self.parse(map)
        data = Types::ImagePermission.new
        data.shared_account_id = map['SharedAccountId']
        return data
      end
    end

    # Operation Parser for DescribeWorkspaceImages
    class DescribeWorkspaceImages
      def self.parse(http_resp)
        data = Types::DescribeWorkspaceImagesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.images = (Parsers::WorkspaceImageList.parse(map['Images']) unless map['Images'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class WorkspaceImageList
      def self.parse(list)
        list.map do |value|
          Parsers::WorkspaceImage.parse(value) unless value.nil?
        end
      end
    end

    class WorkspaceImage
      def self.parse(map)
        data = Types::WorkspaceImage.new
        data.image_id = map['ImageId']
        data.name = map['Name']
        data.description = map['Description']
        data.operating_system = (Parsers::OperatingSystem.parse(map['OperatingSystem']) unless map['OperatingSystem'].nil?)
        data.state = map['State']
        data.required_tenancy = map['RequiredTenancy']
        data.error_code = map['ErrorCode']
        data.error_message = map['ErrorMessage']
        data.created = Time.at(map['Created'].to_i) if map['Created']
        data.owner_account_id = map['OwnerAccountId']
        data.updates = (Parsers::UpdateResult.parse(map['Updates']) unless map['Updates'].nil?)
        return data
      end
    end

    class UpdateResult
      def self.parse(map)
        data = Types::UpdateResult.new
        data.update_available = map['UpdateAvailable']
        data.description = map['Description']
        return data
      end
    end

    class OperatingSystem
      def self.parse(map)
        data = Types::OperatingSystem.new
        data.type = map['Type']
        return data
      end
    end

    # Operation Parser for DescribeWorkspaceSnapshots
    class DescribeWorkspaceSnapshots
      def self.parse(http_resp)
        data = Types::DescribeWorkspaceSnapshotsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.rebuild_snapshots = (Parsers::SnapshotList.parse(map['RebuildSnapshots']) unless map['RebuildSnapshots'].nil?)
        data.restore_snapshots = (Parsers::SnapshotList.parse(map['RestoreSnapshots']) unless map['RestoreSnapshots'].nil?)
        data
      end
    end

    class SnapshotList
      def self.parse(list)
        list.map do |value|
          Parsers::Snapshot.parse(value) unless value.nil?
        end
      end
    end

    class Snapshot
      def self.parse(map)
        data = Types::Snapshot.new
        data.snapshot_time = Time.at(map['SnapshotTime'].to_i) if map['SnapshotTime']
        return data
      end
    end

    # Operation Parser for DescribeWorkspaces
    class DescribeWorkspaces
      def self.parse(http_resp)
        data = Types::DescribeWorkspacesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.workspaces = (Parsers::WorkspaceList.parse(map['Workspaces']) unless map['Workspaces'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for DescribeWorkspacesConnectionStatus
    class DescribeWorkspacesConnectionStatus
      def self.parse(http_resp)
        data = Types::DescribeWorkspacesConnectionStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.workspaces_connection_status = (Parsers::WorkspaceConnectionStatusList.parse(map['WorkspacesConnectionStatus']) unless map['WorkspacesConnectionStatus'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class WorkspaceConnectionStatusList
      def self.parse(list)
        list.map do |value|
          Parsers::WorkspaceConnectionStatus.parse(value) unless value.nil?
        end
      end
    end

    class WorkspaceConnectionStatus
      def self.parse(map)
        data = Types::WorkspaceConnectionStatus.new
        data.workspace_id = map['WorkspaceId']
        data.connection_state = map['ConnectionState']
        data.connection_state_check_timestamp = Time.at(map['ConnectionStateCheckTimestamp'].to_i) if map['ConnectionStateCheckTimestamp']
        data.last_known_user_connection_timestamp = Time.at(map['LastKnownUserConnectionTimestamp'].to_i) if map['LastKnownUserConnectionTimestamp']
        return data
      end
    end

    # Operation Parser for DisassociateConnectionAlias
    class DisassociateConnectionAlias
      def self.parse(http_resp)
        data = Types::DisassociateConnectionAliasOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DisassociateIpGroups
    class DisassociateIpGroups
      def self.parse(http_resp)
        data = Types::DisassociateIpGroupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for ImportClientBranding
    class ImportClientBranding
      def self.parse(http_resp)
        data = Types::ImportClientBrandingOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.device_type_windows = (Parsers::DefaultClientBrandingAttributes.parse(map['DeviceTypeWindows']) unless map['DeviceTypeWindows'].nil?)
        data.device_type_osx = (Parsers::DefaultClientBrandingAttributes.parse(map['DeviceTypeOsx']) unless map['DeviceTypeOsx'].nil?)
        data.device_type_android = (Parsers::DefaultClientBrandingAttributes.parse(map['DeviceTypeAndroid']) unless map['DeviceTypeAndroid'].nil?)
        data.device_type_ios = (Parsers::IosClientBrandingAttributes.parse(map['DeviceTypeIos']) unless map['DeviceTypeIos'].nil?)
        data.device_type_linux = (Parsers::DefaultClientBrandingAttributes.parse(map['DeviceTypeLinux']) unless map['DeviceTypeLinux'].nil?)
        data.device_type_web = (Parsers::DefaultClientBrandingAttributes.parse(map['DeviceTypeWeb']) unless map['DeviceTypeWeb'].nil?)
        data
      end
    end

    # Operation Parser for ImportWorkspaceImage
    class ImportWorkspaceImage
      def self.parse(http_resp)
        data = Types::ImportWorkspaceImageOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.image_id = map['ImageId']
        data
      end
    end

    # Operation Parser for ListAvailableManagementCidrRanges
    class ListAvailableManagementCidrRanges
      def self.parse(http_resp)
        data = Types::ListAvailableManagementCidrRangesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.management_cidr_ranges = (Parsers::DedicatedTenancyCidrRangeList.parse(map['ManagementCidrRanges']) unless map['ManagementCidrRanges'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class DedicatedTenancyCidrRangeList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for MigrateWorkspace
    class MigrateWorkspace
      def self.parse(http_resp)
        data = Types::MigrateWorkspaceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.source_workspace_id = map['SourceWorkspaceId']
        data.target_workspace_id = map['TargetWorkspaceId']
        data
      end
    end

    # Error Parser for OperationInProgressException
    class OperationInProgressException
      def self.parse(http_resp)
        data = Types::OperationInProgressException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for ModifyAccount
    class ModifyAccount
      def self.parse(http_resp)
        data = Types::ModifyAccountOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for ModifyClientProperties
    class ModifyClientProperties
      def self.parse(http_resp)
        data = Types::ModifyClientPropertiesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for ModifySelfservicePermissions
    class ModifySelfservicePermissions
      def self.parse(http_resp)
        data = Types::ModifySelfservicePermissionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for ModifyWorkspaceAccessProperties
    class ModifyWorkspaceAccessProperties
      def self.parse(http_resp)
        data = Types::ModifyWorkspaceAccessPropertiesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for ModifyWorkspaceCreationProperties
    class ModifyWorkspaceCreationProperties
      def self.parse(http_resp)
        data = Types::ModifyWorkspaceCreationPropertiesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for ModifyWorkspaceProperties
    class ModifyWorkspaceProperties
      def self.parse(http_resp)
        data = Types::ModifyWorkspacePropertiesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for UnsupportedWorkspaceConfigurationException
    class UnsupportedWorkspaceConfigurationException
      def self.parse(http_resp)
        data = Types::UnsupportedWorkspaceConfigurationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for ModifyWorkspaceState
    class ModifyWorkspaceState
      def self.parse(http_resp)
        data = Types::ModifyWorkspaceStateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for RebootWorkspaces
    class RebootWorkspaces
      def self.parse(http_resp)
        data = Types::RebootWorkspacesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.failed_requests = (Parsers::FailedRebootWorkspaceRequests.parse(map['FailedRequests']) unless map['FailedRequests'].nil?)
        data
      end
    end

    class FailedRebootWorkspaceRequests
      def self.parse(list)
        list.map do |value|
          Parsers::FailedWorkspaceChangeRequest.parse(value) unless value.nil?
        end
      end
    end

    class FailedWorkspaceChangeRequest
      def self.parse(map)
        data = Types::FailedWorkspaceChangeRequest.new
        data.workspace_id = map['WorkspaceId']
        data.error_code = map['ErrorCode']
        data.error_message = map['ErrorMessage']
        return data
      end
    end

    # Operation Parser for RebuildWorkspaces
    class RebuildWorkspaces
      def self.parse(http_resp)
        data = Types::RebuildWorkspacesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.failed_requests = (Parsers::FailedRebuildWorkspaceRequests.parse(map['FailedRequests']) unless map['FailedRequests'].nil?)
        data
      end
    end

    class FailedRebuildWorkspaceRequests
      def self.parse(list)
        list.map do |value|
          Parsers::FailedWorkspaceChangeRequest.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for RegisterWorkspaceDirectory
    class RegisterWorkspaceDirectory
      def self.parse(http_resp)
        data = Types::RegisterWorkspaceDirectoryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for UnsupportedNetworkConfigurationException
    class UnsupportedNetworkConfigurationException
      def self.parse(http_resp)
        data = Types::UnsupportedNetworkConfigurationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for WorkspacesDefaultRoleNotFoundException
    class WorkspacesDefaultRoleNotFoundException
      def self.parse(http_resp)
        data = Types::WorkspacesDefaultRoleNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for RestoreWorkspace
    class RestoreWorkspace
      def self.parse(http_resp)
        data = Types::RestoreWorkspaceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for RevokeIpRules
    class RevokeIpRules
      def self.parse(http_resp)
        data = Types::RevokeIpRulesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for StartWorkspaces
    class StartWorkspaces
      def self.parse(http_resp)
        data = Types::StartWorkspacesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.failed_requests = (Parsers::FailedStartWorkspaceRequests.parse(map['FailedRequests']) unless map['FailedRequests'].nil?)
        data
      end
    end

    class FailedStartWorkspaceRequests
      def self.parse(list)
        list.map do |value|
          Parsers::FailedWorkspaceChangeRequest.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for StopWorkspaces
    class StopWorkspaces
      def self.parse(http_resp)
        data = Types::StopWorkspacesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.failed_requests = (Parsers::FailedStopWorkspaceRequests.parse(map['FailedRequests']) unless map['FailedRequests'].nil?)
        data
      end
    end

    class FailedStopWorkspaceRequests
      def self.parse(list)
        list.map do |value|
          Parsers::FailedWorkspaceChangeRequest.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for TerminateWorkspaces
    class TerminateWorkspaces
      def self.parse(http_resp)
        data = Types::TerminateWorkspacesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.failed_requests = (Parsers::FailedTerminateWorkspaceRequests.parse(map['FailedRequests']) unless map['FailedRequests'].nil?)
        data
      end
    end

    class FailedTerminateWorkspaceRequests
      def self.parse(list)
        list.map do |value|
          Parsers::FailedWorkspaceChangeRequest.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for UpdateConnectClientAddIn
    class UpdateConnectClientAddIn
      def self.parse(http_resp)
        data = Types::UpdateConnectClientAddInOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateConnectionAliasPermission
    class UpdateConnectionAliasPermission
      def self.parse(http_resp)
        data = Types::UpdateConnectionAliasPermissionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateRulesOfIpGroup
    class UpdateRulesOfIpGroup
      def self.parse(http_resp)
        data = Types::UpdateRulesOfIpGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateWorkspaceBundle
    class UpdateWorkspaceBundle
      def self.parse(http_resp)
        data = Types::UpdateWorkspaceBundleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateWorkspaceImagePermission
    class UpdateWorkspaceImagePermission
      def self.parse(http_resp)
        data = Types::UpdateWorkspaceImagePermissionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end
  end
end
