# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::WorkSpaces
  module Stubs

    # Operation Stubber for AssociateConnectionAlias
    class AssociateConnectionAlias
      def self.default(visited=[])
        {
          connection_identifier: 'connection_identifier',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ConnectionIdentifier'] = stub[:connection_identifier] unless stub[:connection_identifier].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for AssociateIpGroups
    class AssociateIpGroups
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

    # Operation Stubber for AuthorizeIpRules
    class AuthorizeIpRules
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

    # Operation Stubber for CopyWorkspaceImage
    class CopyWorkspaceImage
      def self.default(visited=[])
        {
          image_id: 'image_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ImageId'] = stub[:image_id] unless stub[:image_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateConnectClientAddIn
    class CreateConnectClientAddIn
      def self.default(visited=[])
        {
          add_in_id: 'add_in_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AddInId'] = stub[:add_in_id] unless stub[:add_in_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateConnectionAlias
    class CreateConnectionAlias
      def self.default(visited=[])
        {
          alias_id: 'alias_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AliasId'] = stub[:alias_id] unless stub[:alias_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateIpGroup
    class CreateIpGroup
      def self.default(visited=[])
        {
          group_id: 'group_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GroupId'] = stub[:group_id] unless stub[:group_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
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
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateUpdatedWorkspaceImage
    class CreateUpdatedWorkspaceImage
      def self.default(visited=[])
        {
          image_id: 'image_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ImageId'] = stub[:image_id] unless stub[:image_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateWorkspaceBundle
    class CreateWorkspaceBundle
      def self.default(visited=[])
        {
          workspace_bundle: WorkspaceBundle.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['WorkspaceBundle'] = WorkspaceBundle.stub(stub[:workspace_bundle]) unless stub[:workspace_bundle].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for WorkspaceBundle
    class WorkspaceBundle
      def self.default(visited=[])
        return nil if visited.include?('WorkspaceBundle')
        visited = visited + ['WorkspaceBundle']
        {
          bundle_id: 'bundle_id',
          name: 'name',
          owner: 'owner',
          description: 'description',
          image_id: 'image_id',
          root_storage: RootStorage.default(visited),
          user_storage: UserStorage.default(visited),
          compute_type: ComputeType.default(visited),
          last_updated_time: Time.now,
          creation_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::WorkspaceBundle.new
        data = {}
        data['BundleId'] = stub[:bundle_id] unless stub[:bundle_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Owner'] = stub[:owner] unless stub[:owner].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['ImageId'] = stub[:image_id] unless stub[:image_id].nil?
        data['RootStorage'] = RootStorage.stub(stub[:root_storage]) unless stub[:root_storage].nil?
        data['UserStorage'] = UserStorage.stub(stub[:user_storage]) unless stub[:user_storage].nil?
        data['ComputeType'] = ComputeType.stub(stub[:compute_type]) unless stub[:compute_type].nil?
        data['LastUpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time]).to_i unless stub[:last_updated_time].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data
      end
    end

    # Structure Stubber for ComputeType
    class ComputeType
      def self.default(visited=[])
        return nil if visited.include?('ComputeType')
        visited = visited + ['ComputeType']
        {
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::ComputeType.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Structure Stubber for UserStorage
    class UserStorage
      def self.default(visited=[])
        return nil if visited.include?('UserStorage')
        visited = visited + ['UserStorage']
        {
          capacity: 'capacity',
        }
      end

      def self.stub(stub)
        stub ||= Types::UserStorage.new
        data = {}
        data['Capacity'] = stub[:capacity] unless stub[:capacity].nil?
        data
      end
    end

    # Structure Stubber for RootStorage
    class RootStorage
      def self.default(visited=[])
        return nil if visited.include?('RootStorage')
        visited = visited + ['RootStorage']
        {
          capacity: 'capacity',
        }
      end

      def self.stub(stub)
        stub ||= Types::RootStorage.new
        data = {}
        data['Capacity'] = stub[:capacity] unless stub[:capacity].nil?
        data
      end
    end

    # Operation Stubber for CreateWorkspaces
    class CreateWorkspaces
      def self.default(visited=[])
        {
          failed_requests: FailedCreateWorkspaceRequests.default(visited),
          pending_requests: WorkspaceList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FailedRequests'] = FailedCreateWorkspaceRequests.stub(stub[:failed_requests]) unless stub[:failed_requests].nil?
        data['PendingRequests'] = WorkspaceList.stub(stub[:pending_requests]) unless stub[:pending_requests].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for WorkspaceList
    class WorkspaceList
      def self.default(visited=[])
        return nil if visited.include?('WorkspaceList')
        visited = visited + ['WorkspaceList']
        [
          Workspace.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Workspace.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Workspace
    class Workspace
      def self.default(visited=[])
        return nil if visited.include?('Workspace')
        visited = visited + ['Workspace']
        {
          workspace_id: 'workspace_id',
          directory_id: 'directory_id',
          user_name: 'user_name',
          ip_address: 'ip_address',
          state: 'state',
          bundle_id: 'bundle_id',
          subnet_id: 'subnet_id',
          error_message: 'error_message',
          error_code: 'error_code',
          computer_name: 'computer_name',
          volume_encryption_key: 'volume_encryption_key',
          user_volume_encryption_enabled: false,
          root_volume_encryption_enabled: false,
          workspace_properties: WorkspaceProperties.default(visited),
          modification_states: ModificationStateList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Workspace.new
        data = {}
        data['WorkspaceId'] = stub[:workspace_id] unless stub[:workspace_id].nil?
        data['DirectoryId'] = stub[:directory_id] unless stub[:directory_id].nil?
        data['UserName'] = stub[:user_name] unless stub[:user_name].nil?
        data['IpAddress'] = stub[:ip_address] unless stub[:ip_address].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['BundleId'] = stub[:bundle_id] unless stub[:bundle_id].nil?
        data['SubnetId'] = stub[:subnet_id] unless stub[:subnet_id].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data['ErrorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['ComputerName'] = stub[:computer_name] unless stub[:computer_name].nil?
        data['VolumeEncryptionKey'] = stub[:volume_encryption_key] unless stub[:volume_encryption_key].nil?
        data['UserVolumeEncryptionEnabled'] = stub[:user_volume_encryption_enabled] unless stub[:user_volume_encryption_enabled].nil?
        data['RootVolumeEncryptionEnabled'] = stub[:root_volume_encryption_enabled] unless stub[:root_volume_encryption_enabled].nil?
        data['WorkspaceProperties'] = WorkspaceProperties.stub(stub[:workspace_properties]) unless stub[:workspace_properties].nil?
        data['ModificationStates'] = ModificationStateList.stub(stub[:modification_states]) unless stub[:modification_states].nil?
        data
      end
    end

    # List Stubber for ModificationStateList
    class ModificationStateList
      def self.default(visited=[])
        return nil if visited.include?('ModificationStateList')
        visited = visited + ['ModificationStateList']
        [
          ModificationState.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ModificationState.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ModificationState
    class ModificationState
      def self.default(visited=[])
        return nil if visited.include?('ModificationState')
        visited = visited + ['ModificationState']
        {
          resource: 'resource',
          state: 'state',
        }
      end

      def self.stub(stub)
        stub ||= Types::ModificationState.new
        data = {}
        data['Resource'] = stub[:resource] unless stub[:resource].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data
      end
    end

    # Structure Stubber for WorkspaceProperties
    class WorkspaceProperties
      def self.default(visited=[])
        return nil if visited.include?('WorkspaceProperties')
        visited = visited + ['WorkspaceProperties']
        {
          running_mode: 'running_mode',
          running_mode_auto_stop_timeout_in_minutes: 1,
          root_volume_size_gib: 1,
          user_volume_size_gib: 1,
          compute_type_name: 'compute_type_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::WorkspaceProperties.new
        data = {}
        data['RunningMode'] = stub[:running_mode] unless stub[:running_mode].nil?
        data['RunningModeAutoStopTimeoutInMinutes'] = stub[:running_mode_auto_stop_timeout_in_minutes] unless stub[:running_mode_auto_stop_timeout_in_minutes].nil?
        data['RootVolumeSizeGib'] = stub[:root_volume_size_gib] unless stub[:root_volume_size_gib].nil?
        data['UserVolumeSizeGib'] = stub[:user_volume_size_gib] unless stub[:user_volume_size_gib].nil?
        data['ComputeTypeName'] = stub[:compute_type_name] unless stub[:compute_type_name].nil?
        data
      end
    end

    # List Stubber for FailedCreateWorkspaceRequests
    class FailedCreateWorkspaceRequests
      def self.default(visited=[])
        return nil if visited.include?('FailedCreateWorkspaceRequests')
        visited = visited + ['FailedCreateWorkspaceRequests']
        [
          FailedCreateWorkspaceRequest.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << FailedCreateWorkspaceRequest.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FailedCreateWorkspaceRequest
    class FailedCreateWorkspaceRequest
      def self.default(visited=[])
        return nil if visited.include?('FailedCreateWorkspaceRequest')
        visited = visited + ['FailedCreateWorkspaceRequest']
        {
          workspace_request: WorkspaceRequest.default(visited),
          error_code: 'error_code',
          error_message: 'error_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::FailedCreateWorkspaceRequest.new
        data = {}
        data['WorkspaceRequest'] = WorkspaceRequest.stub(stub[:workspace_request]) unless stub[:workspace_request].nil?
        data['ErrorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data
      end
    end

    # Structure Stubber for WorkspaceRequest
    class WorkspaceRequest
      def self.default(visited=[])
        return nil if visited.include?('WorkspaceRequest')
        visited = visited + ['WorkspaceRequest']
        {
          directory_id: 'directory_id',
          user_name: 'user_name',
          bundle_id: 'bundle_id',
          volume_encryption_key: 'volume_encryption_key',
          user_volume_encryption_enabled: false,
          root_volume_encryption_enabled: false,
          workspace_properties: WorkspaceProperties.default(visited),
          tags: TagList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::WorkspaceRequest.new
        data = {}
        data['DirectoryId'] = stub[:directory_id] unless stub[:directory_id].nil?
        data['UserName'] = stub[:user_name] unless stub[:user_name].nil?
        data['BundleId'] = stub[:bundle_id] unless stub[:bundle_id].nil?
        data['VolumeEncryptionKey'] = stub[:volume_encryption_key] unless stub[:volume_encryption_key].nil?
        data['UserVolumeEncryptionEnabled'] = stub[:user_volume_encryption_enabled] unless stub[:user_volume_encryption_enabled].nil?
        data['RootVolumeEncryptionEnabled'] = stub[:root_volume_encryption_enabled] unless stub[:root_volume_encryption_enabled].nil?
        data['WorkspaceProperties'] = WorkspaceProperties.stub(stub[:workspace_properties]) unless stub[:workspace_properties].nil?
        data['Tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # List Stubber for TagList
    class TagList
      def self.default(visited=[])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
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

    # Operation Stubber for DeleteClientBranding
    class DeleteClientBranding
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

    # Operation Stubber for DeleteConnectClientAddIn
    class DeleteConnectClientAddIn
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

    # Operation Stubber for DeleteConnectionAlias
    class DeleteConnectionAlias
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

    # Operation Stubber for DeleteIpGroup
    class DeleteIpGroup
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

    # Operation Stubber for DeleteTags
    class DeleteTags
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

    # Operation Stubber for DeleteWorkspaceBundle
    class DeleteWorkspaceBundle
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

    # Operation Stubber for DeleteWorkspaceImage
    class DeleteWorkspaceImage
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

    # Operation Stubber for DeregisterWorkspaceDirectory
    class DeregisterWorkspaceDirectory
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

    # Operation Stubber for DescribeAccount
    class DescribeAccount
      def self.default(visited=[])
        {
          dedicated_tenancy_support: 'dedicated_tenancy_support',
          dedicated_tenancy_management_cidr_range: 'dedicated_tenancy_management_cidr_range',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DedicatedTenancySupport'] = stub[:dedicated_tenancy_support] unless stub[:dedicated_tenancy_support].nil?
        data['DedicatedTenancyManagementCidrRange'] = stub[:dedicated_tenancy_management_cidr_range] unless stub[:dedicated_tenancy_management_cidr_range].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeAccountModifications
    class DescribeAccountModifications
      def self.default(visited=[])
        {
          account_modifications: AccountModificationList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AccountModifications'] = AccountModificationList.stub(stub[:account_modifications]) unless stub[:account_modifications].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for AccountModificationList
    class AccountModificationList
      def self.default(visited=[])
        return nil if visited.include?('AccountModificationList')
        visited = visited + ['AccountModificationList']
        [
          AccountModification.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AccountModification.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AccountModification
    class AccountModification
      def self.default(visited=[])
        return nil if visited.include?('AccountModification')
        visited = visited + ['AccountModification']
        {
          modification_state: 'modification_state',
          dedicated_tenancy_support: 'dedicated_tenancy_support',
          dedicated_tenancy_management_cidr_range: 'dedicated_tenancy_management_cidr_range',
          start_time: Time.now,
          error_code: 'error_code',
          error_message: 'error_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::AccountModification.new
        data = {}
        data['ModificationState'] = stub[:modification_state] unless stub[:modification_state].nil?
        data['DedicatedTenancySupport'] = stub[:dedicated_tenancy_support] unless stub[:dedicated_tenancy_support].nil?
        data['DedicatedTenancyManagementCidrRange'] = stub[:dedicated_tenancy_management_cidr_range] unless stub[:dedicated_tenancy_management_cidr_range].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['ErrorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data
      end
    end

    # Operation Stubber for DescribeClientBranding
    class DescribeClientBranding
      def self.default(visited=[])
        {
          device_type_windows: DefaultClientBrandingAttributes.default(visited),
          device_type_osx: DefaultClientBrandingAttributes.default(visited),
          device_type_android: DefaultClientBrandingAttributes.default(visited),
          device_type_ios: IosClientBrandingAttributes.default(visited),
          device_type_linux: DefaultClientBrandingAttributes.default(visited),
          device_type_web: DefaultClientBrandingAttributes.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DeviceTypeWindows'] = DefaultClientBrandingAttributes.stub(stub[:device_type_windows]) unless stub[:device_type_windows].nil?
        data['DeviceTypeOsx'] = DefaultClientBrandingAttributes.stub(stub[:device_type_osx]) unless stub[:device_type_osx].nil?
        data['DeviceTypeAndroid'] = DefaultClientBrandingAttributes.stub(stub[:device_type_android]) unless stub[:device_type_android].nil?
        data['DeviceTypeIos'] = IosClientBrandingAttributes.stub(stub[:device_type_ios]) unless stub[:device_type_ios].nil?
        data['DeviceTypeLinux'] = DefaultClientBrandingAttributes.stub(stub[:device_type_linux]) unless stub[:device_type_linux].nil?
        data['DeviceTypeWeb'] = DefaultClientBrandingAttributes.stub(stub[:device_type_web]) unless stub[:device_type_web].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for DefaultClientBrandingAttributes
    class DefaultClientBrandingAttributes
      def self.default(visited=[])
        return nil if visited.include?('DefaultClientBrandingAttributes')
        visited = visited + ['DefaultClientBrandingAttributes']
        {
          logo_url: 'logo_url',
          support_email: 'support_email',
          support_link: 'support_link',
          forgot_password_link: 'forgot_password_link',
          login_message: LoginMessage.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DefaultClientBrandingAttributes.new
        data = {}
        data['LogoUrl'] = stub[:logo_url] unless stub[:logo_url].nil?
        data['SupportEmail'] = stub[:support_email] unless stub[:support_email].nil?
        data['SupportLink'] = stub[:support_link] unless stub[:support_link].nil?
        data['ForgotPasswordLink'] = stub[:forgot_password_link] unless stub[:forgot_password_link].nil?
        data['LoginMessage'] = LoginMessage.stub(stub[:login_message]) unless stub[:login_message].nil?
        data
      end
    end

    # Map Stubber for LoginMessage
    class LoginMessage
      def self.default(visited=[])
        return nil if visited.include?('LoginMessage')
        visited = visited + ['LoginMessage']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for IosClientBrandingAttributes
    class IosClientBrandingAttributes
      def self.default(visited=[])
        return nil if visited.include?('IosClientBrandingAttributes')
        visited = visited + ['IosClientBrandingAttributes']
        {
          logo_url: 'logo_url',
          logo2x_url: 'logo2x_url',
          logo3x_url: 'logo3x_url',
          support_email: 'support_email',
          support_link: 'support_link',
          forgot_password_link: 'forgot_password_link',
          login_message: LoginMessage.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::IosClientBrandingAttributes.new
        data = {}
        data['LogoUrl'] = stub[:logo_url] unless stub[:logo_url].nil?
        data['Logo2xUrl'] = stub[:logo2x_url] unless stub[:logo2x_url].nil?
        data['Logo3xUrl'] = stub[:logo3x_url] unless stub[:logo3x_url].nil?
        data['SupportEmail'] = stub[:support_email] unless stub[:support_email].nil?
        data['SupportLink'] = stub[:support_link] unless stub[:support_link].nil?
        data['ForgotPasswordLink'] = stub[:forgot_password_link] unless stub[:forgot_password_link].nil?
        data['LoginMessage'] = LoginMessage.stub(stub[:login_message]) unless stub[:login_message].nil?
        data
      end
    end

    # Operation Stubber for DescribeClientProperties
    class DescribeClientProperties
      def self.default(visited=[])
        {
          client_properties_list: ClientPropertiesList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ClientPropertiesList'] = ClientPropertiesList.stub(stub[:client_properties_list]) unless stub[:client_properties_list].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ClientPropertiesList
    class ClientPropertiesList
      def self.default(visited=[])
        return nil if visited.include?('ClientPropertiesList')
        visited = visited + ['ClientPropertiesList']
        [
          ClientPropertiesResult.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ClientPropertiesResult.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ClientPropertiesResult
    class ClientPropertiesResult
      def self.default(visited=[])
        return nil if visited.include?('ClientPropertiesResult')
        visited = visited + ['ClientPropertiesResult']
        {
          resource_id: 'resource_id',
          client_properties: ClientProperties.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ClientPropertiesResult.new
        data = {}
        data['ResourceId'] = stub[:resource_id] unless stub[:resource_id].nil?
        data['ClientProperties'] = ClientProperties.stub(stub[:client_properties]) unless stub[:client_properties].nil?
        data
      end
    end

    # Structure Stubber for ClientProperties
    class ClientProperties
      def self.default(visited=[])
        return nil if visited.include?('ClientProperties')
        visited = visited + ['ClientProperties']
        {
          reconnect_enabled: 'reconnect_enabled',
        }
      end

      def self.stub(stub)
        stub ||= Types::ClientProperties.new
        data = {}
        data['ReconnectEnabled'] = stub[:reconnect_enabled] unless stub[:reconnect_enabled].nil?
        data
      end
    end

    # Operation Stubber for DescribeConnectClientAddIns
    class DescribeConnectClientAddIns
      def self.default(visited=[])
        {
          add_ins: ConnectClientAddInList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AddIns'] = ConnectClientAddInList.stub(stub[:add_ins]) unless stub[:add_ins].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ConnectClientAddInList
    class ConnectClientAddInList
      def self.default(visited=[])
        return nil if visited.include?('ConnectClientAddInList')
        visited = visited + ['ConnectClientAddInList']
        [
          ConnectClientAddIn.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ConnectClientAddIn.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ConnectClientAddIn
    class ConnectClientAddIn
      def self.default(visited=[])
        return nil if visited.include?('ConnectClientAddIn')
        visited = visited + ['ConnectClientAddIn']
        {
          add_in_id: 'add_in_id',
          resource_id: 'resource_id',
          name: 'name',
          url: 'url',
        }
      end

      def self.stub(stub)
        stub ||= Types::ConnectClientAddIn.new
        data = {}
        data['AddInId'] = stub[:add_in_id] unless stub[:add_in_id].nil?
        data['ResourceId'] = stub[:resource_id] unless stub[:resource_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['URL'] = stub[:url] unless stub[:url].nil?
        data
      end
    end

    # Operation Stubber for DescribeConnectionAliasPermissions
    class DescribeConnectionAliasPermissions
      def self.default(visited=[])
        {
          alias_id: 'alias_id',
          connection_alias_permissions: ConnectionAliasPermissions.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AliasId'] = stub[:alias_id] unless stub[:alias_id].nil?
        data['ConnectionAliasPermissions'] = ConnectionAliasPermissions.stub(stub[:connection_alias_permissions]) unless stub[:connection_alias_permissions].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ConnectionAliasPermissions
    class ConnectionAliasPermissions
      def self.default(visited=[])
        return nil if visited.include?('ConnectionAliasPermissions')
        visited = visited + ['ConnectionAliasPermissions']
        [
          ConnectionAliasPermission.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ConnectionAliasPermission.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ConnectionAliasPermission
    class ConnectionAliasPermission
      def self.default(visited=[])
        return nil if visited.include?('ConnectionAliasPermission')
        visited = visited + ['ConnectionAliasPermission']
        {
          shared_account_id: 'shared_account_id',
          allow_association: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::ConnectionAliasPermission.new
        data = {}
        data['SharedAccountId'] = stub[:shared_account_id] unless stub[:shared_account_id].nil?
        data['AllowAssociation'] = stub[:allow_association] unless stub[:allow_association].nil?
        data
      end
    end

    # Operation Stubber for DescribeConnectionAliases
    class DescribeConnectionAliases
      def self.default(visited=[])
        {
          connection_aliases: ConnectionAliasList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ConnectionAliases'] = ConnectionAliasList.stub(stub[:connection_aliases]) unless stub[:connection_aliases].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ConnectionAliasList
    class ConnectionAliasList
      def self.default(visited=[])
        return nil if visited.include?('ConnectionAliasList')
        visited = visited + ['ConnectionAliasList']
        [
          ConnectionAlias.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ConnectionAlias.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ConnectionAlias
    class ConnectionAlias
      def self.default(visited=[])
        return nil if visited.include?('ConnectionAlias')
        visited = visited + ['ConnectionAlias']
        {
          connection_string: 'connection_string',
          alias_id: 'alias_id',
          state: 'state',
          owner_account_id: 'owner_account_id',
          associations: ConnectionAliasAssociationList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ConnectionAlias.new
        data = {}
        data['ConnectionString'] = stub[:connection_string] unless stub[:connection_string].nil?
        data['AliasId'] = stub[:alias_id] unless stub[:alias_id].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['OwnerAccountId'] = stub[:owner_account_id] unless stub[:owner_account_id].nil?
        data['Associations'] = ConnectionAliasAssociationList.stub(stub[:associations]) unless stub[:associations].nil?
        data
      end
    end

    # List Stubber for ConnectionAliasAssociationList
    class ConnectionAliasAssociationList
      def self.default(visited=[])
        return nil if visited.include?('ConnectionAliasAssociationList')
        visited = visited + ['ConnectionAliasAssociationList']
        [
          ConnectionAliasAssociation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ConnectionAliasAssociation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ConnectionAliasAssociation
    class ConnectionAliasAssociation
      def self.default(visited=[])
        return nil if visited.include?('ConnectionAliasAssociation')
        visited = visited + ['ConnectionAliasAssociation']
        {
          association_status: 'association_status',
          associated_account_id: 'associated_account_id',
          resource_id: 'resource_id',
          connection_identifier: 'connection_identifier',
        }
      end

      def self.stub(stub)
        stub ||= Types::ConnectionAliasAssociation.new
        data = {}
        data['AssociationStatus'] = stub[:association_status] unless stub[:association_status].nil?
        data['AssociatedAccountId'] = stub[:associated_account_id] unless stub[:associated_account_id].nil?
        data['ResourceId'] = stub[:resource_id] unless stub[:resource_id].nil?
        data['ConnectionIdentifier'] = stub[:connection_identifier] unless stub[:connection_identifier].nil?
        data
      end
    end

    # Operation Stubber for DescribeIpGroups
    class DescribeIpGroups
      def self.default(visited=[])
        {
          result: WorkspacesIpGroupsList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Result'] = WorkspacesIpGroupsList.stub(stub[:result]) unless stub[:result].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for WorkspacesIpGroupsList
    class WorkspacesIpGroupsList
      def self.default(visited=[])
        return nil if visited.include?('WorkspacesIpGroupsList')
        visited = visited + ['WorkspacesIpGroupsList']
        [
          WorkspacesIpGroup.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << WorkspacesIpGroup.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for WorkspacesIpGroup
    class WorkspacesIpGroup
      def self.default(visited=[])
        return nil if visited.include?('WorkspacesIpGroup')
        visited = visited + ['WorkspacesIpGroup']
        {
          group_id: 'group_id',
          group_name: 'group_name',
          group_desc: 'group_desc',
          user_rules: IpRuleList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::WorkspacesIpGroup.new
        data = {}
        data['groupId'] = stub[:group_id] unless stub[:group_id].nil?
        data['groupName'] = stub[:group_name] unless stub[:group_name].nil?
        data['groupDesc'] = stub[:group_desc] unless stub[:group_desc].nil?
        data['userRules'] = IpRuleList.stub(stub[:user_rules]) unless stub[:user_rules].nil?
        data
      end
    end

    # List Stubber for IpRuleList
    class IpRuleList
      def self.default(visited=[])
        return nil if visited.include?('IpRuleList')
        visited = visited + ['IpRuleList']
        [
          IpRuleItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << IpRuleItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for IpRuleItem
    class IpRuleItem
      def self.default(visited=[])
        return nil if visited.include?('IpRuleItem')
        visited = visited + ['IpRuleItem']
        {
          ip_rule: 'ip_rule',
          rule_desc: 'rule_desc',
        }
      end

      def self.stub(stub)
        stub ||= Types::IpRuleItem.new
        data = {}
        data['ipRule'] = stub[:ip_rule] unless stub[:ip_rule].nil?
        data['ruleDesc'] = stub[:rule_desc] unless stub[:rule_desc].nil?
        data
      end
    end

    # Operation Stubber for DescribeTags
    class DescribeTags
      def self.default(visited=[])
        {
          tag_list: TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TagList'] = TagList.stub(stub[:tag_list]) unless stub[:tag_list].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeWorkspaceBundles
    class DescribeWorkspaceBundles
      def self.default(visited=[])
        {
          bundles: BundleList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Bundles'] = BundleList.stub(stub[:bundles]) unless stub[:bundles].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for BundleList
    class BundleList
      def self.default(visited=[])
        return nil if visited.include?('BundleList')
        visited = visited + ['BundleList']
        [
          WorkspaceBundle.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << WorkspaceBundle.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeWorkspaceDirectories
    class DescribeWorkspaceDirectories
      def self.default(visited=[])
        {
          directories: DirectoryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Directories'] = DirectoryList.stub(stub[:directories]) unless stub[:directories].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DirectoryList
    class DirectoryList
      def self.default(visited=[])
        return nil if visited.include?('DirectoryList')
        visited = visited + ['DirectoryList']
        [
          WorkspaceDirectory.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << WorkspaceDirectory.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for WorkspaceDirectory
    class WorkspaceDirectory
      def self.default(visited=[])
        return nil if visited.include?('WorkspaceDirectory')
        visited = visited + ['WorkspaceDirectory']
        {
          directory_id: 'directory_id',
          alias: 'alias',
          directory_name: 'directory_name',
          registration_code: 'registration_code',
          subnet_ids: SubnetIds.default(visited),
          dns_ip_addresses: DnsIpAddresses.default(visited),
          customer_user_name: 'customer_user_name',
          iam_role_id: 'iam_role_id',
          directory_type: 'directory_type',
          workspace_security_group_id: 'workspace_security_group_id',
          state: 'state',
          workspace_creation_properties: DefaultWorkspaceCreationProperties.default(visited),
          ip_group_ids: IpGroupIdList.default(visited),
          workspace_access_properties: WorkspaceAccessProperties.default(visited),
          tenancy: 'tenancy',
          selfservice_permissions: SelfservicePermissions.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::WorkspaceDirectory.new
        data = {}
        data['DirectoryId'] = stub[:directory_id] unless stub[:directory_id].nil?
        data['Alias'] = stub[:alias] unless stub[:alias].nil?
        data['DirectoryName'] = stub[:directory_name] unless stub[:directory_name].nil?
        data['RegistrationCode'] = stub[:registration_code] unless stub[:registration_code].nil?
        data['SubnetIds'] = SubnetIds.stub(stub[:subnet_ids]) unless stub[:subnet_ids].nil?
        data['DnsIpAddresses'] = DnsIpAddresses.stub(stub[:dns_ip_addresses]) unless stub[:dns_ip_addresses].nil?
        data['CustomerUserName'] = stub[:customer_user_name] unless stub[:customer_user_name].nil?
        data['IamRoleId'] = stub[:iam_role_id] unless stub[:iam_role_id].nil?
        data['DirectoryType'] = stub[:directory_type] unless stub[:directory_type].nil?
        data['WorkspaceSecurityGroupId'] = stub[:workspace_security_group_id] unless stub[:workspace_security_group_id].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['WorkspaceCreationProperties'] = DefaultWorkspaceCreationProperties.stub(stub[:workspace_creation_properties]) unless stub[:workspace_creation_properties].nil?
        data['ipGroupIds'] = IpGroupIdList.stub(stub[:ip_group_ids]) unless stub[:ip_group_ids].nil?
        data['WorkspaceAccessProperties'] = WorkspaceAccessProperties.stub(stub[:workspace_access_properties]) unless stub[:workspace_access_properties].nil?
        data['Tenancy'] = stub[:tenancy] unless stub[:tenancy].nil?
        data['SelfservicePermissions'] = SelfservicePermissions.stub(stub[:selfservice_permissions]) unless stub[:selfservice_permissions].nil?
        data
      end
    end

    # Structure Stubber for SelfservicePermissions
    class SelfservicePermissions
      def self.default(visited=[])
        return nil if visited.include?('SelfservicePermissions')
        visited = visited + ['SelfservicePermissions']
        {
          restart_workspace: 'restart_workspace',
          increase_volume_size: 'increase_volume_size',
          change_compute_type: 'change_compute_type',
          switch_running_mode: 'switch_running_mode',
          rebuild_workspace: 'rebuild_workspace',
        }
      end

      def self.stub(stub)
        stub ||= Types::SelfservicePermissions.new
        data = {}
        data['RestartWorkspace'] = stub[:restart_workspace] unless stub[:restart_workspace].nil?
        data['IncreaseVolumeSize'] = stub[:increase_volume_size] unless stub[:increase_volume_size].nil?
        data['ChangeComputeType'] = stub[:change_compute_type] unless stub[:change_compute_type].nil?
        data['SwitchRunningMode'] = stub[:switch_running_mode] unless stub[:switch_running_mode].nil?
        data['RebuildWorkspace'] = stub[:rebuild_workspace] unless stub[:rebuild_workspace].nil?
        data
      end
    end

    # Structure Stubber for WorkspaceAccessProperties
    class WorkspaceAccessProperties
      def self.default(visited=[])
        return nil if visited.include?('WorkspaceAccessProperties')
        visited = visited + ['WorkspaceAccessProperties']
        {
          device_type_windows: 'device_type_windows',
          device_type_osx: 'device_type_osx',
          device_type_web: 'device_type_web',
          device_type_ios: 'device_type_ios',
          device_type_android: 'device_type_android',
          device_type_chrome_os: 'device_type_chrome_os',
          device_type_zero_client: 'device_type_zero_client',
          device_type_linux: 'device_type_linux',
        }
      end

      def self.stub(stub)
        stub ||= Types::WorkspaceAccessProperties.new
        data = {}
        data['DeviceTypeWindows'] = stub[:device_type_windows] unless stub[:device_type_windows].nil?
        data['DeviceTypeOsx'] = stub[:device_type_osx] unless stub[:device_type_osx].nil?
        data['DeviceTypeWeb'] = stub[:device_type_web] unless stub[:device_type_web].nil?
        data['DeviceTypeIos'] = stub[:device_type_ios] unless stub[:device_type_ios].nil?
        data['DeviceTypeAndroid'] = stub[:device_type_android] unless stub[:device_type_android].nil?
        data['DeviceTypeChromeOs'] = stub[:device_type_chrome_os] unless stub[:device_type_chrome_os].nil?
        data['DeviceTypeZeroClient'] = stub[:device_type_zero_client] unless stub[:device_type_zero_client].nil?
        data['DeviceTypeLinux'] = stub[:device_type_linux] unless stub[:device_type_linux].nil?
        data
      end
    end

    # List Stubber for IpGroupIdList
    class IpGroupIdList
      def self.default(visited=[])
        return nil if visited.include?('IpGroupIdList')
        visited = visited + ['IpGroupIdList']
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

    # Structure Stubber for DefaultWorkspaceCreationProperties
    class DefaultWorkspaceCreationProperties
      def self.default(visited=[])
        return nil if visited.include?('DefaultWorkspaceCreationProperties')
        visited = visited + ['DefaultWorkspaceCreationProperties']
        {
          enable_work_docs: false,
          enable_internet_access: false,
          default_ou: 'default_ou',
          custom_security_group_id: 'custom_security_group_id',
          user_enabled_as_local_administrator: false,
          enable_maintenance_mode: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::DefaultWorkspaceCreationProperties.new
        data = {}
        data['EnableWorkDocs'] = stub[:enable_work_docs] unless stub[:enable_work_docs].nil?
        data['EnableInternetAccess'] = stub[:enable_internet_access] unless stub[:enable_internet_access].nil?
        data['DefaultOu'] = stub[:default_ou] unless stub[:default_ou].nil?
        data['CustomSecurityGroupId'] = stub[:custom_security_group_id] unless stub[:custom_security_group_id].nil?
        data['UserEnabledAsLocalAdministrator'] = stub[:user_enabled_as_local_administrator] unless stub[:user_enabled_as_local_administrator].nil?
        data['EnableMaintenanceMode'] = stub[:enable_maintenance_mode] unless stub[:enable_maintenance_mode].nil?
        data
      end
    end

    # List Stubber for DnsIpAddresses
    class DnsIpAddresses
      def self.default(visited=[])
        return nil if visited.include?('DnsIpAddresses')
        visited = visited + ['DnsIpAddresses']
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

    # Operation Stubber for DescribeWorkspaceImagePermissions
    class DescribeWorkspaceImagePermissions
      def self.default(visited=[])
        {
          image_id: 'image_id',
          image_permissions: ImagePermissions.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ImageId'] = stub[:image_id] unless stub[:image_id].nil?
        data['ImagePermissions'] = ImagePermissions.stub(stub[:image_permissions]) unless stub[:image_permissions].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ImagePermissions
    class ImagePermissions
      def self.default(visited=[])
        return nil if visited.include?('ImagePermissions')
        visited = visited + ['ImagePermissions']
        [
          ImagePermission.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ImagePermission.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ImagePermission
    class ImagePermission
      def self.default(visited=[])
        return nil if visited.include?('ImagePermission')
        visited = visited + ['ImagePermission']
        {
          shared_account_id: 'shared_account_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::ImagePermission.new
        data = {}
        data['SharedAccountId'] = stub[:shared_account_id] unless stub[:shared_account_id].nil?
        data
      end
    end

    # Operation Stubber for DescribeWorkspaceImages
    class DescribeWorkspaceImages
      def self.default(visited=[])
        {
          images: WorkspaceImageList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Images'] = WorkspaceImageList.stub(stub[:images]) unless stub[:images].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for WorkspaceImageList
    class WorkspaceImageList
      def self.default(visited=[])
        return nil if visited.include?('WorkspaceImageList')
        visited = visited + ['WorkspaceImageList']
        [
          WorkspaceImage.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << WorkspaceImage.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for WorkspaceImage
    class WorkspaceImage
      def self.default(visited=[])
        return nil if visited.include?('WorkspaceImage')
        visited = visited + ['WorkspaceImage']
        {
          image_id: 'image_id',
          name: 'name',
          description: 'description',
          operating_system: OperatingSystem.default(visited),
          state: 'state',
          required_tenancy: 'required_tenancy',
          error_code: 'error_code',
          error_message: 'error_message',
          created: Time.now,
          owner_account_id: 'owner_account_id',
          updates: UpdateResult.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::WorkspaceImage.new
        data = {}
        data['ImageId'] = stub[:image_id] unless stub[:image_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['OperatingSystem'] = OperatingSystem.stub(stub[:operating_system]) unless stub[:operating_system].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['RequiredTenancy'] = stub[:required_tenancy] unless stub[:required_tenancy].nil?
        data['ErrorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data['Created'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created]).to_i unless stub[:created].nil?
        data['OwnerAccountId'] = stub[:owner_account_id] unless stub[:owner_account_id].nil?
        data['Updates'] = UpdateResult.stub(stub[:updates]) unless stub[:updates].nil?
        data
      end
    end

    # Structure Stubber for UpdateResult
    class UpdateResult
      def self.default(visited=[])
        return nil if visited.include?('UpdateResult')
        visited = visited + ['UpdateResult']
        {
          update_available: false,
          description: 'description',
        }
      end

      def self.stub(stub)
        stub ||= Types::UpdateResult.new
        data = {}
        data['UpdateAvailable'] = stub[:update_available] unless stub[:update_available].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data
      end
    end

    # Structure Stubber for OperatingSystem
    class OperatingSystem
      def self.default(visited=[])
        return nil if visited.include?('OperatingSystem')
        visited = visited + ['OperatingSystem']
        {
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::OperatingSystem.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Operation Stubber for DescribeWorkspaceSnapshots
    class DescribeWorkspaceSnapshots
      def self.default(visited=[])
        {
          rebuild_snapshots: SnapshotList.default(visited),
          restore_snapshots: SnapshotList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['RebuildSnapshots'] = SnapshotList.stub(stub[:rebuild_snapshots]) unless stub[:rebuild_snapshots].nil?
        data['RestoreSnapshots'] = SnapshotList.stub(stub[:restore_snapshots]) unless stub[:restore_snapshots].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for SnapshotList
    class SnapshotList
      def self.default(visited=[])
        return nil if visited.include?('SnapshotList')
        visited = visited + ['SnapshotList']
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

    # Structure Stubber for Snapshot
    class Snapshot
      def self.default(visited=[])
        return nil if visited.include?('Snapshot')
        visited = visited + ['Snapshot']
        {
          snapshot_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Snapshot.new
        data = {}
        data['SnapshotTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:snapshot_time]).to_i unless stub[:snapshot_time].nil?
        data
      end
    end

    # Operation Stubber for DescribeWorkspaces
    class DescribeWorkspaces
      def self.default(visited=[])
        {
          workspaces: WorkspaceList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Workspaces'] = WorkspaceList.stub(stub[:workspaces]) unless stub[:workspaces].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeWorkspacesConnectionStatus
    class DescribeWorkspacesConnectionStatus
      def self.default(visited=[])
        {
          workspaces_connection_status: WorkspaceConnectionStatusList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['WorkspacesConnectionStatus'] = WorkspaceConnectionStatusList.stub(stub[:workspaces_connection_status]) unless stub[:workspaces_connection_status].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for WorkspaceConnectionStatusList
    class WorkspaceConnectionStatusList
      def self.default(visited=[])
        return nil if visited.include?('WorkspaceConnectionStatusList')
        visited = visited + ['WorkspaceConnectionStatusList']
        [
          WorkspaceConnectionStatus.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << WorkspaceConnectionStatus.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for WorkspaceConnectionStatus
    class WorkspaceConnectionStatus
      def self.default(visited=[])
        return nil if visited.include?('WorkspaceConnectionStatus')
        visited = visited + ['WorkspaceConnectionStatus']
        {
          workspace_id: 'workspace_id',
          connection_state: 'connection_state',
          connection_state_check_timestamp: Time.now,
          last_known_user_connection_timestamp: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::WorkspaceConnectionStatus.new
        data = {}
        data['WorkspaceId'] = stub[:workspace_id] unless stub[:workspace_id].nil?
        data['ConnectionState'] = stub[:connection_state] unless stub[:connection_state].nil?
        data['ConnectionStateCheckTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:connection_state_check_timestamp]).to_i unless stub[:connection_state_check_timestamp].nil?
        data['LastKnownUserConnectionTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_known_user_connection_timestamp]).to_i unless stub[:last_known_user_connection_timestamp].nil?
        data
      end
    end

    # Operation Stubber for DisassociateConnectionAlias
    class DisassociateConnectionAlias
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

    # Operation Stubber for DisassociateIpGroups
    class DisassociateIpGroups
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

    # Operation Stubber for ImportClientBranding
    class ImportClientBranding
      def self.default(visited=[])
        {
          device_type_windows: DefaultClientBrandingAttributes.default(visited),
          device_type_osx: DefaultClientBrandingAttributes.default(visited),
          device_type_android: DefaultClientBrandingAttributes.default(visited),
          device_type_ios: IosClientBrandingAttributes.default(visited),
          device_type_linux: DefaultClientBrandingAttributes.default(visited),
          device_type_web: DefaultClientBrandingAttributes.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DeviceTypeWindows'] = DefaultClientBrandingAttributes.stub(stub[:device_type_windows]) unless stub[:device_type_windows].nil?
        data['DeviceTypeOsx'] = DefaultClientBrandingAttributes.stub(stub[:device_type_osx]) unless stub[:device_type_osx].nil?
        data['DeviceTypeAndroid'] = DefaultClientBrandingAttributes.stub(stub[:device_type_android]) unless stub[:device_type_android].nil?
        data['DeviceTypeIos'] = IosClientBrandingAttributes.stub(stub[:device_type_ios]) unless stub[:device_type_ios].nil?
        data['DeviceTypeLinux'] = DefaultClientBrandingAttributes.stub(stub[:device_type_linux]) unless stub[:device_type_linux].nil?
        data['DeviceTypeWeb'] = DefaultClientBrandingAttributes.stub(stub[:device_type_web]) unless stub[:device_type_web].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ImportWorkspaceImage
    class ImportWorkspaceImage
      def self.default(visited=[])
        {
          image_id: 'image_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ImageId'] = stub[:image_id] unless stub[:image_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListAvailableManagementCidrRanges
    class ListAvailableManagementCidrRanges
      def self.default(visited=[])
        {
          management_cidr_ranges: DedicatedTenancyCidrRangeList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ManagementCidrRanges'] = DedicatedTenancyCidrRangeList.stub(stub[:management_cidr_ranges]) unless stub[:management_cidr_ranges].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DedicatedTenancyCidrRangeList
    class DedicatedTenancyCidrRangeList
      def self.default(visited=[])
        return nil if visited.include?('DedicatedTenancyCidrRangeList')
        visited = visited + ['DedicatedTenancyCidrRangeList']
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

    # Operation Stubber for MigrateWorkspace
    class MigrateWorkspace
      def self.default(visited=[])
        {
          source_workspace_id: 'source_workspace_id',
          target_workspace_id: 'target_workspace_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SourceWorkspaceId'] = stub[:source_workspace_id] unless stub[:source_workspace_id].nil?
        data['TargetWorkspaceId'] = stub[:target_workspace_id] unless stub[:target_workspace_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ModifyAccount
    class ModifyAccount
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

    # Operation Stubber for ModifyClientProperties
    class ModifyClientProperties
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

    # Operation Stubber for ModifySelfservicePermissions
    class ModifySelfservicePermissions
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

    # Operation Stubber for ModifyWorkspaceAccessProperties
    class ModifyWorkspaceAccessProperties
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

    # Operation Stubber for ModifyWorkspaceCreationProperties
    class ModifyWorkspaceCreationProperties
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

    # Operation Stubber for ModifyWorkspaceProperties
    class ModifyWorkspaceProperties
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

    # Operation Stubber for ModifyWorkspaceState
    class ModifyWorkspaceState
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

    # Operation Stubber for RebootWorkspaces
    class RebootWorkspaces
      def self.default(visited=[])
        {
          failed_requests: FailedRebootWorkspaceRequests.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FailedRequests'] = FailedRebootWorkspaceRequests.stub(stub[:failed_requests]) unless stub[:failed_requests].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for FailedRebootWorkspaceRequests
    class FailedRebootWorkspaceRequests
      def self.default(visited=[])
        return nil if visited.include?('FailedRebootWorkspaceRequests')
        visited = visited + ['FailedRebootWorkspaceRequests']
        [
          FailedWorkspaceChangeRequest.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << FailedWorkspaceChangeRequest.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FailedWorkspaceChangeRequest
    class FailedWorkspaceChangeRequest
      def self.default(visited=[])
        return nil if visited.include?('FailedWorkspaceChangeRequest')
        visited = visited + ['FailedWorkspaceChangeRequest']
        {
          workspace_id: 'workspace_id',
          error_code: 'error_code',
          error_message: 'error_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::FailedWorkspaceChangeRequest.new
        data = {}
        data['WorkspaceId'] = stub[:workspace_id] unless stub[:workspace_id].nil?
        data['ErrorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data
      end
    end

    # Operation Stubber for RebuildWorkspaces
    class RebuildWorkspaces
      def self.default(visited=[])
        {
          failed_requests: FailedRebuildWorkspaceRequests.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FailedRequests'] = FailedRebuildWorkspaceRequests.stub(stub[:failed_requests]) unless stub[:failed_requests].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for FailedRebuildWorkspaceRequests
    class FailedRebuildWorkspaceRequests
      def self.default(visited=[])
        return nil if visited.include?('FailedRebuildWorkspaceRequests')
        visited = visited + ['FailedRebuildWorkspaceRequests']
        [
          FailedWorkspaceChangeRequest.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << FailedWorkspaceChangeRequest.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for RegisterWorkspaceDirectory
    class RegisterWorkspaceDirectory
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

    # Operation Stubber for RestoreWorkspace
    class RestoreWorkspace
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

    # Operation Stubber for RevokeIpRules
    class RevokeIpRules
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

    # Operation Stubber for StartWorkspaces
    class StartWorkspaces
      def self.default(visited=[])
        {
          failed_requests: FailedStartWorkspaceRequests.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FailedRequests'] = FailedStartWorkspaceRequests.stub(stub[:failed_requests]) unless stub[:failed_requests].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for FailedStartWorkspaceRequests
    class FailedStartWorkspaceRequests
      def self.default(visited=[])
        return nil if visited.include?('FailedStartWorkspaceRequests')
        visited = visited + ['FailedStartWorkspaceRequests']
        [
          FailedWorkspaceChangeRequest.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << FailedWorkspaceChangeRequest.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for StopWorkspaces
    class StopWorkspaces
      def self.default(visited=[])
        {
          failed_requests: FailedStopWorkspaceRequests.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FailedRequests'] = FailedStopWorkspaceRequests.stub(stub[:failed_requests]) unless stub[:failed_requests].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for FailedStopWorkspaceRequests
    class FailedStopWorkspaceRequests
      def self.default(visited=[])
        return nil if visited.include?('FailedStopWorkspaceRequests')
        visited = visited + ['FailedStopWorkspaceRequests']
        [
          FailedWorkspaceChangeRequest.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << FailedWorkspaceChangeRequest.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for TerminateWorkspaces
    class TerminateWorkspaces
      def self.default(visited=[])
        {
          failed_requests: FailedTerminateWorkspaceRequests.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FailedRequests'] = FailedTerminateWorkspaceRequests.stub(stub[:failed_requests]) unless stub[:failed_requests].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for FailedTerminateWorkspaceRequests
    class FailedTerminateWorkspaceRequests
      def self.default(visited=[])
        return nil if visited.include?('FailedTerminateWorkspaceRequests')
        visited = visited + ['FailedTerminateWorkspaceRequests']
        [
          FailedWorkspaceChangeRequest.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << FailedWorkspaceChangeRequest.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for UpdateConnectClientAddIn
    class UpdateConnectClientAddIn
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

    # Operation Stubber for UpdateConnectionAliasPermission
    class UpdateConnectionAliasPermission
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

    # Operation Stubber for UpdateRulesOfIpGroup
    class UpdateRulesOfIpGroup
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

    # Operation Stubber for UpdateWorkspaceBundle
    class UpdateWorkspaceBundle
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

    # Operation Stubber for UpdateWorkspaceImagePermission
    class UpdateWorkspaceImagePermission
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
  end
end
