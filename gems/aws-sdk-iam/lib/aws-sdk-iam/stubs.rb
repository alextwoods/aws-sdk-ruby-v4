# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'
require 'stringio'

module AWS::SDK::IAM
  module Stubs

    # Operation Stubber for AddClientIDToOpenIDConnectProvider
    class AddClientIDToOpenIDConnectProvider
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('AddClientIDToOpenIDConnectProviderResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('AddClientIDToOpenIDConnectProviderResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for AddRoleToInstanceProfile
    class AddRoleToInstanceProfile
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('AddRoleToInstanceProfileResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('AddRoleToInstanceProfileResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for AddUserToGroup
    class AddUserToGroup
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('AddUserToGroupResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('AddUserToGroupResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for AttachGroupPolicy
    class AttachGroupPolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('AttachGroupPolicyResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('AttachGroupPolicyResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for AttachRolePolicy
    class AttachRolePolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('AttachRolePolicyResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('AttachRolePolicyResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for AttachUserPolicy
    class AttachUserPolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('AttachUserPolicyResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('AttachUserPolicyResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ChangePassword
    class ChangePassword
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ChangePasswordResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('ChangePasswordResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateAccessKey
    class CreateAccessKey
      def self.default(visited=[])
        {
          access_key: AccessKey.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateAccessKeyResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('CreateAccessKeyResult')
        xml << AccessKey.stub('AccessKey', stub[:access_key]) unless stub[:access_key].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for AccessKey
    class AccessKey
      def self.default(visited=[])
        return nil if visited.include?('AccessKey')
        visited = visited + ['AccessKey']
        {
          user_name: 'user_name',
          access_key_id: 'access_key_id',
          status: 'status',
          secret_access_key: 'secret_access_key',
          create_date: Time.now,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::AccessKey.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('UserName', stub[:user_name].to_s) unless stub[:user_name].nil?
        xml << Hearth::XML::Node.new('AccessKeyId', stub[:access_key_id].to_s) unless stub[:access_key_id].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('SecretAccessKey', stub[:secret_access_key].to_s) unless stub[:secret_access_key].nil?
        xml << Hearth::XML::Node.new('CreateDate', Hearth::TimeHelper.to_date_time(stub[:create_date])) unless stub[:create_date].nil?
        xml
      end
    end

    # Operation Stubber for CreateAccountAlias
    class CreateAccountAlias
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateAccountAliasResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('CreateAccountAliasResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateGroup
    class CreateGroup
      def self.default(visited=[])
        {
          group: Group.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateGroupResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('CreateGroupResult')
        xml << Group.stub('Group', stub[:group]) unless stub[:group].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for Group
    class Group
      def self.default(visited=[])
        return nil if visited.include?('Group')
        visited = visited + ['Group']
        {
          path: 'path',
          group_name: 'group_name',
          group_id: 'group_id',
          arn: 'arn',
          create_date: Time.now,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Group.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Path', stub[:path].to_s) unless stub[:path].nil?
        xml << Hearth::XML::Node.new('GroupName', stub[:group_name].to_s) unless stub[:group_name].nil?
        xml << Hearth::XML::Node.new('GroupId', stub[:group_id].to_s) unless stub[:group_id].nil?
        xml << Hearth::XML::Node.new('Arn', stub[:arn].to_s) unless stub[:arn].nil?
        xml << Hearth::XML::Node.new('CreateDate', Hearth::TimeHelper.to_date_time(stub[:create_date])) unless stub[:create_date].nil?
        xml
      end
    end

    # Operation Stubber for CreateInstanceProfile
    class CreateInstanceProfile
      def self.default(visited=[])
        {
          instance_profile: InstanceProfile.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateInstanceProfileResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('CreateInstanceProfileResult')
        xml << InstanceProfile.stub('InstanceProfile', stub[:instance_profile]) unless stub[:instance_profile].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for InstanceProfile
    class InstanceProfile
      def self.default(visited=[])
        return nil if visited.include?('InstanceProfile')
        visited = visited + ['InstanceProfile']
        {
          path: 'path',
          instance_profile_name: 'instance_profile_name',
          instance_profile_id: 'instance_profile_id',
          arn: 'arn',
          create_date: Time.now,
          roles: RoleListType.default(visited),
          tags: TagListType.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::InstanceProfile.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Path', stub[:path].to_s) unless stub[:path].nil?
        xml << Hearth::XML::Node.new('InstanceProfileName', stub[:instance_profile_name].to_s) unless stub[:instance_profile_name].nil?
        xml << Hearth::XML::Node.new('InstanceProfileId', stub[:instance_profile_id].to_s) unless stub[:instance_profile_id].nil?
        xml << Hearth::XML::Node.new('Arn', stub[:arn].to_s) unless stub[:arn].nil?
        xml << Hearth::XML::Node.new('CreateDate', Hearth::TimeHelper.to_date_time(stub[:create_date])) unless stub[:create_date].nil?
        xml << Hearth::XML::Node.new('Roles', RoleListType.stub('member', stub[:roles])) unless stub[:roles].nil?
        xml << Hearth::XML::Node.new('Tags', TagListType.stub('member', stub[:tags])) unless stub[:tags].nil?
        xml
      end
    end

    # List Stubber for tagListType
    class TagListType
      def self.default(visited=[])
        return nil if visited.include?('TagListType')
        visited = visited + ['TagListType']
        [
          Tag.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Tag.stub(node_name, element) unless element.nil?
        end
        xml
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

      def self.stub(node_name, stub)
        stub ||= Types::Tag.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Key', stub[:key].to_s) unless stub[:key].nil?
        xml << Hearth::XML::Node.new('Value', stub[:value].to_s) unless stub[:value].nil?
        xml
      end
    end

    # List Stubber for roleListType
    class RoleListType
      def self.default(visited=[])
        return nil if visited.include?('RoleListType')
        visited = visited + ['RoleListType']
        [
          Role.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Role.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for Role
    class Role
      def self.default(visited=[])
        return nil if visited.include?('Role')
        visited = visited + ['Role']
        {
          path: 'path',
          role_name: 'role_name',
          role_id: 'role_id',
          arn: 'arn',
          create_date: Time.now,
          assume_role_policy_document: 'assume_role_policy_document',
          description: 'description',
          max_session_duration: 1,
          permissions_boundary: AttachedPermissionsBoundary.default(visited),
          tags: TagListType.default(visited),
          role_last_used: RoleLastUsed.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Role.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Path', stub[:path].to_s) unless stub[:path].nil?
        xml << Hearth::XML::Node.new('RoleName', stub[:role_name].to_s) unless stub[:role_name].nil?
        xml << Hearth::XML::Node.new('RoleId', stub[:role_id].to_s) unless stub[:role_id].nil?
        xml << Hearth::XML::Node.new('Arn', stub[:arn].to_s) unless stub[:arn].nil?
        xml << Hearth::XML::Node.new('CreateDate', Hearth::TimeHelper.to_date_time(stub[:create_date])) unless stub[:create_date].nil?
        xml << Hearth::XML::Node.new('AssumeRolePolicyDocument', stub[:assume_role_policy_document].to_s) unless stub[:assume_role_policy_document].nil?
        xml << Hearth::XML::Node.new('Description', stub[:description].to_s) unless stub[:description].nil?
        xml << Hearth::XML::Node.new('MaxSessionDuration', stub[:max_session_duration].to_s) unless stub[:max_session_duration].nil?
        xml << AttachedPermissionsBoundary.stub('PermissionsBoundary', stub[:permissions_boundary]) unless stub[:permissions_boundary].nil?
        xml << Hearth::XML::Node.new('Tags', TagListType.stub('member', stub[:tags])) unless stub[:tags].nil?
        xml << RoleLastUsed.stub('RoleLastUsed', stub[:role_last_used]) unless stub[:role_last_used].nil?
        xml
      end
    end

    # Structure Stubber for RoleLastUsed
    class RoleLastUsed
      def self.default(visited=[])
        return nil if visited.include?('RoleLastUsed')
        visited = visited + ['RoleLastUsed']
        {
          last_used_date: Time.now,
          region: 'region',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::RoleLastUsed.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('LastUsedDate', Hearth::TimeHelper.to_date_time(stub[:last_used_date])) unless stub[:last_used_date].nil?
        xml << Hearth::XML::Node.new('Region', stub[:region].to_s) unless stub[:region].nil?
        xml
      end
    end

    # Structure Stubber for AttachedPermissionsBoundary
    class AttachedPermissionsBoundary
      def self.default(visited=[])
        return nil if visited.include?('AttachedPermissionsBoundary')
        visited = visited + ['AttachedPermissionsBoundary']
        {
          permissions_boundary_type: 'permissions_boundary_type',
          permissions_boundary_arn: 'permissions_boundary_arn',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::AttachedPermissionsBoundary.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('PermissionsBoundaryType', stub[:permissions_boundary_type].to_s) unless stub[:permissions_boundary_type].nil?
        xml << Hearth::XML::Node.new('PermissionsBoundaryArn', stub[:permissions_boundary_arn].to_s) unless stub[:permissions_boundary_arn].nil?
        xml
      end
    end

    # Operation Stubber for CreateLoginProfile
    class CreateLoginProfile
      def self.default(visited=[])
        {
          login_profile: LoginProfile.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateLoginProfileResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('CreateLoginProfileResult')
        xml << LoginProfile.stub('LoginProfile', stub[:login_profile]) unless stub[:login_profile].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for LoginProfile
    class LoginProfile
      def self.default(visited=[])
        return nil if visited.include?('LoginProfile')
        visited = visited + ['LoginProfile']
        {
          user_name: 'user_name',
          create_date: Time.now,
          password_reset_required: false,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::LoginProfile.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('UserName', stub[:user_name].to_s) unless stub[:user_name].nil?
        xml << Hearth::XML::Node.new('CreateDate', Hearth::TimeHelper.to_date_time(stub[:create_date])) unless stub[:create_date].nil?
        xml << Hearth::XML::Node.new('PasswordResetRequired', stub[:password_reset_required].to_s) unless stub[:password_reset_required].nil?
        xml
      end
    end

    # Operation Stubber for CreateOpenIDConnectProvider
    class CreateOpenIDConnectProvider
      def self.default(visited=[])
        {
          open_id_connect_provider_arn: 'open_id_connect_provider_arn',
          tags: TagListType.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateOpenIDConnectProviderResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('CreateOpenIDConnectProviderResult')
        xml << Hearth::XML::Node.new('OpenIDConnectProviderArn', stub[:open_id_connect_provider_arn].to_s) unless stub[:open_id_connect_provider_arn].nil?
        xml << Hearth::XML::Node.new('Tags', TagListType.stub('member', stub[:tags])) unless stub[:tags].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreatePolicy
    class CreatePolicy
      def self.default(visited=[])
        {
          policy: Policy.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreatePolicyResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('CreatePolicyResult')
        xml << Policy.stub('Policy', stub[:policy]) unless stub[:policy].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for Policy
    class Policy
      def self.default(visited=[])
        return nil if visited.include?('Policy')
        visited = visited + ['Policy']
        {
          policy_name: 'policy_name',
          policy_id: 'policy_id',
          arn: 'arn',
          path: 'path',
          default_version_id: 'default_version_id',
          attachment_count: 1,
          permissions_boundary_usage_count: 1,
          is_attachable: false,
          description: 'description',
          create_date: Time.now,
          update_date: Time.now,
          tags: TagListType.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Policy.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('PolicyName', stub[:policy_name].to_s) unless stub[:policy_name].nil?
        xml << Hearth::XML::Node.new('PolicyId', stub[:policy_id].to_s) unless stub[:policy_id].nil?
        xml << Hearth::XML::Node.new('Arn', stub[:arn].to_s) unless stub[:arn].nil?
        xml << Hearth::XML::Node.new('Path', stub[:path].to_s) unless stub[:path].nil?
        xml << Hearth::XML::Node.new('DefaultVersionId', stub[:default_version_id].to_s) unless stub[:default_version_id].nil?
        xml << Hearth::XML::Node.new('AttachmentCount', stub[:attachment_count].to_s) unless stub[:attachment_count].nil?
        xml << Hearth::XML::Node.new('PermissionsBoundaryUsageCount', stub[:permissions_boundary_usage_count].to_s) unless stub[:permissions_boundary_usage_count].nil?
        xml << Hearth::XML::Node.new('IsAttachable', stub[:is_attachable].to_s) unless stub[:is_attachable].nil?
        xml << Hearth::XML::Node.new('Description', stub[:description].to_s) unless stub[:description].nil?
        xml << Hearth::XML::Node.new('CreateDate', Hearth::TimeHelper.to_date_time(stub[:create_date])) unless stub[:create_date].nil?
        xml << Hearth::XML::Node.new('UpdateDate', Hearth::TimeHelper.to_date_time(stub[:update_date])) unless stub[:update_date].nil?
        xml << Hearth::XML::Node.new('Tags', TagListType.stub('member', stub[:tags])) unless stub[:tags].nil?
        xml
      end
    end

    # Operation Stubber for CreatePolicyVersion
    class CreatePolicyVersion
      def self.default(visited=[])
        {
          policy_version: PolicyVersion.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreatePolicyVersionResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('CreatePolicyVersionResult')
        xml << PolicyVersion.stub('PolicyVersion', stub[:policy_version]) unless stub[:policy_version].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for PolicyVersion
    class PolicyVersion
      def self.default(visited=[])
        return nil if visited.include?('PolicyVersion')
        visited = visited + ['PolicyVersion']
        {
          document: 'document',
          version_id: 'version_id',
          is_default_version: false,
          create_date: Time.now,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::PolicyVersion.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Document', stub[:document].to_s) unless stub[:document].nil?
        xml << Hearth::XML::Node.new('VersionId', stub[:version_id].to_s) unless stub[:version_id].nil?
        xml << Hearth::XML::Node.new('IsDefaultVersion', stub[:is_default_version].to_s) unless stub[:is_default_version].nil?
        xml << Hearth::XML::Node.new('CreateDate', Hearth::TimeHelper.to_date_time(stub[:create_date])) unless stub[:create_date].nil?
        xml
      end
    end

    # Operation Stubber for CreateRole
    class CreateRole
      def self.default(visited=[])
        {
          role: Role.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateRoleResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('CreateRoleResult')
        xml << Role.stub('Role', stub[:role]) unless stub[:role].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateSAMLProvider
    class CreateSAMLProvider
      def self.default(visited=[])
        {
          saml_provider_arn: 'saml_provider_arn',
          tags: TagListType.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateSAMLProviderResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('CreateSAMLProviderResult')
        xml << Hearth::XML::Node.new('SAMLProviderArn', stub[:saml_provider_arn].to_s) unless stub[:saml_provider_arn].nil?
        xml << Hearth::XML::Node.new('Tags', TagListType.stub('member', stub[:tags])) unless stub[:tags].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateServiceLinkedRole
    class CreateServiceLinkedRole
      def self.default(visited=[])
        {
          role: Role.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateServiceLinkedRoleResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('CreateServiceLinkedRoleResult')
        xml << Role.stub('Role', stub[:role]) unless stub[:role].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateServiceSpecificCredential
    class CreateServiceSpecificCredential
      def self.default(visited=[])
        {
          service_specific_credential: ServiceSpecificCredential.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateServiceSpecificCredentialResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('CreateServiceSpecificCredentialResult')
        xml << ServiceSpecificCredential.stub('ServiceSpecificCredential', stub[:service_specific_credential]) unless stub[:service_specific_credential].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for ServiceSpecificCredential
    class ServiceSpecificCredential
      def self.default(visited=[])
        return nil if visited.include?('ServiceSpecificCredential')
        visited = visited + ['ServiceSpecificCredential']
        {
          create_date: Time.now,
          service_name: 'service_name',
          service_user_name: 'service_user_name',
          service_password: 'service_password',
          service_specific_credential_id: 'service_specific_credential_id',
          user_name: 'user_name',
          status: 'status',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ServiceSpecificCredential.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('CreateDate', Hearth::TimeHelper.to_date_time(stub[:create_date])) unless stub[:create_date].nil?
        xml << Hearth::XML::Node.new('ServiceName', stub[:service_name].to_s) unless stub[:service_name].nil?
        xml << Hearth::XML::Node.new('ServiceUserName', stub[:service_user_name].to_s) unless stub[:service_user_name].nil?
        xml << Hearth::XML::Node.new('ServicePassword', stub[:service_password].to_s) unless stub[:service_password].nil?
        xml << Hearth::XML::Node.new('ServiceSpecificCredentialId', stub[:service_specific_credential_id].to_s) unless stub[:service_specific_credential_id].nil?
        xml << Hearth::XML::Node.new('UserName', stub[:user_name].to_s) unless stub[:user_name].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml
      end
    end

    # Operation Stubber for CreateUser
    class CreateUser
      def self.default(visited=[])
        {
          user: User.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateUserResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('CreateUserResult')
        xml << User.stub('User', stub[:user]) unless stub[:user].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for User
    class User
      def self.default(visited=[])
        return nil if visited.include?('User')
        visited = visited + ['User']
        {
          path: 'path',
          user_name: 'user_name',
          user_id: 'user_id',
          arn: 'arn',
          create_date: Time.now,
          password_last_used: Time.now,
          permissions_boundary: AttachedPermissionsBoundary.default(visited),
          tags: TagListType.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::User.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Path', stub[:path].to_s) unless stub[:path].nil?
        xml << Hearth::XML::Node.new('UserName', stub[:user_name].to_s) unless stub[:user_name].nil?
        xml << Hearth::XML::Node.new('UserId', stub[:user_id].to_s) unless stub[:user_id].nil?
        xml << Hearth::XML::Node.new('Arn', stub[:arn].to_s) unless stub[:arn].nil?
        xml << Hearth::XML::Node.new('CreateDate', Hearth::TimeHelper.to_date_time(stub[:create_date])) unless stub[:create_date].nil?
        xml << Hearth::XML::Node.new('PasswordLastUsed', Hearth::TimeHelper.to_date_time(stub[:password_last_used])) unless stub[:password_last_used].nil?
        xml << AttachedPermissionsBoundary.stub('PermissionsBoundary', stub[:permissions_boundary]) unless stub[:permissions_boundary].nil?
        xml << Hearth::XML::Node.new('Tags', TagListType.stub('member', stub[:tags])) unless stub[:tags].nil?
        xml
      end
    end

    # Operation Stubber for CreateVirtualMFADevice
    class CreateVirtualMFADevice
      def self.default(visited=[])
        {
          virtual_mfa_device: VirtualMFADevice.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateVirtualMFADeviceResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('CreateVirtualMFADeviceResult')
        xml << VirtualMFADevice.stub('VirtualMFADevice', stub[:virtual_mfa_device]) unless stub[:virtual_mfa_device].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for VirtualMFADevice
    class VirtualMFADevice
      def self.default(visited=[])
        return nil if visited.include?('VirtualMFADevice')
        visited = visited + ['VirtualMFADevice']
        {
          serial_number: 'serial_number',
          base32_string_seed: 'base32_string_seed',
          qr_code_png: 'qr_code_png',
          user: User.default(visited),
          enable_date: Time.now,
          tags: TagListType.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::VirtualMFADevice.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('SerialNumber', stub[:serial_number].to_s) unless stub[:serial_number].nil?
        xml << Hearth::XML::Node.new('Base32StringSeed', ::Base64::encode64(stub[:base32_string_seed]).strip) unless stub[:base32_string_seed].nil?
        xml << Hearth::XML::Node.new('QRCodePNG', ::Base64::encode64(stub[:qr_code_png]).strip) unless stub[:qr_code_png].nil?
        xml << User.stub('User', stub[:user]) unless stub[:user].nil?
        xml << Hearth::XML::Node.new('EnableDate', Hearth::TimeHelper.to_date_time(stub[:enable_date])) unless stub[:enable_date].nil?
        xml << Hearth::XML::Node.new('Tags', TagListType.stub('member', stub[:tags])) unless stub[:tags].nil?
        xml
      end
    end

    # Operation Stubber for DeactivateMFADevice
    class DeactivateMFADevice
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeactivateMFADeviceResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('DeactivateMFADeviceResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteAccessKey
    class DeleteAccessKey
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteAccessKeyResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('DeleteAccessKeyResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteAccountAlias
    class DeleteAccountAlias
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteAccountAliasResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('DeleteAccountAliasResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteAccountPasswordPolicy
    class DeleteAccountPasswordPolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteAccountPasswordPolicyResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('DeleteAccountPasswordPolicyResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteGroup
    class DeleteGroup
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteGroupResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('DeleteGroupResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteGroupPolicy
    class DeleteGroupPolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteGroupPolicyResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('DeleteGroupPolicyResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteInstanceProfile
    class DeleteInstanceProfile
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteInstanceProfileResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('DeleteInstanceProfileResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteLoginProfile
    class DeleteLoginProfile
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteLoginProfileResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('DeleteLoginProfileResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteOpenIDConnectProvider
    class DeleteOpenIDConnectProvider
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteOpenIDConnectProviderResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('DeleteOpenIDConnectProviderResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeletePolicy
    class DeletePolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeletePolicyResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('DeletePolicyResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeletePolicyVersion
    class DeletePolicyVersion
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeletePolicyVersionResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('DeletePolicyVersionResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteRole
    class DeleteRole
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteRoleResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('DeleteRoleResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteRolePermissionsBoundary
    class DeleteRolePermissionsBoundary
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteRolePermissionsBoundaryResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('DeleteRolePermissionsBoundaryResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteRolePolicy
    class DeleteRolePolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteRolePolicyResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('DeleteRolePolicyResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteSAMLProvider
    class DeleteSAMLProvider
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteSAMLProviderResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('DeleteSAMLProviderResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteSSHPublicKey
    class DeleteSSHPublicKey
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteSSHPublicKeyResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('DeleteSSHPublicKeyResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteServerCertificate
    class DeleteServerCertificate
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteServerCertificateResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('DeleteServerCertificateResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteServiceLinkedRole
    class DeleteServiceLinkedRole
      def self.default(visited=[])
        {
          deletion_task_id: 'deletion_task_id',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteServiceLinkedRoleResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('DeleteServiceLinkedRoleResult')
        xml << Hearth::XML::Node.new('DeletionTaskId', stub[:deletion_task_id].to_s) unless stub[:deletion_task_id].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteServiceSpecificCredential
    class DeleteServiceSpecificCredential
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteServiceSpecificCredentialResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('DeleteServiceSpecificCredentialResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteSigningCertificate
    class DeleteSigningCertificate
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteSigningCertificateResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('DeleteSigningCertificateResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteUser
    class DeleteUser
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteUserResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('DeleteUserResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteUserPermissionsBoundary
    class DeleteUserPermissionsBoundary
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteUserPermissionsBoundaryResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('DeleteUserPermissionsBoundaryResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteUserPolicy
    class DeleteUserPolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteUserPolicyResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('DeleteUserPolicyResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteVirtualMFADevice
    class DeleteVirtualMFADevice
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteVirtualMFADeviceResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('DeleteVirtualMFADeviceResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DetachGroupPolicy
    class DetachGroupPolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DetachGroupPolicyResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('DetachGroupPolicyResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DetachRolePolicy
    class DetachRolePolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DetachRolePolicyResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('DetachRolePolicyResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DetachUserPolicy
    class DetachUserPolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DetachUserPolicyResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('DetachUserPolicyResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for EnableMFADevice
    class EnableMFADevice
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('EnableMFADeviceResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('EnableMFADeviceResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for GenerateCredentialReport
    class GenerateCredentialReport
      def self.default(visited=[])
        {
          state: 'state',
          description: 'description',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('GenerateCredentialReportResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('GenerateCredentialReportResult')
        xml << Hearth::XML::Node.new('State', stub[:state].to_s) unless stub[:state].nil?
        xml << Hearth::XML::Node.new('Description', stub[:description].to_s) unless stub[:description].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for GenerateOrganizationsAccessReport
    class GenerateOrganizationsAccessReport
      def self.default(visited=[])
        {
          job_id: 'job_id',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('GenerateOrganizationsAccessReportResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('GenerateOrganizationsAccessReportResult')
        xml << Hearth::XML::Node.new('JobId', stub[:job_id].to_s) unless stub[:job_id].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for GenerateServiceLastAccessedDetails
    class GenerateServiceLastAccessedDetails
      def self.default(visited=[])
        {
          job_id: 'job_id',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('GenerateServiceLastAccessedDetailsResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('GenerateServiceLastAccessedDetailsResult')
        xml << Hearth::XML::Node.new('JobId', stub[:job_id].to_s) unless stub[:job_id].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetAccessKeyLastUsed
    class GetAccessKeyLastUsed
      def self.default(visited=[])
        {
          user_name: 'user_name',
          access_key_last_used: AccessKeyLastUsed.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('GetAccessKeyLastUsedResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('GetAccessKeyLastUsedResult')
        xml << Hearth::XML::Node.new('UserName', stub[:user_name].to_s) unless stub[:user_name].nil?
        xml << AccessKeyLastUsed.stub('AccessKeyLastUsed', stub[:access_key_last_used]) unless stub[:access_key_last_used].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for AccessKeyLastUsed
    class AccessKeyLastUsed
      def self.default(visited=[])
        return nil if visited.include?('AccessKeyLastUsed')
        visited = visited + ['AccessKeyLastUsed']
        {
          last_used_date: Time.now,
          service_name: 'service_name',
          region: 'region',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::AccessKeyLastUsed.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('LastUsedDate', Hearth::TimeHelper.to_date_time(stub[:last_used_date])) unless stub[:last_used_date].nil?
        xml << Hearth::XML::Node.new('ServiceName', stub[:service_name].to_s) unless stub[:service_name].nil?
        xml << Hearth::XML::Node.new('Region', stub[:region].to_s) unless stub[:region].nil?
        xml
      end
    end

    # Operation Stubber for GetAccountAuthorizationDetails
    class GetAccountAuthorizationDetails
      def self.default(visited=[])
        {
          user_detail_list: UserDetailListType.default(visited),
          group_detail_list: GroupDetailListType.default(visited),
          role_detail_list: RoleDetailListType.default(visited),
          policies: ManagedPolicyDetailListType.default(visited),
          is_truncated: false,
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('GetAccountAuthorizationDetailsResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('GetAccountAuthorizationDetailsResult')
        xml << Hearth::XML::Node.new('UserDetailList', UserDetailListType.stub('member', stub[:user_detail_list])) unless stub[:user_detail_list].nil?
        xml << Hearth::XML::Node.new('GroupDetailList', GroupDetailListType.stub('member', stub[:group_detail_list])) unless stub[:group_detail_list].nil?
        xml << Hearth::XML::Node.new('RoleDetailList', RoleDetailListType.stub('member', stub[:role_detail_list])) unless stub[:role_detail_list].nil?
        xml << Hearth::XML::Node.new('Policies', ManagedPolicyDetailListType.stub('member', stub[:policies])) unless stub[:policies].nil?
        xml << Hearth::XML::Node.new('IsTruncated', stub[:is_truncated].to_s) unless stub[:is_truncated].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for ManagedPolicyDetailListType
    class ManagedPolicyDetailListType
      def self.default(visited=[])
        return nil if visited.include?('ManagedPolicyDetailListType')
        visited = visited + ['ManagedPolicyDetailListType']
        [
          ManagedPolicyDetail.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << ManagedPolicyDetail.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for ManagedPolicyDetail
    class ManagedPolicyDetail
      def self.default(visited=[])
        return nil if visited.include?('ManagedPolicyDetail')
        visited = visited + ['ManagedPolicyDetail']
        {
          policy_name: 'policy_name',
          policy_id: 'policy_id',
          arn: 'arn',
          path: 'path',
          default_version_id: 'default_version_id',
          attachment_count: 1,
          permissions_boundary_usage_count: 1,
          is_attachable: false,
          description: 'description',
          create_date: Time.now,
          update_date: Time.now,
          policy_version_list: PolicyDocumentVersionListType.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ManagedPolicyDetail.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('PolicyName', stub[:policy_name].to_s) unless stub[:policy_name].nil?
        xml << Hearth::XML::Node.new('PolicyId', stub[:policy_id].to_s) unless stub[:policy_id].nil?
        xml << Hearth::XML::Node.new('Arn', stub[:arn].to_s) unless stub[:arn].nil?
        xml << Hearth::XML::Node.new('Path', stub[:path].to_s) unless stub[:path].nil?
        xml << Hearth::XML::Node.new('DefaultVersionId', stub[:default_version_id].to_s) unless stub[:default_version_id].nil?
        xml << Hearth::XML::Node.new('AttachmentCount', stub[:attachment_count].to_s) unless stub[:attachment_count].nil?
        xml << Hearth::XML::Node.new('PermissionsBoundaryUsageCount', stub[:permissions_boundary_usage_count].to_s) unless stub[:permissions_boundary_usage_count].nil?
        xml << Hearth::XML::Node.new('IsAttachable', stub[:is_attachable].to_s) unless stub[:is_attachable].nil?
        xml << Hearth::XML::Node.new('Description', stub[:description].to_s) unless stub[:description].nil?
        xml << Hearth::XML::Node.new('CreateDate', Hearth::TimeHelper.to_date_time(stub[:create_date])) unless stub[:create_date].nil?
        xml << Hearth::XML::Node.new('UpdateDate', Hearth::TimeHelper.to_date_time(stub[:update_date])) unless stub[:update_date].nil?
        xml << Hearth::XML::Node.new('PolicyVersionList', PolicyDocumentVersionListType.stub('member', stub[:policy_version_list])) unless stub[:policy_version_list].nil?
        xml
      end
    end

    # List Stubber for policyDocumentVersionListType
    class PolicyDocumentVersionListType
      def self.default(visited=[])
        return nil if visited.include?('PolicyDocumentVersionListType')
        visited = visited + ['PolicyDocumentVersionListType']
        [
          PolicyVersion.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << PolicyVersion.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # List Stubber for roleDetailListType
    class RoleDetailListType
      def self.default(visited=[])
        return nil if visited.include?('RoleDetailListType')
        visited = visited + ['RoleDetailListType']
        [
          RoleDetail.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << RoleDetail.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for RoleDetail
    class RoleDetail
      def self.default(visited=[])
        return nil if visited.include?('RoleDetail')
        visited = visited + ['RoleDetail']
        {
          path: 'path',
          role_name: 'role_name',
          role_id: 'role_id',
          arn: 'arn',
          create_date: Time.now,
          assume_role_policy_document: 'assume_role_policy_document',
          instance_profile_list: InstanceProfileListType.default(visited),
          role_policy_list: PolicyDetailListType.default(visited),
          attached_managed_policies: AttachedPoliciesListType.default(visited),
          permissions_boundary: AttachedPermissionsBoundary.default(visited),
          tags: TagListType.default(visited),
          role_last_used: RoleLastUsed.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::RoleDetail.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Path', stub[:path].to_s) unless stub[:path].nil?
        xml << Hearth::XML::Node.new('RoleName', stub[:role_name].to_s) unless stub[:role_name].nil?
        xml << Hearth::XML::Node.new('RoleId', stub[:role_id].to_s) unless stub[:role_id].nil?
        xml << Hearth::XML::Node.new('Arn', stub[:arn].to_s) unless stub[:arn].nil?
        xml << Hearth::XML::Node.new('CreateDate', Hearth::TimeHelper.to_date_time(stub[:create_date])) unless stub[:create_date].nil?
        xml << Hearth::XML::Node.new('AssumeRolePolicyDocument', stub[:assume_role_policy_document].to_s) unless stub[:assume_role_policy_document].nil?
        xml << Hearth::XML::Node.new('InstanceProfileList', InstanceProfileListType.stub('member', stub[:instance_profile_list])) unless stub[:instance_profile_list].nil?
        xml << Hearth::XML::Node.new('RolePolicyList', PolicyDetailListType.stub('member', stub[:role_policy_list])) unless stub[:role_policy_list].nil?
        xml << Hearth::XML::Node.new('AttachedManagedPolicies', AttachedPoliciesListType.stub('member', stub[:attached_managed_policies])) unless stub[:attached_managed_policies].nil?
        xml << AttachedPermissionsBoundary.stub('PermissionsBoundary', stub[:permissions_boundary]) unless stub[:permissions_boundary].nil?
        xml << Hearth::XML::Node.new('Tags', TagListType.stub('member', stub[:tags])) unless stub[:tags].nil?
        xml << RoleLastUsed.stub('RoleLastUsed', stub[:role_last_used]) unless stub[:role_last_used].nil?
        xml
      end
    end

    # List Stubber for attachedPoliciesListType
    class AttachedPoliciesListType
      def self.default(visited=[])
        return nil if visited.include?('AttachedPoliciesListType')
        visited = visited + ['AttachedPoliciesListType']
        [
          AttachedPolicy.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << AttachedPolicy.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for AttachedPolicy
    class AttachedPolicy
      def self.default(visited=[])
        return nil if visited.include?('AttachedPolicy')
        visited = visited + ['AttachedPolicy']
        {
          policy_name: 'policy_name',
          policy_arn: 'policy_arn',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::AttachedPolicy.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('PolicyName', stub[:policy_name].to_s) unless stub[:policy_name].nil?
        xml << Hearth::XML::Node.new('PolicyArn', stub[:policy_arn].to_s) unless stub[:policy_arn].nil?
        xml
      end
    end

    # List Stubber for policyDetailListType
    class PolicyDetailListType
      def self.default(visited=[])
        return nil if visited.include?('PolicyDetailListType')
        visited = visited + ['PolicyDetailListType']
        [
          PolicyDetail.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << PolicyDetail.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for PolicyDetail
    class PolicyDetail
      def self.default(visited=[])
        return nil if visited.include?('PolicyDetail')
        visited = visited + ['PolicyDetail']
        {
          policy_name: 'policy_name',
          policy_document: 'policy_document',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::PolicyDetail.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('PolicyName', stub[:policy_name].to_s) unless stub[:policy_name].nil?
        xml << Hearth::XML::Node.new('PolicyDocument', stub[:policy_document].to_s) unless stub[:policy_document].nil?
        xml
      end
    end

    # List Stubber for instanceProfileListType
    class InstanceProfileListType
      def self.default(visited=[])
        return nil if visited.include?('InstanceProfileListType')
        visited = visited + ['InstanceProfileListType']
        [
          InstanceProfile.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << InstanceProfile.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # List Stubber for groupDetailListType
    class GroupDetailListType
      def self.default(visited=[])
        return nil if visited.include?('GroupDetailListType')
        visited = visited + ['GroupDetailListType']
        [
          GroupDetail.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << GroupDetail.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for GroupDetail
    class GroupDetail
      def self.default(visited=[])
        return nil if visited.include?('GroupDetail')
        visited = visited + ['GroupDetail']
        {
          path: 'path',
          group_name: 'group_name',
          group_id: 'group_id',
          arn: 'arn',
          create_date: Time.now,
          group_policy_list: PolicyDetailListType.default(visited),
          attached_managed_policies: AttachedPoliciesListType.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::GroupDetail.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Path', stub[:path].to_s) unless stub[:path].nil?
        xml << Hearth::XML::Node.new('GroupName', stub[:group_name].to_s) unless stub[:group_name].nil?
        xml << Hearth::XML::Node.new('GroupId', stub[:group_id].to_s) unless stub[:group_id].nil?
        xml << Hearth::XML::Node.new('Arn', stub[:arn].to_s) unless stub[:arn].nil?
        xml << Hearth::XML::Node.new('CreateDate', Hearth::TimeHelper.to_date_time(stub[:create_date])) unless stub[:create_date].nil?
        xml << Hearth::XML::Node.new('GroupPolicyList', PolicyDetailListType.stub('member', stub[:group_policy_list])) unless stub[:group_policy_list].nil?
        xml << Hearth::XML::Node.new('AttachedManagedPolicies', AttachedPoliciesListType.stub('member', stub[:attached_managed_policies])) unless stub[:attached_managed_policies].nil?
        xml
      end
    end

    # List Stubber for userDetailListType
    class UserDetailListType
      def self.default(visited=[])
        return nil if visited.include?('UserDetailListType')
        visited = visited + ['UserDetailListType']
        [
          UserDetail.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << UserDetail.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for UserDetail
    class UserDetail
      def self.default(visited=[])
        return nil if visited.include?('UserDetail')
        visited = visited + ['UserDetail']
        {
          path: 'path',
          user_name: 'user_name',
          user_id: 'user_id',
          arn: 'arn',
          create_date: Time.now,
          user_policy_list: PolicyDetailListType.default(visited),
          group_list: GroupNameListType.default(visited),
          attached_managed_policies: AttachedPoliciesListType.default(visited),
          permissions_boundary: AttachedPermissionsBoundary.default(visited),
          tags: TagListType.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::UserDetail.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Path', stub[:path].to_s) unless stub[:path].nil?
        xml << Hearth::XML::Node.new('UserName', stub[:user_name].to_s) unless stub[:user_name].nil?
        xml << Hearth::XML::Node.new('UserId', stub[:user_id].to_s) unless stub[:user_id].nil?
        xml << Hearth::XML::Node.new('Arn', stub[:arn].to_s) unless stub[:arn].nil?
        xml << Hearth::XML::Node.new('CreateDate', Hearth::TimeHelper.to_date_time(stub[:create_date])) unless stub[:create_date].nil?
        xml << Hearth::XML::Node.new('UserPolicyList', PolicyDetailListType.stub('member', stub[:user_policy_list])) unless stub[:user_policy_list].nil?
        xml << Hearth::XML::Node.new('GroupList', GroupNameListType.stub('member', stub[:group_list])) unless stub[:group_list].nil?
        xml << Hearth::XML::Node.new('AttachedManagedPolicies', AttachedPoliciesListType.stub('member', stub[:attached_managed_policies])) unless stub[:attached_managed_policies].nil?
        xml << AttachedPermissionsBoundary.stub('PermissionsBoundary', stub[:permissions_boundary]) unless stub[:permissions_boundary].nil?
        xml << Hearth::XML::Node.new('Tags', TagListType.stub('member', stub[:tags])) unless stub[:tags].nil?
        xml
      end
    end

    # List Stubber for groupNameListType
    class GroupNameListType
      def self.default(visited=[])
        return nil if visited.include?('GroupNameListType')
        visited = visited + ['GroupNameListType']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for GetAccountPasswordPolicy
    class GetAccountPasswordPolicy
      def self.default(visited=[])
        {
          password_policy: PasswordPolicy.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('GetAccountPasswordPolicyResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('GetAccountPasswordPolicyResult')
        xml << PasswordPolicy.stub('PasswordPolicy', stub[:password_policy]) unless stub[:password_policy].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for PasswordPolicy
    class PasswordPolicy
      def self.default(visited=[])
        return nil if visited.include?('PasswordPolicy')
        visited = visited + ['PasswordPolicy']
        {
          minimum_password_length: 1,
          require_symbols: false,
          require_numbers: false,
          require_uppercase_characters: false,
          require_lowercase_characters: false,
          allow_users_to_change_password: false,
          expire_passwords: false,
          max_password_age: 1,
          password_reuse_prevention: 1,
          hard_expiry: false,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::PasswordPolicy.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('MinimumPasswordLength', stub[:minimum_password_length].to_s) unless stub[:minimum_password_length].nil?
        xml << Hearth::XML::Node.new('RequireSymbols', stub[:require_symbols].to_s) unless stub[:require_symbols].nil?
        xml << Hearth::XML::Node.new('RequireNumbers', stub[:require_numbers].to_s) unless stub[:require_numbers].nil?
        xml << Hearth::XML::Node.new('RequireUppercaseCharacters', stub[:require_uppercase_characters].to_s) unless stub[:require_uppercase_characters].nil?
        xml << Hearth::XML::Node.new('RequireLowercaseCharacters', stub[:require_lowercase_characters].to_s) unless stub[:require_lowercase_characters].nil?
        xml << Hearth::XML::Node.new('AllowUsersToChangePassword', stub[:allow_users_to_change_password].to_s) unless stub[:allow_users_to_change_password].nil?
        xml << Hearth::XML::Node.new('ExpirePasswords', stub[:expire_passwords].to_s) unless stub[:expire_passwords].nil?
        xml << Hearth::XML::Node.new('MaxPasswordAge', stub[:max_password_age].to_s) unless stub[:max_password_age].nil?
        xml << Hearth::XML::Node.new('PasswordReusePrevention', stub[:password_reuse_prevention].to_s) unless stub[:password_reuse_prevention].nil?
        xml << Hearth::XML::Node.new('HardExpiry', stub[:hard_expiry].to_s) unless stub[:hard_expiry].nil?
        xml
      end
    end

    # Operation Stubber for GetAccountSummary
    class GetAccountSummary
      def self.default(visited=[])
        {
          summary_map: SummaryMapType.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('GetAccountSummaryResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('GetAccountSummaryResult')
        xml << Hearth::XML::Node.new('SummaryMap', SummaryMapType.stub('entry', stub[:summary_map])) unless stub[:summary_map].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Map Stubber for summaryMapType
    class SummaryMapType
      def self.default(visited=[])
        return nil if visited.include?('SummaryMapType')
        visited = visited + ['SummaryMapType']
        {
          test_key: 1
        }
      end

      def self.stub(node_name, stub)
        nodes = []
        stub.each do |key, value|
          xml = Hearth::XML::Node.new(node_name)
          xml << Hearth::XML::Node.new('key', key.to_s) unless key.nil?
          xml << Hearth::XML::Node.new('value', value.to_s) unless value.nil?
          nodes << xml
        end
        nodes
      end
    end

    # Operation Stubber for GetContextKeysForCustomPolicy
    class GetContextKeysForCustomPolicy
      def self.default(visited=[])
        {
          context_key_names: ContextKeyNamesResultListType.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('GetContextKeysForCustomPolicyResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('GetContextKeysForCustomPolicyResult')
        xml << Hearth::XML::Node.new('ContextKeyNames', ContextKeyNamesResultListType.stub('member', stub[:context_key_names])) unless stub[:context_key_names].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for ContextKeyNamesResultListType
    class ContextKeyNamesResultListType
      def self.default(visited=[])
        return nil if visited.include?('ContextKeyNamesResultListType')
        visited = visited + ['ContextKeyNamesResultListType']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for GetContextKeysForPrincipalPolicy
    class GetContextKeysForPrincipalPolicy
      def self.default(visited=[])
        {
          context_key_names: ContextKeyNamesResultListType.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('GetContextKeysForPrincipalPolicyResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('GetContextKeysForPrincipalPolicyResult')
        xml << Hearth::XML::Node.new('ContextKeyNames', ContextKeyNamesResultListType.stub('member', stub[:context_key_names])) unless stub[:context_key_names].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetCredentialReport
    class GetCredentialReport
      def self.default(visited=[])
        {
          content: 'content',
          report_format: 'report_format',
          generated_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('GetCredentialReportResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('GetCredentialReportResult')
        xml << Hearth::XML::Node.new('Content', ::Base64::encode64(stub[:content]).strip) unless stub[:content].nil?
        xml << Hearth::XML::Node.new('ReportFormat', stub[:report_format].to_s) unless stub[:report_format].nil?
        xml << Hearth::XML::Node.new('GeneratedTime', Hearth::TimeHelper.to_date_time(stub[:generated_time])) unless stub[:generated_time].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetGroup
    class GetGroup
      def self.default(visited=[])
        {
          group: Group.default(visited),
          users: UserListType.default(visited),
          is_truncated: false,
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('GetGroupResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('GetGroupResult')
        xml << Group.stub('Group', stub[:group]) unless stub[:group].nil?
        xml << Hearth::XML::Node.new('Users', UserListType.stub('member', stub[:users])) unless stub[:users].nil?
        xml << Hearth::XML::Node.new('IsTruncated', stub[:is_truncated].to_s) unless stub[:is_truncated].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for userListType
    class UserListType
      def self.default(visited=[])
        return nil if visited.include?('UserListType')
        visited = visited + ['UserListType']
        [
          User.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << User.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for GetGroupPolicy
    class GetGroupPolicy
      def self.default(visited=[])
        {
          group_name: 'group_name',
          policy_name: 'policy_name',
          policy_document: 'policy_document',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('GetGroupPolicyResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('GetGroupPolicyResult')
        xml << Hearth::XML::Node.new('GroupName', stub[:group_name].to_s) unless stub[:group_name].nil?
        xml << Hearth::XML::Node.new('PolicyName', stub[:policy_name].to_s) unless stub[:policy_name].nil?
        xml << Hearth::XML::Node.new('PolicyDocument', stub[:policy_document].to_s) unless stub[:policy_document].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetInstanceProfile
    class GetInstanceProfile
      def self.default(visited=[])
        {
          instance_profile: InstanceProfile.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('GetInstanceProfileResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('GetInstanceProfileResult')
        xml << InstanceProfile.stub('InstanceProfile', stub[:instance_profile]) unless stub[:instance_profile].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetLoginProfile
    class GetLoginProfile
      def self.default(visited=[])
        {
          login_profile: LoginProfile.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('GetLoginProfileResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('GetLoginProfileResult')
        xml << LoginProfile.stub('LoginProfile', stub[:login_profile]) unless stub[:login_profile].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetOpenIDConnectProvider
    class GetOpenIDConnectProvider
      def self.default(visited=[])
        {
          url: 'url',
          client_id_list: ClientIDListType.default(visited),
          thumbprint_list: ThumbprintListType.default(visited),
          create_date: Time.now,
          tags: TagListType.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('GetOpenIDConnectProviderResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('GetOpenIDConnectProviderResult')
        xml << Hearth::XML::Node.new('Url', stub[:url].to_s) unless stub[:url].nil?
        xml << Hearth::XML::Node.new('ClientIDList', ClientIDListType.stub('member', stub[:client_id_list])) unless stub[:client_id_list].nil?
        xml << Hearth::XML::Node.new('ThumbprintList', ThumbprintListType.stub('member', stub[:thumbprint_list])) unless stub[:thumbprint_list].nil?
        xml << Hearth::XML::Node.new('CreateDate', Hearth::TimeHelper.to_date_time(stub[:create_date])) unless stub[:create_date].nil?
        xml << Hearth::XML::Node.new('Tags', TagListType.stub('member', stub[:tags])) unless stub[:tags].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for thumbprintListType
    class ThumbprintListType
      def self.default(visited=[])
        return nil if visited.include?('ThumbprintListType')
        visited = visited + ['ThumbprintListType']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # List Stubber for clientIDListType
    class ClientIDListType
      def self.default(visited=[])
        return nil if visited.include?('ClientIDListType')
        visited = visited + ['ClientIDListType']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for GetOrganizationsAccessReport
    class GetOrganizationsAccessReport
      def self.default(visited=[])
        {
          job_status: 'job_status',
          job_creation_date: Time.now,
          job_completion_date: Time.now,
          number_of_services_accessible: 1,
          number_of_services_not_accessed: 1,
          access_details: AccessDetails.default(visited),
          is_truncated: false,
          marker: 'marker',
          error_details: ErrorDetails.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('GetOrganizationsAccessReportResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('GetOrganizationsAccessReportResult')
        xml << Hearth::XML::Node.new('JobStatus', stub[:job_status].to_s) unless stub[:job_status].nil?
        xml << Hearth::XML::Node.new('JobCreationDate', Hearth::TimeHelper.to_date_time(stub[:job_creation_date])) unless stub[:job_creation_date].nil?
        xml << Hearth::XML::Node.new('JobCompletionDate', Hearth::TimeHelper.to_date_time(stub[:job_completion_date])) unless stub[:job_completion_date].nil?
        xml << Hearth::XML::Node.new('NumberOfServicesAccessible', stub[:number_of_services_accessible].to_s) unless stub[:number_of_services_accessible].nil?
        xml << Hearth::XML::Node.new('NumberOfServicesNotAccessed', stub[:number_of_services_not_accessed].to_s) unless stub[:number_of_services_not_accessed].nil?
        xml << Hearth::XML::Node.new('AccessDetails', AccessDetails.stub('member', stub[:access_details])) unless stub[:access_details].nil?
        xml << Hearth::XML::Node.new('IsTruncated', stub[:is_truncated].to_s) unless stub[:is_truncated].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        xml << ErrorDetails.stub('ErrorDetails', stub[:error_details]) unless stub[:error_details].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for ErrorDetails
    class ErrorDetails
      def self.default(visited=[])
        return nil if visited.include?('ErrorDetails')
        visited = visited + ['ErrorDetails']
        {
          message: 'message',
          code: 'code',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ErrorDetails.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Message', stub[:message].to_s) unless stub[:message].nil?
        xml << Hearth::XML::Node.new('Code', stub[:code].to_s) unless stub[:code].nil?
        xml
      end
    end

    # List Stubber for AccessDetails
    class AccessDetails
      def self.default(visited=[])
        return nil if visited.include?('AccessDetails')
        visited = visited + ['AccessDetails']
        [
          AccessDetail.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << AccessDetail.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for AccessDetail
    class AccessDetail
      def self.default(visited=[])
        return nil if visited.include?('AccessDetail')
        visited = visited + ['AccessDetail']
        {
          service_name: 'service_name',
          service_namespace: 'service_namespace',
          region: 'region',
          entity_path: 'entity_path',
          last_authenticated_time: Time.now,
          total_authenticated_entities: 1,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::AccessDetail.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ServiceName', stub[:service_name].to_s) unless stub[:service_name].nil?
        xml << Hearth::XML::Node.new('ServiceNamespace', stub[:service_namespace].to_s) unless stub[:service_namespace].nil?
        xml << Hearth::XML::Node.new('Region', stub[:region].to_s) unless stub[:region].nil?
        xml << Hearth::XML::Node.new('EntityPath', stub[:entity_path].to_s) unless stub[:entity_path].nil?
        xml << Hearth::XML::Node.new('LastAuthenticatedTime', Hearth::TimeHelper.to_date_time(stub[:last_authenticated_time])) unless stub[:last_authenticated_time].nil?
        xml << Hearth::XML::Node.new('TotalAuthenticatedEntities', stub[:total_authenticated_entities].to_s) unless stub[:total_authenticated_entities].nil?
        xml
      end
    end

    # Operation Stubber for GetPolicy
    class GetPolicy
      def self.default(visited=[])
        {
          policy: Policy.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('GetPolicyResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('GetPolicyResult')
        xml << Policy.stub('Policy', stub[:policy]) unless stub[:policy].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetPolicyVersion
    class GetPolicyVersion
      def self.default(visited=[])
        {
          policy_version: PolicyVersion.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('GetPolicyVersionResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('GetPolicyVersionResult')
        xml << PolicyVersion.stub('PolicyVersion', stub[:policy_version]) unless stub[:policy_version].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetRole
    class GetRole
      def self.default(visited=[])
        {
          role: Role.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('GetRoleResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('GetRoleResult')
        xml << Role.stub('Role', stub[:role]) unless stub[:role].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetRolePolicy
    class GetRolePolicy
      def self.default(visited=[])
        {
          role_name: 'role_name',
          policy_name: 'policy_name',
          policy_document: 'policy_document',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('GetRolePolicyResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('GetRolePolicyResult')
        xml << Hearth::XML::Node.new('RoleName', stub[:role_name].to_s) unless stub[:role_name].nil?
        xml << Hearth::XML::Node.new('PolicyName', stub[:policy_name].to_s) unless stub[:policy_name].nil?
        xml << Hearth::XML::Node.new('PolicyDocument', stub[:policy_document].to_s) unless stub[:policy_document].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetSAMLProvider
    class GetSAMLProvider
      def self.default(visited=[])
        {
          saml_metadata_document: 'saml_metadata_document',
          create_date: Time.now,
          valid_until: Time.now,
          tags: TagListType.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('GetSAMLProviderResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('GetSAMLProviderResult')
        xml << Hearth::XML::Node.new('SAMLMetadataDocument', stub[:saml_metadata_document].to_s) unless stub[:saml_metadata_document].nil?
        xml << Hearth::XML::Node.new('CreateDate', Hearth::TimeHelper.to_date_time(stub[:create_date])) unless stub[:create_date].nil?
        xml << Hearth::XML::Node.new('ValidUntil', Hearth::TimeHelper.to_date_time(stub[:valid_until])) unless stub[:valid_until].nil?
        xml << Hearth::XML::Node.new('Tags', TagListType.stub('member', stub[:tags])) unless stub[:tags].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetSSHPublicKey
    class GetSSHPublicKey
      def self.default(visited=[])
        {
          ssh_public_key: SSHPublicKey.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('GetSSHPublicKeyResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('GetSSHPublicKeyResult')
        xml << SSHPublicKey.stub('SSHPublicKey', stub[:ssh_public_key]) unless stub[:ssh_public_key].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for SSHPublicKey
    class SSHPublicKey
      def self.default(visited=[])
        return nil if visited.include?('SSHPublicKey')
        visited = visited + ['SSHPublicKey']
        {
          user_name: 'user_name',
          ssh_public_key_id: 'ssh_public_key_id',
          fingerprint: 'fingerprint',
          ssh_public_key_body: 'ssh_public_key_body',
          status: 'status',
          upload_date: Time.now,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::SSHPublicKey.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('UserName', stub[:user_name].to_s) unless stub[:user_name].nil?
        xml << Hearth::XML::Node.new('SSHPublicKeyId', stub[:ssh_public_key_id].to_s) unless stub[:ssh_public_key_id].nil?
        xml << Hearth::XML::Node.new('Fingerprint', stub[:fingerprint].to_s) unless stub[:fingerprint].nil?
        xml << Hearth::XML::Node.new('SSHPublicKeyBody', stub[:ssh_public_key_body].to_s) unless stub[:ssh_public_key_body].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('UploadDate', Hearth::TimeHelper.to_date_time(stub[:upload_date])) unless stub[:upload_date].nil?
        xml
      end
    end

    # Operation Stubber for GetServerCertificate
    class GetServerCertificate
      def self.default(visited=[])
        {
          server_certificate: ServerCertificate.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('GetServerCertificateResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('GetServerCertificateResult')
        xml << ServerCertificate.stub('ServerCertificate', stub[:server_certificate]) unless stub[:server_certificate].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for ServerCertificate
    class ServerCertificate
      def self.default(visited=[])
        return nil if visited.include?('ServerCertificate')
        visited = visited + ['ServerCertificate']
        {
          server_certificate_metadata: ServerCertificateMetadata.default(visited),
          certificate_body: 'certificate_body',
          certificate_chain: 'certificate_chain',
          tags: TagListType.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ServerCertificate.new
        xml = Hearth::XML::Node.new(node_name)
        xml << ServerCertificateMetadata.stub('ServerCertificateMetadata', stub[:server_certificate_metadata]) unless stub[:server_certificate_metadata].nil?
        xml << Hearth::XML::Node.new('CertificateBody', stub[:certificate_body].to_s) unless stub[:certificate_body].nil?
        xml << Hearth::XML::Node.new('CertificateChain', stub[:certificate_chain].to_s) unless stub[:certificate_chain].nil?
        xml << Hearth::XML::Node.new('Tags', TagListType.stub('member', stub[:tags])) unless stub[:tags].nil?
        xml
      end
    end

    # Structure Stubber for ServerCertificateMetadata
    class ServerCertificateMetadata
      def self.default(visited=[])
        return nil if visited.include?('ServerCertificateMetadata')
        visited = visited + ['ServerCertificateMetadata']
        {
          path: 'path',
          server_certificate_name: 'server_certificate_name',
          server_certificate_id: 'server_certificate_id',
          arn: 'arn',
          upload_date: Time.now,
          expiration: Time.now,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ServerCertificateMetadata.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Path', stub[:path].to_s) unless stub[:path].nil?
        xml << Hearth::XML::Node.new('ServerCertificateName', stub[:server_certificate_name].to_s) unless stub[:server_certificate_name].nil?
        xml << Hearth::XML::Node.new('ServerCertificateId', stub[:server_certificate_id].to_s) unless stub[:server_certificate_id].nil?
        xml << Hearth::XML::Node.new('Arn', stub[:arn].to_s) unless stub[:arn].nil?
        xml << Hearth::XML::Node.new('UploadDate', Hearth::TimeHelper.to_date_time(stub[:upload_date])) unless stub[:upload_date].nil?
        xml << Hearth::XML::Node.new('Expiration', Hearth::TimeHelper.to_date_time(stub[:expiration])) unless stub[:expiration].nil?
        xml
      end
    end

    # Operation Stubber for GetServiceLastAccessedDetails
    class GetServiceLastAccessedDetails
      def self.default(visited=[])
        {
          job_status: 'job_status',
          job_type: 'job_type',
          job_creation_date: Time.now,
          services_last_accessed: ServicesLastAccessed.default(visited),
          job_completion_date: Time.now,
          is_truncated: false,
          marker: 'marker',
          error: ErrorDetails.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('GetServiceLastAccessedDetailsResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('GetServiceLastAccessedDetailsResult')
        xml << Hearth::XML::Node.new('JobStatus', stub[:job_status].to_s) unless stub[:job_status].nil?
        xml << Hearth::XML::Node.new('JobType', stub[:job_type].to_s) unless stub[:job_type].nil?
        xml << Hearth::XML::Node.new('JobCreationDate', Hearth::TimeHelper.to_date_time(stub[:job_creation_date])) unless stub[:job_creation_date].nil?
        xml << Hearth::XML::Node.new('ServicesLastAccessed', ServicesLastAccessed.stub('member', stub[:services_last_accessed])) unless stub[:services_last_accessed].nil?
        xml << Hearth::XML::Node.new('JobCompletionDate', Hearth::TimeHelper.to_date_time(stub[:job_completion_date])) unless stub[:job_completion_date].nil?
        xml << Hearth::XML::Node.new('IsTruncated', stub[:is_truncated].to_s) unless stub[:is_truncated].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        xml << ErrorDetails.stub('Error', stub[:error]) unless stub[:error].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for ServicesLastAccessed
    class ServicesLastAccessed
      def self.default(visited=[])
        return nil if visited.include?('ServicesLastAccessed')
        visited = visited + ['ServicesLastAccessed']
        [
          ServiceLastAccessed.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << ServiceLastAccessed.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for ServiceLastAccessed
    class ServiceLastAccessed
      def self.default(visited=[])
        return nil if visited.include?('ServiceLastAccessed')
        visited = visited + ['ServiceLastAccessed']
        {
          service_name: 'service_name',
          last_authenticated: Time.now,
          service_namespace: 'service_namespace',
          last_authenticated_entity: 'last_authenticated_entity',
          last_authenticated_region: 'last_authenticated_region',
          total_authenticated_entities: 1,
          tracked_actions_last_accessed: TrackedActionsLastAccessed.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ServiceLastAccessed.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ServiceName', stub[:service_name].to_s) unless stub[:service_name].nil?
        xml << Hearth::XML::Node.new('LastAuthenticated', Hearth::TimeHelper.to_date_time(stub[:last_authenticated])) unless stub[:last_authenticated].nil?
        xml << Hearth::XML::Node.new('ServiceNamespace', stub[:service_namespace].to_s) unless stub[:service_namespace].nil?
        xml << Hearth::XML::Node.new('LastAuthenticatedEntity', stub[:last_authenticated_entity].to_s) unless stub[:last_authenticated_entity].nil?
        xml << Hearth::XML::Node.new('LastAuthenticatedRegion', stub[:last_authenticated_region].to_s) unless stub[:last_authenticated_region].nil?
        xml << Hearth::XML::Node.new('TotalAuthenticatedEntities', stub[:total_authenticated_entities].to_s) unless stub[:total_authenticated_entities].nil?
        xml << Hearth::XML::Node.new('TrackedActionsLastAccessed', TrackedActionsLastAccessed.stub('member', stub[:tracked_actions_last_accessed])) unless stub[:tracked_actions_last_accessed].nil?
        xml
      end
    end

    # List Stubber for TrackedActionsLastAccessed
    class TrackedActionsLastAccessed
      def self.default(visited=[])
        return nil if visited.include?('TrackedActionsLastAccessed')
        visited = visited + ['TrackedActionsLastAccessed']
        [
          TrackedActionLastAccessed.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << TrackedActionLastAccessed.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for TrackedActionLastAccessed
    class TrackedActionLastAccessed
      def self.default(visited=[])
        return nil if visited.include?('TrackedActionLastAccessed')
        visited = visited + ['TrackedActionLastAccessed']
        {
          action_name: 'action_name',
          last_accessed_entity: 'last_accessed_entity',
          last_accessed_time: Time.now,
          last_accessed_region: 'last_accessed_region',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::TrackedActionLastAccessed.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ActionName', stub[:action_name].to_s) unless stub[:action_name].nil?
        xml << Hearth::XML::Node.new('LastAccessedEntity', stub[:last_accessed_entity].to_s) unless stub[:last_accessed_entity].nil?
        xml << Hearth::XML::Node.new('LastAccessedTime', Hearth::TimeHelper.to_date_time(stub[:last_accessed_time])) unless stub[:last_accessed_time].nil?
        xml << Hearth::XML::Node.new('LastAccessedRegion', stub[:last_accessed_region].to_s) unless stub[:last_accessed_region].nil?
        xml
      end
    end

    # Operation Stubber for GetServiceLastAccessedDetailsWithEntities
    class GetServiceLastAccessedDetailsWithEntities
      def self.default(visited=[])
        {
          job_status: 'job_status',
          job_creation_date: Time.now,
          job_completion_date: Time.now,
          entity_details_list: EntityDetailsListType.default(visited),
          is_truncated: false,
          marker: 'marker',
          error: ErrorDetails.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('GetServiceLastAccessedDetailsWithEntitiesResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('GetServiceLastAccessedDetailsWithEntitiesResult')
        xml << Hearth::XML::Node.new('JobStatus', stub[:job_status].to_s) unless stub[:job_status].nil?
        xml << Hearth::XML::Node.new('JobCreationDate', Hearth::TimeHelper.to_date_time(stub[:job_creation_date])) unless stub[:job_creation_date].nil?
        xml << Hearth::XML::Node.new('JobCompletionDate', Hearth::TimeHelper.to_date_time(stub[:job_completion_date])) unless stub[:job_completion_date].nil?
        xml << Hearth::XML::Node.new('EntityDetailsList', EntityDetailsListType.stub('member', stub[:entity_details_list])) unless stub[:entity_details_list].nil?
        xml << Hearth::XML::Node.new('IsTruncated', stub[:is_truncated].to_s) unless stub[:is_truncated].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        xml << ErrorDetails.stub('Error', stub[:error]) unless stub[:error].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for entityDetailsListType
    class EntityDetailsListType
      def self.default(visited=[])
        return nil if visited.include?('EntityDetailsListType')
        visited = visited + ['EntityDetailsListType']
        [
          EntityDetails.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << EntityDetails.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for EntityDetails
    class EntityDetails
      def self.default(visited=[])
        return nil if visited.include?('EntityDetails')
        visited = visited + ['EntityDetails']
        {
          entity_info: EntityInfo.default(visited),
          last_authenticated: Time.now,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::EntityDetails.new
        xml = Hearth::XML::Node.new(node_name)
        xml << EntityInfo.stub('EntityInfo', stub[:entity_info]) unless stub[:entity_info].nil?
        xml << Hearth::XML::Node.new('LastAuthenticated', Hearth::TimeHelper.to_date_time(stub[:last_authenticated])) unless stub[:last_authenticated].nil?
        xml
      end
    end

    # Structure Stubber for EntityInfo
    class EntityInfo
      def self.default(visited=[])
        return nil if visited.include?('EntityInfo')
        visited = visited + ['EntityInfo']
        {
          arn: 'arn',
          name: 'name',
          type: 'type',
          id: 'id',
          path: 'path',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::EntityInfo.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Arn', stub[:arn].to_s) unless stub[:arn].nil?
        xml << Hearth::XML::Node.new('Name', stub[:name].to_s) unless stub[:name].nil?
        xml << Hearth::XML::Node.new('Type', stub[:type].to_s) unless stub[:type].nil?
        xml << Hearth::XML::Node.new('Id', stub[:id].to_s) unless stub[:id].nil?
        xml << Hearth::XML::Node.new('Path', stub[:path].to_s) unless stub[:path].nil?
        xml
      end
    end

    # Operation Stubber for GetServiceLinkedRoleDeletionStatus
    class GetServiceLinkedRoleDeletionStatus
      def self.default(visited=[])
        {
          status: 'status',
          reason: DeletionTaskFailureReasonType.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('GetServiceLinkedRoleDeletionStatusResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('GetServiceLinkedRoleDeletionStatusResult')
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << DeletionTaskFailureReasonType.stub('Reason', stub[:reason]) unless stub[:reason].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for DeletionTaskFailureReasonType
    class DeletionTaskFailureReasonType
      def self.default(visited=[])
        return nil if visited.include?('DeletionTaskFailureReasonType')
        visited = visited + ['DeletionTaskFailureReasonType']
        {
          reason: 'reason',
          role_usage_list: RoleUsageListType.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::DeletionTaskFailureReasonType.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Reason', stub[:reason].to_s) unless stub[:reason].nil?
        xml << Hearth::XML::Node.new('RoleUsageList', RoleUsageListType.stub('member', stub[:role_usage_list])) unless stub[:role_usage_list].nil?
        xml
      end
    end

    # List Stubber for RoleUsageListType
    class RoleUsageListType
      def self.default(visited=[])
        return nil if visited.include?('RoleUsageListType')
        visited = visited + ['RoleUsageListType']
        [
          RoleUsageType.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << RoleUsageType.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for RoleUsageType
    class RoleUsageType
      def self.default(visited=[])
        return nil if visited.include?('RoleUsageType')
        visited = visited + ['RoleUsageType']
        {
          region: 'region',
          resources: ArnListType.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::RoleUsageType.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Region', stub[:region].to_s) unless stub[:region].nil?
        xml << Hearth::XML::Node.new('Resources', ArnListType.stub('member', stub[:resources])) unless stub[:resources].nil?
        xml
      end
    end

    # List Stubber for ArnListType
    class ArnListType
      def self.default(visited=[])
        return nil if visited.include?('ArnListType')
        visited = visited + ['ArnListType']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for GetUser
    class GetUser
      def self.default(visited=[])
        {
          user: User.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('GetUserResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('GetUserResult')
        xml << User.stub('User', stub[:user]) unless stub[:user].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetUserPolicy
    class GetUserPolicy
      def self.default(visited=[])
        {
          user_name: 'user_name',
          policy_name: 'policy_name',
          policy_document: 'policy_document',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('GetUserPolicyResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('GetUserPolicyResult')
        xml << Hearth::XML::Node.new('UserName', stub[:user_name].to_s) unless stub[:user_name].nil?
        xml << Hearth::XML::Node.new('PolicyName', stub[:policy_name].to_s) unless stub[:policy_name].nil?
        xml << Hearth::XML::Node.new('PolicyDocument', stub[:policy_document].to_s) unless stub[:policy_document].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListAccessKeys
    class ListAccessKeys
      def self.default(visited=[])
        {
          access_key_metadata: AccessKeyMetadataListType.default(visited),
          is_truncated: false,
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListAccessKeysResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('ListAccessKeysResult')
        xml << Hearth::XML::Node.new('AccessKeyMetadata', AccessKeyMetadataListType.stub('member', stub[:access_key_metadata])) unless stub[:access_key_metadata].nil?
        xml << Hearth::XML::Node.new('IsTruncated', stub[:is_truncated].to_s) unless stub[:is_truncated].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for accessKeyMetadataListType
    class AccessKeyMetadataListType
      def self.default(visited=[])
        return nil if visited.include?('AccessKeyMetadataListType')
        visited = visited + ['AccessKeyMetadataListType']
        [
          AccessKeyMetadata.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << AccessKeyMetadata.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for AccessKeyMetadata
    class AccessKeyMetadata
      def self.default(visited=[])
        return nil if visited.include?('AccessKeyMetadata')
        visited = visited + ['AccessKeyMetadata']
        {
          user_name: 'user_name',
          access_key_id: 'access_key_id',
          status: 'status',
          create_date: Time.now,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::AccessKeyMetadata.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('UserName', stub[:user_name].to_s) unless stub[:user_name].nil?
        xml << Hearth::XML::Node.new('AccessKeyId', stub[:access_key_id].to_s) unless stub[:access_key_id].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('CreateDate', Hearth::TimeHelper.to_date_time(stub[:create_date])) unless stub[:create_date].nil?
        xml
      end
    end

    # Operation Stubber for ListAccountAliases
    class ListAccountAliases
      def self.default(visited=[])
        {
          account_aliases: AccountAliasListType.default(visited),
          is_truncated: false,
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListAccountAliasesResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('ListAccountAliasesResult')
        xml << Hearth::XML::Node.new('AccountAliases', AccountAliasListType.stub('member', stub[:account_aliases])) unless stub[:account_aliases].nil?
        xml << Hearth::XML::Node.new('IsTruncated', stub[:is_truncated].to_s) unless stub[:is_truncated].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for accountAliasListType
    class AccountAliasListType
      def self.default(visited=[])
        return nil if visited.include?('AccountAliasListType')
        visited = visited + ['AccountAliasListType']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for ListAttachedGroupPolicies
    class ListAttachedGroupPolicies
      def self.default(visited=[])
        {
          attached_policies: AttachedPoliciesListType.default(visited),
          is_truncated: false,
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListAttachedGroupPoliciesResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('ListAttachedGroupPoliciesResult')
        xml << Hearth::XML::Node.new('AttachedPolicies', AttachedPoliciesListType.stub('member', stub[:attached_policies])) unless stub[:attached_policies].nil?
        xml << Hearth::XML::Node.new('IsTruncated', stub[:is_truncated].to_s) unless stub[:is_truncated].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListAttachedRolePolicies
    class ListAttachedRolePolicies
      def self.default(visited=[])
        {
          attached_policies: AttachedPoliciesListType.default(visited),
          is_truncated: false,
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListAttachedRolePoliciesResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('ListAttachedRolePoliciesResult')
        xml << Hearth::XML::Node.new('AttachedPolicies', AttachedPoliciesListType.stub('member', stub[:attached_policies])) unless stub[:attached_policies].nil?
        xml << Hearth::XML::Node.new('IsTruncated', stub[:is_truncated].to_s) unless stub[:is_truncated].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListAttachedUserPolicies
    class ListAttachedUserPolicies
      def self.default(visited=[])
        {
          attached_policies: AttachedPoliciesListType.default(visited),
          is_truncated: false,
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListAttachedUserPoliciesResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('ListAttachedUserPoliciesResult')
        xml << Hearth::XML::Node.new('AttachedPolicies', AttachedPoliciesListType.stub('member', stub[:attached_policies])) unless stub[:attached_policies].nil?
        xml << Hearth::XML::Node.new('IsTruncated', stub[:is_truncated].to_s) unless stub[:is_truncated].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListEntitiesForPolicy
    class ListEntitiesForPolicy
      def self.default(visited=[])
        {
          policy_groups: PolicyGroupListType.default(visited),
          policy_users: PolicyUserListType.default(visited),
          policy_roles: PolicyRoleListType.default(visited),
          is_truncated: false,
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListEntitiesForPolicyResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('ListEntitiesForPolicyResult')
        xml << Hearth::XML::Node.new('PolicyGroups', PolicyGroupListType.stub('member', stub[:policy_groups])) unless stub[:policy_groups].nil?
        xml << Hearth::XML::Node.new('PolicyUsers', PolicyUserListType.stub('member', stub[:policy_users])) unless stub[:policy_users].nil?
        xml << Hearth::XML::Node.new('PolicyRoles', PolicyRoleListType.stub('member', stub[:policy_roles])) unless stub[:policy_roles].nil?
        xml << Hearth::XML::Node.new('IsTruncated', stub[:is_truncated].to_s) unless stub[:is_truncated].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for PolicyRoleListType
    class PolicyRoleListType
      def self.default(visited=[])
        return nil if visited.include?('PolicyRoleListType')
        visited = visited + ['PolicyRoleListType']
        [
          PolicyRole.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << PolicyRole.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for PolicyRole
    class PolicyRole
      def self.default(visited=[])
        return nil if visited.include?('PolicyRole')
        visited = visited + ['PolicyRole']
        {
          role_name: 'role_name',
          role_id: 'role_id',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::PolicyRole.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('RoleName', stub[:role_name].to_s) unless stub[:role_name].nil?
        xml << Hearth::XML::Node.new('RoleId', stub[:role_id].to_s) unless stub[:role_id].nil?
        xml
      end
    end

    # List Stubber for PolicyUserListType
    class PolicyUserListType
      def self.default(visited=[])
        return nil if visited.include?('PolicyUserListType')
        visited = visited + ['PolicyUserListType']
        [
          PolicyUser.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << PolicyUser.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for PolicyUser
    class PolicyUser
      def self.default(visited=[])
        return nil if visited.include?('PolicyUser')
        visited = visited + ['PolicyUser']
        {
          user_name: 'user_name',
          user_id: 'user_id',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::PolicyUser.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('UserName', stub[:user_name].to_s) unless stub[:user_name].nil?
        xml << Hearth::XML::Node.new('UserId', stub[:user_id].to_s) unless stub[:user_id].nil?
        xml
      end
    end

    # List Stubber for PolicyGroupListType
    class PolicyGroupListType
      def self.default(visited=[])
        return nil if visited.include?('PolicyGroupListType')
        visited = visited + ['PolicyGroupListType']
        [
          PolicyGroup.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << PolicyGroup.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for PolicyGroup
    class PolicyGroup
      def self.default(visited=[])
        return nil if visited.include?('PolicyGroup')
        visited = visited + ['PolicyGroup']
        {
          group_name: 'group_name',
          group_id: 'group_id',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::PolicyGroup.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('GroupName', stub[:group_name].to_s) unless stub[:group_name].nil?
        xml << Hearth::XML::Node.new('GroupId', stub[:group_id].to_s) unless stub[:group_id].nil?
        xml
      end
    end

    # Operation Stubber for ListGroupPolicies
    class ListGroupPolicies
      def self.default(visited=[])
        {
          policy_names: PolicyNameListType.default(visited),
          is_truncated: false,
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListGroupPoliciesResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('ListGroupPoliciesResult')
        xml << Hearth::XML::Node.new('PolicyNames', PolicyNameListType.stub('member', stub[:policy_names])) unless stub[:policy_names].nil?
        xml << Hearth::XML::Node.new('IsTruncated', stub[:is_truncated].to_s) unless stub[:is_truncated].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for policyNameListType
    class PolicyNameListType
      def self.default(visited=[])
        return nil if visited.include?('PolicyNameListType')
        visited = visited + ['PolicyNameListType']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for ListGroups
    class ListGroups
      def self.default(visited=[])
        {
          groups: GroupListType.default(visited),
          is_truncated: false,
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListGroupsResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('ListGroupsResult')
        xml << Hearth::XML::Node.new('Groups', GroupListType.stub('member', stub[:groups])) unless stub[:groups].nil?
        xml << Hearth::XML::Node.new('IsTruncated', stub[:is_truncated].to_s) unless stub[:is_truncated].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for groupListType
    class GroupListType
      def self.default(visited=[])
        return nil if visited.include?('GroupListType')
        visited = visited + ['GroupListType']
        [
          Group.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Group.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for ListGroupsForUser
    class ListGroupsForUser
      def self.default(visited=[])
        {
          groups: GroupListType.default(visited),
          is_truncated: false,
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListGroupsForUserResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('ListGroupsForUserResult')
        xml << Hearth::XML::Node.new('Groups', GroupListType.stub('member', stub[:groups])) unless stub[:groups].nil?
        xml << Hearth::XML::Node.new('IsTruncated', stub[:is_truncated].to_s) unless stub[:is_truncated].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListInstanceProfileTags
    class ListInstanceProfileTags
      def self.default(visited=[])
        {
          tags: TagListType.default(visited),
          is_truncated: false,
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListInstanceProfileTagsResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('ListInstanceProfileTagsResult')
        xml << Hearth::XML::Node.new('Tags', TagListType.stub('member', stub[:tags])) unless stub[:tags].nil?
        xml << Hearth::XML::Node.new('IsTruncated', stub[:is_truncated].to_s) unless stub[:is_truncated].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListInstanceProfiles
    class ListInstanceProfiles
      def self.default(visited=[])
        {
          instance_profiles: InstanceProfileListType.default(visited),
          is_truncated: false,
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListInstanceProfilesResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('ListInstanceProfilesResult')
        xml << Hearth::XML::Node.new('InstanceProfiles', InstanceProfileListType.stub('member', stub[:instance_profiles])) unless stub[:instance_profiles].nil?
        xml << Hearth::XML::Node.new('IsTruncated', stub[:is_truncated].to_s) unless stub[:is_truncated].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListInstanceProfilesForRole
    class ListInstanceProfilesForRole
      def self.default(visited=[])
        {
          instance_profiles: InstanceProfileListType.default(visited),
          is_truncated: false,
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListInstanceProfilesForRoleResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('ListInstanceProfilesForRoleResult')
        xml << Hearth::XML::Node.new('InstanceProfiles', InstanceProfileListType.stub('member', stub[:instance_profiles])) unless stub[:instance_profiles].nil?
        xml << Hearth::XML::Node.new('IsTruncated', stub[:is_truncated].to_s) unless stub[:is_truncated].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListMFADeviceTags
    class ListMFADeviceTags
      def self.default(visited=[])
        {
          tags: TagListType.default(visited),
          is_truncated: false,
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListMFADeviceTagsResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('ListMFADeviceTagsResult')
        xml << Hearth::XML::Node.new('Tags', TagListType.stub('member', stub[:tags])) unless stub[:tags].nil?
        xml << Hearth::XML::Node.new('IsTruncated', stub[:is_truncated].to_s) unless stub[:is_truncated].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListMFADevices
    class ListMFADevices
      def self.default(visited=[])
        {
          mfa_devices: MfaDeviceListType.default(visited),
          is_truncated: false,
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListMFADevicesResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('ListMFADevicesResult')
        xml << Hearth::XML::Node.new('MFADevices', MfaDeviceListType.stub('member', stub[:mfa_devices])) unless stub[:mfa_devices].nil?
        xml << Hearth::XML::Node.new('IsTruncated', stub[:is_truncated].to_s) unless stub[:is_truncated].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for mfaDeviceListType
    class MfaDeviceListType
      def self.default(visited=[])
        return nil if visited.include?('MfaDeviceListType')
        visited = visited + ['MfaDeviceListType']
        [
          MFADevice.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << MFADevice.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for MFADevice
    class MFADevice
      def self.default(visited=[])
        return nil if visited.include?('MFADevice')
        visited = visited + ['MFADevice']
        {
          user_name: 'user_name',
          serial_number: 'serial_number',
          enable_date: Time.now,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::MFADevice.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('UserName', stub[:user_name].to_s) unless stub[:user_name].nil?
        xml << Hearth::XML::Node.new('SerialNumber', stub[:serial_number].to_s) unless stub[:serial_number].nil?
        xml << Hearth::XML::Node.new('EnableDate', Hearth::TimeHelper.to_date_time(stub[:enable_date])) unless stub[:enable_date].nil?
        xml
      end
    end

    # Operation Stubber for ListOpenIDConnectProviderTags
    class ListOpenIDConnectProviderTags
      def self.default(visited=[])
        {
          tags: TagListType.default(visited),
          is_truncated: false,
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListOpenIDConnectProviderTagsResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('ListOpenIDConnectProviderTagsResult')
        xml << Hearth::XML::Node.new('Tags', TagListType.stub('member', stub[:tags])) unless stub[:tags].nil?
        xml << Hearth::XML::Node.new('IsTruncated', stub[:is_truncated].to_s) unless stub[:is_truncated].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListOpenIDConnectProviders
    class ListOpenIDConnectProviders
      def self.default(visited=[])
        {
          open_id_connect_provider_list: OpenIDConnectProviderListType.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListOpenIDConnectProvidersResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('ListOpenIDConnectProvidersResult')
        xml << Hearth::XML::Node.new('OpenIDConnectProviderList', OpenIDConnectProviderListType.stub('member', stub[:open_id_connect_provider_list])) unless stub[:open_id_connect_provider_list].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for OpenIDConnectProviderListType
    class OpenIDConnectProviderListType
      def self.default(visited=[])
        return nil if visited.include?('OpenIDConnectProviderListType')
        visited = visited + ['OpenIDConnectProviderListType']
        [
          OpenIDConnectProviderListEntry.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << OpenIDConnectProviderListEntry.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for OpenIDConnectProviderListEntry
    class OpenIDConnectProviderListEntry
      def self.default(visited=[])
        return nil if visited.include?('OpenIDConnectProviderListEntry')
        visited = visited + ['OpenIDConnectProviderListEntry']
        {
          arn: 'arn',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::OpenIDConnectProviderListEntry.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Arn', stub[:arn].to_s) unless stub[:arn].nil?
        xml
      end
    end

    # Operation Stubber for ListPolicies
    class ListPolicies
      def self.default(visited=[])
        {
          policies: PolicyListType.default(visited),
          is_truncated: false,
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListPoliciesResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('ListPoliciesResult')
        xml << Hearth::XML::Node.new('Policies', PolicyListType.stub('member', stub[:policies])) unless stub[:policies].nil?
        xml << Hearth::XML::Node.new('IsTruncated', stub[:is_truncated].to_s) unless stub[:is_truncated].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for policyListType
    class PolicyListType
      def self.default(visited=[])
        return nil if visited.include?('PolicyListType')
        visited = visited + ['PolicyListType']
        [
          Policy.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Policy.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for ListPoliciesGrantingServiceAccess
    class ListPoliciesGrantingServiceAccess
      def self.default(visited=[])
        {
          policies_granting_service_access: ListPolicyGrantingServiceAccessResponseListType.default(visited),
          is_truncated: false,
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListPoliciesGrantingServiceAccessResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('ListPoliciesGrantingServiceAccessResult')
        xml << Hearth::XML::Node.new('PoliciesGrantingServiceAccess', ListPolicyGrantingServiceAccessResponseListType.stub('member', stub[:policies_granting_service_access])) unless stub[:policies_granting_service_access].nil?
        xml << Hearth::XML::Node.new('IsTruncated', stub[:is_truncated].to_s) unless stub[:is_truncated].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for listPolicyGrantingServiceAccessResponseListType
    class ListPolicyGrantingServiceAccessResponseListType
      def self.default(visited=[])
        return nil if visited.include?('ListPolicyGrantingServiceAccessResponseListType')
        visited = visited + ['ListPolicyGrantingServiceAccessResponseListType']
        [
          ListPoliciesGrantingServiceAccessEntry.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << ListPoliciesGrantingServiceAccessEntry.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for ListPoliciesGrantingServiceAccessEntry
    class ListPoliciesGrantingServiceAccessEntry
      def self.default(visited=[])
        return nil if visited.include?('ListPoliciesGrantingServiceAccessEntry')
        visited = visited + ['ListPoliciesGrantingServiceAccessEntry']
        {
          service_namespace: 'service_namespace',
          policies: PolicyGrantingServiceAccessListType.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ListPoliciesGrantingServiceAccessEntry.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ServiceNamespace', stub[:service_namespace].to_s) unless stub[:service_namespace].nil?
        xml << Hearth::XML::Node.new('Policies', PolicyGrantingServiceAccessListType.stub('member', stub[:policies])) unless stub[:policies].nil?
        xml
      end
    end

    # List Stubber for policyGrantingServiceAccessListType
    class PolicyGrantingServiceAccessListType
      def self.default(visited=[])
        return nil if visited.include?('PolicyGrantingServiceAccessListType')
        visited = visited + ['PolicyGrantingServiceAccessListType']
        [
          PolicyGrantingServiceAccess.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << PolicyGrantingServiceAccess.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for PolicyGrantingServiceAccess
    class PolicyGrantingServiceAccess
      def self.default(visited=[])
        return nil if visited.include?('PolicyGrantingServiceAccess')
        visited = visited + ['PolicyGrantingServiceAccess']
        {
          policy_name: 'policy_name',
          policy_type: 'policy_type',
          policy_arn: 'policy_arn',
          entity_type: 'entity_type',
          entity_name: 'entity_name',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::PolicyGrantingServiceAccess.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('PolicyName', stub[:policy_name].to_s) unless stub[:policy_name].nil?
        xml << Hearth::XML::Node.new('PolicyType', stub[:policy_type].to_s) unless stub[:policy_type].nil?
        xml << Hearth::XML::Node.new('PolicyArn', stub[:policy_arn].to_s) unless stub[:policy_arn].nil?
        xml << Hearth::XML::Node.new('EntityType', stub[:entity_type].to_s) unless stub[:entity_type].nil?
        xml << Hearth::XML::Node.new('EntityName', stub[:entity_name].to_s) unless stub[:entity_name].nil?
        xml
      end
    end

    # Operation Stubber for ListPolicyTags
    class ListPolicyTags
      def self.default(visited=[])
        {
          tags: TagListType.default(visited),
          is_truncated: false,
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListPolicyTagsResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('ListPolicyTagsResult')
        xml << Hearth::XML::Node.new('Tags', TagListType.stub('member', stub[:tags])) unless stub[:tags].nil?
        xml << Hearth::XML::Node.new('IsTruncated', stub[:is_truncated].to_s) unless stub[:is_truncated].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListPolicyVersions
    class ListPolicyVersions
      def self.default(visited=[])
        {
          versions: PolicyDocumentVersionListType.default(visited),
          is_truncated: false,
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListPolicyVersionsResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('ListPolicyVersionsResult')
        xml << Hearth::XML::Node.new('Versions', PolicyDocumentVersionListType.stub('member', stub[:versions])) unless stub[:versions].nil?
        xml << Hearth::XML::Node.new('IsTruncated', stub[:is_truncated].to_s) unless stub[:is_truncated].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListRolePolicies
    class ListRolePolicies
      def self.default(visited=[])
        {
          policy_names: PolicyNameListType.default(visited),
          is_truncated: false,
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListRolePoliciesResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('ListRolePoliciesResult')
        xml << Hearth::XML::Node.new('PolicyNames', PolicyNameListType.stub('member', stub[:policy_names])) unless stub[:policy_names].nil?
        xml << Hearth::XML::Node.new('IsTruncated', stub[:is_truncated].to_s) unless stub[:is_truncated].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListRoleTags
    class ListRoleTags
      def self.default(visited=[])
        {
          tags: TagListType.default(visited),
          is_truncated: false,
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListRoleTagsResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('ListRoleTagsResult')
        xml << Hearth::XML::Node.new('Tags', TagListType.stub('member', stub[:tags])) unless stub[:tags].nil?
        xml << Hearth::XML::Node.new('IsTruncated', stub[:is_truncated].to_s) unless stub[:is_truncated].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListRoles
    class ListRoles
      def self.default(visited=[])
        {
          roles: RoleListType.default(visited),
          is_truncated: false,
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListRolesResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('ListRolesResult')
        xml << Hearth::XML::Node.new('Roles', RoleListType.stub('member', stub[:roles])) unless stub[:roles].nil?
        xml << Hearth::XML::Node.new('IsTruncated', stub[:is_truncated].to_s) unless stub[:is_truncated].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListSAMLProviderTags
    class ListSAMLProviderTags
      def self.default(visited=[])
        {
          tags: TagListType.default(visited),
          is_truncated: false,
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListSAMLProviderTagsResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('ListSAMLProviderTagsResult')
        xml << Hearth::XML::Node.new('Tags', TagListType.stub('member', stub[:tags])) unless stub[:tags].nil?
        xml << Hearth::XML::Node.new('IsTruncated', stub[:is_truncated].to_s) unless stub[:is_truncated].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListSAMLProviders
    class ListSAMLProviders
      def self.default(visited=[])
        {
          saml_provider_list: SAMLProviderListType.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListSAMLProvidersResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('ListSAMLProvidersResult')
        xml << Hearth::XML::Node.new('SAMLProviderList', SAMLProviderListType.stub('member', stub[:saml_provider_list])) unless stub[:saml_provider_list].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for SAMLProviderListType
    class SAMLProviderListType
      def self.default(visited=[])
        return nil if visited.include?('SAMLProviderListType')
        visited = visited + ['SAMLProviderListType']
        [
          SAMLProviderListEntry.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << SAMLProviderListEntry.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for SAMLProviderListEntry
    class SAMLProviderListEntry
      def self.default(visited=[])
        return nil if visited.include?('SAMLProviderListEntry')
        visited = visited + ['SAMLProviderListEntry']
        {
          arn: 'arn',
          valid_until: Time.now,
          create_date: Time.now,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::SAMLProviderListEntry.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Arn', stub[:arn].to_s) unless stub[:arn].nil?
        xml << Hearth::XML::Node.new('ValidUntil', Hearth::TimeHelper.to_date_time(stub[:valid_until])) unless stub[:valid_until].nil?
        xml << Hearth::XML::Node.new('CreateDate', Hearth::TimeHelper.to_date_time(stub[:create_date])) unless stub[:create_date].nil?
        xml
      end
    end

    # Operation Stubber for ListSSHPublicKeys
    class ListSSHPublicKeys
      def self.default(visited=[])
        {
          ssh_public_keys: SSHPublicKeyListType.default(visited),
          is_truncated: false,
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListSSHPublicKeysResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('ListSSHPublicKeysResult')
        xml << Hearth::XML::Node.new('SSHPublicKeys', SSHPublicKeyListType.stub('member', stub[:ssh_public_keys])) unless stub[:ssh_public_keys].nil?
        xml << Hearth::XML::Node.new('IsTruncated', stub[:is_truncated].to_s) unless stub[:is_truncated].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for SSHPublicKeyListType
    class SSHPublicKeyListType
      def self.default(visited=[])
        return nil if visited.include?('SSHPublicKeyListType')
        visited = visited + ['SSHPublicKeyListType']
        [
          SSHPublicKeyMetadata.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << SSHPublicKeyMetadata.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for SSHPublicKeyMetadata
    class SSHPublicKeyMetadata
      def self.default(visited=[])
        return nil if visited.include?('SSHPublicKeyMetadata')
        visited = visited + ['SSHPublicKeyMetadata']
        {
          user_name: 'user_name',
          ssh_public_key_id: 'ssh_public_key_id',
          status: 'status',
          upload_date: Time.now,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::SSHPublicKeyMetadata.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('UserName', stub[:user_name].to_s) unless stub[:user_name].nil?
        xml << Hearth::XML::Node.new('SSHPublicKeyId', stub[:ssh_public_key_id].to_s) unless stub[:ssh_public_key_id].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('UploadDate', Hearth::TimeHelper.to_date_time(stub[:upload_date])) unless stub[:upload_date].nil?
        xml
      end
    end

    # Operation Stubber for ListServerCertificateTags
    class ListServerCertificateTags
      def self.default(visited=[])
        {
          tags: TagListType.default(visited),
          is_truncated: false,
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListServerCertificateTagsResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('ListServerCertificateTagsResult')
        xml << Hearth::XML::Node.new('Tags', TagListType.stub('member', stub[:tags])) unless stub[:tags].nil?
        xml << Hearth::XML::Node.new('IsTruncated', stub[:is_truncated].to_s) unless stub[:is_truncated].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListServerCertificates
    class ListServerCertificates
      def self.default(visited=[])
        {
          server_certificate_metadata_list: ServerCertificateMetadataListType.default(visited),
          is_truncated: false,
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListServerCertificatesResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('ListServerCertificatesResult')
        xml << Hearth::XML::Node.new('ServerCertificateMetadataList', ServerCertificateMetadataListType.stub('member', stub[:server_certificate_metadata_list])) unless stub[:server_certificate_metadata_list].nil?
        xml << Hearth::XML::Node.new('IsTruncated', stub[:is_truncated].to_s) unless stub[:is_truncated].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for serverCertificateMetadataListType
    class ServerCertificateMetadataListType
      def self.default(visited=[])
        return nil if visited.include?('ServerCertificateMetadataListType')
        visited = visited + ['ServerCertificateMetadataListType']
        [
          ServerCertificateMetadata.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << ServerCertificateMetadata.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for ListServiceSpecificCredentials
    class ListServiceSpecificCredentials
      def self.default(visited=[])
        {
          service_specific_credentials: ServiceSpecificCredentialsListType.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListServiceSpecificCredentialsResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('ListServiceSpecificCredentialsResult')
        xml << Hearth::XML::Node.new('ServiceSpecificCredentials', ServiceSpecificCredentialsListType.stub('member', stub[:service_specific_credentials])) unless stub[:service_specific_credentials].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for ServiceSpecificCredentialsListType
    class ServiceSpecificCredentialsListType
      def self.default(visited=[])
        return nil if visited.include?('ServiceSpecificCredentialsListType')
        visited = visited + ['ServiceSpecificCredentialsListType']
        [
          ServiceSpecificCredentialMetadata.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << ServiceSpecificCredentialMetadata.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for ServiceSpecificCredentialMetadata
    class ServiceSpecificCredentialMetadata
      def self.default(visited=[])
        return nil if visited.include?('ServiceSpecificCredentialMetadata')
        visited = visited + ['ServiceSpecificCredentialMetadata']
        {
          user_name: 'user_name',
          status: 'status',
          service_user_name: 'service_user_name',
          create_date: Time.now,
          service_specific_credential_id: 'service_specific_credential_id',
          service_name: 'service_name',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ServiceSpecificCredentialMetadata.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('UserName', stub[:user_name].to_s) unless stub[:user_name].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('ServiceUserName', stub[:service_user_name].to_s) unless stub[:service_user_name].nil?
        xml << Hearth::XML::Node.new('CreateDate', Hearth::TimeHelper.to_date_time(stub[:create_date])) unless stub[:create_date].nil?
        xml << Hearth::XML::Node.new('ServiceSpecificCredentialId', stub[:service_specific_credential_id].to_s) unless stub[:service_specific_credential_id].nil?
        xml << Hearth::XML::Node.new('ServiceName', stub[:service_name].to_s) unless stub[:service_name].nil?
        xml
      end
    end

    # Operation Stubber for ListSigningCertificates
    class ListSigningCertificates
      def self.default(visited=[])
        {
          certificates: CertificateListType.default(visited),
          is_truncated: false,
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListSigningCertificatesResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('ListSigningCertificatesResult')
        xml << Hearth::XML::Node.new('Certificates', CertificateListType.stub('member', stub[:certificates])) unless stub[:certificates].nil?
        xml << Hearth::XML::Node.new('IsTruncated', stub[:is_truncated].to_s) unless stub[:is_truncated].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for certificateListType
    class CertificateListType
      def self.default(visited=[])
        return nil if visited.include?('CertificateListType')
        visited = visited + ['CertificateListType']
        [
          SigningCertificate.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << SigningCertificate.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for SigningCertificate
    class SigningCertificate
      def self.default(visited=[])
        return nil if visited.include?('SigningCertificate')
        visited = visited + ['SigningCertificate']
        {
          user_name: 'user_name',
          certificate_id: 'certificate_id',
          certificate_body: 'certificate_body',
          status: 'status',
          upload_date: Time.now,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::SigningCertificate.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('UserName', stub[:user_name].to_s) unless stub[:user_name].nil?
        xml << Hearth::XML::Node.new('CertificateId', stub[:certificate_id].to_s) unless stub[:certificate_id].nil?
        xml << Hearth::XML::Node.new('CertificateBody', stub[:certificate_body].to_s) unless stub[:certificate_body].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('UploadDate', Hearth::TimeHelper.to_date_time(stub[:upload_date])) unless stub[:upload_date].nil?
        xml
      end
    end

    # Operation Stubber for ListUserPolicies
    class ListUserPolicies
      def self.default(visited=[])
        {
          policy_names: PolicyNameListType.default(visited),
          is_truncated: false,
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListUserPoliciesResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('ListUserPoliciesResult')
        xml << Hearth::XML::Node.new('PolicyNames', PolicyNameListType.stub('member', stub[:policy_names])) unless stub[:policy_names].nil?
        xml << Hearth::XML::Node.new('IsTruncated', stub[:is_truncated].to_s) unless stub[:is_truncated].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListUserTags
    class ListUserTags
      def self.default(visited=[])
        {
          tags: TagListType.default(visited),
          is_truncated: false,
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListUserTagsResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('ListUserTagsResult')
        xml << Hearth::XML::Node.new('Tags', TagListType.stub('member', stub[:tags])) unless stub[:tags].nil?
        xml << Hearth::XML::Node.new('IsTruncated', stub[:is_truncated].to_s) unless stub[:is_truncated].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListUsers
    class ListUsers
      def self.default(visited=[])
        {
          users: UserListType.default(visited),
          is_truncated: false,
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListUsersResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('ListUsersResult')
        xml << Hearth::XML::Node.new('Users', UserListType.stub('member', stub[:users])) unless stub[:users].nil?
        xml << Hearth::XML::Node.new('IsTruncated', stub[:is_truncated].to_s) unless stub[:is_truncated].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListVirtualMFADevices
    class ListVirtualMFADevices
      def self.default(visited=[])
        {
          virtual_mfa_devices: VirtualMFADeviceListType.default(visited),
          is_truncated: false,
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListVirtualMFADevicesResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('ListVirtualMFADevicesResult')
        xml << Hearth::XML::Node.new('VirtualMFADevices', VirtualMFADeviceListType.stub('member', stub[:virtual_mfa_devices])) unless stub[:virtual_mfa_devices].nil?
        xml << Hearth::XML::Node.new('IsTruncated', stub[:is_truncated].to_s) unless stub[:is_truncated].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for virtualMFADeviceListType
    class VirtualMFADeviceListType
      def self.default(visited=[])
        return nil if visited.include?('VirtualMFADeviceListType')
        visited = visited + ['VirtualMFADeviceListType']
        [
          VirtualMFADevice.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << VirtualMFADevice.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for PutGroupPolicy
    class PutGroupPolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('PutGroupPolicyResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('PutGroupPolicyResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutRolePermissionsBoundary
    class PutRolePermissionsBoundary
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('PutRolePermissionsBoundaryResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('PutRolePermissionsBoundaryResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutRolePolicy
    class PutRolePolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('PutRolePolicyResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('PutRolePolicyResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutUserPermissionsBoundary
    class PutUserPermissionsBoundary
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('PutUserPermissionsBoundaryResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('PutUserPermissionsBoundaryResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutUserPolicy
    class PutUserPolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('PutUserPolicyResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('PutUserPolicyResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for RemoveClientIDFromOpenIDConnectProvider
    class RemoveClientIDFromOpenIDConnectProvider
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('RemoveClientIDFromOpenIDConnectProviderResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('RemoveClientIDFromOpenIDConnectProviderResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for RemoveRoleFromInstanceProfile
    class RemoveRoleFromInstanceProfile
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('RemoveRoleFromInstanceProfileResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('RemoveRoleFromInstanceProfileResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for RemoveUserFromGroup
    class RemoveUserFromGroup
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('RemoveUserFromGroupResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('RemoveUserFromGroupResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ResetServiceSpecificCredential
    class ResetServiceSpecificCredential
      def self.default(visited=[])
        {
          service_specific_credential: ServiceSpecificCredential.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ResetServiceSpecificCredentialResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('ResetServiceSpecificCredentialResult')
        xml << ServiceSpecificCredential.stub('ServiceSpecificCredential', stub[:service_specific_credential]) unless stub[:service_specific_credential].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ResyncMFADevice
    class ResyncMFADevice
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ResyncMFADeviceResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('ResyncMFADeviceResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for SetDefaultPolicyVersion
    class SetDefaultPolicyVersion
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('SetDefaultPolicyVersionResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('SetDefaultPolicyVersionResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for SetSecurityTokenServicePreferences
    class SetSecurityTokenServicePreferences
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('SetSecurityTokenServicePreferencesResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('SetSecurityTokenServicePreferencesResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for SimulateCustomPolicy
    class SimulateCustomPolicy
      def self.default(visited=[])
        {
          evaluation_results: EvaluationResultsListType.default(visited),
          is_truncated: false,
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('SimulateCustomPolicyResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('SimulateCustomPolicyResult')
        xml << Hearth::XML::Node.new('EvaluationResults', EvaluationResultsListType.stub('member', stub[:evaluation_results])) unless stub[:evaluation_results].nil?
        xml << Hearth::XML::Node.new('IsTruncated', stub[:is_truncated].to_s) unless stub[:is_truncated].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for EvaluationResultsListType
    class EvaluationResultsListType
      def self.default(visited=[])
        return nil if visited.include?('EvaluationResultsListType')
        visited = visited + ['EvaluationResultsListType']
        [
          EvaluationResult.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << EvaluationResult.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for EvaluationResult
    class EvaluationResult
      def self.default(visited=[])
        return nil if visited.include?('EvaluationResult')
        visited = visited + ['EvaluationResult']
        {
          eval_action_name: 'eval_action_name',
          eval_resource_name: 'eval_resource_name',
          eval_decision: 'eval_decision',
          matched_statements: StatementListType.default(visited),
          missing_context_values: ContextKeyNamesResultListType.default(visited),
          organizations_decision_detail: OrganizationsDecisionDetail.default(visited),
          permissions_boundary_decision_detail: PermissionsBoundaryDecisionDetail.default(visited),
          eval_decision_details: EvalDecisionDetailsType.default(visited),
          resource_specific_results: ResourceSpecificResultListType.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::EvaluationResult.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('EvalActionName', stub[:eval_action_name].to_s) unless stub[:eval_action_name].nil?
        xml << Hearth::XML::Node.new('EvalResourceName', stub[:eval_resource_name].to_s) unless stub[:eval_resource_name].nil?
        xml << Hearth::XML::Node.new('EvalDecision', stub[:eval_decision].to_s) unless stub[:eval_decision].nil?
        xml << Hearth::XML::Node.new('MatchedStatements', StatementListType.stub('member', stub[:matched_statements])) unless stub[:matched_statements].nil?
        xml << Hearth::XML::Node.new('MissingContextValues', ContextKeyNamesResultListType.stub('member', stub[:missing_context_values])) unless stub[:missing_context_values].nil?
        xml << OrganizationsDecisionDetail.stub('OrganizationsDecisionDetail', stub[:organizations_decision_detail]) unless stub[:organizations_decision_detail].nil?
        xml << PermissionsBoundaryDecisionDetail.stub('PermissionsBoundaryDecisionDetail', stub[:permissions_boundary_decision_detail]) unless stub[:permissions_boundary_decision_detail].nil?
        xml << Hearth::XML::Node.new('EvalDecisionDetails', EvalDecisionDetailsType.stub('entry', stub[:eval_decision_details])) unless stub[:eval_decision_details].nil?
        xml << Hearth::XML::Node.new('ResourceSpecificResults', ResourceSpecificResultListType.stub('member', stub[:resource_specific_results])) unless stub[:resource_specific_results].nil?
        xml
      end
    end

    # List Stubber for ResourceSpecificResultListType
    class ResourceSpecificResultListType
      def self.default(visited=[])
        return nil if visited.include?('ResourceSpecificResultListType')
        visited = visited + ['ResourceSpecificResultListType']
        [
          ResourceSpecificResult.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << ResourceSpecificResult.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for ResourceSpecificResult
    class ResourceSpecificResult
      def self.default(visited=[])
        return nil if visited.include?('ResourceSpecificResult')
        visited = visited + ['ResourceSpecificResult']
        {
          eval_resource_name: 'eval_resource_name',
          eval_resource_decision: 'eval_resource_decision',
          matched_statements: StatementListType.default(visited),
          missing_context_values: ContextKeyNamesResultListType.default(visited),
          eval_decision_details: EvalDecisionDetailsType.default(visited),
          permissions_boundary_decision_detail: PermissionsBoundaryDecisionDetail.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ResourceSpecificResult.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('EvalResourceName', stub[:eval_resource_name].to_s) unless stub[:eval_resource_name].nil?
        xml << Hearth::XML::Node.new('EvalResourceDecision', stub[:eval_resource_decision].to_s) unless stub[:eval_resource_decision].nil?
        xml << Hearth::XML::Node.new('MatchedStatements', StatementListType.stub('member', stub[:matched_statements])) unless stub[:matched_statements].nil?
        xml << Hearth::XML::Node.new('MissingContextValues', ContextKeyNamesResultListType.stub('member', stub[:missing_context_values])) unless stub[:missing_context_values].nil?
        xml << Hearth::XML::Node.new('EvalDecisionDetails', EvalDecisionDetailsType.stub('entry', stub[:eval_decision_details])) unless stub[:eval_decision_details].nil?
        xml << PermissionsBoundaryDecisionDetail.stub('PermissionsBoundaryDecisionDetail', stub[:permissions_boundary_decision_detail]) unless stub[:permissions_boundary_decision_detail].nil?
        xml
      end
    end

    # Structure Stubber for PermissionsBoundaryDecisionDetail
    class PermissionsBoundaryDecisionDetail
      def self.default(visited=[])
        return nil if visited.include?('PermissionsBoundaryDecisionDetail')
        visited = visited + ['PermissionsBoundaryDecisionDetail']
        {
          allowed_by_permissions_boundary: false,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::PermissionsBoundaryDecisionDetail.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('AllowedByPermissionsBoundary', stub[:allowed_by_permissions_boundary].to_s) unless stub[:allowed_by_permissions_boundary].nil?
        xml
      end
    end

    # Map Stubber for EvalDecisionDetailsType
    class EvalDecisionDetailsType
      def self.default(visited=[])
        return nil if visited.include?('EvalDecisionDetailsType')
        visited = visited + ['EvalDecisionDetailsType']
        {
          test_key: 'value'
        }
      end

      def self.stub(node_name, stub)
        nodes = []
        stub.each do |key, value|
          xml = Hearth::XML::Node.new(node_name)
          xml << Hearth::XML::Node.new('key', key.to_s) unless key.nil?
          xml << Hearth::XML::Node.new('value', value.to_s) unless value.nil?
          nodes << xml
        end
        nodes
      end
    end

    # List Stubber for StatementListType
    class StatementListType
      def self.default(visited=[])
        return nil if visited.include?('StatementListType')
        visited = visited + ['StatementListType']
        [
          Statement.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Statement.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for Statement
    class Statement
      def self.default(visited=[])
        return nil if visited.include?('Statement')
        visited = visited + ['Statement']
        {
          source_policy_id: 'source_policy_id',
          source_policy_type: 'source_policy_type',
          start_position: Position.default(visited),
          end_position: Position.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Statement.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('SourcePolicyId', stub[:source_policy_id].to_s) unless stub[:source_policy_id].nil?
        xml << Hearth::XML::Node.new('SourcePolicyType', stub[:source_policy_type].to_s) unless stub[:source_policy_type].nil?
        xml << Position.stub('StartPosition', stub[:start_position]) unless stub[:start_position].nil?
        xml << Position.stub('EndPosition', stub[:end_position]) unless stub[:end_position].nil?
        xml
      end
    end

    # Structure Stubber for Position
    class Position
      def self.default(visited=[])
        return nil if visited.include?('Position')
        visited = visited + ['Position']
        {
          line: 1,
          column: 1,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Position.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Line', stub[:line].to_s) unless stub[:line].nil?
        xml << Hearth::XML::Node.new('Column', stub[:column].to_s) unless stub[:column].nil?
        xml
      end
    end

    # Structure Stubber for OrganizationsDecisionDetail
    class OrganizationsDecisionDetail
      def self.default(visited=[])
        return nil if visited.include?('OrganizationsDecisionDetail')
        visited = visited + ['OrganizationsDecisionDetail']
        {
          allowed_by_organizations: false,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::OrganizationsDecisionDetail.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('AllowedByOrganizations', stub[:allowed_by_organizations].to_s) unless stub[:allowed_by_organizations].nil?
        xml
      end
    end

    # Operation Stubber for SimulatePrincipalPolicy
    class SimulatePrincipalPolicy
      def self.default(visited=[])
        {
          evaluation_results: EvaluationResultsListType.default(visited),
          is_truncated: false,
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('SimulatePrincipalPolicyResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('SimulatePrincipalPolicyResult')
        xml << Hearth::XML::Node.new('EvaluationResults', EvaluationResultsListType.stub('member', stub[:evaluation_results])) unless stub[:evaluation_results].nil?
        xml << Hearth::XML::Node.new('IsTruncated', stub[:is_truncated].to_s) unless stub[:is_truncated].nil?
        xml << Hearth::XML::Node.new('Marker', stub[:marker].to_s) unless stub[:marker].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for TagInstanceProfile
    class TagInstanceProfile
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('TagInstanceProfileResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('TagInstanceProfileResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for TagMFADevice
    class TagMFADevice
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('TagMFADeviceResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('TagMFADeviceResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for TagOpenIDConnectProvider
    class TagOpenIDConnectProvider
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('TagOpenIDConnectProviderResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('TagOpenIDConnectProviderResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for TagPolicy
    class TagPolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('TagPolicyResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('TagPolicyResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for TagRole
    class TagRole
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('TagRoleResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('TagRoleResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for TagSAMLProvider
    class TagSAMLProvider
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('TagSAMLProviderResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('TagSAMLProviderResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for TagServerCertificate
    class TagServerCertificate
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('TagServerCertificateResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('TagServerCertificateResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for TagUser
    class TagUser
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('TagUserResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('TagUserResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for UntagInstanceProfile
    class UntagInstanceProfile
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('UntagInstanceProfileResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('UntagInstanceProfileResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for UntagMFADevice
    class UntagMFADevice
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('UntagMFADeviceResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('UntagMFADeviceResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for UntagOpenIDConnectProvider
    class UntagOpenIDConnectProvider
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('UntagOpenIDConnectProviderResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('UntagOpenIDConnectProviderResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for UntagPolicy
    class UntagPolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('UntagPolicyResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('UntagPolicyResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for UntagRole
    class UntagRole
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('UntagRoleResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('UntagRoleResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for UntagSAMLProvider
    class UntagSAMLProvider
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('UntagSAMLProviderResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('UntagSAMLProviderResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for UntagServerCertificate
    class UntagServerCertificate
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('UntagServerCertificateResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('UntagServerCertificateResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for UntagUser
    class UntagUser
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('UntagUserResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('UntagUserResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateAccessKey
    class UpdateAccessKey
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('UpdateAccessKeyResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('UpdateAccessKeyResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateAccountPasswordPolicy
    class UpdateAccountPasswordPolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('UpdateAccountPasswordPolicyResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('UpdateAccountPasswordPolicyResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateAssumeRolePolicy
    class UpdateAssumeRolePolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('UpdateAssumeRolePolicyResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('UpdateAssumeRolePolicyResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateGroup
    class UpdateGroup
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('UpdateGroupResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('UpdateGroupResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateLoginProfile
    class UpdateLoginProfile
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('UpdateLoginProfileResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('UpdateLoginProfileResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateOpenIDConnectProviderThumbprint
    class UpdateOpenIDConnectProviderThumbprint
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('UpdateOpenIDConnectProviderThumbprintResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('UpdateOpenIDConnectProviderThumbprintResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateRole
    class UpdateRole
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('UpdateRoleResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('UpdateRoleResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateRoleDescription
    class UpdateRoleDescription
      def self.default(visited=[])
        {
          role: Role.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('UpdateRoleDescriptionResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('UpdateRoleDescriptionResult')
        xml << Role.stub('Role', stub[:role]) unless stub[:role].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateSAMLProvider
    class UpdateSAMLProvider
      def self.default(visited=[])
        {
          saml_provider_arn: 'saml_provider_arn',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('UpdateSAMLProviderResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('UpdateSAMLProviderResult')
        xml << Hearth::XML::Node.new('SAMLProviderArn', stub[:saml_provider_arn].to_s) unless stub[:saml_provider_arn].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateSSHPublicKey
    class UpdateSSHPublicKey
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('UpdateSSHPublicKeyResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('UpdateSSHPublicKeyResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateServerCertificate
    class UpdateServerCertificate
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('UpdateServerCertificateResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('UpdateServerCertificateResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateServiceSpecificCredential
    class UpdateServiceSpecificCredential
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('UpdateServiceSpecificCredentialResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('UpdateServiceSpecificCredentialResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateSigningCertificate
    class UpdateSigningCertificate
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('UpdateSigningCertificateResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('UpdateSigningCertificateResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateUser
    class UpdateUser
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('UpdateUserResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('UpdateUserResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for UploadSSHPublicKey
    class UploadSSHPublicKey
      def self.default(visited=[])
        {
          ssh_public_key: SSHPublicKey.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('UploadSSHPublicKeyResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('UploadSSHPublicKeyResult')
        xml << SSHPublicKey.stub('SSHPublicKey', stub[:ssh_public_key]) unless stub[:ssh_public_key].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for UploadServerCertificate
    class UploadServerCertificate
      def self.default(visited=[])
        {
          server_certificate_metadata: ServerCertificateMetadata.default(visited),
          tags: TagListType.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('UploadServerCertificateResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('UploadServerCertificateResult')
        xml << ServerCertificateMetadata.stub('ServerCertificateMetadata', stub[:server_certificate_metadata]) unless stub[:server_certificate_metadata].nil?
        xml << Hearth::XML::Node.new('Tags', TagListType.stub('member', stub[:tags])) unless stub[:tags].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for UploadSigningCertificate
    class UploadSigningCertificate
      def self.default(visited=[])
        {
          certificate: SigningCertificate.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('UploadSigningCertificateResponse')
        response.attributes['xmlns'] = 'https://iam.amazonaws.com/doc/2010-05-08/'
        xml = Hearth::XML::Node.new('UploadSigningCertificateResult')
        xml << SigningCertificate.stub('Certificate', stub[:certificate]) unless stub[:certificate].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end
  end
end
