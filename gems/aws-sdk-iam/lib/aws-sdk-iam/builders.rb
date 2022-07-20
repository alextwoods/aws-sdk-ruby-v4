# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::IAM
  module Builders

    # Operation Builder for AddClientIDToOpenIDConnectProvider
    class AddClientIDToOpenIDConnectProvider
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'AddClientIDToOpenIDConnectProvider'
        params['Version'] = '2010-05-08'
        params[context + 'OpenIDConnectProviderArn'] = input[:open_id_connect_provider_arn].to_s unless input[:open_id_connect_provider_arn].nil?
        params[context + 'ClientID'] = input[:client_id].to_s unless input[:client_id].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for AddRoleToInstanceProfile
    class AddRoleToInstanceProfile
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'AddRoleToInstanceProfile'
        params['Version'] = '2010-05-08'
        params[context + 'InstanceProfileName'] = input[:instance_profile_name].to_s unless input[:instance_profile_name].nil?
        params[context + 'RoleName'] = input[:role_name].to_s unless input[:role_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for AddUserToGroup
    class AddUserToGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'AddUserToGroup'
        params['Version'] = '2010-05-08'
        params[context + 'GroupName'] = input[:group_name].to_s unless input[:group_name].nil?
        params[context + 'UserName'] = input[:user_name].to_s unless input[:user_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for AttachGroupPolicy
    class AttachGroupPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'AttachGroupPolicy'
        params['Version'] = '2010-05-08'
        params[context + 'GroupName'] = input[:group_name].to_s unless input[:group_name].nil?
        params[context + 'PolicyArn'] = input[:policy_arn].to_s unless input[:policy_arn].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for AttachRolePolicy
    class AttachRolePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'AttachRolePolicy'
        params['Version'] = '2010-05-08'
        params[context + 'RoleName'] = input[:role_name].to_s unless input[:role_name].nil?
        params[context + 'PolicyArn'] = input[:policy_arn].to_s unless input[:policy_arn].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for AttachUserPolicy
    class AttachUserPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'AttachUserPolicy'
        params['Version'] = '2010-05-08'
        params[context + 'UserName'] = input[:user_name].to_s unless input[:user_name].nil?
        params[context + 'PolicyArn'] = input[:policy_arn].to_s unless input[:policy_arn].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ChangePassword
    class ChangePassword
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ChangePassword'
        params['Version'] = '2010-05-08'
        params[context + 'OldPassword'] = input[:old_password].to_s unless input[:old_password].nil?
        params[context + 'NewPassword'] = input[:new_password].to_s unless input[:new_password].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateAccessKey
    class CreateAccessKey
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateAccessKey'
        params['Version'] = '2010-05-08'
        params[context + 'UserName'] = input[:user_name].to_s unless input[:user_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateAccountAlias
    class CreateAccountAlias
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateAccountAlias'
        params['Version'] = '2010-05-08'
        params[context + 'AccountAlias'] = input[:account_alias].to_s unless input[:account_alias].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateGroup
    class CreateGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateGroup'
        params['Version'] = '2010-05-08'
        params[context + 'Path'] = input[:path].to_s unless input[:path].nil?
        params[context + 'GroupName'] = input[:group_name].to_s unless input[:group_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateInstanceProfile
    class CreateInstanceProfile
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateInstanceProfile'
        params['Version'] = '2010-05-08'
        params[context + 'InstanceProfileName'] = input[:instance_profile_name].to_s unless input[:instance_profile_name].nil?
        params[context + 'Path'] = input[:path].to_s unless input[:path].nil?
        Builders::TagListType.build(input[:tags], params, context: context + 'Tags' + '.member') unless input[:tags].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for tagListType
    class TagListType
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::Tag.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input, params, context: nil)
        params[context + 'Key'] = input[:key].to_s unless input[:key].nil?
        params[context + 'Value'] = input[:value].to_s unless input[:value].nil?
      end
    end

    # Operation Builder for CreateLoginProfile
    class CreateLoginProfile
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateLoginProfile'
        params['Version'] = '2010-05-08'
        params[context + 'UserName'] = input[:user_name].to_s unless input[:user_name].nil?
        params[context + 'Password'] = input[:password].to_s unless input[:password].nil?
        params[context + 'PasswordResetRequired'] = input[:password_reset_required].to_s unless input[:password_reset_required].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateOpenIDConnectProvider
    class CreateOpenIDConnectProvider
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateOpenIDConnectProvider'
        params['Version'] = '2010-05-08'
        params[context + 'Url'] = input[:url].to_s unless input[:url].nil?
        Builders::ClientIDListType.build(input[:client_id_list], params, context: context + 'ClientIDList' + '.member') unless input[:client_id_list].nil?
        Builders::ThumbprintListType.build(input[:thumbprint_list], params, context: context + 'ThumbprintList' + '.member') unless input[:thumbprint_list].nil?
        Builders::TagListType.build(input[:tags], params, context: context + 'Tags' + '.member') unless input[:tags].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for thumbprintListType
    class ThumbprintListType
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # List Builder for clientIDListType
    class ClientIDListType
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for CreatePolicy
    class CreatePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreatePolicy'
        params['Version'] = '2010-05-08'
        params[context + 'PolicyName'] = input[:policy_name].to_s unless input[:policy_name].nil?
        params[context + 'Path'] = input[:path].to_s unless input[:path].nil?
        params[context + 'PolicyDocument'] = input[:policy_document].to_s unless input[:policy_document].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        Builders::TagListType.build(input[:tags], params, context: context + 'Tags' + '.member') unless input[:tags].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreatePolicyVersion
    class CreatePolicyVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreatePolicyVersion'
        params['Version'] = '2010-05-08'
        params[context + 'PolicyArn'] = input[:policy_arn].to_s unless input[:policy_arn].nil?
        params[context + 'PolicyDocument'] = input[:policy_document].to_s unless input[:policy_document].nil?
        params[context + 'SetAsDefault'] = input[:set_as_default].to_s unless input[:set_as_default].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateRole
    class CreateRole
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateRole'
        params['Version'] = '2010-05-08'
        params[context + 'Path'] = input[:path].to_s unless input[:path].nil?
        params[context + 'RoleName'] = input[:role_name].to_s unless input[:role_name].nil?
        params[context + 'AssumeRolePolicyDocument'] = input[:assume_role_policy_document].to_s unless input[:assume_role_policy_document].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        params[context + 'MaxSessionDuration'] = input[:max_session_duration].to_s unless input[:max_session_duration].nil?
        params[context + 'PermissionsBoundary'] = input[:permissions_boundary].to_s unless input[:permissions_boundary].nil?
        Builders::TagListType.build(input[:tags], params, context: context + 'Tags' + '.member') unless input[:tags].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateSAMLProvider
    class CreateSAMLProvider
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateSAMLProvider'
        params['Version'] = '2010-05-08'
        params[context + 'SAMLMetadataDocument'] = input[:saml_metadata_document].to_s unless input[:saml_metadata_document].nil?
        params[context + 'Name'] = input[:name].to_s unless input[:name].nil?
        Builders::TagListType.build(input[:tags], params, context: context + 'Tags' + '.member') unless input[:tags].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateServiceLinkedRole
    class CreateServiceLinkedRole
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateServiceLinkedRole'
        params['Version'] = '2010-05-08'
        params[context + 'AWSServiceName'] = input[:aws_service_name].to_s unless input[:aws_service_name].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        params[context + 'CustomSuffix'] = input[:custom_suffix].to_s unless input[:custom_suffix].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateServiceSpecificCredential
    class CreateServiceSpecificCredential
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateServiceSpecificCredential'
        params['Version'] = '2010-05-08'
        params[context + 'UserName'] = input[:user_name].to_s unless input[:user_name].nil?
        params[context + 'ServiceName'] = input[:service_name].to_s unless input[:service_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateUser
    class CreateUser
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateUser'
        params['Version'] = '2010-05-08'
        params[context + 'Path'] = input[:path].to_s unless input[:path].nil?
        params[context + 'UserName'] = input[:user_name].to_s unless input[:user_name].nil?
        params[context + 'PermissionsBoundary'] = input[:permissions_boundary].to_s unless input[:permissions_boundary].nil?
        Builders::TagListType.build(input[:tags], params, context: context + 'Tags' + '.member') unless input[:tags].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateVirtualMFADevice
    class CreateVirtualMFADevice
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateVirtualMFADevice'
        params['Version'] = '2010-05-08'
        params[context + 'Path'] = input[:path].to_s unless input[:path].nil?
        params[context + 'VirtualMFADeviceName'] = input[:virtual_mfa_device_name].to_s unless input[:virtual_mfa_device_name].nil?
        Builders::TagListType.build(input[:tags], params, context: context + 'Tags' + '.member') unless input[:tags].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeactivateMFADevice
    class DeactivateMFADevice
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeactivateMFADevice'
        params['Version'] = '2010-05-08'
        params[context + 'UserName'] = input[:user_name].to_s unless input[:user_name].nil?
        params[context + 'SerialNumber'] = input[:serial_number].to_s unless input[:serial_number].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteAccessKey
    class DeleteAccessKey
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteAccessKey'
        params['Version'] = '2010-05-08'
        params[context + 'UserName'] = input[:user_name].to_s unless input[:user_name].nil?
        params[context + 'AccessKeyId'] = input[:access_key_id].to_s unless input[:access_key_id].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteAccountAlias
    class DeleteAccountAlias
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteAccountAlias'
        params['Version'] = '2010-05-08'
        params[context + 'AccountAlias'] = input[:account_alias].to_s unless input[:account_alias].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteAccountPasswordPolicy
    class DeleteAccountPasswordPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteAccountPasswordPolicy'
        params['Version'] = '2010-05-08'
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteGroup
    class DeleteGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteGroup'
        params['Version'] = '2010-05-08'
        params[context + 'GroupName'] = input[:group_name].to_s unless input[:group_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteGroupPolicy
    class DeleteGroupPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteGroupPolicy'
        params['Version'] = '2010-05-08'
        params[context + 'GroupName'] = input[:group_name].to_s unless input[:group_name].nil?
        params[context + 'PolicyName'] = input[:policy_name].to_s unless input[:policy_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteInstanceProfile
    class DeleteInstanceProfile
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteInstanceProfile'
        params['Version'] = '2010-05-08'
        params[context + 'InstanceProfileName'] = input[:instance_profile_name].to_s unless input[:instance_profile_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteLoginProfile
    class DeleteLoginProfile
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteLoginProfile'
        params['Version'] = '2010-05-08'
        params[context + 'UserName'] = input[:user_name].to_s unless input[:user_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteOpenIDConnectProvider
    class DeleteOpenIDConnectProvider
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteOpenIDConnectProvider'
        params['Version'] = '2010-05-08'
        params[context + 'OpenIDConnectProviderArn'] = input[:open_id_connect_provider_arn].to_s unless input[:open_id_connect_provider_arn].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeletePolicy
    class DeletePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeletePolicy'
        params['Version'] = '2010-05-08'
        params[context + 'PolicyArn'] = input[:policy_arn].to_s unless input[:policy_arn].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeletePolicyVersion
    class DeletePolicyVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeletePolicyVersion'
        params['Version'] = '2010-05-08'
        params[context + 'PolicyArn'] = input[:policy_arn].to_s unless input[:policy_arn].nil?
        params[context + 'VersionId'] = input[:version_id].to_s unless input[:version_id].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteRole
    class DeleteRole
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteRole'
        params['Version'] = '2010-05-08'
        params[context + 'RoleName'] = input[:role_name].to_s unless input[:role_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteRolePermissionsBoundary
    class DeleteRolePermissionsBoundary
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteRolePermissionsBoundary'
        params['Version'] = '2010-05-08'
        params[context + 'RoleName'] = input[:role_name].to_s unless input[:role_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteRolePolicy
    class DeleteRolePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteRolePolicy'
        params['Version'] = '2010-05-08'
        params[context + 'RoleName'] = input[:role_name].to_s unless input[:role_name].nil?
        params[context + 'PolicyName'] = input[:policy_name].to_s unless input[:policy_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteSAMLProvider
    class DeleteSAMLProvider
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteSAMLProvider'
        params['Version'] = '2010-05-08'
        params[context + 'SAMLProviderArn'] = input[:saml_provider_arn].to_s unless input[:saml_provider_arn].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteSSHPublicKey
    class DeleteSSHPublicKey
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteSSHPublicKey'
        params['Version'] = '2010-05-08'
        params[context + 'UserName'] = input[:user_name].to_s unless input[:user_name].nil?
        params[context + 'SSHPublicKeyId'] = input[:ssh_public_key_id].to_s unless input[:ssh_public_key_id].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteServerCertificate
    class DeleteServerCertificate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteServerCertificate'
        params['Version'] = '2010-05-08'
        params[context + 'ServerCertificateName'] = input[:server_certificate_name].to_s unless input[:server_certificate_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteServiceLinkedRole
    class DeleteServiceLinkedRole
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteServiceLinkedRole'
        params['Version'] = '2010-05-08'
        params[context + 'RoleName'] = input[:role_name].to_s unless input[:role_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteServiceSpecificCredential
    class DeleteServiceSpecificCredential
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteServiceSpecificCredential'
        params['Version'] = '2010-05-08'
        params[context + 'UserName'] = input[:user_name].to_s unless input[:user_name].nil?
        params[context + 'ServiceSpecificCredentialId'] = input[:service_specific_credential_id].to_s unless input[:service_specific_credential_id].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteSigningCertificate
    class DeleteSigningCertificate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteSigningCertificate'
        params['Version'] = '2010-05-08'
        params[context + 'UserName'] = input[:user_name].to_s unless input[:user_name].nil?
        params[context + 'CertificateId'] = input[:certificate_id].to_s unless input[:certificate_id].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteUser
    class DeleteUser
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteUser'
        params['Version'] = '2010-05-08'
        params[context + 'UserName'] = input[:user_name].to_s unless input[:user_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteUserPermissionsBoundary
    class DeleteUserPermissionsBoundary
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteUserPermissionsBoundary'
        params['Version'] = '2010-05-08'
        params[context + 'UserName'] = input[:user_name].to_s unless input[:user_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteUserPolicy
    class DeleteUserPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteUserPolicy'
        params['Version'] = '2010-05-08'
        params[context + 'UserName'] = input[:user_name].to_s unless input[:user_name].nil?
        params[context + 'PolicyName'] = input[:policy_name].to_s unless input[:policy_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteVirtualMFADevice
    class DeleteVirtualMFADevice
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteVirtualMFADevice'
        params['Version'] = '2010-05-08'
        params[context + 'SerialNumber'] = input[:serial_number].to_s unless input[:serial_number].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DetachGroupPolicy
    class DetachGroupPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DetachGroupPolicy'
        params['Version'] = '2010-05-08'
        params[context + 'GroupName'] = input[:group_name].to_s unless input[:group_name].nil?
        params[context + 'PolicyArn'] = input[:policy_arn].to_s unless input[:policy_arn].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DetachRolePolicy
    class DetachRolePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DetachRolePolicy'
        params['Version'] = '2010-05-08'
        params[context + 'RoleName'] = input[:role_name].to_s unless input[:role_name].nil?
        params[context + 'PolicyArn'] = input[:policy_arn].to_s unless input[:policy_arn].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DetachUserPolicy
    class DetachUserPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DetachUserPolicy'
        params['Version'] = '2010-05-08'
        params[context + 'UserName'] = input[:user_name].to_s unless input[:user_name].nil?
        params[context + 'PolicyArn'] = input[:policy_arn].to_s unless input[:policy_arn].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for EnableMFADevice
    class EnableMFADevice
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'EnableMFADevice'
        params['Version'] = '2010-05-08'
        params[context + 'UserName'] = input[:user_name].to_s unless input[:user_name].nil?
        params[context + 'SerialNumber'] = input[:serial_number].to_s unless input[:serial_number].nil?
        params[context + 'AuthenticationCode1'] = input[:authentication_code1].to_s unless input[:authentication_code1].nil?
        params[context + 'AuthenticationCode2'] = input[:authentication_code2].to_s unless input[:authentication_code2].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GenerateCredentialReport
    class GenerateCredentialReport
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GenerateCredentialReport'
        params['Version'] = '2010-05-08'
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GenerateOrganizationsAccessReport
    class GenerateOrganizationsAccessReport
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GenerateOrganizationsAccessReport'
        params['Version'] = '2010-05-08'
        params[context + 'EntityPath'] = input[:entity_path].to_s unless input[:entity_path].nil?
        params[context + 'OrganizationsPolicyId'] = input[:organizations_policy_id].to_s unless input[:organizations_policy_id].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GenerateServiceLastAccessedDetails
    class GenerateServiceLastAccessedDetails
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GenerateServiceLastAccessedDetails'
        params['Version'] = '2010-05-08'
        params[context + 'Arn'] = input[:arn].to_s unless input[:arn].nil?
        params[context + 'Granularity'] = input[:granularity].to_s unless input[:granularity].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetAccessKeyLastUsed
    class GetAccessKeyLastUsed
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetAccessKeyLastUsed'
        params['Version'] = '2010-05-08'
        params[context + 'AccessKeyId'] = input[:access_key_id].to_s unless input[:access_key_id].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetAccountAuthorizationDetails
    class GetAccountAuthorizationDetails
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetAccountAuthorizationDetails'
        params['Version'] = '2010-05-08'
        Builders::EntityListType.build(input[:filter], params, context: context + 'Filter' + '.member') unless input[:filter].nil?
        params[context + 'MaxItems'] = input[:max_items].to_s unless input[:max_items].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for entityListType
    class EntityListType
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for GetAccountPasswordPolicy
    class GetAccountPasswordPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetAccountPasswordPolicy'
        params['Version'] = '2010-05-08'
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetAccountSummary
    class GetAccountSummary
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetAccountSummary'
        params['Version'] = '2010-05-08'
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetContextKeysForCustomPolicy
    class GetContextKeysForCustomPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetContextKeysForCustomPolicy'
        params['Version'] = '2010-05-08'
        Builders::SimulationPolicyListType.build(input[:policy_input_list], params, context: context + 'PolicyInputList' + '.member') unless input[:policy_input_list].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for SimulationPolicyListType
    class SimulationPolicyListType
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for GetContextKeysForPrincipalPolicy
    class GetContextKeysForPrincipalPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetContextKeysForPrincipalPolicy'
        params['Version'] = '2010-05-08'
        params[context + 'PolicySourceArn'] = input[:policy_source_arn].to_s unless input[:policy_source_arn].nil?
        Builders::SimulationPolicyListType.build(input[:policy_input_list], params, context: context + 'PolicyInputList' + '.member') unless input[:policy_input_list].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetCredentialReport
    class GetCredentialReport
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetCredentialReport'
        params['Version'] = '2010-05-08'
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetGroup
    class GetGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetGroup'
        params['Version'] = '2010-05-08'
        params[context + 'GroupName'] = input[:group_name].to_s unless input[:group_name].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        params[context + 'MaxItems'] = input[:max_items].to_s unless input[:max_items].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetGroupPolicy
    class GetGroupPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetGroupPolicy'
        params['Version'] = '2010-05-08'
        params[context + 'GroupName'] = input[:group_name].to_s unless input[:group_name].nil?
        params[context + 'PolicyName'] = input[:policy_name].to_s unless input[:policy_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetInstanceProfile
    class GetInstanceProfile
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetInstanceProfile'
        params['Version'] = '2010-05-08'
        params[context + 'InstanceProfileName'] = input[:instance_profile_name].to_s unless input[:instance_profile_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetLoginProfile
    class GetLoginProfile
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetLoginProfile'
        params['Version'] = '2010-05-08'
        params[context + 'UserName'] = input[:user_name].to_s unless input[:user_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetOpenIDConnectProvider
    class GetOpenIDConnectProvider
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetOpenIDConnectProvider'
        params['Version'] = '2010-05-08'
        params[context + 'OpenIDConnectProviderArn'] = input[:open_id_connect_provider_arn].to_s unless input[:open_id_connect_provider_arn].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetOrganizationsAccessReport
    class GetOrganizationsAccessReport
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetOrganizationsAccessReport'
        params['Version'] = '2010-05-08'
        params[context + 'JobId'] = input[:job_id].to_s unless input[:job_id].nil?
        params[context + 'MaxItems'] = input[:max_items].to_s unless input[:max_items].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        params[context + 'SortKey'] = input[:sort_key].to_s unless input[:sort_key].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetPolicy
    class GetPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetPolicy'
        params['Version'] = '2010-05-08'
        params[context + 'PolicyArn'] = input[:policy_arn].to_s unless input[:policy_arn].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetPolicyVersion
    class GetPolicyVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetPolicyVersion'
        params['Version'] = '2010-05-08'
        params[context + 'PolicyArn'] = input[:policy_arn].to_s unless input[:policy_arn].nil?
        params[context + 'VersionId'] = input[:version_id].to_s unless input[:version_id].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetRole
    class GetRole
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetRole'
        params['Version'] = '2010-05-08'
        params[context + 'RoleName'] = input[:role_name].to_s unless input[:role_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetRolePolicy
    class GetRolePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetRolePolicy'
        params['Version'] = '2010-05-08'
        params[context + 'RoleName'] = input[:role_name].to_s unless input[:role_name].nil?
        params[context + 'PolicyName'] = input[:policy_name].to_s unless input[:policy_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetSAMLProvider
    class GetSAMLProvider
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetSAMLProvider'
        params['Version'] = '2010-05-08'
        params[context + 'SAMLProviderArn'] = input[:saml_provider_arn].to_s unless input[:saml_provider_arn].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetSSHPublicKey
    class GetSSHPublicKey
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetSSHPublicKey'
        params['Version'] = '2010-05-08'
        params[context + 'UserName'] = input[:user_name].to_s unless input[:user_name].nil?
        params[context + 'SSHPublicKeyId'] = input[:ssh_public_key_id].to_s unless input[:ssh_public_key_id].nil?
        params[context + 'Encoding'] = input[:encoding].to_s unless input[:encoding].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetServerCertificate
    class GetServerCertificate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetServerCertificate'
        params['Version'] = '2010-05-08'
        params[context + 'ServerCertificateName'] = input[:server_certificate_name].to_s unless input[:server_certificate_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetServiceLastAccessedDetails
    class GetServiceLastAccessedDetails
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetServiceLastAccessedDetails'
        params['Version'] = '2010-05-08'
        params[context + 'JobId'] = input[:job_id].to_s unless input[:job_id].nil?
        params[context + 'MaxItems'] = input[:max_items].to_s unless input[:max_items].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetServiceLastAccessedDetailsWithEntities
    class GetServiceLastAccessedDetailsWithEntities
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetServiceLastAccessedDetailsWithEntities'
        params['Version'] = '2010-05-08'
        params[context + 'JobId'] = input[:job_id].to_s unless input[:job_id].nil?
        params[context + 'ServiceNamespace'] = input[:service_namespace].to_s unless input[:service_namespace].nil?
        params[context + 'MaxItems'] = input[:max_items].to_s unless input[:max_items].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetServiceLinkedRoleDeletionStatus
    class GetServiceLinkedRoleDeletionStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetServiceLinkedRoleDeletionStatus'
        params['Version'] = '2010-05-08'
        params[context + 'DeletionTaskId'] = input[:deletion_task_id].to_s unless input[:deletion_task_id].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetUser
    class GetUser
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetUser'
        params['Version'] = '2010-05-08'
        params[context + 'UserName'] = input[:user_name].to_s unless input[:user_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetUserPolicy
    class GetUserPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetUserPolicy'
        params['Version'] = '2010-05-08'
        params[context + 'UserName'] = input[:user_name].to_s unless input[:user_name].nil?
        params[context + 'PolicyName'] = input[:policy_name].to_s unless input[:policy_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ListAccessKeys
    class ListAccessKeys
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListAccessKeys'
        params['Version'] = '2010-05-08'
        params[context + 'UserName'] = input[:user_name].to_s unless input[:user_name].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        params[context + 'MaxItems'] = input[:max_items].to_s unless input[:max_items].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ListAccountAliases
    class ListAccountAliases
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListAccountAliases'
        params['Version'] = '2010-05-08'
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        params[context + 'MaxItems'] = input[:max_items].to_s unless input[:max_items].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ListAttachedGroupPolicies
    class ListAttachedGroupPolicies
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListAttachedGroupPolicies'
        params['Version'] = '2010-05-08'
        params[context + 'GroupName'] = input[:group_name].to_s unless input[:group_name].nil?
        params[context + 'PathPrefix'] = input[:path_prefix].to_s unless input[:path_prefix].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        params[context + 'MaxItems'] = input[:max_items].to_s unless input[:max_items].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ListAttachedRolePolicies
    class ListAttachedRolePolicies
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListAttachedRolePolicies'
        params['Version'] = '2010-05-08'
        params[context + 'RoleName'] = input[:role_name].to_s unless input[:role_name].nil?
        params[context + 'PathPrefix'] = input[:path_prefix].to_s unless input[:path_prefix].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        params[context + 'MaxItems'] = input[:max_items].to_s unless input[:max_items].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ListAttachedUserPolicies
    class ListAttachedUserPolicies
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListAttachedUserPolicies'
        params['Version'] = '2010-05-08'
        params[context + 'UserName'] = input[:user_name].to_s unless input[:user_name].nil?
        params[context + 'PathPrefix'] = input[:path_prefix].to_s unless input[:path_prefix].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        params[context + 'MaxItems'] = input[:max_items].to_s unless input[:max_items].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ListEntitiesForPolicy
    class ListEntitiesForPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListEntitiesForPolicy'
        params['Version'] = '2010-05-08'
        params[context + 'PolicyArn'] = input[:policy_arn].to_s unless input[:policy_arn].nil?
        params[context + 'EntityFilter'] = input[:entity_filter].to_s unless input[:entity_filter].nil?
        params[context + 'PathPrefix'] = input[:path_prefix].to_s unless input[:path_prefix].nil?
        params[context + 'PolicyUsageFilter'] = input[:policy_usage_filter].to_s unless input[:policy_usage_filter].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        params[context + 'MaxItems'] = input[:max_items].to_s unless input[:max_items].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ListGroupPolicies
    class ListGroupPolicies
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListGroupPolicies'
        params['Version'] = '2010-05-08'
        params[context + 'GroupName'] = input[:group_name].to_s unless input[:group_name].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        params[context + 'MaxItems'] = input[:max_items].to_s unless input[:max_items].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ListGroups
    class ListGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListGroups'
        params['Version'] = '2010-05-08'
        params[context + 'PathPrefix'] = input[:path_prefix].to_s unless input[:path_prefix].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        params[context + 'MaxItems'] = input[:max_items].to_s unless input[:max_items].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ListGroupsForUser
    class ListGroupsForUser
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListGroupsForUser'
        params['Version'] = '2010-05-08'
        params[context + 'UserName'] = input[:user_name].to_s unless input[:user_name].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        params[context + 'MaxItems'] = input[:max_items].to_s unless input[:max_items].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ListInstanceProfileTags
    class ListInstanceProfileTags
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListInstanceProfileTags'
        params['Version'] = '2010-05-08'
        params[context + 'InstanceProfileName'] = input[:instance_profile_name].to_s unless input[:instance_profile_name].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        params[context + 'MaxItems'] = input[:max_items].to_s unless input[:max_items].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ListInstanceProfiles
    class ListInstanceProfiles
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListInstanceProfiles'
        params['Version'] = '2010-05-08'
        params[context + 'PathPrefix'] = input[:path_prefix].to_s unless input[:path_prefix].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        params[context + 'MaxItems'] = input[:max_items].to_s unless input[:max_items].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ListInstanceProfilesForRole
    class ListInstanceProfilesForRole
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListInstanceProfilesForRole'
        params['Version'] = '2010-05-08'
        params[context + 'RoleName'] = input[:role_name].to_s unless input[:role_name].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        params[context + 'MaxItems'] = input[:max_items].to_s unless input[:max_items].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ListMFADeviceTags
    class ListMFADeviceTags
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListMFADeviceTags'
        params['Version'] = '2010-05-08'
        params[context + 'SerialNumber'] = input[:serial_number].to_s unless input[:serial_number].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        params[context + 'MaxItems'] = input[:max_items].to_s unless input[:max_items].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ListMFADevices
    class ListMFADevices
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListMFADevices'
        params['Version'] = '2010-05-08'
        params[context + 'UserName'] = input[:user_name].to_s unless input[:user_name].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        params[context + 'MaxItems'] = input[:max_items].to_s unless input[:max_items].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ListOpenIDConnectProviderTags
    class ListOpenIDConnectProviderTags
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListOpenIDConnectProviderTags'
        params['Version'] = '2010-05-08'
        params[context + 'OpenIDConnectProviderArn'] = input[:open_id_connect_provider_arn].to_s unless input[:open_id_connect_provider_arn].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        params[context + 'MaxItems'] = input[:max_items].to_s unless input[:max_items].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ListOpenIDConnectProviders
    class ListOpenIDConnectProviders
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListOpenIDConnectProviders'
        params['Version'] = '2010-05-08'
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ListPolicies
    class ListPolicies
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListPolicies'
        params['Version'] = '2010-05-08'
        params[context + 'Scope'] = input[:scope].to_s unless input[:scope].nil?
        params[context + 'OnlyAttached'] = input[:only_attached].to_s unless input[:only_attached].nil?
        params[context + 'PathPrefix'] = input[:path_prefix].to_s unless input[:path_prefix].nil?
        params[context + 'PolicyUsageFilter'] = input[:policy_usage_filter].to_s unless input[:policy_usage_filter].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        params[context + 'MaxItems'] = input[:max_items].to_s unless input[:max_items].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ListPoliciesGrantingServiceAccess
    class ListPoliciesGrantingServiceAccess
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListPoliciesGrantingServiceAccess'
        params['Version'] = '2010-05-08'
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        params[context + 'Arn'] = input[:arn].to_s unless input[:arn].nil?
        Builders::ServiceNamespaceListType.build(input[:service_namespaces], params, context: context + 'ServiceNamespaces' + '.member') unless input[:service_namespaces].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for serviceNamespaceListType
    class ServiceNamespaceListType
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for ListPolicyTags
    class ListPolicyTags
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListPolicyTags'
        params['Version'] = '2010-05-08'
        params[context + 'PolicyArn'] = input[:policy_arn].to_s unless input[:policy_arn].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        params[context + 'MaxItems'] = input[:max_items].to_s unless input[:max_items].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ListPolicyVersions
    class ListPolicyVersions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListPolicyVersions'
        params['Version'] = '2010-05-08'
        params[context + 'PolicyArn'] = input[:policy_arn].to_s unless input[:policy_arn].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        params[context + 'MaxItems'] = input[:max_items].to_s unless input[:max_items].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ListRolePolicies
    class ListRolePolicies
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListRolePolicies'
        params['Version'] = '2010-05-08'
        params[context + 'RoleName'] = input[:role_name].to_s unless input[:role_name].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        params[context + 'MaxItems'] = input[:max_items].to_s unless input[:max_items].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ListRoleTags
    class ListRoleTags
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListRoleTags'
        params['Version'] = '2010-05-08'
        params[context + 'RoleName'] = input[:role_name].to_s unless input[:role_name].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        params[context + 'MaxItems'] = input[:max_items].to_s unless input[:max_items].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ListRoles
    class ListRoles
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListRoles'
        params['Version'] = '2010-05-08'
        params[context + 'PathPrefix'] = input[:path_prefix].to_s unless input[:path_prefix].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        params[context + 'MaxItems'] = input[:max_items].to_s unless input[:max_items].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ListSAMLProviderTags
    class ListSAMLProviderTags
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListSAMLProviderTags'
        params['Version'] = '2010-05-08'
        params[context + 'SAMLProviderArn'] = input[:saml_provider_arn].to_s unless input[:saml_provider_arn].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        params[context + 'MaxItems'] = input[:max_items].to_s unless input[:max_items].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ListSAMLProviders
    class ListSAMLProviders
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListSAMLProviders'
        params['Version'] = '2010-05-08'
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ListSSHPublicKeys
    class ListSSHPublicKeys
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListSSHPublicKeys'
        params['Version'] = '2010-05-08'
        params[context + 'UserName'] = input[:user_name].to_s unless input[:user_name].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        params[context + 'MaxItems'] = input[:max_items].to_s unless input[:max_items].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ListServerCertificateTags
    class ListServerCertificateTags
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListServerCertificateTags'
        params['Version'] = '2010-05-08'
        params[context + 'ServerCertificateName'] = input[:server_certificate_name].to_s unless input[:server_certificate_name].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        params[context + 'MaxItems'] = input[:max_items].to_s unless input[:max_items].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ListServerCertificates
    class ListServerCertificates
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListServerCertificates'
        params['Version'] = '2010-05-08'
        params[context + 'PathPrefix'] = input[:path_prefix].to_s unless input[:path_prefix].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        params[context + 'MaxItems'] = input[:max_items].to_s unless input[:max_items].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ListServiceSpecificCredentials
    class ListServiceSpecificCredentials
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListServiceSpecificCredentials'
        params['Version'] = '2010-05-08'
        params[context + 'UserName'] = input[:user_name].to_s unless input[:user_name].nil?
        params[context + 'ServiceName'] = input[:service_name].to_s unless input[:service_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ListSigningCertificates
    class ListSigningCertificates
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListSigningCertificates'
        params['Version'] = '2010-05-08'
        params[context + 'UserName'] = input[:user_name].to_s unless input[:user_name].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        params[context + 'MaxItems'] = input[:max_items].to_s unless input[:max_items].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ListUserPolicies
    class ListUserPolicies
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListUserPolicies'
        params['Version'] = '2010-05-08'
        params[context + 'UserName'] = input[:user_name].to_s unless input[:user_name].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        params[context + 'MaxItems'] = input[:max_items].to_s unless input[:max_items].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ListUserTags
    class ListUserTags
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListUserTags'
        params['Version'] = '2010-05-08'
        params[context + 'UserName'] = input[:user_name].to_s unless input[:user_name].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        params[context + 'MaxItems'] = input[:max_items].to_s unless input[:max_items].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ListUsers
    class ListUsers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListUsers'
        params['Version'] = '2010-05-08'
        params[context + 'PathPrefix'] = input[:path_prefix].to_s unless input[:path_prefix].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        params[context + 'MaxItems'] = input[:max_items].to_s unless input[:max_items].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ListVirtualMFADevices
    class ListVirtualMFADevices
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListVirtualMFADevices'
        params['Version'] = '2010-05-08'
        params[context + 'AssignmentStatus'] = input[:assignment_status].to_s unless input[:assignment_status].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        params[context + 'MaxItems'] = input[:max_items].to_s unless input[:max_items].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for PutGroupPolicy
    class PutGroupPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'PutGroupPolicy'
        params['Version'] = '2010-05-08'
        params[context + 'GroupName'] = input[:group_name].to_s unless input[:group_name].nil?
        params[context + 'PolicyName'] = input[:policy_name].to_s unless input[:policy_name].nil?
        params[context + 'PolicyDocument'] = input[:policy_document].to_s unless input[:policy_document].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for PutRolePermissionsBoundary
    class PutRolePermissionsBoundary
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'PutRolePermissionsBoundary'
        params['Version'] = '2010-05-08'
        params[context + 'RoleName'] = input[:role_name].to_s unless input[:role_name].nil?
        params[context + 'PermissionsBoundary'] = input[:permissions_boundary].to_s unless input[:permissions_boundary].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for PutRolePolicy
    class PutRolePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'PutRolePolicy'
        params['Version'] = '2010-05-08'
        params[context + 'RoleName'] = input[:role_name].to_s unless input[:role_name].nil?
        params[context + 'PolicyName'] = input[:policy_name].to_s unless input[:policy_name].nil?
        params[context + 'PolicyDocument'] = input[:policy_document].to_s unless input[:policy_document].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for PutUserPermissionsBoundary
    class PutUserPermissionsBoundary
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'PutUserPermissionsBoundary'
        params['Version'] = '2010-05-08'
        params[context + 'UserName'] = input[:user_name].to_s unless input[:user_name].nil?
        params[context + 'PermissionsBoundary'] = input[:permissions_boundary].to_s unless input[:permissions_boundary].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for PutUserPolicy
    class PutUserPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'PutUserPolicy'
        params['Version'] = '2010-05-08'
        params[context + 'UserName'] = input[:user_name].to_s unless input[:user_name].nil?
        params[context + 'PolicyName'] = input[:policy_name].to_s unless input[:policy_name].nil?
        params[context + 'PolicyDocument'] = input[:policy_document].to_s unless input[:policy_document].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for RemoveClientIDFromOpenIDConnectProvider
    class RemoveClientIDFromOpenIDConnectProvider
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'RemoveClientIDFromOpenIDConnectProvider'
        params['Version'] = '2010-05-08'
        params[context + 'OpenIDConnectProviderArn'] = input[:open_id_connect_provider_arn].to_s unless input[:open_id_connect_provider_arn].nil?
        params[context + 'ClientID'] = input[:client_id].to_s unless input[:client_id].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for RemoveRoleFromInstanceProfile
    class RemoveRoleFromInstanceProfile
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'RemoveRoleFromInstanceProfile'
        params['Version'] = '2010-05-08'
        params[context + 'InstanceProfileName'] = input[:instance_profile_name].to_s unless input[:instance_profile_name].nil?
        params[context + 'RoleName'] = input[:role_name].to_s unless input[:role_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for RemoveUserFromGroup
    class RemoveUserFromGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'RemoveUserFromGroup'
        params['Version'] = '2010-05-08'
        params[context + 'GroupName'] = input[:group_name].to_s unless input[:group_name].nil?
        params[context + 'UserName'] = input[:user_name].to_s unless input[:user_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ResetServiceSpecificCredential
    class ResetServiceSpecificCredential
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ResetServiceSpecificCredential'
        params['Version'] = '2010-05-08'
        params[context + 'UserName'] = input[:user_name].to_s unless input[:user_name].nil?
        params[context + 'ServiceSpecificCredentialId'] = input[:service_specific_credential_id].to_s unless input[:service_specific_credential_id].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ResyncMFADevice
    class ResyncMFADevice
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ResyncMFADevice'
        params['Version'] = '2010-05-08'
        params[context + 'UserName'] = input[:user_name].to_s unless input[:user_name].nil?
        params[context + 'SerialNumber'] = input[:serial_number].to_s unless input[:serial_number].nil?
        params[context + 'AuthenticationCode1'] = input[:authentication_code1].to_s unless input[:authentication_code1].nil?
        params[context + 'AuthenticationCode2'] = input[:authentication_code2].to_s unless input[:authentication_code2].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for SetDefaultPolicyVersion
    class SetDefaultPolicyVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'SetDefaultPolicyVersion'
        params['Version'] = '2010-05-08'
        params[context + 'PolicyArn'] = input[:policy_arn].to_s unless input[:policy_arn].nil?
        params[context + 'VersionId'] = input[:version_id].to_s unless input[:version_id].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for SetSecurityTokenServicePreferences
    class SetSecurityTokenServicePreferences
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'SetSecurityTokenServicePreferences'
        params['Version'] = '2010-05-08'
        params[context + 'GlobalEndpointTokenVersion'] = input[:global_endpoint_token_version].to_s unless input[:global_endpoint_token_version].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for SimulateCustomPolicy
    class SimulateCustomPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'SimulateCustomPolicy'
        params['Version'] = '2010-05-08'
        Builders::SimulationPolicyListType.build(input[:policy_input_list], params, context: context + 'PolicyInputList' + '.member') unless input[:policy_input_list].nil?
        Builders::SimulationPolicyListType.build(input[:permissions_boundary_policy_input_list], params, context: context + 'PermissionsBoundaryPolicyInputList' + '.member') unless input[:permissions_boundary_policy_input_list].nil?
        Builders::ActionNameListType.build(input[:action_names], params, context: context + 'ActionNames' + '.member') unless input[:action_names].nil?
        Builders::ResourceNameListType.build(input[:resource_arns], params, context: context + 'ResourceArns' + '.member') unless input[:resource_arns].nil?
        params[context + 'ResourcePolicy'] = input[:resource_policy].to_s unless input[:resource_policy].nil?
        params[context + 'ResourceOwner'] = input[:resource_owner].to_s unless input[:resource_owner].nil?
        params[context + 'CallerArn'] = input[:caller_arn].to_s unless input[:caller_arn].nil?
        Builders::ContextEntryListType.build(input[:context_entries], params, context: context + 'ContextEntries' + '.member') unless input[:context_entries].nil?
        params[context + 'ResourceHandlingOption'] = input[:resource_handling_option].to_s unless input[:resource_handling_option].nil?
        params[context + 'MaxItems'] = input[:max_items].to_s unless input[:max_items].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for ContextEntryListType
    class ContextEntryListType
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::ContextEntry.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for ContextEntry
    class ContextEntry
      def self.build(input, params, context: nil)
        params[context + 'ContextKeyName'] = input[:context_key_name].to_s unless input[:context_key_name].nil?
        Builders::ContextKeyValueListType.build(input[:context_key_values], params, context: context + 'ContextKeyValues' + '.member') unless input[:context_key_values].nil?
        params[context + 'ContextKeyType'] = input[:context_key_type].to_s unless input[:context_key_type].nil?
      end
    end

    # List Builder for ContextKeyValueListType
    class ContextKeyValueListType
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # List Builder for ResourceNameListType
    class ResourceNameListType
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # List Builder for ActionNameListType
    class ActionNameListType
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for SimulatePrincipalPolicy
    class SimulatePrincipalPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'SimulatePrincipalPolicy'
        params['Version'] = '2010-05-08'
        params[context + 'PolicySourceArn'] = input[:policy_source_arn].to_s unless input[:policy_source_arn].nil?
        Builders::SimulationPolicyListType.build(input[:policy_input_list], params, context: context + 'PolicyInputList' + '.member') unless input[:policy_input_list].nil?
        Builders::SimulationPolicyListType.build(input[:permissions_boundary_policy_input_list], params, context: context + 'PermissionsBoundaryPolicyInputList' + '.member') unless input[:permissions_boundary_policy_input_list].nil?
        Builders::ActionNameListType.build(input[:action_names], params, context: context + 'ActionNames' + '.member') unless input[:action_names].nil?
        Builders::ResourceNameListType.build(input[:resource_arns], params, context: context + 'ResourceArns' + '.member') unless input[:resource_arns].nil?
        params[context + 'ResourcePolicy'] = input[:resource_policy].to_s unless input[:resource_policy].nil?
        params[context + 'ResourceOwner'] = input[:resource_owner].to_s unless input[:resource_owner].nil?
        params[context + 'CallerArn'] = input[:caller_arn].to_s unless input[:caller_arn].nil?
        Builders::ContextEntryListType.build(input[:context_entries], params, context: context + 'ContextEntries' + '.member') unless input[:context_entries].nil?
        params[context + 'ResourceHandlingOption'] = input[:resource_handling_option].to_s unless input[:resource_handling_option].nil?
        params[context + 'MaxItems'] = input[:max_items].to_s unless input[:max_items].nil?
        params[context + 'Marker'] = input[:marker].to_s unless input[:marker].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for TagInstanceProfile
    class TagInstanceProfile
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'TagInstanceProfile'
        params['Version'] = '2010-05-08'
        params[context + 'InstanceProfileName'] = input[:instance_profile_name].to_s unless input[:instance_profile_name].nil?
        Builders::TagListType.build(input[:tags], params, context: context + 'Tags' + '.member') unless input[:tags].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for TagMFADevice
    class TagMFADevice
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'TagMFADevice'
        params['Version'] = '2010-05-08'
        params[context + 'SerialNumber'] = input[:serial_number].to_s unless input[:serial_number].nil?
        Builders::TagListType.build(input[:tags], params, context: context + 'Tags' + '.member') unless input[:tags].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for TagOpenIDConnectProvider
    class TagOpenIDConnectProvider
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'TagOpenIDConnectProvider'
        params['Version'] = '2010-05-08'
        params[context + 'OpenIDConnectProviderArn'] = input[:open_id_connect_provider_arn].to_s unless input[:open_id_connect_provider_arn].nil?
        Builders::TagListType.build(input[:tags], params, context: context + 'Tags' + '.member') unless input[:tags].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for TagPolicy
    class TagPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'TagPolicy'
        params['Version'] = '2010-05-08'
        params[context + 'PolicyArn'] = input[:policy_arn].to_s unless input[:policy_arn].nil?
        Builders::TagListType.build(input[:tags], params, context: context + 'Tags' + '.member') unless input[:tags].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for TagRole
    class TagRole
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'TagRole'
        params['Version'] = '2010-05-08'
        params[context + 'RoleName'] = input[:role_name].to_s unless input[:role_name].nil?
        Builders::TagListType.build(input[:tags], params, context: context + 'Tags' + '.member') unless input[:tags].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for TagSAMLProvider
    class TagSAMLProvider
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'TagSAMLProvider'
        params['Version'] = '2010-05-08'
        params[context + 'SAMLProviderArn'] = input[:saml_provider_arn].to_s unless input[:saml_provider_arn].nil?
        Builders::TagListType.build(input[:tags], params, context: context + 'Tags' + '.member') unless input[:tags].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for TagServerCertificate
    class TagServerCertificate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'TagServerCertificate'
        params['Version'] = '2010-05-08'
        params[context + 'ServerCertificateName'] = input[:server_certificate_name].to_s unless input[:server_certificate_name].nil?
        Builders::TagListType.build(input[:tags], params, context: context + 'Tags' + '.member') unless input[:tags].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for TagUser
    class TagUser
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'TagUser'
        params['Version'] = '2010-05-08'
        params[context + 'UserName'] = input[:user_name].to_s unless input[:user_name].nil?
        Builders::TagListType.build(input[:tags], params, context: context + 'Tags' + '.member') unless input[:tags].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for UntagInstanceProfile
    class UntagInstanceProfile
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'UntagInstanceProfile'
        params['Version'] = '2010-05-08'
        params[context + 'InstanceProfileName'] = input[:instance_profile_name].to_s unless input[:instance_profile_name].nil?
        Builders::TagKeyListType.build(input[:tag_keys], params, context: context + 'TagKeys' + '.member') unless input[:tag_keys].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for tagKeyListType
    class TagKeyListType
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for UntagMFADevice
    class UntagMFADevice
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'UntagMFADevice'
        params['Version'] = '2010-05-08'
        params[context + 'SerialNumber'] = input[:serial_number].to_s unless input[:serial_number].nil?
        Builders::TagKeyListType.build(input[:tag_keys], params, context: context + 'TagKeys' + '.member') unless input[:tag_keys].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for UntagOpenIDConnectProvider
    class UntagOpenIDConnectProvider
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'UntagOpenIDConnectProvider'
        params['Version'] = '2010-05-08'
        params[context + 'OpenIDConnectProviderArn'] = input[:open_id_connect_provider_arn].to_s unless input[:open_id_connect_provider_arn].nil?
        Builders::TagKeyListType.build(input[:tag_keys], params, context: context + 'TagKeys' + '.member') unless input[:tag_keys].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for UntagPolicy
    class UntagPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'UntagPolicy'
        params['Version'] = '2010-05-08'
        params[context + 'PolicyArn'] = input[:policy_arn].to_s unless input[:policy_arn].nil?
        Builders::TagKeyListType.build(input[:tag_keys], params, context: context + 'TagKeys' + '.member') unless input[:tag_keys].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for UntagRole
    class UntagRole
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'UntagRole'
        params['Version'] = '2010-05-08'
        params[context + 'RoleName'] = input[:role_name].to_s unless input[:role_name].nil?
        Builders::TagKeyListType.build(input[:tag_keys], params, context: context + 'TagKeys' + '.member') unless input[:tag_keys].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for UntagSAMLProvider
    class UntagSAMLProvider
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'UntagSAMLProvider'
        params['Version'] = '2010-05-08'
        params[context + 'SAMLProviderArn'] = input[:saml_provider_arn].to_s unless input[:saml_provider_arn].nil?
        Builders::TagKeyListType.build(input[:tag_keys], params, context: context + 'TagKeys' + '.member') unless input[:tag_keys].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for UntagServerCertificate
    class UntagServerCertificate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'UntagServerCertificate'
        params['Version'] = '2010-05-08'
        params[context + 'ServerCertificateName'] = input[:server_certificate_name].to_s unless input[:server_certificate_name].nil?
        Builders::TagKeyListType.build(input[:tag_keys], params, context: context + 'TagKeys' + '.member') unless input[:tag_keys].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for UntagUser
    class UntagUser
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'UntagUser'
        params['Version'] = '2010-05-08'
        params[context + 'UserName'] = input[:user_name].to_s unless input[:user_name].nil?
        Builders::TagKeyListType.build(input[:tag_keys], params, context: context + 'TagKeys' + '.member') unless input[:tag_keys].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for UpdateAccessKey
    class UpdateAccessKey
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'UpdateAccessKey'
        params['Version'] = '2010-05-08'
        params[context + 'UserName'] = input[:user_name].to_s unless input[:user_name].nil?
        params[context + 'AccessKeyId'] = input[:access_key_id].to_s unless input[:access_key_id].nil?
        params[context + 'Status'] = input[:status].to_s unless input[:status].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for UpdateAccountPasswordPolicy
    class UpdateAccountPasswordPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'UpdateAccountPasswordPolicy'
        params['Version'] = '2010-05-08'
        params[context + 'MinimumPasswordLength'] = input[:minimum_password_length].to_s unless input[:minimum_password_length].nil?
        params[context + 'RequireSymbols'] = input[:require_symbols].to_s unless input[:require_symbols].nil?
        params[context + 'RequireNumbers'] = input[:require_numbers].to_s unless input[:require_numbers].nil?
        params[context + 'RequireUppercaseCharacters'] = input[:require_uppercase_characters].to_s unless input[:require_uppercase_characters].nil?
        params[context + 'RequireLowercaseCharacters'] = input[:require_lowercase_characters].to_s unless input[:require_lowercase_characters].nil?
        params[context + 'AllowUsersToChangePassword'] = input[:allow_users_to_change_password].to_s unless input[:allow_users_to_change_password].nil?
        params[context + 'MaxPasswordAge'] = input[:max_password_age].to_s unless input[:max_password_age].nil?
        params[context + 'PasswordReusePrevention'] = input[:password_reuse_prevention].to_s unless input[:password_reuse_prevention].nil?
        params[context + 'HardExpiry'] = input[:hard_expiry].to_s unless input[:hard_expiry].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for UpdateAssumeRolePolicy
    class UpdateAssumeRolePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'UpdateAssumeRolePolicy'
        params['Version'] = '2010-05-08'
        params[context + 'RoleName'] = input[:role_name].to_s unless input[:role_name].nil?
        params[context + 'PolicyDocument'] = input[:policy_document].to_s unless input[:policy_document].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for UpdateGroup
    class UpdateGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'UpdateGroup'
        params['Version'] = '2010-05-08'
        params[context + 'GroupName'] = input[:group_name].to_s unless input[:group_name].nil?
        params[context + 'NewPath'] = input[:new_path].to_s unless input[:new_path].nil?
        params[context + 'NewGroupName'] = input[:new_group_name].to_s unless input[:new_group_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for UpdateLoginProfile
    class UpdateLoginProfile
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'UpdateLoginProfile'
        params['Version'] = '2010-05-08'
        params[context + 'UserName'] = input[:user_name].to_s unless input[:user_name].nil?
        params[context + 'Password'] = input[:password].to_s unless input[:password].nil?
        params[context + 'PasswordResetRequired'] = input[:password_reset_required].to_s unless input[:password_reset_required].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for UpdateOpenIDConnectProviderThumbprint
    class UpdateOpenIDConnectProviderThumbprint
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'UpdateOpenIDConnectProviderThumbprint'
        params['Version'] = '2010-05-08'
        params[context + 'OpenIDConnectProviderArn'] = input[:open_id_connect_provider_arn].to_s unless input[:open_id_connect_provider_arn].nil?
        Builders::ThumbprintListType.build(input[:thumbprint_list], params, context: context + 'ThumbprintList' + '.member') unless input[:thumbprint_list].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for UpdateRole
    class UpdateRole
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'UpdateRole'
        params['Version'] = '2010-05-08'
        params[context + 'RoleName'] = input[:role_name].to_s unless input[:role_name].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        params[context + 'MaxSessionDuration'] = input[:max_session_duration].to_s unless input[:max_session_duration].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for UpdateRoleDescription
    class UpdateRoleDescription
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'UpdateRoleDescription'
        params['Version'] = '2010-05-08'
        params[context + 'RoleName'] = input[:role_name].to_s unless input[:role_name].nil?
        params[context + 'Description'] = input[:description].to_s unless input[:description].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for UpdateSAMLProvider
    class UpdateSAMLProvider
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'UpdateSAMLProvider'
        params['Version'] = '2010-05-08'
        params[context + 'SAMLMetadataDocument'] = input[:saml_metadata_document].to_s unless input[:saml_metadata_document].nil?
        params[context + 'SAMLProviderArn'] = input[:saml_provider_arn].to_s unless input[:saml_provider_arn].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for UpdateSSHPublicKey
    class UpdateSSHPublicKey
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'UpdateSSHPublicKey'
        params['Version'] = '2010-05-08'
        params[context + 'UserName'] = input[:user_name].to_s unless input[:user_name].nil?
        params[context + 'SSHPublicKeyId'] = input[:ssh_public_key_id].to_s unless input[:ssh_public_key_id].nil?
        params[context + 'Status'] = input[:status].to_s unless input[:status].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for UpdateServerCertificate
    class UpdateServerCertificate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'UpdateServerCertificate'
        params['Version'] = '2010-05-08'
        params[context + 'ServerCertificateName'] = input[:server_certificate_name].to_s unless input[:server_certificate_name].nil?
        params[context + 'NewPath'] = input[:new_path].to_s unless input[:new_path].nil?
        params[context + 'NewServerCertificateName'] = input[:new_server_certificate_name].to_s unless input[:new_server_certificate_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for UpdateServiceSpecificCredential
    class UpdateServiceSpecificCredential
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'UpdateServiceSpecificCredential'
        params['Version'] = '2010-05-08'
        params[context + 'UserName'] = input[:user_name].to_s unless input[:user_name].nil?
        params[context + 'ServiceSpecificCredentialId'] = input[:service_specific_credential_id].to_s unless input[:service_specific_credential_id].nil?
        params[context + 'Status'] = input[:status].to_s unless input[:status].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for UpdateSigningCertificate
    class UpdateSigningCertificate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'UpdateSigningCertificate'
        params['Version'] = '2010-05-08'
        params[context + 'UserName'] = input[:user_name].to_s unless input[:user_name].nil?
        params[context + 'CertificateId'] = input[:certificate_id].to_s unless input[:certificate_id].nil?
        params[context + 'Status'] = input[:status].to_s unless input[:status].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for UpdateUser
    class UpdateUser
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'UpdateUser'
        params['Version'] = '2010-05-08'
        params[context + 'UserName'] = input[:user_name].to_s unless input[:user_name].nil?
        params[context + 'NewPath'] = input[:new_path].to_s unless input[:new_path].nil?
        params[context + 'NewUserName'] = input[:new_user_name].to_s unless input[:new_user_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for UploadSSHPublicKey
    class UploadSSHPublicKey
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'UploadSSHPublicKey'
        params['Version'] = '2010-05-08'
        params[context + 'UserName'] = input[:user_name].to_s unless input[:user_name].nil?
        params[context + 'SSHPublicKeyBody'] = input[:ssh_public_key_body].to_s unless input[:ssh_public_key_body].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for UploadServerCertificate
    class UploadServerCertificate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'UploadServerCertificate'
        params['Version'] = '2010-05-08'
        params[context + 'Path'] = input[:path].to_s unless input[:path].nil?
        params[context + 'ServerCertificateName'] = input[:server_certificate_name].to_s unless input[:server_certificate_name].nil?
        params[context + 'CertificateBody'] = input[:certificate_body].to_s unless input[:certificate_body].nil?
        params[context + 'PrivateKey'] = input[:private_key].to_s unless input[:private_key].nil?
        params[context + 'CertificateChain'] = input[:certificate_chain].to_s unless input[:certificate_chain].nil?
        Builders::TagListType.build(input[:tags], params, context: context + 'Tags' + '.member') unless input[:tags].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for UploadSigningCertificate
    class UploadSigningCertificate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'UploadSigningCertificate'
        params['Version'] = '2010-05-08'
        params[context + 'UserName'] = input[:user_name].to_s unless input[:user_name].nil?
        params[context + 'CertificateBody'] = input[:certificate_body].to_s unless input[:certificate_body].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end
  end
end
