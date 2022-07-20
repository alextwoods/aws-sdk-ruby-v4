# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::WorkSpaces
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module AccountModification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccountModification, context: context)
        type = Types::AccountModification.new
        type.modification_state = params[:modification_state]
        type.dedicated_tenancy_support = params[:dedicated_tenancy_support]
        type.dedicated_tenancy_management_cidr_range = params[:dedicated_tenancy_management_cidr_range]
        type.start_time = params[:start_time]
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type
      end
    end

    module AccountModificationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AccountModification.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ApplicationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AssociateConnectionAliasInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateConnectionAliasInput, context: context)
        type = Types::AssociateConnectionAliasInput.new
        type.alias_id = params[:alias_id]
        type.resource_id = params[:resource_id]
        type
      end
    end

    module AssociateConnectionAliasOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateConnectionAliasOutput, context: context)
        type = Types::AssociateConnectionAliasOutput.new
        type.connection_identifier = params[:connection_identifier]
        type
      end
    end

    module AssociateIpGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateIpGroupsInput, context: context)
        type = Types::AssociateIpGroupsInput.new
        type.directory_id = params[:directory_id]
        type.group_ids = IpGroupIdList.build(params[:group_ids], context: "#{context}[:group_ids]") unless params[:group_ids].nil?
        type
      end
    end

    module AssociateIpGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateIpGroupsOutput, context: context)
        type = Types::AssociateIpGroupsOutput.new
        type
      end
    end

    module AuthorizeIpRulesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AuthorizeIpRulesInput, context: context)
        type = Types::AuthorizeIpRulesInput.new
        type.group_id = params[:group_id]
        type.user_rules = IpRuleList.build(params[:user_rules], context: "#{context}[:user_rules]") unless params[:user_rules].nil?
        type
      end
    end

    module AuthorizeIpRulesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AuthorizeIpRulesOutput, context: context)
        type = Types::AuthorizeIpRulesOutput.new
        type
      end
    end

    module BundleIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module BundleList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << WorkspaceBundle.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ClientDeviceTypeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ClientProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClientProperties, context: context)
        type = Types::ClientProperties.new
        type.reconnect_enabled = params[:reconnect_enabled]
        type
      end
    end

    module ClientPropertiesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ClientPropertiesResult.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ClientPropertiesResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClientPropertiesResult, context: context)
        type = Types::ClientPropertiesResult.new
        type.resource_id = params[:resource_id]
        type.client_properties = ClientProperties.build(params[:client_properties], context: "#{context}[:client_properties]") unless params[:client_properties].nil?
        type
      end
    end

    module ComputeType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ComputeType, context: context)
        type = Types::ComputeType.new
        type.name = params[:name]
        type
      end
    end

    module ConnectClientAddIn
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConnectClientAddIn, context: context)
        type = Types::ConnectClientAddIn.new
        type.add_in_id = params[:add_in_id]
        type.resource_id = params[:resource_id]
        type.name = params[:name]
        type.url = params[:url]
        type
      end
    end

    module ConnectClientAddInList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ConnectClientAddIn.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ConnectionAlias
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConnectionAlias, context: context)
        type = Types::ConnectionAlias.new
        type.connection_string = params[:connection_string]
        type.alias_id = params[:alias_id]
        type.state = params[:state]
        type.owner_account_id = params[:owner_account_id]
        type.associations = ConnectionAliasAssociationList.build(params[:associations], context: "#{context}[:associations]") unless params[:associations].nil?
        type
      end
    end

    module ConnectionAliasAssociation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConnectionAliasAssociation, context: context)
        type = Types::ConnectionAliasAssociation.new
        type.association_status = params[:association_status]
        type.associated_account_id = params[:associated_account_id]
        type.resource_id = params[:resource_id]
        type.connection_identifier = params[:connection_identifier]
        type
      end
    end

    module ConnectionAliasAssociationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ConnectionAliasAssociation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ConnectionAliasIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ConnectionAliasList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ConnectionAlias.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ConnectionAliasPermission
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConnectionAliasPermission, context: context)
        type = Types::ConnectionAliasPermission.new
        type.shared_account_id = params[:shared_account_id]
        type.allow_association = params[:allow_association]
        type
      end
    end

    module ConnectionAliasPermissions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ConnectionAliasPermission.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CopyWorkspaceImageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CopyWorkspaceImageInput, context: context)
        type = Types::CopyWorkspaceImageInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.source_image_id = params[:source_image_id]
        type.source_region = params[:source_region]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CopyWorkspaceImageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CopyWorkspaceImageOutput, context: context)
        type = Types::CopyWorkspaceImageOutput.new
        type.image_id = params[:image_id]
        type
      end
    end

    module CreateConnectClientAddInInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateConnectClientAddInInput, context: context)
        type = Types::CreateConnectClientAddInInput.new
        type.resource_id = params[:resource_id]
        type.name = params[:name]
        type.url = params[:url]
        type
      end
    end

    module CreateConnectClientAddInOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateConnectClientAddInOutput, context: context)
        type = Types::CreateConnectClientAddInOutput.new
        type.add_in_id = params[:add_in_id]
        type
      end
    end

    module CreateConnectionAliasInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateConnectionAliasInput, context: context)
        type = Types::CreateConnectionAliasInput.new
        type.connection_string = params[:connection_string]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateConnectionAliasOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateConnectionAliasOutput, context: context)
        type = Types::CreateConnectionAliasOutput.new
        type.alias_id = params[:alias_id]
        type
      end
    end

    module CreateIpGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateIpGroupInput, context: context)
        type = Types::CreateIpGroupInput.new
        type.group_name = params[:group_name]
        type.group_desc = params[:group_desc]
        type.user_rules = IpRuleList.build(params[:user_rules], context: "#{context}[:user_rules]") unless params[:user_rules].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateIpGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateIpGroupOutput, context: context)
        type = Types::CreateIpGroupOutput.new
        type.group_id = params[:group_id]
        type
      end
    end

    module CreateTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTagsInput, context: context)
        type = Types::CreateTagsInput.new
        type.resource_id = params[:resource_id]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateTagsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTagsOutput, context: context)
        type = Types::CreateTagsOutput.new
        type
      end
    end

    module CreateUpdatedWorkspaceImageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateUpdatedWorkspaceImageInput, context: context)
        type = Types::CreateUpdatedWorkspaceImageInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.source_image_id = params[:source_image_id]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateUpdatedWorkspaceImageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateUpdatedWorkspaceImageOutput, context: context)
        type = Types::CreateUpdatedWorkspaceImageOutput.new
        type.image_id = params[:image_id]
        type
      end
    end

    module CreateWorkspaceBundleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateWorkspaceBundleInput, context: context)
        type = Types::CreateWorkspaceBundleInput.new
        type.bundle_name = params[:bundle_name]
        type.bundle_description = params[:bundle_description]
        type.image_id = params[:image_id]
        type.compute_type = ComputeType.build(params[:compute_type], context: "#{context}[:compute_type]") unless params[:compute_type].nil?
        type.user_storage = UserStorage.build(params[:user_storage], context: "#{context}[:user_storage]") unless params[:user_storage].nil?
        type.root_storage = RootStorage.build(params[:root_storage], context: "#{context}[:root_storage]") unless params[:root_storage].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateWorkspaceBundleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateWorkspaceBundleOutput, context: context)
        type = Types::CreateWorkspaceBundleOutput.new
        type.workspace_bundle = WorkspaceBundle.build(params[:workspace_bundle], context: "#{context}[:workspace_bundle]") unless params[:workspace_bundle].nil?
        type
      end
    end

    module CreateWorkspacesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateWorkspacesInput, context: context)
        type = Types::CreateWorkspacesInput.new
        type.workspaces = WorkspaceRequestList.build(params[:workspaces], context: "#{context}[:workspaces]") unless params[:workspaces].nil?
        type
      end
    end

    module CreateWorkspacesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateWorkspacesOutput, context: context)
        type = Types::CreateWorkspacesOutput.new
        type.failed_requests = FailedCreateWorkspaceRequests.build(params[:failed_requests], context: "#{context}[:failed_requests]") unless params[:failed_requests].nil?
        type.pending_requests = WorkspaceList.build(params[:pending_requests], context: "#{context}[:pending_requests]") unless params[:pending_requests].nil?
        type
      end
    end

    module DedicatedTenancyCidrRangeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DefaultClientBrandingAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DefaultClientBrandingAttributes, context: context)
        type = Types::DefaultClientBrandingAttributes.new
        type.logo_url = params[:logo_url]
        type.support_email = params[:support_email]
        type.support_link = params[:support_link]
        type.forgot_password_link = params[:forgot_password_link]
        type.login_message = LoginMessage.build(params[:login_message], context: "#{context}[:login_message]") unless params[:login_message].nil?
        type
      end
    end

    module DefaultImportClientBrandingAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DefaultImportClientBrandingAttributes, context: context)
        type = Types::DefaultImportClientBrandingAttributes.new
        type.logo = params[:logo]
        type.support_email = params[:support_email]
        type.support_link = params[:support_link]
        type.forgot_password_link = params[:forgot_password_link]
        type.login_message = LoginMessage.build(params[:login_message], context: "#{context}[:login_message]") unless params[:login_message].nil?
        type
      end
    end

    module DefaultWorkspaceCreationProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DefaultWorkspaceCreationProperties, context: context)
        type = Types::DefaultWorkspaceCreationProperties.new
        type.enable_work_docs = params[:enable_work_docs]
        type.enable_internet_access = params[:enable_internet_access]
        type.default_ou = params[:default_ou]
        type.custom_security_group_id = params[:custom_security_group_id]
        type.user_enabled_as_local_administrator = params[:user_enabled_as_local_administrator]
        type.enable_maintenance_mode = params[:enable_maintenance_mode]
        type
      end
    end

    module DeleteClientBrandingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteClientBrandingInput, context: context)
        type = Types::DeleteClientBrandingInput.new
        type.resource_id = params[:resource_id]
        type.platforms = ClientDeviceTypeList.build(params[:platforms], context: "#{context}[:platforms]") unless params[:platforms].nil?
        type
      end
    end

    module DeleteClientBrandingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteClientBrandingOutput, context: context)
        type = Types::DeleteClientBrandingOutput.new
        type
      end
    end

    module DeleteConnectClientAddInInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteConnectClientAddInInput, context: context)
        type = Types::DeleteConnectClientAddInInput.new
        type.add_in_id = params[:add_in_id]
        type.resource_id = params[:resource_id]
        type
      end
    end

    module DeleteConnectClientAddInOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteConnectClientAddInOutput, context: context)
        type = Types::DeleteConnectClientAddInOutput.new
        type
      end
    end

    module DeleteConnectionAliasInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteConnectionAliasInput, context: context)
        type = Types::DeleteConnectionAliasInput.new
        type.alias_id = params[:alias_id]
        type
      end
    end

    module DeleteConnectionAliasOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteConnectionAliasOutput, context: context)
        type = Types::DeleteConnectionAliasOutput.new
        type
      end
    end

    module DeleteIpGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteIpGroupInput, context: context)
        type = Types::DeleteIpGroupInput.new
        type.group_id = params[:group_id]
        type
      end
    end

    module DeleteIpGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteIpGroupOutput, context: context)
        type = Types::DeleteIpGroupOutput.new
        type
      end
    end

    module DeleteTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTagsInput, context: context)
        type = Types::DeleteTagsInput.new
        type.resource_id = params[:resource_id]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module DeleteTagsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTagsOutput, context: context)
        type = Types::DeleteTagsOutput.new
        type
      end
    end

    module DeleteWorkspaceBundleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteWorkspaceBundleInput, context: context)
        type = Types::DeleteWorkspaceBundleInput.new
        type.bundle_id = params[:bundle_id]
        type
      end
    end

    module DeleteWorkspaceBundleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteWorkspaceBundleOutput, context: context)
        type = Types::DeleteWorkspaceBundleOutput.new
        type
      end
    end

    module DeleteWorkspaceImageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteWorkspaceImageInput, context: context)
        type = Types::DeleteWorkspaceImageInput.new
        type.image_id = params[:image_id]
        type
      end
    end

    module DeleteWorkspaceImageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteWorkspaceImageOutput, context: context)
        type = Types::DeleteWorkspaceImageOutput.new
        type
      end
    end

    module DeregisterWorkspaceDirectoryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterWorkspaceDirectoryInput, context: context)
        type = Types::DeregisterWorkspaceDirectoryInput.new
        type.directory_id = params[:directory_id]
        type
      end
    end

    module DeregisterWorkspaceDirectoryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterWorkspaceDirectoryOutput, context: context)
        type = Types::DeregisterWorkspaceDirectoryOutput.new
        type
      end
    end

    module DescribeAccountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAccountInput, context: context)
        type = Types::DescribeAccountInput.new
        type
      end
    end

    module DescribeAccountModificationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAccountModificationsInput, context: context)
        type = Types::DescribeAccountModificationsInput.new
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeAccountModificationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAccountModificationsOutput, context: context)
        type = Types::DescribeAccountModificationsOutput.new
        type.account_modifications = AccountModificationList.build(params[:account_modifications], context: "#{context}[:account_modifications]") unless params[:account_modifications].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeAccountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAccountOutput, context: context)
        type = Types::DescribeAccountOutput.new
        type.dedicated_tenancy_support = params[:dedicated_tenancy_support]
        type.dedicated_tenancy_management_cidr_range = params[:dedicated_tenancy_management_cidr_range]
        type
      end
    end

    module DescribeClientBrandingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeClientBrandingInput, context: context)
        type = Types::DescribeClientBrandingInput.new
        type.resource_id = params[:resource_id]
        type
      end
    end

    module DescribeClientBrandingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeClientBrandingOutput, context: context)
        type = Types::DescribeClientBrandingOutput.new
        type.device_type_windows = DefaultClientBrandingAttributes.build(params[:device_type_windows], context: "#{context}[:device_type_windows]") unless params[:device_type_windows].nil?
        type.device_type_osx = DefaultClientBrandingAttributes.build(params[:device_type_osx], context: "#{context}[:device_type_osx]") unless params[:device_type_osx].nil?
        type.device_type_android = DefaultClientBrandingAttributes.build(params[:device_type_android], context: "#{context}[:device_type_android]") unless params[:device_type_android].nil?
        type.device_type_ios = IosClientBrandingAttributes.build(params[:device_type_ios], context: "#{context}[:device_type_ios]") unless params[:device_type_ios].nil?
        type.device_type_linux = DefaultClientBrandingAttributes.build(params[:device_type_linux], context: "#{context}[:device_type_linux]") unless params[:device_type_linux].nil?
        type.device_type_web = DefaultClientBrandingAttributes.build(params[:device_type_web], context: "#{context}[:device_type_web]") unless params[:device_type_web].nil?
        type
      end
    end

    module DescribeClientPropertiesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeClientPropertiesInput, context: context)
        type = Types::DescribeClientPropertiesInput.new
        type.resource_ids = ResourceIdList.build(params[:resource_ids], context: "#{context}[:resource_ids]") unless params[:resource_ids].nil?
        type
      end
    end

    module DescribeClientPropertiesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeClientPropertiesOutput, context: context)
        type = Types::DescribeClientPropertiesOutput.new
        type.client_properties_list = ClientPropertiesList.build(params[:client_properties_list], context: "#{context}[:client_properties_list]") unless params[:client_properties_list].nil?
        type
      end
    end

    module DescribeConnectClientAddInsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeConnectClientAddInsInput, context: context)
        type = Types::DescribeConnectClientAddInsInput.new
        type.resource_id = params[:resource_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeConnectClientAddInsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeConnectClientAddInsOutput, context: context)
        type = Types::DescribeConnectClientAddInsOutput.new
        type.add_ins = ConnectClientAddInList.build(params[:add_ins], context: "#{context}[:add_ins]") unless params[:add_ins].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeConnectionAliasPermissionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeConnectionAliasPermissionsInput, context: context)
        type = Types::DescribeConnectionAliasPermissionsInput.new
        type.alias_id = params[:alias_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeConnectionAliasPermissionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeConnectionAliasPermissionsOutput, context: context)
        type = Types::DescribeConnectionAliasPermissionsOutput.new
        type.alias_id = params[:alias_id]
        type.connection_alias_permissions = ConnectionAliasPermissions.build(params[:connection_alias_permissions], context: "#{context}[:connection_alias_permissions]") unless params[:connection_alias_permissions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeConnectionAliasesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeConnectionAliasesInput, context: context)
        type = Types::DescribeConnectionAliasesInput.new
        type.alias_ids = ConnectionAliasIdList.build(params[:alias_ids], context: "#{context}[:alias_ids]") unless params[:alias_ids].nil?
        type.resource_id = params[:resource_id]
        type.limit = params[:limit]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeConnectionAliasesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeConnectionAliasesOutput, context: context)
        type = Types::DescribeConnectionAliasesOutput.new
        type.connection_aliases = ConnectionAliasList.build(params[:connection_aliases], context: "#{context}[:connection_aliases]") unless params[:connection_aliases].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeIpGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeIpGroupsInput, context: context)
        type = Types::DescribeIpGroupsInput.new
        type.group_ids = IpGroupIdList.build(params[:group_ids], context: "#{context}[:group_ids]") unless params[:group_ids].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeIpGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeIpGroupsOutput, context: context)
        type = Types::DescribeIpGroupsOutput.new
        type.result = WorkspacesIpGroupsList.build(params[:result], context: "#{context}[:result]") unless params[:result].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTagsInput, context: context)
        type = Types::DescribeTagsInput.new
        type.resource_id = params[:resource_id]
        type
      end
    end

    module DescribeTagsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTagsOutput, context: context)
        type = Types::DescribeTagsOutput.new
        type.tag_list = TagList.build(params[:tag_list], context: "#{context}[:tag_list]") unless params[:tag_list].nil?
        type
      end
    end

    module DescribeWorkspaceBundlesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeWorkspaceBundlesInput, context: context)
        type = Types::DescribeWorkspaceBundlesInput.new
        type.bundle_ids = BundleIdList.build(params[:bundle_ids], context: "#{context}[:bundle_ids]") unless params[:bundle_ids].nil?
        type.owner = params[:owner]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeWorkspaceBundlesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeWorkspaceBundlesOutput, context: context)
        type = Types::DescribeWorkspaceBundlesOutput.new
        type.bundles = BundleList.build(params[:bundles], context: "#{context}[:bundles]") unless params[:bundles].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeWorkspaceDirectoriesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeWorkspaceDirectoriesInput, context: context)
        type = Types::DescribeWorkspaceDirectoriesInput.new
        type.directory_ids = DirectoryIdList.build(params[:directory_ids], context: "#{context}[:directory_ids]") unless params[:directory_ids].nil?
        type.limit = params[:limit]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeWorkspaceDirectoriesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeWorkspaceDirectoriesOutput, context: context)
        type = Types::DescribeWorkspaceDirectoriesOutput.new
        type.directories = DirectoryList.build(params[:directories], context: "#{context}[:directories]") unless params[:directories].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeWorkspaceImagePermissionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeWorkspaceImagePermissionsInput, context: context)
        type = Types::DescribeWorkspaceImagePermissionsInput.new
        type.image_id = params[:image_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeWorkspaceImagePermissionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeWorkspaceImagePermissionsOutput, context: context)
        type = Types::DescribeWorkspaceImagePermissionsOutput.new
        type.image_id = params[:image_id]
        type.image_permissions = ImagePermissions.build(params[:image_permissions], context: "#{context}[:image_permissions]") unless params[:image_permissions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeWorkspaceImagesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeWorkspaceImagesInput, context: context)
        type = Types::DescribeWorkspaceImagesInput.new
        type.image_ids = WorkspaceImageIdList.build(params[:image_ids], context: "#{context}[:image_ids]") unless params[:image_ids].nil?
        type.image_type = params[:image_type]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeWorkspaceImagesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeWorkspaceImagesOutput, context: context)
        type = Types::DescribeWorkspaceImagesOutput.new
        type.images = WorkspaceImageList.build(params[:images], context: "#{context}[:images]") unless params[:images].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeWorkspaceSnapshotsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeWorkspaceSnapshotsInput, context: context)
        type = Types::DescribeWorkspaceSnapshotsInput.new
        type.workspace_id = params[:workspace_id]
        type
      end
    end

    module DescribeWorkspaceSnapshotsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeWorkspaceSnapshotsOutput, context: context)
        type = Types::DescribeWorkspaceSnapshotsOutput.new
        type.rebuild_snapshots = SnapshotList.build(params[:rebuild_snapshots], context: "#{context}[:rebuild_snapshots]") unless params[:rebuild_snapshots].nil?
        type.restore_snapshots = SnapshotList.build(params[:restore_snapshots], context: "#{context}[:restore_snapshots]") unless params[:restore_snapshots].nil?
        type
      end
    end

    module DescribeWorkspacesConnectionStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeWorkspacesConnectionStatusInput, context: context)
        type = Types::DescribeWorkspacesConnectionStatusInput.new
        type.workspace_ids = WorkspaceIdList.build(params[:workspace_ids], context: "#{context}[:workspace_ids]") unless params[:workspace_ids].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeWorkspacesConnectionStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeWorkspacesConnectionStatusOutput, context: context)
        type = Types::DescribeWorkspacesConnectionStatusOutput.new
        type.workspaces_connection_status = WorkspaceConnectionStatusList.build(params[:workspaces_connection_status], context: "#{context}[:workspaces_connection_status]") unless params[:workspaces_connection_status].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeWorkspacesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeWorkspacesInput, context: context)
        type = Types::DescribeWorkspacesInput.new
        type.workspace_ids = WorkspaceIdList.build(params[:workspace_ids], context: "#{context}[:workspace_ids]") unless params[:workspace_ids].nil?
        type.directory_id = params[:directory_id]
        type.user_name = params[:user_name]
        type.bundle_id = params[:bundle_id]
        type.limit = params[:limit]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeWorkspacesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeWorkspacesOutput, context: context)
        type = Types::DescribeWorkspacesOutput.new
        type.workspaces = WorkspaceList.build(params[:workspaces], context: "#{context}[:workspaces]") unless params[:workspaces].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DirectoryIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DirectoryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << WorkspaceDirectory.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DisassociateConnectionAliasInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateConnectionAliasInput, context: context)
        type = Types::DisassociateConnectionAliasInput.new
        type.alias_id = params[:alias_id]
        type
      end
    end

    module DisassociateConnectionAliasOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateConnectionAliasOutput, context: context)
        type = Types::DisassociateConnectionAliasOutput.new
        type
      end
    end

    module DisassociateIpGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateIpGroupsInput, context: context)
        type = Types::DisassociateIpGroupsInput.new
        type.directory_id = params[:directory_id]
        type.group_ids = IpGroupIdList.build(params[:group_ids], context: "#{context}[:group_ids]") unless params[:group_ids].nil?
        type
      end
    end

    module DisassociateIpGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateIpGroupsOutput, context: context)
        type = Types::DisassociateIpGroupsOutput.new
        type
      end
    end

    module DnsIpAddresses
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module FailedCreateWorkspaceRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FailedCreateWorkspaceRequest, context: context)
        type = Types::FailedCreateWorkspaceRequest.new
        type.workspace_request = WorkspaceRequest.build(params[:workspace_request], context: "#{context}[:workspace_request]") unless params[:workspace_request].nil?
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type
      end
    end

    module FailedCreateWorkspaceRequests
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FailedCreateWorkspaceRequest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FailedRebootWorkspaceRequests
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FailedWorkspaceChangeRequest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FailedRebuildWorkspaceRequests
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FailedWorkspaceChangeRequest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FailedStartWorkspaceRequests
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FailedWorkspaceChangeRequest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FailedStopWorkspaceRequests
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FailedWorkspaceChangeRequest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FailedTerminateWorkspaceRequests
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FailedWorkspaceChangeRequest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FailedWorkspaceChangeRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FailedWorkspaceChangeRequest, context: context)
        type = Types::FailedWorkspaceChangeRequest.new
        type.workspace_id = params[:workspace_id]
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type
      end
    end

    module ImagePermission
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImagePermission, context: context)
        type = Types::ImagePermission.new
        type.shared_account_id = params[:shared_account_id]
        type
      end
    end

    module ImagePermissions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ImagePermission.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ImportClientBrandingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportClientBrandingInput, context: context)
        type = Types::ImportClientBrandingInput.new
        type.resource_id = params[:resource_id]
        type.device_type_windows = DefaultImportClientBrandingAttributes.build(params[:device_type_windows], context: "#{context}[:device_type_windows]") unless params[:device_type_windows].nil?
        type.device_type_osx = DefaultImportClientBrandingAttributes.build(params[:device_type_osx], context: "#{context}[:device_type_osx]") unless params[:device_type_osx].nil?
        type.device_type_android = DefaultImportClientBrandingAttributes.build(params[:device_type_android], context: "#{context}[:device_type_android]") unless params[:device_type_android].nil?
        type.device_type_ios = IosImportClientBrandingAttributes.build(params[:device_type_ios], context: "#{context}[:device_type_ios]") unless params[:device_type_ios].nil?
        type.device_type_linux = DefaultImportClientBrandingAttributes.build(params[:device_type_linux], context: "#{context}[:device_type_linux]") unless params[:device_type_linux].nil?
        type.device_type_web = DefaultImportClientBrandingAttributes.build(params[:device_type_web], context: "#{context}[:device_type_web]") unless params[:device_type_web].nil?
        type
      end
    end

    module ImportClientBrandingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportClientBrandingOutput, context: context)
        type = Types::ImportClientBrandingOutput.new
        type.device_type_windows = DefaultClientBrandingAttributes.build(params[:device_type_windows], context: "#{context}[:device_type_windows]") unless params[:device_type_windows].nil?
        type.device_type_osx = DefaultClientBrandingAttributes.build(params[:device_type_osx], context: "#{context}[:device_type_osx]") unless params[:device_type_osx].nil?
        type.device_type_android = DefaultClientBrandingAttributes.build(params[:device_type_android], context: "#{context}[:device_type_android]") unless params[:device_type_android].nil?
        type.device_type_ios = IosClientBrandingAttributes.build(params[:device_type_ios], context: "#{context}[:device_type_ios]") unless params[:device_type_ios].nil?
        type.device_type_linux = DefaultClientBrandingAttributes.build(params[:device_type_linux], context: "#{context}[:device_type_linux]") unless params[:device_type_linux].nil?
        type.device_type_web = DefaultClientBrandingAttributes.build(params[:device_type_web], context: "#{context}[:device_type_web]") unless params[:device_type_web].nil?
        type
      end
    end

    module ImportWorkspaceImageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportWorkspaceImageInput, context: context)
        type = Types::ImportWorkspaceImageInput.new
        type.ec2_image_id = params[:ec2_image_id]
        type.ingestion_process = params[:ingestion_process]
        type.image_name = params[:image_name]
        type.image_description = params[:image_description]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.applications = ApplicationList.build(params[:applications], context: "#{context}[:applications]") unless params[:applications].nil?
        type
      end
    end

    module ImportWorkspaceImageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportWorkspaceImageOutput, context: context)
        type = Types::ImportWorkspaceImageOutput.new
        type.image_id = params[:image_id]
        type
      end
    end

    module InvalidParameterValuesException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidParameterValuesException, context: context)
        type = Types::InvalidParameterValuesException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidResourceStateException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidResourceStateException, context: context)
        type = Types::InvalidResourceStateException.new
        type.message = params[:message]
        type
      end
    end

    module IosClientBrandingAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IosClientBrandingAttributes, context: context)
        type = Types::IosClientBrandingAttributes.new
        type.logo_url = params[:logo_url]
        type.logo2x_url = params[:logo2x_url]
        type.logo3x_url = params[:logo3x_url]
        type.support_email = params[:support_email]
        type.support_link = params[:support_link]
        type.forgot_password_link = params[:forgot_password_link]
        type.login_message = LoginMessage.build(params[:login_message], context: "#{context}[:login_message]") unless params[:login_message].nil?
        type
      end
    end

    module IosImportClientBrandingAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IosImportClientBrandingAttributes, context: context)
        type = Types::IosImportClientBrandingAttributes.new
        type.logo = params[:logo]
        type.logo2x = params[:logo2x]
        type.logo3x = params[:logo3x]
        type.support_email = params[:support_email]
        type.support_link = params[:support_link]
        type.forgot_password_link = params[:forgot_password_link]
        type.login_message = LoginMessage.build(params[:login_message], context: "#{context}[:login_message]") unless params[:login_message].nil?
        type
      end
    end

    module IpGroupIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module IpRevokedRuleList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module IpRuleItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IpRuleItem, context: context)
        type = Types::IpRuleItem.new
        type.ip_rule = params[:ip_rule]
        type.rule_desc = params[:rule_desc]
        type
      end
    end

    module IpRuleList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << IpRuleItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListAvailableManagementCidrRangesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAvailableManagementCidrRangesInput, context: context)
        type = Types::ListAvailableManagementCidrRangesInput.new
        type.management_cidr_range_constraint = params[:management_cidr_range_constraint]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAvailableManagementCidrRangesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAvailableManagementCidrRangesOutput, context: context)
        type = Types::ListAvailableManagementCidrRangesOutput.new
        type.management_cidr_ranges = DedicatedTenancyCidrRangeList.build(params[:management_cidr_ranges], context: "#{context}[:management_cidr_ranges]") unless params[:management_cidr_ranges].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module LoginMessage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module MigrateWorkspaceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MigrateWorkspaceInput, context: context)
        type = Types::MigrateWorkspaceInput.new
        type.source_workspace_id = params[:source_workspace_id]
        type.bundle_id = params[:bundle_id]
        type
      end
    end

    module MigrateWorkspaceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MigrateWorkspaceOutput, context: context)
        type = Types::MigrateWorkspaceOutput.new
        type.source_workspace_id = params[:source_workspace_id]
        type.target_workspace_id = params[:target_workspace_id]
        type
      end
    end

    module ModificationState
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModificationState, context: context)
        type = Types::ModificationState.new
        type.resource = params[:resource]
        type.state = params[:state]
        type
      end
    end

    module ModificationStateList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ModificationState.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ModifyAccountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyAccountInput, context: context)
        type = Types::ModifyAccountInput.new
        type.dedicated_tenancy_support = params[:dedicated_tenancy_support]
        type.dedicated_tenancy_management_cidr_range = params[:dedicated_tenancy_management_cidr_range]
        type
      end
    end

    module ModifyAccountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyAccountOutput, context: context)
        type = Types::ModifyAccountOutput.new
        type
      end
    end

    module ModifyClientPropertiesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyClientPropertiesInput, context: context)
        type = Types::ModifyClientPropertiesInput.new
        type.resource_id = params[:resource_id]
        type.client_properties = ClientProperties.build(params[:client_properties], context: "#{context}[:client_properties]") unless params[:client_properties].nil?
        type
      end
    end

    module ModifyClientPropertiesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyClientPropertiesOutput, context: context)
        type = Types::ModifyClientPropertiesOutput.new
        type
      end
    end

    module ModifySelfservicePermissionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifySelfservicePermissionsInput, context: context)
        type = Types::ModifySelfservicePermissionsInput.new
        type.resource_id = params[:resource_id]
        type.selfservice_permissions = SelfservicePermissions.build(params[:selfservice_permissions], context: "#{context}[:selfservice_permissions]") unless params[:selfservice_permissions].nil?
        type
      end
    end

    module ModifySelfservicePermissionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifySelfservicePermissionsOutput, context: context)
        type = Types::ModifySelfservicePermissionsOutput.new
        type
      end
    end

    module ModifyWorkspaceAccessPropertiesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyWorkspaceAccessPropertiesInput, context: context)
        type = Types::ModifyWorkspaceAccessPropertiesInput.new
        type.resource_id = params[:resource_id]
        type.workspace_access_properties = WorkspaceAccessProperties.build(params[:workspace_access_properties], context: "#{context}[:workspace_access_properties]") unless params[:workspace_access_properties].nil?
        type
      end
    end

    module ModifyWorkspaceAccessPropertiesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyWorkspaceAccessPropertiesOutput, context: context)
        type = Types::ModifyWorkspaceAccessPropertiesOutput.new
        type
      end
    end

    module ModifyWorkspaceCreationPropertiesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyWorkspaceCreationPropertiesInput, context: context)
        type = Types::ModifyWorkspaceCreationPropertiesInput.new
        type.resource_id = params[:resource_id]
        type.workspace_creation_properties = WorkspaceCreationProperties.build(params[:workspace_creation_properties], context: "#{context}[:workspace_creation_properties]") unless params[:workspace_creation_properties].nil?
        type
      end
    end

    module ModifyWorkspaceCreationPropertiesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyWorkspaceCreationPropertiesOutput, context: context)
        type = Types::ModifyWorkspaceCreationPropertiesOutput.new
        type
      end
    end

    module ModifyWorkspacePropertiesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyWorkspacePropertiesInput, context: context)
        type = Types::ModifyWorkspacePropertiesInput.new
        type.workspace_id = params[:workspace_id]
        type.workspace_properties = WorkspaceProperties.build(params[:workspace_properties], context: "#{context}[:workspace_properties]") unless params[:workspace_properties].nil?
        type
      end
    end

    module ModifyWorkspacePropertiesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyWorkspacePropertiesOutput, context: context)
        type = Types::ModifyWorkspacePropertiesOutput.new
        type
      end
    end

    module ModifyWorkspaceStateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyWorkspaceStateInput, context: context)
        type = Types::ModifyWorkspaceStateInput.new
        type.workspace_id = params[:workspace_id]
        type.workspace_state = params[:workspace_state]
        type
      end
    end

    module ModifyWorkspaceStateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyWorkspaceStateOutput, context: context)
        type = Types::ModifyWorkspaceStateOutput.new
        type
      end
    end

    module OperatingSystem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OperatingSystem, context: context)
        type = Types::OperatingSystem.new
        type.type = params[:type]
        type
      end
    end

    module OperationInProgressException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OperationInProgressException, context: context)
        type = Types::OperationInProgressException.new
        type.message = params[:message]
        type
      end
    end

    module OperationNotSupportedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OperationNotSupportedException, context: context)
        type = Types::OperationNotSupportedException.new
        type.message = params[:message]
        type
      end
    end

    module RebootRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RebootRequest, context: context)
        type = Types::RebootRequest.new
        type.workspace_id = params[:workspace_id]
        type
      end
    end

    module RebootWorkspaceRequests
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RebootRequest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RebootWorkspacesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RebootWorkspacesInput, context: context)
        type = Types::RebootWorkspacesInput.new
        type.reboot_workspace_requests = RebootWorkspaceRequests.build(params[:reboot_workspace_requests], context: "#{context}[:reboot_workspace_requests]") unless params[:reboot_workspace_requests].nil?
        type
      end
    end

    module RebootWorkspacesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RebootWorkspacesOutput, context: context)
        type = Types::RebootWorkspacesOutput.new
        type.failed_requests = FailedRebootWorkspaceRequests.build(params[:failed_requests], context: "#{context}[:failed_requests]") unless params[:failed_requests].nil?
        type
      end
    end

    module RebuildRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RebuildRequest, context: context)
        type = Types::RebuildRequest.new
        type.workspace_id = params[:workspace_id]
        type
      end
    end

    module RebuildWorkspaceRequests
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RebuildRequest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RebuildWorkspacesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RebuildWorkspacesInput, context: context)
        type = Types::RebuildWorkspacesInput.new
        type.rebuild_workspace_requests = RebuildWorkspaceRequests.build(params[:rebuild_workspace_requests], context: "#{context}[:rebuild_workspace_requests]") unless params[:rebuild_workspace_requests].nil?
        type
      end
    end

    module RebuildWorkspacesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RebuildWorkspacesOutput, context: context)
        type = Types::RebuildWorkspacesOutput.new
        type.failed_requests = FailedRebuildWorkspaceRequests.build(params[:failed_requests], context: "#{context}[:failed_requests]") unless params[:failed_requests].nil?
        type
      end
    end

    module RegisterWorkspaceDirectoryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterWorkspaceDirectoryInput, context: context)
        type = Types::RegisterWorkspaceDirectoryInput.new
        type.directory_id = params[:directory_id]
        type.subnet_ids = SubnetIds.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type.enable_work_docs = params[:enable_work_docs]
        type.enable_self_service = params[:enable_self_service]
        type.tenancy = params[:tenancy]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module RegisterWorkspaceDirectoryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterWorkspaceDirectoryOutput, context: context)
        type = Types::RegisterWorkspaceDirectoryOutput.new
        type
      end
    end

    module ResourceAlreadyExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceAlreadyExistsException, context: context)
        type = Types::ResourceAlreadyExistsException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceAssociatedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceAssociatedException, context: context)
        type = Types::ResourceAssociatedException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceCreationFailedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceCreationFailedException, context: context)
        type = Types::ResourceCreationFailedException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ResourceLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceLimitExceededException, context: context)
        type = Types::ResourceLimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type.resource_id = params[:resource_id]
        type
      end
    end

    module ResourceUnavailableException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceUnavailableException, context: context)
        type = Types::ResourceUnavailableException.new
        type.message = params[:message]
        type.resource_id = params[:resource_id]
        type
      end
    end

    module RestoreWorkspaceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RestoreWorkspaceInput, context: context)
        type = Types::RestoreWorkspaceInput.new
        type.workspace_id = params[:workspace_id]
        type
      end
    end

    module RestoreWorkspaceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RestoreWorkspaceOutput, context: context)
        type = Types::RestoreWorkspaceOutput.new
        type
      end
    end

    module RevokeIpRulesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RevokeIpRulesInput, context: context)
        type = Types::RevokeIpRulesInput.new
        type.group_id = params[:group_id]
        type.user_rules = IpRevokedRuleList.build(params[:user_rules], context: "#{context}[:user_rules]") unless params[:user_rules].nil?
        type
      end
    end

    module RevokeIpRulesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RevokeIpRulesOutput, context: context)
        type = Types::RevokeIpRulesOutput.new
        type
      end
    end

    module RootStorage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RootStorage, context: context)
        type = Types::RootStorage.new
        type.capacity = params[:capacity]
        type
      end
    end

    module SelfservicePermissions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SelfservicePermissions, context: context)
        type = Types::SelfservicePermissions.new
        type.restart_workspace = params[:restart_workspace]
        type.increase_volume_size = params[:increase_volume_size]
        type.change_compute_type = params[:change_compute_type]
        type.switch_running_mode = params[:switch_running_mode]
        type.rebuild_workspace = params[:rebuild_workspace]
        type
      end
    end

    module Snapshot
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Snapshot, context: context)
        type = Types::Snapshot.new
        type.snapshot_time = params[:snapshot_time]
        type
      end
    end

    module SnapshotList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Snapshot.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StartRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartRequest, context: context)
        type = Types::StartRequest.new
        type.workspace_id = params[:workspace_id]
        type
      end
    end

    module StartWorkspaceRequests
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StartRequest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StartWorkspacesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartWorkspacesInput, context: context)
        type = Types::StartWorkspacesInput.new
        type.start_workspace_requests = StartWorkspaceRequests.build(params[:start_workspace_requests], context: "#{context}[:start_workspace_requests]") unless params[:start_workspace_requests].nil?
        type
      end
    end

    module StartWorkspacesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartWorkspacesOutput, context: context)
        type = Types::StartWorkspacesOutput.new
        type.failed_requests = FailedStartWorkspaceRequests.build(params[:failed_requests], context: "#{context}[:failed_requests]") unless params[:failed_requests].nil?
        type
      end
    end

    module StopRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopRequest, context: context)
        type = Types::StopRequest.new
        type.workspace_id = params[:workspace_id]
        type
      end
    end

    module StopWorkspaceRequests
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StopRequest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StopWorkspacesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopWorkspacesInput, context: context)
        type = Types::StopWorkspacesInput.new
        type.stop_workspace_requests = StopWorkspaceRequests.build(params[:stop_workspace_requests], context: "#{context}[:stop_workspace_requests]") unless params[:stop_workspace_requests].nil?
        type
      end
    end

    module StopWorkspacesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopWorkspacesOutput, context: context)
        type = Types::StopWorkspacesOutput.new
        type.failed_requests = FailedStopWorkspaceRequests.build(params[:failed_requests], context: "#{context}[:failed_requests]") unless params[:failed_requests].nil?
        type
      end
    end

    module SubnetIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Tag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Tag, context: context)
        type = Types::Tag.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module TagKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TerminateRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TerminateRequest, context: context)
        type = Types::TerminateRequest.new
        type.workspace_id = params[:workspace_id]
        type
      end
    end

    module TerminateWorkspaceRequests
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TerminateRequest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TerminateWorkspacesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TerminateWorkspacesInput, context: context)
        type = Types::TerminateWorkspacesInput.new
        type.terminate_workspace_requests = TerminateWorkspaceRequests.build(params[:terminate_workspace_requests], context: "#{context}[:terminate_workspace_requests]") unless params[:terminate_workspace_requests].nil?
        type
      end
    end

    module TerminateWorkspacesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TerminateWorkspacesOutput, context: context)
        type = Types::TerminateWorkspacesOutput.new
        type.failed_requests = FailedTerminateWorkspaceRequests.build(params[:failed_requests], context: "#{context}[:failed_requests]") unless params[:failed_requests].nil?
        type
      end
    end

    module UnsupportedNetworkConfigurationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnsupportedNetworkConfigurationException, context: context)
        type = Types::UnsupportedNetworkConfigurationException.new
        type.message = params[:message]
        type
      end
    end

    module UnsupportedWorkspaceConfigurationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnsupportedWorkspaceConfigurationException, context: context)
        type = Types::UnsupportedWorkspaceConfigurationException.new
        type.message = params[:message]
        type
      end
    end

    module UpdateConnectClientAddInInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateConnectClientAddInInput, context: context)
        type = Types::UpdateConnectClientAddInInput.new
        type.add_in_id = params[:add_in_id]
        type.resource_id = params[:resource_id]
        type.name = params[:name]
        type.url = params[:url]
        type
      end
    end

    module UpdateConnectClientAddInOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateConnectClientAddInOutput, context: context)
        type = Types::UpdateConnectClientAddInOutput.new
        type
      end
    end

    module UpdateConnectionAliasPermissionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateConnectionAliasPermissionInput, context: context)
        type = Types::UpdateConnectionAliasPermissionInput.new
        type.alias_id = params[:alias_id]
        type.connection_alias_permission = ConnectionAliasPermission.build(params[:connection_alias_permission], context: "#{context}[:connection_alias_permission]") unless params[:connection_alias_permission].nil?
        type
      end
    end

    module UpdateConnectionAliasPermissionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateConnectionAliasPermissionOutput, context: context)
        type = Types::UpdateConnectionAliasPermissionOutput.new
        type
      end
    end

    module UpdateResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateResult, context: context)
        type = Types::UpdateResult.new
        type.update_available = params[:update_available]
        type.description = params[:description]
        type
      end
    end

    module UpdateRulesOfIpGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRulesOfIpGroupInput, context: context)
        type = Types::UpdateRulesOfIpGroupInput.new
        type.group_id = params[:group_id]
        type.user_rules = IpRuleList.build(params[:user_rules], context: "#{context}[:user_rules]") unless params[:user_rules].nil?
        type
      end
    end

    module UpdateRulesOfIpGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRulesOfIpGroupOutput, context: context)
        type = Types::UpdateRulesOfIpGroupOutput.new
        type
      end
    end

    module UpdateWorkspaceBundleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateWorkspaceBundleInput, context: context)
        type = Types::UpdateWorkspaceBundleInput.new
        type.bundle_id = params[:bundle_id]
        type.image_id = params[:image_id]
        type
      end
    end

    module UpdateWorkspaceBundleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateWorkspaceBundleOutput, context: context)
        type = Types::UpdateWorkspaceBundleOutput.new
        type
      end
    end

    module UpdateWorkspaceImagePermissionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateWorkspaceImagePermissionInput, context: context)
        type = Types::UpdateWorkspaceImagePermissionInput.new
        type.image_id = params[:image_id]
        type.allow_copy_image = params[:allow_copy_image]
        type.shared_account_id = params[:shared_account_id]
        type
      end
    end

    module UpdateWorkspaceImagePermissionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateWorkspaceImagePermissionOutput, context: context)
        type = Types::UpdateWorkspaceImagePermissionOutput.new
        type
      end
    end

    module UserStorage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserStorage, context: context)
        type = Types::UserStorage.new
        type.capacity = params[:capacity]
        type
      end
    end

    module Workspace
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Workspace, context: context)
        type = Types::Workspace.new
        type.workspace_id = params[:workspace_id]
        type.directory_id = params[:directory_id]
        type.user_name = params[:user_name]
        type.ip_address = params[:ip_address]
        type.state = params[:state]
        type.bundle_id = params[:bundle_id]
        type.subnet_id = params[:subnet_id]
        type.error_message = params[:error_message]
        type.error_code = params[:error_code]
        type.computer_name = params[:computer_name]
        type.volume_encryption_key = params[:volume_encryption_key]
        type.user_volume_encryption_enabled = params[:user_volume_encryption_enabled]
        type.root_volume_encryption_enabled = params[:root_volume_encryption_enabled]
        type.workspace_properties = WorkspaceProperties.build(params[:workspace_properties], context: "#{context}[:workspace_properties]") unless params[:workspace_properties].nil?
        type.modification_states = ModificationStateList.build(params[:modification_states], context: "#{context}[:modification_states]") unless params[:modification_states].nil?
        type
      end
    end

    module WorkspaceAccessProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WorkspaceAccessProperties, context: context)
        type = Types::WorkspaceAccessProperties.new
        type.device_type_windows = params[:device_type_windows]
        type.device_type_osx = params[:device_type_osx]
        type.device_type_web = params[:device_type_web]
        type.device_type_ios = params[:device_type_ios]
        type.device_type_android = params[:device_type_android]
        type.device_type_chrome_os = params[:device_type_chrome_os]
        type.device_type_zero_client = params[:device_type_zero_client]
        type.device_type_linux = params[:device_type_linux]
        type
      end
    end

    module WorkspaceBundle
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WorkspaceBundle, context: context)
        type = Types::WorkspaceBundle.new
        type.bundle_id = params[:bundle_id]
        type.name = params[:name]
        type.owner = params[:owner]
        type.description = params[:description]
        type.image_id = params[:image_id]
        type.root_storage = RootStorage.build(params[:root_storage], context: "#{context}[:root_storage]") unless params[:root_storage].nil?
        type.user_storage = UserStorage.build(params[:user_storage], context: "#{context}[:user_storage]") unless params[:user_storage].nil?
        type.compute_type = ComputeType.build(params[:compute_type], context: "#{context}[:compute_type]") unless params[:compute_type].nil?
        type.last_updated_time = params[:last_updated_time]
        type.creation_time = params[:creation_time]
        type
      end
    end

    module WorkspaceConnectionStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WorkspaceConnectionStatus, context: context)
        type = Types::WorkspaceConnectionStatus.new
        type.workspace_id = params[:workspace_id]
        type.connection_state = params[:connection_state]
        type.connection_state_check_timestamp = params[:connection_state_check_timestamp]
        type.last_known_user_connection_timestamp = params[:last_known_user_connection_timestamp]
        type
      end
    end

    module WorkspaceConnectionStatusList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << WorkspaceConnectionStatus.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module WorkspaceCreationProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WorkspaceCreationProperties, context: context)
        type = Types::WorkspaceCreationProperties.new
        type.enable_work_docs = params[:enable_work_docs]
        type.enable_internet_access = params[:enable_internet_access]
        type.default_ou = params[:default_ou]
        type.custom_security_group_id = params[:custom_security_group_id]
        type.user_enabled_as_local_administrator = params[:user_enabled_as_local_administrator]
        type.enable_maintenance_mode = params[:enable_maintenance_mode]
        type
      end
    end

    module WorkspaceDirectory
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WorkspaceDirectory, context: context)
        type = Types::WorkspaceDirectory.new
        type.directory_id = params[:directory_id]
        type.alias = params[:alias]
        type.directory_name = params[:directory_name]
        type.registration_code = params[:registration_code]
        type.subnet_ids = SubnetIds.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type.dns_ip_addresses = DnsIpAddresses.build(params[:dns_ip_addresses], context: "#{context}[:dns_ip_addresses]") unless params[:dns_ip_addresses].nil?
        type.customer_user_name = params[:customer_user_name]
        type.iam_role_id = params[:iam_role_id]
        type.directory_type = params[:directory_type]
        type.workspace_security_group_id = params[:workspace_security_group_id]
        type.state = params[:state]
        type.workspace_creation_properties = DefaultWorkspaceCreationProperties.build(params[:workspace_creation_properties], context: "#{context}[:workspace_creation_properties]") unless params[:workspace_creation_properties].nil?
        type.ip_group_ids = IpGroupIdList.build(params[:ip_group_ids], context: "#{context}[:ip_group_ids]") unless params[:ip_group_ids].nil?
        type.workspace_access_properties = WorkspaceAccessProperties.build(params[:workspace_access_properties], context: "#{context}[:workspace_access_properties]") unless params[:workspace_access_properties].nil?
        type.tenancy = params[:tenancy]
        type.selfservice_permissions = SelfservicePermissions.build(params[:selfservice_permissions], context: "#{context}[:selfservice_permissions]") unless params[:selfservice_permissions].nil?
        type
      end
    end

    module WorkspaceIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module WorkspaceImage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WorkspaceImage, context: context)
        type = Types::WorkspaceImage.new
        type.image_id = params[:image_id]
        type.name = params[:name]
        type.description = params[:description]
        type.operating_system = OperatingSystem.build(params[:operating_system], context: "#{context}[:operating_system]") unless params[:operating_system].nil?
        type.state = params[:state]
        type.required_tenancy = params[:required_tenancy]
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type.created = params[:created]
        type.owner_account_id = params[:owner_account_id]
        type.updates = UpdateResult.build(params[:updates], context: "#{context}[:updates]") unless params[:updates].nil?
        type
      end
    end

    module WorkspaceImageIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module WorkspaceImageList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << WorkspaceImage.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module WorkspaceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Workspace.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module WorkspaceProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WorkspaceProperties, context: context)
        type = Types::WorkspaceProperties.new
        type.running_mode = params[:running_mode]
        type.running_mode_auto_stop_timeout_in_minutes = params[:running_mode_auto_stop_timeout_in_minutes]
        type.root_volume_size_gib = params[:root_volume_size_gib]
        type.user_volume_size_gib = params[:user_volume_size_gib]
        type.compute_type_name = params[:compute_type_name]
        type
      end
    end

    module WorkspaceRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WorkspaceRequest, context: context)
        type = Types::WorkspaceRequest.new
        type.directory_id = params[:directory_id]
        type.user_name = params[:user_name]
        type.bundle_id = params[:bundle_id]
        type.volume_encryption_key = params[:volume_encryption_key]
        type.user_volume_encryption_enabled = params[:user_volume_encryption_enabled]
        type.root_volume_encryption_enabled = params[:root_volume_encryption_enabled]
        type.workspace_properties = WorkspaceProperties.build(params[:workspace_properties], context: "#{context}[:workspace_properties]") unless params[:workspace_properties].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module WorkspaceRequestList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << WorkspaceRequest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module WorkspacesDefaultRoleNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WorkspacesDefaultRoleNotFoundException, context: context)
        type = Types::WorkspacesDefaultRoleNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module WorkspacesIpGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WorkspacesIpGroup, context: context)
        type = Types::WorkspacesIpGroup.new
        type.group_id = params[:group_id]
        type.group_name = params[:group_name]
        type.group_desc = params[:group_desc]
        type.user_rules = IpRuleList.build(params[:user_rules], context: "#{context}[:user_rules]") unless params[:user_rules].nil?
        type
      end
    end

    module WorkspacesIpGroupsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << WorkspacesIpGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

  end
end
