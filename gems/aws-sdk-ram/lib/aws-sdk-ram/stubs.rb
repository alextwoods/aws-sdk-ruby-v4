# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::RAM
  module Stubs

    # Operation Stubber for AcceptResourceShareInvitation
    class AcceptResourceShareInvitation
      def self.default(visited=[])
        {
          resource_share_invitation: Stubs::ResourceShareInvitation.default(visited),
          client_token: 'client_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['resourceShareInvitation'] = Stubs::ResourceShareInvitation.stub(stub[:resource_share_invitation]) unless stub[:resource_share_invitation].nil?
        data['clientToken'] = stub[:client_token] unless stub[:client_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ResourceShareInvitation
    class ResourceShareInvitation
      def self.default(visited=[])
        return nil if visited.include?('ResourceShareInvitation')
        visited = visited + ['ResourceShareInvitation']
        {
          resource_share_invitation_arn: 'resource_share_invitation_arn',
          resource_share_name: 'resource_share_name',
          resource_share_arn: 'resource_share_arn',
          sender_account_id: 'sender_account_id',
          receiver_account_id: 'receiver_account_id',
          invitation_timestamp: Time.now,
          status: 'status',
          resource_share_associations: Stubs::ResourceShareAssociationList.default(visited),
          receiver_arn: 'receiver_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceShareInvitation.new
        data = {}
        data['resourceShareInvitationArn'] = stub[:resource_share_invitation_arn] unless stub[:resource_share_invitation_arn].nil?
        data['resourceShareName'] = stub[:resource_share_name] unless stub[:resource_share_name].nil?
        data['resourceShareArn'] = stub[:resource_share_arn] unless stub[:resource_share_arn].nil?
        data['senderAccountId'] = stub[:sender_account_id] unless stub[:sender_account_id].nil?
        data['receiverAccountId'] = stub[:receiver_account_id] unless stub[:receiver_account_id].nil?
        data['invitationTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:invitation_timestamp]).to_i unless stub[:invitation_timestamp].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['resourceShareAssociations'] = Stubs::ResourceShareAssociationList.stub(stub[:resource_share_associations]) unless stub[:resource_share_associations].nil?
        data['receiverArn'] = stub[:receiver_arn] unless stub[:receiver_arn].nil?
        data
      end
    end

    # List Stubber for ResourceShareAssociationList
    class ResourceShareAssociationList
      def self.default(visited=[])
        return nil if visited.include?('ResourceShareAssociationList')
        visited = visited + ['ResourceShareAssociationList']
        [
          Stubs::ResourceShareAssociation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ResourceShareAssociation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ResourceShareAssociation
    class ResourceShareAssociation
      def self.default(visited=[])
        return nil if visited.include?('ResourceShareAssociation')
        visited = visited + ['ResourceShareAssociation']
        {
          resource_share_arn: 'resource_share_arn',
          resource_share_name: 'resource_share_name',
          associated_entity: 'associated_entity',
          association_type: 'association_type',
          status: 'status',
          status_message: 'status_message',
          creation_time: Time.now,
          last_updated_time: Time.now,
          external: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceShareAssociation.new
        data = {}
        data['resourceShareArn'] = stub[:resource_share_arn] unless stub[:resource_share_arn].nil?
        data['resourceShareName'] = stub[:resource_share_name] unless stub[:resource_share_name].nil?
        data['associatedEntity'] = stub[:associated_entity] unless stub[:associated_entity].nil?
        data['associationType'] = stub[:association_type] unless stub[:association_type].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['statusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['creationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['lastUpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time]).to_i unless stub[:last_updated_time].nil?
        data['external'] = stub[:external] unless stub[:external].nil?
        data
      end
    end

    # Operation Stubber for AssociateResourceShare
    class AssociateResourceShare
      def self.default(visited=[])
        {
          resource_share_associations: Stubs::ResourceShareAssociationList.default(visited),
          client_token: 'client_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['resourceShareAssociations'] = Stubs::ResourceShareAssociationList.stub(stub[:resource_share_associations]) unless stub[:resource_share_associations].nil?
        data['clientToken'] = stub[:client_token] unless stub[:client_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for AssociateResourceSharePermission
    class AssociateResourceSharePermission
      def self.default(visited=[])
        {
          return_value: false,
          client_token: 'client_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['returnValue'] = stub[:return_value] unless stub[:return_value].nil?
        data['clientToken'] = stub[:client_token] unless stub[:client_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateResourceShare
    class CreateResourceShare
      def self.default(visited=[])
        {
          resource_share: Stubs::ResourceShare.default(visited),
          client_token: 'client_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['resourceShare'] = Stubs::ResourceShare.stub(stub[:resource_share]) unless stub[:resource_share].nil?
        data['clientToken'] = stub[:client_token] unless stub[:client_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ResourceShare
    class ResourceShare
      def self.default(visited=[])
        return nil if visited.include?('ResourceShare')
        visited = visited + ['ResourceShare']
        {
          resource_share_arn: 'resource_share_arn',
          name: 'name',
          owning_account_id: 'owning_account_id',
          allow_external_principals: false,
          status: 'status',
          status_message: 'status_message',
          tags: Stubs::TagList.default(visited),
          creation_time: Time.now,
          last_updated_time: Time.now,
          feature_set: 'feature_set',
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceShare.new
        data = {}
        data['resourceShareArn'] = stub[:resource_share_arn] unless stub[:resource_share_arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['owningAccountId'] = stub[:owning_account_id] unless stub[:owning_account_id].nil?
        data['allowExternalPrincipals'] = stub[:allow_external_principals] unless stub[:allow_external_principals].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['statusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['creationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['lastUpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time]).to_i unless stub[:last_updated_time].nil?
        data['featureSet'] = stub[:feature_set] unless stub[:feature_set].nil?
        data
      end
    end

    # List Stubber for TagList
    class TagList
      def self.default(visited=[])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
        [
          Stubs::Tag.default(visited)
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
        data['key'] = stub[:key] unless stub[:key].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for DeleteResourceShare
    class DeleteResourceShare
      def self.default(visited=[])
        {
          return_value: false,
          client_token: 'client_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['returnValue'] = stub[:return_value] unless stub[:return_value].nil?
        data['clientToken'] = stub[:client_token] unless stub[:client_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DisassociateResourceShare
    class DisassociateResourceShare
      def self.default(visited=[])
        {
          resource_share_associations: Stubs::ResourceShareAssociationList.default(visited),
          client_token: 'client_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['resourceShareAssociations'] = Stubs::ResourceShareAssociationList.stub(stub[:resource_share_associations]) unless stub[:resource_share_associations].nil?
        data['clientToken'] = stub[:client_token] unless stub[:client_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DisassociateResourceSharePermission
    class DisassociateResourceSharePermission
      def self.default(visited=[])
        {
          return_value: false,
          client_token: 'client_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['returnValue'] = stub[:return_value] unless stub[:return_value].nil?
        data['clientToken'] = stub[:client_token] unless stub[:client_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for EnableSharingWithAwsOrganization
    class EnableSharingWithAwsOrganization
      def self.default(visited=[])
        {
          return_value: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['returnValue'] = stub[:return_value] unless stub[:return_value].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetPermission
    class GetPermission
      def self.default(visited=[])
        {
          permission: Stubs::ResourceSharePermissionDetail.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['permission'] = Stubs::ResourceSharePermissionDetail.stub(stub[:permission]) unless stub[:permission].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ResourceSharePermissionDetail
    class ResourceSharePermissionDetail
      def self.default(visited=[])
        return nil if visited.include?('ResourceSharePermissionDetail')
        visited = visited + ['ResourceSharePermissionDetail']
        {
          arn: 'arn',
          version: 'version',
          default_version: false,
          name: 'name',
          resource_type: 'resource_type',
          permission: 'permission',
          creation_time: Time.now,
          last_updated_time: Time.now,
          is_resource_type_default: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceSharePermissionDetail.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['defaultVersion'] = stub[:default_version] unless stub[:default_version].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['resourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['permission'] = stub[:permission] unless stub[:permission].nil?
        data['creationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['lastUpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time]).to_i unless stub[:last_updated_time].nil?
        data['isResourceTypeDefault'] = stub[:is_resource_type_default] unless stub[:is_resource_type_default].nil?
        data
      end
    end

    # Operation Stubber for GetResourcePolicies
    class GetResourcePolicies
      def self.default(visited=[])
        {
          policies: Stubs::PolicyList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['policies'] = Stubs::PolicyList.stub(stub[:policies]) unless stub[:policies].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for PolicyList
    class PolicyList
      def self.default(visited=[])
        return nil if visited.include?('PolicyList')
        visited = visited + ['PolicyList']
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

    # Operation Stubber for GetResourceShareAssociations
    class GetResourceShareAssociations
      def self.default(visited=[])
        {
          resource_share_associations: Stubs::ResourceShareAssociationList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['resourceShareAssociations'] = Stubs::ResourceShareAssociationList.stub(stub[:resource_share_associations]) unless stub[:resource_share_associations].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetResourceShareInvitations
    class GetResourceShareInvitations
      def self.default(visited=[])
        {
          resource_share_invitations: Stubs::ResourceShareInvitationList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['resourceShareInvitations'] = Stubs::ResourceShareInvitationList.stub(stub[:resource_share_invitations]) unless stub[:resource_share_invitations].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ResourceShareInvitationList
    class ResourceShareInvitationList
      def self.default(visited=[])
        return nil if visited.include?('ResourceShareInvitationList')
        visited = visited + ['ResourceShareInvitationList']
        [
          Stubs::ResourceShareInvitation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ResourceShareInvitation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetResourceShares
    class GetResourceShares
      def self.default(visited=[])
        {
          resource_shares: Stubs::ResourceShareList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['resourceShares'] = Stubs::ResourceShareList.stub(stub[:resource_shares]) unless stub[:resource_shares].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ResourceShareList
    class ResourceShareList
      def self.default(visited=[])
        return nil if visited.include?('ResourceShareList')
        visited = visited + ['ResourceShareList']
        [
          Stubs::ResourceShare.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ResourceShare.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListPendingInvitationResources
    class ListPendingInvitationResources
      def self.default(visited=[])
        {
          resources: Stubs::ResourceList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['resources'] = Stubs::ResourceList.stub(stub[:resources]) unless stub[:resources].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ResourceList
    class ResourceList
      def self.default(visited=[])
        return nil if visited.include?('ResourceList')
        visited = visited + ['ResourceList']
        [
          Stubs::Resource.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Resource.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Resource
    class Resource
      def self.default(visited=[])
        return nil if visited.include?('Resource')
        visited = visited + ['Resource']
        {
          arn: 'arn',
          type: 'type',
          resource_share_arn: 'resource_share_arn',
          resource_group_arn: 'resource_group_arn',
          status: 'status',
          status_message: 'status_message',
          creation_time: Time.now,
          last_updated_time: Time.now,
          resource_region_scope: 'resource_region_scope',
        }
      end

      def self.stub(stub)
        stub ||= Types::Resource.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['resourceShareArn'] = stub[:resource_share_arn] unless stub[:resource_share_arn].nil?
        data['resourceGroupArn'] = stub[:resource_group_arn] unless stub[:resource_group_arn].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['statusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['creationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['lastUpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time]).to_i unless stub[:last_updated_time].nil?
        data['resourceRegionScope'] = stub[:resource_region_scope] unless stub[:resource_region_scope].nil?
        data
      end
    end

    # Operation Stubber for ListPermissionVersions
    class ListPermissionVersions
      def self.default(visited=[])
        {
          permissions: Stubs::ResourceSharePermissionList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['permissions'] = Stubs::ResourceSharePermissionList.stub(stub[:permissions]) unless stub[:permissions].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ResourceSharePermissionList
    class ResourceSharePermissionList
      def self.default(visited=[])
        return nil if visited.include?('ResourceSharePermissionList')
        visited = visited + ['ResourceSharePermissionList']
        [
          Stubs::ResourceSharePermissionSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ResourceSharePermissionSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ResourceSharePermissionSummary
    class ResourceSharePermissionSummary
      def self.default(visited=[])
        return nil if visited.include?('ResourceSharePermissionSummary')
        visited = visited + ['ResourceSharePermissionSummary']
        {
          arn: 'arn',
          version: 'version',
          default_version: false,
          name: 'name',
          resource_type: 'resource_type',
          status: 'status',
          creation_time: Time.now,
          last_updated_time: Time.now,
          is_resource_type_default: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceSharePermissionSummary.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['defaultVersion'] = stub[:default_version] unless stub[:default_version].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['resourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['creationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['lastUpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time]).to_i unless stub[:last_updated_time].nil?
        data['isResourceTypeDefault'] = stub[:is_resource_type_default] unless stub[:is_resource_type_default].nil?
        data
      end
    end

    # Operation Stubber for ListPermissions
    class ListPermissions
      def self.default(visited=[])
        {
          permissions: Stubs::ResourceSharePermissionList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['permissions'] = Stubs::ResourceSharePermissionList.stub(stub[:permissions]) unless stub[:permissions].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListPrincipals
    class ListPrincipals
      def self.default(visited=[])
        {
          principals: Stubs::PrincipalList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['principals'] = Stubs::PrincipalList.stub(stub[:principals]) unless stub[:principals].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for PrincipalList
    class PrincipalList
      def self.default(visited=[])
        return nil if visited.include?('PrincipalList')
        visited = visited + ['PrincipalList']
        [
          Stubs::Principal.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Principal.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Principal
    class Principal
      def self.default(visited=[])
        return nil if visited.include?('Principal')
        visited = visited + ['Principal']
        {
          id: 'id',
          resource_share_arn: 'resource_share_arn',
          creation_time: Time.now,
          last_updated_time: Time.now,
          external: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::Principal.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['resourceShareArn'] = stub[:resource_share_arn] unless stub[:resource_share_arn].nil?
        data['creationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['lastUpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time]).to_i unless stub[:last_updated_time].nil?
        data['external'] = stub[:external] unless stub[:external].nil?
        data
      end
    end

    # Operation Stubber for ListResourceSharePermissions
    class ListResourceSharePermissions
      def self.default(visited=[])
        {
          permissions: Stubs::ResourceSharePermissionList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['permissions'] = Stubs::ResourceSharePermissionList.stub(stub[:permissions]) unless stub[:permissions].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListResourceTypes
    class ListResourceTypes
      def self.default(visited=[])
        {
          resource_types: Stubs::ServiceNameAndResourceTypeList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['resourceTypes'] = Stubs::ServiceNameAndResourceTypeList.stub(stub[:resource_types]) unless stub[:resource_types].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ServiceNameAndResourceTypeList
    class ServiceNameAndResourceTypeList
      def self.default(visited=[])
        return nil if visited.include?('ServiceNameAndResourceTypeList')
        visited = visited + ['ServiceNameAndResourceTypeList']
        [
          Stubs::ServiceNameAndResourceType.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ServiceNameAndResourceType.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ServiceNameAndResourceType
    class ServiceNameAndResourceType
      def self.default(visited=[])
        return nil if visited.include?('ServiceNameAndResourceType')
        visited = visited + ['ServiceNameAndResourceType']
        {
          resource_type: 'resource_type',
          service_name: 'service_name',
          resource_region_scope: 'resource_region_scope',
        }
      end

      def self.stub(stub)
        stub ||= Types::ServiceNameAndResourceType.new
        data = {}
        data['resourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['serviceName'] = stub[:service_name] unless stub[:service_name].nil?
        data['resourceRegionScope'] = stub[:resource_region_scope] unless stub[:resource_region_scope].nil?
        data
      end
    end

    # Operation Stubber for ListResources
    class ListResources
      def self.default(visited=[])
        {
          resources: Stubs::ResourceList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['resources'] = Stubs::ResourceList.stub(stub[:resources]) unless stub[:resources].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for PromoteResourceShareCreatedFromPolicy
    class PromoteResourceShareCreatedFromPolicy
      def self.default(visited=[])
        {
          return_value: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['returnValue'] = stub[:return_value] unless stub[:return_value].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for RejectResourceShareInvitation
    class RejectResourceShareInvitation
      def self.default(visited=[])
        {
          resource_share_invitation: Stubs::ResourceShareInvitation.default(visited),
          client_token: 'client_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['resourceShareInvitation'] = Stubs::ResourceShareInvitation.stub(stub[:resource_share_invitation]) unless stub[:resource_share_invitation].nil?
        data['clientToken'] = stub[:client_token] unless stub[:client_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateResourceShare
    class UpdateResourceShare
      def self.default(visited=[])
        {
          resource_share: Stubs::ResourceShare.default(visited),
          client_token: 'client_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['resourceShare'] = Stubs::ResourceShare.stub(stub[:resource_share]) unless stub[:resource_share].nil?
        data['clientToken'] = stub[:client_token] unless stub[:client_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
