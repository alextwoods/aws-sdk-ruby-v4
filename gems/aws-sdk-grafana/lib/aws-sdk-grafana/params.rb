# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::Grafana
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module AllowedOrganizations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AssertionAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssertionAttributes, context: context)
        type = Types::AssertionAttributes.new
        type.name = params[:name]
        type.login = params[:login]
        type.email = params[:email]
        type.groups = params[:groups]
        type.role = params[:role]
        type.org = params[:org]
        type
      end
    end

    module AssociateLicenseInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateLicenseInput, context: context)
        type = Types::AssociateLicenseInput.new
        type.workspace_id = params[:workspace_id]
        type.license_type = params[:license_type]
        type
      end
    end

    module AssociateLicenseOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateLicenseOutput, context: context)
        type = Types::AssociateLicenseOutput.new
        type.workspace = WorkspaceDescription.build(params[:workspace], context: "#{context}[:workspace]") unless params[:workspace].nil?
        type
      end
    end

    module AuthenticationDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AuthenticationDescription, context: context)
        type = Types::AuthenticationDescription.new
        type.providers = AuthenticationProviders.build(params[:providers], context: "#{context}[:providers]") unless params[:providers].nil?
        type.saml = SamlAuthentication.build(params[:saml], context: "#{context}[:saml]") unless params[:saml].nil?
        type.aws_sso = AwsSsoAuthentication.build(params[:aws_sso], context: "#{context}[:aws_sso]") unless params[:aws_sso].nil?
        type
      end
    end

    module AuthenticationProviders
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AuthenticationSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AuthenticationSummary, context: context)
        type = Types::AuthenticationSummary.new
        type.providers = AuthenticationProviders.build(params[:providers], context: "#{context}[:providers]") unless params[:providers].nil?
        type.saml_configuration_status = params[:saml_configuration_status]
        type
      end
    end

    module AwsSsoAuthentication
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsSsoAuthentication, context: context)
        type = Types::AwsSsoAuthentication.new
        type.sso_client_id = params[:sso_client_id]
        type
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module CreateWorkspaceApiKeyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateWorkspaceApiKeyInput, context: context)
        type = Types::CreateWorkspaceApiKeyInput.new
        type.key_name = params[:key_name]
        type.key_role = params[:key_role]
        type.seconds_to_live = params[:seconds_to_live]
        type.workspace_id = params[:workspace_id]
        type
      end
    end

    module CreateWorkspaceApiKeyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateWorkspaceApiKeyOutput, context: context)
        type = Types::CreateWorkspaceApiKeyOutput.new
        type.key_name = params[:key_name]
        type.key = params[:key]
        type.workspace_id = params[:workspace_id]
        type
      end
    end

    module CreateWorkspaceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateWorkspaceInput, context: context)
        type = Types::CreateWorkspaceInput.new
        type.account_access_type = params[:account_access_type]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.organization_role_name = params[:organization_role_name]
        type.permission_type = params[:permission_type]
        type.stack_set_name = params[:stack_set_name]
        type.workspace_data_sources = DataSourceTypesList.build(params[:workspace_data_sources], context: "#{context}[:workspace_data_sources]") unless params[:workspace_data_sources].nil?
        type.workspace_description = params[:workspace_description]
        type.workspace_name = params[:workspace_name]
        type.workspace_notification_destinations = NotificationDestinationsList.build(params[:workspace_notification_destinations], context: "#{context}[:workspace_notification_destinations]") unless params[:workspace_notification_destinations].nil?
        type.workspace_organizational_units = OrganizationalUnitList.build(params[:workspace_organizational_units], context: "#{context}[:workspace_organizational_units]") unless params[:workspace_organizational_units].nil?
        type.workspace_role_arn = params[:workspace_role_arn]
        type.authentication_providers = AuthenticationProviders.build(params[:authentication_providers], context: "#{context}[:authentication_providers]") unless params[:authentication_providers].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateWorkspaceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateWorkspaceOutput, context: context)
        type = Types::CreateWorkspaceOutput.new
        type.workspace = WorkspaceDescription.build(params[:workspace], context: "#{context}[:workspace]") unless params[:workspace].nil?
        type
      end
    end

    module DataSourceTypesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DeleteWorkspaceApiKeyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteWorkspaceApiKeyInput, context: context)
        type = Types::DeleteWorkspaceApiKeyInput.new
        type.key_name = params[:key_name]
        type.workspace_id = params[:workspace_id]
        type
      end
    end

    module DeleteWorkspaceApiKeyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteWorkspaceApiKeyOutput, context: context)
        type = Types::DeleteWorkspaceApiKeyOutput.new
        type.key_name = params[:key_name]
        type.workspace_id = params[:workspace_id]
        type
      end
    end

    module DeleteWorkspaceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteWorkspaceInput, context: context)
        type = Types::DeleteWorkspaceInput.new
        type.workspace_id = params[:workspace_id]
        type
      end
    end

    module DeleteWorkspaceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteWorkspaceOutput, context: context)
        type = Types::DeleteWorkspaceOutput.new
        type.workspace = WorkspaceDescription.build(params[:workspace], context: "#{context}[:workspace]") unless params[:workspace].nil?
        type
      end
    end

    module DescribeWorkspaceAuthenticationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeWorkspaceAuthenticationInput, context: context)
        type = Types::DescribeWorkspaceAuthenticationInput.new
        type.workspace_id = params[:workspace_id]
        type
      end
    end

    module DescribeWorkspaceAuthenticationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeWorkspaceAuthenticationOutput, context: context)
        type = Types::DescribeWorkspaceAuthenticationOutput.new
        type.authentication = AuthenticationDescription.build(params[:authentication], context: "#{context}[:authentication]") unless params[:authentication].nil?
        type
      end
    end

    module DescribeWorkspaceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeWorkspaceInput, context: context)
        type = Types::DescribeWorkspaceInput.new
        type.workspace_id = params[:workspace_id]
        type
      end
    end

    module DescribeWorkspaceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeWorkspaceOutput, context: context)
        type = Types::DescribeWorkspaceOutput.new
        type.workspace = WorkspaceDescription.build(params[:workspace], context: "#{context}[:workspace]") unless params[:workspace].nil?
        type
      end
    end

    module DisassociateLicenseInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateLicenseInput, context: context)
        type = Types::DisassociateLicenseInput.new
        type.workspace_id = params[:workspace_id]
        type.license_type = params[:license_type]
        type
      end
    end

    module DisassociateLicenseOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateLicenseOutput, context: context)
        type = Types::DisassociateLicenseOutput.new
        type.workspace = WorkspaceDescription.build(params[:workspace], context: "#{context}[:workspace]") unless params[:workspace].nil?
        type
      end
    end

    module IdpMetadata
      def self.build(params, context: '')
        return params if params.is_a?(Types::IdpMetadata)
        Hearth::Validator.validate!(params, ::Hash, Types::IdpMetadata, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :url
          Types::IdpMetadata::Url.new(
            params[:url]
          )
        when :xml
          Types::IdpMetadata::Xml.new(
            params[:xml]
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :url, :xml set"
        end
      end
    end

    module InternalServerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerException, context: context)
        type = Types::InternalServerException.new
        type.message = params[:message]
        type.retry_after_seconds = params[:retry_after_seconds]
        type
      end
    end

    module ListPermissionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPermissionsInput, context: context)
        type = Types::ListPermissionsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.user_type = params[:user_type]
        type.user_id = params[:user_id]
        type.group_id = params[:group_id]
        type.workspace_id = params[:workspace_id]
        type
      end
    end

    module ListPermissionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPermissionsOutput, context: context)
        type = Types::ListPermissionsOutput.new
        type.next_token = params[:next_token]
        type.permissions = PermissionEntryList.build(params[:permissions], context: "#{context}[:permissions]") unless params[:permissions].nil?
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ListWorkspacesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListWorkspacesInput, context: context)
        type = Types::ListWorkspacesInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListWorkspacesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListWorkspacesOutput, context: context)
        type = Types::ListWorkspacesOutput.new
        type.workspaces = WorkspaceList.build(params[:workspaces], context: "#{context}[:workspaces]") unless params[:workspaces].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module NotificationDestinationsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module OrganizationalUnitList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PermissionEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PermissionEntry, context: context)
        type = Types::PermissionEntry.new
        type.user = User.build(params[:user], context: "#{context}[:user]") unless params[:user].nil?
        type.role = params[:role]
        type
      end
    end

    module PermissionEntryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PermissionEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module RoleValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module RoleValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RoleValues, context: context)
        type = Types::RoleValues.new
        type.editor = RoleValueList.build(params[:editor], context: "#{context}[:editor]") unless params[:editor].nil?
        type.admin = RoleValueList.build(params[:admin], context: "#{context}[:admin]") unless params[:admin].nil?
        type
      end
    end

    module SamlAuthentication
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SamlAuthentication, context: context)
        type = Types::SamlAuthentication.new
        type.status = params[:status]
        type.configuration = SamlConfiguration.build(params[:configuration], context: "#{context}[:configuration]") unless params[:configuration].nil?
        type
      end
    end

    module SamlConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SamlConfiguration, context: context)
        type = Types::SamlConfiguration.new
        type.idp_metadata = IdpMetadata.build(params[:idp_metadata], context: "#{context}[:idp_metadata]") unless params[:idp_metadata].nil?
        type.assertion_attributes = AssertionAttributes.build(params[:assertion_attributes], context: "#{context}[:assertion_attributes]") unless params[:assertion_attributes].nil?
        type.role_values = RoleValues.build(params[:role_values], context: "#{context}[:role_values]") unless params[:role_values].nil?
        type.allowed_organizations = AllowedOrganizations.build(params[:allowed_organizations], context: "#{context}[:allowed_organizations]") unless params[:allowed_organizations].nil?
        type.login_validity_duration = params[:login_validity_duration]
        type
      end
    end

    module ServiceQuotaExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceQuotaExceededException, context: context)
        type = Types::ServiceQuotaExceededException.new
        type.message = params[:message]
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type.service_code = params[:service_code]
        type.quota_code = params[:quota_code]
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

    module TagMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
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

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.message = params[:message]
        type.service_code = params[:service_code]
        type.quota_code = params[:quota_code]
        type.retry_after_seconds = params[:retry_after_seconds]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
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

    module UpdateError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateError, context: context)
        type = Types::UpdateError.new
        type.code = params[:code]
        type.message = params[:message]
        type.caused_by = UpdateInstruction.build(params[:caused_by], context: "#{context}[:caused_by]") unless params[:caused_by].nil?
        type
      end
    end

    module UpdateErrorList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UpdateError.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UpdateInstruction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateInstruction, context: context)
        type = Types::UpdateInstruction.new
        type.action = params[:action]
        type.role = params[:role]
        type.users = UserList.build(params[:users], context: "#{context}[:users]") unless params[:users].nil?
        type
      end
    end

    module UpdateInstructionBatch
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UpdateInstruction.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UpdatePermissionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePermissionsInput, context: context)
        type = Types::UpdatePermissionsInput.new
        type.update_instruction_batch = UpdateInstructionBatch.build(params[:update_instruction_batch], context: "#{context}[:update_instruction_batch]") unless params[:update_instruction_batch].nil?
        type.workspace_id = params[:workspace_id]
        type
      end
    end

    module UpdatePermissionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePermissionsOutput, context: context)
        type = Types::UpdatePermissionsOutput.new
        type.errors = UpdateErrorList.build(params[:errors], context: "#{context}[:errors]") unless params[:errors].nil?
        type
      end
    end

    module UpdateWorkspaceAuthenticationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateWorkspaceAuthenticationInput, context: context)
        type = Types::UpdateWorkspaceAuthenticationInput.new
        type.workspace_id = params[:workspace_id]
        type.authentication_providers = AuthenticationProviders.build(params[:authentication_providers], context: "#{context}[:authentication_providers]") unless params[:authentication_providers].nil?
        type.saml_configuration = SamlConfiguration.build(params[:saml_configuration], context: "#{context}[:saml_configuration]") unless params[:saml_configuration].nil?
        type
      end
    end

    module UpdateWorkspaceAuthenticationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateWorkspaceAuthenticationOutput, context: context)
        type = Types::UpdateWorkspaceAuthenticationOutput.new
        type.authentication = AuthenticationDescription.build(params[:authentication], context: "#{context}[:authentication]") unless params[:authentication].nil?
        type
      end
    end

    module UpdateWorkspaceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateWorkspaceInput, context: context)
        type = Types::UpdateWorkspaceInput.new
        type.account_access_type = params[:account_access_type]
        type.organization_role_name = params[:organization_role_name]
        type.permission_type = params[:permission_type]
        type.stack_set_name = params[:stack_set_name]
        type.workspace_data_sources = DataSourceTypesList.build(params[:workspace_data_sources], context: "#{context}[:workspace_data_sources]") unless params[:workspace_data_sources].nil?
        type.workspace_description = params[:workspace_description]
        type.workspace_id = params[:workspace_id]
        type.workspace_name = params[:workspace_name]
        type.workspace_notification_destinations = NotificationDestinationsList.build(params[:workspace_notification_destinations], context: "#{context}[:workspace_notification_destinations]") unless params[:workspace_notification_destinations].nil?
        type.workspace_organizational_units = OrganizationalUnitList.build(params[:workspace_organizational_units], context: "#{context}[:workspace_organizational_units]") unless params[:workspace_organizational_units].nil?
        type.workspace_role_arn = params[:workspace_role_arn]
        type
      end
    end

    module UpdateWorkspaceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateWorkspaceOutput, context: context)
        type = Types::UpdateWorkspaceOutput.new
        type.workspace = WorkspaceDescription.build(params[:workspace], context: "#{context}[:workspace]") unless params[:workspace].nil?
        type
      end
    end

    module User
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::User, context: context)
        type = Types::User.new
        type.id = params[:id]
        type.type = params[:type]
        type
      end
    end

    module UserList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << User.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type.reason = params[:reason]
        type.field_list = ValidationExceptionFieldList.build(params[:field_list], context: "#{context}[:field_list]") unless params[:field_list].nil?
        type
      end
    end

    module ValidationExceptionField
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationExceptionField, context: context)
        type = Types::ValidationExceptionField.new
        type.name = params[:name]
        type.message = params[:message]
        type
      end
    end

    module ValidationExceptionFieldList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ValidationExceptionField.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module WorkspaceDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WorkspaceDescription, context: context)
        type = Types::WorkspaceDescription.new
        type.account_access_type = params[:account_access_type]
        type.created = params[:created]
        type.data_sources = DataSourceTypesList.build(params[:data_sources], context: "#{context}[:data_sources]") unless params[:data_sources].nil?
        type.description = params[:description]
        type.endpoint = params[:endpoint]
        type.grafana_version = params[:grafana_version]
        type.id = params[:id]
        type.modified = params[:modified]
        type.name = params[:name]
        type.organization_role_name = params[:organization_role_name]
        type.notification_destinations = NotificationDestinationsList.build(params[:notification_destinations], context: "#{context}[:notification_destinations]") unless params[:notification_destinations].nil?
        type.organizational_units = OrganizationalUnitList.build(params[:organizational_units], context: "#{context}[:organizational_units]") unless params[:organizational_units].nil?
        type.permission_type = params[:permission_type]
        type.stack_set_name = params[:stack_set_name]
        type.status = params[:status]
        type.workspace_role_arn = params[:workspace_role_arn]
        type.license_type = params[:license_type]
        type.free_trial_consumed = params[:free_trial_consumed]
        type.license_expiration = params[:license_expiration]
        type.free_trial_expiration = params[:free_trial_expiration]
        type.authentication = AuthenticationSummary.build(params[:authentication], context: "#{context}[:authentication]") unless params[:authentication].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module WorkspaceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << WorkspaceSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module WorkspaceSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WorkspaceSummary, context: context)
        type = Types::WorkspaceSummary.new
        type.created = params[:created]
        type.description = params[:description]
        type.endpoint = params[:endpoint]
        type.grafana_version = params[:grafana_version]
        type.id = params[:id]
        type.modified = params[:modified]
        type.name = params[:name]
        type.notification_destinations = NotificationDestinationsList.build(params[:notification_destinations], context: "#{context}[:notification_destinations]") unless params[:notification_destinations].nil?
        type.status = params[:status]
        type.authentication = AuthenticationSummary.build(params[:authentication], context: "#{context}[:authentication]") unless params[:authentication].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

  end
end
