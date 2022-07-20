# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SSOAdmin
  module Stubs

    # Operation Stubber for AttachManagedPolicyToPermissionSet
    class AttachManagedPolicyToPermissionSet
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateAccountAssignment
    class CreateAccountAssignment
      def self.default(visited=[])
        {
          account_assignment_creation_status: AccountAssignmentOperationStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AccountAssignmentCreationStatus'] = Stubs::AccountAssignmentOperationStatus.stub(stub[:account_assignment_creation_status]) unless stub[:account_assignment_creation_status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for AccountAssignmentOperationStatus
    class AccountAssignmentOperationStatus
      def self.default(visited=[])
        return nil if visited.include?('AccountAssignmentOperationStatus')
        visited = visited + ['AccountAssignmentOperationStatus']
        {
          status: 'status',
          request_id: 'request_id',
          failure_reason: 'failure_reason',
          target_id: 'target_id',
          target_type: 'target_type',
          permission_set_arn: 'permission_set_arn',
          principal_type: 'principal_type',
          principal_id: 'principal_id',
          created_date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::AccountAssignmentOperationStatus.new
        data = {}
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['FailureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['TargetId'] = stub[:target_id] unless stub[:target_id].nil?
        data['TargetType'] = stub[:target_type] unless stub[:target_type].nil?
        data['PermissionSetArn'] = stub[:permission_set_arn] unless stub[:permission_set_arn].nil?
        data['PrincipalType'] = stub[:principal_type] unless stub[:principal_type].nil?
        data['PrincipalId'] = stub[:principal_id] unless stub[:principal_id].nil?
        data['CreatedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date]).to_i unless stub[:created_date].nil?
        data
      end
    end

    # Operation Stubber for CreateInstanceAccessControlAttributeConfiguration
    class CreateInstanceAccessControlAttributeConfiguration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreatePermissionSet
    class CreatePermissionSet
      def self.default(visited=[])
        {
          permission_set: PermissionSet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PermissionSet'] = Stubs::PermissionSet.stub(stub[:permission_set]) unless stub[:permission_set].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for PermissionSet
    class PermissionSet
      def self.default(visited=[])
        return nil if visited.include?('PermissionSet')
        visited = visited + ['PermissionSet']
        {
          name: 'name',
          permission_set_arn: 'permission_set_arn',
          description: 'description',
          created_date: Time.now,
          session_duration: 'session_duration',
          relay_state: 'relay_state',
        }
      end

      def self.stub(stub)
        stub ||= Types::PermissionSet.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['PermissionSetArn'] = stub[:permission_set_arn] unless stub[:permission_set_arn].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['CreatedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date]).to_i unless stub[:created_date].nil?
        data['SessionDuration'] = stub[:session_duration] unless stub[:session_duration].nil?
        data['RelayState'] = stub[:relay_state] unless stub[:relay_state].nil?
        data
      end
    end

    # Operation Stubber for DeleteAccountAssignment
    class DeleteAccountAssignment
      def self.default(visited=[])
        {
          account_assignment_deletion_status: AccountAssignmentOperationStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AccountAssignmentDeletionStatus'] = Stubs::AccountAssignmentOperationStatus.stub(stub[:account_assignment_deletion_status]) unless stub[:account_assignment_deletion_status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteInlinePolicyFromPermissionSet
    class DeleteInlinePolicyFromPermissionSet
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteInstanceAccessControlAttributeConfiguration
    class DeleteInstanceAccessControlAttributeConfiguration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeletePermissionSet
    class DeletePermissionSet
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeAccountAssignmentCreationStatus
    class DescribeAccountAssignmentCreationStatus
      def self.default(visited=[])
        {
          account_assignment_creation_status: AccountAssignmentOperationStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AccountAssignmentCreationStatus'] = Stubs::AccountAssignmentOperationStatus.stub(stub[:account_assignment_creation_status]) unless stub[:account_assignment_creation_status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeAccountAssignmentDeletionStatus
    class DescribeAccountAssignmentDeletionStatus
      def self.default(visited=[])
        {
          account_assignment_deletion_status: AccountAssignmentOperationStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AccountAssignmentDeletionStatus'] = Stubs::AccountAssignmentOperationStatus.stub(stub[:account_assignment_deletion_status]) unless stub[:account_assignment_deletion_status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeInstanceAccessControlAttributeConfiguration
    class DescribeInstanceAccessControlAttributeConfiguration
      def self.default(visited=[])
        {
          status: 'status',
          status_reason: 'status_reason',
          instance_access_control_attribute_configuration: InstanceAccessControlAttributeConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StatusReason'] = stub[:status_reason] unless stub[:status_reason].nil?
        data['InstanceAccessControlAttributeConfiguration'] = Stubs::InstanceAccessControlAttributeConfiguration.stub(stub[:instance_access_control_attribute_configuration]) unless stub[:instance_access_control_attribute_configuration].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for InstanceAccessControlAttributeConfiguration
    class InstanceAccessControlAttributeConfiguration
      def self.default(visited=[])
        return nil if visited.include?('InstanceAccessControlAttributeConfiguration')
        visited = visited + ['InstanceAccessControlAttributeConfiguration']
        {
          access_control_attributes: AccessControlAttributeList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::InstanceAccessControlAttributeConfiguration.new
        data = {}
        data['AccessControlAttributes'] = Stubs::AccessControlAttributeList.stub(stub[:access_control_attributes]) unless stub[:access_control_attributes].nil?
        data
      end
    end

    # List Stubber for AccessControlAttributeList
    class AccessControlAttributeList
      def self.default(visited=[])
        return nil if visited.include?('AccessControlAttributeList')
        visited = visited + ['AccessControlAttributeList']
        [
          AccessControlAttribute.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AccessControlAttribute.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AccessControlAttribute
    class AccessControlAttribute
      def self.default(visited=[])
        return nil if visited.include?('AccessControlAttribute')
        visited = visited + ['AccessControlAttribute']
        {
          key: 'key',
          value: AccessControlAttributeValue.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AccessControlAttribute.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = Stubs::AccessControlAttributeValue.stub(stub[:value]) unless stub[:value].nil?
        data
      end
    end

    # Structure Stubber for AccessControlAttributeValue
    class AccessControlAttributeValue
      def self.default(visited=[])
        return nil if visited.include?('AccessControlAttributeValue')
        visited = visited + ['AccessControlAttributeValue']
        {
          source: AccessControlAttributeValueSourceList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AccessControlAttributeValue.new
        data = {}
        data['Source'] = Stubs::AccessControlAttributeValueSourceList.stub(stub[:source]) unless stub[:source].nil?
        data
      end
    end

    # List Stubber for AccessControlAttributeValueSourceList
    class AccessControlAttributeValueSourceList
      def self.default(visited=[])
        return nil if visited.include?('AccessControlAttributeValueSourceList')
        visited = visited + ['AccessControlAttributeValueSourceList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribePermissionSet
    class DescribePermissionSet
      def self.default(visited=[])
        {
          permission_set: PermissionSet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PermissionSet'] = Stubs::PermissionSet.stub(stub[:permission_set]) unless stub[:permission_set].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribePermissionSetProvisioningStatus
    class DescribePermissionSetProvisioningStatus
      def self.default(visited=[])
        {
          permission_set_provisioning_status: PermissionSetProvisioningStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PermissionSetProvisioningStatus'] = Stubs::PermissionSetProvisioningStatus.stub(stub[:permission_set_provisioning_status]) unless stub[:permission_set_provisioning_status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for PermissionSetProvisioningStatus
    class PermissionSetProvisioningStatus
      def self.default(visited=[])
        return nil if visited.include?('PermissionSetProvisioningStatus')
        visited = visited + ['PermissionSetProvisioningStatus']
        {
          status: 'status',
          request_id: 'request_id',
          account_id: 'account_id',
          permission_set_arn: 'permission_set_arn',
          failure_reason: 'failure_reason',
          created_date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::PermissionSetProvisioningStatus.new
        data = {}
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['AccountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['PermissionSetArn'] = stub[:permission_set_arn] unless stub[:permission_set_arn].nil?
        data['FailureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['CreatedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date]).to_i unless stub[:created_date].nil?
        data
      end
    end

    # Operation Stubber for DetachManagedPolicyFromPermissionSet
    class DetachManagedPolicyFromPermissionSet
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetInlinePolicyForPermissionSet
    class GetInlinePolicyForPermissionSet
      def self.default(visited=[])
        {
          inline_policy: 'inline_policy',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['InlinePolicy'] = stub[:inline_policy] unless stub[:inline_policy].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListAccountAssignmentCreationStatus
    class ListAccountAssignmentCreationStatus
      def self.default(visited=[])
        {
          account_assignments_creation_status: AccountAssignmentOperationStatusList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AccountAssignmentsCreationStatus'] = Stubs::AccountAssignmentOperationStatusList.stub(stub[:account_assignments_creation_status]) unless stub[:account_assignments_creation_status].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for AccountAssignmentOperationStatusList
    class AccountAssignmentOperationStatusList
      def self.default(visited=[])
        return nil if visited.include?('AccountAssignmentOperationStatusList')
        visited = visited + ['AccountAssignmentOperationStatusList']
        [
          AccountAssignmentOperationStatusMetadata.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AccountAssignmentOperationStatusMetadata.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AccountAssignmentOperationStatusMetadata
    class AccountAssignmentOperationStatusMetadata
      def self.default(visited=[])
        return nil if visited.include?('AccountAssignmentOperationStatusMetadata')
        visited = visited + ['AccountAssignmentOperationStatusMetadata']
        {
          status: 'status',
          request_id: 'request_id',
          created_date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::AccountAssignmentOperationStatusMetadata.new
        data = {}
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['CreatedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date]).to_i unless stub[:created_date].nil?
        data
      end
    end

    # Operation Stubber for ListAccountAssignmentDeletionStatus
    class ListAccountAssignmentDeletionStatus
      def self.default(visited=[])
        {
          account_assignments_deletion_status: AccountAssignmentOperationStatusList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AccountAssignmentsDeletionStatus'] = Stubs::AccountAssignmentOperationStatusList.stub(stub[:account_assignments_deletion_status]) unless stub[:account_assignments_deletion_status].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListAccountAssignments
    class ListAccountAssignments
      def self.default(visited=[])
        {
          account_assignments: AccountAssignmentList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AccountAssignments'] = Stubs::AccountAssignmentList.stub(stub[:account_assignments]) unless stub[:account_assignments].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for AccountAssignmentList
    class AccountAssignmentList
      def self.default(visited=[])
        return nil if visited.include?('AccountAssignmentList')
        visited = visited + ['AccountAssignmentList']
        [
          AccountAssignment.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AccountAssignment.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AccountAssignment
    class AccountAssignment
      def self.default(visited=[])
        return nil if visited.include?('AccountAssignment')
        visited = visited + ['AccountAssignment']
        {
          account_id: 'account_id',
          permission_set_arn: 'permission_set_arn',
          principal_type: 'principal_type',
          principal_id: 'principal_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::AccountAssignment.new
        data = {}
        data['AccountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['PermissionSetArn'] = stub[:permission_set_arn] unless stub[:permission_set_arn].nil?
        data['PrincipalType'] = stub[:principal_type] unless stub[:principal_type].nil?
        data['PrincipalId'] = stub[:principal_id] unless stub[:principal_id].nil?
        data
      end
    end

    # Operation Stubber for ListAccountsForProvisionedPermissionSet
    class ListAccountsForProvisionedPermissionSet
      def self.default(visited=[])
        {
          account_ids: AccountList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AccountIds'] = Stubs::AccountList.stub(stub[:account_ids]) unless stub[:account_ids].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for AccountList
    class AccountList
      def self.default(visited=[])
        return nil if visited.include?('AccountList')
        visited = visited + ['AccountList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListInstances
    class ListInstances
      def self.default(visited=[])
        {
          instances: InstanceList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Instances'] = Stubs::InstanceList.stub(stub[:instances]) unless stub[:instances].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for InstanceList
    class InstanceList
      def self.default(visited=[])
        return nil if visited.include?('InstanceList')
        visited = visited + ['InstanceList']
        [
          InstanceMetadata.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::InstanceMetadata.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for InstanceMetadata
    class InstanceMetadata
      def self.default(visited=[])
        return nil if visited.include?('InstanceMetadata')
        visited = visited + ['InstanceMetadata']
        {
          instance_arn: 'instance_arn',
          identity_store_id: 'identity_store_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::InstanceMetadata.new
        data = {}
        data['InstanceArn'] = stub[:instance_arn] unless stub[:instance_arn].nil?
        data['IdentityStoreId'] = stub[:identity_store_id] unless stub[:identity_store_id].nil?
        data
      end
    end

    # Operation Stubber for ListManagedPoliciesInPermissionSet
    class ListManagedPoliciesInPermissionSet
      def self.default(visited=[])
        {
          attached_managed_policies: AttachedManagedPolicyList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AttachedManagedPolicies'] = Stubs::AttachedManagedPolicyList.stub(stub[:attached_managed_policies]) unless stub[:attached_managed_policies].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for AttachedManagedPolicyList
    class AttachedManagedPolicyList
      def self.default(visited=[])
        return nil if visited.include?('AttachedManagedPolicyList')
        visited = visited + ['AttachedManagedPolicyList']
        [
          AttachedManagedPolicy.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AttachedManagedPolicy.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AttachedManagedPolicy
    class AttachedManagedPolicy
      def self.default(visited=[])
        return nil if visited.include?('AttachedManagedPolicy')
        visited = visited + ['AttachedManagedPolicy']
        {
          name: 'name',
          arn: 'arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::AttachedManagedPolicy.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data
      end
    end

    # Operation Stubber for ListPermissionSetProvisioningStatus
    class ListPermissionSetProvisioningStatus
      def self.default(visited=[])
        {
          permission_sets_provisioning_status: PermissionSetProvisioningStatusList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PermissionSetsProvisioningStatus'] = Stubs::PermissionSetProvisioningStatusList.stub(stub[:permission_sets_provisioning_status]) unless stub[:permission_sets_provisioning_status].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for PermissionSetProvisioningStatusList
    class PermissionSetProvisioningStatusList
      def self.default(visited=[])
        return nil if visited.include?('PermissionSetProvisioningStatusList')
        visited = visited + ['PermissionSetProvisioningStatusList']
        [
          PermissionSetProvisioningStatusMetadata.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PermissionSetProvisioningStatusMetadata.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PermissionSetProvisioningStatusMetadata
    class PermissionSetProvisioningStatusMetadata
      def self.default(visited=[])
        return nil if visited.include?('PermissionSetProvisioningStatusMetadata')
        visited = visited + ['PermissionSetProvisioningStatusMetadata']
        {
          status: 'status',
          request_id: 'request_id',
          created_date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::PermissionSetProvisioningStatusMetadata.new
        data = {}
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['CreatedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date]).to_i unless stub[:created_date].nil?
        data
      end
    end

    # Operation Stubber for ListPermissionSets
    class ListPermissionSets
      def self.default(visited=[])
        {
          permission_sets: PermissionSetList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PermissionSets'] = Stubs::PermissionSetList.stub(stub[:permission_sets]) unless stub[:permission_sets].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for PermissionSetList
    class PermissionSetList
      def self.default(visited=[])
        return nil if visited.include?('PermissionSetList')
        visited = visited + ['PermissionSetList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListPermissionSetsProvisionedToAccount
    class ListPermissionSetsProvisionedToAccount
      def self.default(visited=[])
        {
          next_token: 'next_token',
          permission_sets: PermissionSetList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['PermissionSets'] = Stubs::PermissionSetList.stub(stub[:permission_sets]) unless stub[:permission_sets].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: TagList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TagList
    class TagList
      def self.default(visited=[])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
        [
          Tag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Tag.stub(element) unless element.nil?
        end
        data
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

      def self.stub(stub)
        stub ||= Types::Tag.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for ProvisionPermissionSet
    class ProvisionPermissionSet
      def self.default(visited=[])
        {
          permission_set_provisioning_status: PermissionSetProvisioningStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PermissionSetProvisioningStatus'] = Stubs::PermissionSetProvisioningStatus.stub(stub[:permission_set_provisioning_status]) unless stub[:permission_set_provisioning_status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutInlinePolicyToPermissionSet
    class PutInlinePolicyToPermissionSet
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UntagResource
    class UntagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateInstanceAccessControlAttributeConfiguration
    class UpdateInstanceAccessControlAttributeConfiguration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdatePermissionSet
    class UpdatePermissionSet
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
