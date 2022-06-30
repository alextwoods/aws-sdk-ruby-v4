# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::WorkDocs
  module Types

    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>
    #
    #   @return [String]
    #
    # @!attribute document_id
    #   <p>The ID of the document.</p>
    #
    #   @return [String]
    #
    # @!attribute version_id
    #   <p>The ID of the version.</p>
    #
    #   @return [String]
    #
    AbortDocumentVersionUploadInput = ::Struct.new(
      :authentication_token,
      :document_id,
      :version_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::WorkDocs::Types::AbortDocumentVersionUploadInput "\
          "authentication_token=\"[SENSITIVE]\", "\
          "document_id=#{document_id || 'nil'}, "\
          "version_id=#{version_id || 'nil'}>"
      end
    end

    AbortDocumentVersionUploadOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_id
    #   <p>The ID of the user.</p>
    #
    #   @return [String]
    #
    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>
    #
    #   @return [String]
    #
    ActivateUserInput = ::Struct.new(
      :user_id,
      :authentication_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::WorkDocs::Types::ActivateUserInput "\
          "user_id=#{user_id || 'nil'}, "\
          "authentication_token=\"[SENSITIVE]\">"
      end
    end

    # @!attribute user
    #   <p>The user information.</p>
    #
    #   @return [User]
    #
    ActivateUserOutput = ::Struct.new(
      :user,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the activity information.</p>
    #
    # @!attribute type
    #   <p>The activity type.</p>
    #
    #   Enum, one of: ["DOCUMENT_CHECKED_IN", "DOCUMENT_CHECKED_OUT", "DOCUMENT_RENAMED", "DOCUMENT_VERSION_UPLOADED", "DOCUMENT_VERSION_DELETED", "DOCUMENT_VERSION_VIEWED", "DOCUMENT_VERSION_DOWNLOADED", "DOCUMENT_RECYCLED", "DOCUMENT_RESTORED", "DOCUMENT_REVERTED", "DOCUMENT_SHARED", "DOCUMENT_UNSHARED", "DOCUMENT_SHARE_PERMISSION_CHANGED", "DOCUMENT_SHAREABLE_LINK_CREATED", "DOCUMENT_SHAREABLE_LINK_REMOVED", "DOCUMENT_SHAREABLE_LINK_PERMISSION_CHANGED", "DOCUMENT_MOVED", "DOCUMENT_COMMENT_ADDED", "DOCUMENT_COMMENT_DELETED", "DOCUMENT_ANNOTATION_ADDED", "DOCUMENT_ANNOTATION_DELETED", "FOLDER_CREATED", "FOLDER_DELETED", "FOLDER_RENAMED", "FOLDER_RECYCLED", "FOLDER_RESTORED", "FOLDER_SHARED", "FOLDER_UNSHARED", "FOLDER_SHARE_PERMISSION_CHANGED", "FOLDER_SHAREABLE_LINK_CREATED", "FOLDER_SHAREABLE_LINK_REMOVED", "FOLDER_SHAREABLE_LINK_PERMISSION_CHANGED", "FOLDER_MOVED"]
    #
    #   @return [String]
    #
    # @!attribute time_stamp
    #   <p>The timestamp when the action was performed.</p>
    #
    #   @return [Time]
    #
    # @!attribute is_indirect_activity
    #   <p>Indicates whether an activity is indirect or direct. An indirect activity results
    #               from a direct activity performed on a parent resource. For example, sharing a parent
    #               folder (the direct activity) shares all of the subfolders and documents within the
    #               parent folder (the indirect activity).</p>
    #
    #   @return [Boolean]
    #
    # @!attribute organization_id
    #   <p>The ID of the organization.</p>
    #
    #   @return [String]
    #
    # @!attribute initiator
    #   <p>The user who performed the action.</p>
    #
    #   @return [UserMetadata]
    #
    # @!attribute participants
    #   <p>The list of users or groups impacted by this action. This is an optional field and
    #               is filled for the following sharing activities: DOCUMENT_SHARED, DOCUMENT_SHARED,
    #               DOCUMENT_UNSHARED, FOLDER_SHARED, FOLDER_UNSHARED.</p>
    #
    #   @return [Participants]
    #
    # @!attribute resource_metadata
    #   <p>The metadata of the resource involved in the user action.</p>
    #
    #   @return [ResourceMetadata]
    #
    # @!attribute original_parent
    #   <p>The original parent of the resource. This is an optional field and is filled for
    #               move activities.</p>
    #
    #   @return [ResourceMetadata]
    #
    # @!attribute comment_metadata
    #   <p>Metadata of the commenting activity. This is an optional field and is filled for
    #               commenting activities.</p>
    #
    #   @return [CommentMetadata]
    #
    Activity = ::Struct.new(
      :type,
      :time_stamp,
      :is_indirect_activity,
      :organization_id,
      :initiator,
      :participants,
      :resource_metadata,
      :original_parent,
      :comment_metadata,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.is_indirect_activity ||= false
      end

    end

    # Includes enum constants for ActivityType
    #
    module ActivityType
      # No documentation available.
      #
      DOCUMENT_CHECKED_IN = "DOCUMENT_CHECKED_IN"

      # No documentation available.
      #
      DOCUMENT_CHECKED_OUT = "DOCUMENT_CHECKED_OUT"

      # No documentation available.
      #
      DOCUMENT_RENAMED = "DOCUMENT_RENAMED"

      # No documentation available.
      #
      DOCUMENT_VERSION_UPLOADED = "DOCUMENT_VERSION_UPLOADED"

      # No documentation available.
      #
      DOCUMENT_VERSION_DELETED = "DOCUMENT_VERSION_DELETED"

      # No documentation available.
      #
      DOCUMENT_VERSION_VIEWED = "DOCUMENT_VERSION_VIEWED"

      # No documentation available.
      #
      DOCUMENT_VERSION_DOWNLOADED = "DOCUMENT_VERSION_DOWNLOADED"

      # No documentation available.
      #
      DOCUMENT_RECYCLED = "DOCUMENT_RECYCLED"

      # No documentation available.
      #
      DOCUMENT_RESTORED = "DOCUMENT_RESTORED"

      # No documentation available.
      #
      DOCUMENT_REVERTED = "DOCUMENT_REVERTED"

      # No documentation available.
      #
      DOCUMENT_SHARED = "DOCUMENT_SHARED"

      # No documentation available.
      #
      DOCUMENT_UNSHARED = "DOCUMENT_UNSHARED"

      # No documentation available.
      #
      DOCUMENT_SHARE_PERMISSION_CHANGED = "DOCUMENT_SHARE_PERMISSION_CHANGED"

      # No documentation available.
      #
      DOCUMENT_SHAREABLE_LINK_CREATED = "DOCUMENT_SHAREABLE_LINK_CREATED"

      # No documentation available.
      #
      DOCUMENT_SHAREABLE_LINK_REMOVED = "DOCUMENT_SHAREABLE_LINK_REMOVED"

      # No documentation available.
      #
      DOCUMENT_SHAREABLE_LINK_PERMISSION_CHANGED = "DOCUMENT_SHAREABLE_LINK_PERMISSION_CHANGED"

      # No documentation available.
      #
      DOCUMENT_MOVED = "DOCUMENT_MOVED"

      # No documentation available.
      #
      DOCUMENT_COMMENT_ADDED = "DOCUMENT_COMMENT_ADDED"

      # No documentation available.
      #
      DOCUMENT_COMMENT_DELETED = "DOCUMENT_COMMENT_DELETED"

      # No documentation available.
      #
      DOCUMENT_ANNOTATION_ADDED = "DOCUMENT_ANNOTATION_ADDED"

      # No documentation available.
      #
      DOCUMENT_ANNOTATION_DELETED = "DOCUMENT_ANNOTATION_DELETED"

      # No documentation available.
      #
      FOLDER_CREATED = "FOLDER_CREATED"

      # No documentation available.
      #
      FOLDER_DELETED = "FOLDER_DELETED"

      # No documentation available.
      #
      FOLDER_RENAMED = "FOLDER_RENAMED"

      # No documentation available.
      #
      FOLDER_RECYCLED = "FOLDER_RECYCLED"

      # No documentation available.
      #
      FOLDER_RESTORED = "FOLDER_RESTORED"

      # No documentation available.
      #
      FOLDER_SHARED = "FOLDER_SHARED"

      # No documentation available.
      #
      FOLDER_UNSHARED = "FOLDER_UNSHARED"

      # No documentation available.
      #
      FOLDER_SHARE_PERMISSION_CHANGED = "FOLDER_SHARE_PERMISSION_CHANGED"

      # No documentation available.
      #
      FOLDER_SHAREABLE_LINK_CREATED = "FOLDER_SHAREABLE_LINK_CREATED"

      # No documentation available.
      #
      FOLDER_SHAREABLE_LINK_REMOVED = "FOLDER_SHAREABLE_LINK_REMOVED"

      # No documentation available.
      #
      FOLDER_SHAREABLE_LINK_PERMISSION_CHANGED = "FOLDER_SHAREABLE_LINK_PERMISSION_CHANGED"

      # No documentation available.
      #
      FOLDER_MOVED = "FOLDER_MOVED"
    end

    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The ID of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute principals
    #   <p>The users, groups, or organization being granted permission.</p>
    #
    #   @return [Array<SharePrincipal>]
    #
    # @!attribute notification_options
    #   <p>The notification options.</p>
    #
    #   @return [NotificationOptions]
    #
    AddResourcePermissionsInput = ::Struct.new(
      :authentication_token,
      :resource_id,
      :principals,
      :notification_options,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::WorkDocs::Types::AddResourcePermissionsInput "\
          "authentication_token=\"[SENSITIVE]\", "\
          "resource_id=#{resource_id || 'nil'}, "\
          "principals=#{principals || 'nil'}, "\
          "notification_options=#{notification_options || 'nil'}>"
      end
    end

    # @!attribute share_results
    #   <p>The share results.</p>
    #
    #   @return [Array<ShareResult>]
    #
    AddResourcePermissionsOutput = ::Struct.new(
      :share_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for BooleanEnumType
    #
    module BooleanEnumType
      # No documentation available.
      #
      TRUE = "TRUE"

      # No documentation available.
      #
      FALSE = "FALSE"
    end

    # <p>Describes a comment.</p>
    #
    # @!attribute comment_id
    #   <p>The ID of the comment.</p>
    #
    #   @return [String]
    #
    # @!attribute parent_id
    #   <p>The ID of the parent comment.</p>
    #
    #   @return [String]
    #
    # @!attribute thread_id
    #   <p>The ID of the root comment in the thread.</p>
    #
    #   @return [String]
    #
    # @!attribute text
    #   <p>The text of the comment.</p>
    #
    #   @return [String]
    #
    # @!attribute contributor
    #   <p>The details of the user who made the comment.</p>
    #
    #   @return [User]
    #
    # @!attribute created_timestamp
    #   <p>The time that the comment was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute status
    #   <p>The status of the comment.</p>
    #
    #   Enum, one of: ["DRAFT", "PUBLISHED", "DELETED"]
    #
    #   @return [String]
    #
    # @!attribute visibility
    #   <p>The visibility of the comment. Options are either PRIVATE, where the comment is
    #               visible only to the comment author and document owner and co-owners, or PUBLIC, where
    #               the comment is visible to document owners, co-owners, and contributors.</p>
    #
    #   Enum, one of: ["PUBLIC", "PRIVATE"]
    #
    #   @return [String]
    #
    # @!attribute recipient_id
    #   <p>If the comment is a reply to another user's comment, this field contains the user
    #               ID of the user being replied to.</p>
    #
    #   @return [String]
    #
    Comment = ::Struct.new(
      :comment_id,
      :parent_id,
      :thread_id,
      :text,
      :contributor,
      :created_timestamp,
      :status,
      :visibility,
      :recipient_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::WorkDocs::Types::Comment "\
          "comment_id=#{comment_id || 'nil'}, "\
          "parent_id=#{parent_id || 'nil'}, "\
          "thread_id=#{thread_id || 'nil'}, "\
          "text=\"[SENSITIVE]\", "\
          "contributor=#{contributor || 'nil'}, "\
          "created_timestamp=#{created_timestamp || 'nil'}, "\
          "status=#{status || 'nil'}, "\
          "visibility=#{visibility || 'nil'}, "\
          "recipient_id=#{recipient_id || 'nil'}>"
      end
    end

    # <p>Describes the metadata of a comment.</p>
    #
    # @!attribute comment_id
    #   <p>The ID of the comment.</p>
    #
    #   @return [String]
    #
    # @!attribute contributor
    #   <p>The user who made the comment.</p>
    #
    #   @return [User]
    #
    # @!attribute created_timestamp
    #   <p>The timestamp that the comment was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute comment_status
    #   <p>The status of the comment.</p>
    #
    #   Enum, one of: ["DRAFT", "PUBLISHED", "DELETED"]
    #
    #   @return [String]
    #
    # @!attribute recipient_id
    #   <p>The ID of the user being replied to.</p>
    #
    #   @return [String]
    #
    CommentMetadata = ::Struct.new(
      :comment_id,
      :contributor,
      :created_timestamp,
      :comment_status,
      :recipient_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CommentStatusType
    #
    module CommentStatusType
      # No documentation available.
      #
      DRAFT = "DRAFT"

      # No documentation available.
      #
      PUBLISHED = "PUBLISHED"

      # No documentation available.
      #
      DELETED = "DELETED"
    end

    # Includes enum constants for CommentVisibilityType
    #
    module CommentVisibilityType
      # No documentation available.
      #
      PUBLIC = "PUBLIC"

      # No documentation available.
      #
      PRIVATE = "PRIVATE"
    end

    # <p>The resource hierarchy is changing.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ConcurrentModificationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Another operation is in progress on the resource that conflicts with the current operation.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ConflictingOperationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>
    #
    #   @return [String]
    #
    # @!attribute document_id
    #   <p>The ID of the document.</p>
    #
    #   @return [String]
    #
    # @!attribute version_id
    #   <p>The ID of the document version.</p>
    #
    #   @return [String]
    #
    # @!attribute parent_id
    #   <p>The ID of the parent comment.</p>
    #
    #   @return [String]
    #
    # @!attribute thread_id
    #   <p>The ID of the root comment in the thread.</p>
    #
    #   @return [String]
    #
    # @!attribute text
    #   <p>The text of the comment.</p>
    #
    #   @return [String]
    #
    # @!attribute visibility
    #   <p>The visibility of the comment. Options are either PRIVATE, where the comment is
    #               visible only to the comment author and document owner and co-owners, or PUBLIC, where
    #               the comment is visible to document owners, co-owners, and contributors.</p>
    #
    #   Enum, one of: ["PUBLIC", "PRIVATE"]
    #
    #   @return [String]
    #
    # @!attribute notify_collaborators
    #   <p>Set this parameter to TRUE to send an email out to the document collaborators after
    #               the comment is created.</p>
    #
    #   @return [Boolean]
    #
    CreateCommentInput = ::Struct.new(
      :authentication_token,
      :document_id,
      :version_id,
      :parent_id,
      :thread_id,
      :text,
      :visibility,
      :notify_collaborators,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.notify_collaborators ||= false
      end

      def to_s
        "#<struct AWS::SDK::WorkDocs::Types::CreateCommentInput "\
          "authentication_token=\"[SENSITIVE]\", "\
          "document_id=#{document_id || 'nil'}, "\
          "version_id=#{version_id || 'nil'}, "\
          "parent_id=#{parent_id || 'nil'}, "\
          "thread_id=#{thread_id || 'nil'}, "\
          "text=\"[SENSITIVE]\", "\
          "visibility=#{visibility || 'nil'}, "\
          "notify_collaborators=#{notify_collaborators || 'nil'}>"
      end
    end

    # @!attribute comment
    #   <p>The comment that has been created.</p>
    #
    #   @return [Comment]
    #
    CreateCommentOutput = ::Struct.new(
      :comment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The ID of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute version_id
    #   <p>The ID of the version, if the custom metadata is being added to a document
    #               version.</p>
    #
    #   @return [String]
    #
    # @!attribute custom_metadata
    #   <p>Custom metadata in the form of name-value pairs.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateCustomMetadataInput = ::Struct.new(
      :authentication_token,
      :resource_id,
      :version_id,
      :custom_metadata,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::WorkDocs::Types::CreateCustomMetadataInput "\
          "authentication_token=\"[SENSITIVE]\", "\
          "resource_id=#{resource_id || 'nil'}, "\
          "version_id=#{version_id || 'nil'}, "\
          "custom_metadata=#{custom_metadata || 'nil'}>"
      end
    end

    CreateCustomMetadataOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the new folder.</p>
    #
    #   @return [String]
    #
    # @!attribute parent_folder_id
    #   <p>The ID of the parent folder.</p>
    #
    #   @return [String]
    #
    CreateFolderInput = ::Struct.new(
      :authentication_token,
      :name,
      :parent_folder_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::WorkDocs::Types::CreateFolderInput "\
          "authentication_token=\"[SENSITIVE]\", "\
          "name=#{name || 'nil'}, "\
          "parent_folder_id=#{parent_folder_id || 'nil'}>"
      end
    end

    # @!attribute metadata
    #   <p>The metadata of the folder.</p>
    #
    #   @return [FolderMetadata]
    #
    CreateFolderOutput = ::Struct.new(
      :metadata,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_id
    #   <p>The ID of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute labels
    #   <p>List of labels to add to the resource.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>
    #
    #   @return [String]
    #
    CreateLabelsInput = ::Struct.new(
      :resource_id,
      :labels,
      :authentication_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::WorkDocs::Types::CreateLabelsInput "\
          "resource_id=#{resource_id || 'nil'}, "\
          "labels=#{labels || 'nil'}, "\
          "authentication_token=\"[SENSITIVE]\">"
      end
    end

    CreateLabelsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_id
    #   <p>The ID of the organization.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint
    #   <p>The endpoint to receive the notifications. If the protocol is HTTPS, the endpoint
    #               is a URL that begins with <code>https</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute protocol
    #   <p>The protocol to use. The supported value is https, which delivers JSON-encoded
    #               messages using HTTPS POST.</p>
    #
    #   Enum, one of: ["HTTPS"]
    #
    #   @return [String]
    #
    # @!attribute subscription_type
    #   <p>The notification type.</p>
    #
    #   Enum, one of: ["ALL"]
    #
    #   @return [String]
    #
    CreateNotificationSubscriptionInput = ::Struct.new(
      :organization_id,
      :endpoint,
      :protocol,
      :subscription_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute subscription
    #   <p>The subscription.</p>
    #
    #   @return [Subscription]
    #
    CreateNotificationSubscriptionOutput = ::Struct.new(
      :subscription,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_id
    #   <p>The ID of the organization.</p>
    #
    #   @return [String]
    #
    # @!attribute username
    #   <p>The login name of the user.</p>
    #
    #   @return [String]
    #
    # @!attribute email_address
    #   <p>The email address of the user.</p>
    #
    #   @return [String]
    #
    # @!attribute given_name
    #   <p>The given name of the user.</p>
    #
    #   @return [String]
    #
    # @!attribute surname
    #   <p>The surname of the user.</p>
    #
    #   @return [String]
    #
    # @!attribute password
    #   <p>The password of the user.</p>
    #
    #   @return [String]
    #
    # @!attribute time_zone_id
    #   <p>The time zone ID of the user.</p>
    #
    #   @return [String]
    #
    # @!attribute storage_rule
    #   <p>The amount of storage for the user.</p>
    #
    #   @return [StorageRuleType]
    #
    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>
    #
    #   @return [String]
    #
    CreateUserInput = ::Struct.new(
      :organization_id,
      :username,
      :email_address,
      :given_name,
      :surname,
      :password,
      :time_zone_id,
      :storage_rule,
      :authentication_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::WorkDocs::Types::CreateUserInput "\
          "organization_id=#{organization_id || 'nil'}, "\
          "username=#{username || 'nil'}, "\
          "email_address=#{email_address || 'nil'}, "\
          "given_name=#{given_name || 'nil'}, "\
          "surname=#{surname || 'nil'}, "\
          "password=\"[SENSITIVE]\", "\
          "time_zone_id=#{time_zone_id || 'nil'}, "\
          "storage_rule=#{storage_rule || 'nil'}, "\
          "authentication_token=\"[SENSITIVE]\">"
      end
    end

    # @!attribute user
    #   <p>The user information.</p>
    #
    #   @return [User]
    #
    CreateUserOutput = ::Struct.new(
      :user,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The limit has been reached on the number of custom properties for the specified
    #             resource.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    CustomMetadataLimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_id
    #   <p>The ID of the user.</p>
    #
    #   @return [String]
    #
    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>
    #
    #   @return [String]
    #
    DeactivateUserInput = ::Struct.new(
      :user_id,
      :authentication_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::WorkDocs::Types::DeactivateUserInput "\
          "user_id=#{user_id || 'nil'}, "\
          "authentication_token=\"[SENSITIVE]\">"
      end
    end

    DeactivateUserOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The last user in the organization is being deactivated.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute code
    #
    #   @return [String]
    #
    DeactivatingLastSystemUserException = ::Struct.new(
      :message,
      :code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>
    #
    #   @return [String]
    #
    # @!attribute document_id
    #   <p>The ID of the document.</p>
    #
    #   @return [String]
    #
    # @!attribute version_id
    #   <p>The ID of the document version.</p>
    #
    #   @return [String]
    #
    # @!attribute comment_id
    #   <p>The ID of the comment.</p>
    #
    #   @return [String]
    #
    DeleteCommentInput = ::Struct.new(
      :authentication_token,
      :document_id,
      :version_id,
      :comment_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::WorkDocs::Types::DeleteCommentInput "\
          "authentication_token=\"[SENSITIVE]\", "\
          "document_id=#{document_id || 'nil'}, "\
          "version_id=#{version_id || 'nil'}, "\
          "comment_id=#{comment_id || 'nil'}>"
      end
    end

    DeleteCommentOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The ID of the resource, either a document or folder.</p>
    #
    #   @return [String]
    #
    # @!attribute version_id
    #   <p>The ID of the version, if the custom metadata is being deleted from a document
    #               version.</p>
    #
    #   @return [String]
    #
    # @!attribute keys
    #   <p>List of properties to remove.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute delete_all
    #   <p>Flag to indicate removal of all custom metadata properties from the specified
    #               resource.</p>
    #
    #   @return [Boolean]
    #
    DeleteCustomMetadataInput = ::Struct.new(
      :authentication_token,
      :resource_id,
      :version_id,
      :keys,
      :delete_all,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.delete_all ||= false
      end

      def to_s
        "#<struct AWS::SDK::WorkDocs::Types::DeleteCustomMetadataInput "\
          "authentication_token=\"[SENSITIVE]\", "\
          "resource_id=#{resource_id || 'nil'}, "\
          "version_id=#{version_id || 'nil'}, "\
          "keys=#{keys || 'nil'}, "\
          "delete_all=#{delete_all || 'nil'}>"
      end
    end

    DeleteCustomMetadataOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>
    #
    #   @return [String]
    #
    # @!attribute document_id
    #   <p>The ID of the document.</p>
    #
    #   @return [String]
    #
    DeleteDocumentInput = ::Struct.new(
      :authentication_token,
      :document_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::WorkDocs::Types::DeleteDocumentInput "\
          "authentication_token=\"[SENSITIVE]\", "\
          "document_id=#{document_id || 'nil'}>"
      end
    end

    DeleteDocumentOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>
    #
    #   @return [String]
    #
    # @!attribute folder_id
    #   <p>The ID of the folder.</p>
    #
    #   @return [String]
    #
    DeleteFolderContentsInput = ::Struct.new(
      :authentication_token,
      :folder_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::WorkDocs::Types::DeleteFolderContentsInput "\
          "authentication_token=\"[SENSITIVE]\", "\
          "folder_id=#{folder_id || 'nil'}>"
      end
    end

    DeleteFolderContentsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>
    #
    #   @return [String]
    #
    # @!attribute folder_id
    #   <p>The ID of the folder.</p>
    #
    #   @return [String]
    #
    DeleteFolderInput = ::Struct.new(
      :authentication_token,
      :folder_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::WorkDocs::Types::DeleteFolderInput "\
          "authentication_token=\"[SENSITIVE]\", "\
          "folder_id=#{folder_id || 'nil'}>"
      end
    end

    DeleteFolderOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_id
    #   <p>The ID of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>
    #
    #   @return [String]
    #
    # @!attribute labels
    #   <p>List of labels to delete from the resource.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute delete_all
    #   <p>Flag to request removal of all labels from the specified resource.</p>
    #
    #   @return [Boolean]
    #
    DeleteLabelsInput = ::Struct.new(
      :resource_id,
      :authentication_token,
      :labels,
      :delete_all,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.delete_all ||= false
      end

      def to_s
        "#<struct AWS::SDK::WorkDocs::Types::DeleteLabelsInput "\
          "resource_id=#{resource_id || 'nil'}, "\
          "authentication_token=\"[SENSITIVE]\", "\
          "labels=#{labels || 'nil'}, "\
          "delete_all=#{delete_all || 'nil'}>"
      end
    end

    DeleteLabelsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute subscription_id
    #   <p>The ID of the subscription.</p>
    #
    #   @return [String]
    #
    # @!attribute organization_id
    #   <p>The ID of the organization.</p>
    #
    #   @return [String]
    #
    DeleteNotificationSubscriptionInput = ::Struct.new(
      :subscription_id,
      :organization_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteNotificationSubscriptionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token. Do not set this field when using
    #               administrative API actions, as in accessing the API using AWS credentials.</p>
    #
    #   @return [String]
    #
    # @!attribute user_id
    #   <p>The ID of the user.</p>
    #
    #   @return [String]
    #
    DeleteUserInput = ::Struct.new(
      :authentication_token,
      :user_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::WorkDocs::Types::DeleteUserInput "\
          "authentication_token=\"[SENSITIVE]\", "\
          "user_id=#{user_id || 'nil'}>"
      end
    end

    DeleteUserOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The timestamp that determines the starting time of the activities. The response
    #               includes the activities performed after the specified timestamp.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The timestamp that determines the end time of the activities. The response includes
    #               the activities performed before the specified timestamp.</p>
    #
    #   @return [Time]
    #
    # @!attribute organization_id
    #   <p>The ID of the organization. This is a mandatory parameter when using administrative
    #               API (SigV4) requests.</p>
    #
    #   @return [String]
    #
    # @!attribute activity_types
    #   <p>Specifies which activity types to include in the response. If this field is left
    #               empty, all activity types are returned.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The document or folder ID for which to describe activity types.</p>
    #
    #   @return [String]
    #
    # @!attribute user_id
    #   <p>The ID of the user who performed the action. The response includes activities
    #               pertaining to this user. This is an optional parameter and is only applicable for
    #               administrative API (SigV4) requests.</p>
    #
    #   @return [String]
    #
    # @!attribute include_indirect_activities
    #   <p>Includes indirect activities. An indirect activity results from a direct activity
    #               performed on a parent resource. For example, sharing a parent folder (the direct
    #               activity) shares all of the subfolders and documents within the parent folder (the
    #               indirect activity).</p>
    #
    #   @return [Boolean]
    #
    # @!attribute limit
    #   <p>The maximum number of items to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p>The marker for the next set of results.</p>
    #
    #   @return [String]
    #
    DescribeActivitiesInput = ::Struct.new(
      :authentication_token,
      :start_time,
      :end_time,
      :organization_id,
      :activity_types,
      :resource_id,
      :user_id,
      :include_indirect_activities,
      :limit,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.include_indirect_activities ||= false
      end

      def to_s
        "#<struct AWS::SDK::WorkDocs::Types::DescribeActivitiesInput "\
          "authentication_token=\"[SENSITIVE]\", "\
          "start_time=#{start_time || 'nil'}, "\
          "end_time=#{end_time || 'nil'}, "\
          "organization_id=#{organization_id || 'nil'}, "\
          "activity_types=#{activity_types || 'nil'}, "\
          "resource_id=#{resource_id || 'nil'}, "\
          "user_id=#{user_id || 'nil'}, "\
          "include_indirect_activities=#{include_indirect_activities || 'nil'}, "\
          "limit=#{limit || 'nil'}, "\
          "marker=#{marker || 'nil'}>"
      end
    end

    # @!attribute user_activities
    #   <p>The list of activities for the specified user and time period.</p>
    #
    #   @return [Array<Activity>]
    #
    # @!attribute marker
    #   <p>The marker for the next set of results.</p>
    #
    #   @return [String]
    #
    DescribeActivitiesOutput = ::Struct.new(
      :user_activities,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>
    #
    #   @return [String]
    #
    # @!attribute document_id
    #   <p>The ID of the document.</p>
    #
    #   @return [String]
    #
    # @!attribute version_id
    #   <p>The ID of the document version.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The maximum number of items to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p>The marker for the next set of results. This marker was received from a previous
    #               call.</p>
    #
    #   @return [String]
    #
    DescribeCommentsInput = ::Struct.new(
      :authentication_token,
      :document_id,
      :version_id,
      :limit,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::WorkDocs::Types::DescribeCommentsInput "\
          "authentication_token=\"[SENSITIVE]\", "\
          "document_id=#{document_id || 'nil'}, "\
          "version_id=#{version_id || 'nil'}, "\
          "limit=#{limit || 'nil'}, "\
          "marker=#{marker || 'nil'}>"
      end
    end

    # @!attribute comments
    #   <p>The list of comments for the specified document version.</p>
    #
    #   @return [Array<Comment>]
    #
    # @!attribute marker
    #   <p>The marker for the next set of results. This marker was received from a previous
    #               call.</p>
    #
    #   @return [String]
    #
    DescribeCommentsOutput = ::Struct.new(
      :comments,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>
    #
    #   @return [String]
    #
    # @!attribute document_id
    #   <p>The ID of the document.</p>
    #
    #   @return [String]
    #
    # @!attribute marker
    #   <p>The marker for the next set of results. (You received this marker from a previous
    #               call.)</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The maximum number of versions to return with this call.</p>
    #
    #   @return [Integer]
    #
    # @!attribute include
    #   <p>A comma-separated list of values. Specify "INITIALIZED" to include incomplete
    #               versions.</p>
    #
    #   @return [String]
    #
    # @!attribute fields
    #   <p>Specify "SOURCE" to include initialized versions and a URL for the source
    #               document.</p>
    #
    #   @return [String]
    #
    DescribeDocumentVersionsInput = ::Struct.new(
      :authentication_token,
      :document_id,
      :marker,
      :limit,
      :include,
      :fields,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::WorkDocs::Types::DescribeDocumentVersionsInput "\
          "authentication_token=\"[SENSITIVE]\", "\
          "document_id=#{document_id || 'nil'}, "\
          "marker=#{marker || 'nil'}, "\
          "limit=#{limit || 'nil'}, "\
          "include=#{include || 'nil'}, "\
          "fields=#{fields || 'nil'}>"
      end
    end

    # @!attribute document_versions
    #   <p>The document versions.</p>
    #
    #   @return [Array<DocumentVersionMetadata>]
    #
    # @!attribute marker
    #   <p>The marker to use when requesting the next set of results. If there are no
    #               additional results, the string is empty.</p>
    #
    #   @return [String]
    #
    DescribeDocumentVersionsOutput = ::Struct.new(
      :document_versions,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>
    #
    #   @return [String]
    #
    # @!attribute folder_id
    #   <p>The ID of the folder.</p>
    #
    #   @return [String]
    #
    # @!attribute sort
    #   <p>The sorting criteria.</p>
    #
    #   Enum, one of: ["DATE", "NAME"]
    #
    #   @return [String]
    #
    # @!attribute order
    #   <p>The order for the contents of the folder.</p>
    #
    #   Enum, one of: ["ASCENDING", "DESCENDING"]
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The maximum number of items to return with this call.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p>The marker for the next set of results. This marker was received from a previous
    #               call.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of items.</p>
    #
    #   Enum, one of: ["ALL", "DOCUMENT", "FOLDER"]
    #
    #   @return [String]
    #
    # @!attribute include
    #   <p>The contents to include. Specify "INITIALIZED" to include initialized
    #               documents.</p>
    #
    #   @return [String]
    #
    DescribeFolderContentsInput = ::Struct.new(
      :authentication_token,
      :folder_id,
      :sort,
      :order,
      :limit,
      :marker,
      :type,
      :include,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::WorkDocs::Types::DescribeFolderContentsInput "\
          "authentication_token=\"[SENSITIVE]\", "\
          "folder_id=#{folder_id || 'nil'}, "\
          "sort=#{sort || 'nil'}, "\
          "order=#{order || 'nil'}, "\
          "limit=#{limit || 'nil'}, "\
          "marker=#{marker || 'nil'}, "\
          "type=#{type || 'nil'}, "\
          "include=#{include || 'nil'}>"
      end
    end

    # @!attribute folders
    #   <p>The subfolders in the specified folder.</p>
    #
    #   @return [Array<FolderMetadata>]
    #
    # @!attribute documents
    #   <p>The documents in the specified folder.</p>
    #
    #   @return [Array<DocumentMetadata>]
    #
    # @!attribute marker
    #   <p>The marker to use when requesting the next set of results. If there are no
    #               additional results, the string is empty.</p>
    #
    #   @return [String]
    #
    DescribeFolderContentsOutput = ::Struct.new(
      :folders,
      :documents,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>
    #
    #   @return [String]
    #
    # @!attribute search_query
    #   <p>A query to describe groups by group name.</p>
    #
    #   @return [String]
    #
    # @!attribute organization_id
    #   <p>The ID of the organization.</p>
    #
    #   @return [String]
    #
    # @!attribute marker
    #   <p>The marker for the next set of results. (You received this marker from a previous
    #               call.)</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The maximum number of items to return with this call.</p>
    #
    #   @return [Integer]
    #
    DescribeGroupsInput = ::Struct.new(
      :authentication_token,
      :search_query,
      :organization_id,
      :marker,
      :limit,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::WorkDocs::Types::DescribeGroupsInput "\
          "authentication_token=\"[SENSITIVE]\", "\
          "search_query=\"[SENSITIVE]\", "\
          "organization_id=#{organization_id || 'nil'}, "\
          "marker=#{marker || 'nil'}, "\
          "limit=#{limit || 'nil'}>"
      end
    end

    # @!attribute groups
    #   <p>The list of groups.</p>
    #
    #   @return [Array<GroupMetadata>]
    #
    # @!attribute marker
    #   <p>The marker to use when requesting the next set of results. If there are no additional
    #               results, the string is empty.</p>
    #
    #   @return [String]
    #
    DescribeGroupsOutput = ::Struct.new(
      :groups,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_id
    #   <p>The ID of the organization.</p>
    #
    #   @return [String]
    #
    # @!attribute marker
    #   <p>The marker for the next set of results. (You received this marker from a previous
    #               call.)</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The maximum number of items to return with this call.</p>
    #
    #   @return [Integer]
    #
    DescribeNotificationSubscriptionsInput = ::Struct.new(
      :organization_id,
      :marker,
      :limit,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute subscriptions
    #   <p>The subscriptions.</p>
    #
    #   @return [Array<Subscription>]
    #
    # @!attribute marker
    #   <p>The marker to use when requesting the next set of results. If there are no
    #               additional results, the string is empty.</p>
    #
    #   @return [String]
    #
    DescribeNotificationSubscriptionsOutput = ::Struct.new(
      :subscriptions,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The ID of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute principal_id
    #   <p>The ID of the principal to filter permissions by.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The maximum number of items to return with this call.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p>The marker for the next set of results. (You received this marker from a previous
    #               call)</p>
    #
    #   @return [String]
    #
    DescribeResourcePermissionsInput = ::Struct.new(
      :authentication_token,
      :resource_id,
      :principal_id,
      :limit,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::WorkDocs::Types::DescribeResourcePermissionsInput "\
          "authentication_token=\"[SENSITIVE]\", "\
          "resource_id=#{resource_id || 'nil'}, "\
          "principal_id=#{principal_id || 'nil'}, "\
          "limit=#{limit || 'nil'}, "\
          "marker=#{marker || 'nil'}>"
      end
    end

    # @!attribute principals
    #   <p>The principals.</p>
    #
    #   @return [Array<Principal>]
    #
    # @!attribute marker
    #   <p>The marker to use when requesting the next set of results. If there are no
    #               additional results, the string is empty.</p>
    #
    #   @return [String]
    #
    DescribeResourcePermissionsOutput = ::Struct.new(
      :principals,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The maximum number of items to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p>The marker for the next set of results. (You received this marker from a previous
    #               call.)</p>
    #
    #   @return [String]
    #
    DescribeRootFoldersInput = ::Struct.new(
      :authentication_token,
      :limit,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::WorkDocs::Types::DescribeRootFoldersInput "\
          "authentication_token=\"[SENSITIVE]\", "\
          "limit=#{limit || 'nil'}, "\
          "marker=#{marker || 'nil'}>"
      end
    end

    # @!attribute folders
    #   <p>The user's special folders.</p>
    #
    #   @return [Array<FolderMetadata>]
    #
    # @!attribute marker
    #   <p>The marker for the next set of results.</p>
    #
    #   @return [String]
    #
    DescribeRootFoldersOutput = ::Struct.new(
      :folders,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>
    #
    #   @return [String]
    #
    # @!attribute organization_id
    #   <p>The ID of the organization.</p>
    #
    #   @return [String]
    #
    # @!attribute user_ids
    #   <p>The IDs of the users.</p>
    #
    #   @return [String]
    #
    # @!attribute query
    #   <p>A query to filter users by user name.</p>
    #
    #   @return [String]
    #
    # @!attribute include
    #   <p>The state of the users. Specify "ALL" to include inactive users.</p>
    #
    #   Enum, one of: ["ALL", "ACTIVE_PENDING"]
    #
    #   @return [String]
    #
    # @!attribute order
    #   <p>The order for the results.</p>
    #
    #   Enum, one of: ["ASCENDING", "DESCENDING"]
    #
    #   @return [String]
    #
    # @!attribute sort
    #   <p>The sorting criteria.</p>
    #
    #   Enum, one of: ["USER_NAME", "FULL_NAME", "STORAGE_LIMIT", "USER_STATUS", "STORAGE_USED"]
    #
    #   @return [String]
    #
    # @!attribute marker
    #   <p>The marker for the next set of results. (You received this marker from a previous
    #               call.)</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The maximum number of items to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute fields
    #   <p>A comma-separated list of values. Specify "STORAGE_METADATA" to include the user
    #               storage quota and utilization information.</p>
    #
    #   @return [String]
    #
    DescribeUsersInput = ::Struct.new(
      :authentication_token,
      :organization_id,
      :user_ids,
      :query,
      :include,
      :order,
      :sort,
      :marker,
      :limit,
      :fields,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::WorkDocs::Types::DescribeUsersInput "\
          "authentication_token=\"[SENSITIVE]\", "\
          "organization_id=#{organization_id || 'nil'}, "\
          "user_ids=#{user_ids || 'nil'}, "\
          "query=\"[SENSITIVE]\", "\
          "include=#{include || 'nil'}, "\
          "order=#{order || 'nil'}, "\
          "sort=#{sort || 'nil'}, "\
          "marker=#{marker || 'nil'}, "\
          "limit=#{limit || 'nil'}, "\
          "fields=#{fields || 'nil'}>"
      end
    end

    # @!attribute users
    #   <p>The users.</p>
    #
    #   @return [Array<User>]
    #
    # @!attribute total_number_of_users
    #   <p>The total number of users included in the results.</p>
    #
    #   @deprecated
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p>The marker to use when requesting the next set of results. If there are no
    #               additional results, the string is empty.</p>
    #
    #   @return [String]
    #
    DescribeUsersOutput = ::Struct.new(
      :users,
      :total_number_of_users,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception is thrown when the document is locked for comments and user tries to
    #             create or delete a comment on that document.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DocumentLockedForCommentsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the document.</p>
    #
    # @!attribute id
    #   <p>The ID of the document.</p>
    #
    #   @return [String]
    #
    # @!attribute creator_id
    #   <p>The ID of the creator.</p>
    #
    #   @return [String]
    #
    # @!attribute parent_folder_id
    #   <p>The ID of the parent folder.</p>
    #
    #   @return [String]
    #
    # @!attribute created_timestamp
    #   <p>The time when the document was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute modified_timestamp
    #   <p>The time when the document was updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute latest_version_metadata
    #   <p>The latest version of the document.</p>
    #
    #   @return [DocumentVersionMetadata]
    #
    # @!attribute resource_state
    #   <p>The resource state.</p>
    #
    #   Enum, one of: ["ACTIVE", "RESTORING", "RECYCLING", "RECYCLED"]
    #
    #   @return [String]
    #
    # @!attribute labels
    #   <p>List of labels on the document.</p>
    #
    #   @return [Array<String>]
    #
    DocumentMetadata = ::Struct.new(
      :id,
      :creator_id,
      :parent_folder_id,
      :created_timestamp,
      :modified_timestamp,
      :latest_version_metadata,
      :resource_state,
      :labels,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DocumentSourceType
    #
    module DocumentSourceType
      # No documentation available.
      #
      ORIGINAL = "ORIGINAL"

      # No documentation available.
      #
      WITH_COMMENTS = "WITH_COMMENTS"
    end

    # Includes enum constants for DocumentStatusType
    #
    module DocumentStatusType
      # No documentation available.
      #
      INITIALIZED = "INITIALIZED"

      # No documentation available.
      #
      ACTIVE = "ACTIVE"
    end

    # Includes enum constants for DocumentThumbnailType
    #
    module DocumentThumbnailType
      # No documentation available.
      #
      SMALL = "SMALL"

      # No documentation available.
      #
      SMALL_HQ = "SMALL_HQ"

      # No documentation available.
      #
      LARGE = "LARGE"
    end

    # <p>Describes a version of a document.</p>
    #
    # @!attribute id
    #   <p>The ID of the version.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the version.</p>
    #
    #   @return [String]
    #
    # @!attribute content_type
    #   <p>The content type of the document.</p>
    #
    #   @return [String]
    #
    # @!attribute size
    #   <p>The size of the document, in bytes.</p>
    #
    #   @return [Integer]
    #
    # @!attribute signature
    #   <p>The signature of the document.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the document.</p>
    #
    #   Enum, one of: ["INITIALIZED", "ACTIVE"]
    #
    #   @return [String]
    #
    # @!attribute created_timestamp
    #   <p>The timestamp when the document was first uploaded.</p>
    #
    #   @return [Time]
    #
    # @!attribute modified_timestamp
    #   <p>The timestamp when the document was last uploaded.</p>
    #
    #   @return [Time]
    #
    # @!attribute content_created_timestamp
    #   <p>The timestamp when the content of the document was originally created.</p>
    #
    #   @return [Time]
    #
    # @!attribute content_modified_timestamp
    #   <p>The timestamp when the content of the document was modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute creator_id
    #   <p>The ID of the creator.</p>
    #
    #   @return [String]
    #
    # @!attribute thumbnail
    #   <p>The thumbnail of the document.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute source
    #   <p>The source of the document.</p>
    #
    #   @return [Hash<String, String>]
    #
    DocumentVersionMetadata = ::Struct.new(
      :id,
      :name,
      :content_type,
      :size,
      :signature,
      :status,
      :created_timestamp,
      :modified_timestamp,
      :content_created_timestamp,
      :content_modified_timestamp,
      :creator_id,
      :thumbnail,
      :source,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DocumentVersionStatus
    #
    module DocumentVersionStatus
      # No documentation available.
      #
      ACTIVE = "ACTIVE"
    end

    # <p>This exception is thrown when a valid checkout ID is not presented on document
    #             version upload calls for a document that has been checked out from Web client.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DraftUploadOutOfSyncException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The resource already exists.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    EntityAlreadyExistsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The resource does not exist.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute entity_ids
    #
    #   @return [Array<String>]
    #
    EntityNotExistsException = ::Struct.new(
      :message,
      :entity_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The AWS Directory Service cannot reach an on-premises instance. Or a dependency
    #             under the control of the organization is failing, such as a connected Active
    #             Directory.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    FailedDependencyException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FolderContentType
    #
    module FolderContentType
      # No documentation available.
      #
      ALL = "ALL"

      # No documentation available.
      #
      DOCUMENT = "DOCUMENT"

      # No documentation available.
      #
      FOLDER = "FOLDER"
    end

    # <p>Describes a folder.</p>
    #
    # @!attribute id
    #   <p>The ID of the folder.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the folder.</p>
    #
    #   @return [String]
    #
    # @!attribute creator_id
    #   <p>The ID of the creator.</p>
    #
    #   @return [String]
    #
    # @!attribute parent_folder_id
    #   <p>The ID of the parent folder.</p>
    #
    #   @return [String]
    #
    # @!attribute created_timestamp
    #   <p>The time when the folder was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute modified_timestamp
    #   <p>The time when the folder was updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute resource_state
    #   <p>The resource state of the folder.</p>
    #
    #   Enum, one of: ["ACTIVE", "RESTORING", "RECYCLING", "RECYCLED"]
    #
    #   @return [String]
    #
    # @!attribute signature
    #   <p>The unique identifier created from the subfolders and documents of the
    #               folder.</p>
    #
    #   @return [String]
    #
    # @!attribute labels
    #   <p>List of labels on the folder.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute size
    #   <p>The size of the folder metadata.</p>
    #
    #   @return [Integer]
    #
    # @!attribute latest_version_size
    #   <p>The size of the latest version of the folder metadata.</p>
    #
    #   @return [Integer]
    #
    FolderMetadata = ::Struct.new(
      :id,
      :name,
      :creator_id,
      :parent_folder_id,
      :created_timestamp,
      :modified_timestamp,
      :resource_state,
      :signature,
      :labels,
      :size,
      :latest_version_size,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token.</p>
    #
    #   @return [String]
    #
    GetCurrentUserInput = ::Struct.new(
      :authentication_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::WorkDocs::Types::GetCurrentUserInput "\
          "authentication_token=\"[SENSITIVE]\">"
      end
    end

    # @!attribute user
    #   <p>Metadata of the user.</p>
    #
    #   @return [User]
    #
    GetCurrentUserOutput = ::Struct.new(
      :user,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>
    #
    #   @return [String]
    #
    # @!attribute document_id
    #   <p>The ID of the document.</p>
    #
    #   @return [String]
    #
    # @!attribute include_custom_metadata
    #   <p>Set this to <code>TRUE</code> to include custom metadata in the response.</p>
    #
    #   @return [Boolean]
    #
    GetDocumentInput = ::Struct.new(
      :authentication_token,
      :document_id,
      :include_custom_metadata,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.include_custom_metadata ||= false
      end

      def to_s
        "#<struct AWS::SDK::WorkDocs::Types::GetDocumentInput "\
          "authentication_token=\"[SENSITIVE]\", "\
          "document_id=#{document_id || 'nil'}, "\
          "include_custom_metadata=#{include_custom_metadata || 'nil'}>"
      end
    end

    # @!attribute metadata
    #   <p>The metadata details of the document.</p>
    #
    #   @return [DocumentMetadata]
    #
    # @!attribute custom_metadata
    #   <p>The custom metadata on the document.</p>
    #
    #   @return [Hash<String, String>]
    #
    GetDocumentOutput = ::Struct.new(
      :metadata,
      :custom_metadata,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>
    #
    #   @return [String]
    #
    # @!attribute document_id
    #   <p>The ID of the document.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The maximum number of levels in the hierarchy to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute fields
    #   <p>A comma-separated list of values. Specify <code>NAME</code> to include the names of
    #               the parent folders.</p>
    #
    #   @return [String]
    #
    # @!attribute marker
    #   <p>This value is not supported.</p>
    #
    #   @return [String]
    #
    GetDocumentPathInput = ::Struct.new(
      :authentication_token,
      :document_id,
      :limit,
      :fields,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::WorkDocs::Types::GetDocumentPathInput "\
          "authentication_token=\"[SENSITIVE]\", "\
          "document_id=#{document_id || 'nil'}, "\
          "limit=#{limit || 'nil'}, "\
          "fields=#{fields || 'nil'}, "\
          "marker=#{marker || 'nil'}>"
      end
    end

    # @!attribute path
    #   <p>The path information.</p>
    #
    #   @return [ResourcePath]
    #
    GetDocumentPathOutput = ::Struct.new(
      :path,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>
    #
    #   @return [String]
    #
    # @!attribute document_id
    #   <p>The ID of the document.</p>
    #
    #   @return [String]
    #
    # @!attribute version_id
    #   <p>The version ID of the document.</p>
    #
    #   @return [String]
    #
    # @!attribute fields
    #   <p>A comma-separated list of values. Specify "SOURCE" to include a URL for the source
    #               document.</p>
    #
    #   @return [String]
    #
    # @!attribute include_custom_metadata
    #   <p>Set this to TRUE to include custom metadata in the response.</p>
    #
    #   @return [Boolean]
    #
    GetDocumentVersionInput = ::Struct.new(
      :authentication_token,
      :document_id,
      :version_id,
      :fields,
      :include_custom_metadata,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.include_custom_metadata ||= false
      end

      def to_s
        "#<struct AWS::SDK::WorkDocs::Types::GetDocumentVersionInput "\
          "authentication_token=\"[SENSITIVE]\", "\
          "document_id=#{document_id || 'nil'}, "\
          "version_id=#{version_id || 'nil'}, "\
          "fields=#{fields || 'nil'}, "\
          "include_custom_metadata=#{include_custom_metadata || 'nil'}>"
      end
    end

    # @!attribute metadata
    #   <p>The version metadata.</p>
    #
    #   @return [DocumentVersionMetadata]
    #
    # @!attribute custom_metadata
    #   <p>The custom metadata on the document version.</p>
    #
    #   @return [Hash<String, String>]
    #
    GetDocumentVersionOutput = ::Struct.new(
      :metadata,
      :custom_metadata,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>
    #
    #   @return [String]
    #
    # @!attribute folder_id
    #   <p>The ID of the folder.</p>
    #
    #   @return [String]
    #
    # @!attribute include_custom_metadata
    #   <p>Set to TRUE to include custom metadata in the response.</p>
    #
    #   @return [Boolean]
    #
    GetFolderInput = ::Struct.new(
      :authentication_token,
      :folder_id,
      :include_custom_metadata,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.include_custom_metadata ||= false
      end

      def to_s
        "#<struct AWS::SDK::WorkDocs::Types::GetFolderInput "\
          "authentication_token=\"[SENSITIVE]\", "\
          "folder_id=#{folder_id || 'nil'}, "\
          "include_custom_metadata=#{include_custom_metadata || 'nil'}>"
      end
    end

    # @!attribute metadata
    #   <p>The metadata of the folder.</p>
    #
    #   @return [FolderMetadata]
    #
    # @!attribute custom_metadata
    #   <p>The custom metadata on the folder.</p>
    #
    #   @return [Hash<String, String>]
    #
    GetFolderOutput = ::Struct.new(
      :metadata,
      :custom_metadata,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>
    #
    #   @return [String]
    #
    # @!attribute folder_id
    #   <p>The ID of the folder.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The maximum number of levels in the hierarchy to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute fields
    #   <p>A comma-separated list of values. Specify "NAME" to include the names of the parent
    #               folders.</p>
    #
    #   @return [String]
    #
    # @!attribute marker
    #   <p>This value is not supported.</p>
    #
    #   @return [String]
    #
    GetFolderPathInput = ::Struct.new(
      :authentication_token,
      :folder_id,
      :limit,
      :fields,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::WorkDocs::Types::GetFolderPathInput "\
          "authentication_token=\"[SENSITIVE]\", "\
          "folder_id=#{folder_id || 'nil'}, "\
          "limit=#{limit || 'nil'}, "\
          "fields=#{fields || 'nil'}, "\
          "marker=#{marker || 'nil'}>"
      end
    end

    # @!attribute path
    #   <p>The path information.</p>
    #
    #   @return [ResourcePath]
    #
    GetFolderPathOutput = ::Struct.new(
      :path,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute authentication_token
    #   <p>The Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>
    #
    #   @return [String]
    #
    # @!attribute user_id
    #   <p>The user ID for the resource collection. This is a required field for accessing the
    #               API operation using IAM credentials.</p>
    #
    #   @return [String]
    #
    # @!attribute collection_type
    #   <p>The collection type.</p>
    #
    #   Enum, one of: ["SHARED_WITH_ME"]
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The maximum number of resources to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p>The marker for the next set of results. This marker was received from a previous call.</p>
    #
    #   @return [String]
    #
    GetResourcesInput = ::Struct.new(
      :authentication_token,
      :user_id,
      :collection_type,
      :limit,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::WorkDocs::Types::GetResourcesInput "\
          "authentication_token=\"[SENSITIVE]\", "\
          "user_id=#{user_id || 'nil'}, "\
          "collection_type=#{collection_type || 'nil'}, "\
          "limit=#{limit || 'nil'}, "\
          "marker=#{marker || 'nil'}>"
      end
    end

    # @!attribute folders
    #   <p>The folders in the specified folder.</p>
    #
    #   @return [Array<FolderMetadata>]
    #
    # @!attribute documents
    #   <p>The documents in the specified collection.</p>
    #
    #   @return [Array<DocumentMetadata>]
    #
    # @!attribute marker
    #   <p>The marker to use when requesting the next set of results. If there are no additional results, the string is empty.</p>
    #
    #   @return [String]
    #
    GetResourcesOutput = ::Struct.new(
      :folders,
      :documents,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the metadata of a user group.</p>
    #
    # @!attribute id
    #   <p>The ID of the user group.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the group.</p>
    #
    #   @return [String]
    #
    GroupMetadata = ::Struct.new(
      :id,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The user is undergoing transfer of ownership.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    IllegalUserStateException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The ID of the document.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the document.</p>
    #
    #   @return [String]
    #
    # @!attribute content_created_timestamp
    #   <p>The timestamp when the content of the document was originally created.</p>
    #
    #   @return [Time]
    #
    # @!attribute content_modified_timestamp
    #   <p>The timestamp when the content of the document was modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute content_type
    #   <p>The content type of the document.</p>
    #
    #   @return [String]
    #
    # @!attribute document_size_in_bytes
    #   <p>The size of the document, in bytes.</p>
    #
    #   @return [Integer]
    #
    # @!attribute parent_folder_id
    #   <p>The ID of the parent folder.</p>
    #
    #   @return [String]
    #
    InitiateDocumentVersionUploadInput = ::Struct.new(
      :authentication_token,
      :id,
      :name,
      :content_created_timestamp,
      :content_modified_timestamp,
      :content_type,
      :document_size_in_bytes,
      :parent_folder_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::WorkDocs::Types::InitiateDocumentVersionUploadInput "\
          "authentication_token=\"[SENSITIVE]\", "\
          "id=#{id || 'nil'}, "\
          "name=#{name || 'nil'}, "\
          "content_created_timestamp=#{content_created_timestamp || 'nil'}, "\
          "content_modified_timestamp=#{content_modified_timestamp || 'nil'}, "\
          "content_type=#{content_type || 'nil'}, "\
          "document_size_in_bytes=#{document_size_in_bytes || 'nil'}, "\
          "parent_folder_id=#{parent_folder_id || 'nil'}>"
      end
    end

    # @!attribute metadata
    #   <p>The document metadata.</p>
    #
    #   @return [DocumentMetadata]
    #
    # @!attribute upload_metadata
    #   <p>The upload metadata.</p>
    #
    #   @return [UploadMetadata]
    #
    InitiateDocumentVersionUploadOutput = ::Struct.new(
      :metadata,
      :upload_metadata,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The pagination marker or limit fields are not valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidArgumentException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The requested operation is not allowed on the specified comment object.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidCommentOperationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The operation is invalid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidOperationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The password is invalid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidPasswordException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The maximum of 100,000 folders under the parent folder has been exceeded.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    LimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for LocaleType
    #
    module LocaleType
      # No documentation available.
      #
      EN = "en"

      # No documentation available.
      #
      FR = "fr"

      # No documentation available.
      #
      KO = "ko"

      # No documentation available.
      #
      DE = "de"

      # No documentation available.
      #
      ES = "es"

      # No documentation available.
      #
      JA = "ja"

      # No documentation available.
      #
      RU = "ru"

      # No documentation available.
      #
      ZH_CN = "zh_CN"

      # No documentation available.
      #
      ZH_TW = "zh_TW"

      # No documentation available.
      #
      PT_BR = "pt_BR"

      # No documentation available.
      #
      DEFAULT = "default"
    end

    # <p>Set of options which defines notification preferences of given action.</p>
    #
    # @!attribute send_email
    #   <p>Boolean value to indicate an email notification should be sent to the
    #               receipients.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute email_message
    #   <p>Text value to be included in the email body.</p>
    #
    #   @return [String]
    #
    NotificationOptions = ::Struct.new(
      :send_email,
      :email_message,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.send_email ||= false
      end

      def to_s
        "#<struct AWS::SDK::WorkDocs::Types::NotificationOptions "\
          "send_email=#{send_email || 'nil'}, "\
          "email_message=\"[SENSITIVE]\">"
      end
    end

    # Includes enum constants for OrderType
    #
    module OrderType
      # No documentation available.
      #
      ASCENDING = "ASCENDING"

      # No documentation available.
      #
      DESCENDING = "DESCENDING"
    end

    # <p>Describes the users or user groups.</p>
    #
    # @!attribute users
    #   <p>The list of users.</p>
    #
    #   @return [Array<UserMetadata>]
    #
    # @!attribute groups
    #   <p>The list of user groups.</p>
    #
    #   @return [Array<GroupMetadata>]
    #
    Participants = ::Struct.new(
      :users,
      :groups,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the permissions.</p>
    #
    # @!attribute role
    #   <p>The role of the user.</p>
    #
    #   Enum, one of: ["VIEWER", "CONTRIBUTOR", "OWNER", "COOWNER"]
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of permissions.</p>
    #
    #   Enum, one of: ["DIRECT", "INHERITED"]
    #
    #   @return [String]
    #
    PermissionInfo = ::Struct.new(
      :role,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a resource.</p>
    #
    # @!attribute id
    #   <p>The ID of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of resource.</p>
    #
    #   Enum, one of: ["USER", "GROUP", "INVITE", "ANONYMOUS", "ORGANIZATION"]
    #
    #   @return [String]
    #
    # @!attribute roles
    #   <p>The permission information for the resource.</p>
    #
    #   @return [Array<PermissionInfo>]
    #
    Principal = ::Struct.new(
      :id,
      :type,
      :roles,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PrincipalType
    #
    module PrincipalType
      # No documentation available.
      #
      USER = "USER"

      # No documentation available.
      #
      GROUP = "GROUP"

      # No documentation available.
      #
      INVITE = "INVITE"

      # No documentation available.
      #
      ANONYMOUS = "ANONYMOUS"

      # No documentation available.
      #
      ORGANIZATION = "ORGANIZATION"
    end

    # <p>The specified document version is not in the INITIALIZED state.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ProhibitedStateException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The ID of the resource.</p>
    #
    #   @return [String]
    #
    RemoveAllResourcePermissionsInput = ::Struct.new(
      :authentication_token,
      :resource_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::WorkDocs::Types::RemoveAllResourcePermissionsInput "\
          "authentication_token=\"[SENSITIVE]\", "\
          "resource_id=#{resource_id || 'nil'}>"
      end
    end

    RemoveAllResourcePermissionsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The ID of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute principal_id
    #   <p>The principal ID of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute principal_type
    #   <p>The principal type of the resource.</p>
    #
    #   Enum, one of: ["USER", "GROUP", "INVITE", "ANONYMOUS", "ORGANIZATION"]
    #
    #   @return [String]
    #
    RemoveResourcePermissionInput = ::Struct.new(
      :authentication_token,
      :resource_id,
      :principal_id,
      :principal_type,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::WorkDocs::Types::RemoveResourcePermissionInput "\
          "authentication_token=\"[SENSITIVE]\", "\
          "resource_id=#{resource_id || 'nil'}, "\
          "principal_id=#{principal_id || 'nil'}, "\
          "principal_type=#{principal_type || 'nil'}>"
      end
    end

    RemoveResourcePermissionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The response is too large to return. The request must include a filter to reduce the size of the response.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    RequestedEntityTooLargeException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The resource is already checked out.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceAlreadyCheckedOutException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ResourceCollectionType
    #
    module ResourceCollectionType
      # No documentation available.
      #
      SHARED_WITH_ME = "SHARED_WITH_ME"
    end

    # <p>Describes the metadata of a resource.</p>
    #
    # @!attribute type
    #   <p>The type of resource.</p>
    #
    #   Enum, one of: ["FOLDER", "DOCUMENT"]
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute original_name
    #   <p>The original name of the resource before a rename operation.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The ID of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute version_id
    #   <p>The version ID of the resource. This is an optional field and is filled for action
    #               on document version.</p>
    #
    #   @return [String]
    #
    # @!attribute owner
    #   <p>The owner of the resource.</p>
    #
    #   @return [UserMetadata]
    #
    # @!attribute parent_id
    #   <p>The parent ID of the resource before a rename operation.</p>
    #
    #   @return [String]
    #
    ResourceMetadata = ::Struct.new(
      :type,
      :name,
      :original_name,
      :id,
      :version_id,
      :owner,
      :parent_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the path information of a resource.</p>
    #
    # @!attribute components
    #   <p>The components of the resource path.</p>
    #
    #   @return [Array<ResourcePathComponent>]
    #
    ResourcePath = ::Struct.new(
      :components,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the resource path.</p>
    #
    # @!attribute id
    #   <p>The ID of the resource path.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the resource path.</p>
    #
    #   @return [String]
    #
    ResourcePathComponent = ::Struct.new(
      :id,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ResourceSortType
    #
    module ResourceSortType
      # No documentation available.
      #
      DATE = "DATE"

      # No documentation available.
      #
      NAME = "NAME"
    end

    # Includes enum constants for ResourceStateType
    #
    module ResourceStateType
      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      RESTORING = "RESTORING"

      # No documentation available.
      #
      RECYCLING = "RECYCLING"

      # No documentation available.
      #
      RECYCLED = "RECYCLED"
    end

    # Includes enum constants for ResourceType
    #
    module ResourceType
      # No documentation available.
      #
      FOLDER = "FOLDER"

      # No documentation available.
      #
      DOCUMENT = "DOCUMENT"
    end

    # Includes enum constants for RolePermissionType
    #
    module RolePermissionType
      # No documentation available.
      #
      DIRECT = "DIRECT"

      # No documentation available.
      #
      INHERITED = "INHERITED"
    end

    # Includes enum constants for RoleType
    #
    module RoleType
      # No documentation available.
      #
      VIEWER = "VIEWER"

      # No documentation available.
      #
      CONTRIBUTOR = "CONTRIBUTOR"

      # No documentation available.
      #
      OWNER = "OWNER"

      # No documentation available.
      #
      COOWNER = "COOWNER"
    end

    # <p>One or more of the dependencies is unavailable.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ServiceUnavailableException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the recipient type and ID, if available.</p>
    #
    # @!attribute id
    #   <p>The ID of the recipient.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of the recipient.</p>
    #
    #   Enum, one of: ["USER", "GROUP", "INVITE", "ANONYMOUS", "ORGANIZATION"]
    #
    #   @return [String]
    #
    # @!attribute role
    #   <p>The role of the recipient.</p>
    #
    #   Enum, one of: ["VIEWER", "CONTRIBUTOR", "OWNER", "COOWNER"]
    #
    #   @return [String]
    #
    SharePrincipal = ::Struct.new(
      :id,
      :type,
      :role,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the share results of a resource.</p>
    #
    # @!attribute principal_id
    #   <p>The ID of the principal.</p>
    #
    #   @return [String]
    #
    # @!attribute invitee_principal_id
    #   <p>The ID of the invited user.</p>
    #
    #   @return [String]
    #
    # @!attribute role
    #   <p>The role.</p>
    #
    #   Enum, one of: ["VIEWER", "CONTRIBUTOR", "OWNER", "COOWNER"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status.</p>
    #
    #   Enum, one of: ["SUCCESS", "FAILURE"]
    #
    #   @return [String]
    #
    # @!attribute share_id
    #   <p>The ID of the resource that was shared.</p>
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>The status message.</p>
    #
    #   @return [String]
    #
    ShareResult = ::Struct.new(
      :principal_id,
      :invitee_principal_id,
      :role,
      :status,
      :share_id,
      :status_message,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::WorkDocs::Types::ShareResult "\
          "principal_id=#{principal_id || 'nil'}, "\
          "invitee_principal_id=#{invitee_principal_id || 'nil'}, "\
          "role=#{role || 'nil'}, "\
          "status=#{status || 'nil'}, "\
          "share_id=#{share_id || 'nil'}, "\
          "status_message=\"[SENSITIVE]\">"
      end
    end

    # Includes enum constants for ShareStatusType
    #
    module ShareStatusType
      # No documentation available.
      #
      SUCCESS = "SUCCESS"

      # No documentation available.
      #
      FAILURE = "FAILURE"
    end

    # <p>The storage limit has been exceeded.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    StorageLimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The storage limit will be exceeded.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    StorageLimitWillExceedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the storage for a user.</p>
    #
    # @!attribute storage_allocated_in_bytes
    #   <p>The amount of storage allocated, in bytes.</p>
    #
    #   @return [Integer]
    #
    # @!attribute storage_type
    #   <p>The type of storage.</p>
    #
    #   Enum, one of: ["UNLIMITED", "QUOTA"]
    #
    #   @return [String]
    #
    StorageRuleType = ::Struct.new(
      :storage_allocated_in_bytes,
      :storage_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for StorageType
    #
    module StorageType
      # No documentation available.
      #
      UNLIMITED = "UNLIMITED"

      # No documentation available.
      #
      QUOTA = "QUOTA"
    end

    # <p>Describes a subscription.</p>
    #
    # @!attribute subscription_id
    #   <p>The ID of the subscription.</p>
    #
    #   @return [String]
    #
    # @!attribute end_point
    #   <p>The endpoint of the subscription.</p>
    #
    #   @return [String]
    #
    # @!attribute protocol
    #   <p>The protocol of the subscription.</p>
    #
    #   Enum, one of: ["HTTPS"]
    #
    #   @return [String]
    #
    Subscription = ::Struct.new(
      :subscription_id,
      :end_point,
      :protocol,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SubscriptionProtocolType
    #
    module SubscriptionProtocolType
      # No documentation available.
      #
      HTTPS = "HTTPS"
    end

    # Includes enum constants for SubscriptionType
    #
    module SubscriptionType
      # No documentation available.
      #
      ALL = "ALL"
    end

    # <p>The limit has been reached on the number of labels for the specified
    #             resource.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyLabelsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You've reached the limit on the number of subscriptions for the WorkDocs
    #             instance.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManySubscriptionsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The operation is not permitted.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute code
    #
    #   @return [String]
    #
    UnauthorizedOperationException = ::Struct.new(
      :message,
      :code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The caller does not have access to perform the action on the resource.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    UnauthorizedResourceAccessException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>
    #
    #   @return [String]
    #
    # @!attribute document_id
    #   <p>The ID of the document.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the document.</p>
    #
    #   @return [String]
    #
    # @!attribute parent_folder_id
    #   <p>The ID of the parent folder.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_state
    #   <p>The resource state of the document. Only ACTIVE and RECYCLED are
    #               supported.</p>
    #
    #   Enum, one of: ["ACTIVE", "RESTORING", "RECYCLING", "RECYCLED"]
    #
    #   @return [String]
    #
    UpdateDocumentInput = ::Struct.new(
      :authentication_token,
      :document_id,
      :name,
      :parent_folder_id,
      :resource_state,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::WorkDocs::Types::UpdateDocumentInput "\
          "authentication_token=\"[SENSITIVE]\", "\
          "document_id=#{document_id || 'nil'}, "\
          "name=#{name || 'nil'}, "\
          "parent_folder_id=#{parent_folder_id || 'nil'}, "\
          "resource_state=#{resource_state || 'nil'}>"
      end
    end

    UpdateDocumentOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>
    #
    #   @return [String]
    #
    # @!attribute document_id
    #   <p>The ID of the document.</p>
    #
    #   @return [String]
    #
    # @!attribute version_id
    #   <p>The version ID of the document.</p>
    #
    #   @return [String]
    #
    # @!attribute version_status
    #   <p>The status of the version.</p>
    #
    #   Enum, one of: ["ACTIVE"]
    #
    #   @return [String]
    #
    UpdateDocumentVersionInput = ::Struct.new(
      :authentication_token,
      :document_id,
      :version_id,
      :version_status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::WorkDocs::Types::UpdateDocumentVersionInput "\
          "authentication_token=\"[SENSITIVE]\", "\
          "document_id=#{document_id || 'nil'}, "\
          "version_id=#{version_id || 'nil'}, "\
          "version_status=#{version_status || 'nil'}>"
      end
    end

    UpdateDocumentVersionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>
    #
    #   @return [String]
    #
    # @!attribute folder_id
    #   <p>The ID of the folder.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the folder.</p>
    #
    #   @return [String]
    #
    # @!attribute parent_folder_id
    #   <p>The ID of the parent folder.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_state
    #   <p>The resource state of the folder. Only ACTIVE and RECYCLED are accepted values from
    #               the API.</p>
    #
    #   Enum, one of: ["ACTIVE", "RESTORING", "RECYCLING", "RECYCLED"]
    #
    #   @return [String]
    #
    UpdateFolderInput = ::Struct.new(
      :authentication_token,
      :folder_id,
      :name,
      :parent_folder_id,
      :resource_state,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::WorkDocs::Types::UpdateFolderInput "\
          "authentication_token=\"[SENSITIVE]\", "\
          "folder_id=#{folder_id || 'nil'}, "\
          "name=#{name || 'nil'}, "\
          "parent_folder_id=#{parent_folder_id || 'nil'}, "\
          "resource_state=#{resource_state || 'nil'}>"
      end
    end

    UpdateFolderOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>
    #
    #   @return [String]
    #
    # @!attribute user_id
    #   <p>The ID of the user.</p>
    #
    #   @return [String]
    #
    # @!attribute given_name
    #   <p>The given name of the user.</p>
    #
    #   @return [String]
    #
    # @!attribute surname
    #   <p>The surname of the user.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of the user.</p>
    #
    #   Enum, one of: ["USER", "ADMIN", "POWERUSER", "MINIMALUSER", "WORKSPACESUSER"]
    #
    #   @return [String]
    #
    # @!attribute storage_rule
    #   <p>The amount of storage for the user.</p>
    #
    #   @return [StorageRuleType]
    #
    # @!attribute time_zone_id
    #   <p>The time zone ID of the user.</p>
    #
    #   @return [String]
    #
    # @!attribute locale
    #   <p>The locale of the user.</p>
    #
    #   Enum, one of: ["en", "fr", "ko", "de", "es", "ja", "ru", "zh_CN", "zh_TW", "pt_BR", "default"]
    #
    #   @return [String]
    #
    # @!attribute grant_poweruser_privileges
    #   <p>Boolean value to determine whether the user is granted Poweruser privileges.</p>
    #
    #   Enum, one of: ["TRUE", "FALSE"]
    #
    #   @return [String]
    #
    UpdateUserInput = ::Struct.new(
      :authentication_token,
      :user_id,
      :given_name,
      :surname,
      :type,
      :storage_rule,
      :time_zone_id,
      :locale,
      :grant_poweruser_privileges,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::WorkDocs::Types::UpdateUserInput "\
          "authentication_token=\"[SENSITIVE]\", "\
          "user_id=#{user_id || 'nil'}, "\
          "given_name=#{given_name || 'nil'}, "\
          "surname=#{surname || 'nil'}, "\
          "type=#{type || 'nil'}, "\
          "storage_rule=#{storage_rule || 'nil'}, "\
          "time_zone_id=#{time_zone_id || 'nil'}, "\
          "locale=#{locale || 'nil'}, "\
          "grant_poweruser_privileges=#{grant_poweruser_privileges || 'nil'}>"
      end
    end

    # @!attribute user
    #   <p>The user information.</p>
    #
    #   @return [User]
    #
    UpdateUserOutput = ::Struct.new(
      :user,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the upload.</p>
    #
    # @!attribute upload_url
    #   <p>The URL of the upload.</p>
    #
    #   @return [String]
    #
    # @!attribute signed_headers
    #   <p>The signed headers.</p>
    #
    #   @return [Hash<String, String>]
    #
    UploadMetadata = ::Struct.new(
      :upload_url,
      :signed_headers,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::WorkDocs::Types::UploadMetadata "\
          "upload_url=\"[SENSITIVE]\", "\
          "signed_headers=#{signed_headers || 'nil'}>"
      end
    end

    # <p>Describes a user.</p>
    #
    # @!attribute id
    #   <p>The ID of the user.</p>
    #
    #   @return [String]
    #
    # @!attribute username
    #   <p>The login name of the user.</p>
    #
    #   @return [String]
    #
    # @!attribute email_address
    #   <p>The email address of the user.</p>
    #
    #   @return [String]
    #
    # @!attribute given_name
    #   <p>The given name of the user.</p>
    #
    #   @return [String]
    #
    # @!attribute surname
    #   <p>The surname of the user.</p>
    #
    #   @return [String]
    #
    # @!attribute organization_id
    #   <p>The ID of the organization.</p>
    #
    #   @return [String]
    #
    # @!attribute root_folder_id
    #   <p>The ID of the root folder.</p>
    #
    #   @return [String]
    #
    # @!attribute recycle_bin_folder_id
    #   <p>The ID of the recycle bin folder.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the user.</p>
    #
    #   Enum, one of: ["ACTIVE", "INACTIVE", "PENDING"]
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of user.</p>
    #
    #   Enum, one of: ["USER", "ADMIN", "POWERUSER", "MINIMALUSER", "WORKSPACESUSER"]
    #
    #   @return [String]
    #
    # @!attribute created_timestamp
    #   <p>The time when the user was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute modified_timestamp
    #   <p>The time when the user was modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute time_zone_id
    #   <p>The time zone ID of the user.</p>
    #
    #   @return [String]
    #
    # @!attribute locale
    #   <p>The locale of the user.</p>
    #
    #   Enum, one of: ["en", "fr", "ko", "de", "es", "ja", "ru", "zh_CN", "zh_TW", "pt_BR", "default"]
    #
    #   @return [String]
    #
    # @!attribute storage
    #   <p>The storage for the user.</p>
    #
    #   @return [UserStorageMetadata]
    #
    User = ::Struct.new(
      :id,
      :username,
      :email_address,
      :given_name,
      :surname,
      :organization_id,
      :root_folder_id,
      :recycle_bin_folder_id,
      :status,
      :type,
      :created_timestamp,
      :modified_timestamp,
      :time_zone_id,
      :locale,
      :storage,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for UserFilterType
    #
    module UserFilterType
      # No documentation available.
      #
      ALL = "ALL"

      # No documentation available.
      #
      ACTIVE_PENDING = "ACTIVE_PENDING"
    end

    # <p>Describes the metadata of the user.</p>
    #
    # @!attribute id
    #   <p>The ID of the user.</p>
    #
    #   @return [String]
    #
    # @!attribute username
    #   <p>The name of the user.</p>
    #
    #   @return [String]
    #
    # @!attribute given_name
    #   <p>The given name of the user before a rename operation.</p>
    #
    #   @return [String]
    #
    # @!attribute surname
    #   <p>The surname of the user.</p>
    #
    #   @return [String]
    #
    # @!attribute email_address
    #   <p>The email address of the user.</p>
    #
    #   @return [String]
    #
    UserMetadata = ::Struct.new(
      :id,
      :username,
      :given_name,
      :surname,
      :email_address,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for UserSortType
    #
    module UserSortType
      # No documentation available.
      #
      USER_NAME = "USER_NAME"

      # No documentation available.
      #
      FULL_NAME = "FULL_NAME"

      # No documentation available.
      #
      STORAGE_LIMIT = "STORAGE_LIMIT"

      # No documentation available.
      #
      USER_STATUS = "USER_STATUS"

      # No documentation available.
      #
      STORAGE_USED = "STORAGE_USED"
    end

    # Includes enum constants for UserStatusType
    #
    module UserStatusType
      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      INACTIVE = "INACTIVE"

      # No documentation available.
      #
      PENDING = "PENDING"
    end

    # <p>Describes the storage for a user.</p>
    #
    # @!attribute storage_utilized_in_bytes
    #   <p>The amount of storage used, in bytes.</p>
    #
    #   @return [Integer]
    #
    # @!attribute storage_rule
    #   <p>The storage for a user.</p>
    #
    #   @return [StorageRuleType]
    #
    UserStorageMetadata = ::Struct.new(
      :storage_utilized_in_bytes,
      :storage_rule,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for UserType
    #
    module UserType
      # No documentation available.
      #
      USER = "USER"

      # No documentation available.
      #
      ADMIN = "ADMIN"

      # No documentation available.
      #
      POWERUSER = "POWERUSER"

      # No documentation available.
      #
      MINIMALUSER = "MINIMALUSER"

      # No documentation available.
      #
      WORKSPACESUSER = "WORKSPACESUSER"
    end

  end
end
