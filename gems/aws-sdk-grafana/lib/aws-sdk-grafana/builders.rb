# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::Grafana
  module Builders

    # Operation Builder for AssociateLicense
    class AssociateLicense
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:workspace_id].to_s.empty?
          raise ArgumentError, "HTTP label :workspace_id cannot be nil or empty."
        end
        if input[:license_type].to_s.empty?
          raise ArgumentError, "HTTP label :license_type cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workspaces/%<workspaceId>s/licenses/%<licenseType>s',
            workspaceId: Hearth::HTTP.uri_escape(input[:workspace_id].to_s),
            licenseType: Hearth::HTTP.uri_escape(input[:license_type].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for CreateWorkspace
    class CreateWorkspace
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/workspaces')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['accountAccessType'] = input[:account_access_type] unless input[:account_access_type].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        data['organizationRoleName'] = input[:organization_role_name] unless input[:organization_role_name].nil?
        data['permissionType'] = input[:permission_type] unless input[:permission_type].nil?
        data['stackSetName'] = input[:stack_set_name] unless input[:stack_set_name].nil?
        data['workspaceDataSources'] = DataSourceTypesList.build(input[:workspace_data_sources]) unless input[:workspace_data_sources].nil?
        data['workspaceDescription'] = input[:workspace_description] unless input[:workspace_description].nil?
        data['workspaceName'] = input[:workspace_name] unless input[:workspace_name].nil?
        data['workspaceNotificationDestinations'] = NotificationDestinationsList.build(input[:workspace_notification_destinations]) unless input[:workspace_notification_destinations].nil?
        data['workspaceOrganizationalUnits'] = OrganizationalUnitList.build(input[:workspace_organizational_units]) unless input[:workspace_organizational_units].nil?
        data['workspaceRoleArn'] = input[:workspace_role_arn] unless input[:workspace_role_arn].nil?
        data['authenticationProviders'] = AuthenticationProviders.build(input[:authentication_providers]) unless input[:authentication_providers].nil?
        data['tags'] = TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for TagMap
    class TagMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Builder for AuthenticationProviders
    class AuthenticationProviders
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for OrganizationalUnitList
    class OrganizationalUnitList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for NotificationDestinationsList
    class NotificationDestinationsList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for DataSourceTypesList
    class DataSourceTypesList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateWorkspaceApiKey
    class CreateWorkspaceApiKey
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:workspace_id].to_s.empty?
          raise ArgumentError, "HTTP label :workspace_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workspaces/%<workspaceId>s/apikeys',
            workspaceId: Hearth::HTTP.uri_escape(input[:workspace_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['keyName'] = input[:key_name] unless input[:key_name].nil?
        data['keyRole'] = input[:key_role] unless input[:key_role].nil?
        data['secondsToLive'] = input[:seconds_to_live] unless input[:seconds_to_live].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteWorkspace
    class DeleteWorkspace
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:workspace_id].to_s.empty?
          raise ArgumentError, "HTTP label :workspace_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workspaces/%<workspaceId>s',
            workspaceId: Hearth::HTTP.uri_escape(input[:workspace_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteWorkspaceApiKey
    class DeleteWorkspaceApiKey
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:key_name].to_s.empty?
          raise ArgumentError, "HTTP label :key_name cannot be nil or empty."
        end
        if input[:workspace_id].to_s.empty?
          raise ArgumentError, "HTTP label :workspace_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workspaces/%<workspaceId>s/apikeys/%<keyName>s',
            keyName: Hearth::HTTP.uri_escape(input[:key_name].to_s),
            workspaceId: Hearth::HTTP.uri_escape(input[:workspace_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeWorkspace
    class DescribeWorkspace
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:workspace_id].to_s.empty?
          raise ArgumentError, "HTTP label :workspace_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workspaces/%<workspaceId>s',
            workspaceId: Hearth::HTTP.uri_escape(input[:workspace_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeWorkspaceAuthentication
    class DescribeWorkspaceAuthentication
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:workspace_id].to_s.empty?
          raise ArgumentError, "HTTP label :workspace_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workspaces/%<workspaceId>s/authentication',
            workspaceId: Hearth::HTTP.uri_escape(input[:workspace_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DisassociateLicense
    class DisassociateLicense
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:workspace_id].to_s.empty?
          raise ArgumentError, "HTTP label :workspace_id cannot be nil or empty."
        end
        if input[:license_type].to_s.empty?
          raise ArgumentError, "HTTP label :license_type cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workspaces/%<workspaceId>s/licenses/%<licenseType>s',
            workspaceId: Hearth::HTTP.uri_escape(input[:workspace_id].to_s),
            licenseType: Hearth::HTTP.uri_escape(input[:license_type].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListPermissions
    class ListPermissions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:workspace_id].to_s.empty?
          raise ArgumentError, "HTTP label :workspace_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workspaces/%<workspaceId>s/permissions',
            workspaceId: Hearth::HTTP.uri_escape(input[:workspace_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['userType'] = input[:user_type].to_s unless input[:user_type].nil?
        params['userId'] = input[:user_id].to_s unless input[:user_id].nil?
        params['groupId'] = input[:group_id].to_s unless input[:group_id].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListWorkspaces
    class ListWorkspaces
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/workspaces')
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['tags'] = TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
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

    # Operation Builder for UpdatePermissions
    class UpdatePermissions
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:workspace_id].to_s.empty?
          raise ArgumentError, "HTTP label :workspace_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workspaces/%<workspaceId>s/permissions',
            workspaceId: Hearth::HTTP.uri_escape(input[:workspace_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['updateInstructionBatch'] = UpdateInstructionBatch.build(input[:update_instruction_batch]) unless input[:update_instruction_batch].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for UpdateInstructionBatch
    class UpdateInstructionBatch
      def self.build(input)
        data = []
        input.each do |element|
          data << UpdateInstruction.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for UpdateInstruction
    class UpdateInstruction
      def self.build(input)
        data = {}
        data['action'] = input[:action] unless input[:action].nil?
        data['role'] = input[:role] unless input[:role].nil?
        data['users'] = UserList.build(input[:users]) unless input[:users].nil?
        data
      end
    end

    # List Builder for UserList
    class UserList
      def self.build(input)
        data = []
        input.each do |element|
          data << User.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for User
    class User
      def self.build(input)
        data = {}
        data['id'] = input[:id] unless input[:id].nil?
        data['type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # Operation Builder for UpdateWorkspace
    class UpdateWorkspace
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:workspace_id].to_s.empty?
          raise ArgumentError, "HTTP label :workspace_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workspaces/%<workspaceId>s',
            workspaceId: Hearth::HTTP.uri_escape(input[:workspace_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['accountAccessType'] = input[:account_access_type] unless input[:account_access_type].nil?
        data['organizationRoleName'] = input[:organization_role_name] unless input[:organization_role_name].nil?
        data['permissionType'] = input[:permission_type] unless input[:permission_type].nil?
        data['stackSetName'] = input[:stack_set_name] unless input[:stack_set_name].nil?
        data['workspaceDataSources'] = DataSourceTypesList.build(input[:workspace_data_sources]) unless input[:workspace_data_sources].nil?
        data['workspaceDescription'] = input[:workspace_description] unless input[:workspace_description].nil?
        data['workspaceName'] = input[:workspace_name] unless input[:workspace_name].nil?
        data['workspaceNotificationDestinations'] = NotificationDestinationsList.build(input[:workspace_notification_destinations]) unless input[:workspace_notification_destinations].nil?
        data['workspaceOrganizationalUnits'] = OrganizationalUnitList.build(input[:workspace_organizational_units]) unless input[:workspace_organizational_units].nil?
        data['workspaceRoleArn'] = input[:workspace_role_arn] unless input[:workspace_role_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateWorkspaceAuthentication
    class UpdateWorkspaceAuthentication
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:workspace_id].to_s.empty?
          raise ArgumentError, "HTTP label :workspace_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workspaces/%<workspaceId>s/authentication',
            workspaceId: Hearth::HTTP.uri_escape(input[:workspace_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['authenticationProviders'] = AuthenticationProviders.build(input[:authentication_providers]) unless input[:authentication_providers].nil?
        data['samlConfiguration'] = SamlConfiguration.build(input[:saml_configuration]) unless input[:saml_configuration].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for SamlConfiguration
    class SamlConfiguration
      def self.build(input)
        data = {}
        data['idpMetadata'] = IdpMetadata.build(input[:idp_metadata]) unless input[:idp_metadata].nil?
        data['assertionAttributes'] = AssertionAttributes.build(input[:assertion_attributes]) unless input[:assertion_attributes].nil?
        data['roleValues'] = RoleValues.build(input[:role_values]) unless input[:role_values].nil?
        data['allowedOrganizations'] = AllowedOrganizations.build(input[:allowed_organizations]) unless input[:allowed_organizations].nil?
        data['loginValidityDuration'] = input[:login_validity_duration] unless input[:login_validity_duration].nil?
        data
      end
    end

    # List Builder for AllowedOrganizations
    class AllowedOrganizations
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for RoleValues
    class RoleValues
      def self.build(input)
        data = {}
        data['editor'] = RoleValueList.build(input[:editor]) unless input[:editor].nil?
        data['admin'] = RoleValueList.build(input[:admin]) unless input[:admin].nil?
        data
      end
    end

    # List Builder for RoleValueList
    class RoleValueList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AssertionAttributes
    class AssertionAttributes
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['login'] = input[:login] unless input[:login].nil?
        data['email'] = input[:email] unless input[:email].nil?
        data['groups'] = input[:groups] unless input[:groups].nil?
        data['role'] = input[:role] unless input[:role].nil?
        data['org'] = input[:org] unless input[:org].nil?
        data
      end
    end

    # Structure Builder for IdpMetadata
    class IdpMetadata
      def self.build(input)
        data = {}
        case input
        when Types::IdpMetadata::Url
          data['url'] = input
        when Types::IdpMetadata::Xml
          data['xml'] = input
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::IdpMetadata"
        end

        data
      end
    end
  end
end
