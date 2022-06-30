# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::WorkSpaces
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AccountModification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccountModification, context: context)
        Hearth::Validator.validate!(input[:modification_state], ::String, context: "#{context}[:modification_state]")
        Hearth::Validator.validate!(input[:dedicated_tenancy_support], ::String, context: "#{context}[:dedicated_tenancy_support]")
        Hearth::Validator.validate!(input[:dedicated_tenancy_management_cidr_range], ::String, context: "#{context}[:dedicated_tenancy_management_cidr_range]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class AccountModificationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AccountModification.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ApplicationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AssociateConnectionAliasInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateConnectionAliasInput, context: context)
        Hearth::Validator.validate!(input[:alias_id], ::String, context: "#{context}[:alias_id]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
      end
    end

    class AssociateConnectionAliasOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateConnectionAliasOutput, context: context)
        Hearth::Validator.validate!(input[:connection_identifier], ::String, context: "#{context}[:connection_identifier]")
      end
    end

    class AssociateIpGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateIpGroupsInput, context: context)
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
        Validators::IpGroupIdList.validate!(input[:group_ids], context: "#{context}[:group_ids]") unless input[:group_ids].nil?
      end
    end

    class AssociateIpGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateIpGroupsOutput, context: context)
      end
    end

    class AuthorizeIpRulesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AuthorizeIpRulesInput, context: context)
        Hearth::Validator.validate!(input[:group_id], ::String, context: "#{context}[:group_id]")
        Validators::IpRuleList.validate!(input[:user_rules], context: "#{context}[:user_rules]") unless input[:user_rules].nil?
      end
    end

    class AuthorizeIpRulesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AuthorizeIpRulesOutput, context: context)
      end
    end

    class BundleIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class BundleList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::WorkspaceBundle.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ClientDeviceTypeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ClientProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClientProperties, context: context)
        Hearth::Validator.validate!(input[:reconnect_enabled], ::String, context: "#{context}[:reconnect_enabled]")
      end
    end

    class ClientPropertiesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ClientPropertiesResult.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ClientPropertiesResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClientPropertiesResult, context: context)
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Validators::ClientProperties.validate!(input[:client_properties], context: "#{context}[:client_properties]") unless input[:client_properties].nil?
      end
    end

    class ComputeType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ComputeType, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class ConnectClientAddIn
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConnectClientAddIn, context: context)
        Hearth::Validator.validate!(input[:add_in_id], ::String, context: "#{context}[:add_in_id]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
      end
    end

    class ConnectClientAddInList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ConnectClientAddIn.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConnectionAlias
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConnectionAlias, context: context)
        Hearth::Validator.validate!(input[:connection_string], ::String, context: "#{context}[:connection_string]")
        Hearth::Validator.validate!(input[:alias_id], ::String, context: "#{context}[:alias_id]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:owner_account_id], ::String, context: "#{context}[:owner_account_id]")
        Validators::ConnectionAliasAssociationList.validate!(input[:associations], context: "#{context}[:associations]") unless input[:associations].nil?
      end
    end

    class ConnectionAliasAssociation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConnectionAliasAssociation, context: context)
        Hearth::Validator.validate!(input[:association_status], ::String, context: "#{context}[:association_status]")
        Hearth::Validator.validate!(input[:associated_account_id], ::String, context: "#{context}[:associated_account_id]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:connection_identifier], ::String, context: "#{context}[:connection_identifier]")
      end
    end

    class ConnectionAliasAssociationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ConnectionAliasAssociation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConnectionAliasIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ConnectionAliasList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ConnectionAlias.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConnectionAliasPermission
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConnectionAliasPermission, context: context)
        Hearth::Validator.validate!(input[:shared_account_id], ::String, context: "#{context}[:shared_account_id]")
        Hearth::Validator.validate!(input[:allow_association], ::TrueClass, ::FalseClass, context: "#{context}[:allow_association]")
      end
    end

    class ConnectionAliasPermissions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ConnectionAliasPermission.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CopyWorkspaceImageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CopyWorkspaceImageInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:source_image_id], ::String, context: "#{context}[:source_image_id]")
        Hearth::Validator.validate!(input[:source_region], ::String, context: "#{context}[:source_region]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CopyWorkspaceImageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CopyWorkspaceImageOutput, context: context)
        Hearth::Validator.validate!(input[:image_id], ::String, context: "#{context}[:image_id]")
      end
    end

    class CreateConnectClientAddInInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateConnectClientAddInInput, context: context)
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
      end
    end

    class CreateConnectClientAddInOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateConnectClientAddInOutput, context: context)
        Hearth::Validator.validate!(input[:add_in_id], ::String, context: "#{context}[:add_in_id]")
      end
    end

    class CreateConnectionAliasInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateConnectionAliasInput, context: context)
        Hearth::Validator.validate!(input[:connection_string], ::String, context: "#{context}[:connection_string]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateConnectionAliasOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateConnectionAliasOutput, context: context)
        Hearth::Validator.validate!(input[:alias_id], ::String, context: "#{context}[:alias_id]")
      end
    end

    class CreateIpGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateIpGroupInput, context: context)
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Hearth::Validator.validate!(input[:group_desc], ::String, context: "#{context}[:group_desc]")
        Validators::IpRuleList.validate!(input[:user_rules], context: "#{context}[:user_rules]") unless input[:user_rules].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateIpGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateIpGroupOutput, context: context)
        Hearth::Validator.validate!(input[:group_id], ::String, context: "#{context}[:group_id]")
      end
    end

    class CreateTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTagsInput, context: context)
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTagsOutput, context: context)
      end
    end

    class CreateUpdatedWorkspaceImageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateUpdatedWorkspaceImageInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:source_image_id], ::String, context: "#{context}[:source_image_id]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateUpdatedWorkspaceImageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateUpdatedWorkspaceImageOutput, context: context)
        Hearth::Validator.validate!(input[:image_id], ::String, context: "#{context}[:image_id]")
      end
    end

    class CreateWorkspaceBundleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateWorkspaceBundleInput, context: context)
        Hearth::Validator.validate!(input[:bundle_name], ::String, context: "#{context}[:bundle_name]")
        Hearth::Validator.validate!(input[:bundle_description], ::String, context: "#{context}[:bundle_description]")
        Hearth::Validator.validate!(input[:image_id], ::String, context: "#{context}[:image_id]")
        Validators::ComputeType.validate!(input[:compute_type], context: "#{context}[:compute_type]") unless input[:compute_type].nil?
        Validators::UserStorage.validate!(input[:user_storage], context: "#{context}[:user_storage]") unless input[:user_storage].nil?
        Validators::RootStorage.validate!(input[:root_storage], context: "#{context}[:root_storage]") unless input[:root_storage].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateWorkspaceBundleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateWorkspaceBundleOutput, context: context)
        Validators::WorkspaceBundle.validate!(input[:workspace_bundle], context: "#{context}[:workspace_bundle]") unless input[:workspace_bundle].nil?
      end
    end

    class CreateWorkspacesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateWorkspacesInput, context: context)
        Validators::WorkspaceRequestList.validate!(input[:workspaces], context: "#{context}[:workspaces]") unless input[:workspaces].nil?
      end
    end

    class CreateWorkspacesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateWorkspacesOutput, context: context)
        Validators::FailedCreateWorkspaceRequests.validate!(input[:failed_requests], context: "#{context}[:failed_requests]") unless input[:failed_requests].nil?
        Validators::WorkspaceList.validate!(input[:pending_requests], context: "#{context}[:pending_requests]") unless input[:pending_requests].nil?
      end
    end

    class DedicatedTenancyCidrRangeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DefaultClientBrandingAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DefaultClientBrandingAttributes, context: context)
        Hearth::Validator.validate!(input[:logo_url], ::String, context: "#{context}[:logo_url]")
        Hearth::Validator.validate!(input[:support_email], ::String, context: "#{context}[:support_email]")
        Hearth::Validator.validate!(input[:support_link], ::String, context: "#{context}[:support_link]")
        Hearth::Validator.validate!(input[:forgot_password_link], ::String, context: "#{context}[:forgot_password_link]")
        Validators::LoginMessage.validate!(input[:login_message], context: "#{context}[:login_message]") unless input[:login_message].nil?
      end
    end

    class DefaultImportClientBrandingAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DefaultImportClientBrandingAttributes, context: context)
        Hearth::Validator.validate!(input[:logo], ::String, context: "#{context}[:logo]")
        Hearth::Validator.validate!(input[:support_email], ::String, context: "#{context}[:support_email]")
        Hearth::Validator.validate!(input[:support_link], ::String, context: "#{context}[:support_link]")
        Hearth::Validator.validate!(input[:forgot_password_link], ::String, context: "#{context}[:forgot_password_link]")
        Validators::LoginMessage.validate!(input[:login_message], context: "#{context}[:login_message]") unless input[:login_message].nil?
      end
    end

    class DefaultWorkspaceCreationProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DefaultWorkspaceCreationProperties, context: context)
        Hearth::Validator.validate!(input[:enable_work_docs], ::TrueClass, ::FalseClass, context: "#{context}[:enable_work_docs]")
        Hearth::Validator.validate!(input[:enable_internet_access], ::TrueClass, ::FalseClass, context: "#{context}[:enable_internet_access]")
        Hearth::Validator.validate!(input[:default_ou], ::String, context: "#{context}[:default_ou]")
        Hearth::Validator.validate!(input[:custom_security_group_id], ::String, context: "#{context}[:custom_security_group_id]")
        Hearth::Validator.validate!(input[:user_enabled_as_local_administrator], ::TrueClass, ::FalseClass, context: "#{context}[:user_enabled_as_local_administrator]")
        Hearth::Validator.validate!(input[:enable_maintenance_mode], ::TrueClass, ::FalseClass, context: "#{context}[:enable_maintenance_mode]")
      end
    end

    class DeleteClientBrandingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteClientBrandingInput, context: context)
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Validators::ClientDeviceTypeList.validate!(input[:platforms], context: "#{context}[:platforms]") unless input[:platforms].nil?
      end
    end

    class DeleteClientBrandingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteClientBrandingOutput, context: context)
      end
    end

    class DeleteConnectClientAddInInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteConnectClientAddInInput, context: context)
        Hearth::Validator.validate!(input[:add_in_id], ::String, context: "#{context}[:add_in_id]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
      end
    end

    class DeleteConnectClientAddInOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteConnectClientAddInOutput, context: context)
      end
    end

    class DeleteConnectionAliasInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteConnectionAliasInput, context: context)
        Hearth::Validator.validate!(input[:alias_id], ::String, context: "#{context}[:alias_id]")
      end
    end

    class DeleteConnectionAliasOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteConnectionAliasOutput, context: context)
      end
    end

    class DeleteIpGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteIpGroupInput, context: context)
        Hearth::Validator.validate!(input[:group_id], ::String, context: "#{context}[:group_id]")
      end
    end

    class DeleteIpGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteIpGroupOutput, context: context)
      end
    end

    class DeleteTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTagsInput, context: context)
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Validators::TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class DeleteTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTagsOutput, context: context)
      end
    end

    class DeleteWorkspaceBundleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteWorkspaceBundleInput, context: context)
        Hearth::Validator.validate!(input[:bundle_id], ::String, context: "#{context}[:bundle_id]")
      end
    end

    class DeleteWorkspaceBundleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteWorkspaceBundleOutput, context: context)
      end
    end

    class DeleteWorkspaceImageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteWorkspaceImageInput, context: context)
        Hearth::Validator.validate!(input[:image_id], ::String, context: "#{context}[:image_id]")
      end
    end

    class DeleteWorkspaceImageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteWorkspaceImageOutput, context: context)
      end
    end

    class DeregisterWorkspaceDirectoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterWorkspaceDirectoryInput, context: context)
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
      end
    end

    class DeregisterWorkspaceDirectoryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterWorkspaceDirectoryOutput, context: context)
      end
    end

    class DescribeAccountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAccountInput, context: context)
      end
    end

    class DescribeAccountModificationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAccountModificationsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeAccountModificationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAccountModificationsOutput, context: context)
        Validators::AccountModificationList.validate!(input[:account_modifications], context: "#{context}[:account_modifications]") unless input[:account_modifications].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeAccountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAccountOutput, context: context)
        Hearth::Validator.validate!(input[:dedicated_tenancy_support], ::String, context: "#{context}[:dedicated_tenancy_support]")
        Hearth::Validator.validate!(input[:dedicated_tenancy_management_cidr_range], ::String, context: "#{context}[:dedicated_tenancy_management_cidr_range]")
      end
    end

    class DescribeClientBrandingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeClientBrandingInput, context: context)
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
      end
    end

    class DescribeClientBrandingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeClientBrandingOutput, context: context)
        Validators::DefaultClientBrandingAttributes.validate!(input[:device_type_windows], context: "#{context}[:device_type_windows]") unless input[:device_type_windows].nil?
        Validators::DefaultClientBrandingAttributes.validate!(input[:device_type_osx], context: "#{context}[:device_type_osx]") unless input[:device_type_osx].nil?
        Validators::DefaultClientBrandingAttributes.validate!(input[:device_type_android], context: "#{context}[:device_type_android]") unless input[:device_type_android].nil?
        Validators::IosClientBrandingAttributes.validate!(input[:device_type_ios], context: "#{context}[:device_type_ios]") unless input[:device_type_ios].nil?
        Validators::DefaultClientBrandingAttributes.validate!(input[:device_type_linux], context: "#{context}[:device_type_linux]") unless input[:device_type_linux].nil?
        Validators::DefaultClientBrandingAttributes.validate!(input[:device_type_web], context: "#{context}[:device_type_web]") unless input[:device_type_web].nil?
      end
    end

    class DescribeClientPropertiesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeClientPropertiesInput, context: context)
        Validators::ResourceIdList.validate!(input[:resource_ids], context: "#{context}[:resource_ids]") unless input[:resource_ids].nil?
      end
    end

    class DescribeClientPropertiesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeClientPropertiesOutput, context: context)
        Validators::ClientPropertiesList.validate!(input[:client_properties_list], context: "#{context}[:client_properties_list]") unless input[:client_properties_list].nil?
      end
    end

    class DescribeConnectClientAddInsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeConnectClientAddInsInput, context: context)
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeConnectClientAddInsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeConnectClientAddInsOutput, context: context)
        Validators::ConnectClientAddInList.validate!(input[:add_ins], context: "#{context}[:add_ins]") unless input[:add_ins].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeConnectionAliasPermissionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeConnectionAliasPermissionsInput, context: context)
        Hearth::Validator.validate!(input[:alias_id], ::String, context: "#{context}[:alias_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeConnectionAliasPermissionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeConnectionAliasPermissionsOutput, context: context)
        Hearth::Validator.validate!(input[:alias_id], ::String, context: "#{context}[:alias_id]")
        Validators::ConnectionAliasPermissions.validate!(input[:connection_alias_permissions], context: "#{context}[:connection_alias_permissions]") unless input[:connection_alias_permissions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeConnectionAliasesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeConnectionAliasesInput, context: context)
        Validators::ConnectionAliasIdList.validate!(input[:alias_ids], context: "#{context}[:alias_ids]") unless input[:alias_ids].nil?
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeConnectionAliasesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeConnectionAliasesOutput, context: context)
        Validators::ConnectionAliasList.validate!(input[:connection_aliases], context: "#{context}[:connection_aliases]") unless input[:connection_aliases].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeIpGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeIpGroupsInput, context: context)
        Validators::IpGroupIdList.validate!(input[:group_ids], context: "#{context}[:group_ids]") unless input[:group_ids].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeIpGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeIpGroupsOutput, context: context)
        Validators::WorkspacesIpGroupsList.validate!(input[:result], context: "#{context}[:result]") unless input[:result].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTagsInput, context: context)
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
      end
    end

    class DescribeTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTagsOutput, context: context)
        Validators::TagList.validate!(input[:tag_list], context: "#{context}[:tag_list]") unless input[:tag_list].nil?
      end
    end

    class DescribeWorkspaceBundlesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeWorkspaceBundlesInput, context: context)
        Validators::BundleIdList.validate!(input[:bundle_ids], context: "#{context}[:bundle_ids]") unless input[:bundle_ids].nil?
        Hearth::Validator.validate!(input[:owner], ::String, context: "#{context}[:owner]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeWorkspaceBundlesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeWorkspaceBundlesOutput, context: context)
        Validators::BundleList.validate!(input[:bundles], context: "#{context}[:bundles]") unless input[:bundles].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeWorkspaceDirectoriesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeWorkspaceDirectoriesInput, context: context)
        Validators::DirectoryIdList.validate!(input[:directory_ids], context: "#{context}[:directory_ids]") unless input[:directory_ids].nil?
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeWorkspaceDirectoriesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeWorkspaceDirectoriesOutput, context: context)
        Validators::DirectoryList.validate!(input[:directories], context: "#{context}[:directories]") unless input[:directories].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeWorkspaceImagePermissionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeWorkspaceImagePermissionsInput, context: context)
        Hearth::Validator.validate!(input[:image_id], ::String, context: "#{context}[:image_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeWorkspaceImagePermissionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeWorkspaceImagePermissionsOutput, context: context)
        Hearth::Validator.validate!(input[:image_id], ::String, context: "#{context}[:image_id]")
        Validators::ImagePermissions.validate!(input[:image_permissions], context: "#{context}[:image_permissions]") unless input[:image_permissions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeWorkspaceImagesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeWorkspaceImagesInput, context: context)
        Validators::WorkspaceImageIdList.validate!(input[:image_ids], context: "#{context}[:image_ids]") unless input[:image_ids].nil?
        Hearth::Validator.validate!(input[:image_type], ::String, context: "#{context}[:image_type]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeWorkspaceImagesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeWorkspaceImagesOutput, context: context)
        Validators::WorkspaceImageList.validate!(input[:images], context: "#{context}[:images]") unless input[:images].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeWorkspaceSnapshotsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeWorkspaceSnapshotsInput, context: context)
        Hearth::Validator.validate!(input[:workspace_id], ::String, context: "#{context}[:workspace_id]")
      end
    end

    class DescribeWorkspaceSnapshotsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeWorkspaceSnapshotsOutput, context: context)
        Validators::SnapshotList.validate!(input[:rebuild_snapshots], context: "#{context}[:rebuild_snapshots]") unless input[:rebuild_snapshots].nil?
        Validators::SnapshotList.validate!(input[:restore_snapshots], context: "#{context}[:restore_snapshots]") unless input[:restore_snapshots].nil?
      end
    end

    class DescribeWorkspacesConnectionStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeWorkspacesConnectionStatusInput, context: context)
        Validators::WorkspaceIdList.validate!(input[:workspace_ids], context: "#{context}[:workspace_ids]") unless input[:workspace_ids].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeWorkspacesConnectionStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeWorkspacesConnectionStatusOutput, context: context)
        Validators::WorkspaceConnectionStatusList.validate!(input[:workspaces_connection_status], context: "#{context}[:workspaces_connection_status]") unless input[:workspaces_connection_status].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeWorkspacesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeWorkspacesInput, context: context)
        Validators::WorkspaceIdList.validate!(input[:workspace_ids], context: "#{context}[:workspace_ids]") unless input[:workspace_ids].nil?
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:bundle_id], ::String, context: "#{context}[:bundle_id]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeWorkspacesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeWorkspacesOutput, context: context)
        Validators::WorkspaceList.validate!(input[:workspaces], context: "#{context}[:workspaces]") unless input[:workspaces].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DirectoryIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DirectoryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::WorkspaceDirectory.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DisassociateConnectionAliasInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateConnectionAliasInput, context: context)
        Hearth::Validator.validate!(input[:alias_id], ::String, context: "#{context}[:alias_id]")
      end
    end

    class DisassociateConnectionAliasOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateConnectionAliasOutput, context: context)
      end
    end

    class DisassociateIpGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateIpGroupsInput, context: context)
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
        Validators::IpGroupIdList.validate!(input[:group_ids], context: "#{context}[:group_ids]") unless input[:group_ids].nil?
      end
    end

    class DisassociateIpGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateIpGroupsOutput, context: context)
      end
    end

    class DnsIpAddresses
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class FailedCreateWorkspaceRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FailedCreateWorkspaceRequest, context: context)
        Validators::WorkspaceRequest.validate!(input[:workspace_request], context: "#{context}[:workspace_request]") unless input[:workspace_request].nil?
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class FailedCreateWorkspaceRequests
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::FailedCreateWorkspaceRequest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FailedRebootWorkspaceRequests
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::FailedWorkspaceChangeRequest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FailedRebuildWorkspaceRequests
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::FailedWorkspaceChangeRequest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FailedStartWorkspaceRequests
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::FailedWorkspaceChangeRequest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FailedStopWorkspaceRequests
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::FailedWorkspaceChangeRequest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FailedTerminateWorkspaceRequests
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::FailedWorkspaceChangeRequest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FailedWorkspaceChangeRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FailedWorkspaceChangeRequest, context: context)
        Hearth::Validator.validate!(input[:workspace_id], ::String, context: "#{context}[:workspace_id]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class ImagePermission
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImagePermission, context: context)
        Hearth::Validator.validate!(input[:shared_account_id], ::String, context: "#{context}[:shared_account_id]")
      end
    end

    class ImagePermissions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ImagePermission.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ImportClientBrandingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportClientBrandingInput, context: context)
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Validators::DefaultImportClientBrandingAttributes.validate!(input[:device_type_windows], context: "#{context}[:device_type_windows]") unless input[:device_type_windows].nil?
        Validators::DefaultImportClientBrandingAttributes.validate!(input[:device_type_osx], context: "#{context}[:device_type_osx]") unless input[:device_type_osx].nil?
        Validators::DefaultImportClientBrandingAttributes.validate!(input[:device_type_android], context: "#{context}[:device_type_android]") unless input[:device_type_android].nil?
        Validators::IosImportClientBrandingAttributes.validate!(input[:device_type_ios], context: "#{context}[:device_type_ios]") unless input[:device_type_ios].nil?
        Validators::DefaultImportClientBrandingAttributes.validate!(input[:device_type_linux], context: "#{context}[:device_type_linux]") unless input[:device_type_linux].nil?
        Validators::DefaultImportClientBrandingAttributes.validate!(input[:device_type_web], context: "#{context}[:device_type_web]") unless input[:device_type_web].nil?
      end
    end

    class ImportClientBrandingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportClientBrandingOutput, context: context)
        Validators::DefaultClientBrandingAttributes.validate!(input[:device_type_windows], context: "#{context}[:device_type_windows]") unless input[:device_type_windows].nil?
        Validators::DefaultClientBrandingAttributes.validate!(input[:device_type_osx], context: "#{context}[:device_type_osx]") unless input[:device_type_osx].nil?
        Validators::DefaultClientBrandingAttributes.validate!(input[:device_type_android], context: "#{context}[:device_type_android]") unless input[:device_type_android].nil?
        Validators::IosClientBrandingAttributes.validate!(input[:device_type_ios], context: "#{context}[:device_type_ios]") unless input[:device_type_ios].nil?
        Validators::DefaultClientBrandingAttributes.validate!(input[:device_type_linux], context: "#{context}[:device_type_linux]") unless input[:device_type_linux].nil?
        Validators::DefaultClientBrandingAttributes.validate!(input[:device_type_web], context: "#{context}[:device_type_web]") unless input[:device_type_web].nil?
      end
    end

    class ImportWorkspaceImageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportWorkspaceImageInput, context: context)
        Hearth::Validator.validate!(input[:ec2_image_id], ::String, context: "#{context}[:ec2_image_id]")
        Hearth::Validator.validate!(input[:ingestion_process], ::String, context: "#{context}[:ingestion_process]")
        Hearth::Validator.validate!(input[:image_name], ::String, context: "#{context}[:image_name]")
        Hearth::Validator.validate!(input[:image_description], ::String, context: "#{context}[:image_description]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::ApplicationList.validate!(input[:applications], context: "#{context}[:applications]") unless input[:applications].nil?
      end
    end

    class ImportWorkspaceImageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportWorkspaceImageOutput, context: context)
        Hearth::Validator.validate!(input[:image_id], ::String, context: "#{context}[:image_id]")
      end
    end

    class InvalidParameterValuesException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidParameterValuesException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidResourceStateException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidResourceStateException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class IosClientBrandingAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IosClientBrandingAttributes, context: context)
        Hearth::Validator.validate!(input[:logo_url], ::String, context: "#{context}[:logo_url]")
        Hearth::Validator.validate!(input[:logo2x_url], ::String, context: "#{context}[:logo2x_url]")
        Hearth::Validator.validate!(input[:logo3x_url], ::String, context: "#{context}[:logo3x_url]")
        Hearth::Validator.validate!(input[:support_email], ::String, context: "#{context}[:support_email]")
        Hearth::Validator.validate!(input[:support_link], ::String, context: "#{context}[:support_link]")
        Hearth::Validator.validate!(input[:forgot_password_link], ::String, context: "#{context}[:forgot_password_link]")
        Validators::LoginMessage.validate!(input[:login_message], context: "#{context}[:login_message]") unless input[:login_message].nil?
      end
    end

    class IosImportClientBrandingAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IosImportClientBrandingAttributes, context: context)
        Hearth::Validator.validate!(input[:logo], ::String, context: "#{context}[:logo]")
        Hearth::Validator.validate!(input[:logo2x], ::String, context: "#{context}[:logo2x]")
        Hearth::Validator.validate!(input[:logo3x], ::String, context: "#{context}[:logo3x]")
        Hearth::Validator.validate!(input[:support_email], ::String, context: "#{context}[:support_email]")
        Hearth::Validator.validate!(input[:support_link], ::String, context: "#{context}[:support_link]")
        Hearth::Validator.validate!(input[:forgot_password_link], ::String, context: "#{context}[:forgot_password_link]")
        Validators::LoginMessage.validate!(input[:login_message], context: "#{context}[:login_message]") unless input[:login_message].nil?
      end
    end

    class IpGroupIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class IpRevokedRuleList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class IpRuleItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IpRuleItem, context: context)
        Hearth::Validator.validate!(input[:ip_rule], ::String, context: "#{context}[:ip_rule]")
        Hearth::Validator.validate!(input[:rule_desc], ::String, context: "#{context}[:rule_desc]")
      end
    end

    class IpRuleList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::IpRuleItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListAvailableManagementCidrRangesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAvailableManagementCidrRangesInput, context: context)
        Hearth::Validator.validate!(input[:management_cidr_range_constraint], ::String, context: "#{context}[:management_cidr_range_constraint]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAvailableManagementCidrRangesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAvailableManagementCidrRangesOutput, context: context)
        Validators::DedicatedTenancyCidrRangeList.validate!(input[:management_cidr_ranges], context: "#{context}[:management_cidr_ranges]") unless input[:management_cidr_ranges].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class LoginMessage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class MigrateWorkspaceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MigrateWorkspaceInput, context: context)
        Hearth::Validator.validate!(input[:source_workspace_id], ::String, context: "#{context}[:source_workspace_id]")
        Hearth::Validator.validate!(input[:bundle_id], ::String, context: "#{context}[:bundle_id]")
      end
    end

    class MigrateWorkspaceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MigrateWorkspaceOutput, context: context)
        Hearth::Validator.validate!(input[:source_workspace_id], ::String, context: "#{context}[:source_workspace_id]")
        Hearth::Validator.validate!(input[:target_workspace_id], ::String, context: "#{context}[:target_workspace_id]")
      end
    end

    class ModificationState
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModificationState, context: context)
        Hearth::Validator.validate!(input[:resource], ::String, context: "#{context}[:resource]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
      end
    end

    class ModificationStateList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ModificationState.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ModifyAccountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyAccountInput, context: context)
        Hearth::Validator.validate!(input[:dedicated_tenancy_support], ::String, context: "#{context}[:dedicated_tenancy_support]")
        Hearth::Validator.validate!(input[:dedicated_tenancy_management_cidr_range], ::String, context: "#{context}[:dedicated_tenancy_management_cidr_range]")
      end
    end

    class ModifyAccountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyAccountOutput, context: context)
      end
    end

    class ModifyClientPropertiesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyClientPropertiesInput, context: context)
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Validators::ClientProperties.validate!(input[:client_properties], context: "#{context}[:client_properties]") unless input[:client_properties].nil?
      end
    end

    class ModifyClientPropertiesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyClientPropertiesOutput, context: context)
      end
    end

    class ModifySelfservicePermissionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifySelfservicePermissionsInput, context: context)
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Validators::SelfservicePermissions.validate!(input[:selfservice_permissions], context: "#{context}[:selfservice_permissions]") unless input[:selfservice_permissions].nil?
      end
    end

    class ModifySelfservicePermissionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifySelfservicePermissionsOutput, context: context)
      end
    end

    class ModifyWorkspaceAccessPropertiesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyWorkspaceAccessPropertiesInput, context: context)
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Validators::WorkspaceAccessProperties.validate!(input[:workspace_access_properties], context: "#{context}[:workspace_access_properties]") unless input[:workspace_access_properties].nil?
      end
    end

    class ModifyWorkspaceAccessPropertiesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyWorkspaceAccessPropertiesOutput, context: context)
      end
    end

    class ModifyWorkspaceCreationPropertiesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyWorkspaceCreationPropertiesInput, context: context)
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Validators::WorkspaceCreationProperties.validate!(input[:workspace_creation_properties], context: "#{context}[:workspace_creation_properties]") unless input[:workspace_creation_properties].nil?
      end
    end

    class ModifyWorkspaceCreationPropertiesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyWorkspaceCreationPropertiesOutput, context: context)
      end
    end

    class ModifyWorkspacePropertiesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyWorkspacePropertiesInput, context: context)
        Hearth::Validator.validate!(input[:workspace_id], ::String, context: "#{context}[:workspace_id]")
        Validators::WorkspaceProperties.validate!(input[:workspace_properties], context: "#{context}[:workspace_properties]") unless input[:workspace_properties].nil?
      end
    end

    class ModifyWorkspacePropertiesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyWorkspacePropertiesOutput, context: context)
      end
    end

    class ModifyWorkspaceStateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyWorkspaceStateInput, context: context)
        Hearth::Validator.validate!(input[:workspace_id], ::String, context: "#{context}[:workspace_id]")
        Hearth::Validator.validate!(input[:workspace_state], ::String, context: "#{context}[:workspace_state]")
      end
    end

    class ModifyWorkspaceStateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyWorkspaceStateOutput, context: context)
      end
    end

    class OperatingSystem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OperatingSystem, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class OperationInProgressException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OperationInProgressException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class OperationNotSupportedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OperationNotSupportedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RebootRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RebootRequest, context: context)
        Hearth::Validator.validate!(input[:workspace_id], ::String, context: "#{context}[:workspace_id]")
      end
    end

    class RebootWorkspaceRequests
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RebootRequest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RebootWorkspacesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RebootWorkspacesInput, context: context)
        Validators::RebootWorkspaceRequests.validate!(input[:reboot_workspace_requests], context: "#{context}[:reboot_workspace_requests]") unless input[:reboot_workspace_requests].nil?
      end
    end

    class RebootWorkspacesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RebootWorkspacesOutput, context: context)
        Validators::FailedRebootWorkspaceRequests.validate!(input[:failed_requests], context: "#{context}[:failed_requests]") unless input[:failed_requests].nil?
      end
    end

    class RebuildRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RebuildRequest, context: context)
        Hearth::Validator.validate!(input[:workspace_id], ::String, context: "#{context}[:workspace_id]")
      end
    end

    class RebuildWorkspaceRequests
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RebuildRequest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RebuildWorkspacesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RebuildWorkspacesInput, context: context)
        Validators::RebuildWorkspaceRequests.validate!(input[:rebuild_workspace_requests], context: "#{context}[:rebuild_workspace_requests]") unless input[:rebuild_workspace_requests].nil?
      end
    end

    class RebuildWorkspacesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RebuildWorkspacesOutput, context: context)
        Validators::FailedRebuildWorkspaceRequests.validate!(input[:failed_requests], context: "#{context}[:failed_requests]") unless input[:failed_requests].nil?
      end
    end

    class RegisterWorkspaceDirectoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterWorkspaceDirectoryInput, context: context)
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
        Validators::SubnetIds.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        Hearth::Validator.validate!(input[:enable_work_docs], ::TrueClass, ::FalseClass, context: "#{context}[:enable_work_docs]")
        Hearth::Validator.validate!(input[:enable_self_service], ::TrueClass, ::FalseClass, context: "#{context}[:enable_self_service]")
        Hearth::Validator.validate!(input[:tenancy], ::String, context: "#{context}[:tenancy]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class RegisterWorkspaceDirectoryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterWorkspaceDirectoryOutput, context: context)
      end
    end

    class ResourceAlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceAlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceAssociatedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceAssociatedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceCreationFailedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceCreationFailedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ResourceLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
      end
    end

    class ResourceUnavailableException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceUnavailableException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
      end
    end

    class RestoreWorkspaceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RestoreWorkspaceInput, context: context)
        Hearth::Validator.validate!(input[:workspace_id], ::String, context: "#{context}[:workspace_id]")
      end
    end

    class RestoreWorkspaceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RestoreWorkspaceOutput, context: context)
      end
    end

    class RevokeIpRulesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RevokeIpRulesInput, context: context)
        Hearth::Validator.validate!(input[:group_id], ::String, context: "#{context}[:group_id]")
        Validators::IpRevokedRuleList.validate!(input[:user_rules], context: "#{context}[:user_rules]") unless input[:user_rules].nil?
      end
    end

    class RevokeIpRulesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RevokeIpRulesOutput, context: context)
      end
    end

    class RootStorage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RootStorage, context: context)
        Hearth::Validator.validate!(input[:capacity], ::String, context: "#{context}[:capacity]")
      end
    end

    class SelfservicePermissions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SelfservicePermissions, context: context)
        Hearth::Validator.validate!(input[:restart_workspace], ::String, context: "#{context}[:restart_workspace]")
        Hearth::Validator.validate!(input[:increase_volume_size], ::String, context: "#{context}[:increase_volume_size]")
        Hearth::Validator.validate!(input[:change_compute_type], ::String, context: "#{context}[:change_compute_type]")
        Hearth::Validator.validate!(input[:switch_running_mode], ::String, context: "#{context}[:switch_running_mode]")
        Hearth::Validator.validate!(input[:rebuild_workspace], ::String, context: "#{context}[:rebuild_workspace]")
      end
    end

    class Snapshot
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Snapshot, context: context)
        Hearth::Validator.validate!(input[:snapshot_time], ::Time, context: "#{context}[:snapshot_time]")
      end
    end

    class SnapshotList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Snapshot.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StartRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartRequest, context: context)
        Hearth::Validator.validate!(input[:workspace_id], ::String, context: "#{context}[:workspace_id]")
      end
    end

    class StartWorkspaceRequests
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::StartRequest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StartWorkspacesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartWorkspacesInput, context: context)
        Validators::StartWorkspaceRequests.validate!(input[:start_workspace_requests], context: "#{context}[:start_workspace_requests]") unless input[:start_workspace_requests].nil?
      end
    end

    class StartWorkspacesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartWorkspacesOutput, context: context)
        Validators::FailedStartWorkspaceRequests.validate!(input[:failed_requests], context: "#{context}[:failed_requests]") unless input[:failed_requests].nil?
      end
    end

    class StopRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopRequest, context: context)
        Hearth::Validator.validate!(input[:workspace_id], ::String, context: "#{context}[:workspace_id]")
      end
    end

    class StopWorkspaceRequests
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::StopRequest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StopWorkspacesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopWorkspacesInput, context: context)
        Validators::StopWorkspaceRequests.validate!(input[:stop_workspace_requests], context: "#{context}[:stop_workspace_requests]") unless input[:stop_workspace_requests].nil?
      end
    end

    class StopWorkspacesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopWorkspacesOutput, context: context)
        Validators::FailedStopWorkspaceRequests.validate!(input[:failed_requests], context: "#{context}[:failed_requests]") unless input[:failed_requests].nil?
      end
    end

    class SubnetIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TerminateRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TerminateRequest, context: context)
        Hearth::Validator.validate!(input[:workspace_id], ::String, context: "#{context}[:workspace_id]")
      end
    end

    class TerminateWorkspaceRequests
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::TerminateRequest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TerminateWorkspacesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TerminateWorkspacesInput, context: context)
        Validators::TerminateWorkspaceRequests.validate!(input[:terminate_workspace_requests], context: "#{context}[:terminate_workspace_requests]") unless input[:terminate_workspace_requests].nil?
      end
    end

    class TerminateWorkspacesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TerminateWorkspacesOutput, context: context)
        Validators::FailedTerminateWorkspaceRequests.validate!(input[:failed_requests], context: "#{context}[:failed_requests]") unless input[:failed_requests].nil?
      end
    end

    class UnsupportedNetworkConfigurationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnsupportedNetworkConfigurationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UnsupportedWorkspaceConfigurationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnsupportedWorkspaceConfigurationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UpdateConnectClientAddInInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateConnectClientAddInInput, context: context)
        Hearth::Validator.validate!(input[:add_in_id], ::String, context: "#{context}[:add_in_id]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
      end
    end

    class UpdateConnectClientAddInOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateConnectClientAddInOutput, context: context)
      end
    end

    class UpdateConnectionAliasPermissionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateConnectionAliasPermissionInput, context: context)
        Hearth::Validator.validate!(input[:alias_id], ::String, context: "#{context}[:alias_id]")
        Validators::ConnectionAliasPermission.validate!(input[:connection_alias_permission], context: "#{context}[:connection_alias_permission]") unless input[:connection_alias_permission].nil?
      end
    end

    class UpdateConnectionAliasPermissionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateConnectionAliasPermissionOutput, context: context)
      end
    end

    class UpdateResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateResult, context: context)
        Hearth::Validator.validate!(input[:update_available], ::TrueClass, ::FalseClass, context: "#{context}[:update_available]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class UpdateRulesOfIpGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRulesOfIpGroupInput, context: context)
        Hearth::Validator.validate!(input[:group_id], ::String, context: "#{context}[:group_id]")
        Validators::IpRuleList.validate!(input[:user_rules], context: "#{context}[:user_rules]") unless input[:user_rules].nil?
      end
    end

    class UpdateRulesOfIpGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRulesOfIpGroupOutput, context: context)
      end
    end

    class UpdateWorkspaceBundleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateWorkspaceBundleInput, context: context)
        Hearth::Validator.validate!(input[:bundle_id], ::String, context: "#{context}[:bundle_id]")
        Hearth::Validator.validate!(input[:image_id], ::String, context: "#{context}[:image_id]")
      end
    end

    class UpdateWorkspaceBundleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateWorkspaceBundleOutput, context: context)
      end
    end

    class UpdateWorkspaceImagePermissionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateWorkspaceImagePermissionInput, context: context)
        Hearth::Validator.validate!(input[:image_id], ::String, context: "#{context}[:image_id]")
        Hearth::Validator.validate!(input[:allow_copy_image], ::TrueClass, ::FalseClass, context: "#{context}[:allow_copy_image]")
        Hearth::Validator.validate!(input[:shared_account_id], ::String, context: "#{context}[:shared_account_id]")
      end
    end

    class UpdateWorkspaceImagePermissionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateWorkspaceImagePermissionOutput, context: context)
      end
    end

    class UserStorage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserStorage, context: context)
        Hearth::Validator.validate!(input[:capacity], ::String, context: "#{context}[:capacity]")
      end
    end

    class Workspace
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Workspace, context: context)
        Hearth::Validator.validate!(input[:workspace_id], ::String, context: "#{context}[:workspace_id]")
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:ip_address], ::String, context: "#{context}[:ip_address]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:bundle_id], ::String, context: "#{context}[:bundle_id]")
        Hearth::Validator.validate!(input[:subnet_id], ::String, context: "#{context}[:subnet_id]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:computer_name], ::String, context: "#{context}[:computer_name]")
        Hearth::Validator.validate!(input[:volume_encryption_key], ::String, context: "#{context}[:volume_encryption_key]")
        Hearth::Validator.validate!(input[:user_volume_encryption_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:user_volume_encryption_enabled]")
        Hearth::Validator.validate!(input[:root_volume_encryption_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:root_volume_encryption_enabled]")
        Validators::WorkspaceProperties.validate!(input[:workspace_properties], context: "#{context}[:workspace_properties]") unless input[:workspace_properties].nil?
        Validators::ModificationStateList.validate!(input[:modification_states], context: "#{context}[:modification_states]") unless input[:modification_states].nil?
      end
    end

    class WorkspaceAccessProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WorkspaceAccessProperties, context: context)
        Hearth::Validator.validate!(input[:device_type_windows], ::String, context: "#{context}[:device_type_windows]")
        Hearth::Validator.validate!(input[:device_type_osx], ::String, context: "#{context}[:device_type_osx]")
        Hearth::Validator.validate!(input[:device_type_web], ::String, context: "#{context}[:device_type_web]")
        Hearth::Validator.validate!(input[:device_type_ios], ::String, context: "#{context}[:device_type_ios]")
        Hearth::Validator.validate!(input[:device_type_android], ::String, context: "#{context}[:device_type_android]")
        Hearth::Validator.validate!(input[:device_type_chrome_os], ::String, context: "#{context}[:device_type_chrome_os]")
        Hearth::Validator.validate!(input[:device_type_zero_client], ::String, context: "#{context}[:device_type_zero_client]")
        Hearth::Validator.validate!(input[:device_type_linux], ::String, context: "#{context}[:device_type_linux]")
      end
    end

    class WorkspaceBundle
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WorkspaceBundle, context: context)
        Hearth::Validator.validate!(input[:bundle_id], ::String, context: "#{context}[:bundle_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:owner], ::String, context: "#{context}[:owner]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:image_id], ::String, context: "#{context}[:image_id]")
        Validators::RootStorage.validate!(input[:root_storage], context: "#{context}[:root_storage]") unless input[:root_storage].nil?
        Validators::UserStorage.validate!(input[:user_storage], context: "#{context}[:user_storage]") unless input[:user_storage].nil?
        Validators::ComputeType.validate!(input[:compute_type], context: "#{context}[:compute_type]") unless input[:compute_type].nil?
        Hearth::Validator.validate!(input[:last_updated_time], ::Time, context: "#{context}[:last_updated_time]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
      end
    end

    class WorkspaceConnectionStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WorkspaceConnectionStatus, context: context)
        Hearth::Validator.validate!(input[:workspace_id], ::String, context: "#{context}[:workspace_id]")
        Hearth::Validator.validate!(input[:connection_state], ::String, context: "#{context}[:connection_state]")
        Hearth::Validator.validate!(input[:connection_state_check_timestamp], ::Time, context: "#{context}[:connection_state_check_timestamp]")
        Hearth::Validator.validate!(input[:last_known_user_connection_timestamp], ::Time, context: "#{context}[:last_known_user_connection_timestamp]")
      end
    end

    class WorkspaceConnectionStatusList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::WorkspaceConnectionStatus.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class WorkspaceCreationProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WorkspaceCreationProperties, context: context)
        Hearth::Validator.validate!(input[:enable_work_docs], ::TrueClass, ::FalseClass, context: "#{context}[:enable_work_docs]")
        Hearth::Validator.validate!(input[:enable_internet_access], ::TrueClass, ::FalseClass, context: "#{context}[:enable_internet_access]")
        Hearth::Validator.validate!(input[:default_ou], ::String, context: "#{context}[:default_ou]")
        Hearth::Validator.validate!(input[:custom_security_group_id], ::String, context: "#{context}[:custom_security_group_id]")
        Hearth::Validator.validate!(input[:user_enabled_as_local_administrator], ::TrueClass, ::FalseClass, context: "#{context}[:user_enabled_as_local_administrator]")
        Hearth::Validator.validate!(input[:enable_maintenance_mode], ::TrueClass, ::FalseClass, context: "#{context}[:enable_maintenance_mode]")
      end
    end

    class WorkspaceDirectory
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WorkspaceDirectory, context: context)
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
        Hearth::Validator.validate!(input[:alias], ::String, context: "#{context}[:alias]")
        Hearth::Validator.validate!(input[:directory_name], ::String, context: "#{context}[:directory_name]")
        Hearth::Validator.validate!(input[:registration_code], ::String, context: "#{context}[:registration_code]")
        Validators::SubnetIds.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        Validators::DnsIpAddresses.validate!(input[:dns_ip_addresses], context: "#{context}[:dns_ip_addresses]") unless input[:dns_ip_addresses].nil?
        Hearth::Validator.validate!(input[:customer_user_name], ::String, context: "#{context}[:customer_user_name]")
        Hearth::Validator.validate!(input[:iam_role_id], ::String, context: "#{context}[:iam_role_id]")
        Hearth::Validator.validate!(input[:directory_type], ::String, context: "#{context}[:directory_type]")
        Hearth::Validator.validate!(input[:workspace_security_group_id], ::String, context: "#{context}[:workspace_security_group_id]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Validators::DefaultWorkspaceCreationProperties.validate!(input[:workspace_creation_properties], context: "#{context}[:workspace_creation_properties]") unless input[:workspace_creation_properties].nil?
        Validators::IpGroupIdList.validate!(input[:ip_group_ids], context: "#{context}[:ip_group_ids]") unless input[:ip_group_ids].nil?
        Validators::WorkspaceAccessProperties.validate!(input[:workspace_access_properties], context: "#{context}[:workspace_access_properties]") unless input[:workspace_access_properties].nil?
        Hearth::Validator.validate!(input[:tenancy], ::String, context: "#{context}[:tenancy]")
        Validators::SelfservicePermissions.validate!(input[:selfservice_permissions], context: "#{context}[:selfservice_permissions]") unless input[:selfservice_permissions].nil?
      end
    end

    class WorkspaceIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class WorkspaceImage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WorkspaceImage, context: context)
        Hearth::Validator.validate!(input[:image_id], ::String, context: "#{context}[:image_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::OperatingSystem.validate!(input[:operating_system], context: "#{context}[:operating_system]") unless input[:operating_system].nil?
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:required_tenancy], ::String, context: "#{context}[:required_tenancy]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
        Hearth::Validator.validate!(input[:created], ::Time, context: "#{context}[:created]")
        Hearth::Validator.validate!(input[:owner_account_id], ::String, context: "#{context}[:owner_account_id]")
        Validators::UpdateResult.validate!(input[:updates], context: "#{context}[:updates]") unless input[:updates].nil?
      end
    end

    class WorkspaceImageIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class WorkspaceImageList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::WorkspaceImage.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class WorkspaceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Workspace.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class WorkspaceProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WorkspaceProperties, context: context)
        Hearth::Validator.validate!(input[:running_mode], ::String, context: "#{context}[:running_mode]")
        Hearth::Validator.validate!(input[:running_mode_auto_stop_timeout_in_minutes], ::Integer, context: "#{context}[:running_mode_auto_stop_timeout_in_minutes]")
        Hearth::Validator.validate!(input[:root_volume_size_gib], ::Integer, context: "#{context}[:root_volume_size_gib]")
        Hearth::Validator.validate!(input[:user_volume_size_gib], ::Integer, context: "#{context}[:user_volume_size_gib]")
        Hearth::Validator.validate!(input[:compute_type_name], ::String, context: "#{context}[:compute_type_name]")
      end
    end

    class WorkspaceRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WorkspaceRequest, context: context)
        Hearth::Validator.validate!(input[:directory_id], ::String, context: "#{context}[:directory_id]")
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:bundle_id], ::String, context: "#{context}[:bundle_id]")
        Hearth::Validator.validate!(input[:volume_encryption_key], ::String, context: "#{context}[:volume_encryption_key]")
        Hearth::Validator.validate!(input[:user_volume_encryption_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:user_volume_encryption_enabled]")
        Hearth::Validator.validate!(input[:root_volume_encryption_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:root_volume_encryption_enabled]")
        Validators::WorkspaceProperties.validate!(input[:workspace_properties], context: "#{context}[:workspace_properties]") unless input[:workspace_properties].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class WorkspaceRequestList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::WorkspaceRequest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class WorkspacesDefaultRoleNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WorkspacesDefaultRoleNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class WorkspacesIpGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WorkspacesIpGroup, context: context)
        Hearth::Validator.validate!(input[:group_id], ::String, context: "#{context}[:group_id]")
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Hearth::Validator.validate!(input[:group_desc], ::String, context: "#{context}[:group_desc]")
        Validators::IpRuleList.validate!(input[:user_rules], context: "#{context}[:user_rules]") unless input[:user_rules].nil?
      end
    end

    class WorkspacesIpGroupsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::WorkspacesIpGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

  end
end
