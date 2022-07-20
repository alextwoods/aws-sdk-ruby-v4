# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Grafana
  module Stubs

    # Operation Stubber for AssociateLicense
    class AssociateLicense
      def self.default(visited=[])
        {
          workspace: WorkspaceDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['workspace'] = Stubs::WorkspaceDescription.stub(stub[:workspace]) unless stub[:workspace].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for WorkspaceDescription
    class WorkspaceDescription
      def self.default(visited=[])
        return nil if visited.include?('WorkspaceDescription')
        visited = visited + ['WorkspaceDescription']
        {
          account_access_type: 'account_access_type',
          created: Time.now,
          data_sources: DataSourceTypesList.default(visited),
          description: 'description',
          endpoint: 'endpoint',
          grafana_version: 'grafana_version',
          id: 'id',
          modified: Time.now,
          name: 'name',
          organization_role_name: 'organization_role_name',
          notification_destinations: NotificationDestinationsList.default(visited),
          organizational_units: OrganizationalUnitList.default(visited),
          permission_type: 'permission_type',
          stack_set_name: 'stack_set_name',
          status: 'status',
          workspace_role_arn: 'workspace_role_arn',
          license_type: 'license_type',
          free_trial_consumed: false,
          license_expiration: Time.now,
          free_trial_expiration: Time.now,
          authentication: AuthenticationSummary.default(visited),
          tags: TagMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::WorkspaceDescription.new
        data = {}
        data['accountAccessType'] = stub[:account_access_type] unless stub[:account_access_type].nil?
        data['created'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created]).to_i unless stub[:created].nil?
        data['dataSources'] = Stubs::DataSourceTypesList.stub(stub[:data_sources]) unless stub[:data_sources].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['endpoint'] = stub[:endpoint] unless stub[:endpoint].nil?
        data['grafanaVersion'] = stub[:grafana_version] unless stub[:grafana_version].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['modified'] = Hearth::TimeHelper.to_epoch_seconds(stub[:modified]).to_i unless stub[:modified].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['organizationRoleName'] = stub[:organization_role_name] unless stub[:organization_role_name].nil?
        data['notificationDestinations'] = Stubs::NotificationDestinationsList.stub(stub[:notification_destinations]) unless stub[:notification_destinations].nil?
        data['organizationalUnits'] = Stubs::OrganizationalUnitList.stub(stub[:organizational_units]) unless stub[:organizational_units].nil?
        data['permissionType'] = stub[:permission_type] unless stub[:permission_type].nil?
        data['stackSetName'] = stub[:stack_set_name] unless stub[:stack_set_name].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['workspaceRoleArn'] = stub[:workspace_role_arn] unless stub[:workspace_role_arn].nil?
        data['licenseType'] = stub[:license_type] unless stub[:license_type].nil?
        data['freeTrialConsumed'] = stub[:free_trial_consumed] unless stub[:free_trial_consumed].nil?
        data['licenseExpiration'] = Hearth::TimeHelper.to_epoch_seconds(stub[:license_expiration]).to_i unless stub[:license_expiration].nil?
        data['freeTrialExpiration'] = Hearth::TimeHelper.to_epoch_seconds(stub[:free_trial_expiration]).to_i unless stub[:free_trial_expiration].nil?
        data['authentication'] = Stubs::AuthenticationSummary.stub(stub[:authentication]) unless stub[:authentication].nil?
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Map Stubber for TagMap
    class TagMap
      def self.default(visited=[])
        return nil if visited.include?('TagMap')
        visited = visited + ['TagMap']
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

    # Structure Stubber for AuthenticationSummary
    class AuthenticationSummary
      def self.default(visited=[])
        return nil if visited.include?('AuthenticationSummary')
        visited = visited + ['AuthenticationSummary']
        {
          providers: AuthenticationProviders.default(visited),
          saml_configuration_status: 'saml_configuration_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::AuthenticationSummary.new
        data = {}
        data['providers'] = Stubs::AuthenticationProviders.stub(stub[:providers]) unless stub[:providers].nil?
        data['samlConfigurationStatus'] = stub[:saml_configuration_status] unless stub[:saml_configuration_status].nil?
        data
      end
    end

    # List Stubber for AuthenticationProviders
    class AuthenticationProviders
      def self.default(visited=[])
        return nil if visited.include?('AuthenticationProviders')
        visited = visited + ['AuthenticationProviders']
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

    # List Stubber for OrganizationalUnitList
    class OrganizationalUnitList
      def self.default(visited=[])
        return nil if visited.include?('OrganizationalUnitList')
        visited = visited + ['OrganizationalUnitList']
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

    # List Stubber for NotificationDestinationsList
    class NotificationDestinationsList
      def self.default(visited=[])
        return nil if visited.include?('NotificationDestinationsList')
        visited = visited + ['NotificationDestinationsList']
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

    # List Stubber for DataSourceTypesList
    class DataSourceTypesList
      def self.default(visited=[])
        return nil if visited.include?('DataSourceTypesList')
        visited = visited + ['DataSourceTypesList']
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

    # Operation Stubber for CreateWorkspace
    class CreateWorkspace
      def self.default(visited=[])
        {
          workspace: WorkspaceDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['workspace'] = Stubs::WorkspaceDescription.stub(stub[:workspace]) unless stub[:workspace].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateWorkspaceApiKey
    class CreateWorkspaceApiKey
      def self.default(visited=[])
        {
          key_name: 'key_name',
          key: 'key',
          workspace_id: 'workspace_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['keyName'] = stub[:key_name] unless stub[:key_name].nil?
        data['key'] = stub[:key] unless stub[:key].nil?
        data['workspaceId'] = stub[:workspace_id] unless stub[:workspace_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteWorkspace
    class DeleteWorkspace
      def self.default(visited=[])
        {
          workspace: WorkspaceDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['workspace'] = Stubs::WorkspaceDescription.stub(stub[:workspace]) unless stub[:workspace].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteWorkspaceApiKey
    class DeleteWorkspaceApiKey
      def self.default(visited=[])
        {
          key_name: 'key_name',
          workspace_id: 'workspace_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['keyName'] = stub[:key_name] unless stub[:key_name].nil?
        data['workspaceId'] = stub[:workspace_id] unless stub[:workspace_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeWorkspace
    class DescribeWorkspace
      def self.default(visited=[])
        {
          workspace: WorkspaceDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['workspace'] = Stubs::WorkspaceDescription.stub(stub[:workspace]) unless stub[:workspace].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeWorkspaceAuthentication
    class DescribeWorkspaceAuthentication
      def self.default(visited=[])
        {
          authentication: AuthenticationDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['authentication'] = Stubs::AuthenticationDescription.stub(stub[:authentication]) unless stub[:authentication].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for AuthenticationDescription
    class AuthenticationDescription
      def self.default(visited=[])
        return nil if visited.include?('AuthenticationDescription')
        visited = visited + ['AuthenticationDescription']
        {
          providers: AuthenticationProviders.default(visited),
          saml: SamlAuthentication.default(visited),
          aws_sso: AwsSsoAuthentication.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AuthenticationDescription.new
        data = {}
        data['providers'] = Stubs::AuthenticationProviders.stub(stub[:providers]) unless stub[:providers].nil?
        data['saml'] = Stubs::SamlAuthentication.stub(stub[:saml]) unless stub[:saml].nil?
        data['awsSso'] = Stubs::AwsSsoAuthentication.stub(stub[:aws_sso]) unless stub[:aws_sso].nil?
        data
      end
    end

    # Structure Stubber for AwsSsoAuthentication
    class AwsSsoAuthentication
      def self.default(visited=[])
        return nil if visited.include?('AwsSsoAuthentication')
        visited = visited + ['AwsSsoAuthentication']
        {
          sso_client_id: 'sso_client_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsSsoAuthentication.new
        data = {}
        data['ssoClientId'] = stub[:sso_client_id] unless stub[:sso_client_id].nil?
        data
      end
    end

    # Structure Stubber for SamlAuthentication
    class SamlAuthentication
      def self.default(visited=[])
        return nil if visited.include?('SamlAuthentication')
        visited = visited + ['SamlAuthentication']
        {
          status: 'status',
          configuration: SamlConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SamlAuthentication.new
        data = {}
        data['status'] = stub[:status] unless stub[:status].nil?
        data['configuration'] = Stubs::SamlConfiguration.stub(stub[:configuration]) unless stub[:configuration].nil?
        data
      end
    end

    # Structure Stubber for SamlConfiguration
    class SamlConfiguration
      def self.default(visited=[])
        return nil if visited.include?('SamlConfiguration')
        visited = visited + ['SamlConfiguration']
        {
          idp_metadata: IdpMetadata.default(visited),
          assertion_attributes: AssertionAttributes.default(visited),
          role_values: RoleValues.default(visited),
          allowed_organizations: AllowedOrganizations.default(visited),
          login_validity_duration: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::SamlConfiguration.new
        data = {}
        data['idpMetadata'] = Stubs::IdpMetadata.stub(stub[:idp_metadata]) unless stub[:idp_metadata].nil?
        data['assertionAttributes'] = Stubs::AssertionAttributes.stub(stub[:assertion_attributes]) unless stub[:assertion_attributes].nil?
        data['roleValues'] = Stubs::RoleValues.stub(stub[:role_values]) unless stub[:role_values].nil?
        data['allowedOrganizations'] = Stubs::AllowedOrganizations.stub(stub[:allowed_organizations]) unless stub[:allowed_organizations].nil?
        data['loginValidityDuration'] = stub[:login_validity_duration] unless stub[:login_validity_duration].nil?
        data
      end
    end

    # List Stubber for AllowedOrganizations
    class AllowedOrganizations
      def self.default(visited=[])
        return nil if visited.include?('AllowedOrganizations')
        visited = visited + ['AllowedOrganizations']
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

    # Structure Stubber for RoleValues
    class RoleValues
      def self.default(visited=[])
        return nil if visited.include?('RoleValues')
        visited = visited + ['RoleValues']
        {
          editor: RoleValueList.default(visited),
          admin: RoleValueList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RoleValues.new
        data = {}
        data['editor'] = Stubs::RoleValueList.stub(stub[:editor]) unless stub[:editor].nil?
        data['admin'] = Stubs::RoleValueList.stub(stub[:admin]) unless stub[:admin].nil?
        data
      end
    end

    # List Stubber for RoleValueList
    class RoleValueList
      def self.default(visited=[])
        return nil if visited.include?('RoleValueList')
        visited = visited + ['RoleValueList']
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

    # Structure Stubber for AssertionAttributes
    class AssertionAttributes
      def self.default(visited=[])
        return nil if visited.include?('AssertionAttributes')
        visited = visited + ['AssertionAttributes']
        {
          name: 'name',
          login: 'login',
          email: 'email',
          groups: 'groups',
          role: 'role',
          org: 'org',
        }
      end

      def self.stub(stub)
        stub ||= Types::AssertionAttributes.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['login'] = stub[:login] unless stub[:login].nil?
        data['email'] = stub[:email] unless stub[:email].nil?
        data['groups'] = stub[:groups] unless stub[:groups].nil?
        data['role'] = stub[:role] unless stub[:role].nil?
        data['org'] = stub[:org] unless stub[:org].nil?
        data
      end
    end

    # Union Stubber for IdpMetadata
    class IdpMetadata
      def self.default(visited=[])
        return nil if visited.include?('IdpMetadata')
        visited = visited + ['IdpMetadata']
        {
          url: 'url',
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::IdpMetadata::Url
          data['url'] = stub.__getobj__
        when Types::IdpMetadata::Xml
          data['xml'] = stub.__getobj__
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::IdpMetadata"
        end

        data
      end
    end

    # Operation Stubber for DisassociateLicense
    class DisassociateLicense
      def self.default(visited=[])
        {
          workspace: WorkspaceDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['workspace'] = Stubs::WorkspaceDescription.stub(stub[:workspace]) unless stub[:workspace].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListPermissions
    class ListPermissions
      def self.default(visited=[])
        {
          next_token: 'next_token',
          permissions: PermissionEntryList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['permissions'] = Stubs::PermissionEntryList.stub(stub[:permissions]) unless stub[:permissions].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for PermissionEntryList
    class PermissionEntryList
      def self.default(visited=[])
        return nil if visited.include?('PermissionEntryList')
        visited = visited + ['PermissionEntryList']
        [
          PermissionEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PermissionEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PermissionEntry
    class PermissionEntry
      def self.default(visited=[])
        return nil if visited.include?('PermissionEntry')
        visited = visited + ['PermissionEntry']
        {
          user: User.default(visited),
          role: 'role',
        }
      end

      def self.stub(stub)
        stub ||= Types::PermissionEntry.new
        data = {}
        data['user'] = Stubs::User.stub(stub[:user]) unless stub[:user].nil?
        data['role'] = stub[:role] unless stub[:role].nil?
        data
      end
    end

    # Structure Stubber for User
    class User
      def self.default(visited=[])
        return nil if visited.include?('User')
        visited = visited + ['User']
        {
          id: 'id',
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::User.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListWorkspaces
    class ListWorkspaces
      def self.default(visited=[])
        {
          workspaces: WorkspaceList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['workspaces'] = Stubs::WorkspaceList.stub(stub[:workspaces]) unless stub[:workspaces].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for WorkspaceList
    class WorkspaceList
      def self.default(visited=[])
        return nil if visited.include?('WorkspaceList')
        visited = visited + ['WorkspaceList']
        [
          WorkspaceSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::WorkspaceSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for WorkspaceSummary
    class WorkspaceSummary
      def self.default(visited=[])
        return nil if visited.include?('WorkspaceSummary')
        visited = visited + ['WorkspaceSummary']
        {
          created: Time.now,
          description: 'description',
          endpoint: 'endpoint',
          grafana_version: 'grafana_version',
          id: 'id',
          modified: Time.now,
          name: 'name',
          notification_destinations: NotificationDestinationsList.default(visited),
          status: 'status',
          authentication: AuthenticationSummary.default(visited),
          tags: TagMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::WorkspaceSummary.new
        data = {}
        data['created'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created]).to_i unless stub[:created].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['endpoint'] = stub[:endpoint] unless stub[:endpoint].nil?
        data['grafanaVersion'] = stub[:grafana_version] unless stub[:grafana_version].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['modified'] = Hearth::TimeHelper.to_epoch_seconds(stub[:modified]).to_i unless stub[:modified].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['notificationDestinations'] = Stubs::NotificationDestinationsList.stub(stub[:notification_destinations]) unless stub[:notification_destinations].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['authentication'] = Stubs::AuthenticationSummary.stub(stub[:authentication]) unless stub[:authentication].nil?
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data
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

    # Operation Stubber for UpdatePermissions
    class UpdatePermissions
      def self.default(visited=[])
        {
          errors: UpdateErrorList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['errors'] = Stubs::UpdateErrorList.stub(stub[:errors]) unless stub[:errors].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for UpdateErrorList
    class UpdateErrorList
      def self.default(visited=[])
        return nil if visited.include?('UpdateErrorList')
        visited = visited + ['UpdateErrorList']
        [
          UpdateError.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::UpdateError.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for UpdateError
    class UpdateError
      def self.default(visited=[])
        return nil if visited.include?('UpdateError')
        visited = visited + ['UpdateError']
        {
          code: 1,
          message: 'message',
          caused_by: UpdateInstruction.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::UpdateError.new
        data = {}
        data['code'] = stub[:code] unless stub[:code].nil?
        data['message'] = stub[:message] unless stub[:message].nil?
        data['causedBy'] = Stubs::UpdateInstruction.stub(stub[:caused_by]) unless stub[:caused_by].nil?
        data
      end
    end

    # Structure Stubber for UpdateInstruction
    class UpdateInstruction
      def self.default(visited=[])
        return nil if visited.include?('UpdateInstruction')
        visited = visited + ['UpdateInstruction']
        {
          action: 'action',
          role: 'role',
          users: UserList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::UpdateInstruction.new
        data = {}
        data['action'] = stub[:action] unless stub[:action].nil?
        data['role'] = stub[:role] unless stub[:role].nil?
        data['users'] = Stubs::UserList.stub(stub[:users]) unless stub[:users].nil?
        data
      end
    end

    # List Stubber for UserList
    class UserList
      def self.default(visited=[])
        return nil if visited.include?('UserList')
        visited = visited + ['UserList']
        [
          User.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::User.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for UpdateWorkspace
    class UpdateWorkspace
      def self.default(visited=[])
        {
          workspace: WorkspaceDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['workspace'] = Stubs::WorkspaceDescription.stub(stub[:workspace]) unless stub[:workspace].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateWorkspaceAuthentication
    class UpdateWorkspaceAuthentication
      def self.default(visited=[])
        {
          authentication: AuthenticationDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['authentication'] = Stubs::AuthenticationDescription.stub(stub[:authentication]) unless stub[:authentication].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
