# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::WorkDocs
  module Stubs

    # Operation Stubber for AbortDocumentVersionUpload
    class AbortDocumentVersionUpload
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for ActivateUser
    class ActivateUser
      def self.default(visited=[])
        {
          user: User.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['User'] = Stubs::User.stub(stub[:user]) unless stub[:user].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for User
    class User
      def self.default(visited=[])
        return nil if visited.include?('User')
        visited = visited + ['User']
        {
          id: 'id',
          username: 'username',
          email_address: 'email_address',
          given_name: 'given_name',
          surname: 'surname',
          organization_id: 'organization_id',
          root_folder_id: 'root_folder_id',
          recycle_bin_folder_id: 'recycle_bin_folder_id',
          status: 'status',
          type: 'type',
          created_timestamp: Time.now,
          modified_timestamp: Time.now,
          time_zone_id: 'time_zone_id',
          locale: 'locale',
          storage: UserStorageMetadata.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::User.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Username'] = stub[:username] unless stub[:username].nil?
        data['EmailAddress'] = stub[:email_address] unless stub[:email_address].nil?
        data['GivenName'] = stub[:given_name] unless stub[:given_name].nil?
        data['Surname'] = stub[:surname] unless stub[:surname].nil?
        data['OrganizationId'] = stub[:organization_id] unless stub[:organization_id].nil?
        data['RootFolderId'] = stub[:root_folder_id] unless stub[:root_folder_id].nil?
        data['RecycleBinFolderId'] = stub[:recycle_bin_folder_id] unless stub[:recycle_bin_folder_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['CreatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_timestamp]).to_i unless stub[:created_timestamp].nil?
        data['ModifiedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:modified_timestamp]).to_i unless stub[:modified_timestamp].nil?
        data['TimeZoneId'] = stub[:time_zone_id] unless stub[:time_zone_id].nil?
        data['Locale'] = stub[:locale] unless stub[:locale].nil?
        data['Storage'] = Stubs::UserStorageMetadata.stub(stub[:storage]) unless stub[:storage].nil?
        data
      end
    end

    # Structure Stubber for UserStorageMetadata
    class UserStorageMetadata
      def self.default(visited=[])
        return nil if visited.include?('UserStorageMetadata')
        visited = visited + ['UserStorageMetadata']
        {
          storage_utilized_in_bytes: 1,
          storage_rule: StorageRuleType.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::UserStorageMetadata.new
        data = {}
        data['StorageUtilizedInBytes'] = stub[:storage_utilized_in_bytes] unless stub[:storage_utilized_in_bytes].nil?
        data['StorageRule'] = Stubs::StorageRuleType.stub(stub[:storage_rule]) unless stub[:storage_rule].nil?
        data
      end
    end

    # Structure Stubber for StorageRuleType
    class StorageRuleType
      def self.default(visited=[])
        return nil if visited.include?('StorageRuleType')
        visited = visited + ['StorageRuleType']
        {
          storage_allocated_in_bytes: 1,
          storage_type: 'storage_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::StorageRuleType.new
        data = {}
        data['StorageAllocatedInBytes'] = stub[:storage_allocated_in_bytes] unless stub[:storage_allocated_in_bytes].nil?
        data['StorageType'] = stub[:storage_type] unless stub[:storage_type].nil?
        data
      end
    end

    # Operation Stubber for AddResourcePermissions
    class AddResourcePermissions
      def self.default(visited=[])
        {
          share_results: ShareResultsList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['ShareResults'] = Stubs::ShareResultsList.stub(stub[:share_results]) unless stub[:share_results].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ShareResultsList
    class ShareResultsList
      def self.default(visited=[])
        return nil if visited.include?('ShareResultsList')
        visited = visited + ['ShareResultsList']
        [
          ShareResult.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ShareResult.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ShareResult
    class ShareResult
      def self.default(visited=[])
        return nil if visited.include?('ShareResult')
        visited = visited + ['ShareResult']
        {
          principal_id: 'principal_id',
          invitee_principal_id: 'invitee_principal_id',
          role: 'role',
          status: 'status',
          share_id: 'share_id',
          status_message: 'status_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::ShareResult.new
        data = {}
        data['PrincipalId'] = stub[:principal_id] unless stub[:principal_id].nil?
        data['InviteePrincipalId'] = stub[:invitee_principal_id] unless stub[:invitee_principal_id].nil?
        data['Role'] = stub[:role] unless stub[:role].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['ShareId'] = stub[:share_id] unless stub[:share_id].nil?
        data['StatusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data
      end
    end

    # Operation Stubber for CreateComment
    class CreateComment
      def self.default(visited=[])
        {
          comment: Comment.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['Comment'] = Stubs::Comment.stub(stub[:comment]) unless stub[:comment].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Comment
    class Comment
      def self.default(visited=[])
        return nil if visited.include?('Comment')
        visited = visited + ['Comment']
        {
          comment_id: 'comment_id',
          parent_id: 'parent_id',
          thread_id: 'thread_id',
          text: 'text',
          contributor: User.default(visited),
          created_timestamp: Time.now,
          status: 'status',
          visibility: 'visibility',
          recipient_id: 'recipient_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::Comment.new
        data = {}
        data['CommentId'] = stub[:comment_id] unless stub[:comment_id].nil?
        data['ParentId'] = stub[:parent_id] unless stub[:parent_id].nil?
        data['ThreadId'] = stub[:thread_id] unless stub[:thread_id].nil?
        data['Text'] = stub[:text] unless stub[:text].nil?
        data['Contributor'] = Stubs::User.stub(stub[:contributor]) unless stub[:contributor].nil?
        data['CreatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_timestamp]).to_i unless stub[:created_timestamp].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Visibility'] = stub[:visibility] unless stub[:visibility].nil?
        data['RecipientId'] = stub[:recipient_id] unless stub[:recipient_id].nil?
        data
      end
    end

    # Operation Stubber for CreateCustomMetadata
    class CreateCustomMetadata
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateFolder
    class CreateFolder
      def self.default(visited=[])
        {
          metadata: FolderMetadata.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['Metadata'] = Stubs::FolderMetadata.stub(stub[:metadata]) unless stub[:metadata].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for FolderMetadata
    class FolderMetadata
      def self.default(visited=[])
        return nil if visited.include?('FolderMetadata')
        visited = visited + ['FolderMetadata']
        {
          id: 'id',
          name: 'name',
          creator_id: 'creator_id',
          parent_folder_id: 'parent_folder_id',
          created_timestamp: Time.now,
          modified_timestamp: Time.now,
          resource_state: 'resource_state',
          signature: 'signature',
          labels: SharedLabels.default(visited),
          size: 1,
          latest_version_size: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::FolderMetadata.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['CreatorId'] = stub[:creator_id] unless stub[:creator_id].nil?
        data['ParentFolderId'] = stub[:parent_folder_id] unless stub[:parent_folder_id].nil?
        data['CreatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_timestamp]).to_i unless stub[:created_timestamp].nil?
        data['ModifiedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:modified_timestamp]).to_i unless stub[:modified_timestamp].nil?
        data['ResourceState'] = stub[:resource_state] unless stub[:resource_state].nil?
        data['Signature'] = stub[:signature] unless stub[:signature].nil?
        data['Labels'] = Stubs::SharedLabels.stub(stub[:labels]) unless stub[:labels].nil?
        data['Size'] = stub[:size] unless stub[:size].nil?
        data['LatestVersionSize'] = stub[:latest_version_size] unless stub[:latest_version_size].nil?
        data
      end
    end

    # List Stubber for SharedLabels
    class SharedLabels
      def self.default(visited=[])
        return nil if visited.include?('SharedLabels')
        visited = visited + ['SharedLabels']
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

    # Operation Stubber for CreateLabels
    class CreateLabels
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateNotificationSubscription
    class CreateNotificationSubscription
      def self.default(visited=[])
        {
          subscription: Subscription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Subscription'] = Stubs::Subscription.stub(stub[:subscription]) unless stub[:subscription].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Subscription
    class Subscription
      def self.default(visited=[])
        return nil if visited.include?('Subscription')
        visited = visited + ['Subscription']
        {
          subscription_id: 'subscription_id',
          end_point: 'end_point',
          protocol: 'protocol',
        }
      end

      def self.stub(stub)
        stub ||= Types::Subscription.new
        data = {}
        data['SubscriptionId'] = stub[:subscription_id] unless stub[:subscription_id].nil?
        data['EndPoint'] = stub[:end_point] unless stub[:end_point].nil?
        data['Protocol'] = stub[:protocol] unless stub[:protocol].nil?
        data
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
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['User'] = Stubs::User.stub(stub[:user]) unless stub[:user].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeactivateUser
    class DeactivateUser
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteComment
    class DeleteComment
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteCustomMetadata
    class DeleteCustomMetadata
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteDocument
    class DeleteDocument
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteFolder
    class DeleteFolder
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteFolderContents
    class DeleteFolderContents
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteLabels
    class DeleteLabels
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteNotificationSubscription
    class DeleteNotificationSubscription
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
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
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DescribeActivities
    class DescribeActivities
      def self.default(visited=[])
        {
          user_activities: UserActivities.default(visited),
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['UserActivities'] = Stubs::UserActivities.stub(stub[:user_activities]) unless stub[:user_activities].nil?
        data['Marker'] = stub[:marker] unless stub[:marker].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for UserActivities
    class UserActivities
      def self.default(visited=[])
        return nil if visited.include?('UserActivities')
        visited = visited + ['UserActivities']
        [
          Activity.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Activity.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Activity
    class Activity
      def self.default(visited=[])
        return nil if visited.include?('Activity')
        visited = visited + ['Activity']
        {
          type: 'type',
          time_stamp: Time.now,
          is_indirect_activity: false,
          organization_id: 'organization_id',
          initiator: UserMetadata.default(visited),
          participants: Participants.default(visited),
          resource_metadata: ResourceMetadata.default(visited),
          original_parent: ResourceMetadata.default(visited),
          comment_metadata: CommentMetadata.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Activity.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['TimeStamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:time_stamp]).to_i unless stub[:time_stamp].nil?
        data['IsIndirectActivity'] = stub[:is_indirect_activity] unless stub[:is_indirect_activity].nil?
        data['OrganizationId'] = stub[:organization_id] unless stub[:organization_id].nil?
        data['Initiator'] = Stubs::UserMetadata.stub(stub[:initiator]) unless stub[:initiator].nil?
        data['Participants'] = Stubs::Participants.stub(stub[:participants]) unless stub[:participants].nil?
        data['ResourceMetadata'] = Stubs::ResourceMetadata.stub(stub[:resource_metadata]) unless stub[:resource_metadata].nil?
        data['OriginalParent'] = Stubs::ResourceMetadata.stub(stub[:original_parent]) unless stub[:original_parent].nil?
        data['CommentMetadata'] = Stubs::CommentMetadata.stub(stub[:comment_metadata]) unless stub[:comment_metadata].nil?
        data
      end
    end

    # Structure Stubber for CommentMetadata
    class CommentMetadata
      def self.default(visited=[])
        return nil if visited.include?('CommentMetadata')
        visited = visited + ['CommentMetadata']
        {
          comment_id: 'comment_id',
          contributor: User.default(visited),
          created_timestamp: Time.now,
          comment_status: 'comment_status',
          recipient_id: 'recipient_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::CommentMetadata.new
        data = {}
        data['CommentId'] = stub[:comment_id] unless stub[:comment_id].nil?
        data['Contributor'] = Stubs::User.stub(stub[:contributor]) unless stub[:contributor].nil?
        data['CreatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_timestamp]).to_i unless stub[:created_timestamp].nil?
        data['CommentStatus'] = stub[:comment_status] unless stub[:comment_status].nil?
        data['RecipientId'] = stub[:recipient_id] unless stub[:recipient_id].nil?
        data
      end
    end

    # Structure Stubber for ResourceMetadata
    class ResourceMetadata
      def self.default(visited=[])
        return nil if visited.include?('ResourceMetadata')
        visited = visited + ['ResourceMetadata']
        {
          type: 'type',
          name: 'name',
          original_name: 'original_name',
          id: 'id',
          version_id: 'version_id',
          owner: UserMetadata.default(visited),
          parent_id: 'parent_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceMetadata.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['OriginalName'] = stub[:original_name] unless stub[:original_name].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['VersionId'] = stub[:version_id] unless stub[:version_id].nil?
        data['Owner'] = Stubs::UserMetadata.stub(stub[:owner]) unless stub[:owner].nil?
        data['ParentId'] = stub[:parent_id] unless stub[:parent_id].nil?
        data
      end
    end

    # Structure Stubber for UserMetadata
    class UserMetadata
      def self.default(visited=[])
        return nil if visited.include?('UserMetadata')
        visited = visited + ['UserMetadata']
        {
          id: 'id',
          username: 'username',
          given_name: 'given_name',
          surname: 'surname',
          email_address: 'email_address',
        }
      end

      def self.stub(stub)
        stub ||= Types::UserMetadata.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Username'] = stub[:username] unless stub[:username].nil?
        data['GivenName'] = stub[:given_name] unless stub[:given_name].nil?
        data['Surname'] = stub[:surname] unless stub[:surname].nil?
        data['EmailAddress'] = stub[:email_address] unless stub[:email_address].nil?
        data
      end
    end

    # Structure Stubber for Participants
    class Participants
      def self.default(visited=[])
        return nil if visited.include?('Participants')
        visited = visited + ['Participants']
        {
          users: UserMetadataList.default(visited),
          groups: GroupMetadataList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Participants.new
        data = {}
        data['Users'] = Stubs::UserMetadataList.stub(stub[:users]) unless stub[:users].nil?
        data['Groups'] = Stubs::GroupMetadataList.stub(stub[:groups]) unless stub[:groups].nil?
        data
      end
    end

    # List Stubber for GroupMetadataList
    class GroupMetadataList
      def self.default(visited=[])
        return nil if visited.include?('GroupMetadataList')
        visited = visited + ['GroupMetadataList']
        [
          GroupMetadata.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::GroupMetadata.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for GroupMetadata
    class GroupMetadata
      def self.default(visited=[])
        return nil if visited.include?('GroupMetadata')
        visited = visited + ['GroupMetadata']
        {
          id: 'id',
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::GroupMetadata.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # List Stubber for UserMetadataList
    class UserMetadataList
      def self.default(visited=[])
        return nil if visited.include?('UserMetadataList')
        visited = visited + ['UserMetadataList']
        [
          UserMetadata.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::UserMetadata.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeComments
    class DescribeComments
      def self.default(visited=[])
        {
          comments: CommentList.default(visited),
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Comments'] = Stubs::CommentList.stub(stub[:comments]) unless stub[:comments].nil?
        data['Marker'] = stub[:marker] unless stub[:marker].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for CommentList
    class CommentList
      def self.default(visited=[])
        return nil if visited.include?('CommentList')
        visited = visited + ['CommentList']
        [
          Comment.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Comment.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeDocumentVersions
    class DescribeDocumentVersions
      def self.default(visited=[])
        {
          document_versions: DocumentVersionMetadataList.default(visited),
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DocumentVersions'] = Stubs::DocumentVersionMetadataList.stub(stub[:document_versions]) unless stub[:document_versions].nil?
        data['Marker'] = stub[:marker] unless stub[:marker].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DocumentVersionMetadataList
    class DocumentVersionMetadataList
      def self.default(visited=[])
        return nil if visited.include?('DocumentVersionMetadataList')
        visited = visited + ['DocumentVersionMetadataList']
        [
          DocumentVersionMetadata.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DocumentVersionMetadata.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DocumentVersionMetadata
    class DocumentVersionMetadata
      def self.default(visited=[])
        return nil if visited.include?('DocumentVersionMetadata')
        visited = visited + ['DocumentVersionMetadata']
        {
          id: 'id',
          name: 'name',
          content_type: 'content_type',
          size: 1,
          signature: 'signature',
          status: 'status',
          created_timestamp: Time.now,
          modified_timestamp: Time.now,
          content_created_timestamp: Time.now,
          content_modified_timestamp: Time.now,
          creator_id: 'creator_id',
          thumbnail: DocumentThumbnailUrlMap.default(visited),
          source: DocumentSourceUrlMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DocumentVersionMetadata.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['ContentType'] = stub[:content_type] unless stub[:content_type].nil?
        data['Size'] = stub[:size] unless stub[:size].nil?
        data['Signature'] = stub[:signature] unless stub[:signature].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['CreatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_timestamp]).to_i unless stub[:created_timestamp].nil?
        data['ModifiedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:modified_timestamp]).to_i unless stub[:modified_timestamp].nil?
        data['ContentCreatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:content_created_timestamp]).to_i unless stub[:content_created_timestamp].nil?
        data['ContentModifiedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:content_modified_timestamp]).to_i unless stub[:content_modified_timestamp].nil?
        data['CreatorId'] = stub[:creator_id] unless stub[:creator_id].nil?
        data['Thumbnail'] = Stubs::DocumentThumbnailUrlMap.stub(stub[:thumbnail]) unless stub[:thumbnail].nil?
        data['Source'] = Stubs::DocumentSourceUrlMap.stub(stub[:source]) unless stub[:source].nil?
        data
      end
    end

    # Map Stubber for DocumentSourceUrlMap
    class DocumentSourceUrlMap
      def self.default(visited=[])
        return nil if visited.include?('DocumentSourceUrlMap')
        visited = visited + ['DocumentSourceUrlMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Map Stubber for DocumentThumbnailUrlMap
    class DocumentThumbnailUrlMap
      def self.default(visited=[])
        return nil if visited.include?('DocumentThumbnailUrlMap')
        visited = visited + ['DocumentThumbnailUrlMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeFolderContents
    class DescribeFolderContents
      def self.default(visited=[])
        {
          folders: FolderMetadataList.default(visited),
          documents: DocumentMetadataList.default(visited),
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Folders'] = Stubs::FolderMetadataList.stub(stub[:folders]) unless stub[:folders].nil?
        data['Documents'] = Stubs::DocumentMetadataList.stub(stub[:documents]) unless stub[:documents].nil?
        data['Marker'] = stub[:marker] unless stub[:marker].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DocumentMetadataList
    class DocumentMetadataList
      def self.default(visited=[])
        return nil if visited.include?('DocumentMetadataList')
        visited = visited + ['DocumentMetadataList']
        [
          DocumentMetadata.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DocumentMetadata.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DocumentMetadata
    class DocumentMetadata
      def self.default(visited=[])
        return nil if visited.include?('DocumentMetadata')
        visited = visited + ['DocumentMetadata']
        {
          id: 'id',
          creator_id: 'creator_id',
          parent_folder_id: 'parent_folder_id',
          created_timestamp: Time.now,
          modified_timestamp: Time.now,
          latest_version_metadata: DocumentVersionMetadata.default(visited),
          resource_state: 'resource_state',
          labels: SharedLabels.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DocumentMetadata.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['CreatorId'] = stub[:creator_id] unless stub[:creator_id].nil?
        data['ParentFolderId'] = stub[:parent_folder_id] unless stub[:parent_folder_id].nil?
        data['CreatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_timestamp]).to_i unless stub[:created_timestamp].nil?
        data['ModifiedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:modified_timestamp]).to_i unless stub[:modified_timestamp].nil?
        data['LatestVersionMetadata'] = Stubs::DocumentVersionMetadata.stub(stub[:latest_version_metadata]) unless stub[:latest_version_metadata].nil?
        data['ResourceState'] = stub[:resource_state] unless stub[:resource_state].nil?
        data['Labels'] = Stubs::SharedLabels.stub(stub[:labels]) unless stub[:labels].nil?
        data
      end
    end

    # List Stubber for FolderMetadataList
    class FolderMetadataList
      def self.default(visited=[])
        return nil if visited.include?('FolderMetadataList')
        visited = visited + ['FolderMetadataList']
        [
          FolderMetadata.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::FolderMetadata.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeGroups
    class DescribeGroups
      def self.default(visited=[])
        {
          groups: GroupMetadataList.default(visited),
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Groups'] = Stubs::GroupMetadataList.stub(stub[:groups]) unless stub[:groups].nil?
        data['Marker'] = stub[:marker] unless stub[:marker].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeNotificationSubscriptions
    class DescribeNotificationSubscriptions
      def self.default(visited=[])
        {
          subscriptions: SubscriptionList.default(visited),
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Subscriptions'] = Stubs::SubscriptionList.stub(stub[:subscriptions]) unless stub[:subscriptions].nil?
        data['Marker'] = stub[:marker] unless stub[:marker].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for SubscriptionList
    class SubscriptionList
      def self.default(visited=[])
        return nil if visited.include?('SubscriptionList')
        visited = visited + ['SubscriptionList']
        [
          Subscription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Subscription.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeResourcePermissions
    class DescribeResourcePermissions
      def self.default(visited=[])
        {
          principals: PrincipalList.default(visited),
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Principals'] = Stubs::PrincipalList.stub(stub[:principals]) unless stub[:principals].nil?
        data['Marker'] = stub[:marker] unless stub[:marker].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for PrincipalList
    class PrincipalList
      def self.default(visited=[])
        return nil if visited.include?('PrincipalList')
        visited = visited + ['PrincipalList']
        [
          Principal.default(visited)
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
          type: 'type',
          roles: PermissionInfoList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Principal.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Roles'] = Stubs::PermissionInfoList.stub(stub[:roles]) unless stub[:roles].nil?
        data
      end
    end

    # List Stubber for PermissionInfoList
    class PermissionInfoList
      def self.default(visited=[])
        return nil if visited.include?('PermissionInfoList')
        visited = visited + ['PermissionInfoList']
        [
          PermissionInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PermissionInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PermissionInfo
    class PermissionInfo
      def self.default(visited=[])
        return nil if visited.include?('PermissionInfo')
        visited = visited + ['PermissionInfo']
        {
          role: 'role',
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::PermissionInfo.new
        data = {}
        data['Role'] = stub[:role] unless stub[:role].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Operation Stubber for DescribeRootFolders
    class DescribeRootFolders
      def self.default(visited=[])
        {
          folders: FolderMetadataList.default(visited),
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Folders'] = Stubs::FolderMetadataList.stub(stub[:folders]) unless stub[:folders].nil?
        data['Marker'] = stub[:marker] unless stub[:marker].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeUsers
    class DescribeUsers
      def self.default(visited=[])
        {
          users: OrganizationUserList.default(visited),
          total_number_of_users: 1,
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Users'] = Stubs::OrganizationUserList.stub(stub[:users]) unless stub[:users].nil?
        data['TotalNumberOfUsers'] = stub[:total_number_of_users] unless stub[:total_number_of_users].nil?
        data['Marker'] = stub[:marker] unless stub[:marker].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for OrganizationUserList
    class OrganizationUserList
      def self.default(visited=[])
        return nil if visited.include?('OrganizationUserList')
        visited = visited + ['OrganizationUserList']
        [
          User.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::User.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetCurrentUser
    class GetCurrentUser
      def self.default(visited=[])
        {
          user: User.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['User'] = Stubs::User.stub(stub[:user]) unless stub[:user].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetDocument
    class GetDocument
      def self.default(visited=[])
        {
          metadata: DocumentMetadata.default(visited),
          custom_metadata: CustomMetadataMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Metadata'] = Stubs::DocumentMetadata.stub(stub[:metadata]) unless stub[:metadata].nil?
        data['CustomMetadata'] = Stubs::CustomMetadataMap.stub(stub[:custom_metadata]) unless stub[:custom_metadata].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Stubber for CustomMetadataMap
    class CustomMetadataMap
      def self.default(visited=[])
        return nil if visited.include?('CustomMetadataMap')
        visited = visited + ['CustomMetadataMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for GetDocumentPath
    class GetDocumentPath
      def self.default(visited=[])
        {
          path: ResourcePath.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Path'] = Stubs::ResourcePath.stub(stub[:path]) unless stub[:path].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ResourcePath
    class ResourcePath
      def self.default(visited=[])
        return nil if visited.include?('ResourcePath')
        visited = visited + ['ResourcePath']
        {
          components: ResourcePathComponentList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourcePath.new
        data = {}
        data['Components'] = Stubs::ResourcePathComponentList.stub(stub[:components]) unless stub[:components].nil?
        data
      end
    end

    # List Stubber for ResourcePathComponentList
    class ResourcePathComponentList
      def self.default(visited=[])
        return nil if visited.include?('ResourcePathComponentList')
        visited = visited + ['ResourcePathComponentList']
        [
          ResourcePathComponent.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ResourcePathComponent.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ResourcePathComponent
    class ResourcePathComponent
      def self.default(visited=[])
        return nil if visited.include?('ResourcePathComponent')
        visited = visited + ['ResourcePathComponent']
        {
          id: 'id',
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourcePathComponent.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Operation Stubber for GetDocumentVersion
    class GetDocumentVersion
      def self.default(visited=[])
        {
          metadata: DocumentVersionMetadata.default(visited),
          custom_metadata: CustomMetadataMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Metadata'] = Stubs::DocumentVersionMetadata.stub(stub[:metadata]) unless stub[:metadata].nil?
        data['CustomMetadata'] = Stubs::CustomMetadataMap.stub(stub[:custom_metadata]) unless stub[:custom_metadata].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetFolder
    class GetFolder
      def self.default(visited=[])
        {
          metadata: FolderMetadata.default(visited),
          custom_metadata: CustomMetadataMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Metadata'] = Stubs::FolderMetadata.stub(stub[:metadata]) unless stub[:metadata].nil?
        data['CustomMetadata'] = Stubs::CustomMetadataMap.stub(stub[:custom_metadata]) unless stub[:custom_metadata].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetFolderPath
    class GetFolderPath
      def self.default(visited=[])
        {
          path: ResourcePath.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Path'] = Stubs::ResourcePath.stub(stub[:path]) unless stub[:path].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetResources
    class GetResources
      def self.default(visited=[])
        {
          folders: FolderMetadataList.default(visited),
          documents: DocumentMetadataList.default(visited),
          marker: 'marker',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Folders'] = Stubs::FolderMetadataList.stub(stub[:folders]) unless stub[:folders].nil?
        data['Documents'] = Stubs::DocumentMetadataList.stub(stub[:documents]) unless stub[:documents].nil?
        data['Marker'] = stub[:marker] unless stub[:marker].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for InitiateDocumentVersionUpload
    class InitiateDocumentVersionUpload
      def self.default(visited=[])
        {
          metadata: DocumentMetadata.default(visited),
          upload_metadata: UploadMetadata.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['Metadata'] = Stubs::DocumentMetadata.stub(stub[:metadata]) unless stub[:metadata].nil?
        data['UploadMetadata'] = Stubs::UploadMetadata.stub(stub[:upload_metadata]) unless stub[:upload_metadata].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for UploadMetadata
    class UploadMetadata
      def self.default(visited=[])
        return nil if visited.include?('UploadMetadata')
        visited = visited + ['UploadMetadata']
        {
          upload_url: 'upload_url',
          signed_headers: SignedHeaderMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::UploadMetadata.new
        data = {}
        data['UploadUrl'] = stub[:upload_url] unless stub[:upload_url].nil?
        data['SignedHeaders'] = Stubs::SignedHeaderMap.stub(stub[:signed_headers]) unless stub[:signed_headers].nil?
        data
      end
    end

    # Map Stubber for SignedHeaderMap
    class SignedHeaderMap
      def self.default(visited=[])
        return nil if visited.include?('SignedHeaderMap')
        visited = visited + ['SignedHeaderMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for RemoveAllResourcePermissions
    class RemoveAllResourcePermissions
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for RemoveResourcePermission
    class RemoveResourcePermission
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for UpdateDocument
    class UpdateDocument
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateDocumentVersion
    class UpdateDocumentVersion
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateFolder
    class UpdateFolder
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateUser
    class UpdateUser
      def self.default(visited=[])
        {
          user: User.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['User'] = Stubs::User.stub(stub[:user]) unless stub[:user].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
