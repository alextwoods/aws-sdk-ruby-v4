# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Grafana
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AllowedOrganizations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AssertionAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssertionAttributes, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:login], ::String, context: "#{context}[:login]")
        Hearth::Validator.validate!(input[:email], ::String, context: "#{context}[:email]")
        Hearth::Validator.validate!(input[:groups], ::String, context: "#{context}[:groups]")
        Hearth::Validator.validate!(input[:role], ::String, context: "#{context}[:role]")
        Hearth::Validator.validate!(input[:org], ::String, context: "#{context}[:org]")
      end
    end

    class AssociateLicenseInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateLicenseInput, context: context)
        Hearth::Validator.validate!(input[:workspace_id], ::String, context: "#{context}[:workspace_id]")
        Hearth::Validator.validate!(input[:license_type], ::String, context: "#{context}[:license_type]")
      end
    end

    class AssociateLicenseOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateLicenseOutput, context: context)
        Validators::WorkspaceDescription.validate!(input[:workspace], context: "#{context}[:workspace]") unless input[:workspace].nil?
      end
    end

    class AuthenticationDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AuthenticationDescription, context: context)
        Validators::AuthenticationProviders.validate!(input[:providers], context: "#{context}[:providers]") unless input[:providers].nil?
        Validators::SamlAuthentication.validate!(input[:saml], context: "#{context}[:saml]") unless input[:saml].nil?
        Validators::AwsSsoAuthentication.validate!(input[:aws_sso], context: "#{context}[:aws_sso]") unless input[:aws_sso].nil?
      end
    end

    class AuthenticationProviders
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AuthenticationSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AuthenticationSummary, context: context)
        Validators::AuthenticationProviders.validate!(input[:providers], context: "#{context}[:providers]") unless input[:providers].nil?
        Hearth::Validator.validate!(input[:saml_configuration_status], ::String, context: "#{context}[:saml_configuration_status]")
      end
    end

    class AwsSsoAuthentication
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsSsoAuthentication, context: context)
        Hearth::Validator.validate!(input[:sso_client_id], ::String, context: "#{context}[:sso_client_id]")
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class CreateWorkspaceApiKeyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateWorkspaceApiKeyInput, context: context)
        Hearth::Validator.validate!(input[:key_name], ::String, context: "#{context}[:key_name]")
        Hearth::Validator.validate!(input[:key_role], ::String, context: "#{context}[:key_role]")
        Hearth::Validator.validate!(input[:seconds_to_live], ::Integer, context: "#{context}[:seconds_to_live]")
        Hearth::Validator.validate!(input[:workspace_id], ::String, context: "#{context}[:workspace_id]")
      end
    end

    class CreateWorkspaceApiKeyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateWorkspaceApiKeyOutput, context: context)
        Hearth::Validator.validate!(input[:key_name], ::String, context: "#{context}[:key_name]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:workspace_id], ::String, context: "#{context}[:workspace_id]")
      end
    end

    class CreateWorkspaceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateWorkspaceInput, context: context)
        Hearth::Validator.validate!(input[:account_access_type], ::String, context: "#{context}[:account_access_type]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:organization_role_name], ::String, context: "#{context}[:organization_role_name]")
        Hearth::Validator.validate!(input[:permission_type], ::String, context: "#{context}[:permission_type]")
        Hearth::Validator.validate!(input[:stack_set_name], ::String, context: "#{context}[:stack_set_name]")
        Validators::DataSourceTypesList.validate!(input[:workspace_data_sources], context: "#{context}[:workspace_data_sources]") unless input[:workspace_data_sources].nil?
        Hearth::Validator.validate!(input[:workspace_description], ::String, context: "#{context}[:workspace_description]")
        Hearth::Validator.validate!(input[:workspace_name], ::String, context: "#{context}[:workspace_name]")
        Validators::NotificationDestinationsList.validate!(input[:workspace_notification_destinations], context: "#{context}[:workspace_notification_destinations]") unless input[:workspace_notification_destinations].nil?
        Validators::OrganizationalUnitList.validate!(input[:workspace_organizational_units], context: "#{context}[:workspace_organizational_units]") unless input[:workspace_organizational_units].nil?
        Hearth::Validator.validate!(input[:workspace_role_arn], ::String, context: "#{context}[:workspace_role_arn]")
        Validators::AuthenticationProviders.validate!(input[:authentication_providers], context: "#{context}[:authentication_providers]") unless input[:authentication_providers].nil?
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateWorkspaceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateWorkspaceOutput, context: context)
        Validators::WorkspaceDescription.validate!(input[:workspace], context: "#{context}[:workspace]") unless input[:workspace].nil?
      end
    end

    class DataSourceTypesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DeleteWorkspaceApiKeyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteWorkspaceApiKeyInput, context: context)
        Hearth::Validator.validate!(input[:key_name], ::String, context: "#{context}[:key_name]")
        Hearth::Validator.validate!(input[:workspace_id], ::String, context: "#{context}[:workspace_id]")
      end
    end

    class DeleteWorkspaceApiKeyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteWorkspaceApiKeyOutput, context: context)
        Hearth::Validator.validate!(input[:key_name], ::String, context: "#{context}[:key_name]")
        Hearth::Validator.validate!(input[:workspace_id], ::String, context: "#{context}[:workspace_id]")
      end
    end

    class DeleteWorkspaceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteWorkspaceInput, context: context)
        Hearth::Validator.validate!(input[:workspace_id], ::String, context: "#{context}[:workspace_id]")
      end
    end

    class DeleteWorkspaceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteWorkspaceOutput, context: context)
        Validators::WorkspaceDescription.validate!(input[:workspace], context: "#{context}[:workspace]") unless input[:workspace].nil?
      end
    end

    class DescribeWorkspaceAuthenticationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeWorkspaceAuthenticationInput, context: context)
        Hearth::Validator.validate!(input[:workspace_id], ::String, context: "#{context}[:workspace_id]")
      end
    end

    class DescribeWorkspaceAuthenticationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeWorkspaceAuthenticationOutput, context: context)
        Validators::AuthenticationDescription.validate!(input[:authentication], context: "#{context}[:authentication]") unless input[:authentication].nil?
      end
    end

    class DescribeWorkspaceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeWorkspaceInput, context: context)
        Hearth::Validator.validate!(input[:workspace_id], ::String, context: "#{context}[:workspace_id]")
      end
    end

    class DescribeWorkspaceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeWorkspaceOutput, context: context)
        Validators::WorkspaceDescription.validate!(input[:workspace], context: "#{context}[:workspace]") unless input[:workspace].nil?
      end
    end

    class DisassociateLicenseInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateLicenseInput, context: context)
        Hearth::Validator.validate!(input[:workspace_id], ::String, context: "#{context}[:workspace_id]")
        Hearth::Validator.validate!(input[:license_type], ::String, context: "#{context}[:license_type]")
      end
    end

    class DisassociateLicenseOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateLicenseOutput, context: context)
        Validators::WorkspaceDescription.validate!(input[:workspace], context: "#{context}[:workspace]") unless input[:workspace].nil?
      end
    end

    class IdpMetadata
      def self.validate!(input, context:)
        case input
        when Types::IdpMetadata::Url
          Hearth::Validator.validate!(input.__getobj__, ::String, context: context)
        when Types::IdpMetadata::Xml
          Hearth::Validator.validate!(input.__getobj__, ::String, context: context)
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::IdpMetadata, got #{input.class}."
        end
      end

      class Url
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::String, context: context)
        end
      end

      class Xml
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::String, context: context)
        end
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:retry_after_seconds], ::Integer, context: "#{context}[:retry_after_seconds]")
      end
    end

    class ListPermissionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPermissionsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:user_type], ::String, context: "#{context}[:user_type]")
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        Hearth::Validator.validate!(input[:group_id], ::String, context: "#{context}[:group_id]")
        Hearth::Validator.validate!(input[:workspace_id], ::String, context: "#{context}[:workspace_id]")
      end
    end

    class ListPermissionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPermissionsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::PermissionEntryList.validate!(input[:permissions], context: "#{context}[:permissions]") unless input[:permissions].nil?
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ListWorkspacesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListWorkspacesInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListWorkspacesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListWorkspacesOutput, context: context)
        Validators::WorkspaceList.validate!(input[:workspaces], context: "#{context}[:workspaces]") unless input[:workspaces].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class NotificationDestinationsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class OrganizationalUnitList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PermissionEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PermissionEntry, context: context)
        Validators::User.validate!(input[:user], context: "#{context}[:user]") unless input[:user].nil?
        Hearth::Validator.validate!(input[:role], ::String, context: "#{context}[:role]")
      end
    end

    class PermissionEntryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PermissionEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class RoleValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class RoleValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RoleValues, context: context)
        Validators::RoleValueList.validate!(input[:editor], context: "#{context}[:editor]") unless input[:editor].nil?
        Validators::RoleValueList.validate!(input[:admin], context: "#{context}[:admin]") unless input[:admin].nil?
      end
    end

    class SamlAuthentication
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SamlAuthentication, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Validators::SamlConfiguration.validate!(input[:configuration], context: "#{context}[:configuration]") unless input[:configuration].nil?
      end
    end

    class SamlConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SamlConfiguration, context: context)
        Validators::IdpMetadata.validate!(input[:idp_metadata], context: "#{context}[:idp_metadata]") unless input[:idp_metadata].nil?
        Validators::AssertionAttributes.validate!(input[:assertion_attributes], context: "#{context}[:assertion_attributes]") unless input[:assertion_attributes].nil?
        Validators::RoleValues.validate!(input[:role_values], context: "#{context}[:role_values]") unless input[:role_values].nil?
        Validators::AllowedOrganizations.validate!(input[:allowed_organizations], context: "#{context}[:allowed_organizations]") unless input[:allowed_organizations].nil?
        Hearth::Validator.validate!(input[:login_validity_duration], ::Integer, context: "#{context}[:login_validity_duration]")
      end
    end

    class ServiceQuotaExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceQuotaExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:service_code], ::String, context: "#{context}[:service_code]")
        Hearth::Validator.validate!(input[:quota_code], ::String, context: "#{context}[:quota_code]")
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

    class TagMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:service_code], ::String, context: "#{context}[:service_code]")
        Hearth::Validator.validate!(input[:quota_code], ::String, context: "#{context}[:quota_code]")
        Hearth::Validator.validate!(input[:retry_after_seconds], ::Integer, context: "#{context}[:retry_after_seconds]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagKeys.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateError, context: context)
        Hearth::Validator.validate!(input[:code], ::Integer, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Validators::UpdateInstruction.validate!(input[:caused_by], context: "#{context}[:caused_by]") unless input[:caused_by].nil?
      end
    end

    class UpdateErrorList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::UpdateError.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UpdateInstruction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateInstruction, context: context)
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        Hearth::Validator.validate!(input[:role], ::String, context: "#{context}[:role]")
        Validators::UserList.validate!(input[:users], context: "#{context}[:users]") unless input[:users].nil?
      end
    end

    class UpdateInstructionBatch
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::UpdateInstruction.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UpdatePermissionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePermissionsInput, context: context)
        Validators::UpdateInstructionBatch.validate!(input[:update_instruction_batch], context: "#{context}[:update_instruction_batch]") unless input[:update_instruction_batch].nil?
        Hearth::Validator.validate!(input[:workspace_id], ::String, context: "#{context}[:workspace_id]")
      end
    end

    class UpdatePermissionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePermissionsOutput, context: context)
        Validators::UpdateErrorList.validate!(input[:errors], context: "#{context}[:errors]") unless input[:errors].nil?
      end
    end

    class UpdateWorkspaceAuthenticationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateWorkspaceAuthenticationInput, context: context)
        Hearth::Validator.validate!(input[:workspace_id], ::String, context: "#{context}[:workspace_id]")
        Validators::AuthenticationProviders.validate!(input[:authentication_providers], context: "#{context}[:authentication_providers]") unless input[:authentication_providers].nil?
        Validators::SamlConfiguration.validate!(input[:saml_configuration], context: "#{context}[:saml_configuration]") unless input[:saml_configuration].nil?
      end
    end

    class UpdateWorkspaceAuthenticationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateWorkspaceAuthenticationOutput, context: context)
        Validators::AuthenticationDescription.validate!(input[:authentication], context: "#{context}[:authentication]") unless input[:authentication].nil?
      end
    end

    class UpdateWorkspaceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateWorkspaceInput, context: context)
        Hearth::Validator.validate!(input[:account_access_type], ::String, context: "#{context}[:account_access_type]")
        Hearth::Validator.validate!(input[:organization_role_name], ::String, context: "#{context}[:organization_role_name]")
        Hearth::Validator.validate!(input[:permission_type], ::String, context: "#{context}[:permission_type]")
        Hearth::Validator.validate!(input[:stack_set_name], ::String, context: "#{context}[:stack_set_name]")
        Validators::DataSourceTypesList.validate!(input[:workspace_data_sources], context: "#{context}[:workspace_data_sources]") unless input[:workspace_data_sources].nil?
        Hearth::Validator.validate!(input[:workspace_description], ::String, context: "#{context}[:workspace_description]")
        Hearth::Validator.validate!(input[:workspace_id], ::String, context: "#{context}[:workspace_id]")
        Hearth::Validator.validate!(input[:workspace_name], ::String, context: "#{context}[:workspace_name]")
        Validators::NotificationDestinationsList.validate!(input[:workspace_notification_destinations], context: "#{context}[:workspace_notification_destinations]") unless input[:workspace_notification_destinations].nil?
        Validators::OrganizationalUnitList.validate!(input[:workspace_organizational_units], context: "#{context}[:workspace_organizational_units]") unless input[:workspace_organizational_units].nil?
        Hearth::Validator.validate!(input[:workspace_role_arn], ::String, context: "#{context}[:workspace_role_arn]")
      end
    end

    class UpdateWorkspaceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateWorkspaceOutput, context: context)
        Validators::WorkspaceDescription.validate!(input[:workspace], context: "#{context}[:workspace]") unless input[:workspace].nil?
      end
    end

    class User
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::User, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class UserList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::User.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
        Validators::ValidationExceptionFieldList.validate!(input[:field_list], context: "#{context}[:field_list]") unless input[:field_list].nil?
      end
    end

    class ValidationExceptionField
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationExceptionField, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ValidationExceptionFieldList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ValidationExceptionField.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class WorkspaceDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WorkspaceDescription, context: context)
        Hearth::Validator.validate!(input[:account_access_type], ::String, context: "#{context}[:account_access_type]")
        Hearth::Validator.validate!(input[:created], ::Time, context: "#{context}[:created]")
        Validators::DataSourceTypesList.validate!(input[:data_sources], context: "#{context}[:data_sources]") unless input[:data_sources].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:endpoint], ::String, context: "#{context}[:endpoint]")
        Hearth::Validator.validate!(input[:grafana_version], ::String, context: "#{context}[:grafana_version]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:modified], ::Time, context: "#{context}[:modified]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:organization_role_name], ::String, context: "#{context}[:organization_role_name]")
        Validators::NotificationDestinationsList.validate!(input[:notification_destinations], context: "#{context}[:notification_destinations]") unless input[:notification_destinations].nil?
        Validators::OrganizationalUnitList.validate!(input[:organizational_units], context: "#{context}[:organizational_units]") unless input[:organizational_units].nil?
        Hearth::Validator.validate!(input[:permission_type], ::String, context: "#{context}[:permission_type]")
        Hearth::Validator.validate!(input[:stack_set_name], ::String, context: "#{context}[:stack_set_name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:workspace_role_arn], ::String, context: "#{context}[:workspace_role_arn]")
        Hearth::Validator.validate!(input[:license_type], ::String, context: "#{context}[:license_type]")
        Hearth::Validator.validate!(input[:free_trial_consumed], ::TrueClass, ::FalseClass, context: "#{context}[:free_trial_consumed]")
        Hearth::Validator.validate!(input[:license_expiration], ::Time, context: "#{context}[:license_expiration]")
        Hearth::Validator.validate!(input[:free_trial_expiration], ::Time, context: "#{context}[:free_trial_expiration]")
        Validators::AuthenticationSummary.validate!(input[:authentication], context: "#{context}[:authentication]") unless input[:authentication].nil?
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class WorkspaceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::WorkspaceSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class WorkspaceSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WorkspaceSummary, context: context)
        Hearth::Validator.validate!(input[:created], ::Time, context: "#{context}[:created]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:endpoint], ::String, context: "#{context}[:endpoint]")
        Hearth::Validator.validate!(input[:grafana_version], ::String, context: "#{context}[:grafana_version]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:modified], ::Time, context: "#{context}[:modified]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::NotificationDestinationsList.validate!(input[:notification_destinations], context: "#{context}[:notification_destinations]") unless input[:notification_destinations].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Validators::AuthenticationSummary.validate!(input[:authentication], context: "#{context}[:authentication]") unless input[:authentication].nil?
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

  end
end
