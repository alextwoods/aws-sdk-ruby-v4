# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::SSOAdmin
  module Builders

    # Operation Builder for AttachManagedPolicyToPermissionSet
    class AttachManagedPolicyToPermissionSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SWBExternalService.AttachManagedPolicyToPermissionSet'
        data = {}
        data['InstanceArn'] = input[:instance_arn] unless input[:instance_arn].nil?
        data['PermissionSetArn'] = input[:permission_set_arn] unless input[:permission_set_arn].nil?
        data['ManagedPolicyArn'] = input[:managed_policy_arn] unless input[:managed_policy_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateAccountAssignment
    class CreateAccountAssignment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SWBExternalService.CreateAccountAssignment'
        data = {}
        data['InstanceArn'] = input[:instance_arn] unless input[:instance_arn].nil?
        data['TargetId'] = input[:target_id] unless input[:target_id].nil?
        data['TargetType'] = input[:target_type] unless input[:target_type].nil?
        data['PermissionSetArn'] = input[:permission_set_arn] unless input[:permission_set_arn].nil?
        data['PrincipalType'] = input[:principal_type] unless input[:principal_type].nil?
        data['PrincipalId'] = input[:principal_id] unless input[:principal_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateInstanceAccessControlAttributeConfiguration
    class CreateInstanceAccessControlAttributeConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SWBExternalService.CreateInstanceAccessControlAttributeConfiguration'
        data = {}
        data['InstanceArn'] = input[:instance_arn] unless input[:instance_arn].nil?
        data['InstanceAccessControlAttributeConfiguration'] = InstanceAccessControlAttributeConfiguration.build(input[:instance_access_control_attribute_configuration]) unless input[:instance_access_control_attribute_configuration].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for InstanceAccessControlAttributeConfiguration
    class InstanceAccessControlAttributeConfiguration
      def self.build(input)
        data = {}
        data['AccessControlAttributes'] = AccessControlAttributeList.build(input[:access_control_attributes]) unless input[:access_control_attributes].nil?
        data
      end
    end

    # List Builder for AccessControlAttributeList
    class AccessControlAttributeList
      def self.build(input)
        data = []
        input.each do |element|
          data << AccessControlAttribute.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AccessControlAttribute
    class AccessControlAttribute
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = AccessControlAttributeValue.build(input[:value]) unless input[:value].nil?
        data
      end
    end

    # Structure Builder for AccessControlAttributeValue
    class AccessControlAttributeValue
      def self.build(input)
        data = {}
        data['Source'] = AccessControlAttributeValueSourceList.build(input[:source]) unless input[:source].nil?
        data
      end
    end

    # List Builder for AccessControlAttributeValueSourceList
    class AccessControlAttributeValueSourceList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreatePermissionSet
    class CreatePermissionSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SWBExternalService.CreatePermissionSet'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['InstanceArn'] = input[:instance_arn] unless input[:instance_arn].nil?
        data['SessionDuration'] = input[:session_duration] unless input[:session_duration].nil?
        data['RelayState'] = input[:relay_state] unless input[:relay_state].nil?
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for DeleteAccountAssignment
    class DeleteAccountAssignment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SWBExternalService.DeleteAccountAssignment'
        data = {}
        data['InstanceArn'] = input[:instance_arn] unless input[:instance_arn].nil?
        data['TargetId'] = input[:target_id] unless input[:target_id].nil?
        data['TargetType'] = input[:target_type] unless input[:target_type].nil?
        data['PermissionSetArn'] = input[:permission_set_arn] unless input[:permission_set_arn].nil?
        data['PrincipalType'] = input[:principal_type] unless input[:principal_type].nil?
        data['PrincipalId'] = input[:principal_id] unless input[:principal_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteInlinePolicyFromPermissionSet
    class DeleteInlinePolicyFromPermissionSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SWBExternalService.DeleteInlinePolicyFromPermissionSet'
        data = {}
        data['InstanceArn'] = input[:instance_arn] unless input[:instance_arn].nil?
        data['PermissionSetArn'] = input[:permission_set_arn] unless input[:permission_set_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteInstanceAccessControlAttributeConfiguration
    class DeleteInstanceAccessControlAttributeConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SWBExternalService.DeleteInstanceAccessControlAttributeConfiguration'
        data = {}
        data['InstanceArn'] = input[:instance_arn] unless input[:instance_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeletePermissionSet
    class DeletePermissionSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SWBExternalService.DeletePermissionSet'
        data = {}
        data['InstanceArn'] = input[:instance_arn] unless input[:instance_arn].nil?
        data['PermissionSetArn'] = input[:permission_set_arn] unless input[:permission_set_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeAccountAssignmentCreationStatus
    class DescribeAccountAssignmentCreationStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SWBExternalService.DescribeAccountAssignmentCreationStatus'
        data = {}
        data['InstanceArn'] = input[:instance_arn] unless input[:instance_arn].nil?
        data['AccountAssignmentCreationRequestId'] = input[:account_assignment_creation_request_id] unless input[:account_assignment_creation_request_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeAccountAssignmentDeletionStatus
    class DescribeAccountAssignmentDeletionStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SWBExternalService.DescribeAccountAssignmentDeletionStatus'
        data = {}
        data['InstanceArn'] = input[:instance_arn] unless input[:instance_arn].nil?
        data['AccountAssignmentDeletionRequestId'] = input[:account_assignment_deletion_request_id] unless input[:account_assignment_deletion_request_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeInstanceAccessControlAttributeConfiguration
    class DescribeInstanceAccessControlAttributeConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SWBExternalService.DescribeInstanceAccessControlAttributeConfiguration'
        data = {}
        data['InstanceArn'] = input[:instance_arn] unless input[:instance_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribePermissionSet
    class DescribePermissionSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SWBExternalService.DescribePermissionSet'
        data = {}
        data['InstanceArn'] = input[:instance_arn] unless input[:instance_arn].nil?
        data['PermissionSetArn'] = input[:permission_set_arn] unless input[:permission_set_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribePermissionSetProvisioningStatus
    class DescribePermissionSetProvisioningStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SWBExternalService.DescribePermissionSetProvisioningStatus'
        data = {}
        data['InstanceArn'] = input[:instance_arn] unless input[:instance_arn].nil?
        data['ProvisionPermissionSetRequestId'] = input[:provision_permission_set_request_id] unless input[:provision_permission_set_request_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DetachManagedPolicyFromPermissionSet
    class DetachManagedPolicyFromPermissionSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SWBExternalService.DetachManagedPolicyFromPermissionSet'
        data = {}
        data['InstanceArn'] = input[:instance_arn] unless input[:instance_arn].nil?
        data['PermissionSetArn'] = input[:permission_set_arn] unless input[:permission_set_arn].nil?
        data['ManagedPolicyArn'] = input[:managed_policy_arn] unless input[:managed_policy_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetInlinePolicyForPermissionSet
    class GetInlinePolicyForPermissionSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SWBExternalService.GetInlinePolicyForPermissionSet'
        data = {}
        data['InstanceArn'] = input[:instance_arn] unless input[:instance_arn].nil?
        data['PermissionSetArn'] = input[:permission_set_arn] unless input[:permission_set_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListAccountAssignmentCreationStatus
    class ListAccountAssignmentCreationStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SWBExternalService.ListAccountAssignmentCreationStatus'
        data = {}
        data['InstanceArn'] = input[:instance_arn] unless input[:instance_arn].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['Filter'] = OperationStatusFilter.build(input[:filter]) unless input[:filter].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for OperationStatusFilter
    class OperationStatusFilter
      def self.build(input)
        data = {}
        data['Status'] = input[:status] unless input[:status].nil?
        data
      end
    end

    # Operation Builder for ListAccountAssignmentDeletionStatus
    class ListAccountAssignmentDeletionStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SWBExternalService.ListAccountAssignmentDeletionStatus'
        data = {}
        data['InstanceArn'] = input[:instance_arn] unless input[:instance_arn].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['Filter'] = OperationStatusFilter.build(input[:filter]) unless input[:filter].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListAccountAssignments
    class ListAccountAssignments
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SWBExternalService.ListAccountAssignments'
        data = {}
        data['InstanceArn'] = input[:instance_arn] unless input[:instance_arn].nil?
        data['AccountId'] = input[:account_id] unless input[:account_id].nil?
        data['PermissionSetArn'] = input[:permission_set_arn] unless input[:permission_set_arn].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListAccountsForProvisionedPermissionSet
    class ListAccountsForProvisionedPermissionSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SWBExternalService.ListAccountsForProvisionedPermissionSet'
        data = {}
        data['InstanceArn'] = input[:instance_arn] unless input[:instance_arn].nil?
        data['PermissionSetArn'] = input[:permission_set_arn] unless input[:permission_set_arn].nil?
        data['ProvisioningStatus'] = input[:provisioning_status] unless input[:provisioning_status].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListInstances
    class ListInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SWBExternalService.ListInstances'
        data = {}
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListManagedPoliciesInPermissionSet
    class ListManagedPoliciesInPermissionSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SWBExternalService.ListManagedPoliciesInPermissionSet'
        data = {}
        data['InstanceArn'] = input[:instance_arn] unless input[:instance_arn].nil?
        data['PermissionSetArn'] = input[:permission_set_arn] unless input[:permission_set_arn].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListPermissionSetProvisioningStatus
    class ListPermissionSetProvisioningStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SWBExternalService.ListPermissionSetProvisioningStatus'
        data = {}
        data['InstanceArn'] = input[:instance_arn] unless input[:instance_arn].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['Filter'] = OperationStatusFilter.build(input[:filter]) unless input[:filter].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListPermissionSets
    class ListPermissionSets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SWBExternalService.ListPermissionSets'
        data = {}
        data['InstanceArn'] = input[:instance_arn] unless input[:instance_arn].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListPermissionSetsProvisionedToAccount
    class ListPermissionSetsProvisionedToAccount
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SWBExternalService.ListPermissionSetsProvisionedToAccount'
        data = {}
        data['InstanceArn'] = input[:instance_arn] unless input[:instance_arn].nil?
        data['AccountId'] = input[:account_id] unless input[:account_id].nil?
        data['ProvisioningStatus'] = input[:provisioning_status] unless input[:provisioning_status].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SWBExternalService.ListTagsForResource'
        data = {}
        data['InstanceArn'] = input[:instance_arn] unless input[:instance_arn].nil?
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ProvisionPermissionSet
    class ProvisionPermissionSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SWBExternalService.ProvisionPermissionSet'
        data = {}
        data['InstanceArn'] = input[:instance_arn] unless input[:instance_arn].nil?
        data['PermissionSetArn'] = input[:permission_set_arn] unless input[:permission_set_arn].nil?
        data['TargetId'] = input[:target_id] unless input[:target_id].nil?
        data['TargetType'] = input[:target_type] unless input[:target_type].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutInlinePolicyToPermissionSet
    class PutInlinePolicyToPermissionSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SWBExternalService.PutInlinePolicyToPermissionSet'
        data = {}
        data['InstanceArn'] = input[:instance_arn] unless input[:instance_arn].nil?
        data['PermissionSetArn'] = input[:permission_set_arn] unless input[:permission_set_arn].nil?
        data['InlinePolicy'] = input[:inline_policy] unless input[:inline_policy].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SWBExternalService.TagResource'
        data = {}
        data['InstanceArn'] = input[:instance_arn] unless input[:instance_arn].nil?
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SWBExternalService.UntagResource'
        data = {}
        data['InstanceArn'] = input[:instance_arn] unless input[:instance_arn].nil?
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['TagKeys'] = TagKeyList.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagKeyList
    class TagKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateInstanceAccessControlAttributeConfiguration
    class UpdateInstanceAccessControlAttributeConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SWBExternalService.UpdateInstanceAccessControlAttributeConfiguration'
        data = {}
        data['InstanceArn'] = input[:instance_arn] unless input[:instance_arn].nil?
        data['InstanceAccessControlAttributeConfiguration'] = InstanceAccessControlAttributeConfiguration.build(input[:instance_access_control_attribute_configuration]) unless input[:instance_access_control_attribute_configuration].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdatePermissionSet
    class UpdatePermissionSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SWBExternalService.UpdatePermissionSet'
        data = {}
        data['InstanceArn'] = input[:instance_arn] unless input[:instance_arn].nil?
        data['PermissionSetArn'] = input[:permission_set_arn] unless input[:permission_set_arn].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['SessionDuration'] = input[:session_duration] unless input[:session_duration].nil?
        data['RelayState'] = input[:relay_state] unless input[:relay_state].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
