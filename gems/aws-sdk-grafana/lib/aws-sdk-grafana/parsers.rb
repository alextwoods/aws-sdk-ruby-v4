# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Grafana
  module Parsers

    # Operation Parser for AssociateLicense
    class AssociateLicense
      def self.parse(http_resp)
        data = Types::AssociateLicenseOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.workspace = (Parsers::WorkspaceDescription.parse(map['workspace']) unless map['workspace'].nil?)
        data
      end
    end

    class WorkspaceDescription
      def self.parse(map)
        data = Types::WorkspaceDescription.new
        data.account_access_type = map['accountAccessType']
        data.created = Time.at(map['created'].to_i) if map['created']
        data.data_sources = (Parsers::DataSourceTypesList.parse(map['dataSources']) unless map['dataSources'].nil?)
        data.description = map['description']
        data.endpoint = map['endpoint']
        data.grafana_version = map['grafanaVersion']
        data.id = map['id']
        data.modified = Time.at(map['modified'].to_i) if map['modified']
        data.name = map['name']
        data.organization_role_name = map['organizationRoleName']
        data.notification_destinations = (Parsers::NotificationDestinationsList.parse(map['notificationDestinations']) unless map['notificationDestinations'].nil?)
        data.organizational_units = (Parsers::OrganizationalUnitList.parse(map['organizationalUnits']) unless map['organizationalUnits'].nil?)
        data.permission_type = map['permissionType']
        data.stack_set_name = map['stackSetName']
        data.status = map['status']
        data.workspace_role_arn = map['workspaceRoleArn']
        data.license_type = map['licenseType']
        data.free_trial_consumed = map['freeTrialConsumed']
        data.license_expiration = Time.at(map['licenseExpiration'].to_i) if map['licenseExpiration']
        data.free_trial_expiration = Time.at(map['freeTrialExpiration'].to_i) if map['freeTrialExpiration']
        data.authentication = (Parsers::AuthenticationSummary.parse(map['authentication']) unless map['authentication'].nil?)
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    class TagMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class AuthenticationSummary
      def self.parse(map)
        data = Types::AuthenticationSummary.new
        data.providers = (Parsers::AuthenticationProviders.parse(map['providers']) unless map['providers'].nil?)
        data.saml_configuration_status = map['samlConfigurationStatus']
        return data
      end
    end

    class AuthenticationProviders
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class OrganizationalUnitList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class NotificationDestinationsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class DataSourceTypesList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        data.retry_after_seconds = http_resp.headers['Retry-After'].to_i unless http_resp.headers['Retry-After'].nil?
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.resource_id = map['resourceId']
        data.resource_type = map['resourceType']
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        data.retry_after_seconds = http_resp.headers['Retry-After'].to_i unless http_resp.headers['Retry-After'].nil?
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.service_code = map['serviceCode']
        data.quota_code = map['quotaCode']
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.reason = map['reason']
        data.field_list = (Parsers::ValidationExceptionFieldList.parse(map['fieldList']) unless map['fieldList'].nil?)
        data
      end
    end

    class ValidationExceptionFieldList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ValidationExceptionField.parse(value) unless value.nil?
        end
        data
      end
    end

    class ValidationExceptionField
      def self.parse(map)
        data = Types::ValidationExceptionField.new
        data.name = map['name']
        data.message = map['message'] || map['Message']
        return data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for CreateWorkspace
    class CreateWorkspace
      def self.parse(http_resp)
        data = Types::CreateWorkspaceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.workspace = (Parsers::WorkspaceDescription.parse(map['workspace']) unless map['workspace'].nil?)
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.resource_id = map['resourceId']
        data.resource_type = map['resourceType']
        data
      end
    end

    # Error Parser for ServiceQuotaExceededException
    class ServiceQuotaExceededException
      def self.parse(http_resp)
        data = Types::ServiceQuotaExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.resource_id = map['resourceId']
        data.resource_type = map['resourceType']
        data.service_code = map['serviceCode']
        data.quota_code = map['quotaCode']
        data
      end
    end

    # Operation Parser for CreateWorkspaceApiKey
    class CreateWorkspaceApiKey
      def self.parse(http_resp)
        data = Types::CreateWorkspaceApiKeyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.key_name = map['keyName']
        data.key = map['key']
        data.workspace_id = map['workspaceId']
        data
      end
    end

    # Operation Parser for DeleteWorkspace
    class DeleteWorkspace
      def self.parse(http_resp)
        data = Types::DeleteWorkspaceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.workspace = (Parsers::WorkspaceDescription.parse(map['workspace']) unless map['workspace'].nil?)
        data
      end
    end

    # Operation Parser for DeleteWorkspaceApiKey
    class DeleteWorkspaceApiKey
      def self.parse(http_resp)
        data = Types::DeleteWorkspaceApiKeyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.key_name = map['keyName']
        data.workspace_id = map['workspaceId']
        data
      end
    end

    # Operation Parser for DescribeWorkspace
    class DescribeWorkspace
      def self.parse(http_resp)
        data = Types::DescribeWorkspaceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.workspace = (Parsers::WorkspaceDescription.parse(map['workspace']) unless map['workspace'].nil?)
        data
      end
    end

    # Operation Parser for DescribeWorkspaceAuthentication
    class DescribeWorkspaceAuthentication
      def self.parse(http_resp)
        data = Types::DescribeWorkspaceAuthenticationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.authentication = (Parsers::AuthenticationDescription.parse(map['authentication']) unless map['authentication'].nil?)
        data
      end
    end

    class AuthenticationDescription
      def self.parse(map)
        data = Types::AuthenticationDescription.new
        data.providers = (Parsers::AuthenticationProviders.parse(map['providers']) unless map['providers'].nil?)
        data.saml = (Parsers::SamlAuthentication.parse(map['saml']) unless map['saml'].nil?)
        data.aws_sso = (Parsers::AwsSsoAuthentication.parse(map['awsSso']) unless map['awsSso'].nil?)
        return data
      end
    end

    class AwsSsoAuthentication
      def self.parse(map)
        data = Types::AwsSsoAuthentication.new
        data.sso_client_id = map['ssoClientId']
        return data
      end
    end

    class SamlAuthentication
      def self.parse(map)
        data = Types::SamlAuthentication.new
        data.status = map['status']
        data.configuration = (Parsers::SamlConfiguration.parse(map['configuration']) unless map['configuration'].nil?)
        return data
      end
    end

    class SamlConfiguration
      def self.parse(map)
        data = Types::SamlConfiguration.new
        data.idp_metadata = (Parsers::IdpMetadata.parse(map['idpMetadata']) unless map['idpMetadata'].nil?)
        data.assertion_attributes = (Parsers::AssertionAttributes.parse(map['assertionAttributes']) unless map['assertionAttributes'].nil?)
        data.role_values = (Parsers::RoleValues.parse(map['roleValues']) unless map['roleValues'].nil?)
        data.allowed_organizations = (Parsers::AllowedOrganizations.parse(map['allowedOrganizations']) unless map['allowedOrganizations'].nil?)
        data.login_validity_duration = map['loginValidityDuration']
        return data
      end
    end

    class AllowedOrganizations
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class RoleValues
      def self.parse(map)
        data = Types::RoleValues.new
        data.editor = (Parsers::RoleValueList.parse(map['editor']) unless map['editor'].nil?)
        data.admin = (Parsers::RoleValueList.parse(map['admin']) unless map['admin'].nil?)
        return data
      end
    end

    class RoleValueList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class AssertionAttributes
      def self.parse(map)
        data = Types::AssertionAttributes.new
        data.name = map['name']
        data.login = map['login']
        data.email = map['email']
        data.groups = map['groups']
        data.role = map['role']
        data.org = map['org']
        return data
      end
    end

    class IdpMetadata
      def self.parse(map)
        key, value = map.flatten
        case key
        when 'url'
          value = value
          Types::IdpMetadata::Url.new(value) if value
        when 'xml'
          value = value
          Types::IdpMetadata::Xml.new(value) if value
        else
          Types::IdpMetadata::Unknown.new({name: key, value: value})
        end
      end
    end

    # Operation Parser for DisassociateLicense
    class DisassociateLicense
      def self.parse(http_resp)
        data = Types::DisassociateLicenseOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.workspace = (Parsers::WorkspaceDescription.parse(map['workspace']) unless map['workspace'].nil?)
        data
      end
    end

    # Operation Parser for ListPermissions
    class ListPermissions
      def self.parse(http_resp)
        data = Types::ListPermissionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['nextToken']
        data.permissions = (Parsers::PermissionEntryList.parse(map['permissions']) unless map['permissions'].nil?)
        data
      end
    end

    class PermissionEntryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::PermissionEntry.parse(value) unless value.nil?
        end
        data
      end
    end

    class PermissionEntry
      def self.parse(map)
        data = Types::PermissionEntry.new
        data.user = (Parsers::User.parse(map['user']) unless map['user'].nil?)
        data.role = map['role']
        return data
      end
    end

    class User
      def self.parse(map)
        data = Types::User.new
        data.id = map['id']
        data.type = map['type']
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for ListWorkspaces
    class ListWorkspaces
      def self.parse(http_resp)
        data = Types::ListWorkspacesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.workspaces = (Parsers::WorkspaceList.parse(map['workspaces']) unless map['workspaces'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class WorkspaceList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::WorkspaceSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class WorkspaceSummary
      def self.parse(map)
        data = Types::WorkspaceSummary.new
        data.created = Time.at(map['created'].to_i) if map['created']
        data.description = map['description']
        data.endpoint = map['endpoint']
        data.grafana_version = map['grafanaVersion']
        data.id = map['id']
        data.modified = Time.at(map['modified'].to_i) if map['modified']
        data.name = map['name']
        data.notification_destinations = (Parsers::NotificationDestinationsList.parse(map['notificationDestinations']) unless map['notificationDestinations'].nil?)
        data.status = map['status']
        data.authentication = (Parsers::AuthenticationSummary.parse(map['authentication']) unless map['authentication'].nil?)
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        return data
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

    # Operation Parser for UpdatePermissions
    class UpdatePermissions
      def self.parse(http_resp)
        data = Types::UpdatePermissionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.errors = (Parsers::UpdateErrorList.parse(map['errors']) unless map['errors'].nil?)
        data
      end
    end

    class UpdateErrorList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::UpdateError.parse(value) unless value.nil?
        end
        data
      end
    end

    class UpdateError
      def self.parse(map)
        data = Types::UpdateError.new
        data.code = map['code']
        data.message = map['message'] || map['Message']
        data.caused_by = (Parsers::UpdateInstruction.parse(map['causedBy']) unless map['causedBy'].nil?)
        return data
      end
    end

    class UpdateInstruction
      def self.parse(map)
        data = Types::UpdateInstruction.new
        data.action = map['action']
        data.role = map['role']
        data.users = (Parsers::UserList.parse(map['users']) unless map['users'].nil?)
        return data
      end
    end

    class UserList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::User.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for UpdateWorkspace
    class UpdateWorkspace
      def self.parse(http_resp)
        data = Types::UpdateWorkspaceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.workspace = (Parsers::WorkspaceDescription.parse(map['workspace']) unless map['workspace'].nil?)
        data
      end
    end

    # Operation Parser for UpdateWorkspaceAuthentication
    class UpdateWorkspaceAuthentication
      def self.parse(http_resp)
        data = Types::UpdateWorkspaceAuthenticationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.authentication = (Parsers::AuthenticationDescription.parse(map['authentication']) unless map['authentication'].nil?)
        data
      end
    end
  end
end
