# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Ivschat
  module Types

    # <p/>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AccessDeniedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ChatTokenCapability
    #
    module ChatTokenCapability
      # No documentation available.
      #
      SEND_MESSAGE = "SEND_MESSAGE"

      # No documentation available.
      #
      DISCONNECT_USER = "DISCONNECT_USER"

      # No documentation available.
      #
      DELETE_MESSAGE = "DELETE_MESSAGE"
    end

    # <p/>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p/>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p/>
    #
    #   Enum, one of: ["ROOM"]
    #
    #   @return [String]
    #
    ConflictException = ::Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute room_identifier
    #   <p>Identifier of the room that the client is trying to access. Currently this must be an
    #            ARN. </p>
    #
    #   @return [String]
    #
    # @!attribute user_id
    #   <p>Application-provided ID that uniquely identifies the user associated with this token.
    #            This can be any UTF-8 encoded text.</p>
    #
    #   @return [String]
    #
    # @!attribute capabilities
    #   <p>Set of capabilities that the user is allowed to perform in the room. Default: None (the
    #            capability to view messages is implicitly included in all requests).</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute session_duration_in_minutes
    #   <p>Session duration (in minutes), after which the session expires. Default: 60 (1
    #            hour).</p>
    #
    #   @return [Integer]
    #
    # @!attribute attributes
    #   <p>Application-provided attributes to encode into the token and attach to a chat session.
    #            Map keys and values can contain UTF-8 encoded text. The maximum length of this field is 1
    #            KB total.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateChatTokenInput = ::Struct.new(
      :room_identifier,
      :user_id,
      :capabilities,
      :session_duration_in_minutes,
      :attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.session_duration_in_minutes ||= 0
      end

    end

    # @!attribute token
    #   <p>The issued client token, encrypted.</p>
    #
    #   @return [String]
    #
    # @!attribute token_expiration_time
    #   <p>Time after which the token is no longer valid and cannot be used to connect to a room.
    #            This is an ISO 8601 timestamp; <i>note that this is returned as a
    #            string</i>.</p>
    #
    #   @return [Time]
    #
    # @!attribute session_expiration_time
    #   <p>Time after which an end user's session is no longer valid. This is an ISO 8601
    #            timestamp; <i>note that this is returned as a string</i>.</p>
    #
    #   @return [Time]
    #
    CreateChatTokenOutput = ::Struct.new(
      :token,
      :token_expiration_time,
      :session_expiration_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>Room name. The value does not need to be unique.</p>
    #
    #   @return [String]
    #
    # @!attribute maximum_message_rate_per_second
    #   <p>Maximum number of messages per second that can be sent to the room (by all clients).
    #            Default: 10. </p>
    #
    #   @return [Integer]
    #
    # @!attribute maximum_message_length
    #   <p>Maximum number of characters in a single message. Messages are expected to be UTF-8
    #            encoded and this limit applies specifically to rune/code-point count, not number of bytes.
    #            Default: 500.</p>
    #
    #   @return [Integer]
    #
    # @!attribute message_review_handler
    #   <p>Configuration information for optional review of messages.</p>
    #
    #   @return [MessageReviewHandler]
    #
    # @!attribute tags
    #   <p>Tags to attach to the resource. Array of maps, each of the form <code>string:string
    #               (key:value)</code>. </p>
    #
    #   @return [Hash<String, String>]
    #
    CreateRoomInput = ::Struct.new(
      :name,
      :maximum_message_rate_per_second,
      :maximum_message_length,
      :message_review_handler,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.maximum_message_rate_per_second ||= 0
        self.maximum_message_length ||= 0
      end

    end

    # @!attribute arn
    #   <p>Room ARN, assigned by the system.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>Room ID, generated by the system. This is a relative identifier, the part of the ARN
    #            that uniquely identifies the room.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>Room name, from the request (if specified).</p>
    #
    #   @return [String]
    #
    # @!attribute create_time
    #   <p>Time when the room was created. This is an ISO 8601 timestamp; <i>note that this
    #               is returned as a string</i>.</p>
    #
    #   @return [Time]
    #
    # @!attribute update_time
    #   <p>Time of the room’s last update. This is an ISO 8601 timestamp; <i>note that this
    #               is returned as a string</i>.</p>
    #
    #   @return [Time]
    #
    # @!attribute maximum_message_rate_per_second
    #   <p>Maximum number of messages per second that can be sent to the room (by all clients),
    #            from the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute maximum_message_length
    #   <p>Maximum number of characters in a single message, from the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute message_review_handler
    #   <p>Configuration information for optional review of messages.</p>
    #
    #   @return [MessageReviewHandler]
    #
    # @!attribute tags
    #   <p>Tags attached to the resource, from the request.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateRoomOutput = ::Struct.new(
      :arn,
      :id,
      :name,
      :create_time,
      :update_time,
      :maximum_message_rate_per_second,
      :maximum_message_length,
      :message_review_handler,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.maximum_message_rate_per_second ||= 0
        self.maximum_message_length ||= 0
      end

    end

    # @!attribute room_identifier
    #   <p>Identifier of the room where the message should be deleted. Currently this must be an
    #            ARN. </p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>ID of the message to be deleted. This is the <code>Id</code> field in the received
    #            message (see <a href="https://docs.aws.amazon.com/ivs/latest/chatmsgapireference/actions-message-subscribe.html"> Message
    #               (Subscribe)</a> in the Chat Messaging API).</p>
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>Reason for deleting the message.</p>
    #
    #   @return [String]
    #
    DeleteMessageInput = ::Struct.new(
      :room_identifier,
      :id,
      :reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>Operation identifier, generated by Amazon IVS Chat.</p>
    #
    #   @return [String]
    #
    DeleteMessageOutput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute identifier
    #   <p>Identifier of the room to be deleted. Currently this must be an ARN.</p>
    #
    #   @return [String]
    #
    DeleteRoomInput = ::Struct.new(
      :identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteRoomOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute room_identifier
    #   <p>Identifier of the room from which the user's clients should be disconnected. Currently
    #            this must be an ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute user_id
    #   <p>ID of the user (connection) to disconnect from the room.</p>
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>Reason for disconnecting the user.</p>
    #
    #   @return [String]
    #
    DisconnectUserInput = ::Struct.new(
      :room_identifier,
      :user_id,
      :reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisconnectUserOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FallbackResult
    #
    module FallbackResult
      # No documentation available.
      #
      ALLOW = "ALLOW"

      # No documentation available.
      #
      DENY = "DENY"
    end

    # @!attribute identifier
    #   <p>Identifier of the room for which the configuration is to be retrieved. Currently this
    #            must be an ARN.</p>
    #
    #   @return [String]
    #
    GetRoomInput = ::Struct.new(
      :identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>Room ARN, from the request (if <code>identifier</code> was an ARN).</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>Room ID, generated by the system. This is a relative identifier, the part of the ARN
    #            that uniquely identifies the room.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>Room name. The value does not need to be unique.</p>
    #
    #   @return [String]
    #
    # @!attribute create_time
    #   <p>Time when the room was created. This is an ISO 8601 timestamp; <i>note that this
    #               is returned as a string</i>.</p>
    #
    #   @return [Time]
    #
    # @!attribute update_time
    #   <p>Time of the room’s last update. This is an ISO 8601 timestamp; <i>note that this
    #               is returned as a string</i>.</p>
    #
    #   @return [Time]
    #
    # @!attribute maximum_message_rate_per_second
    #   <p>Maximum number of messages per second that can be sent to the room (by all clients). Default:
    #            10.</p>
    #
    #   @return [Integer]
    #
    # @!attribute maximum_message_length
    #   <p>Maximum number of characters in a single message. Messages are expected to be UTF-8
    #            encoded and this limit applies specifically to rune/code-point count, not number of bytes.
    #            Default: 500.</p>
    #
    #   @return [Integer]
    #
    # @!attribute message_review_handler
    #   <p>Configuration information for optional review of messages.</p>
    #
    #   @return [MessageReviewHandler]
    #
    # @!attribute tags
    #   <p>Tags attached to the resource. Array of maps, each of the form <code>string:string
    #               (key:value)</code>.</p>
    #
    #   @return [Hash<String, String>]
    #
    GetRoomOutput = ::Struct.new(
      :arn,
      :id,
      :name,
      :create_time,
      :update_time,
      :maximum_message_rate_per_second,
      :maximum_message_length,
      :message_review_handler,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.maximum_message_rate_per_second ||= 0
        self.maximum_message_length ||= 0
      end

    end

    # <p/>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InternalServerException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>Filters the list to match the specified room name.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The first room to retrieve. This is used for pagination; see the <code>nextToken</code>
    #            response field.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Maximum number of rooms to return. Default: 50.</p>
    #
    #   @return [Integer]
    #
    # @!attribute message_review_handler_uri
    #   <p>Filters the list to match the specified message review handler URI.</p>
    #
    #   @return [String]
    #
    ListRoomsInput = ::Struct.new(
      :name,
      :next_token,
      :max_results,
      :message_review_handler_uri,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_results ||= 0
      end

    end

    # @!attribute rooms
    #   <p>List of the matching rooms (summary information only).</p>
    #
    #   @return [Array<RoomSummary>]
    #
    # @!attribute next_token
    #   <p>If there are more rooms than <code>maxResults</code>, use <code>nextToken</code> in the
    #            request to get the next set.</p>
    #
    #   @return [String]
    #
    ListRoomsOutput = ::Struct.new(
      :rooms,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource to be retrieved. The ARN must be URL-encoded.</p>
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
    #   <p>Tags to attach to the resource. Array of maps, each of the form <code>string:string
    #               (key:value)</code>.</p>
    #
    #   @return [Hash<String, String>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Configuration information for optional message review.</p>
    #
    # @!attribute uri
    #   <p>Identifier of the message review handler. Currently this must be an ARN of a lambda function.</p>
    #
    #   @return [String]
    #
    # @!attribute fallback_result
    #   <p>Specifies the fallback behavior (whether the message is allowed or denied) if the handler
    #         does not return a valid response, encounters an error, or times out. (For the timeout period, see <a href="https://docs.aws.amazon.com/ivs/latest/userguide/service-quotas.html"> Service Quotas</a>.) If allowed, the message is
    #         delivered with returned content to all users connected to the room. If denied, the message is
    #         not delivered to any user. Default: <code>ALLOW</code>.</p>
    #
    #   Enum, one of: ["ALLOW", "DENY"]
    #
    #   @return [String]
    #
    MessageReviewHandler = ::Struct.new(
      :uri,
      :fallback_result,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p/>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    PendingVerification = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p/>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p/>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p/>
    #
    #   Enum, one of: ["ROOM"]
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ResourceType
    #
    module ResourceType
      # No documentation available.
      #
      ROOM = "ROOM"
    end

    # <p>Summary information about a room.</p>
    #
    # @!attribute arn
    #   <p>Room ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>Room ID, generated by the system. This is a relative identifier, the part of the ARN that
    #         uniquely identifies the room.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>Room name. The value does not need to be unique.</p>
    #
    #   @return [String]
    #
    # @!attribute message_review_handler
    #   <p>Configuration information for optional review of messages.</p>
    #
    #   @return [MessageReviewHandler]
    #
    # @!attribute create_time
    #   <p>Time when the room was created. This is an ISO 8601 timestamp; <i>note that this is
    #           returned as a string</i>. </p>
    #
    #   @return [Time]
    #
    # @!attribute update_time
    #   <p>Time of the room’s last update. This is an ISO 8601 timestamp; <i>note that this is
    #           returned as a string</i>. </p>
    #
    #   @return [Time]
    #
    # @!attribute tags
    #   <p>Tags attached to the resource. </p>
    #
    #   @return [Hash<String, String>]
    #
    RoomSummary = ::Struct.new(
      :arn,
      :id,
      :name,
      :message_review_handler,
      :create_time,
      :update_time,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute room_identifier
    #   <p>Identifier of the room to which the event will be sent. Currently this must be an
    #            ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute event_name
    #   <p>Application-defined name of the event to send to clients.</p>
    #
    #   @return [String]
    #
    # @!attribute attributes
    #   <p>Application-defined metadata to attach to the event sent to clients. The maximum length
    #            of the metadata is 1 KB total.</p>
    #
    #   @return [Hash<String, String>]
    #
    SendEventInput = ::Struct.new(
      :room_identifier,
      :event_name,
      :attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>An identifier generated by Amazon IVS Chat. This identifier must be used in subsequent
    #            operations for this message, such as DeleteMessage.</p>
    #
    #   @return [String]
    #
    SendEventOutput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p/>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p/>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p/>
    #
    #   Enum, one of: ["ROOM"]
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p/>
    #
    #   @return [Integer]
    #
    ServiceQuotaExceededException = ::Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :limit,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.limit ||= 0
      end

    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource to be tagged. The ARN must be URL-encoded.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Array of tags to be added or updated.</p>
    #
    #   @return [Hash<String, String>]
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

    # <p/>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p/>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p/>
    #
    #   Enum, one of: ["ROOM"]
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p/>
    #
    #   @return [Integer]
    #
    ThrottlingException = ::Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :limit,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.limit ||= 0
      end

    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource to be untagged. The ARN must be URL-encoded.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>Array of tags to be removed.</p>
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

    # @!attribute identifier
    #   <p>Identifier of the room to be updated. Currently this must be an ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>Room name. The value does not need to be unique.</p>
    #
    #   @return [String]
    #
    # @!attribute maximum_message_rate_per_second
    #   <p>Maximum number of messages per second that can be sent to the room (by all clients).  Default:
    #            10.</p>
    #
    #   @return [Integer]
    #
    # @!attribute maximum_message_length
    #   <p>The maximum number of characters in a single message. Messages are expected to be UTF-8
    #            encoded and this limit applies specifically to rune/code-point count, not number of bytes.
    #            Default: 500.</p>
    #
    #   @return [Integer]
    #
    # @!attribute message_review_handler
    #   <p>Configuration information for optional review of messages. Specify an empty
    #               <code>uri</code> string to disassociate a message review handler from the specified
    #            room.</p>
    #
    #   @return [MessageReviewHandler]
    #
    UpdateRoomInput = ::Struct.new(
      :identifier,
      :name,
      :maximum_message_rate_per_second,
      :maximum_message_length,
      :message_review_handler,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.maximum_message_rate_per_second ||= 0
        self.maximum_message_length ||= 0
      end

    end

    # @!attribute arn
    #   <p>Room ARN, from the request (if <code>identifier</code> was an ARN).</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>Room ID, generated by the system. This is a relative identifier, the part of the ARN
    #            that uniquely identifies the room.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>Room name, from the request.</p>
    #
    #   @return [String]
    #
    # @!attribute create_time
    #   <p>Time when the room was created. This is an ISO 8601 timestamp; <i>note that this
    #               is returned as a string</i>.</p>
    #
    #   @return [Time]
    #
    # @!attribute update_time
    #   <p>Time of the room’s last update. This is an ISO 8601 timestamp; <i>note that this
    #               is returned as a string</i>.</p>
    #
    #   @return [Time]
    #
    # @!attribute maximum_message_rate_per_second
    #   <p>Maximum number of messages per second that can be sent to the room (by all clients), from the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute maximum_message_length
    #   <p>Maximum number of characters in a single message, from the request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute message_review_handler
    #   <p>Configuration information for optional review of messages.</p>
    #
    #   @return [MessageReviewHandler]
    #
    # @!attribute tags
    #   <p>Tags attached to the resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    UpdateRoomOutput = ::Struct.new(
      :arn,
      :id,
      :name,
      :create_time,
      :update_time,
      :maximum_message_rate_per_second,
      :maximum_message_length,
      :message_review_handler,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.maximum_message_rate_per_second ||= 0
        self.maximum_message_length ||= 0
      end

    end

    # <p/>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p/>
    #
    #   Enum, one of: ["UNKNOWN_OPERATION", "FIELD_VALIDATION_FAILED", "OTHER"]
    #
    #   @return [String]
    #
    # @!attribute field_list
    #   <p/>
    #
    #   @return [Array<ValidationExceptionField>]
    #
    ValidationException = ::Struct.new(
      :message,
      :reason,
      :field_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This object is used in the ValidationException error.</p>
    #
    # @!attribute name
    #   <p>Name of the field which failed validation.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>Explanation of the reason for the validation error.</p>
    #
    #   @return [String]
    #
    ValidationExceptionField = ::Struct.new(
      :name,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ValidationExceptionReason
    #
    module ValidationExceptionReason
      # No documentation available.
      #
      UNKNOWN_OPERATION = "UNKNOWN_OPERATION"

      # No documentation available.
      #
      FIELD_VALIDATION_FAILED = "FIELD_VALIDATION_FAILED"

      # No documentation available.
      #
      OTHER = "OTHER"
    end

  end
end
