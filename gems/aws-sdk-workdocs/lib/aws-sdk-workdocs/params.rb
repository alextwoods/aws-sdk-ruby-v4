# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::WorkDocs
  module Params

    module AbortDocumentVersionUploadInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AbortDocumentVersionUploadInput, context: context)
        type = Types::AbortDocumentVersionUploadInput.new
        type.authentication_token = params[:authentication_token]
        type.document_id = params[:document_id]
        type.version_id = params[:version_id]
        type
      end
    end

    module AbortDocumentVersionUploadOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AbortDocumentVersionUploadOutput, context: context)
        type = Types::AbortDocumentVersionUploadOutput.new
        type
      end
    end

    module ActivateUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActivateUserInput, context: context)
        type = Types::ActivateUserInput.new
        type.user_id = params[:user_id]
        type.authentication_token = params[:authentication_token]
        type
      end
    end

    module ActivateUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActivateUserOutput, context: context)
        type = Types::ActivateUserOutput.new
        type.user = User.build(params[:user], context: "#{context}[:user]") unless params[:user].nil?
        type
      end
    end

    module Activity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Activity, context: context)
        type = Types::Activity.new
        type.type = params[:type]
        type.time_stamp = params[:time_stamp]
        type.is_indirect_activity = params[:is_indirect_activity]
        type.organization_id = params[:organization_id]
        type.initiator = UserMetadata.build(params[:initiator], context: "#{context}[:initiator]") unless params[:initiator].nil?
        type.participants = Participants.build(params[:participants], context: "#{context}[:participants]") unless params[:participants].nil?
        type.resource_metadata = ResourceMetadata.build(params[:resource_metadata], context: "#{context}[:resource_metadata]") unless params[:resource_metadata].nil?
        type.original_parent = ResourceMetadata.build(params[:original_parent], context: "#{context}[:original_parent]") unless params[:original_parent].nil?
        type.comment_metadata = CommentMetadata.build(params[:comment_metadata], context: "#{context}[:comment_metadata]") unless params[:comment_metadata].nil?
        type
      end
    end

    module AddResourcePermissionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddResourcePermissionsInput, context: context)
        type = Types::AddResourcePermissionsInput.new
        type.authentication_token = params[:authentication_token]
        type.resource_id = params[:resource_id]
        type.principals = SharePrincipalList.build(params[:principals], context: "#{context}[:principals]") unless params[:principals].nil?
        type.notification_options = NotificationOptions.build(params[:notification_options], context: "#{context}[:notification_options]") unless params[:notification_options].nil?
        type
      end
    end

    module AddResourcePermissionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddResourcePermissionsOutput, context: context)
        type = Types::AddResourcePermissionsOutput.new
        type.share_results = ShareResultsList.build(params[:share_results], context: "#{context}[:share_results]") unless params[:share_results].nil?
        type
      end
    end

    module Comment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Comment, context: context)
        type = Types::Comment.new
        type.comment_id = params[:comment_id]
        type.parent_id = params[:parent_id]
        type.thread_id = params[:thread_id]
        type.text = params[:text]
        type.contributor = User.build(params[:contributor], context: "#{context}[:contributor]") unless params[:contributor].nil?
        type.created_timestamp = params[:created_timestamp]
        type.status = params[:status]
        type.visibility = params[:visibility]
        type.recipient_id = params[:recipient_id]
        type
      end
    end

    module CommentList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Comment.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CommentMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CommentMetadata, context: context)
        type = Types::CommentMetadata.new
        type.comment_id = params[:comment_id]
        type.contributor = User.build(params[:contributor], context: "#{context}[:contributor]") unless params[:contributor].nil?
        type.created_timestamp = params[:created_timestamp]
        type.comment_status = params[:comment_status]
        type.recipient_id = params[:recipient_id]
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

    module ConflictingOperationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictingOperationException, context: context)
        type = Types::ConflictingOperationException.new
        type.message = params[:message]
        type
      end
    end

    module CreateCommentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCommentInput, context: context)
        type = Types::CreateCommentInput.new
        type.authentication_token = params[:authentication_token]
        type.document_id = params[:document_id]
        type.version_id = params[:version_id]
        type.parent_id = params[:parent_id]
        type.thread_id = params[:thread_id]
        type.text = params[:text]
        type.visibility = params[:visibility]
        type.notify_collaborators = params[:notify_collaborators]
        type
      end
    end

    module CreateCommentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCommentOutput, context: context)
        type = Types::CreateCommentOutput.new
        type.comment = Comment.build(params[:comment], context: "#{context}[:comment]") unless params[:comment].nil?
        type
      end
    end

    module CreateCustomMetadataInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCustomMetadataInput, context: context)
        type = Types::CreateCustomMetadataInput.new
        type.authentication_token = params[:authentication_token]
        type.resource_id = params[:resource_id]
        type.version_id = params[:version_id]
        type.custom_metadata = CustomMetadataMap.build(params[:custom_metadata], context: "#{context}[:custom_metadata]") unless params[:custom_metadata].nil?
        type
      end
    end

    module CreateCustomMetadataOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCustomMetadataOutput, context: context)
        type = Types::CreateCustomMetadataOutput.new
        type
      end
    end

    module CreateFolderInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFolderInput, context: context)
        type = Types::CreateFolderInput.new
        type.authentication_token = params[:authentication_token]
        type.name = params[:name]
        type.parent_folder_id = params[:parent_folder_id]
        type
      end
    end

    module CreateFolderOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFolderOutput, context: context)
        type = Types::CreateFolderOutput.new
        type.metadata = FolderMetadata.build(params[:metadata], context: "#{context}[:metadata]") unless params[:metadata].nil?
        type
      end
    end

    module CreateLabelsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLabelsInput, context: context)
        type = Types::CreateLabelsInput.new
        type.resource_id = params[:resource_id]
        type.labels = SharedLabels.build(params[:labels], context: "#{context}[:labels]") unless params[:labels].nil?
        type.authentication_token = params[:authentication_token]
        type
      end
    end

    module CreateLabelsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLabelsOutput, context: context)
        type = Types::CreateLabelsOutput.new
        type
      end
    end

    module CreateNotificationSubscriptionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateNotificationSubscriptionInput, context: context)
        type = Types::CreateNotificationSubscriptionInput.new
        type.organization_id = params[:organization_id]
        type.endpoint = params[:endpoint]
        type.protocol = params[:protocol]
        type.subscription_type = params[:subscription_type]
        type
      end
    end

    module CreateNotificationSubscriptionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateNotificationSubscriptionOutput, context: context)
        type = Types::CreateNotificationSubscriptionOutput.new
        type.subscription = Subscription.build(params[:subscription], context: "#{context}[:subscription]") unless params[:subscription].nil?
        type
      end
    end

    module CreateUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateUserInput, context: context)
        type = Types::CreateUserInput.new
        type.organization_id = params[:organization_id]
        type.username = params[:username]
        type.email_address = params[:email_address]
        type.given_name = params[:given_name]
        type.surname = params[:surname]
        type.password = params[:password]
        type.time_zone_id = params[:time_zone_id]
        type.storage_rule = StorageRuleType.build(params[:storage_rule], context: "#{context}[:storage_rule]") unless params[:storage_rule].nil?
        type.authentication_token = params[:authentication_token]
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

    module CustomMetadataKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CustomMetadataLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomMetadataLimitExceededException, context: context)
        type = Types::CustomMetadataLimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module CustomMetadataMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module DeactivateUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeactivateUserInput, context: context)
        type = Types::DeactivateUserInput.new
        type.user_id = params[:user_id]
        type.authentication_token = params[:authentication_token]
        type
      end
    end

    module DeactivateUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeactivateUserOutput, context: context)
        type = Types::DeactivateUserOutput.new
        type
      end
    end

    module DeactivatingLastSystemUserException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeactivatingLastSystemUserException, context: context)
        type = Types::DeactivatingLastSystemUserException.new
        type.message = params[:message]
        type.code = params[:code]
        type
      end
    end

    module DeleteCommentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCommentInput, context: context)
        type = Types::DeleteCommentInput.new
        type.authentication_token = params[:authentication_token]
        type.document_id = params[:document_id]
        type.version_id = params[:version_id]
        type.comment_id = params[:comment_id]
        type
      end
    end

    module DeleteCommentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCommentOutput, context: context)
        type = Types::DeleteCommentOutput.new
        type
      end
    end

    module DeleteCustomMetadataInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCustomMetadataInput, context: context)
        type = Types::DeleteCustomMetadataInput.new
        type.authentication_token = params[:authentication_token]
        type.resource_id = params[:resource_id]
        type.version_id = params[:version_id]
        type.keys = CustomMetadataKeyList.build(params[:keys], context: "#{context}[:keys]") unless params[:keys].nil?
        type.delete_all = params[:delete_all]
        type
      end
    end

    module DeleteCustomMetadataOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCustomMetadataOutput, context: context)
        type = Types::DeleteCustomMetadataOutput.new
        type
      end
    end

    module DeleteDocumentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDocumentInput, context: context)
        type = Types::DeleteDocumentInput.new
        type.authentication_token = params[:authentication_token]
        type.document_id = params[:document_id]
        type
      end
    end

    module DeleteDocumentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDocumentOutput, context: context)
        type = Types::DeleteDocumentOutput.new
        type
      end
    end

    module DeleteFolderContentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFolderContentsInput, context: context)
        type = Types::DeleteFolderContentsInput.new
        type.authentication_token = params[:authentication_token]
        type.folder_id = params[:folder_id]
        type
      end
    end

    module DeleteFolderContentsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFolderContentsOutput, context: context)
        type = Types::DeleteFolderContentsOutput.new
        type
      end
    end

    module DeleteFolderInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFolderInput, context: context)
        type = Types::DeleteFolderInput.new
        type.authentication_token = params[:authentication_token]
        type.folder_id = params[:folder_id]
        type
      end
    end

    module DeleteFolderOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFolderOutput, context: context)
        type = Types::DeleteFolderOutput.new
        type
      end
    end

    module DeleteLabelsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLabelsInput, context: context)
        type = Types::DeleteLabelsInput.new
        type.resource_id = params[:resource_id]
        type.authentication_token = params[:authentication_token]
        type.labels = SharedLabels.build(params[:labels], context: "#{context}[:labels]") unless params[:labels].nil?
        type.delete_all = params[:delete_all]
        type
      end
    end

    module DeleteLabelsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLabelsOutput, context: context)
        type = Types::DeleteLabelsOutput.new
        type
      end
    end

    module DeleteNotificationSubscriptionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteNotificationSubscriptionInput, context: context)
        type = Types::DeleteNotificationSubscriptionInput.new
        type.subscription_id = params[:subscription_id]
        type.organization_id = params[:organization_id]
        type
      end
    end

    module DeleteNotificationSubscriptionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteNotificationSubscriptionOutput, context: context)
        type = Types::DeleteNotificationSubscriptionOutput.new
        type
      end
    end

    module DeleteUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteUserInput, context: context)
        type = Types::DeleteUserInput.new
        type.authentication_token = params[:authentication_token]
        type.user_id = params[:user_id]
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

    module DescribeActivitiesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeActivitiesInput, context: context)
        type = Types::DescribeActivitiesInput.new
        type.authentication_token = params[:authentication_token]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.organization_id = params[:organization_id]
        type.activity_types = params[:activity_types]
        type.resource_id = params[:resource_id]
        type.user_id = params[:user_id]
        type.include_indirect_activities = params[:include_indirect_activities]
        type.limit = params[:limit]
        type.marker = params[:marker]
        type
      end
    end

    module DescribeActivitiesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeActivitiesOutput, context: context)
        type = Types::DescribeActivitiesOutput.new
        type.user_activities = UserActivities.build(params[:user_activities], context: "#{context}[:user_activities]") unless params[:user_activities].nil?
        type.marker = params[:marker]
        type
      end
    end

    module DescribeCommentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCommentsInput, context: context)
        type = Types::DescribeCommentsInput.new
        type.authentication_token = params[:authentication_token]
        type.document_id = params[:document_id]
        type.version_id = params[:version_id]
        type.limit = params[:limit]
        type.marker = params[:marker]
        type
      end
    end

    module DescribeCommentsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCommentsOutput, context: context)
        type = Types::DescribeCommentsOutput.new
        type.comments = CommentList.build(params[:comments], context: "#{context}[:comments]") unless params[:comments].nil?
        type.marker = params[:marker]
        type
      end
    end

    module DescribeDocumentVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDocumentVersionsInput, context: context)
        type = Types::DescribeDocumentVersionsInput.new
        type.authentication_token = params[:authentication_token]
        type.document_id = params[:document_id]
        type.marker = params[:marker]
        type.limit = params[:limit]
        type.include = params[:include]
        type.fields = params[:fields]
        type
      end
    end

    module DescribeDocumentVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDocumentVersionsOutput, context: context)
        type = Types::DescribeDocumentVersionsOutput.new
        type.document_versions = DocumentVersionMetadataList.build(params[:document_versions], context: "#{context}[:document_versions]") unless params[:document_versions].nil?
        type.marker = params[:marker]
        type
      end
    end

    module DescribeFolderContentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFolderContentsInput, context: context)
        type = Types::DescribeFolderContentsInput.new
        type.authentication_token = params[:authentication_token]
        type.folder_id = params[:folder_id]
        type.sort = params[:sort]
        type.order = params[:order]
        type.limit = params[:limit]
        type.marker = params[:marker]
        type.type = params[:type]
        type.include = params[:include]
        type
      end
    end

    module DescribeFolderContentsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFolderContentsOutput, context: context)
        type = Types::DescribeFolderContentsOutput.new
        type.folders = FolderMetadataList.build(params[:folders], context: "#{context}[:folders]") unless params[:folders].nil?
        type.documents = DocumentMetadataList.build(params[:documents], context: "#{context}[:documents]") unless params[:documents].nil?
        type.marker = params[:marker]
        type
      end
    end

    module DescribeGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeGroupsInput, context: context)
        type = Types::DescribeGroupsInput.new
        type.authentication_token = params[:authentication_token]
        type.search_query = params[:search_query]
        type.organization_id = params[:organization_id]
        type.marker = params[:marker]
        type.limit = params[:limit]
        type
      end
    end

    module DescribeGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeGroupsOutput, context: context)
        type = Types::DescribeGroupsOutput.new
        type.groups = GroupMetadataList.build(params[:groups], context: "#{context}[:groups]") unless params[:groups].nil?
        type.marker = params[:marker]
        type
      end
    end

    module DescribeNotificationSubscriptionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeNotificationSubscriptionsInput, context: context)
        type = Types::DescribeNotificationSubscriptionsInput.new
        type.organization_id = params[:organization_id]
        type.marker = params[:marker]
        type.limit = params[:limit]
        type
      end
    end

    module DescribeNotificationSubscriptionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeNotificationSubscriptionsOutput, context: context)
        type = Types::DescribeNotificationSubscriptionsOutput.new
        type.subscriptions = SubscriptionList.build(params[:subscriptions], context: "#{context}[:subscriptions]") unless params[:subscriptions].nil?
        type.marker = params[:marker]
        type
      end
    end

    module DescribeResourcePermissionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeResourcePermissionsInput, context: context)
        type = Types::DescribeResourcePermissionsInput.new
        type.authentication_token = params[:authentication_token]
        type.resource_id = params[:resource_id]
        type.principal_id = params[:principal_id]
        type.limit = params[:limit]
        type.marker = params[:marker]
        type
      end
    end

    module DescribeResourcePermissionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeResourcePermissionsOutput, context: context)
        type = Types::DescribeResourcePermissionsOutput.new
        type.principals = PrincipalList.build(params[:principals], context: "#{context}[:principals]") unless params[:principals].nil?
        type.marker = params[:marker]
        type
      end
    end

    module DescribeRootFoldersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRootFoldersInput, context: context)
        type = Types::DescribeRootFoldersInput.new
        type.authentication_token = params[:authentication_token]
        type.limit = params[:limit]
        type.marker = params[:marker]
        type
      end
    end

    module DescribeRootFoldersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRootFoldersOutput, context: context)
        type = Types::DescribeRootFoldersOutput.new
        type.folders = FolderMetadataList.build(params[:folders], context: "#{context}[:folders]") unless params[:folders].nil?
        type.marker = params[:marker]
        type
      end
    end

    module DescribeUsersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeUsersInput, context: context)
        type = Types::DescribeUsersInput.new
        type.authentication_token = params[:authentication_token]
        type.organization_id = params[:organization_id]
        type.user_ids = params[:user_ids]
        type.query = params[:query]
        type.include = params[:include]
        type.order = params[:order]
        type.sort = params[:sort]
        type.marker = params[:marker]
        type.limit = params[:limit]
        type.fields = params[:fields]
        type
      end
    end

    module DescribeUsersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeUsersOutput, context: context)
        type = Types::DescribeUsersOutput.new
        type.users = OrganizationUserList.build(params[:users], context: "#{context}[:users]") unless params[:users].nil?
        type.total_number_of_users = params[:total_number_of_users]
        type.marker = params[:marker]
        type
      end
    end

    module DocumentLockedForCommentsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DocumentLockedForCommentsException, context: context)
        type = Types::DocumentLockedForCommentsException.new
        type.message = params[:message]
        type
      end
    end

    module DocumentMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DocumentMetadata, context: context)
        type = Types::DocumentMetadata.new
        type.id = params[:id]
        type.creator_id = params[:creator_id]
        type.parent_folder_id = params[:parent_folder_id]
        type.created_timestamp = params[:created_timestamp]
        type.modified_timestamp = params[:modified_timestamp]
        type.latest_version_metadata = DocumentVersionMetadata.build(params[:latest_version_metadata], context: "#{context}[:latest_version_metadata]") unless params[:latest_version_metadata].nil?
        type.resource_state = params[:resource_state]
        type.labels = SharedLabels.build(params[:labels], context: "#{context}[:labels]") unless params[:labels].nil?
        type
      end
    end

    module DocumentMetadataList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DocumentMetadata.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DocumentSourceUrlMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module DocumentThumbnailUrlMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module DocumentVersionMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DocumentVersionMetadata, context: context)
        type = Types::DocumentVersionMetadata.new
        type.id = params[:id]
        type.name = params[:name]
        type.content_type = params[:content_type]
        type.size = params[:size]
        type.signature = params[:signature]
        type.status = params[:status]
        type.created_timestamp = params[:created_timestamp]
        type.modified_timestamp = params[:modified_timestamp]
        type.content_created_timestamp = params[:content_created_timestamp]
        type.content_modified_timestamp = params[:content_modified_timestamp]
        type.creator_id = params[:creator_id]
        type.thumbnail = DocumentThumbnailUrlMap.build(params[:thumbnail], context: "#{context}[:thumbnail]") unless params[:thumbnail].nil?
        type.source = DocumentSourceUrlMap.build(params[:source], context: "#{context}[:source]") unless params[:source].nil?
        type
      end
    end

    module DocumentVersionMetadataList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DocumentVersionMetadata.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DraftUploadOutOfSyncException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DraftUploadOutOfSyncException, context: context)
        type = Types::DraftUploadOutOfSyncException.new
        type.message = params[:message]
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

    module EntityIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module EntityNotExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EntityNotExistsException, context: context)
        type = Types::EntityNotExistsException.new
        type.message = params[:message]
        type.entity_ids = EntityIdList.build(params[:entity_ids], context: "#{context}[:entity_ids]") unless params[:entity_ids].nil?
        type
      end
    end

    module FailedDependencyException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FailedDependencyException, context: context)
        type = Types::FailedDependencyException.new
        type.message = params[:message]
        type
      end
    end

    module FolderMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FolderMetadata, context: context)
        type = Types::FolderMetadata.new
        type.id = params[:id]
        type.name = params[:name]
        type.creator_id = params[:creator_id]
        type.parent_folder_id = params[:parent_folder_id]
        type.created_timestamp = params[:created_timestamp]
        type.modified_timestamp = params[:modified_timestamp]
        type.resource_state = params[:resource_state]
        type.signature = params[:signature]
        type.labels = SharedLabels.build(params[:labels], context: "#{context}[:labels]") unless params[:labels].nil?
        type.size = params[:size]
        type.latest_version_size = params[:latest_version_size]
        type
      end
    end

    module FolderMetadataList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FolderMetadata.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GetCurrentUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCurrentUserInput, context: context)
        type = Types::GetCurrentUserInput.new
        type.authentication_token = params[:authentication_token]
        type
      end
    end

    module GetCurrentUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCurrentUserOutput, context: context)
        type = Types::GetCurrentUserOutput.new
        type.user = User.build(params[:user], context: "#{context}[:user]") unless params[:user].nil?
        type
      end
    end

    module GetDocumentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDocumentInput, context: context)
        type = Types::GetDocumentInput.new
        type.authentication_token = params[:authentication_token]
        type.document_id = params[:document_id]
        type.include_custom_metadata = params[:include_custom_metadata]
        type
      end
    end

    module GetDocumentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDocumentOutput, context: context)
        type = Types::GetDocumentOutput.new
        type.metadata = DocumentMetadata.build(params[:metadata], context: "#{context}[:metadata]") unless params[:metadata].nil?
        type.custom_metadata = CustomMetadataMap.build(params[:custom_metadata], context: "#{context}[:custom_metadata]") unless params[:custom_metadata].nil?
        type
      end
    end

    module GetDocumentPathInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDocumentPathInput, context: context)
        type = Types::GetDocumentPathInput.new
        type.authentication_token = params[:authentication_token]
        type.document_id = params[:document_id]
        type.limit = params[:limit]
        type.fields = params[:fields]
        type.marker = params[:marker]
        type
      end
    end

    module GetDocumentPathOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDocumentPathOutput, context: context)
        type = Types::GetDocumentPathOutput.new
        type.path = ResourcePath.build(params[:path], context: "#{context}[:path]") unless params[:path].nil?
        type
      end
    end

    module GetDocumentVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDocumentVersionInput, context: context)
        type = Types::GetDocumentVersionInput.new
        type.authentication_token = params[:authentication_token]
        type.document_id = params[:document_id]
        type.version_id = params[:version_id]
        type.fields = params[:fields]
        type.include_custom_metadata = params[:include_custom_metadata]
        type
      end
    end

    module GetDocumentVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDocumentVersionOutput, context: context)
        type = Types::GetDocumentVersionOutput.new
        type.metadata = DocumentVersionMetadata.build(params[:metadata], context: "#{context}[:metadata]") unless params[:metadata].nil?
        type.custom_metadata = CustomMetadataMap.build(params[:custom_metadata], context: "#{context}[:custom_metadata]") unless params[:custom_metadata].nil?
        type
      end
    end

    module GetFolderInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFolderInput, context: context)
        type = Types::GetFolderInput.new
        type.authentication_token = params[:authentication_token]
        type.folder_id = params[:folder_id]
        type.include_custom_metadata = params[:include_custom_metadata]
        type
      end
    end

    module GetFolderOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFolderOutput, context: context)
        type = Types::GetFolderOutput.new
        type.metadata = FolderMetadata.build(params[:metadata], context: "#{context}[:metadata]") unless params[:metadata].nil?
        type.custom_metadata = CustomMetadataMap.build(params[:custom_metadata], context: "#{context}[:custom_metadata]") unless params[:custom_metadata].nil?
        type
      end
    end

    module GetFolderPathInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFolderPathInput, context: context)
        type = Types::GetFolderPathInput.new
        type.authentication_token = params[:authentication_token]
        type.folder_id = params[:folder_id]
        type.limit = params[:limit]
        type.fields = params[:fields]
        type.marker = params[:marker]
        type
      end
    end

    module GetFolderPathOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFolderPathOutput, context: context)
        type = Types::GetFolderPathOutput.new
        type.path = ResourcePath.build(params[:path], context: "#{context}[:path]") unless params[:path].nil?
        type
      end
    end

    module GetResourcesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResourcesInput, context: context)
        type = Types::GetResourcesInput.new
        type.authentication_token = params[:authentication_token]
        type.user_id = params[:user_id]
        type.collection_type = params[:collection_type]
        type.limit = params[:limit]
        type.marker = params[:marker]
        type
      end
    end

    module GetResourcesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResourcesOutput, context: context)
        type = Types::GetResourcesOutput.new
        type.folders = FolderMetadataList.build(params[:folders], context: "#{context}[:folders]") unless params[:folders].nil?
        type.documents = DocumentMetadataList.build(params[:documents], context: "#{context}[:documents]") unless params[:documents].nil?
        type.marker = params[:marker]
        type
      end
    end

    module GroupMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GroupMetadata, context: context)
        type = Types::GroupMetadata.new
        type.id = params[:id]
        type.name = params[:name]
        type
      end
    end

    module GroupMetadataList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GroupMetadata.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module IllegalUserStateException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IllegalUserStateException, context: context)
        type = Types::IllegalUserStateException.new
        type.message = params[:message]
        type
      end
    end

    module InitiateDocumentVersionUploadInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InitiateDocumentVersionUploadInput, context: context)
        type = Types::InitiateDocumentVersionUploadInput.new
        type.authentication_token = params[:authentication_token]
        type.id = params[:id]
        type.name = params[:name]
        type.content_created_timestamp = params[:content_created_timestamp]
        type.content_modified_timestamp = params[:content_modified_timestamp]
        type.content_type = params[:content_type]
        type.document_size_in_bytes = params[:document_size_in_bytes]
        type.parent_folder_id = params[:parent_folder_id]
        type
      end
    end

    module InitiateDocumentVersionUploadOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InitiateDocumentVersionUploadOutput, context: context)
        type = Types::InitiateDocumentVersionUploadOutput.new
        type.metadata = DocumentMetadata.build(params[:metadata], context: "#{context}[:metadata]") unless params[:metadata].nil?
        type.upload_metadata = UploadMetadata.build(params[:upload_metadata], context: "#{context}[:upload_metadata]") unless params[:upload_metadata].nil?
        type
      end
    end

    module InvalidArgumentException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidArgumentException, context: context)
        type = Types::InvalidArgumentException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidCommentOperationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidCommentOperationException, context: context)
        type = Types::InvalidCommentOperationException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidOperationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidOperationException, context: context)
        type = Types::InvalidOperationException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidPasswordException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidPasswordException, context: context)
        type = Types::InvalidPasswordException.new
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

    module NotificationOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotificationOptions, context: context)
        type = Types::NotificationOptions.new
        type.send_email = params[:send_email]
        type.email_message = params[:email_message]
        type
      end
    end

    module OrganizationUserList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << User.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Participants
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Participants, context: context)
        type = Types::Participants.new
        type.users = UserMetadataList.build(params[:users], context: "#{context}[:users]") unless params[:users].nil?
        type.groups = GroupMetadataList.build(params[:groups], context: "#{context}[:groups]") unless params[:groups].nil?
        type
      end
    end

    module PermissionInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PermissionInfo, context: context)
        type = Types::PermissionInfo.new
        type.role = params[:role]
        type.type = params[:type]
        type
      end
    end

    module PermissionInfoList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PermissionInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Principal
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Principal, context: context)
        type = Types::Principal.new
        type.id = params[:id]
        type.type = params[:type]
        type.roles = PermissionInfoList.build(params[:roles], context: "#{context}[:roles]") unless params[:roles].nil?
        type
      end
    end

    module PrincipalList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Principal.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ProhibitedStateException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProhibitedStateException, context: context)
        type = Types::ProhibitedStateException.new
        type.message = params[:message]
        type
      end
    end

    module RemoveAllResourcePermissionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveAllResourcePermissionsInput, context: context)
        type = Types::RemoveAllResourcePermissionsInput.new
        type.authentication_token = params[:authentication_token]
        type.resource_id = params[:resource_id]
        type
      end
    end

    module RemoveAllResourcePermissionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveAllResourcePermissionsOutput, context: context)
        type = Types::RemoveAllResourcePermissionsOutput.new
        type
      end
    end

    module RemoveResourcePermissionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveResourcePermissionInput, context: context)
        type = Types::RemoveResourcePermissionInput.new
        type.authentication_token = params[:authentication_token]
        type.resource_id = params[:resource_id]
        type.principal_id = params[:principal_id]
        type.principal_type = params[:principal_type]
        type
      end
    end

    module RemoveResourcePermissionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveResourcePermissionOutput, context: context)
        type = Types::RemoveResourcePermissionOutput.new
        type
      end
    end

    module RequestedEntityTooLargeException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RequestedEntityTooLargeException, context: context)
        type = Types::RequestedEntityTooLargeException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceAlreadyCheckedOutException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceAlreadyCheckedOutException, context: context)
        type = Types::ResourceAlreadyCheckedOutException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceMetadata, context: context)
        type = Types::ResourceMetadata.new
        type.type = params[:type]
        type.name = params[:name]
        type.original_name = params[:original_name]
        type.id = params[:id]
        type.version_id = params[:version_id]
        type.owner = UserMetadata.build(params[:owner], context: "#{context}[:owner]") unless params[:owner].nil?
        type.parent_id = params[:parent_id]
        type
      end
    end

    module ResourcePath
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourcePath, context: context)
        type = Types::ResourcePath.new
        type.components = ResourcePathComponentList.build(params[:components], context: "#{context}[:components]") unless params[:components].nil?
        type
      end
    end

    module ResourcePathComponent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourcePathComponent, context: context)
        type = Types::ResourcePathComponent.new
        type.id = params[:id]
        type.name = params[:name]
        type
      end
    end

    module ResourcePathComponentList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResourcePathComponent.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ServiceUnavailableException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceUnavailableException, context: context)
        type = Types::ServiceUnavailableException.new
        type.message = params[:message]
        type
      end
    end

    module SharePrincipal
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SharePrincipal, context: context)
        type = Types::SharePrincipal.new
        type.id = params[:id]
        type.type = params[:type]
        type.role = params[:role]
        type
      end
    end

    module SharePrincipalList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SharePrincipal.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ShareResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ShareResult, context: context)
        type = Types::ShareResult.new
        type.principal_id = params[:principal_id]
        type.invitee_principal_id = params[:invitee_principal_id]
        type.role = params[:role]
        type.status = params[:status]
        type.share_id = params[:share_id]
        type.status_message = params[:status_message]
        type
      end
    end

    module ShareResultsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ShareResult.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SharedLabels
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SignedHeaderMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module StorageLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StorageLimitExceededException, context: context)
        type = Types::StorageLimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module StorageLimitWillExceedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StorageLimitWillExceedException, context: context)
        type = Types::StorageLimitWillExceedException.new
        type.message = params[:message]
        type
      end
    end

    module StorageRuleType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StorageRuleType, context: context)
        type = Types::StorageRuleType.new
        type.storage_allocated_in_bytes = params[:storage_allocated_in_bytes]
        type.storage_type = params[:storage_type]
        type
      end
    end

    module Subscription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Subscription, context: context)
        type = Types::Subscription.new
        type.subscription_id = params[:subscription_id]
        type.end_point = params[:end_point]
        type.protocol = params[:protocol]
        type
      end
    end

    module SubscriptionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Subscription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TooManyLabelsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyLabelsException, context: context)
        type = Types::TooManyLabelsException.new
        type.message = params[:message]
        type
      end
    end

    module TooManySubscriptionsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManySubscriptionsException, context: context)
        type = Types::TooManySubscriptionsException.new
        type.message = params[:message]
        type
      end
    end

    module UnauthorizedOperationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnauthorizedOperationException, context: context)
        type = Types::UnauthorizedOperationException.new
        type.message = params[:message]
        type.code = params[:code]
        type
      end
    end

    module UnauthorizedResourceAccessException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnauthorizedResourceAccessException, context: context)
        type = Types::UnauthorizedResourceAccessException.new
        type.message = params[:message]
        type
      end
    end

    module UpdateDocumentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDocumentInput, context: context)
        type = Types::UpdateDocumentInput.new
        type.authentication_token = params[:authentication_token]
        type.document_id = params[:document_id]
        type.name = params[:name]
        type.parent_folder_id = params[:parent_folder_id]
        type.resource_state = params[:resource_state]
        type
      end
    end

    module UpdateDocumentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDocumentOutput, context: context)
        type = Types::UpdateDocumentOutput.new
        type
      end
    end

    module UpdateDocumentVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDocumentVersionInput, context: context)
        type = Types::UpdateDocumentVersionInput.new
        type.authentication_token = params[:authentication_token]
        type.document_id = params[:document_id]
        type.version_id = params[:version_id]
        type.version_status = params[:version_status]
        type
      end
    end

    module UpdateDocumentVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDocumentVersionOutput, context: context)
        type = Types::UpdateDocumentVersionOutput.new
        type
      end
    end

    module UpdateFolderInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFolderInput, context: context)
        type = Types::UpdateFolderInput.new
        type.authentication_token = params[:authentication_token]
        type.folder_id = params[:folder_id]
        type.name = params[:name]
        type.parent_folder_id = params[:parent_folder_id]
        type.resource_state = params[:resource_state]
        type
      end
    end

    module UpdateFolderOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFolderOutput, context: context)
        type = Types::UpdateFolderOutput.new
        type
      end
    end

    module UpdateUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateUserInput, context: context)
        type = Types::UpdateUserInput.new
        type.authentication_token = params[:authentication_token]
        type.user_id = params[:user_id]
        type.given_name = params[:given_name]
        type.surname = params[:surname]
        type.type = params[:type]
        type.storage_rule = StorageRuleType.build(params[:storage_rule], context: "#{context}[:storage_rule]") unless params[:storage_rule].nil?
        type.time_zone_id = params[:time_zone_id]
        type.locale = params[:locale]
        type.grant_poweruser_privileges = params[:grant_poweruser_privileges]
        type
      end
    end

    module UpdateUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateUserOutput, context: context)
        type = Types::UpdateUserOutput.new
        type.user = User.build(params[:user], context: "#{context}[:user]") unless params[:user].nil?
        type
      end
    end

    module UploadMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UploadMetadata, context: context)
        type = Types::UploadMetadata.new
        type.upload_url = params[:upload_url]
        type.signed_headers = SignedHeaderMap.build(params[:signed_headers], context: "#{context}[:signed_headers]") unless params[:signed_headers].nil?
        type
      end
    end

    module User
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::User, context: context)
        type = Types::User.new
        type.id = params[:id]
        type.username = params[:username]
        type.email_address = params[:email_address]
        type.given_name = params[:given_name]
        type.surname = params[:surname]
        type.organization_id = params[:organization_id]
        type.root_folder_id = params[:root_folder_id]
        type.recycle_bin_folder_id = params[:recycle_bin_folder_id]
        type.status = params[:status]
        type.type = params[:type]
        type.created_timestamp = params[:created_timestamp]
        type.modified_timestamp = params[:modified_timestamp]
        type.time_zone_id = params[:time_zone_id]
        type.locale = params[:locale]
        type.storage = UserStorageMetadata.build(params[:storage], context: "#{context}[:storage]") unless params[:storage].nil?
        type
      end
    end

    module UserActivities
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Activity.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UserMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserMetadata, context: context)
        type = Types::UserMetadata.new
        type.id = params[:id]
        type.username = params[:username]
        type.given_name = params[:given_name]
        type.surname = params[:surname]
        type.email_address = params[:email_address]
        type
      end
    end

    module UserMetadataList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UserMetadata.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UserStorageMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserStorageMetadata, context: context)
        type = Types::UserStorageMetadata.new
        type.storage_utilized_in_bytes = params[:storage_utilized_in_bytes]
        type.storage_rule = StorageRuleType.build(params[:storage_rule], context: "#{context}[:storage_rule]") unless params[:storage_rule].nil?
        type
      end
    end

  end
end
