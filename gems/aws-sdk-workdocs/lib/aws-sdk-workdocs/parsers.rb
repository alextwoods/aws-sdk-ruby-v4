# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::WorkDocs
  module Parsers

    # Operation Parser for AbortDocumentVersionUpload
    class AbortDocumentVersionUpload
      def self.parse(http_resp)
        data = Types::AbortDocumentVersionUploadOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for FailedDependencyException
    class FailedDependencyException
      def self.parse(http_resp)
        data = Types::FailedDependencyException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ProhibitedStateException
    class ProhibitedStateException
      def self.parse(http_resp)
        data = Types::ProhibitedStateException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for UnauthorizedOperationException
    class UnauthorizedOperationException
      def self.parse(http_resp)
        data = Types::UnauthorizedOperationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.code = map['Code']
        data
      end
    end

    # Error Parser for UnauthorizedResourceAccessException
    class UnauthorizedResourceAccessException
      def self.parse(http_resp)
        data = Types::UnauthorizedResourceAccessException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for EntityNotExistsException
    class EntityNotExistsException
      def self.parse(http_resp)
        data = Types::EntityNotExistsException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.entity_ids = (EntityIdList.parse(map['EntityIds']) unless map['EntityIds'].nil?)
        data
      end
    end

    class EntityIdList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Error Parser for ServiceUnavailableException
    class ServiceUnavailableException
      def self.parse(http_resp)
        data = Types::ServiceUnavailableException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for ActivateUser
    class ActivateUser
      def self.parse(http_resp)
        data = Types::ActivateUserOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.user = (User.parse(map['User']) unless map['User'].nil?)
        data
      end
    end

    class User
      def self.parse(map)
        data = Types::User.new
        data.id = map['Id']
        data.username = map['Username']
        data.email_address = map['EmailAddress']
        data.given_name = map['GivenName']
        data.surname = map['Surname']
        data.organization_id = map['OrganizationId']
        data.root_folder_id = map['RootFolderId']
        data.recycle_bin_folder_id = map['RecycleBinFolderId']
        data.status = map['Status']
        data.type = map['Type']
        data.created_timestamp = Time.at(map['CreatedTimestamp'].to_i) if map['CreatedTimestamp']
        data.modified_timestamp = Time.at(map['ModifiedTimestamp'].to_i) if map['ModifiedTimestamp']
        data.time_zone_id = map['TimeZoneId']
        data.locale = map['Locale']
        data.storage = (UserStorageMetadata.parse(map['Storage']) unless map['Storage'].nil?)
        return data
      end
    end

    class UserStorageMetadata
      def self.parse(map)
        data = Types::UserStorageMetadata.new
        data.storage_utilized_in_bytes = map['StorageUtilizedInBytes']
        data.storage_rule = (StorageRuleType.parse(map['StorageRule']) unless map['StorageRule'].nil?)
        return data
      end
    end

    class StorageRuleType
      def self.parse(map)
        data = Types::StorageRuleType.new
        data.storage_allocated_in_bytes = map['StorageAllocatedInBytes']
        data.storage_type = map['StorageType']
        return data
      end
    end

    # Operation Parser for AddResourcePermissions
    class AddResourcePermissions
      def self.parse(http_resp)
        data = Types::AddResourcePermissionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.share_results = (ShareResultsList.parse(map['ShareResults']) unless map['ShareResults'].nil?)
        data
      end
    end

    class ShareResultsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ShareResult.parse(value) unless value.nil?
        end
        data
      end
    end

    class ShareResult
      def self.parse(map)
        data = Types::ShareResult.new
        data.principal_id = map['PrincipalId']
        data.invitee_principal_id = map['InviteePrincipalId']
        data.role = map['Role']
        data.status = map['Status']
        data.share_id = map['ShareId']
        data.status_message = map['StatusMessage']
        return data
      end
    end

    # Operation Parser for CreateComment
    class CreateComment
      def self.parse(http_resp)
        data = Types::CreateCommentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.comment = (Comment.parse(map['Comment']) unless map['Comment'].nil?)
        data
      end
    end

    class Comment
      def self.parse(map)
        data = Types::Comment.new
        data.comment_id = map['CommentId']
        data.parent_id = map['ParentId']
        data.thread_id = map['ThreadId']
        data.text = map['Text']
        data.contributor = (User.parse(map['Contributor']) unless map['Contributor'].nil?)
        data.created_timestamp = Time.at(map['CreatedTimestamp'].to_i) if map['CreatedTimestamp']
        data.status = map['Status']
        data.visibility = map['Visibility']
        data.recipient_id = map['RecipientId']
        return data
      end
    end

    # Error Parser for InvalidCommentOperationException
    class InvalidCommentOperationException
      def self.parse(http_resp)
        data = Types::InvalidCommentOperationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for DocumentLockedForCommentsException
    class DocumentLockedForCommentsException
      def self.parse(http_resp)
        data = Types::DocumentLockedForCommentsException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateCustomMetadata
    class CreateCustomMetadata
      def self.parse(http_resp)
        data = Types::CreateCustomMetadataOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for CustomMetadataLimitExceededException
    class CustomMetadataLimitExceededException
      def self.parse(http_resp)
        data = Types::CustomMetadataLimitExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateFolder
    class CreateFolder
      def self.parse(http_resp)
        data = Types::CreateFolderOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.metadata = (FolderMetadata.parse(map['Metadata']) unless map['Metadata'].nil?)
        data
      end
    end

    class FolderMetadata
      def self.parse(map)
        data = Types::FolderMetadata.new
        data.id = map['Id']
        data.name = map['Name']
        data.creator_id = map['CreatorId']
        data.parent_folder_id = map['ParentFolderId']
        data.created_timestamp = Time.at(map['CreatedTimestamp'].to_i) if map['CreatedTimestamp']
        data.modified_timestamp = Time.at(map['ModifiedTimestamp'].to_i) if map['ModifiedTimestamp']
        data.resource_state = map['ResourceState']
        data.signature = map['Signature']
        data.labels = (SharedLabels.parse(map['Labels']) unless map['Labels'].nil?)
        data.size = map['Size']
        data.latest_version_size = map['LatestVersionSize']
        return data
      end
    end

    class SharedLabels
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Error Parser for ConflictingOperationException
    class ConflictingOperationException
      def self.parse(http_resp)
        data = Types::ConflictingOperationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for EntityAlreadyExistsException
    class EntityAlreadyExistsException
      def self.parse(http_resp)
        data = Types::EntityAlreadyExistsException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp)
        data = Types::LimitExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateLabels
    class CreateLabels
      def self.parse(http_resp)
        data = Types::CreateLabelsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for TooManyLabelsException
    class TooManyLabelsException
      def self.parse(http_resp)
        data = Types::TooManyLabelsException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateNotificationSubscription
    class CreateNotificationSubscription
      def self.parse(http_resp)
        data = Types::CreateNotificationSubscriptionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.subscription = (Subscription.parse(map['Subscription']) unless map['Subscription'].nil?)
        data
      end
    end

    class Subscription
      def self.parse(map)
        data = Types::Subscription.new
        data.subscription_id = map['SubscriptionId']
        data.end_point = map['EndPoint']
        data.protocol = map['Protocol']
        return data
      end
    end

    # Error Parser for TooManySubscriptionsException
    class TooManySubscriptionsException
      def self.parse(http_resp)
        data = Types::TooManySubscriptionsException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateUser
    class CreateUser
      def self.parse(http_resp)
        data = Types::CreateUserOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.user = (User.parse(map['User']) unless map['User'].nil?)
        data
      end
    end

    # Operation Parser for DeactivateUser
    class DeactivateUser
      def self.parse(http_resp)
        data = Types::DeactivateUserOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteComment
    class DeleteComment
      def self.parse(http_resp)
        data = Types::DeleteCommentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteCustomMetadata
    class DeleteCustomMetadata
      def self.parse(http_resp)
        data = Types::DeleteCustomMetadataOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteDocument
    class DeleteDocument
      def self.parse(http_resp)
        data = Types::DeleteDocumentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for ConcurrentModificationException
    class ConcurrentModificationException
      def self.parse(http_resp)
        data = Types::ConcurrentModificationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeleteFolder
    class DeleteFolder
      def self.parse(http_resp)
        data = Types::DeleteFolderOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteFolderContents
    class DeleteFolderContents
      def self.parse(http_resp)
        data = Types::DeleteFolderContentsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteLabels
    class DeleteLabels
      def self.parse(http_resp)
        data = Types::DeleteLabelsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteNotificationSubscription
    class DeleteNotificationSubscription
      def self.parse(http_resp)
        data = Types::DeleteNotificationSubscriptionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteUser
    class DeleteUser
      def self.parse(http_resp)
        data = Types::DeleteUserOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DescribeActivities
    class DescribeActivities
      def self.parse(http_resp)
        data = Types::DescribeActivitiesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.user_activities = (UserActivities.parse(map['UserActivities']) unless map['UserActivities'].nil?)
        data.marker = map['Marker']
        data
      end
    end

    class UserActivities
      def self.parse(list)
        data = []
        list.map do |value|
          data << Activity.parse(value) unless value.nil?
        end
        data
      end
    end

    class Activity
      def self.parse(map)
        data = Types::Activity.new
        data.type = map['Type']
        data.time_stamp = Time.at(map['TimeStamp'].to_i) if map['TimeStamp']
        data.is_indirect_activity = map['IsIndirectActivity']
        data.organization_id = map['OrganizationId']
        data.initiator = (UserMetadata.parse(map['Initiator']) unless map['Initiator'].nil?)
        data.participants = (Participants.parse(map['Participants']) unless map['Participants'].nil?)
        data.resource_metadata = (ResourceMetadata.parse(map['ResourceMetadata']) unless map['ResourceMetadata'].nil?)
        data.original_parent = (ResourceMetadata.parse(map['OriginalParent']) unless map['OriginalParent'].nil?)
        data.comment_metadata = (CommentMetadata.parse(map['CommentMetadata']) unless map['CommentMetadata'].nil?)
        return data
      end
    end

    class CommentMetadata
      def self.parse(map)
        data = Types::CommentMetadata.new
        data.comment_id = map['CommentId']
        data.contributor = (User.parse(map['Contributor']) unless map['Contributor'].nil?)
        data.created_timestamp = Time.at(map['CreatedTimestamp'].to_i) if map['CreatedTimestamp']
        data.comment_status = map['CommentStatus']
        data.recipient_id = map['RecipientId']
        return data
      end
    end

    class ResourceMetadata
      def self.parse(map)
        data = Types::ResourceMetadata.new
        data.type = map['Type']
        data.name = map['Name']
        data.original_name = map['OriginalName']
        data.id = map['Id']
        data.version_id = map['VersionId']
        data.owner = (UserMetadata.parse(map['Owner']) unless map['Owner'].nil?)
        data.parent_id = map['ParentId']
        return data
      end
    end

    class UserMetadata
      def self.parse(map)
        data = Types::UserMetadata.new
        data.id = map['Id']
        data.username = map['Username']
        data.given_name = map['GivenName']
        data.surname = map['Surname']
        data.email_address = map['EmailAddress']
        return data
      end
    end

    class Participants
      def self.parse(map)
        data = Types::Participants.new
        data.users = (UserMetadataList.parse(map['Users']) unless map['Users'].nil?)
        data.groups = (GroupMetadataList.parse(map['Groups']) unless map['Groups'].nil?)
        return data
      end
    end

    class GroupMetadataList
      def self.parse(list)
        data = []
        list.map do |value|
          data << GroupMetadata.parse(value) unless value.nil?
        end
        data
      end
    end

    class GroupMetadata
      def self.parse(map)
        data = Types::GroupMetadata.new
        data.id = map['Id']
        data.name = map['Name']
        return data
      end
    end

    class UserMetadataList
      def self.parse(list)
        data = []
        list.map do |value|
          data << UserMetadata.parse(value) unless value.nil?
        end
        data
      end
    end

    # Error Parser for InvalidArgumentException
    class InvalidArgumentException
      def self.parse(http_resp)
        data = Types::InvalidArgumentException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DescribeComments
    class DescribeComments
      def self.parse(http_resp)
        data = Types::DescribeCommentsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.comments = (CommentList.parse(map['Comments']) unless map['Comments'].nil?)
        data.marker = map['Marker']
        data
      end
    end

    class CommentList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Comment.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DescribeDocumentVersions
    class DescribeDocumentVersions
      def self.parse(http_resp)
        data = Types::DescribeDocumentVersionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.document_versions = (DocumentVersionMetadataList.parse(map['DocumentVersions']) unless map['DocumentVersions'].nil?)
        data.marker = map['Marker']
        data
      end
    end

    class DocumentVersionMetadataList
      def self.parse(list)
        data = []
        list.map do |value|
          data << DocumentVersionMetadata.parse(value) unless value.nil?
        end
        data
      end
    end

    class DocumentVersionMetadata
      def self.parse(map)
        data = Types::DocumentVersionMetadata.new
        data.id = map['Id']
        data.name = map['Name']
        data.content_type = map['ContentType']
        data.size = map['Size']
        data.signature = map['Signature']
        data.status = map['Status']
        data.created_timestamp = Time.at(map['CreatedTimestamp'].to_i) if map['CreatedTimestamp']
        data.modified_timestamp = Time.at(map['ModifiedTimestamp'].to_i) if map['ModifiedTimestamp']
        data.content_created_timestamp = Time.at(map['ContentCreatedTimestamp'].to_i) if map['ContentCreatedTimestamp']
        data.content_modified_timestamp = Time.at(map['ContentModifiedTimestamp'].to_i) if map['ContentModifiedTimestamp']
        data.creator_id = map['CreatorId']
        data.thumbnail = (DocumentThumbnailUrlMap.parse(map['Thumbnail']) unless map['Thumbnail'].nil?)
        data.source = (DocumentSourceUrlMap.parse(map['Source']) unless map['Source'].nil?)
        return data
      end
    end

    class DocumentSourceUrlMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class DocumentThumbnailUrlMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DescribeFolderContents
    class DescribeFolderContents
      def self.parse(http_resp)
        data = Types::DescribeFolderContentsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.folders = (FolderMetadataList.parse(map['Folders']) unless map['Folders'].nil?)
        data.documents = (DocumentMetadataList.parse(map['Documents']) unless map['Documents'].nil?)
        data.marker = map['Marker']
        data
      end
    end

    class DocumentMetadataList
      def self.parse(list)
        data = []
        list.map do |value|
          data << DocumentMetadata.parse(value) unless value.nil?
        end
        data
      end
    end

    class DocumentMetadata
      def self.parse(map)
        data = Types::DocumentMetadata.new
        data.id = map['Id']
        data.creator_id = map['CreatorId']
        data.parent_folder_id = map['ParentFolderId']
        data.created_timestamp = Time.at(map['CreatedTimestamp'].to_i) if map['CreatedTimestamp']
        data.modified_timestamp = Time.at(map['ModifiedTimestamp'].to_i) if map['ModifiedTimestamp']
        data.latest_version_metadata = (DocumentVersionMetadata.parse(map['LatestVersionMetadata']) unless map['LatestVersionMetadata'].nil?)
        data.resource_state = map['ResourceState']
        data.labels = (SharedLabels.parse(map['Labels']) unless map['Labels'].nil?)
        return data
      end
    end

    class FolderMetadataList
      def self.parse(list)
        data = []
        list.map do |value|
          data << FolderMetadata.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DescribeGroups
    class DescribeGroups
      def self.parse(http_resp)
        data = Types::DescribeGroupsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.groups = (GroupMetadataList.parse(map['Groups']) unless map['Groups'].nil?)
        data.marker = map['Marker']
        data
      end
    end

    # Operation Parser for DescribeNotificationSubscriptions
    class DescribeNotificationSubscriptions
      def self.parse(http_resp)
        data = Types::DescribeNotificationSubscriptionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.subscriptions = (SubscriptionList.parse(map['Subscriptions']) unless map['Subscriptions'].nil?)
        data.marker = map['Marker']
        data
      end
    end

    class SubscriptionList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Subscription.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DescribeResourcePermissions
    class DescribeResourcePermissions
      def self.parse(http_resp)
        data = Types::DescribeResourcePermissionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.principals = (PrincipalList.parse(map['Principals']) unless map['Principals'].nil?)
        data.marker = map['Marker']
        data
      end
    end

    class PrincipalList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Principal.parse(value) unless value.nil?
        end
        data
      end
    end

    class Principal
      def self.parse(map)
        data = Types::Principal.new
        data.id = map['Id']
        data.type = map['Type']
        data.roles = (PermissionInfoList.parse(map['Roles']) unless map['Roles'].nil?)
        return data
      end
    end

    class PermissionInfoList
      def self.parse(list)
        data = []
        list.map do |value|
          data << PermissionInfo.parse(value) unless value.nil?
        end
        data
      end
    end

    class PermissionInfo
      def self.parse(map)
        data = Types::PermissionInfo.new
        data.role = map['Role']
        data.type = map['Type']
        return data
      end
    end

    # Operation Parser for DescribeRootFolders
    class DescribeRootFolders
      def self.parse(http_resp)
        data = Types::DescribeRootFoldersOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.folders = (FolderMetadataList.parse(map['Folders']) unless map['Folders'].nil?)
        data.marker = map['Marker']
        data
      end
    end

    # Operation Parser for DescribeUsers
    class DescribeUsers
      def self.parse(http_resp)
        data = Types::DescribeUsersOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.users = (OrganizationUserList.parse(map['Users']) unless map['Users'].nil?)
        data.total_number_of_users = map['TotalNumberOfUsers']
        data.marker = map['Marker']
        data
      end
    end

    class OrganizationUserList
      def self.parse(list)
        data = []
        list.map do |value|
          data << User.parse(value) unless value.nil?
        end
        data
      end
    end

    # Error Parser for RequestedEntityTooLargeException
    class RequestedEntityTooLargeException
      def self.parse(http_resp)
        data = Types::RequestedEntityTooLargeException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for GetCurrentUser
    class GetCurrentUser
      def self.parse(http_resp)
        data = Types::GetCurrentUserOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.user = (User.parse(map['User']) unless map['User'].nil?)
        data
      end
    end

    # Operation Parser for GetDocument
    class GetDocument
      def self.parse(http_resp)
        data = Types::GetDocumentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.metadata = (DocumentMetadata.parse(map['Metadata']) unless map['Metadata'].nil?)
        data.custom_metadata = (CustomMetadataMap.parse(map['CustomMetadata']) unless map['CustomMetadata'].nil?)
        data
      end
    end

    class CustomMetadataMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Error Parser for InvalidPasswordException
    class InvalidPasswordException
      def self.parse(http_resp)
        data = Types::InvalidPasswordException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for GetDocumentPath
    class GetDocumentPath
      def self.parse(http_resp)
        data = Types::GetDocumentPathOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.path = (ResourcePath.parse(map['Path']) unless map['Path'].nil?)
        data
      end
    end

    class ResourcePath
      def self.parse(map)
        data = Types::ResourcePath.new
        data.components = (ResourcePathComponentList.parse(map['Components']) unless map['Components'].nil?)
        return data
      end
    end

    class ResourcePathComponentList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ResourcePathComponent.parse(value) unless value.nil?
        end
        data
      end
    end

    class ResourcePathComponent
      def self.parse(map)
        data = Types::ResourcePathComponent.new
        data.id = map['Id']
        data.name = map['Name']
        return data
      end
    end

    # Operation Parser for GetDocumentVersion
    class GetDocumentVersion
      def self.parse(http_resp)
        data = Types::GetDocumentVersionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.metadata = (DocumentVersionMetadata.parse(map['Metadata']) unless map['Metadata'].nil?)
        data.custom_metadata = (CustomMetadataMap.parse(map['CustomMetadata']) unless map['CustomMetadata'].nil?)
        data
      end
    end

    # Operation Parser for GetFolder
    class GetFolder
      def self.parse(http_resp)
        data = Types::GetFolderOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.metadata = (FolderMetadata.parse(map['Metadata']) unless map['Metadata'].nil?)
        data.custom_metadata = (CustomMetadataMap.parse(map['CustomMetadata']) unless map['CustomMetadata'].nil?)
        data
      end
    end

    # Operation Parser for GetFolderPath
    class GetFolderPath
      def self.parse(http_resp)
        data = Types::GetFolderPathOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.path = (ResourcePath.parse(map['Path']) unless map['Path'].nil?)
        data
      end
    end

    # Operation Parser for GetResources
    class GetResources
      def self.parse(http_resp)
        data = Types::GetResourcesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.folders = (FolderMetadataList.parse(map['Folders']) unless map['Folders'].nil?)
        data.documents = (DocumentMetadataList.parse(map['Documents']) unless map['Documents'].nil?)
        data.marker = map['Marker']
        data
      end
    end

    # Operation Parser for InitiateDocumentVersionUpload
    class InitiateDocumentVersionUpload
      def self.parse(http_resp)
        data = Types::InitiateDocumentVersionUploadOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.metadata = (DocumentMetadata.parse(map['Metadata']) unless map['Metadata'].nil?)
        data.upload_metadata = (UploadMetadata.parse(map['UploadMetadata']) unless map['UploadMetadata'].nil?)
        data
      end
    end

    class UploadMetadata
      def self.parse(map)
        data = Types::UploadMetadata.new
        data.upload_url = map['UploadUrl']
        data.signed_headers = (SignedHeaderMap.parse(map['SignedHeaders']) unless map['SignedHeaders'].nil?)
        return data
      end
    end

    class SignedHeaderMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Error Parser for ResourceAlreadyCheckedOutException
    class ResourceAlreadyCheckedOutException
      def self.parse(http_resp)
        data = Types::ResourceAlreadyCheckedOutException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for DraftUploadOutOfSyncException
    class DraftUploadOutOfSyncException
      def self.parse(http_resp)
        data = Types::DraftUploadOutOfSyncException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for StorageLimitExceededException
    class StorageLimitExceededException
      def self.parse(http_resp)
        data = Types::StorageLimitExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for StorageLimitWillExceedException
    class StorageLimitWillExceedException
      def self.parse(http_resp)
        data = Types::StorageLimitWillExceedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for RemoveAllResourcePermissions
    class RemoveAllResourcePermissions
      def self.parse(http_resp)
        data = Types::RemoveAllResourcePermissionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for RemoveResourcePermission
    class RemoveResourcePermission
      def self.parse(http_resp)
        data = Types::RemoveResourcePermissionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateDocument
    class UpdateDocument
      def self.parse(http_resp)
        data = Types::UpdateDocumentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateDocumentVersion
    class UpdateDocumentVersion
      def self.parse(http_resp)
        data = Types::UpdateDocumentVersionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for InvalidOperationException
    class InvalidOperationException
      def self.parse(http_resp)
        data = Types::InvalidOperationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for UpdateFolder
    class UpdateFolder
      def self.parse(http_resp)
        data = Types::UpdateFolderOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateUser
    class UpdateUser
      def self.parse(http_resp)
        data = Types::UpdateUserOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.user = (User.parse(map['User']) unless map['User'].nil?)
        data
      end
    end

    # Error Parser for IllegalUserStateException
    class IllegalUserStateException
      def self.parse(http_resp)
        data = Types::IllegalUserStateException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for DeactivatingLastSystemUserException
    class DeactivatingLastSystemUserException
      def self.parse(http_resp)
        data = Types::DeactivatingLastSystemUserException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.code = map['Code']
        data
      end
    end
  end
end
