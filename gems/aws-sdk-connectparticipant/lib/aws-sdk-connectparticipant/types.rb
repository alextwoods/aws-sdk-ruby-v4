# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ConnectParticipant
  module Types

    # <p>You do not have sufficient access to perform this action.</p>
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

    # Includes enum constants for ArtifactStatus
    #
    module ArtifactStatus
      # No documentation available.
      #
      APPROVED = "APPROVED"

      # No documentation available.
      #
      REJECTED = "REJECTED"

      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"
    end

    # <p>The case-insensitive input to indicate standard MIME type that describes the format of the file
    #             that will be uploaded.</p>
    #
    # @!attribute content_type
    #   <p>Describes the MIME file type of the attachment. For a list of supported file types, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html feature-limits">Feature specifications</a> in the <i>Amazon Connect Administrator Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute attachment_id
    #   <p>A unique identifier for the attachment.</p>
    #
    #   @return [String]
    #
    # @!attribute attachment_name
    #   <p>A case-sensitive name of the attachment being uploaded.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Status of the attachment.</p>
    #
    #   Enum, one of: ["APPROVED", "REJECTED", "IN_PROGRESS"]
    #
    #   @return [String]
    #
    AttachmentItem = ::Struct.new(
      :content_type,
      :attachment_id,
      :attachment_name,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ChatItemType
    #
    module ChatItemType
      # No documentation available.
      #
      TYPING = "TYPING"

      # No documentation available.
      #
      PARTICIPANT_JOINED = "PARTICIPANT_JOINED"

      # No documentation available.
      #
      PARTICIPANT_LEFT = "PARTICIPANT_LEFT"

      # No documentation available.
      #
      CHAT_ENDED = "CHAT_ENDED"

      # No documentation available.
      #
      TRANSFER_SUCCEEDED = "TRANSFER_SUCCEEDED"

      # No documentation available.
      #
      TRANSFER_FAILED = "TRANSFER_FAILED"

      # No documentation available.
      #
      MESSAGE = "MESSAGE"

      # No documentation available.
      #
      EVENT = "EVENT"

      # No documentation available.
      #
      ATTACHMENT = "ATTACHMENT"

      # No documentation available.
      #
      CONNECTION_ACK = "CONNECTION_ACK"
    end

    # @!attribute attachment_ids
    #   <p>A list of unique identifiers for the attachments.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_token
    #   <p>The authentication token associated with the participant's connection.</p>
    #
    #   @return [String]
    #
    CompleteAttachmentUploadInput = ::Struct.new(
      :attachment_ids,
      :client_token,
      :connection_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    CompleteAttachmentUploadOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An attachment with that identifier is already being uploaded.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ConflictException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Connection credentials. </p>
    #
    # @!attribute connection_token
    #   <p>The connection token.</p>
    #
    #   @return [String]
    #
    # @!attribute expiry
    #   <p>The expiration of the token.</p>
    #           <p>It's specified in ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For example,
    #               2019-11-08T02:41:28.172Z.</p>
    #
    #   @return [String]
    #
    ConnectionCredentials = ::Struct.new(
      :connection_token,
      :expiry,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ConnectionType
    #
    module ConnectionType
      # No documentation available.
      #
      WEBSOCKET = "WEBSOCKET"

      # No documentation available.
      #
      CONNECTION_CREDENTIALS = "CONNECTION_CREDENTIALS"
    end

    # @!attribute type
    #   <p>Type of connection information required.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute participant_token
    #   <p>This is a header parameter.</p>
    #           <p>The ParticipantToken as obtained from <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_StartChatContact.html">StartChatContact</a>
    #               API response.</p>
    #
    #   @return [String]
    #
    # @!attribute connect_participant
    #   <p>Amazon Connect Participant is used to mark the participant as connected for message
    #               streaming.</p>
    #
    #   @return [Boolean]
    #
    CreateParticipantConnectionInput = ::Struct.new(
      :type,
      :participant_token,
      :connect_participant,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute websocket
    #   <p>Creates the participant's websocket connection.</p>
    #
    #   @return [Websocket]
    #
    # @!attribute connection_credentials
    #   <p>Creates the participant's connection credentials. The authentication token associated
    #               with the participant's connection.</p>
    #
    #   @return [ConnectionCredentials]
    #
    CreateParticipantConnectionOutput = ::Struct.new(
      :websocket,
      :connection_credentials,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_token
    #   <p>The authentication token associated with the participant's connection.</p>
    #
    #   @return [String]
    #
    DisconnectParticipantInput = ::Struct.new(
      :client_token,
      :connection_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisconnectParticipantOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute attachment_id
    #   <p>A unique identifier for the attachment.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_token
    #   <p>The authentication token associated with the participant's connection.</p>
    #
    #   @return [String]
    #
    GetAttachmentInput = ::Struct.new(
      :attachment_id,
      :connection_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute url
    #   <p>This is the pre-signed URL that can be used for uploading the file to Amazon S3 when used in response
    #   to <a href="https://docs.aws.amazon.com/connect-participant/latest/APIReference/API_StartAttachmentUpload.html">StartAttachmentUpload</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute url_expiry
    #   <p>The expiration time of the URL in ISO timestamp. It's specified in ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For example, 2019-11-08T02:41:28.172Z.</p>
    #
    #   @return [String]
    #
    GetAttachmentOutput = ::Struct.new(
      :url,
      :url_expiry,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute contact_id
    #   <p>The contactId from the current contact chain for which transcript is needed.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in the page. Default: 10. </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The pagination token. Use the value returned previously in the next subsequent request
    #               to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute scan_direction
    #   <p>The direction from StartPosition from which to retrieve message. Default: BACKWARD
    #               when no StartPosition is provided, FORWARD with StartPosition. </p>
    #
    #   Enum, one of: ["FORWARD", "BACKWARD"]
    #
    #   @return [String]
    #
    # @!attribute sort_order
    #   <p>The sort order for the records. Default: DESCENDING.</p>
    #
    #   Enum, one of: ["DESCENDING", "ASCENDING"]
    #
    #   @return [String]
    #
    # @!attribute start_position
    #   <p>A filtering option for where to start.</p>
    #
    #   @return [StartPosition]
    #
    # @!attribute connection_token
    #   <p>The authentication token associated with the participant's connection.</p>
    #
    #   @return [String]
    #
    GetTranscriptInput = ::Struct.new(
      :contact_id,
      :max_results,
      :next_token,
      :scan_direction,
      :sort_order,
      :start_position,
      :connection_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute initial_contact_id
    #   <p>The initial contact ID for the contact. </p>
    #
    #   @return [String]
    #
    # @!attribute transcript
    #   <p>The list of messages in the session.</p>
    #
    #   @return [Array<Item>]
    #
    # @!attribute next_token
    #   <p>The pagination token. Use the value returned previously in the next subsequent request
    #               to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    GetTranscriptOutput = ::Struct.new(
      :initial_contact_id,
      :transcript,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception occurs when there is an internal failure in the Amazon Connect service.</p>
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

    # <p>An item - message or event - that has been sent. </p>
    #
    # @!attribute absolute_time
    #   <p>The time when the message or event was sent.</p>
    #           <p>It's specified in ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For example,
    #               2019-11-08T02:41:28.172Z.</p>
    #
    #   @return [String]
    #
    # @!attribute content
    #   <p>The content of the message or event.</p>
    #
    #   @return [String]
    #
    # @!attribute content_type
    #   <p>The type of content of the item.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The ID of the item.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>Type of the item: message or event. </p>
    #
    #   Enum, one of: ["TYPING", "PARTICIPANT_JOINED", "PARTICIPANT_LEFT", "CHAT_ENDED", "TRANSFER_SUCCEEDED", "TRANSFER_FAILED", "MESSAGE", "EVENT", "ATTACHMENT", "CONNECTION_ACK"]
    #
    #   @return [String]
    #
    # @!attribute participant_id
    #   <p>The ID of the sender in the session.</p>
    #
    #   @return [String]
    #
    # @!attribute display_name
    #   <p>The chat display name of the sender.</p>
    #
    #   @return [String]
    #
    # @!attribute participant_role
    #   <p>The role of the sender. For example, is it a customer, agent, or system.</p>
    #
    #   Enum, one of: ["AGENT", "CUSTOMER", "SYSTEM"]
    #
    #   @return [String]
    #
    # @!attribute attachments
    #   <p>Provides information about the attachments.</p>
    #
    #   @return [Array<AttachmentItem>]
    #
    Item = ::Struct.new(
      :absolute_time,
      :content,
      :content_type,
      :id,
      :type,
      :participant_id,
      :display_name,
      :participant_role,
      :attachments,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ParticipantRole
    #
    module ParticipantRole
      # No documentation available.
      #
      AGENT = "AGENT"

      # No documentation available.
      #
      CUSTOMER = "CUSTOMER"

      # No documentation available.
      #
      SYSTEM = "SYSTEM"
    end

    # Includes enum constants for ScanDirection
    #
    module ScanDirection
      # No documentation available.
      #
      FORWARD = "FORWARD"

      # No documentation available.
      #
      BACKWARD = "BACKWARD"
    end

    # @!attribute content_type
    #   <p>The content type of the request. Supported types are:</p>
    #
    #           <ul>
    #               <li>
    #                   <p>application/vnd.amazonaws.connect.event.typing</p>
    #               </li>
    #               <li>
    #                   <p>application/vnd.amazonaws.connect.event.connection.acknowledged</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute content
    #   <p>The content of the event to be sent (for example, message text). This is not yet
    #               supported.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_token
    #   <p>The authentication token associated with the participant's connection.</p>
    #
    #   @return [String]
    #
    SendEventInput = ::Struct.new(
      :content_type,
      :content,
      :client_token,
      :connection_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of the response.</p>
    #
    #   @return [String]
    #
    # @!attribute absolute_time
    #   <p>The time when the event was sent.</p>
    #           <p>It's specified in ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For example,
    #               2019-11-08T02:41:28.172Z.</p>
    #
    #   @return [String]
    #
    SendEventOutput = ::Struct.new(
      :id,
      :absolute_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute content_type
    #   <p>The type of the content. Supported types are text/plain.</p>
    #
    #   @return [String]
    #
    # @!attribute content
    #   <p>The content of the message.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_token
    #   <p>The authentication token associated with the connection.</p>
    #
    #   @return [String]
    #
    SendMessageInput = ::Struct.new(
      :content_type,
      :content,
      :client_token,
      :connection_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of the message.</p>
    #
    #   @return [String]
    #
    # @!attribute absolute_time
    #   <p>The time when the message was sent.</p>
    #           <p>It's specified in ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For example,
    #               2019-11-08T02:41:28.172Z.</p>
    #
    #   @return [String]
    #
    SendMessageOutput = ::Struct.new(
      :id,
      :absolute_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The number of attachments per contact exceeds the quota.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ServiceQuotaExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SortKey
    #
    module SortKey
      # No documentation available.
      #
      DESCENDING = "DESCENDING"

      # No documentation available.
      #
      ASCENDING = "ASCENDING"
    end

    # @!attribute content_type
    #   <p>Describes the MIME file type of the attachment. For a list of supported file types, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html feature-limits">Feature specifications</a> in the <i>Amazon Connect Administrator Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute attachment_size_in_bytes
    #   <p>The size of the attachment in bytes.</p>
    #
    #   @return [Integer]
    #
    # @!attribute attachment_name
    #   <p>A case-sensitive name of the attachment being uploaded.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>A unique case sensitive identifier to support idempotency of request.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_token
    #   <p>The authentication token associated with the participant's connection.</p>
    #
    #   @return [String]
    #
    StartAttachmentUploadInput = ::Struct.new(
      :content_type,
      :attachment_size_in_bytes,
      :attachment_name,
      :client_token,
      :connection_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.attachment_size_in_bytes ||= 0
      end

    end

    # @!attribute attachment_id
    #   <p>A unique identifier for the attachment.</p>
    #
    #   @return [String]
    #
    # @!attribute upload_metadata
    #   <p>Fields to be used while uploading the attachment.</p>
    #
    #   @return [UploadMetadata]
    #
    StartAttachmentUploadOutput = ::Struct.new(
      :attachment_id,
      :upload_metadata,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A filtering option for where to start. For example, if you sent 100 messages, start
    #             with message 50. </p>
    #
    # @!attribute id
    #   <p>The ID of the message or event where to start. </p>
    #
    #   @return [String]
    #
    # @!attribute absolute_time
    #   <p>The time in ISO format where to start.</p>
    #           <p>It's specified in ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For example,
    #               2019-11-08T02:41:28.172Z.</p>
    #
    #   @return [String]
    #
    # @!attribute most_recent
    #   <p>The start position of the most recent message where you want to start. </p>
    #
    #   @return [Integer]
    #
    StartPosition = ::Struct.new(
      :id,
      :absolute_time,
      :most_recent,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.most_recent ||= 0
      end

    end

    # <p>The request was denied due to request throttling.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ThrottlingException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Fields to be used while uploading the attachment.</p>
    #
    # @!attribute url
    #   <p>This is the pre-signed URL that can be used for uploading the file to Amazon S3 when used in response
    #   to <a href="https://docs.aws.amazon.com/connect-participant/latest/APIReference/API_StartAttachmentUpload.html">StartAttachmentUpload</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute url_expiry
    #   <p>The expiration time of the URL in ISO timestamp. It's specified in ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For example, 2019-11-08T02:41:28.172Z.</p>
    #
    #   @return [String]
    #
    # @!attribute headers_to_include
    #   <p>The headers to be provided while uploading the file to the URL.</p>
    #
    #   @return [Hash<String, String>]
    #
    UploadMetadata = ::Struct.new(
      :url,
      :url_expiry,
      :headers_to_include,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The input fails to satisfy the constraints specified by Amazon Connect.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ValidationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The websocket for the participant's connection.</p>
    #
    # @!attribute url
    #   <p>The URL of the websocket.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_expiry
    #   <p>The URL expiration timestamp in ISO date format.</p>
    #           <p>It's specified in ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For example,
    #               2019-11-08T02:41:28.172Z.</p>
    #
    #   @return [String]
    #
    Websocket = ::Struct.new(
      :url,
      :connection_expiry,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
