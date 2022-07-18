# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::IAM
  module Params

    module AccessDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDetail, context: context)
        type = Types::AccessDetail.new
        type.service_name = params[:service_name]
        type.service_namespace = params[:service_namespace]
        type.region = params[:region]
        type.entity_path = params[:entity_path]
        type.last_authenticated_time = params[:last_authenticated_time]
        type.total_authenticated_entities = params[:total_authenticated_entities]
        type
      end
    end

    module AccessDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AccessDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AccessKey
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessKey, context: context)
        type = Types::AccessKey.new
        type.user_name = params[:user_name]
        type.access_key_id = params[:access_key_id]
        type.status = params[:status]
        type.secret_access_key = params[:secret_access_key]
        type.create_date = params[:create_date]
        type
      end
    end

    module AccessKeyLastUsed
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessKeyLastUsed, context: context)
        type = Types::AccessKeyLastUsed.new
        type.last_used_date = params[:last_used_date]
        type.service_name = params[:service_name]
        type.region = params[:region]
        type
      end
    end

    module AccessKeyMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessKeyMetadata, context: context)
        type = Types::AccessKeyMetadata.new
        type.user_name = params[:user_name]
        type.access_key_id = params[:access_key_id]
        type.status = params[:status]
        type.create_date = params[:create_date]
        type
      end
    end

    module ActionNameListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AddClientIDToOpenIDConnectProviderInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddClientIDToOpenIDConnectProviderInput, context: context)
        type = Types::AddClientIDToOpenIDConnectProviderInput.new
        type.open_id_connect_provider_arn = params[:open_id_connect_provider_arn]
        type.client_id = params[:client_id]
        type
      end
    end

    module AddClientIDToOpenIDConnectProviderOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddClientIDToOpenIDConnectProviderOutput, context: context)
        type = Types::AddClientIDToOpenIDConnectProviderOutput.new
        type
      end
    end

    module AddRoleToInstanceProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddRoleToInstanceProfileInput, context: context)
        type = Types::AddRoleToInstanceProfileInput.new
        type.instance_profile_name = params[:instance_profile_name]
        type.role_name = params[:role_name]
        type
      end
    end

    module AddRoleToInstanceProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddRoleToInstanceProfileOutput, context: context)
        type = Types::AddRoleToInstanceProfileOutput.new
        type
      end
    end

    module AddUserToGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddUserToGroupInput, context: context)
        type = Types::AddUserToGroupInput.new
        type.group_name = params[:group_name]
        type.user_name = params[:user_name]
        type
      end
    end

    module AddUserToGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddUserToGroupOutput, context: context)
        type = Types::AddUserToGroupOutput.new
        type
      end
    end

    module ArnListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AttachGroupPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttachGroupPolicyInput, context: context)
        type = Types::AttachGroupPolicyInput.new
        type.group_name = params[:group_name]
        type.policy_arn = params[:policy_arn]
        type
      end
    end

    module AttachGroupPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttachGroupPolicyOutput, context: context)
        type = Types::AttachGroupPolicyOutput.new
        type
      end
    end

    module AttachRolePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttachRolePolicyInput, context: context)
        type = Types::AttachRolePolicyInput.new
        type.role_name = params[:role_name]
        type.policy_arn = params[:policy_arn]
        type
      end
    end

    module AttachRolePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttachRolePolicyOutput, context: context)
        type = Types::AttachRolePolicyOutput.new
        type
      end
    end

    module AttachUserPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttachUserPolicyInput, context: context)
        type = Types::AttachUserPolicyInput.new
        type.user_name = params[:user_name]
        type.policy_arn = params[:policy_arn]
        type
      end
    end

    module AttachUserPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttachUserPolicyOutput, context: context)
        type = Types::AttachUserPolicyOutput.new
        type
      end
    end

    module AttachedPermissionsBoundary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttachedPermissionsBoundary, context: context)
        type = Types::AttachedPermissionsBoundary.new
        type.permissions_boundary_type = params[:permissions_boundary_type]
        type.permissions_boundary_arn = params[:permissions_boundary_arn]
        type
      end
    end

    module AttachedPolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttachedPolicy, context: context)
        type = Types::AttachedPolicy.new
        type.policy_name = params[:policy_name]
        type.policy_arn = params[:policy_arn]
        type
      end
    end

    module ChangePasswordInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChangePasswordInput, context: context)
        type = Types::ChangePasswordInput.new
        type.old_password = params[:old_password]
        type.new_password = params[:new_password]
        type
      end
    end

    module ChangePasswordOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChangePasswordOutput, context: context)
        type = Types::ChangePasswordOutput.new
        type
      end
    end

    module ConcurrentModificationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConcurrentModificationException, context: context)
        type = Types::ConcurrentModificationException.new
        type.message = params[:message]
        type
      end
    end

    module ContextEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContextEntry, context: context)
        type = Types::ContextEntry.new
        type.context_key_name = params[:context_key_name]
        type.context_key_values = ContextKeyValueListType.build(params[:context_key_values], context: "#{context}[:context_key_values]") unless params[:context_key_values].nil?
        type.context_key_type = params[:context_key_type]
        type
      end
    end

    module ContextEntryListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ContextEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ContextKeyNamesResultListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ContextKeyValueListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CreateAccessKeyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAccessKeyInput, context: context)
        type = Types::CreateAccessKeyInput.new
        type.user_name = params[:user_name]
        type
      end
    end

    module CreateAccessKeyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAccessKeyOutput, context: context)
        type = Types::CreateAccessKeyOutput.new
        type.access_key = AccessKey.build(params[:access_key], context: "#{context}[:access_key]") unless params[:access_key].nil?
        type
      end
    end

    module CreateAccountAliasInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAccountAliasInput, context: context)
        type = Types::CreateAccountAliasInput.new
        type.account_alias = params[:account_alias]
        type
      end
    end

    module CreateAccountAliasOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAccountAliasOutput, context: context)
        type = Types::CreateAccountAliasOutput.new
        type
      end
    end

    module CreateGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateGroupInput, context: context)
        type = Types::CreateGroupInput.new
        type.path = params[:path]
        type.group_name = params[:group_name]
        type
      end
    end

    module CreateGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateGroupOutput, context: context)
        type = Types::CreateGroupOutput.new
        type.group = Group.build(params[:group], context: "#{context}[:group]") unless params[:group].nil?
        type
      end
    end

    module CreateInstanceProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateInstanceProfileInput, context: context)
        type = Types::CreateInstanceProfileInput.new
        type.instance_profile_name = params[:instance_profile_name]
        type.path = params[:path]
        type.tags = TagListType.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateInstanceProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateInstanceProfileOutput, context: context)
        type = Types::CreateInstanceProfileOutput.new
        type.instance_profile = InstanceProfile.build(params[:instance_profile], context: "#{context}[:instance_profile]") unless params[:instance_profile].nil?
        type
      end
    end

    module CreateLoginProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLoginProfileInput, context: context)
        type = Types::CreateLoginProfileInput.new
        type.user_name = params[:user_name]
        type.password = params[:password]
        type.password_reset_required = params[:password_reset_required]
        type
      end
    end

    module CreateLoginProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLoginProfileOutput, context: context)
        type = Types::CreateLoginProfileOutput.new
        type.login_profile = LoginProfile.build(params[:login_profile], context: "#{context}[:login_profile]") unless params[:login_profile].nil?
        type
      end
    end

    module CreateOpenIDConnectProviderInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateOpenIDConnectProviderInput, context: context)
        type = Types::CreateOpenIDConnectProviderInput.new
        type.url = params[:url]
        type.client_id_list = ClientIDListType.build(params[:client_id_list], context: "#{context}[:client_id_list]") unless params[:client_id_list].nil?
        type.thumbprint_list = ThumbprintListType.build(params[:thumbprint_list], context: "#{context}[:thumbprint_list]") unless params[:thumbprint_list].nil?
        type.tags = TagListType.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateOpenIDConnectProviderOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateOpenIDConnectProviderOutput, context: context)
        type = Types::CreateOpenIDConnectProviderOutput.new
        type.open_id_connect_provider_arn = params[:open_id_connect_provider_arn]
        type.tags = TagListType.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreatePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePolicyInput, context: context)
        type = Types::CreatePolicyInput.new
        type.policy_name = params[:policy_name]
        type.path = params[:path]
        type.policy_document = params[:policy_document]
        type.description = params[:description]
        type.tags = TagListType.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreatePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePolicyOutput, context: context)
        type = Types::CreatePolicyOutput.new
        type.policy = Policy.build(params[:policy], context: "#{context}[:policy]") unless params[:policy].nil?
        type
      end
    end

    module CreatePolicyVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePolicyVersionInput, context: context)
        type = Types::CreatePolicyVersionInput.new
        type.policy_arn = params[:policy_arn]
        type.policy_document = params[:policy_document]
        type.set_as_default = params[:set_as_default]
        type
      end
    end

    module CreatePolicyVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePolicyVersionOutput, context: context)
        type = Types::CreatePolicyVersionOutput.new
        type.policy_version = PolicyVersion.build(params[:policy_version], context: "#{context}[:policy_version]") unless params[:policy_version].nil?
        type
      end
    end

    module CreateRoleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRoleInput, context: context)
        type = Types::CreateRoleInput.new
        type.path = params[:path]
        type.role_name = params[:role_name]
        type.assume_role_policy_document = params[:assume_role_policy_document]
        type.description = params[:description]
        type.max_session_duration = params[:max_session_duration]
        type.permissions_boundary = params[:permissions_boundary]
        type.tags = TagListType.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateRoleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRoleOutput, context: context)
        type = Types::CreateRoleOutput.new
        type.role = Role.build(params[:role], context: "#{context}[:role]") unless params[:role].nil?
        type
      end
    end

    module CreateSAMLProviderInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSAMLProviderInput, context: context)
        type = Types::CreateSAMLProviderInput.new
        type.saml_metadata_document = params[:saml_metadata_document]
        type.name = params[:name]
        type.tags = TagListType.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateSAMLProviderOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSAMLProviderOutput, context: context)
        type = Types::CreateSAMLProviderOutput.new
        type.saml_provider_arn = params[:saml_provider_arn]
        type.tags = TagListType.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateServiceLinkedRoleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateServiceLinkedRoleInput, context: context)
        type = Types::CreateServiceLinkedRoleInput.new
        type.aws_service_name = params[:aws_service_name]
        type.description = params[:description]
        type.custom_suffix = params[:custom_suffix]
        type
      end
    end

    module CreateServiceLinkedRoleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateServiceLinkedRoleOutput, context: context)
        type = Types::CreateServiceLinkedRoleOutput.new
        type.role = Role.build(params[:role], context: "#{context}[:role]") unless params[:role].nil?
        type
      end
    end

    module CreateServiceSpecificCredentialInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateServiceSpecificCredentialInput, context: context)
        type = Types::CreateServiceSpecificCredentialInput.new
        type.user_name = params[:user_name]
        type.service_name = params[:service_name]
        type
      end
    end

    module CreateServiceSpecificCredentialOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateServiceSpecificCredentialOutput, context: context)
        type = Types::CreateServiceSpecificCredentialOutput.new
        type.service_specific_credential = ServiceSpecificCredential.build(params[:service_specific_credential], context: "#{context}[:service_specific_credential]") unless params[:service_specific_credential].nil?
        type
      end
    end

    module CreateUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateUserInput, context: context)
        type = Types::CreateUserInput.new
        type.path = params[:path]
        type.user_name = params[:user_name]
        type.permissions_boundary = params[:permissions_boundary]
        type.tags = TagListType.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateUserOutput, context: context)
        type = Types::CreateUserOutput.new
        type.user = User.build(params[:user], context: "#{context}[:user]") unless params[:user].nil?
        type
      end
    end

    module CreateVirtualMFADeviceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateVirtualMFADeviceInput, context: context)
        type = Types::CreateVirtualMFADeviceInput.new
        type.path = params[:path]
        type.virtual_mfa_device_name = params[:virtual_mfa_device_name]
        type.tags = TagListType.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateVirtualMFADeviceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateVirtualMFADeviceOutput, context: context)
        type = Types::CreateVirtualMFADeviceOutput.new
        type.virtual_mfa_device = VirtualMFADevice.build(params[:virtual_mfa_device], context: "#{context}[:virtual_mfa_device]") unless params[:virtual_mfa_device].nil?
        type
      end
    end

    module CredentialReportExpiredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CredentialReportExpiredException, context: context)
        type = Types::CredentialReportExpiredException.new
        type.message = params[:message]
        type
      end
    end

    module CredentialReportNotPresentException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CredentialReportNotPresentException, context: context)
        type = Types::CredentialReportNotPresentException.new
        type.message = params[:message]
        type
      end
    end

    module CredentialReportNotReadyException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CredentialReportNotReadyException, context: context)
        type = Types::CredentialReportNotReadyException.new
        type.message = params[:message]
        type
      end
    end

    module DeactivateMFADeviceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeactivateMFADeviceInput, context: context)
        type = Types::DeactivateMFADeviceInput.new
        type.user_name = params[:user_name]
        type.serial_number = params[:serial_number]
        type
      end
    end

    module DeactivateMFADeviceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeactivateMFADeviceOutput, context: context)
        type = Types::DeactivateMFADeviceOutput.new
        type
      end
    end

    module DeleteAccessKeyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAccessKeyInput, context: context)
        type = Types::DeleteAccessKeyInput.new
        type.user_name = params[:user_name]
        type.access_key_id = params[:access_key_id]
        type
      end
    end

    module DeleteAccessKeyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAccessKeyOutput, context: context)
        type = Types::DeleteAccessKeyOutput.new
        type
      end
    end

    module DeleteAccountAliasInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAccountAliasInput, context: context)
        type = Types::DeleteAccountAliasInput.new
        type.account_alias = params[:account_alias]
        type
      end
    end

    module DeleteAccountAliasOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAccountAliasOutput, context: context)
        type = Types::DeleteAccountAliasOutput.new
        type
      end
    end

    module DeleteAccountPasswordPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAccountPasswordPolicyInput, context: context)
        type = Types::DeleteAccountPasswordPolicyInput.new
        type
      end
    end

    module DeleteAccountPasswordPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAccountPasswordPolicyOutput, context: context)
        type = Types::DeleteAccountPasswordPolicyOutput.new
        type
      end
    end

    module DeleteConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteConflictException, context: context)
        type = Types::DeleteConflictException.new
        type.message = params[:message]
        type
      end
    end

    module DeleteGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteGroupInput, context: context)
        type = Types::DeleteGroupInput.new
        type.group_name = params[:group_name]
        type
      end
    end

    module DeleteGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteGroupOutput, context: context)
        type = Types::DeleteGroupOutput.new
        type
      end
    end

    module DeleteGroupPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteGroupPolicyInput, context: context)
        type = Types::DeleteGroupPolicyInput.new
        type.group_name = params[:group_name]
        type.policy_name = params[:policy_name]
        type
      end
    end

    module DeleteGroupPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteGroupPolicyOutput, context: context)
        type = Types::DeleteGroupPolicyOutput.new
        type
      end
    end

    module DeleteInstanceProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteInstanceProfileInput, context: context)
        type = Types::DeleteInstanceProfileInput.new
        type.instance_profile_name = params[:instance_profile_name]
        type
      end
    end

    module DeleteInstanceProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteInstanceProfileOutput, context: context)
        type = Types::DeleteInstanceProfileOutput.new
        type
      end
    end

    module DeleteLoginProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLoginProfileInput, context: context)
        type = Types::DeleteLoginProfileInput.new
        type.user_name = params[:user_name]
        type
      end
    end

    module DeleteLoginProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLoginProfileOutput, context: context)
        type = Types::DeleteLoginProfileOutput.new
        type
      end
    end

    module DeleteOpenIDConnectProviderInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteOpenIDConnectProviderInput, context: context)
        type = Types::DeleteOpenIDConnectProviderInput.new
        type.open_id_connect_provider_arn = params[:open_id_connect_provider_arn]
        type
      end
    end

    module DeleteOpenIDConnectProviderOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteOpenIDConnectProviderOutput, context: context)
        type = Types::DeleteOpenIDConnectProviderOutput.new
        type
      end
    end

    module DeletePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePolicyInput, context: context)
        type = Types::DeletePolicyInput.new
        type.policy_arn = params[:policy_arn]
        type
      end
    end

    module DeletePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePolicyOutput, context: context)
        type = Types::DeletePolicyOutput.new
        type
      end
    end

    module DeletePolicyVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePolicyVersionInput, context: context)
        type = Types::DeletePolicyVersionInput.new
        type.policy_arn = params[:policy_arn]
        type.version_id = params[:version_id]
        type
      end
    end

    module DeletePolicyVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePolicyVersionOutput, context: context)
        type = Types::DeletePolicyVersionOutput.new
        type
      end
    end

    module DeleteRoleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRoleInput, context: context)
        type = Types::DeleteRoleInput.new
        type.role_name = params[:role_name]
        type
      end
    end

    module DeleteRoleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRoleOutput, context: context)
        type = Types::DeleteRoleOutput.new
        type
      end
    end

    module DeleteRolePermissionsBoundaryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRolePermissionsBoundaryInput, context: context)
        type = Types::DeleteRolePermissionsBoundaryInput.new
        type.role_name = params[:role_name]
        type
      end
    end

    module DeleteRolePermissionsBoundaryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRolePermissionsBoundaryOutput, context: context)
        type = Types::DeleteRolePermissionsBoundaryOutput.new
        type
      end
    end

    module DeleteRolePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRolePolicyInput, context: context)
        type = Types::DeleteRolePolicyInput.new
        type.role_name = params[:role_name]
        type.policy_name = params[:policy_name]
        type
      end
    end

    module DeleteRolePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRolePolicyOutput, context: context)
        type = Types::DeleteRolePolicyOutput.new
        type
      end
    end

    module DeleteSAMLProviderInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSAMLProviderInput, context: context)
        type = Types::DeleteSAMLProviderInput.new
        type.saml_provider_arn = params[:saml_provider_arn]
        type
      end
    end

    module DeleteSAMLProviderOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSAMLProviderOutput, context: context)
        type = Types::DeleteSAMLProviderOutput.new
        type
      end
    end

    module DeleteSSHPublicKeyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSSHPublicKeyInput, context: context)
        type = Types::DeleteSSHPublicKeyInput.new
        type.user_name = params[:user_name]
        type.ssh_public_key_id = params[:ssh_public_key_id]
        type
      end
    end

    module DeleteSSHPublicKeyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSSHPublicKeyOutput, context: context)
        type = Types::DeleteSSHPublicKeyOutput.new
        type
      end
    end

    module DeleteServerCertificateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteServerCertificateInput, context: context)
        type = Types::DeleteServerCertificateInput.new
        type.server_certificate_name = params[:server_certificate_name]
        type
      end
    end

    module DeleteServerCertificateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteServerCertificateOutput, context: context)
        type = Types::DeleteServerCertificateOutput.new
        type
      end
    end

    module DeleteServiceLinkedRoleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteServiceLinkedRoleInput, context: context)
        type = Types::DeleteServiceLinkedRoleInput.new
        type.role_name = params[:role_name]
        type
      end
    end

    module DeleteServiceLinkedRoleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteServiceLinkedRoleOutput, context: context)
        type = Types::DeleteServiceLinkedRoleOutput.new
        type.deletion_task_id = params[:deletion_task_id]
        type
      end
    end

    module DeleteServiceSpecificCredentialInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteServiceSpecificCredentialInput, context: context)
        type = Types::DeleteServiceSpecificCredentialInput.new
        type.user_name = params[:user_name]
        type.service_specific_credential_id = params[:service_specific_credential_id]
        type
      end
    end

    module DeleteServiceSpecificCredentialOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteServiceSpecificCredentialOutput, context: context)
        type = Types::DeleteServiceSpecificCredentialOutput.new
        type
      end
    end

    module DeleteSigningCertificateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSigningCertificateInput, context: context)
        type = Types::DeleteSigningCertificateInput.new
        type.user_name = params[:user_name]
        type.certificate_id = params[:certificate_id]
        type
      end
    end

    module DeleteSigningCertificateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSigningCertificateOutput, context: context)
        type = Types::DeleteSigningCertificateOutput.new
        type
      end
    end

    module DeleteUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteUserInput, context: context)
        type = Types::DeleteUserInput.new
        type.user_name = params[:user_name]
        type
      end
    end

    module DeleteUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteUserOutput, context: context)
        type = Types::DeleteUserOutput.new
        type
      end
    end

    module DeleteUserPermissionsBoundaryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteUserPermissionsBoundaryInput, context: context)
        type = Types::DeleteUserPermissionsBoundaryInput.new
        type.user_name = params[:user_name]
        type
      end
    end

    module DeleteUserPermissionsBoundaryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteUserPermissionsBoundaryOutput, context: context)
        type = Types::DeleteUserPermissionsBoundaryOutput.new
        type
      end
    end

    module DeleteUserPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteUserPolicyInput, context: context)
        type = Types::DeleteUserPolicyInput.new
        type.user_name = params[:user_name]
        type.policy_name = params[:policy_name]
        type
      end
    end

    module DeleteUserPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteUserPolicyOutput, context: context)
        type = Types::DeleteUserPolicyOutput.new
        type
      end
    end

    module DeleteVirtualMFADeviceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVirtualMFADeviceInput, context: context)
        type = Types::DeleteVirtualMFADeviceInput.new
        type.serial_number = params[:serial_number]
        type
      end
    end

    module DeleteVirtualMFADeviceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVirtualMFADeviceOutput, context: context)
        type = Types::DeleteVirtualMFADeviceOutput.new
        type
      end
    end

    module DeletionTaskFailureReasonType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletionTaskFailureReasonType, context: context)
        type = Types::DeletionTaskFailureReasonType.new
        type.reason = params[:reason]
        type.role_usage_list = RoleUsageListType.build(params[:role_usage_list], context: "#{context}[:role_usage_list]") unless params[:role_usage_list].nil?
        type
      end
    end

    module DetachGroupPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetachGroupPolicyInput, context: context)
        type = Types::DetachGroupPolicyInput.new
        type.group_name = params[:group_name]
        type.policy_arn = params[:policy_arn]
        type
      end
    end

    module DetachGroupPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetachGroupPolicyOutput, context: context)
        type = Types::DetachGroupPolicyOutput.new
        type
      end
    end

    module DetachRolePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetachRolePolicyInput, context: context)
        type = Types::DetachRolePolicyInput.new
        type.role_name = params[:role_name]
        type.policy_arn = params[:policy_arn]
        type
      end
    end

    module DetachRolePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetachRolePolicyOutput, context: context)
        type = Types::DetachRolePolicyOutput.new
        type
      end
    end

    module DetachUserPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetachUserPolicyInput, context: context)
        type = Types::DetachUserPolicyInput.new
        type.user_name = params[:user_name]
        type.policy_arn = params[:policy_arn]
        type
      end
    end

    module DetachUserPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetachUserPolicyOutput, context: context)
        type = Types::DetachUserPolicyOutput.new
        type
      end
    end

    module DuplicateCertificateException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DuplicateCertificateException, context: context)
        type = Types::DuplicateCertificateException.new
        type.message = params[:message]
        type
      end
    end

    module DuplicateSSHPublicKeyException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DuplicateSSHPublicKeyException, context: context)
        type = Types::DuplicateSSHPublicKeyException.new
        type.message = params[:message]
        type
      end
    end

    module EnableMFADeviceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableMFADeviceInput, context: context)
        type = Types::EnableMFADeviceInput.new
        type.user_name = params[:user_name]
        type.serial_number = params[:serial_number]
        type.authentication_code1 = params[:authentication_code1]
        type.authentication_code2 = params[:authentication_code2]
        type
      end
    end

    module EnableMFADeviceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableMFADeviceOutput, context: context)
        type = Types::EnableMFADeviceOutput.new
        type
      end
    end

    module EntityAlreadyExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EntityAlreadyExistsException, context: context)
        type = Types::EntityAlreadyExistsException.new
        type.message = params[:message]
        type
      end
    end

    module EntityDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EntityDetails, context: context)
        type = Types::EntityDetails.new
        type.entity_info = EntityInfo.build(params[:entity_info], context: "#{context}[:entity_info]") unless params[:entity_info].nil?
        type.last_authenticated = params[:last_authenticated]
        type
      end
    end

    module EntityInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EntityInfo, context: context)
        type = Types::EntityInfo.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.type = params[:type]
        type.id = params[:id]
        type.path = params[:path]
        type
      end
    end

    module EntityTemporarilyUnmodifiableException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EntityTemporarilyUnmodifiableException, context: context)
        type = Types::EntityTemporarilyUnmodifiableException.new
        type.message = params[:message]
        type
      end
    end

    module ErrorDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ErrorDetails, context: context)
        type = Types::ErrorDetails.new
        type.message = params[:message]
        type.code = params[:code]
        type
      end
    end

    module EvalDecisionDetailsType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module EvaluationResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EvaluationResult, context: context)
        type = Types::EvaluationResult.new
        type.eval_action_name = params[:eval_action_name]
        type.eval_resource_name = params[:eval_resource_name]
        type.eval_decision = params[:eval_decision]
        type.matched_statements = StatementListType.build(params[:matched_statements], context: "#{context}[:matched_statements]") unless params[:matched_statements].nil?
        type.missing_context_values = ContextKeyNamesResultListType.build(params[:missing_context_values], context: "#{context}[:missing_context_values]") unless params[:missing_context_values].nil?
        type.organizations_decision_detail = OrganizationsDecisionDetail.build(params[:organizations_decision_detail], context: "#{context}[:organizations_decision_detail]") unless params[:organizations_decision_detail].nil?
        type.permissions_boundary_decision_detail = PermissionsBoundaryDecisionDetail.build(params[:permissions_boundary_decision_detail], context: "#{context}[:permissions_boundary_decision_detail]") unless params[:permissions_boundary_decision_detail].nil?
        type.eval_decision_details = EvalDecisionDetailsType.build(params[:eval_decision_details], context: "#{context}[:eval_decision_details]") unless params[:eval_decision_details].nil?
        type.resource_specific_results = ResourceSpecificResultListType.build(params[:resource_specific_results], context: "#{context}[:resource_specific_results]") unless params[:resource_specific_results].nil?
        type
      end
    end

    module EvaluationResultsListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EvaluationResult.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GenerateCredentialReportInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GenerateCredentialReportInput, context: context)
        type = Types::GenerateCredentialReportInput.new
        type
      end
    end

    module GenerateCredentialReportOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GenerateCredentialReportOutput, context: context)
        type = Types::GenerateCredentialReportOutput.new
        type.state = params[:state]
        type.description = params[:description]
        type
      end
    end

    module GenerateOrganizationsAccessReportInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GenerateOrganizationsAccessReportInput, context: context)
        type = Types::GenerateOrganizationsAccessReportInput.new
        type.entity_path = params[:entity_path]
        type.organizations_policy_id = params[:organizations_policy_id]
        type
      end
    end

    module GenerateOrganizationsAccessReportOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GenerateOrganizationsAccessReportOutput, context: context)
        type = Types::GenerateOrganizationsAccessReportOutput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module GenerateServiceLastAccessedDetailsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GenerateServiceLastAccessedDetailsInput, context: context)
        type = Types::GenerateServiceLastAccessedDetailsInput.new
        type.arn = params[:arn]
        type.granularity = params[:granularity]
        type
      end
    end

    module GenerateServiceLastAccessedDetailsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GenerateServiceLastAccessedDetailsOutput, context: context)
        type = Types::GenerateServiceLastAccessedDetailsOutput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module GetAccessKeyLastUsedInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAccessKeyLastUsedInput, context: context)
        type = Types::GetAccessKeyLastUsedInput.new
        type.access_key_id = params[:access_key_id]
        type
      end
    end

    module GetAccessKeyLastUsedOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAccessKeyLastUsedOutput, context: context)
        type = Types::GetAccessKeyLastUsedOutput.new
        type.user_name = params[:user_name]
        type.access_key_last_used = AccessKeyLastUsed.build(params[:access_key_last_used], context: "#{context}[:access_key_last_used]") unless params[:access_key_last_used].nil?
        type
      end
    end

    module GetAccountAuthorizationDetailsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAccountAuthorizationDetailsInput, context: context)
        type = Types::GetAccountAuthorizationDetailsInput.new
        type.filter = EntityListType.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.max_items = params[:max_items]
        type.marker = params[:marker]
        type
      end
    end

    module GetAccountAuthorizationDetailsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAccountAuthorizationDetailsOutput, context: context)
        type = Types::GetAccountAuthorizationDetailsOutput.new
        type.user_detail_list = UserDetailListType.build(params[:user_detail_list], context: "#{context}[:user_detail_list]") unless params[:user_detail_list].nil?
        type.group_detail_list = GroupDetailListType.build(params[:group_detail_list], context: "#{context}[:group_detail_list]") unless params[:group_detail_list].nil?
        type.role_detail_list = RoleDetailListType.build(params[:role_detail_list], context: "#{context}[:role_detail_list]") unless params[:role_detail_list].nil?
        type.policies = ManagedPolicyDetailListType.build(params[:policies], context: "#{context}[:policies]") unless params[:policies].nil?
        type.is_truncated = params[:is_truncated]
        type.marker = params[:marker]
        type
      end
    end

    module GetAccountPasswordPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAccountPasswordPolicyInput, context: context)
        type = Types::GetAccountPasswordPolicyInput.new
        type
      end
    end

    module GetAccountPasswordPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAccountPasswordPolicyOutput, context: context)
        type = Types::GetAccountPasswordPolicyOutput.new
        type.password_policy = PasswordPolicy.build(params[:password_policy], context: "#{context}[:password_policy]") unless params[:password_policy].nil?
        type
      end
    end

    module GetAccountSummaryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAccountSummaryInput, context: context)
        type = Types::GetAccountSummaryInput.new
        type
      end
    end

    module GetAccountSummaryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAccountSummaryOutput, context: context)
        type = Types::GetAccountSummaryOutput.new
        type.summary_map = SummaryMapType.build(params[:summary_map], context: "#{context}[:summary_map]") unless params[:summary_map].nil?
        type
      end
    end

    module GetContextKeysForCustomPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetContextKeysForCustomPolicyInput, context: context)
        type = Types::GetContextKeysForCustomPolicyInput.new
        type.policy_input_list = SimulationPolicyListType.build(params[:policy_input_list], context: "#{context}[:policy_input_list]") unless params[:policy_input_list].nil?
        type
      end
    end

    module GetContextKeysForCustomPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetContextKeysForCustomPolicyOutput, context: context)
        type = Types::GetContextKeysForCustomPolicyOutput.new
        type.context_key_names = ContextKeyNamesResultListType.build(params[:context_key_names], context: "#{context}[:context_key_names]") unless params[:context_key_names].nil?
        type
      end
    end

    module GetContextKeysForPrincipalPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetContextKeysForPrincipalPolicyInput, context: context)
        type = Types::GetContextKeysForPrincipalPolicyInput.new
        type.policy_source_arn = params[:policy_source_arn]
        type.policy_input_list = SimulationPolicyListType.build(params[:policy_input_list], context: "#{context}[:policy_input_list]") unless params[:policy_input_list].nil?
        type
      end
    end

    module GetContextKeysForPrincipalPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetContextKeysForPrincipalPolicyOutput, context: context)
        type = Types::GetContextKeysForPrincipalPolicyOutput.new
        type.context_key_names = ContextKeyNamesResultListType.build(params[:context_key_names], context: "#{context}[:context_key_names]") unless params[:context_key_names].nil?
        type
      end
    end

    module GetCredentialReportInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCredentialReportInput, context: context)
        type = Types::GetCredentialReportInput.new
        type
      end
    end

    module GetCredentialReportOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCredentialReportOutput, context: context)
        type = Types::GetCredentialReportOutput.new
        type.content = params[:content]
        type.report_format = params[:report_format]
        type.generated_time = params[:generated_time]
        type
      end
    end

    module GetGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetGroupInput, context: context)
        type = Types::GetGroupInput.new
        type.group_name = params[:group_name]
        type.marker = params[:marker]
        type.max_items = params[:max_items]
        type
      end
    end

    module GetGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetGroupOutput, context: context)
        type = Types::GetGroupOutput.new
        type.group = Group.build(params[:group], context: "#{context}[:group]") unless params[:group].nil?
        type.users = UserListType.build(params[:users], context: "#{context}[:users]") unless params[:users].nil?
        type.is_truncated = params[:is_truncated]
        type.marker = params[:marker]
        type
      end
    end

    module GetGroupPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetGroupPolicyInput, context: context)
        type = Types::GetGroupPolicyInput.new
        type.group_name = params[:group_name]
        type.policy_name = params[:policy_name]
        type
      end
    end

    module GetGroupPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetGroupPolicyOutput, context: context)
        type = Types::GetGroupPolicyOutput.new
        type.group_name = params[:group_name]
        type.policy_name = params[:policy_name]
        type.policy_document = params[:policy_document]
        type
      end
    end

    module GetInstanceProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetInstanceProfileInput, context: context)
        type = Types::GetInstanceProfileInput.new
        type.instance_profile_name = params[:instance_profile_name]
        type
      end
    end

    module GetInstanceProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetInstanceProfileOutput, context: context)
        type = Types::GetInstanceProfileOutput.new
        type.instance_profile = InstanceProfile.build(params[:instance_profile], context: "#{context}[:instance_profile]") unless params[:instance_profile].nil?
        type
      end
    end

    module GetLoginProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLoginProfileInput, context: context)
        type = Types::GetLoginProfileInput.new
        type.user_name = params[:user_name]
        type
      end
    end

    module GetLoginProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLoginProfileOutput, context: context)
        type = Types::GetLoginProfileOutput.new
        type.login_profile = LoginProfile.build(params[:login_profile], context: "#{context}[:login_profile]") unless params[:login_profile].nil?
        type
      end
    end

    module GetOpenIDConnectProviderInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetOpenIDConnectProviderInput, context: context)
        type = Types::GetOpenIDConnectProviderInput.new
        type.open_id_connect_provider_arn = params[:open_id_connect_provider_arn]
        type
      end
    end

    module GetOpenIDConnectProviderOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetOpenIDConnectProviderOutput, context: context)
        type = Types::GetOpenIDConnectProviderOutput.new
        type.url = params[:url]
        type.client_id_list = ClientIDListType.build(params[:client_id_list], context: "#{context}[:client_id_list]") unless params[:client_id_list].nil?
        type.thumbprint_list = ThumbprintListType.build(params[:thumbprint_list], context: "#{context}[:thumbprint_list]") unless params[:thumbprint_list].nil?
        type.create_date = params[:create_date]
        type.tags = TagListType.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module GetOrganizationsAccessReportInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetOrganizationsAccessReportInput, context: context)
        type = Types::GetOrganizationsAccessReportInput.new
        type.job_id = params[:job_id]
        type.max_items = params[:max_items]
        type.marker = params[:marker]
        type.sort_key = params[:sort_key]
        type
      end
    end

    module GetOrganizationsAccessReportOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetOrganizationsAccessReportOutput, context: context)
        type = Types::GetOrganizationsAccessReportOutput.new
        type.job_status = params[:job_status]
        type.job_creation_date = params[:job_creation_date]
        type.job_completion_date = params[:job_completion_date]
        type.number_of_services_accessible = params[:number_of_services_accessible]
        type.number_of_services_not_accessed = params[:number_of_services_not_accessed]
        type.access_details = AccessDetails.build(params[:access_details], context: "#{context}[:access_details]") unless params[:access_details].nil?
        type.is_truncated = params[:is_truncated]
        type.marker = params[:marker]
        type.error_details = ErrorDetails.build(params[:error_details], context: "#{context}[:error_details]") unless params[:error_details].nil?
        type
      end
    end

    module GetPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPolicyInput, context: context)
        type = Types::GetPolicyInput.new
        type.policy_arn = params[:policy_arn]
        type
      end
    end

    module GetPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPolicyOutput, context: context)
        type = Types::GetPolicyOutput.new
        type.policy = Policy.build(params[:policy], context: "#{context}[:policy]") unless params[:policy].nil?
        type
      end
    end

    module GetPolicyVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPolicyVersionInput, context: context)
        type = Types::GetPolicyVersionInput.new
        type.policy_arn = params[:policy_arn]
        type.version_id = params[:version_id]
        type
      end
    end

    module GetPolicyVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPolicyVersionOutput, context: context)
        type = Types::GetPolicyVersionOutput.new
        type.policy_version = PolicyVersion.build(params[:policy_version], context: "#{context}[:policy_version]") unless params[:policy_version].nil?
        type
      end
    end

    module GetRoleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRoleInput, context: context)
        type = Types::GetRoleInput.new
        type.role_name = params[:role_name]
        type
      end
    end

    module GetRoleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRoleOutput, context: context)
        type = Types::GetRoleOutput.new
        type.role = Role.build(params[:role], context: "#{context}[:role]") unless params[:role].nil?
        type
      end
    end

    module GetRolePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRolePolicyInput, context: context)
        type = Types::GetRolePolicyInput.new
        type.role_name = params[:role_name]
        type.policy_name = params[:policy_name]
        type
      end
    end

    module GetRolePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRolePolicyOutput, context: context)
        type = Types::GetRolePolicyOutput.new
        type.role_name = params[:role_name]
        type.policy_name = params[:policy_name]
        type.policy_document = params[:policy_document]
        type
      end
    end

    module GetSAMLProviderInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSAMLProviderInput, context: context)
        type = Types::GetSAMLProviderInput.new
        type.saml_provider_arn = params[:saml_provider_arn]
        type
      end
    end

    module GetSAMLProviderOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSAMLProviderOutput, context: context)
        type = Types::GetSAMLProviderOutput.new
        type.saml_metadata_document = params[:saml_metadata_document]
        type.create_date = params[:create_date]
        type.valid_until = params[:valid_until]
        type.tags = TagListType.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module GetSSHPublicKeyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSSHPublicKeyInput, context: context)
        type = Types::GetSSHPublicKeyInput.new
        type.user_name = params[:user_name]
        type.ssh_public_key_id = params[:ssh_public_key_id]
        type.encoding = params[:encoding]
        type
      end
    end

    module GetSSHPublicKeyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSSHPublicKeyOutput, context: context)
        type = Types::GetSSHPublicKeyOutput.new
        type.ssh_public_key = SSHPublicKey.build(params[:ssh_public_key], context: "#{context}[:ssh_public_key]") unless params[:ssh_public_key].nil?
        type
      end
    end

    module GetServerCertificateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetServerCertificateInput, context: context)
        type = Types::GetServerCertificateInput.new
        type.server_certificate_name = params[:server_certificate_name]
        type
      end
    end

    module GetServerCertificateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetServerCertificateOutput, context: context)
        type = Types::GetServerCertificateOutput.new
        type.server_certificate = ServerCertificate.build(params[:server_certificate], context: "#{context}[:server_certificate]") unless params[:server_certificate].nil?
        type
      end
    end

    module GetServiceLastAccessedDetailsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetServiceLastAccessedDetailsInput, context: context)
        type = Types::GetServiceLastAccessedDetailsInput.new
        type.job_id = params[:job_id]
        type.max_items = params[:max_items]
        type.marker = params[:marker]
        type
      end
    end

    module GetServiceLastAccessedDetailsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetServiceLastAccessedDetailsOutput, context: context)
        type = Types::GetServiceLastAccessedDetailsOutput.new
        type.job_status = params[:job_status]
        type.job_type = params[:job_type]
        type.job_creation_date = params[:job_creation_date]
        type.services_last_accessed = ServicesLastAccessed.build(params[:services_last_accessed], context: "#{context}[:services_last_accessed]") unless params[:services_last_accessed].nil?
        type.job_completion_date = params[:job_completion_date]
        type.is_truncated = params[:is_truncated]
        type.marker = params[:marker]
        type.error = ErrorDetails.build(params[:error], context: "#{context}[:error]") unless params[:error].nil?
        type
      end
    end

    module GetServiceLastAccessedDetailsWithEntitiesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetServiceLastAccessedDetailsWithEntitiesInput, context: context)
        type = Types::GetServiceLastAccessedDetailsWithEntitiesInput.new
        type.job_id = params[:job_id]
        type.service_namespace = params[:service_namespace]
        type.max_items = params[:max_items]
        type.marker = params[:marker]
        type
      end
    end

    module GetServiceLastAccessedDetailsWithEntitiesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetServiceLastAccessedDetailsWithEntitiesOutput, context: context)
        type = Types::GetServiceLastAccessedDetailsWithEntitiesOutput.new
        type.job_status = params[:job_status]
        type.job_creation_date = params[:job_creation_date]
        type.job_completion_date = params[:job_completion_date]
        type.entity_details_list = EntityDetailsListType.build(params[:entity_details_list], context: "#{context}[:entity_details_list]") unless params[:entity_details_list].nil?
        type.is_truncated = params[:is_truncated]
        type.marker = params[:marker]
        type.error = ErrorDetails.build(params[:error], context: "#{context}[:error]") unless params[:error].nil?
        type
      end
    end

    module GetServiceLinkedRoleDeletionStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetServiceLinkedRoleDeletionStatusInput, context: context)
        type = Types::GetServiceLinkedRoleDeletionStatusInput.new
        type.deletion_task_id = params[:deletion_task_id]
        type
      end
    end

    module GetServiceLinkedRoleDeletionStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetServiceLinkedRoleDeletionStatusOutput, context: context)
        type = Types::GetServiceLinkedRoleDeletionStatusOutput.new
        type.status = params[:status]
        type.reason = DeletionTaskFailureReasonType.build(params[:reason], context: "#{context}[:reason]") unless params[:reason].nil?
        type
      end
    end

    module GetUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetUserInput, context: context)
        type = Types::GetUserInput.new
        type.user_name = params[:user_name]
        type
      end
    end

    module GetUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetUserOutput, context: context)
        type = Types::GetUserOutput.new
        type.user = User.build(params[:user], context: "#{context}[:user]") unless params[:user].nil?
        type
      end
    end

    module GetUserPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetUserPolicyInput, context: context)
        type = Types::GetUserPolicyInput.new
        type.user_name = params[:user_name]
        type.policy_name = params[:policy_name]
        type
      end
    end

    module GetUserPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetUserPolicyOutput, context: context)
        type = Types::GetUserPolicyOutput.new
        type.user_name = params[:user_name]
        type.policy_name = params[:policy_name]
        type.policy_document = params[:policy_document]
        type
      end
    end

    module Group
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Group, context: context)
        type = Types::Group.new
        type.path = params[:path]
        type.group_name = params[:group_name]
        type.group_id = params[:group_id]
        type.arn = params[:arn]
        type.create_date = params[:create_date]
        type
      end
    end

    module GroupDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GroupDetail, context: context)
        type = Types::GroupDetail.new
        type.path = params[:path]
        type.group_name = params[:group_name]
        type.group_id = params[:group_id]
        type.arn = params[:arn]
        type.create_date = params[:create_date]
        type.group_policy_list = PolicyDetailListType.build(params[:group_policy_list], context: "#{context}[:group_policy_list]") unless params[:group_policy_list].nil?
        type.attached_managed_policies = AttachedPoliciesListType.build(params[:attached_managed_policies], context: "#{context}[:attached_managed_policies]") unless params[:attached_managed_policies].nil?
        type
      end
    end

    module InstanceProfile
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceProfile, context: context)
        type = Types::InstanceProfile.new
        type.path = params[:path]
        type.instance_profile_name = params[:instance_profile_name]
        type.instance_profile_id = params[:instance_profile_id]
        type.arn = params[:arn]
        type.create_date = params[:create_date]
        type.roles = RoleListType.build(params[:roles], context: "#{context}[:roles]") unless params[:roles].nil?
        type.tags = TagListType.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module InvalidAuthenticationCodeException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidAuthenticationCodeException, context: context)
        type = Types::InvalidAuthenticationCodeException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidCertificateException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidCertificateException, context: context)
        type = Types::InvalidCertificateException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidInputException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidInputException, context: context)
        type = Types::InvalidInputException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidPublicKeyException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidPublicKeyException, context: context)
        type = Types::InvalidPublicKeyException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidUserTypeException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidUserTypeException, context: context)
        type = Types::InvalidUserTypeException.new
        type.message = params[:message]
        type
      end
    end

    module KeyPairMismatchException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KeyPairMismatchException, context: context)
        type = Types::KeyPairMismatchException.new
        type.message = params[:message]
        type
      end
    end

    module LimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module ListAccessKeysInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAccessKeysInput, context: context)
        type = Types::ListAccessKeysInput.new
        type.user_name = params[:user_name]
        type.marker = params[:marker]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListAccessKeysOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAccessKeysOutput, context: context)
        type = Types::ListAccessKeysOutput.new
        type.access_key_metadata = AccessKeyMetadataListType.build(params[:access_key_metadata], context: "#{context}[:access_key_metadata]") unless params[:access_key_metadata].nil?
        type.is_truncated = params[:is_truncated]
        type.marker = params[:marker]
        type
      end
    end

    module ListAccountAliasesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAccountAliasesInput, context: context)
        type = Types::ListAccountAliasesInput.new
        type.marker = params[:marker]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListAccountAliasesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAccountAliasesOutput, context: context)
        type = Types::ListAccountAliasesOutput.new
        type.account_aliases = AccountAliasListType.build(params[:account_aliases], context: "#{context}[:account_aliases]") unless params[:account_aliases].nil?
        type.is_truncated = params[:is_truncated]
        type.marker = params[:marker]
        type
      end
    end

    module ListAttachedGroupPoliciesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAttachedGroupPoliciesInput, context: context)
        type = Types::ListAttachedGroupPoliciesInput.new
        type.group_name = params[:group_name]
        type.path_prefix = params[:path_prefix]
        type.marker = params[:marker]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListAttachedGroupPoliciesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAttachedGroupPoliciesOutput, context: context)
        type = Types::ListAttachedGroupPoliciesOutput.new
        type.attached_policies = AttachedPoliciesListType.build(params[:attached_policies], context: "#{context}[:attached_policies]") unless params[:attached_policies].nil?
        type.is_truncated = params[:is_truncated]
        type.marker = params[:marker]
        type
      end
    end

    module ListAttachedRolePoliciesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAttachedRolePoliciesInput, context: context)
        type = Types::ListAttachedRolePoliciesInput.new
        type.role_name = params[:role_name]
        type.path_prefix = params[:path_prefix]
        type.marker = params[:marker]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListAttachedRolePoliciesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAttachedRolePoliciesOutput, context: context)
        type = Types::ListAttachedRolePoliciesOutput.new
        type.attached_policies = AttachedPoliciesListType.build(params[:attached_policies], context: "#{context}[:attached_policies]") unless params[:attached_policies].nil?
        type.is_truncated = params[:is_truncated]
        type.marker = params[:marker]
        type
      end
    end

    module ListAttachedUserPoliciesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAttachedUserPoliciesInput, context: context)
        type = Types::ListAttachedUserPoliciesInput.new
        type.user_name = params[:user_name]
        type.path_prefix = params[:path_prefix]
        type.marker = params[:marker]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListAttachedUserPoliciesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAttachedUserPoliciesOutput, context: context)
        type = Types::ListAttachedUserPoliciesOutput.new
        type.attached_policies = AttachedPoliciesListType.build(params[:attached_policies], context: "#{context}[:attached_policies]") unless params[:attached_policies].nil?
        type.is_truncated = params[:is_truncated]
        type.marker = params[:marker]
        type
      end
    end

    module ListEntitiesForPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEntitiesForPolicyInput, context: context)
        type = Types::ListEntitiesForPolicyInput.new
        type.policy_arn = params[:policy_arn]
        type.entity_filter = params[:entity_filter]
        type.path_prefix = params[:path_prefix]
        type.policy_usage_filter = params[:policy_usage_filter]
        type.marker = params[:marker]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListEntitiesForPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEntitiesForPolicyOutput, context: context)
        type = Types::ListEntitiesForPolicyOutput.new
        type.policy_groups = PolicyGroupListType.build(params[:policy_groups], context: "#{context}[:policy_groups]") unless params[:policy_groups].nil?
        type.policy_users = PolicyUserListType.build(params[:policy_users], context: "#{context}[:policy_users]") unless params[:policy_users].nil?
        type.policy_roles = PolicyRoleListType.build(params[:policy_roles], context: "#{context}[:policy_roles]") unless params[:policy_roles].nil?
        type.is_truncated = params[:is_truncated]
        type.marker = params[:marker]
        type
      end
    end

    module ListGroupPoliciesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListGroupPoliciesInput, context: context)
        type = Types::ListGroupPoliciesInput.new
        type.group_name = params[:group_name]
        type.marker = params[:marker]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListGroupPoliciesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListGroupPoliciesOutput, context: context)
        type = Types::ListGroupPoliciesOutput.new
        type.policy_names = PolicyNameListType.build(params[:policy_names], context: "#{context}[:policy_names]") unless params[:policy_names].nil?
        type.is_truncated = params[:is_truncated]
        type.marker = params[:marker]
        type
      end
    end

    module ListGroupsForUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListGroupsForUserInput, context: context)
        type = Types::ListGroupsForUserInput.new
        type.user_name = params[:user_name]
        type.marker = params[:marker]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListGroupsForUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListGroupsForUserOutput, context: context)
        type = Types::ListGroupsForUserOutput.new
        type.groups = GroupListType.build(params[:groups], context: "#{context}[:groups]") unless params[:groups].nil?
        type.is_truncated = params[:is_truncated]
        type.marker = params[:marker]
        type
      end
    end

    module ListGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListGroupsInput, context: context)
        type = Types::ListGroupsInput.new
        type.path_prefix = params[:path_prefix]
        type.marker = params[:marker]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListGroupsOutput, context: context)
        type = Types::ListGroupsOutput.new
        type.groups = GroupListType.build(params[:groups], context: "#{context}[:groups]") unless params[:groups].nil?
        type.is_truncated = params[:is_truncated]
        type.marker = params[:marker]
        type
      end
    end

    module ListInstanceProfileTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListInstanceProfileTagsInput, context: context)
        type = Types::ListInstanceProfileTagsInput.new
        type.instance_profile_name = params[:instance_profile_name]
        type.marker = params[:marker]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListInstanceProfileTagsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListInstanceProfileTagsOutput, context: context)
        type = Types::ListInstanceProfileTagsOutput.new
        type.tags = TagListType.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.is_truncated = params[:is_truncated]
        type.marker = params[:marker]
        type
      end
    end

    module ListInstanceProfilesForRoleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListInstanceProfilesForRoleInput, context: context)
        type = Types::ListInstanceProfilesForRoleInput.new
        type.role_name = params[:role_name]
        type.marker = params[:marker]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListInstanceProfilesForRoleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListInstanceProfilesForRoleOutput, context: context)
        type = Types::ListInstanceProfilesForRoleOutput.new
        type.instance_profiles = InstanceProfileListType.build(params[:instance_profiles], context: "#{context}[:instance_profiles]") unless params[:instance_profiles].nil?
        type.is_truncated = params[:is_truncated]
        type.marker = params[:marker]
        type
      end
    end

    module ListInstanceProfilesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListInstanceProfilesInput, context: context)
        type = Types::ListInstanceProfilesInput.new
        type.path_prefix = params[:path_prefix]
        type.marker = params[:marker]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListInstanceProfilesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListInstanceProfilesOutput, context: context)
        type = Types::ListInstanceProfilesOutput.new
        type.instance_profiles = InstanceProfileListType.build(params[:instance_profiles], context: "#{context}[:instance_profiles]") unless params[:instance_profiles].nil?
        type.is_truncated = params[:is_truncated]
        type.marker = params[:marker]
        type
      end
    end

    module ListMFADeviceTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMFADeviceTagsInput, context: context)
        type = Types::ListMFADeviceTagsInput.new
        type.serial_number = params[:serial_number]
        type.marker = params[:marker]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListMFADeviceTagsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMFADeviceTagsOutput, context: context)
        type = Types::ListMFADeviceTagsOutput.new
        type.tags = TagListType.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.is_truncated = params[:is_truncated]
        type.marker = params[:marker]
        type
      end
    end

    module ListMFADevicesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMFADevicesInput, context: context)
        type = Types::ListMFADevicesInput.new
        type.user_name = params[:user_name]
        type.marker = params[:marker]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListMFADevicesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMFADevicesOutput, context: context)
        type = Types::ListMFADevicesOutput.new
        type.mfa_devices = MfaDeviceListType.build(params[:mfa_devices], context: "#{context}[:mfa_devices]") unless params[:mfa_devices].nil?
        type.is_truncated = params[:is_truncated]
        type.marker = params[:marker]
        type
      end
    end

    module ListOpenIDConnectProviderTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListOpenIDConnectProviderTagsInput, context: context)
        type = Types::ListOpenIDConnectProviderTagsInput.new
        type.open_id_connect_provider_arn = params[:open_id_connect_provider_arn]
        type.marker = params[:marker]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListOpenIDConnectProviderTagsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListOpenIDConnectProviderTagsOutput, context: context)
        type = Types::ListOpenIDConnectProviderTagsOutput.new
        type.tags = TagListType.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.is_truncated = params[:is_truncated]
        type.marker = params[:marker]
        type
      end
    end

    module ListOpenIDConnectProvidersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListOpenIDConnectProvidersInput, context: context)
        type = Types::ListOpenIDConnectProvidersInput.new
        type
      end
    end

    module ListOpenIDConnectProvidersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListOpenIDConnectProvidersOutput, context: context)
        type = Types::ListOpenIDConnectProvidersOutput.new
        type.open_id_connect_provider_list = OpenIDConnectProviderListType.build(params[:open_id_connect_provider_list], context: "#{context}[:open_id_connect_provider_list]") unless params[:open_id_connect_provider_list].nil?
        type
      end
    end

    module ListPoliciesGrantingServiceAccessEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPoliciesGrantingServiceAccessEntry, context: context)
        type = Types::ListPoliciesGrantingServiceAccessEntry.new
        type.service_namespace = params[:service_namespace]
        type.policies = PolicyGrantingServiceAccessListType.build(params[:policies], context: "#{context}[:policies]") unless params[:policies].nil?
        type
      end
    end

    module ListPoliciesGrantingServiceAccessInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPoliciesGrantingServiceAccessInput, context: context)
        type = Types::ListPoliciesGrantingServiceAccessInput.new
        type.marker = params[:marker]
        type.arn = params[:arn]
        type.service_namespaces = ServiceNamespaceListType.build(params[:service_namespaces], context: "#{context}[:service_namespaces]") unless params[:service_namespaces].nil?
        type
      end
    end

    module ListPoliciesGrantingServiceAccessOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPoliciesGrantingServiceAccessOutput, context: context)
        type = Types::ListPoliciesGrantingServiceAccessOutput.new
        type.policies_granting_service_access = ListPolicyGrantingServiceAccessResponseListType.build(params[:policies_granting_service_access], context: "#{context}[:policies_granting_service_access]") unless params[:policies_granting_service_access].nil?
        type.is_truncated = params[:is_truncated]
        type.marker = params[:marker]
        type
      end
    end

    module ListPoliciesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPoliciesInput, context: context)
        type = Types::ListPoliciesInput.new
        type.scope = params[:scope]
        type.only_attached = params[:only_attached]
        type.path_prefix = params[:path_prefix]
        type.policy_usage_filter = params[:policy_usage_filter]
        type.marker = params[:marker]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListPoliciesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPoliciesOutput, context: context)
        type = Types::ListPoliciesOutput.new
        type.policies = PolicyListType.build(params[:policies], context: "#{context}[:policies]") unless params[:policies].nil?
        type.is_truncated = params[:is_truncated]
        type.marker = params[:marker]
        type
      end
    end

    module ListPolicyTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPolicyTagsInput, context: context)
        type = Types::ListPolicyTagsInput.new
        type.policy_arn = params[:policy_arn]
        type.marker = params[:marker]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListPolicyTagsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPolicyTagsOutput, context: context)
        type = Types::ListPolicyTagsOutput.new
        type.tags = TagListType.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.is_truncated = params[:is_truncated]
        type.marker = params[:marker]
        type
      end
    end

    module ListPolicyVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPolicyVersionsInput, context: context)
        type = Types::ListPolicyVersionsInput.new
        type.policy_arn = params[:policy_arn]
        type.marker = params[:marker]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListPolicyVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPolicyVersionsOutput, context: context)
        type = Types::ListPolicyVersionsOutput.new
        type.versions = PolicyDocumentVersionListType.build(params[:versions], context: "#{context}[:versions]") unless params[:versions].nil?
        type.is_truncated = params[:is_truncated]
        type.marker = params[:marker]
        type
      end
    end

    module ListRolePoliciesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRolePoliciesInput, context: context)
        type = Types::ListRolePoliciesInput.new
        type.role_name = params[:role_name]
        type.marker = params[:marker]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListRolePoliciesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRolePoliciesOutput, context: context)
        type = Types::ListRolePoliciesOutput.new
        type.policy_names = PolicyNameListType.build(params[:policy_names], context: "#{context}[:policy_names]") unless params[:policy_names].nil?
        type.is_truncated = params[:is_truncated]
        type.marker = params[:marker]
        type
      end
    end

    module ListRoleTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRoleTagsInput, context: context)
        type = Types::ListRoleTagsInput.new
        type.role_name = params[:role_name]
        type.marker = params[:marker]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListRoleTagsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRoleTagsOutput, context: context)
        type = Types::ListRoleTagsOutput.new
        type.tags = TagListType.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.is_truncated = params[:is_truncated]
        type.marker = params[:marker]
        type
      end
    end

    module ListRolesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRolesInput, context: context)
        type = Types::ListRolesInput.new
        type.path_prefix = params[:path_prefix]
        type.marker = params[:marker]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListRolesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRolesOutput, context: context)
        type = Types::ListRolesOutput.new
        type.roles = RoleListType.build(params[:roles], context: "#{context}[:roles]") unless params[:roles].nil?
        type.is_truncated = params[:is_truncated]
        type.marker = params[:marker]
        type
      end
    end

    module ListSAMLProviderTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSAMLProviderTagsInput, context: context)
        type = Types::ListSAMLProviderTagsInput.new
        type.saml_provider_arn = params[:saml_provider_arn]
        type.marker = params[:marker]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListSAMLProviderTagsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSAMLProviderTagsOutput, context: context)
        type = Types::ListSAMLProviderTagsOutput.new
        type.tags = TagListType.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.is_truncated = params[:is_truncated]
        type.marker = params[:marker]
        type
      end
    end

    module ListSAMLProvidersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSAMLProvidersInput, context: context)
        type = Types::ListSAMLProvidersInput.new
        type
      end
    end

    module ListSAMLProvidersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSAMLProvidersOutput, context: context)
        type = Types::ListSAMLProvidersOutput.new
        type.saml_provider_list = SAMLProviderListType.build(params[:saml_provider_list], context: "#{context}[:saml_provider_list]") unless params[:saml_provider_list].nil?
        type
      end
    end

    module ListSSHPublicKeysInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSSHPublicKeysInput, context: context)
        type = Types::ListSSHPublicKeysInput.new
        type.user_name = params[:user_name]
        type.marker = params[:marker]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListSSHPublicKeysOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSSHPublicKeysOutput, context: context)
        type = Types::ListSSHPublicKeysOutput.new
        type.ssh_public_keys = SSHPublicKeyListType.build(params[:ssh_public_keys], context: "#{context}[:ssh_public_keys]") unless params[:ssh_public_keys].nil?
        type.is_truncated = params[:is_truncated]
        type.marker = params[:marker]
        type
      end
    end

    module ListServerCertificateTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListServerCertificateTagsInput, context: context)
        type = Types::ListServerCertificateTagsInput.new
        type.server_certificate_name = params[:server_certificate_name]
        type.marker = params[:marker]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListServerCertificateTagsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListServerCertificateTagsOutput, context: context)
        type = Types::ListServerCertificateTagsOutput.new
        type.tags = TagListType.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.is_truncated = params[:is_truncated]
        type.marker = params[:marker]
        type
      end
    end

    module ListServerCertificatesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListServerCertificatesInput, context: context)
        type = Types::ListServerCertificatesInput.new
        type.path_prefix = params[:path_prefix]
        type.marker = params[:marker]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListServerCertificatesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListServerCertificatesOutput, context: context)
        type = Types::ListServerCertificatesOutput.new
        type.server_certificate_metadata_list = ServerCertificateMetadataListType.build(params[:server_certificate_metadata_list], context: "#{context}[:server_certificate_metadata_list]") unless params[:server_certificate_metadata_list].nil?
        type.is_truncated = params[:is_truncated]
        type.marker = params[:marker]
        type
      end
    end

    module ListServiceSpecificCredentialsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListServiceSpecificCredentialsInput, context: context)
        type = Types::ListServiceSpecificCredentialsInput.new
        type.user_name = params[:user_name]
        type.service_name = params[:service_name]
        type
      end
    end

    module ListServiceSpecificCredentialsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListServiceSpecificCredentialsOutput, context: context)
        type = Types::ListServiceSpecificCredentialsOutput.new
        type.service_specific_credentials = ServiceSpecificCredentialsListType.build(params[:service_specific_credentials], context: "#{context}[:service_specific_credentials]") unless params[:service_specific_credentials].nil?
        type
      end
    end

    module ListSigningCertificatesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSigningCertificatesInput, context: context)
        type = Types::ListSigningCertificatesInput.new
        type.user_name = params[:user_name]
        type.marker = params[:marker]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListSigningCertificatesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSigningCertificatesOutput, context: context)
        type = Types::ListSigningCertificatesOutput.new
        type.certificates = CertificateListType.build(params[:certificates], context: "#{context}[:certificates]") unless params[:certificates].nil?
        type.is_truncated = params[:is_truncated]
        type.marker = params[:marker]
        type
      end
    end

    module ListUserPoliciesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListUserPoliciesInput, context: context)
        type = Types::ListUserPoliciesInput.new
        type.user_name = params[:user_name]
        type.marker = params[:marker]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListUserPoliciesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListUserPoliciesOutput, context: context)
        type = Types::ListUserPoliciesOutput.new
        type.policy_names = PolicyNameListType.build(params[:policy_names], context: "#{context}[:policy_names]") unless params[:policy_names].nil?
        type.is_truncated = params[:is_truncated]
        type.marker = params[:marker]
        type
      end
    end

    module ListUserTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListUserTagsInput, context: context)
        type = Types::ListUserTagsInput.new
        type.user_name = params[:user_name]
        type.marker = params[:marker]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListUserTagsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListUserTagsOutput, context: context)
        type = Types::ListUserTagsOutput.new
        type.tags = TagListType.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.is_truncated = params[:is_truncated]
        type.marker = params[:marker]
        type
      end
    end

    module ListUsersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListUsersInput, context: context)
        type = Types::ListUsersInput.new
        type.path_prefix = params[:path_prefix]
        type.marker = params[:marker]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListUsersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListUsersOutput, context: context)
        type = Types::ListUsersOutput.new
        type.users = UserListType.build(params[:users], context: "#{context}[:users]") unless params[:users].nil?
        type.is_truncated = params[:is_truncated]
        type.marker = params[:marker]
        type
      end
    end

    module ListVirtualMFADevicesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListVirtualMFADevicesInput, context: context)
        type = Types::ListVirtualMFADevicesInput.new
        type.assignment_status = params[:assignment_status]
        type.marker = params[:marker]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListVirtualMFADevicesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListVirtualMFADevicesOutput, context: context)
        type = Types::ListVirtualMFADevicesOutput.new
        type.virtual_mfa_devices = VirtualMFADeviceListType.build(params[:virtual_mfa_devices], context: "#{context}[:virtual_mfa_devices]") unless params[:virtual_mfa_devices].nil?
        type.is_truncated = params[:is_truncated]
        type.marker = params[:marker]
        type
      end
    end

    module LoginProfile
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LoginProfile, context: context)
        type = Types::LoginProfile.new
        type.user_name = params[:user_name]
        type.create_date = params[:create_date]
        type.password_reset_required = params[:password_reset_required]
        type
      end
    end

    module MFADevice
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MFADevice, context: context)
        type = Types::MFADevice.new
        type.user_name = params[:user_name]
        type.serial_number = params[:serial_number]
        type.enable_date = params[:enable_date]
        type
      end
    end

    module MalformedCertificateException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MalformedCertificateException, context: context)
        type = Types::MalformedCertificateException.new
        type.message = params[:message]
        type
      end
    end

    module MalformedPolicyDocumentException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MalformedPolicyDocumentException, context: context)
        type = Types::MalformedPolicyDocumentException.new
        type.message = params[:message]
        type
      end
    end

    module ManagedPolicyDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ManagedPolicyDetail, context: context)
        type = Types::ManagedPolicyDetail.new
        type.policy_name = params[:policy_name]
        type.policy_id = params[:policy_id]
        type.arn = params[:arn]
        type.path = params[:path]
        type.default_version_id = params[:default_version_id]
        type.attachment_count = params[:attachment_count]
        type.permissions_boundary_usage_count = params[:permissions_boundary_usage_count]
        type.is_attachable = params[:is_attachable]
        type.description = params[:description]
        type.create_date = params[:create_date]
        type.update_date = params[:update_date]
        type.policy_version_list = PolicyDocumentVersionListType.build(params[:policy_version_list], context: "#{context}[:policy_version_list]") unless params[:policy_version_list].nil?
        type
      end
    end

    module ManagedPolicyDetailListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ManagedPolicyDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module NoSuchEntityException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NoSuchEntityException, context: context)
        type = Types::NoSuchEntityException.new
        type.message = params[:message]
        type
      end
    end

    module OpenIDConnectProviderListEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OpenIDConnectProviderListEntry, context: context)
        type = Types::OpenIDConnectProviderListEntry.new
        type.arn = params[:arn]
        type
      end
    end

    module OpenIDConnectProviderListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OpenIDConnectProviderListEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module OrganizationsDecisionDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OrganizationsDecisionDetail, context: context)
        type = Types::OrganizationsDecisionDetail.new
        type.allowed_by_organizations = params[:allowed_by_organizations]
        type
      end
    end

    module PasswordPolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PasswordPolicy, context: context)
        type = Types::PasswordPolicy.new
        type.minimum_password_length = params[:minimum_password_length]
        type.require_symbols = params[:require_symbols]
        type.require_numbers = params[:require_numbers]
        type.require_uppercase_characters = params[:require_uppercase_characters]
        type.require_lowercase_characters = params[:require_lowercase_characters]
        type.allow_users_to_change_password = params[:allow_users_to_change_password]
        type.expire_passwords = params[:expire_passwords]
        type.max_password_age = params[:max_password_age]
        type.password_reuse_prevention = params[:password_reuse_prevention]
        type.hard_expiry = params[:hard_expiry]
        type
      end
    end

    module PasswordPolicyViolationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PasswordPolicyViolationException, context: context)
        type = Types::PasswordPolicyViolationException.new
        type.message = params[:message]
        type
      end
    end

    module PermissionsBoundaryDecisionDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PermissionsBoundaryDecisionDetail, context: context)
        type = Types::PermissionsBoundaryDecisionDetail.new
        type.allowed_by_permissions_boundary = params[:allowed_by_permissions_boundary]
        type
      end
    end

    module Policy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Policy, context: context)
        type = Types::Policy.new
        type.policy_name = params[:policy_name]
        type.policy_id = params[:policy_id]
        type.arn = params[:arn]
        type.path = params[:path]
        type.default_version_id = params[:default_version_id]
        type.attachment_count = params[:attachment_count]
        type.permissions_boundary_usage_count = params[:permissions_boundary_usage_count]
        type.is_attachable = params[:is_attachable]
        type.description = params[:description]
        type.create_date = params[:create_date]
        type.update_date = params[:update_date]
        type.tags = TagListType.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module PolicyDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PolicyDetail, context: context)
        type = Types::PolicyDetail.new
        type.policy_name = params[:policy_name]
        type.policy_document = params[:policy_document]
        type
      end
    end

    module PolicyEvaluationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PolicyEvaluationException, context: context)
        type = Types::PolicyEvaluationException.new
        type.message = params[:message]
        type
      end
    end

    module PolicyGrantingServiceAccess
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PolicyGrantingServiceAccess, context: context)
        type = Types::PolicyGrantingServiceAccess.new
        type.policy_name = params[:policy_name]
        type.policy_type = params[:policy_type]
        type.policy_arn = params[:policy_arn]
        type.entity_type = params[:entity_type]
        type.entity_name = params[:entity_name]
        type
      end
    end

    module PolicyGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PolicyGroup, context: context)
        type = Types::PolicyGroup.new
        type.group_name = params[:group_name]
        type.group_id = params[:group_id]
        type
      end
    end

    module PolicyGroupListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PolicyGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PolicyNotAttachableException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PolicyNotAttachableException, context: context)
        type = Types::PolicyNotAttachableException.new
        type.message = params[:message]
        type
      end
    end

    module PolicyRole
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PolicyRole, context: context)
        type = Types::PolicyRole.new
        type.role_name = params[:role_name]
        type.role_id = params[:role_id]
        type
      end
    end

    module PolicyRoleListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PolicyRole.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PolicyUser
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PolicyUser, context: context)
        type = Types::PolicyUser.new
        type.user_name = params[:user_name]
        type.user_id = params[:user_id]
        type
      end
    end

    module PolicyUserListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PolicyUser.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PolicyVersion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PolicyVersion, context: context)
        type = Types::PolicyVersion.new
        type.document = params[:document]
        type.version_id = params[:version_id]
        type.is_default_version = params[:is_default_version]
        type.create_date = params[:create_date]
        type
      end
    end

    module Position
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Position, context: context)
        type = Types::Position.new
        type.line = params[:line]
        type.column = params[:column]
        type
      end
    end

    module PutGroupPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutGroupPolicyInput, context: context)
        type = Types::PutGroupPolicyInput.new
        type.group_name = params[:group_name]
        type.policy_name = params[:policy_name]
        type.policy_document = params[:policy_document]
        type
      end
    end

    module PutGroupPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutGroupPolicyOutput, context: context)
        type = Types::PutGroupPolicyOutput.new
        type
      end
    end

    module PutRolePermissionsBoundaryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutRolePermissionsBoundaryInput, context: context)
        type = Types::PutRolePermissionsBoundaryInput.new
        type.role_name = params[:role_name]
        type.permissions_boundary = params[:permissions_boundary]
        type
      end
    end

    module PutRolePermissionsBoundaryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutRolePermissionsBoundaryOutput, context: context)
        type = Types::PutRolePermissionsBoundaryOutput.new
        type
      end
    end

    module PutRolePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutRolePolicyInput, context: context)
        type = Types::PutRolePolicyInput.new
        type.role_name = params[:role_name]
        type.policy_name = params[:policy_name]
        type.policy_document = params[:policy_document]
        type
      end
    end

    module PutRolePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutRolePolicyOutput, context: context)
        type = Types::PutRolePolicyOutput.new
        type
      end
    end

    module PutUserPermissionsBoundaryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutUserPermissionsBoundaryInput, context: context)
        type = Types::PutUserPermissionsBoundaryInput.new
        type.user_name = params[:user_name]
        type.permissions_boundary = params[:permissions_boundary]
        type
      end
    end

    module PutUserPermissionsBoundaryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutUserPermissionsBoundaryOutput, context: context)
        type = Types::PutUserPermissionsBoundaryOutput.new
        type
      end
    end

    module PutUserPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutUserPolicyInput, context: context)
        type = Types::PutUserPolicyInput.new
        type.user_name = params[:user_name]
        type.policy_name = params[:policy_name]
        type.policy_document = params[:policy_document]
        type
      end
    end

    module PutUserPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutUserPolicyOutput, context: context)
        type = Types::PutUserPolicyOutput.new
        type
      end
    end

    module RemoveClientIDFromOpenIDConnectProviderInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveClientIDFromOpenIDConnectProviderInput, context: context)
        type = Types::RemoveClientIDFromOpenIDConnectProviderInput.new
        type.open_id_connect_provider_arn = params[:open_id_connect_provider_arn]
        type.client_id = params[:client_id]
        type
      end
    end

    module RemoveClientIDFromOpenIDConnectProviderOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveClientIDFromOpenIDConnectProviderOutput, context: context)
        type = Types::RemoveClientIDFromOpenIDConnectProviderOutput.new
        type
      end
    end

    module RemoveRoleFromInstanceProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveRoleFromInstanceProfileInput, context: context)
        type = Types::RemoveRoleFromInstanceProfileInput.new
        type.instance_profile_name = params[:instance_profile_name]
        type.role_name = params[:role_name]
        type
      end
    end

    module RemoveRoleFromInstanceProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveRoleFromInstanceProfileOutput, context: context)
        type = Types::RemoveRoleFromInstanceProfileOutput.new
        type
      end
    end

    module RemoveUserFromGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveUserFromGroupInput, context: context)
        type = Types::RemoveUserFromGroupInput.new
        type.group_name = params[:group_name]
        type.user_name = params[:user_name]
        type
      end
    end

    module RemoveUserFromGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveUserFromGroupOutput, context: context)
        type = Types::RemoveUserFromGroupOutput.new
        type
      end
    end

    module ReportGenerationLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReportGenerationLimitExceededException, context: context)
        type = Types::ReportGenerationLimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module ResetServiceSpecificCredentialInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResetServiceSpecificCredentialInput, context: context)
        type = Types::ResetServiceSpecificCredentialInput.new
        type.user_name = params[:user_name]
        type.service_specific_credential_id = params[:service_specific_credential_id]
        type
      end
    end

    module ResetServiceSpecificCredentialOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResetServiceSpecificCredentialOutput, context: context)
        type = Types::ResetServiceSpecificCredentialOutput.new
        type.service_specific_credential = ServiceSpecificCredential.build(params[:service_specific_credential], context: "#{context}[:service_specific_credential]") unless params[:service_specific_credential].nil?
        type
      end
    end

    module ResourceNameListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ResourceSpecificResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceSpecificResult, context: context)
        type = Types::ResourceSpecificResult.new
        type.eval_resource_name = params[:eval_resource_name]
        type.eval_resource_decision = params[:eval_resource_decision]
        type.matched_statements = StatementListType.build(params[:matched_statements], context: "#{context}[:matched_statements]") unless params[:matched_statements].nil?
        type.missing_context_values = ContextKeyNamesResultListType.build(params[:missing_context_values], context: "#{context}[:missing_context_values]") unless params[:missing_context_values].nil?
        type.eval_decision_details = EvalDecisionDetailsType.build(params[:eval_decision_details], context: "#{context}[:eval_decision_details]") unless params[:eval_decision_details].nil?
        type.permissions_boundary_decision_detail = PermissionsBoundaryDecisionDetail.build(params[:permissions_boundary_decision_detail], context: "#{context}[:permissions_boundary_decision_detail]") unless params[:permissions_boundary_decision_detail].nil?
        type
      end
    end

    module ResourceSpecificResultListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResourceSpecificResult.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResyncMFADeviceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResyncMFADeviceInput, context: context)
        type = Types::ResyncMFADeviceInput.new
        type.user_name = params[:user_name]
        type.serial_number = params[:serial_number]
        type.authentication_code1 = params[:authentication_code1]
        type.authentication_code2 = params[:authentication_code2]
        type
      end
    end

    module ResyncMFADeviceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResyncMFADeviceOutput, context: context)
        type = Types::ResyncMFADeviceOutput.new
        type
      end
    end

    module Role
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Role, context: context)
        type = Types::Role.new
        type.path = params[:path]
        type.role_name = params[:role_name]
        type.role_id = params[:role_id]
        type.arn = params[:arn]
        type.create_date = params[:create_date]
        type.assume_role_policy_document = params[:assume_role_policy_document]
        type.description = params[:description]
        type.max_session_duration = params[:max_session_duration]
        type.permissions_boundary = AttachedPermissionsBoundary.build(params[:permissions_boundary], context: "#{context}[:permissions_boundary]") unless params[:permissions_boundary].nil?
        type.tags = TagListType.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.role_last_used = RoleLastUsed.build(params[:role_last_used], context: "#{context}[:role_last_used]") unless params[:role_last_used].nil?
        type
      end
    end

    module RoleDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RoleDetail, context: context)
        type = Types::RoleDetail.new
        type.path = params[:path]
        type.role_name = params[:role_name]
        type.role_id = params[:role_id]
        type.arn = params[:arn]
        type.create_date = params[:create_date]
        type.assume_role_policy_document = params[:assume_role_policy_document]
        type.instance_profile_list = InstanceProfileListType.build(params[:instance_profile_list], context: "#{context}[:instance_profile_list]") unless params[:instance_profile_list].nil?
        type.role_policy_list = PolicyDetailListType.build(params[:role_policy_list], context: "#{context}[:role_policy_list]") unless params[:role_policy_list].nil?
        type.attached_managed_policies = AttachedPoliciesListType.build(params[:attached_managed_policies], context: "#{context}[:attached_managed_policies]") unless params[:attached_managed_policies].nil?
        type.permissions_boundary = AttachedPermissionsBoundary.build(params[:permissions_boundary], context: "#{context}[:permissions_boundary]") unless params[:permissions_boundary].nil?
        type.tags = TagListType.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.role_last_used = RoleLastUsed.build(params[:role_last_used], context: "#{context}[:role_last_used]") unless params[:role_last_used].nil?
        type
      end
    end

    module RoleLastUsed
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RoleLastUsed, context: context)
        type = Types::RoleLastUsed.new
        type.last_used_date = params[:last_used_date]
        type.region = params[:region]
        type
      end
    end

    module RoleUsageListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RoleUsageType.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RoleUsageType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RoleUsageType, context: context)
        type = Types::RoleUsageType.new
        type.region = params[:region]
        type.resources = ArnListType.build(params[:resources], context: "#{context}[:resources]") unless params[:resources].nil?
        type
      end
    end

    module SAMLProviderListEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SAMLProviderListEntry, context: context)
        type = Types::SAMLProviderListEntry.new
        type.arn = params[:arn]
        type.valid_until = params[:valid_until]
        type.create_date = params[:create_date]
        type
      end
    end

    module SAMLProviderListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SAMLProviderListEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SSHPublicKey
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SSHPublicKey, context: context)
        type = Types::SSHPublicKey.new
        type.user_name = params[:user_name]
        type.ssh_public_key_id = params[:ssh_public_key_id]
        type.fingerprint = params[:fingerprint]
        type.ssh_public_key_body = params[:ssh_public_key_body]
        type.status = params[:status]
        type.upload_date = params[:upload_date]
        type
      end
    end

    module SSHPublicKeyListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SSHPublicKeyMetadata.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SSHPublicKeyMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SSHPublicKeyMetadata, context: context)
        type = Types::SSHPublicKeyMetadata.new
        type.user_name = params[:user_name]
        type.ssh_public_key_id = params[:ssh_public_key_id]
        type.status = params[:status]
        type.upload_date = params[:upload_date]
        type
      end
    end

    module ServerCertificate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServerCertificate, context: context)
        type = Types::ServerCertificate.new
        type.server_certificate_metadata = ServerCertificateMetadata.build(params[:server_certificate_metadata], context: "#{context}[:server_certificate_metadata]") unless params[:server_certificate_metadata].nil?
        type.certificate_body = params[:certificate_body]
        type.certificate_chain = params[:certificate_chain]
        type.tags = TagListType.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ServerCertificateMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServerCertificateMetadata, context: context)
        type = Types::ServerCertificateMetadata.new
        type.path = params[:path]
        type.server_certificate_name = params[:server_certificate_name]
        type.server_certificate_id = params[:server_certificate_id]
        type.arn = params[:arn]
        type.upload_date = params[:upload_date]
        type.expiration = params[:expiration]
        type
      end
    end

    module ServiceFailureException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceFailureException, context: context)
        type = Types::ServiceFailureException.new
        type.message = params[:message]
        type
      end
    end

    module ServiceLastAccessed
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceLastAccessed, context: context)
        type = Types::ServiceLastAccessed.new
        type.service_name = params[:service_name]
        type.last_authenticated = params[:last_authenticated]
        type.service_namespace = params[:service_namespace]
        type.last_authenticated_entity = params[:last_authenticated_entity]
        type.last_authenticated_region = params[:last_authenticated_region]
        type.total_authenticated_entities = params[:total_authenticated_entities]
        type.tracked_actions_last_accessed = TrackedActionsLastAccessed.build(params[:tracked_actions_last_accessed], context: "#{context}[:tracked_actions_last_accessed]") unless params[:tracked_actions_last_accessed].nil?
        type
      end
    end

    module ServiceNotSupportedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceNotSupportedException, context: context)
        type = Types::ServiceNotSupportedException.new
        type.message = params[:message]
        type
      end
    end

    module ServiceSpecificCredential
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceSpecificCredential, context: context)
        type = Types::ServiceSpecificCredential.new
        type.create_date = params[:create_date]
        type.service_name = params[:service_name]
        type.service_user_name = params[:service_user_name]
        type.service_password = params[:service_password]
        type.service_specific_credential_id = params[:service_specific_credential_id]
        type.user_name = params[:user_name]
        type.status = params[:status]
        type
      end
    end

    module ServiceSpecificCredentialMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceSpecificCredentialMetadata, context: context)
        type = Types::ServiceSpecificCredentialMetadata.new
        type.user_name = params[:user_name]
        type.status = params[:status]
        type.service_user_name = params[:service_user_name]
        type.create_date = params[:create_date]
        type.service_specific_credential_id = params[:service_specific_credential_id]
        type.service_name = params[:service_name]
        type
      end
    end

    module ServiceSpecificCredentialsListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ServiceSpecificCredentialMetadata.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ServicesLastAccessed
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ServiceLastAccessed.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SetDefaultPolicyVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetDefaultPolicyVersionInput, context: context)
        type = Types::SetDefaultPolicyVersionInput.new
        type.policy_arn = params[:policy_arn]
        type.version_id = params[:version_id]
        type
      end
    end

    module SetDefaultPolicyVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetDefaultPolicyVersionOutput, context: context)
        type = Types::SetDefaultPolicyVersionOutput.new
        type
      end
    end

    module SetSecurityTokenServicePreferencesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetSecurityTokenServicePreferencesInput, context: context)
        type = Types::SetSecurityTokenServicePreferencesInput.new
        type.global_endpoint_token_version = params[:global_endpoint_token_version]
        type
      end
    end

    module SetSecurityTokenServicePreferencesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetSecurityTokenServicePreferencesOutput, context: context)
        type = Types::SetSecurityTokenServicePreferencesOutput.new
        type
      end
    end

    module SigningCertificate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SigningCertificate, context: context)
        type = Types::SigningCertificate.new
        type.user_name = params[:user_name]
        type.certificate_id = params[:certificate_id]
        type.certificate_body = params[:certificate_body]
        type.status = params[:status]
        type.upload_date = params[:upload_date]
        type
      end
    end

    module SimulateCustomPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SimulateCustomPolicyInput, context: context)
        type = Types::SimulateCustomPolicyInput.new
        type.policy_input_list = SimulationPolicyListType.build(params[:policy_input_list], context: "#{context}[:policy_input_list]") unless params[:policy_input_list].nil?
        type.permissions_boundary_policy_input_list = SimulationPolicyListType.build(params[:permissions_boundary_policy_input_list], context: "#{context}[:permissions_boundary_policy_input_list]") unless params[:permissions_boundary_policy_input_list].nil?
        type.action_names = ActionNameListType.build(params[:action_names], context: "#{context}[:action_names]") unless params[:action_names].nil?
        type.resource_arns = ResourceNameListType.build(params[:resource_arns], context: "#{context}[:resource_arns]") unless params[:resource_arns].nil?
        type.resource_policy = params[:resource_policy]
        type.resource_owner = params[:resource_owner]
        type.caller_arn = params[:caller_arn]
        type.context_entries = ContextEntryListType.build(params[:context_entries], context: "#{context}[:context_entries]") unless params[:context_entries].nil?
        type.resource_handling_option = params[:resource_handling_option]
        type.max_items = params[:max_items]
        type.marker = params[:marker]
        type
      end
    end

    module SimulateCustomPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SimulateCustomPolicyOutput, context: context)
        type = Types::SimulateCustomPolicyOutput.new
        type.evaluation_results = EvaluationResultsListType.build(params[:evaluation_results], context: "#{context}[:evaluation_results]") unless params[:evaluation_results].nil?
        type.is_truncated = params[:is_truncated]
        type.marker = params[:marker]
        type
      end
    end

    module SimulatePrincipalPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SimulatePrincipalPolicyInput, context: context)
        type = Types::SimulatePrincipalPolicyInput.new
        type.policy_source_arn = params[:policy_source_arn]
        type.policy_input_list = SimulationPolicyListType.build(params[:policy_input_list], context: "#{context}[:policy_input_list]") unless params[:policy_input_list].nil?
        type.permissions_boundary_policy_input_list = SimulationPolicyListType.build(params[:permissions_boundary_policy_input_list], context: "#{context}[:permissions_boundary_policy_input_list]") unless params[:permissions_boundary_policy_input_list].nil?
        type.action_names = ActionNameListType.build(params[:action_names], context: "#{context}[:action_names]") unless params[:action_names].nil?
        type.resource_arns = ResourceNameListType.build(params[:resource_arns], context: "#{context}[:resource_arns]") unless params[:resource_arns].nil?
        type.resource_policy = params[:resource_policy]
        type.resource_owner = params[:resource_owner]
        type.caller_arn = params[:caller_arn]
        type.context_entries = ContextEntryListType.build(params[:context_entries], context: "#{context}[:context_entries]") unless params[:context_entries].nil?
        type.resource_handling_option = params[:resource_handling_option]
        type.max_items = params[:max_items]
        type.marker = params[:marker]
        type
      end
    end

    module SimulatePrincipalPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SimulatePrincipalPolicyOutput, context: context)
        type = Types::SimulatePrincipalPolicyOutput.new
        type.evaluation_results = EvaluationResultsListType.build(params[:evaluation_results], context: "#{context}[:evaluation_results]") unless params[:evaluation_results].nil?
        type.is_truncated = params[:is_truncated]
        type.marker = params[:marker]
        type
      end
    end

    module SimulationPolicyListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Statement
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Statement, context: context)
        type = Types::Statement.new
        type.source_policy_id = params[:source_policy_id]
        type.source_policy_type = params[:source_policy_type]
        type.start_position = Position.build(params[:start_position], context: "#{context}[:start_position]") unless params[:start_position].nil?
        type.end_position = Position.build(params[:end_position], context: "#{context}[:end_position]") unless params[:end_position].nil?
        type
      end
    end

    module StatementListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Statement.build(element, context: "#{context}[#{index}]") unless element.nil?
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

    module TagInstanceProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagInstanceProfileInput, context: context)
        type = Types::TagInstanceProfileInput.new
        type.instance_profile_name = params[:instance_profile_name]
        type.tags = TagListType.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagInstanceProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagInstanceProfileOutput, context: context)
        type = Types::TagInstanceProfileOutput.new
        type
      end
    end

    module TagMFADeviceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagMFADeviceInput, context: context)
        type = Types::TagMFADeviceInput.new
        type.serial_number = params[:serial_number]
        type.tags = TagListType.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagMFADeviceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagMFADeviceOutput, context: context)
        type = Types::TagMFADeviceOutput.new
        type
      end
    end

    module TagOpenIDConnectProviderInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagOpenIDConnectProviderInput, context: context)
        type = Types::TagOpenIDConnectProviderInput.new
        type.open_id_connect_provider_arn = params[:open_id_connect_provider_arn]
        type.tags = TagListType.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagOpenIDConnectProviderOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagOpenIDConnectProviderOutput, context: context)
        type = Types::TagOpenIDConnectProviderOutput.new
        type
      end
    end

    module TagPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagPolicyInput, context: context)
        type = Types::TagPolicyInput.new
        type.policy_arn = params[:policy_arn]
        type.tags = TagListType.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagPolicyOutput, context: context)
        type = Types::TagPolicyOutput.new
        type
      end
    end

    module TagRoleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagRoleInput, context: context)
        type = Types::TagRoleInput.new
        type.role_name = params[:role_name]
        type.tags = TagListType.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagRoleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagRoleOutput, context: context)
        type = Types::TagRoleOutput.new
        type
      end
    end

    module TagSAMLProviderInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagSAMLProviderInput, context: context)
        type = Types::TagSAMLProviderInput.new
        type.saml_provider_arn = params[:saml_provider_arn]
        type.tags = TagListType.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagSAMLProviderOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagSAMLProviderOutput, context: context)
        type = Types::TagSAMLProviderOutput.new
        type
      end
    end

    module TagServerCertificateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagServerCertificateInput, context: context)
        type = Types::TagServerCertificateInput.new
        type.server_certificate_name = params[:server_certificate_name]
        type.tags = TagListType.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagServerCertificateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagServerCertificateOutput, context: context)
        type = Types::TagServerCertificateOutput.new
        type
      end
    end

    module TagUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagUserInput, context: context)
        type = Types::TagUserInput.new
        type.user_name = params[:user_name]
        type.tags = TagListType.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagUserOutput, context: context)
        type = Types::TagUserOutput.new
        type
      end
    end

    module TrackedActionLastAccessed
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TrackedActionLastAccessed, context: context)
        type = Types::TrackedActionLastAccessed.new
        type.action_name = params[:action_name]
        type.last_accessed_entity = params[:last_accessed_entity]
        type.last_accessed_time = params[:last_accessed_time]
        type.last_accessed_region = params[:last_accessed_region]
        type
      end
    end

    module TrackedActionsLastAccessed
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TrackedActionLastAccessed.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UnmodifiableEntityException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnmodifiableEntityException, context: context)
        type = Types::UnmodifiableEntityException.new
        type.message = params[:message]
        type
      end
    end

    module UnrecognizedPublicKeyEncodingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnrecognizedPublicKeyEncodingException, context: context)
        type = Types::UnrecognizedPublicKeyEncodingException.new
        type.message = params[:message]
        type
      end
    end

    module UntagInstanceProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagInstanceProfileInput, context: context)
        type = Types::UntagInstanceProfileInput.new
        type.instance_profile_name = params[:instance_profile_name]
        type.tag_keys = TagKeyListType.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagInstanceProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagInstanceProfileOutput, context: context)
        type = Types::UntagInstanceProfileOutput.new
        type
      end
    end

    module UntagMFADeviceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagMFADeviceInput, context: context)
        type = Types::UntagMFADeviceInput.new
        type.serial_number = params[:serial_number]
        type.tag_keys = TagKeyListType.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagMFADeviceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagMFADeviceOutput, context: context)
        type = Types::UntagMFADeviceOutput.new
        type
      end
    end

    module UntagOpenIDConnectProviderInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagOpenIDConnectProviderInput, context: context)
        type = Types::UntagOpenIDConnectProviderInput.new
        type.open_id_connect_provider_arn = params[:open_id_connect_provider_arn]
        type.tag_keys = TagKeyListType.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagOpenIDConnectProviderOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagOpenIDConnectProviderOutput, context: context)
        type = Types::UntagOpenIDConnectProviderOutput.new
        type
      end
    end

    module UntagPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagPolicyInput, context: context)
        type = Types::UntagPolicyInput.new
        type.policy_arn = params[:policy_arn]
        type.tag_keys = TagKeyListType.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagPolicyOutput, context: context)
        type = Types::UntagPolicyOutput.new
        type
      end
    end

    module UntagRoleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagRoleInput, context: context)
        type = Types::UntagRoleInput.new
        type.role_name = params[:role_name]
        type.tag_keys = TagKeyListType.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagRoleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagRoleOutput, context: context)
        type = Types::UntagRoleOutput.new
        type
      end
    end

    module UntagSAMLProviderInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagSAMLProviderInput, context: context)
        type = Types::UntagSAMLProviderInput.new
        type.saml_provider_arn = params[:saml_provider_arn]
        type.tag_keys = TagKeyListType.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagSAMLProviderOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagSAMLProviderOutput, context: context)
        type = Types::UntagSAMLProviderOutput.new
        type
      end
    end

    module UntagServerCertificateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagServerCertificateInput, context: context)
        type = Types::UntagServerCertificateInput.new
        type.server_certificate_name = params[:server_certificate_name]
        type.tag_keys = TagKeyListType.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagServerCertificateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagServerCertificateOutput, context: context)
        type = Types::UntagServerCertificateOutput.new
        type
      end
    end

    module UntagUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagUserInput, context: context)
        type = Types::UntagUserInput.new
        type.user_name = params[:user_name]
        type.tag_keys = TagKeyListType.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagUserOutput, context: context)
        type = Types::UntagUserOutput.new
        type
      end
    end

    module UpdateAccessKeyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAccessKeyInput, context: context)
        type = Types::UpdateAccessKeyInput.new
        type.user_name = params[:user_name]
        type.access_key_id = params[:access_key_id]
        type.status = params[:status]
        type
      end
    end

    module UpdateAccessKeyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAccessKeyOutput, context: context)
        type = Types::UpdateAccessKeyOutput.new
        type
      end
    end

    module UpdateAccountPasswordPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAccountPasswordPolicyInput, context: context)
        type = Types::UpdateAccountPasswordPolicyInput.new
        type.minimum_password_length = params[:minimum_password_length]
        type.require_symbols = params[:require_symbols]
        type.require_numbers = params[:require_numbers]
        type.require_uppercase_characters = params[:require_uppercase_characters]
        type.require_lowercase_characters = params[:require_lowercase_characters]
        type.allow_users_to_change_password = params[:allow_users_to_change_password]
        type.max_password_age = params[:max_password_age]
        type.password_reuse_prevention = params[:password_reuse_prevention]
        type.hard_expiry = params[:hard_expiry]
        type
      end
    end

    module UpdateAccountPasswordPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAccountPasswordPolicyOutput, context: context)
        type = Types::UpdateAccountPasswordPolicyOutput.new
        type
      end
    end

    module UpdateAssumeRolePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAssumeRolePolicyInput, context: context)
        type = Types::UpdateAssumeRolePolicyInput.new
        type.role_name = params[:role_name]
        type.policy_document = params[:policy_document]
        type
      end
    end

    module UpdateAssumeRolePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAssumeRolePolicyOutput, context: context)
        type = Types::UpdateAssumeRolePolicyOutput.new
        type
      end
    end

    module UpdateGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateGroupInput, context: context)
        type = Types::UpdateGroupInput.new
        type.group_name = params[:group_name]
        type.new_path = params[:new_path]
        type.new_group_name = params[:new_group_name]
        type
      end
    end

    module UpdateGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateGroupOutput, context: context)
        type = Types::UpdateGroupOutput.new
        type
      end
    end

    module UpdateLoginProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateLoginProfileInput, context: context)
        type = Types::UpdateLoginProfileInput.new
        type.user_name = params[:user_name]
        type.password = params[:password]
        type.password_reset_required = params[:password_reset_required]
        type
      end
    end

    module UpdateLoginProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateLoginProfileOutput, context: context)
        type = Types::UpdateLoginProfileOutput.new
        type
      end
    end

    module UpdateOpenIDConnectProviderThumbprintInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateOpenIDConnectProviderThumbprintInput, context: context)
        type = Types::UpdateOpenIDConnectProviderThumbprintInput.new
        type.open_id_connect_provider_arn = params[:open_id_connect_provider_arn]
        type.thumbprint_list = ThumbprintListType.build(params[:thumbprint_list], context: "#{context}[:thumbprint_list]") unless params[:thumbprint_list].nil?
        type
      end
    end

    module UpdateOpenIDConnectProviderThumbprintOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateOpenIDConnectProviderThumbprintOutput, context: context)
        type = Types::UpdateOpenIDConnectProviderThumbprintOutput.new
        type
      end
    end

    module UpdateRoleDescriptionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRoleDescriptionInput, context: context)
        type = Types::UpdateRoleDescriptionInput.new
        type.role_name = params[:role_name]
        type.description = params[:description]
        type
      end
    end

    module UpdateRoleDescriptionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRoleDescriptionOutput, context: context)
        type = Types::UpdateRoleDescriptionOutput.new
        type.role = Role.build(params[:role], context: "#{context}[:role]") unless params[:role].nil?
        type
      end
    end

    module UpdateRoleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRoleInput, context: context)
        type = Types::UpdateRoleInput.new
        type.role_name = params[:role_name]
        type.description = params[:description]
        type.max_session_duration = params[:max_session_duration]
        type
      end
    end

    module UpdateRoleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRoleOutput, context: context)
        type = Types::UpdateRoleOutput.new
        type
      end
    end

    module UpdateSAMLProviderInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSAMLProviderInput, context: context)
        type = Types::UpdateSAMLProviderInput.new
        type.saml_metadata_document = params[:saml_metadata_document]
        type.saml_provider_arn = params[:saml_provider_arn]
        type
      end
    end

    module UpdateSAMLProviderOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSAMLProviderOutput, context: context)
        type = Types::UpdateSAMLProviderOutput.new
        type.saml_provider_arn = params[:saml_provider_arn]
        type
      end
    end

    module UpdateSSHPublicKeyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSSHPublicKeyInput, context: context)
        type = Types::UpdateSSHPublicKeyInput.new
        type.user_name = params[:user_name]
        type.ssh_public_key_id = params[:ssh_public_key_id]
        type.status = params[:status]
        type
      end
    end

    module UpdateSSHPublicKeyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSSHPublicKeyOutput, context: context)
        type = Types::UpdateSSHPublicKeyOutput.new
        type
      end
    end

    module UpdateServerCertificateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateServerCertificateInput, context: context)
        type = Types::UpdateServerCertificateInput.new
        type.server_certificate_name = params[:server_certificate_name]
        type.new_path = params[:new_path]
        type.new_server_certificate_name = params[:new_server_certificate_name]
        type
      end
    end

    module UpdateServerCertificateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateServerCertificateOutput, context: context)
        type = Types::UpdateServerCertificateOutput.new
        type
      end
    end

    module UpdateServiceSpecificCredentialInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateServiceSpecificCredentialInput, context: context)
        type = Types::UpdateServiceSpecificCredentialInput.new
        type.user_name = params[:user_name]
        type.service_specific_credential_id = params[:service_specific_credential_id]
        type.status = params[:status]
        type
      end
    end

    module UpdateServiceSpecificCredentialOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateServiceSpecificCredentialOutput, context: context)
        type = Types::UpdateServiceSpecificCredentialOutput.new
        type
      end
    end

    module UpdateSigningCertificateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSigningCertificateInput, context: context)
        type = Types::UpdateSigningCertificateInput.new
        type.user_name = params[:user_name]
        type.certificate_id = params[:certificate_id]
        type.status = params[:status]
        type
      end
    end

    module UpdateSigningCertificateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSigningCertificateOutput, context: context)
        type = Types::UpdateSigningCertificateOutput.new
        type
      end
    end

    module UpdateUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateUserInput, context: context)
        type = Types::UpdateUserInput.new
        type.user_name = params[:user_name]
        type.new_path = params[:new_path]
        type.new_user_name = params[:new_user_name]
        type
      end
    end

    module UpdateUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateUserOutput, context: context)
        type = Types::UpdateUserOutput.new
        type
      end
    end

    module UploadSSHPublicKeyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UploadSSHPublicKeyInput, context: context)
        type = Types::UploadSSHPublicKeyInput.new
        type.user_name = params[:user_name]
        type.ssh_public_key_body = params[:ssh_public_key_body]
        type
      end
    end

    module UploadSSHPublicKeyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UploadSSHPublicKeyOutput, context: context)
        type = Types::UploadSSHPublicKeyOutput.new
        type.ssh_public_key = SSHPublicKey.build(params[:ssh_public_key], context: "#{context}[:ssh_public_key]") unless params[:ssh_public_key].nil?
        type
      end
    end

    module UploadServerCertificateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UploadServerCertificateInput, context: context)
        type = Types::UploadServerCertificateInput.new
        type.path = params[:path]
        type.server_certificate_name = params[:server_certificate_name]
        type.certificate_body = params[:certificate_body]
        type.private_key = params[:private_key]
        type.certificate_chain = params[:certificate_chain]
        type.tags = TagListType.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module UploadServerCertificateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UploadServerCertificateOutput, context: context)
        type = Types::UploadServerCertificateOutput.new
        type.server_certificate_metadata = ServerCertificateMetadata.build(params[:server_certificate_metadata], context: "#{context}[:server_certificate_metadata]") unless params[:server_certificate_metadata].nil?
        type.tags = TagListType.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module UploadSigningCertificateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UploadSigningCertificateInput, context: context)
        type = Types::UploadSigningCertificateInput.new
        type.user_name = params[:user_name]
        type.certificate_body = params[:certificate_body]
        type
      end
    end

    module UploadSigningCertificateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UploadSigningCertificateOutput, context: context)
        type = Types::UploadSigningCertificateOutput.new
        type.certificate = SigningCertificate.build(params[:certificate], context: "#{context}[:certificate]") unless params[:certificate].nil?
        type
      end
    end

    module User
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::User, context: context)
        type = Types::User.new
        type.path = params[:path]
        type.user_name = params[:user_name]
        type.user_id = params[:user_id]
        type.arn = params[:arn]
        type.create_date = params[:create_date]
        type.password_last_used = params[:password_last_used]
        type.permissions_boundary = AttachedPermissionsBoundary.build(params[:permissions_boundary], context: "#{context}[:permissions_boundary]") unless params[:permissions_boundary].nil?
        type.tags = TagListType.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module UserDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserDetail, context: context)
        type = Types::UserDetail.new
        type.path = params[:path]
        type.user_name = params[:user_name]
        type.user_id = params[:user_id]
        type.arn = params[:arn]
        type.create_date = params[:create_date]
        type.user_policy_list = PolicyDetailListType.build(params[:user_policy_list], context: "#{context}[:user_policy_list]") unless params[:user_policy_list].nil?
        type.group_list = GroupNameListType.build(params[:group_list], context: "#{context}[:group_list]") unless params[:group_list].nil?
        type.attached_managed_policies = AttachedPoliciesListType.build(params[:attached_managed_policies], context: "#{context}[:attached_managed_policies]") unless params[:attached_managed_policies].nil?
        type.permissions_boundary = AttachedPermissionsBoundary.build(params[:permissions_boundary], context: "#{context}[:permissions_boundary]") unless params[:permissions_boundary].nil?
        type.tags = TagListType.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module VirtualMFADevice
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VirtualMFADevice, context: context)
        type = Types::VirtualMFADevice.new
        type.serial_number = params[:serial_number]
        type.base32_string_seed = params[:base32_string_seed]
        type.qr_code_png = params[:qr_code_png]
        type.user = User.build(params[:user], context: "#{context}[:user]") unless params[:user].nil?
        type.enable_date = params[:enable_date]
        type.tags = TagListType.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module AccessKeyMetadataListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AccessKeyMetadata.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AccountAliasListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AttachedPoliciesListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AttachedPolicy.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CertificateListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SigningCertificate.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ClientIDListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module EntityDetailsListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EntityDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EntityListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module GroupDetailListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GroupDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GroupListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Group.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GroupNameListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module InstanceProfileListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InstanceProfile.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListPolicyGrantingServiceAccessResponseListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ListPoliciesGrantingServiceAccessEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MfaDeviceListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MFADevice.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PolicyDetailListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PolicyDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PolicyDocumentVersionListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PolicyVersion.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PolicyGrantingServiceAccessListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PolicyGrantingServiceAccess.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PolicyListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Policy.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PolicyNameListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module RoleDetailListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RoleDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RoleListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Role.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ServerCertificateMetadataListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ServerCertificateMetadata.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ServiceNamespaceListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SummaryMapType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module TagKeyListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ThumbprintListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module UserDetailListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UserDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UserListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << User.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module VirtualMFADeviceListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << VirtualMFADevice.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

  end
end
