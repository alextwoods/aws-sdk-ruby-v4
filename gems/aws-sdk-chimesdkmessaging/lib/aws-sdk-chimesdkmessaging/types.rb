# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ChimeSDKMessaging
  module Types

    # Includes enum constants for AllowNotifications
    #
    module AllowNotifications
      # No documentation available.
      #
      ALL = "ALL"

      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      FILTERED = "FILTERED"
    end

    # <p>Summary of the membership details of an <code>AppInstanceUser</code>.</p>
    #
    # @!attribute type
    #   <p>The type of <code>ChannelMembership</code>.</p>
    #
    #   Enum, one of: ["DEFAULT", "HIDDEN"]
    #
    #   @return [String]
    #
    # @!attribute read_marker_timestamp
    #   <p>The time at which an <code>AppInstanceUser</code> last marked a channel as read.</p>
    #
    #   @return [Time]
    #
    AppInstanceUserMembershipSummary = ::Struct.new(
      :type,
      :read_marker_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel.</p>
    #
    #   @return [String]
    #
    # @!attribute channel_flow_arn
    #   <p>The ARN of the channel flow.</p>
    #
    #   @return [String]
    #
    # @!attribute chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user making the API call.</p>
    #
    #   @return [String]
    #
    AssociateChannelFlowInput = ::Struct.new(
      :channel_arn,
      :channel_flow_arn,
      :chime_bearer,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AssociateChannelFlowOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The input parameters don't match the service's restrictions.</p>
    #
    # @!attribute code
    #   Enum, one of: ["BadRequest", "Conflict", "Forbidden", "NotFound", "PreconditionFailed", "ResourceLimitExceeded", "ServiceFailure", "AccessDenied", "ServiceUnavailable", "Throttled", "Throttling", "Unauthorized", "Unprocessable", "VoiceConnectorGroupAssociationsExist", "PhoneNumberAssociationsExist"]
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    BadRequestException = ::Struct.new(
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The membership information, including member ARNs, the channel ARN, and membership
    #          types.</p>
    #
    # @!attribute invited_by
    #   <p>The identifier of the member who invited another member.</p>
    #
    #   @return [Identity]
    #
    # @!attribute type
    #   <p>The membership types set for the channel users.</p>
    #
    #   Enum, one of: ["DEFAULT", "HIDDEN"]
    #
    #   @return [String]
    #
    # @!attribute members
    #   <p>The users successfully added to the request.</p>
    #
    #   @return [Array<Identity>]
    #
    # @!attribute channel_arn
    #   <p>The ARN of the channel to which you're adding users.</p>
    #
    #   @return [String]
    #
    BatchChannelMemberships = ::Struct.new(
      :invited_by,
      :type,
      :members,
      :channel_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A list of failed member ARNs, error codes, and error messages.</p>
    #
    # @!attribute member_arn
    #   <p>The <code>AppInstanceUserArn</code> of the member that the service couldn't add.</p>
    #
    #   @return [String]
    #
    # @!attribute error_code
    #   <p>The error code.</p>
    #
    #   Enum, one of: ["BadRequest", "Conflict", "Forbidden", "NotFound", "PreconditionFailed", "ResourceLimitExceeded", "ServiceFailure", "AccessDenied", "ServiceUnavailable", "Throttled", "Throttling", "Unauthorized", "Unprocessable", "VoiceConnectorGroupAssociationsExist", "PhoneNumberAssociationsExist"]
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>The error message.</p>
    #
    #   @return [String]
    #
    BatchCreateChannelMembershipError = ::Struct.new(
      :member_arn,
      :error_code,
      :error_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel to which you're adding users.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The membership type of a user, <code>DEFAULT</code> or <code>HIDDEN</code>. Default
    #            members are always returned as part of <code>ListChannelMemberships</code>. Hidden members
    #            are only returned if the type filter in <code>ListChannelMemberships</code> equals
    #               <code>HIDDEN</code>. Otherwise hidden members are not returned. This is only supported
    #            by moderators.</p>
    #
    #   Enum, one of: ["DEFAULT", "HIDDEN"]
    #
    #   @return [String]
    #
    # @!attribute member_arns
    #   <p>The <code>AppInstanceUserArn</code>s of the members you want to add to the channel.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    #   @return [String]
    #
    BatchCreateChannelMembershipInput = ::Struct.new(
      :channel_arn,
      :type,
      :member_arns,
      :chime_bearer,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute batch_channel_memberships
    #   <p>The list of channel memberships in the response.</p>
    #
    #   @return [BatchChannelMemberships]
    #
    # @!attribute errors
    #   <p>If the action fails for one or more of the memberships in the request, a list of the
    #            memberships is returned, along with error codes and error messages.</p>
    #
    #   @return [Array<BatchCreateChannelMembershipError>]
    #
    BatchCreateChannelMembershipOutput = ::Struct.new(
      :batch_channel_memberships,
      :errors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The details of a channel.</p>
    #
    # @!attribute name
    #   <p>The name of a channel.</p>
    #
    #   @return [String]
    #
    # @!attribute channel_arn
    #   <p>The ARN of a channel.</p>
    #
    #   @return [String]
    #
    # @!attribute mode
    #   <p>The mode of the channel.</p>
    #
    #   Enum, one of: ["UNRESTRICTED", "RESTRICTED"]
    #
    #   @return [String]
    #
    # @!attribute privacy
    #   <p>The channel's privacy setting.</p>
    #
    #   Enum, one of: ["PUBLIC", "PRIVATE"]
    #
    #   @return [String]
    #
    # @!attribute metadata
    #   <p>The channel's metadata.</p>
    #
    #   @return [String]
    #
    # @!attribute created_by
    #   <p>The <code>AppInstanceUser</code> who created the channel.</p>
    #
    #   @return [Identity]
    #
    # @!attribute created_timestamp
    #   <p>The time at which the <code>AppInstanceUser</code> created the channel.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_message_timestamp
    #   <p>The time at which a member sent the last message in the channel.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_timestamp
    #   <p>The time at which a channel was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute channel_flow_arn
    #   <p>The ARN of the channel flow.</p>
    #
    #   @return [String]
    #
    Channel = ::Struct.new(
      :name,
      :channel_arn,
      :mode,
      :privacy,
      :metadata,
      :created_by,
      :created_timestamp,
      :last_message_timestamp,
      :last_updated_timestamp,
      :channel_flow_arn,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKMessaging::Types::Channel "\
          "name=\"[SENSITIVE]\", "\
          "channel_arn=#{channel_arn || 'nil'}, "\
          "mode=#{mode || 'nil'}, "\
          "privacy=#{privacy || 'nil'}, "\
          "metadata=\"[SENSITIVE]\", "\
          "created_by=#{created_by || 'nil'}, "\
          "created_timestamp=#{created_timestamp || 'nil'}, "\
          "last_message_timestamp=#{last_message_timestamp || 'nil'}, "\
          "last_updated_timestamp=#{last_updated_timestamp || 'nil'}, "\
          "channel_flow_arn=#{channel_flow_arn || 'nil'}>"
      end
    end

    # <p>Summary of details of a channel associated with channel flow.</p>
    #
    # @!attribute name
    #   <p>The name of the channel flow.</p>
    #
    #   @return [String]
    #
    # @!attribute channel_arn
    #   <p>The ARN of the channel.</p>
    #
    #   @return [String]
    #
    # @!attribute mode
    #   <p>The mode of the channel.</p>
    #
    #   Enum, one of: ["UNRESTRICTED", "RESTRICTED"]
    #
    #   @return [String]
    #
    # @!attribute privacy
    #   <p>The channel's privacy setting.</p>
    #
    #   Enum, one of: ["PUBLIC", "PRIVATE"]
    #
    #   @return [String]
    #
    # @!attribute metadata
    #   <p>The channel's metadata.</p>
    #
    #   @return [String]
    #
    ChannelAssociatedWithFlowSummary = ::Struct.new(
      :name,
      :channel_arn,
      :mode,
      :privacy,
      :metadata,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKMessaging::Types::ChannelAssociatedWithFlowSummary "\
          "name=\"[SENSITIVE]\", "\
          "channel_arn=#{channel_arn || 'nil'}, "\
          "mode=#{mode || 'nil'}, "\
          "privacy=#{privacy || 'nil'}, "\
          "metadata=\"[SENSITIVE]\">"
      end
    end

    # <p>The details of a channel ban.</p>
    #
    # @!attribute member
    #   <p>The member being banned from the channel.</p>
    #
    #   @return [Identity]
    #
    # @!attribute channel_arn
    #   <p>The ARN of the channel from which a member is being banned.</p>
    #
    #   @return [String]
    #
    # @!attribute created_timestamp
    #   <p>The time at which the ban was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute created_by
    #   <p>The <code>AppInstanceUser</code> who created the ban.</p>
    #
    #   @return [Identity]
    #
    ChannelBan = ::Struct.new(
      :member,
      :channel_arn,
      :created_timestamp,
      :created_by,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Summary of the details of a <code>ChannelBan</code>.</p>
    #
    # @!attribute member
    #   <p>The member being banned from a channel.</p>
    #
    #   @return [Identity]
    #
    ChannelBanSummary = ::Struct.new(
      :member,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The details of a channel flow.</p>
    #
    # @!attribute channel_flow_arn
    #   <p>The ARN of the channel flow.</p>
    #
    #   @return [String]
    #
    # @!attribute processors
    #   <p>Information about the processor Lambda functions.</p>
    #
    #   @return [Array<Processor>]
    #
    # @!attribute name
    #   <p>The name of the channel flow.</p>
    #
    #   @return [String]
    #
    # @!attribute created_timestamp
    #   <p>The time at which the channel flow was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_timestamp
    #   <p>The time at which a channel flow was updated.</p>
    #
    #   @return [Time]
    #
    ChannelFlow = ::Struct.new(
      :channel_flow_arn,
      :processors,
      :name,
      :created_timestamp,
      :last_updated_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKMessaging::Types::ChannelFlow "\
          "channel_flow_arn=#{channel_flow_arn || 'nil'}, "\
          "processors=#{processors || 'nil'}, "\
          "name=\"[SENSITIVE]\", "\
          "created_timestamp=#{created_timestamp || 'nil'}, "\
          "last_updated_timestamp=#{last_updated_timestamp || 'nil'}>"
      end
    end

    # @!attribute callback_id
    #   <p>The identifier passed to the processor by the service when invoked. Use the identifier to call back the service.</p>
    #
    #   @return [String]
    #
    # @!attribute channel_arn
    #   <p>The ARN of the channel.</p>
    #
    #   @return [String]
    #
    # @!attribute delete_resource
    #   <p>When a processor determines that a message needs to be <code>DENIED</code>, pass this parameter with a value of true.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute channel_message
    #   <p>Stores information about the processed message.</p>
    #
    #   @return [ChannelMessageCallback]
    #
    ChannelFlowCallbackInput = ::Struct.new(
      :callback_id,
      :channel_arn,
      :delete_resource,
      :channel_message,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.delete_resource ||= false
      end
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel.</p>
    #
    #   @return [String]
    #
    # @!attribute callback_id
    #   <p>The call back ID passed in the request.</p>
    #
    #   @return [String]
    #
    ChannelFlowCallbackOutput = ::Struct.new(
      :channel_arn,
      :callback_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Summary of details of a channel flow.</p>
    #
    # @!attribute channel_flow_arn
    #   <p>The ARN of the channel flow.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the channel flow.</p>
    #
    #   @return [String]
    #
    # @!attribute processors
    #   <p>Information about the processor Lambda functions.</p>
    #
    #   @return [Array<Processor>]
    #
    ChannelFlowSummary = ::Struct.new(
      :channel_flow_arn,
      :name,
      :processors,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKMessaging::Types::ChannelFlowSummary "\
          "channel_flow_arn=#{channel_flow_arn || 'nil'}, "\
          "name=\"[SENSITIVE]\", "\
          "processors=#{processors || 'nil'}>"
      end
    end

    # <p>The details of a channel member.</p>
    #
    # @!attribute invited_by
    #   <p>The identifier of the member who invited another member.</p>
    #
    #   @return [Identity]
    #
    # @!attribute type
    #   <p>The membership type set for the channel member.</p>
    #
    #   Enum, one of: ["DEFAULT", "HIDDEN"]
    #
    #   @return [String]
    #
    # @!attribute member
    #   <p>The data of the channel member.</p>
    #
    #   @return [Identity]
    #
    # @!attribute channel_arn
    #   <p>The ARN of the member's channel.</p>
    #
    #   @return [String]
    #
    # @!attribute created_timestamp
    #   <p>The time at which the channel membership was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_timestamp
    #   <p>The time at which a channel membership was last updated.</p>
    #
    #   @return [Time]
    #
    ChannelMembership = ::Struct.new(
      :invited_by,
      :type,
      :member,
      :channel_arn,
      :created_timestamp,
      :last_updated_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Summary of the channel membership details of an <code>AppInstanceUser</code>.</p>
    #
    # @!attribute channel_summary
    #   <p>Returns the channel data for an <code>AppInstance</code>.</p>
    #
    #   @return [ChannelSummary]
    #
    # @!attribute app_instance_user_membership_summary
    #   <p>Returns the channel membership data for an <code>AppInstance</code>.</p>
    #
    #   @return [AppInstanceUserMembershipSummary]
    #
    ChannelMembershipForAppInstanceUserSummary = ::Struct.new(
      :channel_summary,
      :app_instance_user_membership_summary,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The channel membership preferences for an <code>AppInstanceUser</code>.</p>
    #
    # @!attribute push_notifications
    #   <p>The push notification configuration of a message.</p>
    #
    #   @return [PushNotificationPreferences]
    #
    ChannelMembershipPreferences = ::Struct.new(
      :push_notifications,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Summary of the details of a <code>ChannelMembership</code>.</p>
    #
    # @!attribute member
    #   <p>A member's summary data.</p>
    #
    #   @return [Identity]
    #
    ChannelMembershipSummary = ::Struct.new(
      :member,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ChannelMembershipType
    #
    module ChannelMembershipType
      # No documentation available.
      #
      DEFAULT = "DEFAULT"

      # No documentation available.
      #
      HIDDEN = "HIDDEN"
    end

    # <p>The details of a message in a channel.</p>
    #
    # @!attribute channel_arn
    #   <p>The ARN of the channel.</p>
    #
    #   @return [String]
    #
    # @!attribute message_id
    #   <p>The ID of a message.</p>
    #
    #   @return [String]
    #
    # @!attribute content
    #   <p>The message content.</p>
    #
    #   @return [String]
    #
    # @!attribute metadata
    #   <p>The message metadata.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The message type.</p>
    #
    #   Enum, one of: ["STANDARD", "CONTROL"]
    #
    #   @return [String]
    #
    # @!attribute created_timestamp
    #   <p>The time at which the message was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_edited_timestamp
    #   <p>The time at which a message was edited.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_timestamp
    #   <p>The time at which a message was updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute sender
    #   <p>The message sender.</p>
    #
    #   @return [Identity]
    #
    # @!attribute redacted
    #   <p>Hides the content of a message.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute persistence
    #   <p>The persistence setting for a channel message.</p>
    #
    #   Enum, one of: ["PERSISTENT", "NON_PERSISTENT"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the channel message.</p>
    #
    #   @return [ChannelMessageStatusStructure]
    #
    # @!attribute message_attributes
    #   <p>The attributes for the message, used for message filtering along with a <code>FilterRule</code> defined in the <code>PushNotificationPreferences</code>.</p>
    #
    #   @return [Hash<String, MessageAttributeValue>]
    #
    ChannelMessage = ::Struct.new(
      :channel_arn,
      :message_id,
      :content,
      :metadata,
      :type,
      :created_timestamp,
      :last_edited_timestamp,
      :last_updated_timestamp,
      :sender,
      :redacted,
      :persistence,
      :status,
      :message_attributes,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.redacted ||= false
      end

      def to_s
        "#<struct AWS::SDK::ChimeSDKMessaging::Types::ChannelMessage "\
          "channel_arn=#{channel_arn || 'nil'}, "\
          "message_id=#{message_id || 'nil'}, "\
          "content=\"[SENSITIVE]\", "\
          "metadata=\"[SENSITIVE]\", "\
          "type=#{type || 'nil'}, "\
          "created_timestamp=#{created_timestamp || 'nil'}, "\
          "last_edited_timestamp=#{last_edited_timestamp || 'nil'}, "\
          "last_updated_timestamp=#{last_updated_timestamp || 'nil'}, "\
          "sender=#{sender || 'nil'}, "\
          "redacted=#{redacted || 'nil'}, "\
          "persistence=#{persistence || 'nil'}, "\
          "status=#{status || 'nil'}, "\
          "message_attributes=#{message_attributes || 'nil'}>"
      end
    end

    # <p>Stores information about a callback.</p>
    #
    # @!attribute message_id
    #   <p>The message ID.</p>
    #
    #   @return [String]
    #
    # @!attribute content
    #   <p>The message content.</p>
    #
    #   @return [String]
    #
    # @!attribute metadata
    #   <p>The message metadata.</p>
    #
    #   @return [String]
    #
    # @!attribute push_notification
    #   <p>The push notification configuration of the message.</p>
    #
    #   @return [PushNotificationConfiguration]
    #
    # @!attribute message_attributes
    #   <p>The attributes for the message, used for message filtering along with a <code>FilterRule</code> defined in the <code>PushNotificationPreferences</code>. </p>
    #
    #   @return [Hash<String, MessageAttributeValue>]
    #
    ChannelMessageCallback = ::Struct.new(
      :message_id,
      :content,
      :metadata,
      :push_notification,
      :message_attributes,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKMessaging::Types::ChannelMessageCallback "\
          "message_id=#{message_id || 'nil'}, "\
          "content=\"[SENSITIVE]\", "\
          "metadata=\"[SENSITIVE]\", "\
          "push_notification=#{push_notification || 'nil'}, "\
          "message_attributes=#{message_attributes || 'nil'}>"
      end
    end

    # Includes enum constants for ChannelMessagePersistenceType
    #
    module ChannelMessagePersistenceType
      # No documentation available.
      #
      PERSISTENT = "PERSISTENT"

      # No documentation available.
      #
      NON_PERSISTENT = "NON_PERSISTENT"
    end

    # Includes enum constants for ChannelMessageStatus
    #
    module ChannelMessageStatus
      # No documentation available.
      #
      SENT = "SENT"

      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      DENIED = "DENIED"
    end

    # <p>Stores information about a message status.</p>
    #
    # @!attribute value
    #   <p>The message status value.</p>
    #
    #   Enum, one of: ["SENT", "PENDING", "FAILED", "DENIED"]
    #
    #   @return [String]
    #
    # @!attribute detail
    #   <p>Contains more details about the messasge status.</p>
    #
    #   @return [String]
    #
    ChannelMessageStatusStructure = ::Struct.new(
      :value,
      :detail,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Summary of the messages in a <code>Channel</code>.</p>
    #
    # @!attribute message_id
    #   <p>The ID of the message.</p>
    #
    #   @return [String]
    #
    # @!attribute content
    #   <p>The content of the message.</p>
    #
    #   @return [String]
    #
    # @!attribute metadata
    #   <p>The metadata of the message.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of message.</p>
    #
    #   Enum, one of: ["STANDARD", "CONTROL"]
    #
    #   @return [String]
    #
    # @!attribute created_timestamp
    #   <p>The time at which the message summary was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_timestamp
    #   <p>The time at which a message was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_edited_timestamp
    #   <p>The time at which a message was last edited.</p>
    #
    #   @return [Time]
    #
    # @!attribute sender
    #   <p>The message sender.</p>
    #
    #   @return [Identity]
    #
    # @!attribute redacted
    #   <p>Indicates whether a message was redacted.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute status
    #   <p>The message status. The status value is <code>SENT</code> for messages sent to a channel without a channel flow. For channels associated with channel flow, the value determines the
    #            processing stage.</p>
    #
    #   @return [ChannelMessageStatusStructure]
    #
    # @!attribute message_attributes
    #   <p>The message attribues listed in a the summary of a channel message.</p>
    #
    #   @return [Hash<String, MessageAttributeValue>]
    #
    ChannelMessageSummary = ::Struct.new(
      :message_id,
      :content,
      :metadata,
      :type,
      :created_timestamp,
      :last_updated_timestamp,
      :last_edited_timestamp,
      :sender,
      :redacted,
      :status,
      :message_attributes,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.redacted ||= false
      end

      def to_s
        "#<struct AWS::SDK::ChimeSDKMessaging::Types::ChannelMessageSummary "\
          "message_id=#{message_id || 'nil'}, "\
          "content=\"[SENSITIVE]\", "\
          "metadata=\"[SENSITIVE]\", "\
          "type=#{type || 'nil'}, "\
          "created_timestamp=#{created_timestamp || 'nil'}, "\
          "last_updated_timestamp=#{last_updated_timestamp || 'nil'}, "\
          "last_edited_timestamp=#{last_edited_timestamp || 'nil'}, "\
          "sender=#{sender || 'nil'}, "\
          "redacted=#{redacted || 'nil'}, "\
          "status=#{status || 'nil'}, "\
          "message_attributes=#{message_attributes || 'nil'}>"
      end
    end

    # Includes enum constants for ChannelMessageType
    #
    module ChannelMessageType
      # No documentation available.
      #
      STANDARD = "STANDARD"

      # No documentation available.
      #
      CONTROL = "CONTROL"
    end

    # Includes enum constants for ChannelMode
    #
    module ChannelMode
      # No documentation available.
      #
      UNRESTRICTED = "UNRESTRICTED"

      # No documentation available.
      #
      RESTRICTED = "RESTRICTED"
    end

    # <p>Summary of the details of a moderated channel.</p>
    #
    # @!attribute channel_summary
    #   <p>Summary of the details of a <code>Channel</code>.</p>
    #
    #   @return [ChannelSummary]
    #
    ChannelModeratedByAppInstanceUserSummary = ::Struct.new(
      :channel_summary,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The details of a channel moderator.</p>
    #
    # @!attribute moderator
    #   <p>The moderator's data.</p>
    #
    #   @return [Identity]
    #
    # @!attribute channel_arn
    #   <p>The ARN of the moderator's channel.</p>
    #
    #   @return [String]
    #
    # @!attribute created_timestamp
    #   <p>The time at which the moderator was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute created_by
    #   <p>The <code>AppInstanceUser</code> who created the moderator.</p>
    #
    #   @return [Identity]
    #
    ChannelModerator = ::Struct.new(
      :moderator,
      :channel_arn,
      :created_timestamp,
      :created_by,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Summary of the details of a <code>ChannelModerator</code>.</p>
    #
    # @!attribute moderator
    #   <p>The data for a moderator.</p>
    #
    #   @return [Identity]
    #
    ChannelModeratorSummary = ::Struct.new(
      :moderator,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ChannelPrivacy
    #
    module ChannelPrivacy
      # No documentation available.
      #
      PUBLIC = "PUBLIC"

      # No documentation available.
      #
      PRIVATE = "PRIVATE"
    end

    # <p>Summary of the details of a <code>Channel</code>.</p>
    #
    # @!attribute name
    #   <p>The name of the channel.</p>
    #
    #   @return [String]
    #
    # @!attribute channel_arn
    #   <p>The ARN of the channel.</p>
    #
    #   @return [String]
    #
    # @!attribute mode
    #   <p>The mode of the channel.</p>
    #
    #   Enum, one of: ["UNRESTRICTED", "RESTRICTED"]
    #
    #   @return [String]
    #
    # @!attribute privacy
    #   <p>The privacy setting of the channel.</p>
    #
    #   Enum, one of: ["PUBLIC", "PRIVATE"]
    #
    #   @return [String]
    #
    # @!attribute metadata
    #   <p>The metadata of the channel.</p>
    #
    #   @return [String]
    #
    # @!attribute last_message_timestamp
    #   <p>The time at which the last message in a channel was sent.</p>
    #
    #   @return [Time]
    #
    ChannelSummary = ::Struct.new(
      :name,
      :channel_arn,
      :mode,
      :privacy,
      :metadata,
      :last_message_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKMessaging::Types::ChannelSummary "\
          "name=\"[SENSITIVE]\", "\
          "channel_arn=#{channel_arn || 'nil'}, "\
          "mode=#{mode || 'nil'}, "\
          "privacy=#{privacy || 'nil'}, "\
          "metadata=\"[SENSITIVE]\", "\
          "last_message_timestamp=#{last_message_timestamp || 'nil'}>"
      end
    end

    # <p>The request could not be processed because of conflict in the current state of the
    #          resource.</p>
    #
    # @!attribute code
    #   Enum, one of: ["BadRequest", "Conflict", "Forbidden", "NotFound", "PreconditionFailed", "ResourceLimitExceeded", "ServiceFailure", "AccessDenied", "ServiceUnavailable", "Throttled", "Throttling", "Unauthorized", "Unprocessable", "VoiceConnectorGroupAssociationsExist", "PhoneNumberAssociationsExist"]
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ConflictException = ::Struct.new(
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the ban request.</p>
    #
    #   @return [String]
    #
    # @!attribute member_arn
    #   <p>The <code>AppInstanceUserArn</code> of the member being banned.</p>
    #
    #   @return [String]
    #
    # @!attribute chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    #   @return [String]
    #
    CreateChannelBanInput = ::Struct.new(
      :channel_arn,
      :member_arn,
      :chime_bearer,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the response to the ban request.</p>
    #
    #   @return [String]
    #
    # @!attribute member
    #   <p>The <code>ChannelArn</code> and <code>BannedIdentity</code> of the member in the ban
    #            response.</p>
    #
    #   @return [Identity]
    #
    CreateChannelBanOutput = ::Struct.new(
      :channel_arn,
      :member,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_instance_arn
    #   <p>The ARN of the channel flow request.</p>
    #
    #   @return [String]
    #
    # @!attribute processors
    #   <p>Information about the processor Lambda functions.</p>
    #
    #   @return [Array<Processor>]
    #
    # @!attribute name
    #   <p>The name of the channel flow.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags for the creation request.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute client_request_token
    #   <p>The client token for the request. An Idempotency token.</p>
    #
    #   @return [String]
    #
    CreateChannelFlowInput = ::Struct.new(
      :app_instance_arn,
      :processors,
      :name,
      :tags,
      :client_request_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKMessaging::Types::CreateChannelFlowInput "\
          "app_instance_arn=#{app_instance_arn || 'nil'}, "\
          "processors=#{processors || 'nil'}, "\
          "name=\"[SENSITIVE]\", "\
          "tags=#{tags || 'nil'}, "\
          "client_request_token=\"[SENSITIVE]\">"
      end
    end

    # @!attribute channel_flow_arn
    #   <p>The ARN of the channel flow.</p>
    #
    #   @return [String]
    #
    CreateChannelFlowOutput = ::Struct.new(
      :channel_flow_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_instance_arn
    #   <p>The ARN of the channel request.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the channel.</p>
    #
    #   @return [String]
    #
    # @!attribute mode
    #   <p>The channel mode: <code>UNRESTRICTED</code> or <code>RESTRICTED</code>. Administrators,
    #            moderators, and channel members can add themselves and other members to unrestricted
    #            channels. Only administrators and moderators can add members to restricted channels.</p>
    #
    #   Enum, one of: ["UNRESTRICTED", "RESTRICTED"]
    #
    #   @return [String]
    #
    # @!attribute privacy
    #   <p>The channel's privacy level: <code>PUBLIC</code> or <code>PRIVATE</code>. Private
    #            channels aren't discoverable by users outside the channel. Public channels are discoverable
    #            by anyone in the <code>AppInstance</code>.</p>
    #
    #   Enum, one of: ["PUBLIC", "PRIVATE"]
    #
    #   @return [String]
    #
    # @!attribute metadata
    #   <p>The metadata of the creation request. Limited to 1KB and UTF-8.</p>
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   <p>The client token for the request. An <code>Idempotency</code> token.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags for the creation request.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    #   @return [String]
    #
    # @!attribute channel_id
    #   <p>The ID of the channel in the request.</p>
    #
    #   @return [String]
    #
    # @!attribute member_arns
    #   <p>The ARNs of the channel members in the request.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute moderator_arns
    #   <p>The ARNs of the channel moderators in the request.</p>
    #
    #   @return [Array<String>]
    #
    CreateChannelInput = ::Struct.new(
      :app_instance_arn,
      :name,
      :mode,
      :privacy,
      :metadata,
      :client_request_token,
      :tags,
      :chime_bearer,
      :channel_id,
      :member_arns,
      :moderator_arns,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKMessaging::Types::CreateChannelInput "\
          "app_instance_arn=#{app_instance_arn || 'nil'}, "\
          "name=\"[SENSITIVE]\", "\
          "mode=#{mode || 'nil'}, "\
          "privacy=#{privacy || 'nil'}, "\
          "metadata=\"[SENSITIVE]\", "\
          "client_request_token=\"[SENSITIVE]\", "\
          "tags=#{tags || 'nil'}, "\
          "chime_bearer=#{chime_bearer || 'nil'}, "\
          "channel_id=\"[SENSITIVE]\", "\
          "member_arns=#{member_arns || 'nil'}, "\
          "moderator_arns=#{moderator_arns || 'nil'}>"
      end
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel to which you're adding users.</p>
    #
    #   @return [String]
    #
    # @!attribute member_arn
    #   <p>The <code>AppInstanceUserArn</code> of the member you want to add to the channel.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The membership type of a user, <code>DEFAULT</code> or <code>HIDDEN</code>. Default
    #            members are always returned as part of <code>ListChannelMemberships</code>. Hidden members
    #            are only returned if the type filter in <code>ListChannelMemberships</code> equals
    #               <code>HIDDEN</code>. Otherwise hidden members are not returned. This is only supported
    #            by moderators.</p>
    #
    #   Enum, one of: ["DEFAULT", "HIDDEN"]
    #
    #   @return [String]
    #
    # @!attribute chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    #   @return [String]
    #
    CreateChannelMembershipInput = ::Struct.new(
      :channel_arn,
      :member_arn,
      :type,
      :chime_bearer,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel.</p>
    #
    #   @return [String]
    #
    # @!attribute member
    #   <p>The ARN and metadata of the member being added.</p>
    #
    #   @return [Identity]
    #
    CreateChannelMembershipOutput = ::Struct.new(
      :channel_arn,
      :member,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel.</p>
    #
    #   @return [String]
    #
    # @!attribute channel_moderator_arn
    #   <p>The <code>AppInstanceUserArn</code> of the moderator.</p>
    #
    #   @return [String]
    #
    # @!attribute chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    #   @return [String]
    #
    CreateChannelModeratorInput = ::Struct.new(
      :channel_arn,
      :channel_moderator_arn,
      :chime_bearer,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel.</p>
    #
    #   @return [String]
    #
    # @!attribute channel_moderator
    #   <p>The ARNs of the channel and the moderator.</p>
    #
    #   @return [Identity]
    #
    CreateChannelModeratorOutput = ::Struct.new(
      :channel_arn,
      :channel_moderator,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel.</p>
    #
    #   @return [String]
    #
    CreateChannelOutput = ::Struct.new(
      :channel_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel from which the <code>AppInstanceUser</code> was banned.</p>
    #
    #   @return [String]
    #
    # @!attribute member_arn
    #   <p>The ARN of the <code>AppInstanceUser</code> that you want to reinstate.</p>
    #
    #   @return [String]
    #
    # @!attribute chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    #   @return [String]
    #
    DeleteChannelBanInput = ::Struct.new(
      :channel_arn,
      :member_arn,
      :chime_bearer,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteChannelBanOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel_flow_arn
    #   <p>The ARN of the channel flow.</p>
    #
    #   @return [String]
    #
    DeleteChannelFlowInput = ::Struct.new(
      :channel_flow_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteChannelFlowOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel being deleted.</p>
    #
    #   @return [String]
    #
    # @!attribute chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    #   @return [String]
    #
    DeleteChannelInput = ::Struct.new(
      :channel_arn,
      :chime_bearer,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel from which you want to remove the user.</p>
    #
    #   @return [String]
    #
    # @!attribute member_arn
    #   <p>The <code>AppInstanceUserArn</code> of the member that you're removing from the channel.</p>
    #
    #   @return [String]
    #
    # @!attribute chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    #   @return [String]
    #
    DeleteChannelMembershipInput = ::Struct.new(
      :channel_arn,
      :member_arn,
      :chime_bearer,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteChannelMembershipOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel.</p>
    #
    #   @return [String]
    #
    # @!attribute message_id
    #   <p>The ID of the message being deleted.</p>
    #
    #   @return [String]
    #
    # @!attribute chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    #   @return [String]
    #
    DeleteChannelMessageInput = ::Struct.new(
      :channel_arn,
      :message_id,
      :chime_bearer,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteChannelMessageOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel.</p>
    #
    #   @return [String]
    #
    # @!attribute channel_moderator_arn
    #   <p>The <code>AppInstanceUserArn</code> of the moderator being deleted.</p>
    #
    #   @return [String]
    #
    # @!attribute chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    #   @return [String]
    #
    DeleteChannelModeratorInput = ::Struct.new(
      :channel_arn,
      :channel_moderator_arn,
      :chime_bearer,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteChannelModeratorOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteChannelOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel from which the user is banned.</p>
    #
    #   @return [String]
    #
    # @!attribute member_arn
    #   <p>The <code>AppInstanceUserArn</code> of the member being banned.</p>
    #
    #   @return [String]
    #
    # @!attribute chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    #   @return [String]
    #
    DescribeChannelBanInput = ::Struct.new(
      :channel_arn,
      :member_arn,
      :chime_bearer,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel_ban
    #   <p>The details of the ban.</p>
    #
    #   @return [ChannelBan]
    #
    DescribeChannelBanOutput = ::Struct.new(
      :channel_ban,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel_flow_arn
    #   <p>The ARN of the channel flow.</p>
    #
    #   @return [String]
    #
    DescribeChannelFlowInput = ::Struct.new(
      :channel_flow_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel_flow
    #   <p>The channel flow details.</p>
    #
    #   @return [ChannelFlow]
    #
    DescribeChannelFlowOutput = ::Struct.new(
      :channel_flow,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel.</p>
    #
    #   @return [String]
    #
    # @!attribute chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    #   @return [String]
    #
    DescribeChannelInput = ::Struct.new(
      :channel_arn,
      :chime_bearer,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel to which the user belongs.</p>
    #
    #   @return [String]
    #
    # @!attribute app_instance_user_arn
    #   <p>The ARN of the user in a channel.</p>
    #
    #   @return [String]
    #
    # @!attribute chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    #   @return [String]
    #
    DescribeChannelMembershipForAppInstanceUserInput = ::Struct.new(
      :channel_arn,
      :app_instance_user_arn,
      :chime_bearer,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel_membership
    #   <p>The channel to which a user belongs.</p>
    #
    #   @return [ChannelMembershipForAppInstanceUserSummary]
    #
    DescribeChannelMembershipForAppInstanceUserOutput = ::Struct.new(
      :channel_membership,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel.</p>
    #
    #   @return [String]
    #
    # @!attribute member_arn
    #   <p>The <code>AppInstanceUserArn</code> of the member.</p>
    #
    #   @return [String]
    #
    # @!attribute chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    #   @return [String]
    #
    DescribeChannelMembershipInput = ::Struct.new(
      :channel_arn,
      :member_arn,
      :chime_bearer,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel_membership
    #   <p>The details of the membership.</p>
    #
    #   @return [ChannelMembership]
    #
    DescribeChannelMembershipOutput = ::Struct.new(
      :channel_membership,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the moderated channel.</p>
    #
    #   @return [String]
    #
    # @!attribute app_instance_user_arn
    #   <p>The ARN of the <code>AppInstanceUser</code> in the moderated channel.</p>
    #
    #   @return [String]
    #
    # @!attribute chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    #   @return [String]
    #
    DescribeChannelModeratedByAppInstanceUserInput = ::Struct.new(
      :channel_arn,
      :app_instance_user_arn,
      :chime_bearer,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel
    #   <p>The moderated channel.</p>
    #
    #   @return [ChannelModeratedByAppInstanceUserSummary]
    #
    DescribeChannelModeratedByAppInstanceUserOutput = ::Struct.new(
      :channel,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel.</p>
    #
    #   @return [String]
    #
    # @!attribute channel_moderator_arn
    #   <p>The <code>AppInstanceUserArn</code> of the channel moderator.</p>
    #
    #   @return [String]
    #
    # @!attribute chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    #   @return [String]
    #
    DescribeChannelModeratorInput = ::Struct.new(
      :channel_arn,
      :channel_moderator_arn,
      :chime_bearer,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel_moderator
    #   <p>The details of the channel moderator.</p>
    #
    #   @return [ChannelModerator]
    #
    DescribeChannelModeratorOutput = ::Struct.new(
      :channel_moderator,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel
    #   <p>The channel details.</p>
    #
    #   @return [Channel]
    #
    DescribeChannelOutput = ::Struct.new(
      :channel,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel.</p>
    #
    #   @return [String]
    #
    # @!attribute channel_flow_arn
    #   <p>The ARN of the channel flow.</p>
    #
    #   @return [String]
    #
    # @!attribute chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user making the API call.</p>
    #
    #   @return [String]
    #
    DisassociateChannelFlowInput = ::Struct.new(
      :channel_arn,
      :channel_flow_arn,
      :chime_bearer,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateChannelFlowOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ErrorCode
    #
    module ErrorCode
      # No documentation available.
      #
      BadRequest = "BadRequest"

      # No documentation available.
      #
      Conflict = "Conflict"

      # No documentation available.
      #
      Forbidden = "Forbidden"

      # No documentation available.
      #
      NotFound = "NotFound"

      # No documentation available.
      #
      PreconditionFailed = "PreconditionFailed"

      # No documentation available.
      #
      ResourceLimitExceeded = "ResourceLimitExceeded"

      # No documentation available.
      #
      ServiceFailure = "ServiceFailure"

      # No documentation available.
      #
      AccessDenied = "AccessDenied"

      # No documentation available.
      #
      ServiceUnavailable = "ServiceUnavailable"

      # No documentation available.
      #
      Throttled = "Throttled"

      # No documentation available.
      #
      Throttling = "Throttling"

      # No documentation available.
      #
      Unauthorized = "Unauthorized"

      # No documentation available.
      #
      Unprocessable = "Unprocessable"

      # No documentation available.
      #
      VoiceConnectorGroupAssociationsExist = "VoiceConnectorGroupAssociationsExist"

      # No documentation available.
      #
      PhoneNumberAssociationsExist = "PhoneNumberAssociationsExist"
    end

    # Includes enum constants for FallbackAction
    #
    module FallbackAction
      # No documentation available.
      #
      CONTINUE = "CONTINUE"

      # No documentation available.
      #
      ABORT = "ABORT"
    end

    # <p>The client is permanently forbidden from making the request.</p>
    #
    # @!attribute code
    #   Enum, one of: ["BadRequest", "Conflict", "Forbidden", "NotFound", "PreconditionFailed", "ResourceLimitExceeded", "ServiceFailure", "AccessDenied", "ServiceUnavailable", "Throttled", "Throttling", "Unauthorized", "Unprocessable", "VoiceConnectorGroupAssociationsExist", "PhoneNumberAssociationsExist"]
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ForbiddenException = ::Struct.new(
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel.</p>
    #
    #   @return [String]
    #
    # @!attribute member_arn
    #   <p>The <code>AppInstanceUserArn</code> of the member retrieving the preferences.</p>
    #
    #   @return [String]
    #
    # @!attribute chime_bearer
    #   <p>The <code>AppInstanceUserARN</code> of the user making the API call.</p>
    #
    #   @return [String]
    #
    GetChannelMembershipPreferencesInput = ::Struct.new(
      :channel_arn,
      :member_arn,
      :chime_bearer,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel.</p>
    #
    #   @return [String]
    #
    # @!attribute member
    #   <p>The details of a user.</p>
    #
    #   @return [Identity]
    #
    # @!attribute preferences
    #   <p>The channel membership preferences for an <code>AppInstanceUser</code> .</p>
    #
    #   @return [ChannelMembershipPreferences]
    #
    GetChannelMembershipPreferencesOutput = ::Struct.new(
      :channel_arn,
      :member,
      :preferences,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel.</p>
    #
    #   @return [String]
    #
    # @!attribute message_id
    #   <p>The ID of the message.</p>
    #
    #   @return [String]
    #
    # @!attribute chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    #   @return [String]
    #
    GetChannelMessageInput = ::Struct.new(
      :channel_arn,
      :message_id,
      :chime_bearer,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel_message
    #   <p>The details of and content in the message.</p>
    #
    #   @return [ChannelMessage]
    #
    GetChannelMessageOutput = ::Struct.new(
      :channel_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel</p>
    #
    #   @return [String]
    #
    # @!attribute message_id
    #   <p>The ID of the message.</p>
    #
    #   @return [String]
    #
    # @!attribute chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user making the API call.</p>
    #
    #   @return [String]
    #
    GetChannelMessageStatusInput = ::Struct.new(
      :channel_arn,
      :message_id,
      :chime_bearer,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute status
    #   <p>The message status and details.</p>
    #
    #   @return [ChannelMessageStatusStructure]
    #
    GetChannelMessageStatusOutput = ::Struct.new(
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    GetMessagingSessionEndpointInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute endpoint
    #   <p>The endpoint returned in the response.</p>
    #
    #   @return [MessagingSessionEndpoint]
    #
    GetMessagingSessionEndpointOutput = ::Struct.new(
      :endpoint,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The details of a user.</p>
    #
    # @!attribute arn
    #   <p>The ARN in an Identity.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name in an Identity.</p>
    #
    #   @return [String]
    #
    Identity = ::Struct.new(
      :arn,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKMessaging::Types::Identity "\
          "arn=#{arn || 'nil'}, "\
          "name=\"[SENSITIVE]\">"
      end
    end

    # Includes enum constants for InvocationType
    #
    module InvocationType
      # No documentation available.
      #
      ASYNC = "ASYNC"
    end

    # <p>Stores metadata about a Lambda processor.</p>
    #
    # @!attribute resource_arn
    #   <p>The ARN of the Lambda message processing function.</p>
    #
    #   @return [String]
    #
    # @!attribute invocation_type
    #   <p>Controls how the Lambda function is invoked.</p>
    #
    #   Enum, one of: ["ASYNC"]
    #
    #   @return [String]
    #
    LambdaConfiguration = ::Struct.new(
      :resource_arn,
      :invocation_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of bans that you want returned.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token passed by previous API calls until all requested bans are returned.</p>
    #
    #   @return [String]
    #
    # @!attribute chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    #   @return [String]
    #
    ListChannelBansInput = ::Struct.new(
      :channel_arn,
      :max_results,
      :next_token,
      :chime_bearer,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKMessaging::Types::ListChannelBansInput "\
          "channel_arn=#{channel_arn || 'nil'}, "\
          "max_results=#{max_results || 'nil'}, "\
          "next_token=\"[SENSITIVE]\", "\
          "chime_bearer=#{chime_bearer || 'nil'}>"
      end
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token passed by previous API calls until all requested bans are returned.</p>
    #
    #   @return [String]
    #
    # @!attribute channel_bans
    #   <p>The information for each requested ban.</p>
    #
    #   @return [Array<ChannelBanSummary>]
    #
    ListChannelBansOutput = ::Struct.new(
      :channel_arn,
      :next_token,
      :channel_bans,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKMessaging::Types::ListChannelBansOutput "\
          "channel_arn=#{channel_arn || 'nil'}, "\
          "next_token=\"[SENSITIVE]\", "\
          "channel_bans=#{channel_bans || 'nil'}>"
      end
    end

    # @!attribute app_instance_arn
    #   <p>The ARN of the app instance.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of channel flows that you want to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token passed by previous API calls until all requested channel flows are returned.</p>
    #
    #   @return [String]
    #
    ListChannelFlowsInput = ::Struct.new(
      :app_instance_arn,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKMessaging::Types::ListChannelFlowsInput "\
          "app_instance_arn=#{app_instance_arn || 'nil'}, "\
          "max_results=#{max_results || 'nil'}, "\
          "next_token=\"[SENSITIVE]\">"
      end
    end

    # @!attribute channel_flows
    #   <p>The information about each channel flow.</p>
    #
    #   @return [Array<ChannelFlowSummary>]
    #
    # @!attribute next_token
    #   <p>The token passed by previous API calls until all requested channels are returned.</p>
    #
    #   @return [String]
    #
    ListChannelFlowsOutput = ::Struct.new(
      :channel_flows,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKMessaging::Types::ListChannelFlowsOutput "\
          "channel_flows=#{channel_flows || 'nil'}, "\
          "next_token=\"[SENSITIVE]\">"
      end
    end

    # @!attribute app_instance_user_arn
    #   <p>The ARN of the <code>AppInstanceUser</code>s</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of users that you want returned.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token returned from previous API requests until the number of channel memberships is
    #            reached.</p>
    #
    #   @return [String]
    #
    # @!attribute chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    #   @return [String]
    #
    ListChannelMembershipsForAppInstanceUserInput = ::Struct.new(
      :app_instance_user_arn,
      :max_results,
      :next_token,
      :chime_bearer,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKMessaging::Types::ListChannelMembershipsForAppInstanceUserInput "\
          "app_instance_user_arn=#{app_instance_user_arn || 'nil'}, "\
          "max_results=#{max_results || 'nil'}, "\
          "next_token=\"[SENSITIVE]\", "\
          "chime_bearer=#{chime_bearer || 'nil'}>"
      end
    end

    # @!attribute channel_memberships
    #   <p>The information for the requested channel memberships.</p>
    #
    #   @return [Array<ChannelMembershipForAppInstanceUserSummary>]
    #
    # @!attribute next_token
    #   <p>The token passed by previous API calls until all requested users are returned.</p>
    #
    #   @return [String]
    #
    ListChannelMembershipsForAppInstanceUserOutput = ::Struct.new(
      :channel_memberships,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKMessaging::Types::ListChannelMembershipsForAppInstanceUserOutput "\
          "channel_memberships=#{channel_memberships || 'nil'}, "\
          "next_token=\"[SENSITIVE]\">"
      end
    end

    # @!attribute channel_arn
    #   <p>The maximum number of channel memberships that you want returned.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The membership type of a user, <code>DEFAULT</code> or <code>HIDDEN</code>. Default
    #            members are returned as part of <code>ListChannelMemberships</code> if no type is specified. Hidden members
    #            are only returned if the type filter in <code>ListChannelMemberships</code> equals
    #               <code>HIDDEN</code>.</p>
    #
    #   Enum, one of: ["DEFAULT", "HIDDEN"]
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of channel memberships that you want returned.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token passed by previous API calls until all requested channel memberships are
    #            returned.</p>
    #
    #   @return [String]
    #
    # @!attribute chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    #   @return [String]
    #
    ListChannelMembershipsInput = ::Struct.new(
      :channel_arn,
      :type,
      :max_results,
      :next_token,
      :chime_bearer,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKMessaging::Types::ListChannelMembershipsInput "\
          "channel_arn=#{channel_arn || 'nil'}, "\
          "type=#{type || 'nil'}, "\
          "max_results=#{max_results || 'nil'}, "\
          "next_token=\"[SENSITIVE]\", "\
          "chime_bearer=#{chime_bearer || 'nil'}>"
      end
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel.</p>
    #
    #   @return [String]
    #
    # @!attribute channel_memberships
    #   <p>The information for the requested channel memberships.</p>
    #
    #   @return [Array<ChannelMembershipSummary>]
    #
    # @!attribute next_token
    #   <p>The token passed by previous API calls until all requested channel memberships are
    #            returned.</p>
    #
    #   @return [String]
    #
    ListChannelMembershipsOutput = ::Struct.new(
      :channel_arn,
      :channel_memberships,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKMessaging::Types::ListChannelMembershipsOutput "\
          "channel_arn=#{channel_arn || 'nil'}, "\
          "channel_memberships=#{channel_memberships || 'nil'}, "\
          "next_token=\"[SENSITIVE]\">"
      end
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel.</p>
    #
    #   @return [String]
    #
    # @!attribute sort_order
    #   <p>The order in which you want messages sorted. Default is Descending, based on time
    #            created.</p>
    #
    #   Enum, one of: ["ASCENDING", "DESCENDING"]
    #
    #   @return [String]
    #
    # @!attribute not_before
    #   <p>The initial or starting time stamp for your requested messages.</p>
    #
    #   @return [Time]
    #
    # @!attribute not_after
    #   <p>The final or ending time stamp for your requested messages.</p>
    #
    #   @return [Time]
    #
    # @!attribute max_results
    #   <p>The maximum number of messages that you want returned.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token passed by previous API calls until all requested messages are returned.</p>
    #
    #   @return [String]
    #
    # @!attribute chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    #   @return [String]
    #
    ListChannelMessagesInput = ::Struct.new(
      :channel_arn,
      :sort_order,
      :not_before,
      :not_after,
      :max_results,
      :next_token,
      :chime_bearer,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKMessaging::Types::ListChannelMessagesInput "\
          "channel_arn=#{channel_arn || 'nil'}, "\
          "sort_order=#{sort_order || 'nil'}, "\
          "not_before=#{not_before || 'nil'}, "\
          "not_after=#{not_after || 'nil'}, "\
          "max_results=#{max_results || 'nil'}, "\
          "next_token=\"[SENSITIVE]\", "\
          "chime_bearer=#{chime_bearer || 'nil'}>"
      end
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel containing the requested messages.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token passed by previous API calls until all requested messages are returned.</p>
    #
    #   @return [String]
    #
    # @!attribute channel_messages
    #   <p>The information about, and content of, each requested message.</p>
    #
    #   @return [Array<ChannelMessageSummary>]
    #
    ListChannelMessagesOutput = ::Struct.new(
      :channel_arn,
      :next_token,
      :channel_messages,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKMessaging::Types::ListChannelMessagesOutput "\
          "channel_arn=#{channel_arn || 'nil'}, "\
          "next_token=\"[SENSITIVE]\", "\
          "channel_messages=#{channel_messages || 'nil'}>"
      end
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of moderators that you want returned.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token passed by previous API calls until all requested moderators are
    #            returned.</p>
    #
    #   @return [String]
    #
    # @!attribute chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    #   @return [String]
    #
    ListChannelModeratorsInput = ::Struct.new(
      :channel_arn,
      :max_results,
      :next_token,
      :chime_bearer,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKMessaging::Types::ListChannelModeratorsInput "\
          "channel_arn=#{channel_arn || 'nil'}, "\
          "max_results=#{max_results || 'nil'}, "\
          "next_token=\"[SENSITIVE]\", "\
          "chime_bearer=#{chime_bearer || 'nil'}>"
      end
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token passed by previous API calls until all requested moderators are
    #            returned.</p>
    #
    #   @return [String]
    #
    # @!attribute channel_moderators
    #   <p>The information about and names of each moderator.</p>
    #
    #   @return [Array<ChannelModeratorSummary>]
    #
    ListChannelModeratorsOutput = ::Struct.new(
      :channel_arn,
      :next_token,
      :channel_moderators,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKMessaging::Types::ListChannelModeratorsOutput "\
          "channel_arn=#{channel_arn || 'nil'}, "\
          "next_token=\"[SENSITIVE]\", "\
          "channel_moderators=#{channel_moderators || 'nil'}>"
      end
    end

    # @!attribute channel_flow_arn
    #   <p>The ARN of the channel flow.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of channels that you want to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token passed by previous API calls until all requested channels are returned.</p>
    #
    #   @return [String]
    #
    ListChannelsAssociatedWithChannelFlowInput = ::Struct.new(
      :channel_flow_arn,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKMessaging::Types::ListChannelsAssociatedWithChannelFlowInput "\
          "channel_flow_arn=#{channel_flow_arn || 'nil'}, "\
          "max_results=#{max_results || 'nil'}, "\
          "next_token=\"[SENSITIVE]\">"
      end
    end

    # @!attribute channels
    #   <p>The information about each channel.</p>
    #
    #   @return [Array<ChannelAssociatedWithFlowSummary>]
    #
    # @!attribute next_token
    #   <p>The token passed by previous API calls until all requested channels are returned.</p>
    #
    #   @return [String]
    #
    ListChannelsAssociatedWithChannelFlowOutput = ::Struct.new(
      :channels,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKMessaging::Types::ListChannelsAssociatedWithChannelFlowOutput "\
          "channels=#{channels || 'nil'}, "\
          "next_token=\"[SENSITIVE]\">"
      end
    end

    # @!attribute app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute privacy
    #   <p>The privacy setting. <code>PUBLIC</code> retrieves all the public channels.
    #               <code>PRIVATE</code> retrieves private channels. Only an <code>AppInstanceAdmin</code>
    #            can retrieve private channels. </p>
    #
    #   Enum, one of: ["PUBLIC", "PRIVATE"]
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of channels that you want to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token passed by previous API calls until all requested channels are returned.</p>
    #
    #   @return [String]
    #
    # @!attribute chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    #   @return [String]
    #
    ListChannelsInput = ::Struct.new(
      :app_instance_arn,
      :privacy,
      :max_results,
      :next_token,
      :chime_bearer,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKMessaging::Types::ListChannelsInput "\
          "app_instance_arn=#{app_instance_arn || 'nil'}, "\
          "privacy=#{privacy || 'nil'}, "\
          "max_results=#{max_results || 'nil'}, "\
          "next_token=\"[SENSITIVE]\", "\
          "chime_bearer=#{chime_bearer || 'nil'}>"
      end
    end

    # @!attribute app_instance_user_arn
    #   <p>The ARN of the user in the moderated channel.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of channels in the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token returned from previous API requests until the number of channels moderated by
    #            the user is reached.</p>
    #
    #   @return [String]
    #
    # @!attribute chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    #   @return [String]
    #
    ListChannelsModeratedByAppInstanceUserInput = ::Struct.new(
      :app_instance_user_arn,
      :max_results,
      :next_token,
      :chime_bearer,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKMessaging::Types::ListChannelsModeratedByAppInstanceUserInput "\
          "app_instance_user_arn=#{app_instance_user_arn || 'nil'}, "\
          "max_results=#{max_results || 'nil'}, "\
          "next_token=\"[SENSITIVE]\", "\
          "chime_bearer=#{chime_bearer || 'nil'}>"
      end
    end

    # @!attribute channels
    #   <p>The moderated channels in the request.</p>
    #
    #   @return [Array<ChannelModeratedByAppInstanceUserSummary>]
    #
    # @!attribute next_token
    #   <p>The token returned from previous API requests until the number of channels moderated by
    #            the user is reached.</p>
    #
    #   @return [String]
    #
    ListChannelsModeratedByAppInstanceUserOutput = ::Struct.new(
      :channels,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKMessaging::Types::ListChannelsModeratedByAppInstanceUserOutput "\
          "channels=#{channels || 'nil'}, "\
          "next_token=\"[SENSITIVE]\">"
      end
    end

    # @!attribute channels
    #   <p>The information about each channel.</p>
    #
    #   @return [Array<ChannelSummary>]
    #
    # @!attribute next_token
    #   <p>The token returned from previous API requests until the number of channels is
    #            reached.</p>
    #
    #   @return [String]
    #
    ListChannelsOutput = ::Struct.new(
      :channels,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKMessaging::Types::ListChannelsOutput "\
          "channels=#{channels || 'nil'}, "\
          "next_token=\"[SENSITIVE]\">"
      end
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource.</p>
    #
    #   @return [String]
    #
    ListTagsForResourceInput = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tags
    #   <p>The tag key-value pairs.</p>
    #
    #   @return [Array<Tag>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A list of message attribute values.</p>
    #
    # @!attribute string_values
    #   <p>The strings in a message attribute value.</p>
    #
    #   @return [Array<String>]
    #
    MessageAttributeValue = ::Struct.new(
      :string_values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The websocket endpoint used to connect to Amazon Chime SDK messaging.</p>
    #
    # @!attribute url
    #   <p>The endpoint to which you establish a websocket connection.</p>
    #
    #   @return [String]
    #
    MessagingSessionEndpoint = ::Struct.new(
      :url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>One or more of the resources in the request does not exist in the system.</p>
    #
    # @!attribute code
    #   Enum, one of: ["BadRequest", "Conflict", "Forbidden", "NotFound", "PreconditionFailed", "ResourceLimitExceeded", "ServiceFailure", "AccessDenied", "ServiceUnavailable", "Throttled", "Throttling", "Unauthorized", "Unprocessable", "VoiceConnectorGroupAssociationsExist", "PhoneNumberAssociationsExist"]
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    NotFoundException = ::Struct.new(
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The information about a processor in a channel flow.</p>
    #
    # @!attribute name
    #   <p>The name of the channel flow.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration
    #   <p>The information about the type of processor and its identifier.</p>
    #
    #   @return [ProcessorConfiguration]
    #
    # @!attribute execution_order
    #   <p>The sequence in which processors run. If you have multiple processors in a channel flow, message processing goes through each processor in the sequence. The value determines the sequence.
    #            At this point, we support only 1 processor within a flow.</p>
    #
    #   @return [Integer]
    #
    # @!attribute fallback_action
    #   <p>Determines whether to continue with message processing or stop it in cases where communication with a processor fails. If a processor has a fallback action of <code>ABORT</code> and
    #            communication with it fails, the processor sets the message status to <code>FAILED</code> and does not send the message to any recipients. Note that if the last processor in the channel flow sequence
    #            has a fallback action of <code>CONTINUE</code> and communication with the processor fails, then the message is considered processed and sent to recipients of the channel.</p>
    #
    #   Enum, one of: ["CONTINUE", "ABORT"]
    #
    #   @return [String]
    #
    Processor = ::Struct.new(
      :name,
      :configuration,
      :execution_order,
      :fallback_action,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKMessaging::Types::Processor "\
          "name=\"[SENSITIVE]\", "\
          "configuration=#{configuration || 'nil'}, "\
          "execution_order=#{execution_order || 'nil'}, "\
          "fallback_action=#{fallback_action || 'nil'}>"
      end
    end

    # <p>A processor's metadata.</p>
    #
    # @!attribute lambda
    #   <p>Indicates that the processor is of type Lambda.</p>
    #
    #   @return [LambdaConfiguration]
    #
    ProcessorConfiguration = ::Struct.new(
      :lambda,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The push notification configuration of the message.</p>
    #
    # @!attribute title
    #   <p>The title of the push notification.</p>
    #
    #   @return [String]
    #
    # @!attribute body
    #   <p>The body of the push notification.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>Enum value that indicates the type of the push notification for a message.
    #            <code>DEFAULT</code>: Normal mobile push notification.
    #            <code>VOIP</code>: VOIP mobile push notification.</p>
    #
    #   Enum, one of: ["DEFAULT", "VOIP"]
    #
    #   @return [String]
    #
    PushNotificationConfiguration = ::Struct.new(
      :title,
      :body,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKMessaging::Types::PushNotificationConfiguration "\
          "title=\"[SENSITIVE]\", "\
          "body=\"[SENSITIVE]\", "\
          "type=#{type || 'nil'}>"
      end
    end

    # <p>The channel membership preferences for push notification.</p>
    #
    # @!attribute allow_notifications
    #   <p>Enum value that indicates which push notifications to send to the requested member of a channel.
    #            <code>ALL</code> sends all push notifications, <code>NONE</code> sends no push notifications, <code>FILTERED</code> sends only filtered push notifications.
    #         </p>
    #
    #   Enum, one of: ["ALL", "NONE", "FILTERED"]
    #
    #   @return [String]
    #
    # @!attribute filter_rule
    #   <p>The simple JSON object used to send a subset of a push notification to the requested member.</p>
    #
    #   @return [String]
    #
    PushNotificationPreferences = ::Struct.new(
      :allow_notifications,
      :filter_rule,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKMessaging::Types::PushNotificationPreferences "\
          "allow_notifications=#{allow_notifications || 'nil'}, "\
          "filter_rule=\"[SENSITIVE]\">"
      end
    end

    # Includes enum constants for PushNotificationType
    #
    module PushNotificationType
      # No documentation available.
      #
      DEFAULT = "DEFAULT"

      # No documentation available.
      #
      VOIP = "VOIP"
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel.</p>
    #
    #   @return [String]
    #
    # @!attribute member_arn
    #   <p>The <code>AppInstanceUserArn</code> of the member setting the preferences.</p>
    #
    #   @return [String]
    #
    # @!attribute chime_bearer
    #   <p>The <code>AppInstanceUserARN</code>  of the user making the API call.</p>
    #
    #   @return [String]
    #
    # @!attribute preferences
    #   <p>The channel membership preferences of an <code>AppInstanceUser</code> .</p>
    #
    #   @return [ChannelMembershipPreferences]
    #
    PutChannelMembershipPreferencesInput = ::Struct.new(
      :channel_arn,
      :member_arn,
      :chime_bearer,
      :preferences,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel.</p>
    #
    #   @return [String]
    #
    # @!attribute member
    #   <p>The details of a user.</p>
    #
    #   @return [Identity]
    #
    # @!attribute preferences
    #   <p>The ARN and metadata of the member being added.</p>
    #
    #   @return [ChannelMembershipPreferences]
    #
    PutChannelMembershipPreferencesOutput = ::Struct.new(
      :channel_arn,
      :member,
      :preferences,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel containing the messages that you want to redact.</p>
    #
    #   @return [String]
    #
    # @!attribute message_id
    #   <p>The ID of the message being redacted.</p>
    #
    #   @return [String]
    #
    # @!attribute chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    #   @return [String]
    #
    RedactChannelMessageInput = ::Struct.new(
      :channel_arn,
      :message_id,
      :chime_bearer,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel containing the messages that you want to redact.</p>
    #
    #   @return [String]
    #
    # @!attribute message_id
    #   <p>The ID of the message being redacted.</p>
    #
    #   @return [String]
    #
    RedactChannelMessageOutput = ::Struct.new(
      :channel_arn,
      :message_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request exceeds the resource limit.</p>
    #
    # @!attribute code
    #   Enum, one of: ["BadRequest", "Conflict", "Forbidden", "NotFound", "PreconditionFailed", "ResourceLimitExceeded", "ServiceFailure", "AccessDenied", "ServiceUnavailable", "Throttled", "Throttling", "Unauthorized", "Unprocessable", "VoiceConnectorGroupAssociationsExist", "PhoneNumberAssociationsExist"]
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceLimitExceededException = ::Struct.new(
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user making the API call.</p>
    #
    #   @return [String]
    #
    # @!attribute fields
    #   <p>A list of the <code>Field</code> objects in the channel being searched.</p>
    #
    #   @return [Array<SearchField>]
    #
    # @!attribute max_results
    #   <p>The maximum number of channels that you want returned.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token returned from previous API requests until the number of channels is reached.</p>
    #
    #   @return [String]
    #
    SearchChannelsInput = ::Struct.new(
      :chime_bearer,
      :fields,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKMessaging::Types::SearchChannelsInput "\
          "chime_bearer=#{chime_bearer || 'nil'}, "\
          "fields=#{fields || 'nil'}, "\
          "max_results=#{max_results || 'nil'}, "\
          "next_token=\"[SENSITIVE]\">"
      end
    end

    # @!attribute channels
    #   <p>A list of the channels in the request.</p>
    #
    #   @return [Array<ChannelSummary>]
    #
    # @!attribute next_token
    #   <p>The token returned from previous API responses until the number of channels is reached.</p>
    #
    #   @return [String]
    #
    SearchChannelsOutput = ::Struct.new(
      :channels,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKMessaging::Types::SearchChannelsOutput "\
          "channels=#{channels || 'nil'}, "\
          "next_token=\"[SENSITIVE]\">"
      end
    end

    # <p>A <code>Field</code> of the channel that you want to search.</p>
    #
    # @!attribute key
    #   <p>An <code>enum</code> value that indicates the key to search the channel on. <code>MEMBERS</code> allows you to search channels based on memberships. You can use it with the <code>EQUALS</code>
    #            operator to get channels whose memberships are equal to the specified values, and with the <code>INCLUDES</code>  operator to get channels whose memberships include the specified values.</p>
    #
    #   Enum, one of: ["MEMBERS"]
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>The values that you want to search for, a list of strings. The values must be <code>AppInstanceUserArns</code> specified as a list of strings.</p>
    #            <note>
    #               <p>This operation isn't supported for <code>AppInstanceUsers</code> with large number of memberships.</p>
    #            </note>
    #
    #   @return [Array<String>]
    #
    # @!attribute operator
    #   <p>The operator used to compare field values, currently <code>EQUALS</code> or <code>INCLUDES</code>.  Use the <code>EQUALS</code> operator to find channels whose memberships equal the specified values.
    #            Use the <code>INCLUDES</code> operator to find channels whose memberships include the specified values.</p>
    #
    #   Enum, one of: ["EQUALS", "INCLUDES"]
    #
    #   @return [String]
    #
    SearchField = ::Struct.new(
      :key,
      :values,
      :operator,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SearchFieldKey
    #
    module SearchFieldKey
      # No documentation available.
      #
      MEMBERS = "MEMBERS"
    end

    # Includes enum constants for SearchFieldOperator
    #
    module SearchFieldOperator
      # No documentation available.
      #
      EQUALS = "EQUALS"

      # No documentation available.
      #
      INCLUDES = "INCLUDES"
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel.</p>
    #
    #   @return [String]
    #
    # @!attribute content
    #   <p>The content of the message.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of message, <code>STANDARD</code> or <code>CONTROL</code>.</p>
    #
    #   Enum, one of: ["STANDARD", "CONTROL"]
    #
    #   @return [String]
    #
    # @!attribute persistence
    #   <p>Boolean that controls whether the message is persisted on the back end. Required.</p>
    #
    #   Enum, one of: ["PERSISTENT", "NON_PERSISTENT"]
    #
    #   @return [String]
    #
    # @!attribute metadata
    #   <p>The optional metadata for each message.</p>
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   <p>The <code>Idempotency</code> token for each client request.</p>
    #
    #   @return [String]
    #
    # @!attribute chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    #   @return [String]
    #
    # @!attribute push_notification
    #   <p>The push notification configuration of the message.</p>
    #
    #   @return [PushNotificationConfiguration]
    #
    # @!attribute message_attributes
    #   <p>The attributes for the message, used for message filtering along with a <code>FilterRule</code> defined in the <code>PushNotificationPreferences</code>.</p>
    #
    #   @return [Hash<String, MessageAttributeValue>]
    #
    SendChannelMessageInput = ::Struct.new(
      :channel_arn,
      :content,
      :type,
      :persistence,
      :metadata,
      :client_request_token,
      :chime_bearer,
      :push_notification,
      :message_attributes,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKMessaging::Types::SendChannelMessageInput "\
          "channel_arn=#{channel_arn || 'nil'}, "\
          "content=\"[SENSITIVE]\", "\
          "type=#{type || 'nil'}, "\
          "persistence=#{persistence || 'nil'}, "\
          "metadata=\"[SENSITIVE]\", "\
          "client_request_token=\"[SENSITIVE]\", "\
          "chime_bearer=#{chime_bearer || 'nil'}, "\
          "push_notification=#{push_notification || 'nil'}, "\
          "message_attributes=#{message_attributes || 'nil'}>"
      end
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel.</p>
    #
    #   @return [String]
    #
    # @!attribute message_id
    #   <p>The ID string assigned to each message.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the channel message.</p>
    #
    #   @return [ChannelMessageStatusStructure]
    #
    SendChannelMessageOutput = ::Struct.new(
      :channel_arn,
      :message_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The service encountered an unexpected error.</p>
    #
    # @!attribute code
    #   Enum, one of: ["BadRequest", "Conflict", "Forbidden", "NotFound", "PreconditionFailed", "ResourceLimitExceeded", "ServiceFailure", "AccessDenied", "ServiceUnavailable", "Throttled", "Throttling", "Unauthorized", "Unprocessable", "VoiceConnectorGroupAssociationsExist", "PhoneNumberAssociationsExist"]
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ServiceFailureException = ::Struct.new(
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The service is currently unavailable.</p>
    #
    # @!attribute code
    #   Enum, one of: ["BadRequest", "Conflict", "Forbidden", "NotFound", "PreconditionFailed", "ResourceLimitExceeded", "ServiceFailure", "AccessDenied", "ServiceUnavailable", "Throttled", "Throttling", "Unauthorized", "Unprocessable", "VoiceConnectorGroupAssociationsExist", "PhoneNumberAssociationsExist"]
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ServiceUnavailableException = ::Struct.new(
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SortOrder
    #
    module SortOrder
      # No documentation available.
      #
      ASCENDING = "ASCENDING"

      # No documentation available.
      #
      DESCENDING = "DESCENDING"
    end

    # <p>A tag object containing a key-value pair.</p>
    #
    # @!attribute key
    #   <p>The key in a tag.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value in a tag.</p>
    #
    #   @return [String]
    #
    Tag = ::Struct.new(
      :key,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKMessaging::Types::Tag "\
          "key=\"[SENSITIVE]\", "\
          "value=\"[SENSITIVE]\">"
      end
    end

    # @!attribute resource_arn
    #   <p>The resource ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tag key-value pairs.</p>
    #
    #   @return [Array<Tag>]
    #
    TagResourceInput = ::Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    TagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The client exceeded its request rate limit.</p>
    #
    # @!attribute code
    #   Enum, one of: ["BadRequest", "Conflict", "Forbidden", "NotFound", "PreconditionFailed", "ResourceLimitExceeded", "ServiceFailure", "AccessDenied", "ServiceUnavailable", "Throttled", "Throttling", "Unauthorized", "Unprocessable", "VoiceConnectorGroupAssociationsExist", "PhoneNumberAssociationsExist"]
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ThrottledClientException = ::Struct.new(
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The client is not currently authorized to make the request.</p>
    #
    # @!attribute code
    #   Enum, one of: ["BadRequest", "Conflict", "Forbidden", "NotFound", "PreconditionFailed", "ResourceLimitExceeded", "ServiceFailure", "AccessDenied", "ServiceUnavailable", "Throttled", "Throttling", "Unauthorized", "Unprocessable", "VoiceConnectorGroupAssociationsExist", "PhoneNumberAssociationsExist"]
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    UnauthorizedClientException = ::Struct.new(
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The resource ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The tag keys.</p>
    #
    #   @return [Array<String>]
    #
    UntagResourceInput = ::Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UntagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel_flow_arn
    #   <p>The ARN of the channel flow.</p>
    #
    #   @return [String]
    #
    # @!attribute processors
    #   <p>Information about the processor Lambda functions </p>
    #
    #   @return [Array<Processor>]
    #
    # @!attribute name
    #   <p>The name of the channel flow.</p>
    #
    #   @return [String]
    #
    UpdateChannelFlowInput = ::Struct.new(
      :channel_flow_arn,
      :processors,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKMessaging::Types::UpdateChannelFlowInput "\
          "channel_flow_arn=#{channel_flow_arn || 'nil'}, "\
          "processors=#{processors || 'nil'}, "\
          "name=\"[SENSITIVE]\">"
      end
    end

    # @!attribute channel_flow_arn
    #   <p>The ARN of the channel flow.</p>
    #
    #   @return [String]
    #
    UpdateChannelFlowOutput = ::Struct.new(
      :channel_flow_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the channel.</p>
    #
    #   @return [String]
    #
    # @!attribute mode
    #   <p>The mode of the update request.</p>
    #
    #   Enum, one of: ["UNRESTRICTED", "RESTRICTED"]
    #
    #   @return [String]
    #
    # @!attribute metadata
    #   <p>The metadata for the update request.</p>
    #
    #   @return [String]
    #
    # @!attribute chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    #   @return [String]
    #
    UpdateChannelInput = ::Struct.new(
      :channel_arn,
      :name,
      :mode,
      :metadata,
      :chime_bearer,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKMessaging::Types::UpdateChannelInput "\
          "channel_arn=#{channel_arn || 'nil'}, "\
          "name=\"[SENSITIVE]\", "\
          "mode=#{mode || 'nil'}, "\
          "metadata=\"[SENSITIVE]\", "\
          "chime_bearer=#{chime_bearer || 'nil'}>"
      end
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel.</p>
    #
    #   @return [String]
    #
    # @!attribute message_id
    #   <p>The ID string of the message being updated.</p>
    #
    #   @return [String]
    #
    # @!attribute content
    #   <p>The content of the message being updated.</p>
    #
    #   @return [String]
    #
    # @!attribute metadata
    #   <p>The metadata of the message being updated.</p>
    #
    #   @return [String]
    #
    # @!attribute chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    #   @return [String]
    #
    UpdateChannelMessageInput = ::Struct.new(
      :channel_arn,
      :message_id,
      :content,
      :metadata,
      :chime_bearer,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKMessaging::Types::UpdateChannelMessageInput "\
          "channel_arn=#{channel_arn || 'nil'}, "\
          "message_id=#{message_id || 'nil'}, "\
          "content=\"[SENSITIVE]\", "\
          "metadata=\"[SENSITIVE]\", "\
          "chime_bearer=#{chime_bearer || 'nil'}>"
      end
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel.</p>
    #
    #   @return [String]
    #
    # @!attribute message_id
    #   <p>The ID string of the message being updated.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the message update.</p>
    #
    #   @return [ChannelMessageStatusStructure]
    #
    UpdateChannelMessageOutput = ::Struct.new(
      :channel_arn,
      :message_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel.</p>
    #
    #   @return [String]
    #
    UpdateChannelOutput = ::Struct.new(
      :channel_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel.</p>
    #
    #   @return [String]
    #
    # @!attribute chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    #   @return [String]
    #
    UpdateChannelReadMarkerInput = ::Struct.new(
      :channel_arn,
      :chime_bearer,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel.</p>
    #
    #   @return [String]
    #
    UpdateChannelReadMarkerOutput = ::Struct.new(
      :channel_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
