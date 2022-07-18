# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::WorkDocs
  module Validators

    class AbortDocumentVersionUploadInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AbortDocumentVersionUploadInput, context: context)
        Hearth::Validator.validate!(input[:authentication_token], ::String, context: "#{context}[:authentication_token]")
        Hearth::Validator.validate!(input[:document_id], ::String, context: "#{context}[:document_id]")
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
      end
    end

    class AbortDocumentVersionUploadOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AbortDocumentVersionUploadOutput, context: context)
      end
    end

    class ActivateUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActivateUserInput, context: context)
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        Hearth::Validator.validate!(input[:authentication_token], ::String, context: "#{context}[:authentication_token]")
      end
    end

    class ActivateUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActivateUserOutput, context: context)
        User.validate!(input[:user], context: "#{context}[:user]") unless input[:user].nil?
      end
    end

    class Activity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Activity, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:time_stamp], ::Time, context: "#{context}[:time_stamp]")
        Hearth::Validator.validate!(input[:is_indirect_activity], ::TrueClass, ::FalseClass, context: "#{context}[:is_indirect_activity]")
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
        UserMetadata.validate!(input[:initiator], context: "#{context}[:initiator]") unless input[:initiator].nil?
        Participants.validate!(input[:participants], context: "#{context}[:participants]") unless input[:participants].nil?
        ResourceMetadata.validate!(input[:resource_metadata], context: "#{context}[:resource_metadata]") unless input[:resource_metadata].nil?
        ResourceMetadata.validate!(input[:original_parent], context: "#{context}[:original_parent]") unless input[:original_parent].nil?
        CommentMetadata.validate!(input[:comment_metadata], context: "#{context}[:comment_metadata]") unless input[:comment_metadata].nil?
      end
    end

    class AddResourcePermissionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddResourcePermissionsInput, context: context)
        Hearth::Validator.validate!(input[:authentication_token], ::String, context: "#{context}[:authentication_token]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        SharePrincipalList.validate!(input[:principals], context: "#{context}[:principals]") unless input[:principals].nil?
        NotificationOptions.validate!(input[:notification_options], context: "#{context}[:notification_options]") unless input[:notification_options].nil?
      end
    end

    class AddResourcePermissionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddResourcePermissionsOutput, context: context)
        ShareResultsList.validate!(input[:share_results], context: "#{context}[:share_results]") unless input[:share_results].nil?
      end
    end

    class Comment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Comment, context: context)
        Hearth::Validator.validate!(input[:comment_id], ::String, context: "#{context}[:comment_id]")
        Hearth::Validator.validate!(input[:parent_id], ::String, context: "#{context}[:parent_id]")
        Hearth::Validator.validate!(input[:thread_id], ::String, context: "#{context}[:thread_id]")
        Hearth::Validator.validate!(input[:text], ::String, context: "#{context}[:text]")
        User.validate!(input[:contributor], context: "#{context}[:contributor]") unless input[:contributor].nil?
        Hearth::Validator.validate!(input[:created_timestamp], ::Time, context: "#{context}[:created_timestamp]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:visibility], ::String, context: "#{context}[:visibility]")
        Hearth::Validator.validate!(input[:recipient_id], ::String, context: "#{context}[:recipient_id]")
      end
    end

    class CommentList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Comment.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CommentMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CommentMetadata, context: context)
        Hearth::Validator.validate!(input[:comment_id], ::String, context: "#{context}[:comment_id]")
        User.validate!(input[:contributor], context: "#{context}[:contributor]") unless input[:contributor].nil?
        Hearth::Validator.validate!(input[:created_timestamp], ::Time, context: "#{context}[:created_timestamp]")
        Hearth::Validator.validate!(input[:comment_status], ::String, context: "#{context}[:comment_status]")
        Hearth::Validator.validate!(input[:recipient_id], ::String, context: "#{context}[:recipient_id]")
      end
    end

    class ConcurrentModificationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConcurrentModificationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ConflictingOperationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictingOperationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CreateCommentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCommentInput, context: context)
        Hearth::Validator.validate!(input[:authentication_token], ::String, context: "#{context}[:authentication_token]")
        Hearth::Validator.validate!(input[:document_id], ::String, context: "#{context}[:document_id]")
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
        Hearth::Validator.validate!(input[:parent_id], ::String, context: "#{context}[:parent_id]")
        Hearth::Validator.validate!(input[:thread_id], ::String, context: "#{context}[:thread_id]")
        Hearth::Validator.validate!(input[:text], ::String, context: "#{context}[:text]")
        Hearth::Validator.validate!(input[:visibility], ::String, context: "#{context}[:visibility]")
        Hearth::Validator.validate!(input[:notify_collaborators], ::TrueClass, ::FalseClass, context: "#{context}[:notify_collaborators]")
      end
    end

    class CreateCommentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCommentOutput, context: context)
        Comment.validate!(input[:comment], context: "#{context}[:comment]") unless input[:comment].nil?
      end
    end

    class CreateCustomMetadataInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCustomMetadataInput, context: context)
        Hearth::Validator.validate!(input[:authentication_token], ::String, context: "#{context}[:authentication_token]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
        CustomMetadataMap.validate!(input[:custom_metadata], context: "#{context}[:custom_metadata]") unless input[:custom_metadata].nil?
      end
    end

    class CreateCustomMetadataOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCustomMetadataOutput, context: context)
      end
    end

    class CreateFolderInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFolderInput, context: context)
        Hearth::Validator.validate!(input[:authentication_token], ::String, context: "#{context}[:authentication_token]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:parent_folder_id], ::String, context: "#{context}[:parent_folder_id]")
      end
    end

    class CreateFolderOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFolderOutput, context: context)
        FolderMetadata.validate!(input[:metadata], context: "#{context}[:metadata]") unless input[:metadata].nil?
      end
    end

    class CreateLabelsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLabelsInput, context: context)
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        SharedLabels.validate!(input[:labels], context: "#{context}[:labels]") unless input[:labels].nil?
        Hearth::Validator.validate!(input[:authentication_token], ::String, context: "#{context}[:authentication_token]")
      end
    end

    class CreateLabelsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLabelsOutput, context: context)
      end
    end

    class CreateNotificationSubscriptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateNotificationSubscriptionInput, context: context)
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
        Hearth::Validator.validate!(input[:endpoint], ::String, context: "#{context}[:endpoint]")
        Hearth::Validator.validate!(input[:protocol], ::String, context: "#{context}[:protocol]")
        Hearth::Validator.validate!(input[:subscription_type], ::String, context: "#{context}[:subscription_type]")
      end
    end

    class CreateNotificationSubscriptionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateNotificationSubscriptionOutput, context: context)
        Subscription.validate!(input[:subscription], context: "#{context}[:subscription]") unless input[:subscription].nil?
      end
    end

    class CreateUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateUserInput, context: context)
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
        Hearth::Validator.validate!(input[:email_address], ::String, context: "#{context}[:email_address]")
        Hearth::Validator.validate!(input[:given_name], ::String, context: "#{context}[:given_name]")
        Hearth::Validator.validate!(input[:surname], ::String, context: "#{context}[:surname]")
        Hearth::Validator.validate!(input[:password], ::String, context: "#{context}[:password]")
        Hearth::Validator.validate!(input[:time_zone_id], ::String, context: "#{context}[:time_zone_id]")
        StorageRuleType.validate!(input[:storage_rule], context: "#{context}[:storage_rule]") unless input[:storage_rule].nil?
        Hearth::Validator.validate!(input[:authentication_token], ::String, context: "#{context}[:authentication_token]")
      end
    end

    class CreateUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateUserOutput, context: context)
        User.validate!(input[:user], context: "#{context}[:user]") unless input[:user].nil?
      end
    end

    class CustomMetadataKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CustomMetadataLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomMetadataLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CustomMetadataMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class DeactivateUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeactivateUserInput, context: context)
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        Hearth::Validator.validate!(input[:authentication_token], ::String, context: "#{context}[:authentication_token]")
      end
    end

    class DeactivateUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeactivateUserOutput, context: context)
      end
    end

    class DeactivatingLastSystemUserException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeactivatingLastSystemUserException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
      end
    end

    class DeleteCommentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCommentInput, context: context)
        Hearth::Validator.validate!(input[:authentication_token], ::String, context: "#{context}[:authentication_token]")
        Hearth::Validator.validate!(input[:document_id], ::String, context: "#{context}[:document_id]")
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
        Hearth::Validator.validate!(input[:comment_id], ::String, context: "#{context}[:comment_id]")
      end
    end

    class DeleteCommentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCommentOutput, context: context)
      end
    end

    class DeleteCustomMetadataInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCustomMetadataInput, context: context)
        Hearth::Validator.validate!(input[:authentication_token], ::String, context: "#{context}[:authentication_token]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
        CustomMetadataKeyList.validate!(input[:keys], context: "#{context}[:keys]") unless input[:keys].nil?
        Hearth::Validator.validate!(input[:delete_all], ::TrueClass, ::FalseClass, context: "#{context}[:delete_all]")
      end
    end

    class DeleteCustomMetadataOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCustomMetadataOutput, context: context)
      end
    end

    class DeleteDocumentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDocumentInput, context: context)
        Hearth::Validator.validate!(input[:authentication_token], ::String, context: "#{context}[:authentication_token]")
        Hearth::Validator.validate!(input[:document_id], ::String, context: "#{context}[:document_id]")
      end
    end

    class DeleteDocumentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDocumentOutput, context: context)
      end
    end

    class DeleteFolderContentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFolderContentsInput, context: context)
        Hearth::Validator.validate!(input[:authentication_token], ::String, context: "#{context}[:authentication_token]")
        Hearth::Validator.validate!(input[:folder_id], ::String, context: "#{context}[:folder_id]")
      end
    end

    class DeleteFolderContentsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFolderContentsOutput, context: context)
      end
    end

    class DeleteFolderInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFolderInput, context: context)
        Hearth::Validator.validate!(input[:authentication_token], ::String, context: "#{context}[:authentication_token]")
        Hearth::Validator.validate!(input[:folder_id], ::String, context: "#{context}[:folder_id]")
      end
    end

    class DeleteFolderOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFolderOutput, context: context)
      end
    end

    class DeleteLabelsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLabelsInput, context: context)
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:authentication_token], ::String, context: "#{context}[:authentication_token]")
        SharedLabels.validate!(input[:labels], context: "#{context}[:labels]") unless input[:labels].nil?
        Hearth::Validator.validate!(input[:delete_all], ::TrueClass, ::FalseClass, context: "#{context}[:delete_all]")
      end
    end

    class DeleteLabelsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLabelsOutput, context: context)
      end
    end

    class DeleteNotificationSubscriptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteNotificationSubscriptionInput, context: context)
        Hearth::Validator.validate!(input[:subscription_id], ::String, context: "#{context}[:subscription_id]")
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
      end
    end

    class DeleteNotificationSubscriptionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteNotificationSubscriptionOutput, context: context)
      end
    end

    class DeleteUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteUserInput, context: context)
        Hearth::Validator.validate!(input[:authentication_token], ::String, context: "#{context}[:authentication_token]")
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
      end
    end

    class DeleteUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteUserOutput, context: context)
      end
    end

    class DescribeActivitiesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeActivitiesInput, context: context)
        Hearth::Validator.validate!(input[:authentication_token], ::String, context: "#{context}[:authentication_token]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
        Hearth::Validator.validate!(input[:activity_types], ::String, context: "#{context}[:activity_types]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        Hearth::Validator.validate!(input[:include_indirect_activities], ::TrueClass, ::FalseClass, context: "#{context}[:include_indirect_activities]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeActivitiesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeActivitiesOutput, context: context)
        UserActivities.validate!(input[:user_activities], context: "#{context}[:user_activities]") unless input[:user_activities].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeCommentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCommentsInput, context: context)
        Hearth::Validator.validate!(input[:authentication_token], ::String, context: "#{context}[:authentication_token]")
        Hearth::Validator.validate!(input[:document_id], ::String, context: "#{context}[:document_id]")
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeCommentsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCommentsOutput, context: context)
        CommentList.validate!(input[:comments], context: "#{context}[:comments]") unless input[:comments].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeDocumentVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDocumentVersionsInput, context: context)
        Hearth::Validator.validate!(input[:authentication_token], ::String, context: "#{context}[:authentication_token]")
        Hearth::Validator.validate!(input[:document_id], ::String, context: "#{context}[:document_id]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:include], ::String, context: "#{context}[:include]")
        Hearth::Validator.validate!(input[:fields], ::String, context: "#{context}[:fields]")
      end
    end

    class DescribeDocumentVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDocumentVersionsOutput, context: context)
        DocumentVersionMetadataList.validate!(input[:document_versions], context: "#{context}[:document_versions]") unless input[:document_versions].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeFolderContentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFolderContentsInput, context: context)
        Hearth::Validator.validate!(input[:authentication_token], ::String, context: "#{context}[:authentication_token]")
        Hearth::Validator.validate!(input[:folder_id], ::String, context: "#{context}[:folder_id]")
        Hearth::Validator.validate!(input[:sort], ::String, context: "#{context}[:sort]")
        Hearth::Validator.validate!(input[:order], ::String, context: "#{context}[:order]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:include], ::String, context: "#{context}[:include]")
      end
    end

    class DescribeFolderContentsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFolderContentsOutput, context: context)
        FolderMetadataList.validate!(input[:folders], context: "#{context}[:folders]") unless input[:folders].nil?
        DocumentMetadataList.validate!(input[:documents], context: "#{context}[:documents]") unless input[:documents].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeGroupsInput, context: context)
        Hearth::Validator.validate!(input[:authentication_token], ::String, context: "#{context}[:authentication_token]")
        Hearth::Validator.validate!(input[:search_query], ::String, context: "#{context}[:search_query]")
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class DescribeGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeGroupsOutput, context: context)
        GroupMetadataList.validate!(input[:groups], context: "#{context}[:groups]") unless input[:groups].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeNotificationSubscriptionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeNotificationSubscriptionsInput, context: context)
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class DescribeNotificationSubscriptionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeNotificationSubscriptionsOutput, context: context)
        SubscriptionList.validate!(input[:subscriptions], context: "#{context}[:subscriptions]") unless input[:subscriptions].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeResourcePermissionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeResourcePermissionsInput, context: context)
        Hearth::Validator.validate!(input[:authentication_token], ::String, context: "#{context}[:authentication_token]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:principal_id], ::String, context: "#{context}[:principal_id]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeResourcePermissionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeResourcePermissionsOutput, context: context)
        PrincipalList.validate!(input[:principals], context: "#{context}[:principals]") unless input[:principals].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeRootFoldersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRootFoldersInput, context: context)
        Hearth::Validator.validate!(input[:authentication_token], ::String, context: "#{context}[:authentication_token]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeRootFoldersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRootFoldersOutput, context: context)
        FolderMetadataList.validate!(input[:folders], context: "#{context}[:folders]") unless input[:folders].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeUsersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeUsersInput, context: context)
        Hearth::Validator.validate!(input[:authentication_token], ::String, context: "#{context}[:authentication_token]")
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
        Hearth::Validator.validate!(input[:user_ids], ::String, context: "#{context}[:user_ids]")
        Hearth::Validator.validate!(input[:query], ::String, context: "#{context}[:query]")
        Hearth::Validator.validate!(input[:include], ::String, context: "#{context}[:include]")
        Hearth::Validator.validate!(input[:order], ::String, context: "#{context}[:order]")
        Hearth::Validator.validate!(input[:sort], ::String, context: "#{context}[:sort]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:fields], ::String, context: "#{context}[:fields]")
      end
    end

    class DescribeUsersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeUsersOutput, context: context)
        OrganizationUserList.validate!(input[:users], context: "#{context}[:users]") unless input[:users].nil?
        Hearth::Validator.validate!(input[:total_number_of_users], ::Integer, context: "#{context}[:total_number_of_users]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DocumentLockedForCommentsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DocumentLockedForCommentsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DocumentMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DocumentMetadata, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:creator_id], ::String, context: "#{context}[:creator_id]")
        Hearth::Validator.validate!(input[:parent_folder_id], ::String, context: "#{context}[:parent_folder_id]")
        Hearth::Validator.validate!(input[:created_timestamp], ::Time, context: "#{context}[:created_timestamp]")
        Hearth::Validator.validate!(input[:modified_timestamp], ::Time, context: "#{context}[:modified_timestamp]")
        DocumentVersionMetadata.validate!(input[:latest_version_metadata], context: "#{context}[:latest_version_metadata]") unless input[:latest_version_metadata].nil?
        Hearth::Validator.validate!(input[:resource_state], ::String, context: "#{context}[:resource_state]")
        SharedLabels.validate!(input[:labels], context: "#{context}[:labels]") unless input[:labels].nil?
      end
    end

    class DocumentMetadataList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DocumentMetadata.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DocumentSourceUrlMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class DocumentThumbnailUrlMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class DocumentVersionMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DocumentVersionMetadata, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
        Hearth::Validator.validate!(input[:size], ::Integer, context: "#{context}[:size]")
        Hearth::Validator.validate!(input[:signature], ::String, context: "#{context}[:signature]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:created_timestamp], ::Time, context: "#{context}[:created_timestamp]")
        Hearth::Validator.validate!(input[:modified_timestamp], ::Time, context: "#{context}[:modified_timestamp]")
        Hearth::Validator.validate!(input[:content_created_timestamp], ::Time, context: "#{context}[:content_created_timestamp]")
        Hearth::Validator.validate!(input[:content_modified_timestamp], ::Time, context: "#{context}[:content_modified_timestamp]")
        Hearth::Validator.validate!(input[:creator_id], ::String, context: "#{context}[:creator_id]")
        DocumentThumbnailUrlMap.validate!(input[:thumbnail], context: "#{context}[:thumbnail]") unless input[:thumbnail].nil?
        DocumentSourceUrlMap.validate!(input[:source], context: "#{context}[:source]") unless input[:source].nil?
      end
    end

    class DocumentVersionMetadataList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DocumentVersionMetadata.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DraftUploadOutOfSyncException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DraftUploadOutOfSyncException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class EntityAlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EntityAlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class EntityIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class EntityNotExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EntityNotExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        EntityIdList.validate!(input[:entity_ids], context: "#{context}[:entity_ids]") unless input[:entity_ids].nil?
      end
    end

    class FailedDependencyException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FailedDependencyException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class FolderMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FolderMetadata, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:creator_id], ::String, context: "#{context}[:creator_id]")
        Hearth::Validator.validate!(input[:parent_folder_id], ::String, context: "#{context}[:parent_folder_id]")
        Hearth::Validator.validate!(input[:created_timestamp], ::Time, context: "#{context}[:created_timestamp]")
        Hearth::Validator.validate!(input[:modified_timestamp], ::Time, context: "#{context}[:modified_timestamp]")
        Hearth::Validator.validate!(input[:resource_state], ::String, context: "#{context}[:resource_state]")
        Hearth::Validator.validate!(input[:signature], ::String, context: "#{context}[:signature]")
        SharedLabels.validate!(input[:labels], context: "#{context}[:labels]") unless input[:labels].nil?
        Hearth::Validator.validate!(input[:size], ::Integer, context: "#{context}[:size]")
        Hearth::Validator.validate!(input[:latest_version_size], ::Integer, context: "#{context}[:latest_version_size]")
      end
    end

    class FolderMetadataList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          FolderMetadata.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GetCurrentUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCurrentUserInput, context: context)
        Hearth::Validator.validate!(input[:authentication_token], ::String, context: "#{context}[:authentication_token]")
      end
    end

    class GetCurrentUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCurrentUserOutput, context: context)
        User.validate!(input[:user], context: "#{context}[:user]") unless input[:user].nil?
      end
    end

    class GetDocumentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDocumentInput, context: context)
        Hearth::Validator.validate!(input[:authentication_token], ::String, context: "#{context}[:authentication_token]")
        Hearth::Validator.validate!(input[:document_id], ::String, context: "#{context}[:document_id]")
        Hearth::Validator.validate!(input[:include_custom_metadata], ::TrueClass, ::FalseClass, context: "#{context}[:include_custom_metadata]")
      end
    end

    class GetDocumentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDocumentOutput, context: context)
        DocumentMetadata.validate!(input[:metadata], context: "#{context}[:metadata]") unless input[:metadata].nil?
        CustomMetadataMap.validate!(input[:custom_metadata], context: "#{context}[:custom_metadata]") unless input[:custom_metadata].nil?
      end
    end

    class GetDocumentPathInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDocumentPathInput, context: context)
        Hearth::Validator.validate!(input[:authentication_token], ::String, context: "#{context}[:authentication_token]")
        Hearth::Validator.validate!(input[:document_id], ::String, context: "#{context}[:document_id]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:fields], ::String, context: "#{context}[:fields]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class GetDocumentPathOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDocumentPathOutput, context: context)
        ResourcePath.validate!(input[:path], context: "#{context}[:path]") unless input[:path].nil?
      end
    end

    class GetDocumentVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDocumentVersionInput, context: context)
        Hearth::Validator.validate!(input[:authentication_token], ::String, context: "#{context}[:authentication_token]")
        Hearth::Validator.validate!(input[:document_id], ::String, context: "#{context}[:document_id]")
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
        Hearth::Validator.validate!(input[:fields], ::String, context: "#{context}[:fields]")
        Hearth::Validator.validate!(input[:include_custom_metadata], ::TrueClass, ::FalseClass, context: "#{context}[:include_custom_metadata]")
      end
    end

    class GetDocumentVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDocumentVersionOutput, context: context)
        DocumentVersionMetadata.validate!(input[:metadata], context: "#{context}[:metadata]") unless input[:metadata].nil?
        CustomMetadataMap.validate!(input[:custom_metadata], context: "#{context}[:custom_metadata]") unless input[:custom_metadata].nil?
      end
    end

    class GetFolderInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFolderInput, context: context)
        Hearth::Validator.validate!(input[:authentication_token], ::String, context: "#{context}[:authentication_token]")
        Hearth::Validator.validate!(input[:folder_id], ::String, context: "#{context}[:folder_id]")
        Hearth::Validator.validate!(input[:include_custom_metadata], ::TrueClass, ::FalseClass, context: "#{context}[:include_custom_metadata]")
      end
    end

    class GetFolderOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFolderOutput, context: context)
        FolderMetadata.validate!(input[:metadata], context: "#{context}[:metadata]") unless input[:metadata].nil?
        CustomMetadataMap.validate!(input[:custom_metadata], context: "#{context}[:custom_metadata]") unless input[:custom_metadata].nil?
      end
    end

    class GetFolderPathInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFolderPathInput, context: context)
        Hearth::Validator.validate!(input[:authentication_token], ::String, context: "#{context}[:authentication_token]")
        Hearth::Validator.validate!(input[:folder_id], ::String, context: "#{context}[:folder_id]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:fields], ::String, context: "#{context}[:fields]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class GetFolderPathOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFolderPathOutput, context: context)
        ResourcePath.validate!(input[:path], context: "#{context}[:path]") unless input[:path].nil?
      end
    end

    class GetResourcesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResourcesInput, context: context)
        Hearth::Validator.validate!(input[:authentication_token], ::String, context: "#{context}[:authentication_token]")
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        Hearth::Validator.validate!(input[:collection_type], ::String, context: "#{context}[:collection_type]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class GetResourcesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResourcesOutput, context: context)
        FolderMetadataList.validate!(input[:folders], context: "#{context}[:folders]") unless input[:folders].nil?
        DocumentMetadataList.validate!(input[:documents], context: "#{context}[:documents]") unless input[:documents].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class GroupMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GroupMetadata, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class GroupMetadataList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          GroupMetadata.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class IllegalUserStateException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IllegalUserStateException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InitiateDocumentVersionUploadInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InitiateDocumentVersionUploadInput, context: context)
        Hearth::Validator.validate!(input[:authentication_token], ::String, context: "#{context}[:authentication_token]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:content_created_timestamp], ::Time, context: "#{context}[:content_created_timestamp]")
        Hearth::Validator.validate!(input[:content_modified_timestamp], ::Time, context: "#{context}[:content_modified_timestamp]")
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
        Hearth::Validator.validate!(input[:document_size_in_bytes], ::Integer, context: "#{context}[:document_size_in_bytes]")
        Hearth::Validator.validate!(input[:parent_folder_id], ::String, context: "#{context}[:parent_folder_id]")
      end
    end

    class InitiateDocumentVersionUploadOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InitiateDocumentVersionUploadOutput, context: context)
        DocumentMetadata.validate!(input[:metadata], context: "#{context}[:metadata]") unless input[:metadata].nil?
        UploadMetadata.validate!(input[:upload_metadata], context: "#{context}[:upload_metadata]") unless input[:upload_metadata].nil?
      end
    end

    class InvalidArgumentException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidArgumentException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidCommentOperationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidCommentOperationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidOperationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidOperationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidPasswordException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidPasswordException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NotificationOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotificationOptions, context: context)
        Hearth::Validator.validate!(input[:send_email], ::TrueClass, ::FalseClass, context: "#{context}[:send_email]")
        Hearth::Validator.validate!(input[:email_message], ::String, context: "#{context}[:email_message]")
      end
    end

    class OrganizationUserList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          User.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Participants
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Participants, context: context)
        UserMetadataList.validate!(input[:users], context: "#{context}[:users]") unless input[:users].nil?
        GroupMetadataList.validate!(input[:groups], context: "#{context}[:groups]") unless input[:groups].nil?
      end
    end

    class PermissionInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PermissionInfo, context: context)
        Hearth::Validator.validate!(input[:role], ::String, context: "#{context}[:role]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class PermissionInfoList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PermissionInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Principal
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Principal, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        PermissionInfoList.validate!(input[:roles], context: "#{context}[:roles]") unless input[:roles].nil?
      end
    end

    class PrincipalList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Principal.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ProhibitedStateException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProhibitedStateException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RemoveAllResourcePermissionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveAllResourcePermissionsInput, context: context)
        Hearth::Validator.validate!(input[:authentication_token], ::String, context: "#{context}[:authentication_token]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
      end
    end

    class RemoveAllResourcePermissionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveAllResourcePermissionsOutput, context: context)
      end
    end

    class RemoveResourcePermissionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveResourcePermissionInput, context: context)
        Hearth::Validator.validate!(input[:authentication_token], ::String, context: "#{context}[:authentication_token]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:principal_id], ::String, context: "#{context}[:principal_id]")
        Hearth::Validator.validate!(input[:principal_type], ::String, context: "#{context}[:principal_type]")
      end
    end

    class RemoveResourcePermissionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveResourcePermissionOutput, context: context)
      end
    end

    class RequestedEntityTooLargeException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RequestedEntityTooLargeException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceAlreadyCheckedOutException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceAlreadyCheckedOutException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceMetadata, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:original_name], ::String, context: "#{context}[:original_name]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
        UserMetadata.validate!(input[:owner], context: "#{context}[:owner]") unless input[:owner].nil?
        Hearth::Validator.validate!(input[:parent_id], ::String, context: "#{context}[:parent_id]")
      end
    end

    class ResourcePath
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourcePath, context: context)
        ResourcePathComponentList.validate!(input[:components], context: "#{context}[:components]") unless input[:components].nil?
      end
    end

    class ResourcePathComponent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourcePathComponent, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class ResourcePathComponentList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ResourcePathComponent.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ServiceUnavailableException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceUnavailableException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SharePrincipal
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SharePrincipal, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:role], ::String, context: "#{context}[:role]")
      end
    end

    class SharePrincipalList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SharePrincipal.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ShareResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ShareResult, context: context)
        Hearth::Validator.validate!(input[:principal_id], ::String, context: "#{context}[:principal_id]")
        Hearth::Validator.validate!(input[:invitee_principal_id], ::String, context: "#{context}[:invitee_principal_id]")
        Hearth::Validator.validate!(input[:role], ::String, context: "#{context}[:role]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:share_id], ::String, context: "#{context}[:share_id]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
      end
    end

    class ShareResultsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ShareResult.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SharedLabels
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SignedHeaderMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class StorageLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StorageLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class StorageLimitWillExceedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StorageLimitWillExceedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class StorageRuleType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StorageRuleType, context: context)
        Hearth::Validator.validate!(input[:storage_allocated_in_bytes], ::Integer, context: "#{context}[:storage_allocated_in_bytes]")
        Hearth::Validator.validate!(input[:storage_type], ::String, context: "#{context}[:storage_type]")
      end
    end

    class Subscription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Subscription, context: context)
        Hearth::Validator.validate!(input[:subscription_id], ::String, context: "#{context}[:subscription_id]")
        Hearth::Validator.validate!(input[:end_point], ::String, context: "#{context}[:end_point]")
        Hearth::Validator.validate!(input[:protocol], ::String, context: "#{context}[:protocol]")
      end
    end

    class SubscriptionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Subscription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TooManyLabelsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyLabelsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManySubscriptionsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManySubscriptionsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UnauthorizedOperationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnauthorizedOperationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
      end
    end

    class UnauthorizedResourceAccessException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnauthorizedResourceAccessException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UpdateDocumentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDocumentInput, context: context)
        Hearth::Validator.validate!(input[:authentication_token], ::String, context: "#{context}[:authentication_token]")
        Hearth::Validator.validate!(input[:document_id], ::String, context: "#{context}[:document_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:parent_folder_id], ::String, context: "#{context}[:parent_folder_id]")
        Hearth::Validator.validate!(input[:resource_state], ::String, context: "#{context}[:resource_state]")
      end
    end

    class UpdateDocumentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDocumentOutput, context: context)
      end
    end

    class UpdateDocumentVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDocumentVersionInput, context: context)
        Hearth::Validator.validate!(input[:authentication_token], ::String, context: "#{context}[:authentication_token]")
        Hearth::Validator.validate!(input[:document_id], ::String, context: "#{context}[:document_id]")
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
        Hearth::Validator.validate!(input[:version_status], ::String, context: "#{context}[:version_status]")
      end
    end

    class UpdateDocumentVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDocumentVersionOutput, context: context)
      end
    end

    class UpdateFolderInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFolderInput, context: context)
        Hearth::Validator.validate!(input[:authentication_token], ::String, context: "#{context}[:authentication_token]")
        Hearth::Validator.validate!(input[:folder_id], ::String, context: "#{context}[:folder_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:parent_folder_id], ::String, context: "#{context}[:parent_folder_id]")
        Hearth::Validator.validate!(input[:resource_state], ::String, context: "#{context}[:resource_state]")
      end
    end

    class UpdateFolderOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFolderOutput, context: context)
      end
    end

    class UpdateUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateUserInput, context: context)
        Hearth::Validator.validate!(input[:authentication_token], ::String, context: "#{context}[:authentication_token]")
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        Hearth::Validator.validate!(input[:given_name], ::String, context: "#{context}[:given_name]")
        Hearth::Validator.validate!(input[:surname], ::String, context: "#{context}[:surname]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        StorageRuleType.validate!(input[:storage_rule], context: "#{context}[:storage_rule]") unless input[:storage_rule].nil?
        Hearth::Validator.validate!(input[:time_zone_id], ::String, context: "#{context}[:time_zone_id]")
        Hearth::Validator.validate!(input[:locale], ::String, context: "#{context}[:locale]")
        Hearth::Validator.validate!(input[:grant_poweruser_privileges], ::String, context: "#{context}[:grant_poweruser_privileges]")
      end
    end

    class UpdateUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateUserOutput, context: context)
        User.validate!(input[:user], context: "#{context}[:user]") unless input[:user].nil?
      end
    end

    class UploadMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UploadMetadata, context: context)
        Hearth::Validator.validate!(input[:upload_url], ::String, context: "#{context}[:upload_url]")
        SignedHeaderMap.validate!(input[:signed_headers], context: "#{context}[:signed_headers]") unless input[:signed_headers].nil?
      end
    end

    class User
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::User, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
        Hearth::Validator.validate!(input[:email_address], ::String, context: "#{context}[:email_address]")
        Hearth::Validator.validate!(input[:given_name], ::String, context: "#{context}[:given_name]")
        Hearth::Validator.validate!(input[:surname], ::String, context: "#{context}[:surname]")
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
        Hearth::Validator.validate!(input[:root_folder_id], ::String, context: "#{context}[:root_folder_id]")
        Hearth::Validator.validate!(input[:recycle_bin_folder_id], ::String, context: "#{context}[:recycle_bin_folder_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:created_timestamp], ::Time, context: "#{context}[:created_timestamp]")
        Hearth::Validator.validate!(input[:modified_timestamp], ::Time, context: "#{context}[:modified_timestamp]")
        Hearth::Validator.validate!(input[:time_zone_id], ::String, context: "#{context}[:time_zone_id]")
        Hearth::Validator.validate!(input[:locale], ::String, context: "#{context}[:locale]")
        UserStorageMetadata.validate!(input[:storage], context: "#{context}[:storage]") unless input[:storage].nil?
      end
    end

    class UserActivities
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Activity.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UserMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserMetadata, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
        Hearth::Validator.validate!(input[:given_name], ::String, context: "#{context}[:given_name]")
        Hearth::Validator.validate!(input[:surname], ::String, context: "#{context}[:surname]")
        Hearth::Validator.validate!(input[:email_address], ::String, context: "#{context}[:email_address]")
      end
    end

    class UserMetadataList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          UserMetadata.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UserStorageMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserStorageMetadata, context: context)
        Hearth::Validator.validate!(input[:storage_utilized_in_bytes], ::Integer, context: "#{context}[:storage_utilized_in_bytes]")
        StorageRuleType.validate!(input[:storage_rule], context: "#{context}[:storage_rule]") unless input[:storage_rule].nil?
      end
    end

  end
end
