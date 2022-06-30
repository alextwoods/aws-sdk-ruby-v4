# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ChimeSDKMeetings
  module Types

    # <p>An Amazon Chime SDK meeting attendee. Includes a unique
    #            <code>AttendeeId</code> and <code>JoinToken</code>. The
    #            <code>JoinToken</code>
    #            allows a client to authenticate and join as the specified attendee. The
    #            <code>JoinToken</code>
    #            expires when the meeting ends, or when
    #            <a>DeleteAttendee</a>
    #            is called. After that, the attendee is unable to join the meeting.
    #        </p>
    #
    #          <p>We recommend securely transferring each <code>JoinToken</code> from your server application
    #            to the client so that no other client has access to the token except for the one
    #            authorized to represent the attendee.</p>
    #
    # @!attribute external_user_id
    #   <p>The Amazon Chime SDK external user ID. An idempotency token. Links the attendee to an identity managed by a builder application.</p>
    #
    #   @return [String]
    #
    # @!attribute attendee_id
    #   <p>The Amazon Chime SDK attendee ID.</p>
    #
    #   @return [String]
    #
    # @!attribute join_token
    #   <p>The join token used by the Amazon Chime SDK attendee.</p>
    #
    #   @return [String]
    #
    # @!attribute capabilities
    #   <p>The capabilities (audio, video, or content) assigned to an attendee.</p>
    #
    #   @return [AttendeeCapabilities]
    #
    Attendee = ::Struct.new(
      :external_user_id,
      :attendee_id,
      :join_token,
      :capabilities,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKMeetings::Types::Attendee "\
          "external_user_id=\"[SENSITIVE]\", "\
          "attendee_id=#{attendee_id || 'nil'}, "\
          "join_token=\"[SENSITIVE]\", "\
          "capabilities=#{capabilities || 'nil'}>"
      end
    end

    # <p>The media capabilities of an attendee, including audio, video and content. </p>
    #
    # @!attribute audio
    #   <p>The audio capability assigned to an attendee.</p>
    #
    #   Enum, one of: ["SendReceive", "Send", "Receive", "None"]
    #
    #   @return [String]
    #
    # @!attribute video
    #   <p>The video capability assigned to an attendee.</p>
    #
    #   Enum, one of: ["SendReceive", "Send", "Receive", "None"]
    #
    #   @return [String]
    #
    # @!attribute content
    #   <p>The content capability assigned to an attendee.</p>
    #
    #   Enum, one of: ["SendReceive", "Send", "Receive", "None"]
    #
    #   @return [String]
    #
    AttendeeCapabilities = ::Struct.new(
      :audio,
      :video,
      :content,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure that contains one or more attendee IDs.</p>
    #
    # @!attribute attendee_id
    #   <p>A list of one or more attendee IDs.</p>
    #
    #   @return [String]
    #
    AttendeeIdItem = ::Struct.new(
      :attendee_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An optional category of meeting features that contains audio-specific configurations, such as operating parameters for Amazon Voice Focus. </p>
    #
    # @!attribute echo_reduction
    #   <p>Makes echo reduction available to clients who connect to the meeting.</p>
    #
    #   Enum, one of: ["AVAILABLE", "UNAVAILABLE"]
    #
    #   @return [String]
    #
    AudioFeatures = ::Struct.new(
      :echo_reduction,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The input parameters don't match the service's restrictions.</p>
    #
    # @!attribute code
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The request id associated with the call responsible for the exception.</p>
    #
    #   @return [String]
    #
    BadRequestException = ::Struct.new(
      :code,
      :message,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute meeting_id
    #   <p>The Amazon Chime SDK ID of the meeting to which you're adding attendees.</p>
    #
    #   @return [String]
    #
    # @!attribute attendees
    #   <p>The attendee information, including attendees' IDs and join tokens.</p>
    #
    #   @return [Array<CreateAttendeeRequestItem>]
    #
    BatchCreateAttendeeInput = ::Struct.new(
      :meeting_id,
      :attendees,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute attendees
    #   <p>The attendee information, including attendees' IDs and join tokens.</p>
    #
    #   @return [Array<Attendee>]
    #
    # @!attribute errors
    #   <p>If the action fails for one or more of the attendees in the request, a list of the attendees is returned, along with error codes and error messages.</p>
    #
    #   @return [Array<CreateAttendeeError>]
    #
    BatchCreateAttendeeOutput = ::Struct.new(
      :attendees,
      :errors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute meeting_id
    #   <p>The ID of the meeting associated with the update request.</p>
    #
    #   @return [String]
    #
    # @!attribute excluded_attendee_ids
    #   <p>The <code>AttendeeIDs</code> that you want to exclude from one or more capabilities.</p>
    #
    #   @return [Array<AttendeeIdItem>]
    #
    # @!attribute capabilities
    #   <p>The capabilities (<code>audio</code>, <code>video</code>, or <code>content</code>) that you want to update.</p>
    #
    #   @return [AttendeeCapabilities]
    #
    BatchUpdateAttendeeCapabilitiesExceptInput = ::Struct.new(
      :meeting_id,
      :excluded_attendee_ids,
      :capabilities,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    BatchUpdateAttendeeCapabilitiesExceptOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Multiple instances of the same request have been made simultaneously.</p>
    #
    # @!attribute code
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute request_id
    #
    #   @return [String]
    #
    ConflictException = ::Struct.new(
      :code,
      :message,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The list of errors returned when errors are encountered during the BatchCreateAttendee and CreateAttendee actions. This includes external user IDs, error codes, and error messages.</p>
    #
    # @!attribute external_user_id
    #   <p>The Amazon Chime SDK external user ID. An idempotency token. Links the attendee to an identity managed by a builder application.</p>
    #
    #   @return [String]
    #
    # @!attribute error_code
    #   <p>The error code.</p>
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>The error message.</p>
    #
    #   @return [String]
    #
    CreateAttendeeError = ::Struct.new(
      :external_user_id,
      :error_code,
      :error_message,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKMeetings::Types::CreateAttendeeError "\
          "external_user_id=\"[SENSITIVE]\", "\
          "error_code=#{error_code || 'nil'}, "\
          "error_message=#{error_message || 'nil'}>"
      end
    end

    # @!attribute meeting_id
    #   <p>The unique ID of the meeting.</p>
    #
    #   @return [String]
    #
    # @!attribute external_user_id
    #   <p>The Amazon Chime SDK external user ID. An idempotency token. Links the attendee to an identity managed by a builder application.</p>
    #
    #   @return [String]
    #
    # @!attribute capabilities
    #   <p>The capabilities (<code>audio</code>, <code>video</code>, or <code>content</code>) that you want to grant an attendee. If you don't specify capabilities, all users have send and receive capabilities on
    #               all media channels by default.</p>
    #
    #   @return [AttendeeCapabilities]
    #
    CreateAttendeeInput = ::Struct.new(
      :meeting_id,
      :external_user_id,
      :capabilities,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKMeetings::Types::CreateAttendeeInput "\
          "meeting_id=#{meeting_id || 'nil'}, "\
          "external_user_id=\"[SENSITIVE]\", "\
          "capabilities=#{capabilities || 'nil'}>"
      end
    end

    # @!attribute attendee
    #   <p>The attendee information, including attendee ID and join token.</p>
    #
    #   @return [Attendee]
    #
    CreateAttendeeOutput = ::Struct.new(
      :attendee,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The Amazon Chime SDK attendee fields to create, used with the BatchCreateAttendee action.</p>
    #
    # @!attribute external_user_id
    #   <p>The Amazon Chime SDK external user ID. An idempotency token. Links the attendee to an identity managed by a builder application.</p>
    #
    #   @return [String]
    #
    # @!attribute capabilities
    #   <p>A list of one or more capabilities.</p>
    #
    #   @return [AttendeeCapabilities]
    #
    CreateAttendeeRequestItem = ::Struct.new(
      :external_user_id,
      :capabilities,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKMeetings::Types::CreateAttendeeRequestItem "\
          "external_user_id=\"[SENSITIVE]\", "\
          "capabilities=#{capabilities || 'nil'}>"
      end
    end

    # @!attribute client_request_token
    #   <p>The unique identifier for the client request. Use a different token for different meetings.</p>
    #
    #   @return [String]
    #
    # @!attribute media_region
    #   <p>The Region in which to create the meeting.</p>
    #
    #            <p>
    #              Available values:
    #              <code>af-south-1</code>,
    #              <code>ap-northeast-1</code>,
    #              <code>ap-northeast-2</code>,
    #              <code>ap-south-1</code>,
    #              <code>ap-southeast-1</code>,
    #              <code>ap-southeast-2</code>,
    #              <code>ca-central-1</code>,
    #              <code>eu-central-1</code>,
    #              <code>eu-north-1</code>,
    #              <code>eu-south-1</code>,
    #              <code>eu-west-1</code>,
    #              <code>eu-west-2</code>,
    #              <code>eu-west-3</code>,
    #              <code>sa-east-1</code>,
    #              <code>us-east-1</code>,
    #              <code>us-east-2</code>,
    #              <code>us-west-1</code>,
    #              <code>us-west-2</code>.
    #          </p>
    #            <p>Available values in AWS GovCloud (US) Regions: <code>us-gov-east-1</code>, <code>us-gov-west-1</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute meeting_host_id
    #   <p>Reserved.</p>
    #
    #   @return [String]
    #
    # @!attribute external_meeting_id
    #   <p>The external meeting ID.</p>
    #
    #   @return [String]
    #
    # @!attribute notifications_configuration
    #   <p>The configuration for resource targets to receive notifications when meeting and attendee events occur.</p>
    #
    #   @return [NotificationsConfiguration]
    #
    # @!attribute meeting_features
    #   <p>Lists the audio and video features enabled for a meeting, such as echo reduction.</p>
    #
    #   @return [MeetingFeaturesConfiguration]
    #
    # @!attribute primary_meeting_id
    #   <p>When specified, replicates the media from the primary meeting to the new meeting.</p>
    #
    #   @return [String]
    #
    CreateMeetingInput = ::Struct.new(
      :client_request_token,
      :media_region,
      :meeting_host_id,
      :external_meeting_id,
      :notifications_configuration,
      :meeting_features,
      :primary_meeting_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKMeetings::Types::CreateMeetingInput "\
          "client_request_token=\"[SENSITIVE]\", "\
          "media_region=#{media_region || 'nil'}, "\
          "meeting_host_id=\"[SENSITIVE]\", "\
          "external_meeting_id=\"[SENSITIVE]\", "\
          "notifications_configuration=#{notifications_configuration || 'nil'}, "\
          "meeting_features=#{meeting_features || 'nil'}, "\
          "primary_meeting_id=#{primary_meeting_id || 'nil'}>"
      end
    end

    # @!attribute meeting
    #   <p>The meeting information, including the meeting ID and
    #              <code>MediaPlacement</code>.</p>
    #
    #   @return [Meeting]
    #
    CreateMeetingOutput = ::Struct.new(
      :meeting,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_request_token
    #   <p>The unique identifier for the client request. Use a different token for different meetings.</p>
    #
    #   @return [String]
    #
    # @!attribute media_region
    #   <p>The Region in which to create the meeting.</p>
    #
    #            <p>
    #              Available values:
    #              <code>af-south-1</code>,
    #              <code>ap-northeast-1</code>,
    #              <code>ap-northeast-2</code>,
    #              <code>ap-south-1</code>,
    #              <code>ap-southeast-1</code>,
    #              <code>ap-southeast-2</code>,
    #              <code>ca-central-1</code>,
    #              <code>eu-central-1</code>,
    #              <code>eu-north-1</code>,
    #              <code>eu-south-1</code>,
    #              <code>eu-west-1</code>,
    #              <code>eu-west-2</code>,
    #              <code>eu-west-3</code>,
    #              <code>sa-east-1</code>,
    #              <code>us-east-1</code>,
    #              <code>us-east-2</code>,
    #              <code>us-west-1</code>,
    #              <code>us-west-2</code>.
    #          </p>
    #            <p>Available values in AWS GovCloud (US) Regions: <code>us-gov-east-1</code>, <code>us-gov-west-1</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute meeting_host_id
    #   <p>Reserved.</p>
    #
    #   @return [String]
    #
    # @!attribute external_meeting_id
    #   <p>The external meeting ID.</p>
    #
    #   @return [String]
    #
    # @!attribute meeting_features
    #   <p>Lists the audio and video features enabled for a meeting, such as echo reduction.</p>
    #
    #   @return [MeetingFeaturesConfiguration]
    #
    # @!attribute notifications_configuration
    #   <p>The configuration for resource targets to receive notifications when meeting and attendee events occur.</p>
    #
    #   @return [NotificationsConfiguration]
    #
    # @!attribute attendees
    #   <p>The attendee information, including attendees' IDs and join tokens.</p>
    #
    #   @return [Array<CreateAttendeeRequestItem>]
    #
    # @!attribute primary_meeting_id
    #   <p>When specified, replicates the media from the primary meeting to the new meeting.</p>
    #
    #   @return [String]
    #
    CreateMeetingWithAttendeesInput = ::Struct.new(
      :client_request_token,
      :media_region,
      :meeting_host_id,
      :external_meeting_id,
      :meeting_features,
      :notifications_configuration,
      :attendees,
      :primary_meeting_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKMeetings::Types::CreateMeetingWithAttendeesInput "\
          "client_request_token=\"[SENSITIVE]\", "\
          "media_region=#{media_region || 'nil'}, "\
          "meeting_host_id=\"[SENSITIVE]\", "\
          "external_meeting_id=\"[SENSITIVE]\", "\
          "meeting_features=#{meeting_features || 'nil'}, "\
          "notifications_configuration=#{notifications_configuration || 'nil'}, "\
          "attendees=#{attendees || 'nil'}, "\
          "primary_meeting_id=#{primary_meeting_id || 'nil'}>"
      end
    end

    # @!attribute meeting
    #   <p>The meeting information, including the meeting ID and
    #              <code>MediaPlacement</code>.</p>
    #
    #   @return [Meeting]
    #
    # @!attribute attendees
    #   <p>The attendee information, including attendees' IDs and join tokens.</p>
    #
    #   @return [Array<Attendee>]
    #
    # @!attribute errors
    #   <p>If the action fails for one or more of the attendees in the request, a list of the attendees is returned, along with error codes and error messages.</p>
    #
    #   @return [Array<CreateAttendeeError>]
    #
    CreateMeetingWithAttendeesOutput = ::Struct.new(
      :meeting,
      :attendees,
      :errors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute meeting_id
    #   <p>The Amazon Chime SDK meeting ID.</p>
    #
    #   @return [String]
    #
    # @!attribute attendee_id
    #   <p>The Amazon Chime SDK attendee ID.</p>
    #
    #   @return [String]
    #
    DeleteAttendeeInput = ::Struct.new(
      :meeting_id,
      :attendee_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteAttendeeOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute meeting_id
    #   <p>The Amazon Chime SDK meeting ID.</p>
    #
    #   @return [String]
    #
    DeleteMeetingInput = ::Struct.new(
      :meeting_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteMeetingOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Settings specific to the Amazon Transcribe Medical engine.</p>
    #
    # @!attribute language_code
    #   <p>The language code specified for the Amazon Transcribe Medical engine.</p>
    #
    #   Enum, one of: ["en-US"]
    #
    #   @return [String]
    #
    # @!attribute specialty
    #   <p>The specialty specified for the Amazon Transcribe Medical engine.</p>
    #
    #   Enum, one of: ["PRIMARYCARE", "CARDIOLOGY", "NEUROLOGY", "ONCOLOGY", "RADIOLOGY", "UROLOGY"]
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of transcription.</p>
    #
    #   Enum, one of: ["CONVERSATION", "DICTATION"]
    #
    #   @return [String]
    #
    # @!attribute vocabulary_name
    #   <p>The name of the vocabulary passed to Amazon Transcribe Medical.</p>
    #
    #   @return [String]
    #
    # @!attribute region
    #   <p>The AWS Region passed to Amazon Transcribe Medical. If you don't specify a Region, Amazon Chime uses the meeting's Region.</p>
    #
    #   Enum, one of: ["us-east-1", "us-east-2", "us-west-2", "ap-southeast-2", "ca-central-1", "eu-west-1", "auto"]
    #
    #   @return [String]
    #
    # @!attribute content_identification_type
    #   <p>Set this field to <code>PHI</code> to identify personal health information in the transcription output.</p>
    #
    #   Enum, one of: ["PHI"]
    #
    #   @return [String]
    #
    EngineTranscribeMedicalSettings = ::Struct.new(
      :language_code,
      :specialty,
      :type,
      :vocabulary_name,
      :region,
      :content_identification_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Settings specific to the Amazon Transcribe engine.</p>
    #
    # @!attribute language_code
    #   <p>The language code specified for the Amazon Transcribe engine.</p>
    #
    #   Enum, one of: ["en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR", "ja-JP", "ko-KR", "zh-CN"]
    #
    #   @return [String]
    #
    # @!attribute vocabulary_filter_method
    #   <p>The filtering method passed to Amazon Transcribe.</p>
    #
    #   Enum, one of: ["remove", "mask", "tag"]
    #
    #   @return [String]
    #
    # @!attribute vocabulary_filter_name
    #   <p>The name of the vocabulary filter passed to Amazon Transcribe.</p>
    #
    #   @return [String]
    #
    # @!attribute vocabulary_name
    #   <p>The name of the vocabulary passed to Amazon Transcribe.</p>
    #
    #   @return [String]
    #
    # @!attribute region
    #   <p>The AWS Region passed to Amazon Transcribe. If you don't specify a Region, Amazon Chime uses the meeting's Region.</p>
    #
    #   Enum, one of: ["us-east-2", "us-east-1", "us-west-2", "ap-northeast-2", "ap-southeast-2", "ap-northeast-1", "ca-central-1", "eu-central-1", "eu-west-1", "eu-west-2", "sa-east-1", "auto", "us-gov-west-1"]
    #
    #   @return [String]
    #
    # @!attribute enable_partial_results_stabilization
    #   <p>Generates partial transcription results that are less likely to change as meeting attendees speak. It does so by only allowing the last few words from the partial results to change.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute partial_results_stability
    #   <p>The stabity level of a partial results transcription. Determines how stable you want the transcription results to be. A higher level means the transcription results are less likely to change.</p>
    #
    #   Enum, one of: ["low", "medium", "high"]
    #
    #   @return [String]
    #
    # @!attribute content_identification_type
    #   <p>Set this field to <code>PII</code> to identify personally identifiable information in the transcription output.</p>
    #
    #   Enum, one of: ["PII"]
    #
    #   @return [String]
    #
    # @!attribute content_redaction_type
    #   <p>Set this field to <code>PII</code> to redact personally identifiable information in the transcription output. Content redaction is performed only upon complete transcription of the audio segments.</p>
    #
    #               <p>You can’t set <code>ContentRedactionType</code> and <code>ContentIdentificationType</code> in the same request. If you set both, your request returns a <code>BadRequestException</code>.</p>
    #
    #   Enum, one of: ["PII"]
    #
    #   @return [String]
    #
    # @!attribute pii_entity_types
    #   <p>Lists the PII entity types you want to identify or redact. To specify entity types, you must enable <code>ContentIdentificationType</code> or <code>ContentRedactionType</code>.</p>
    #
    #           <p>
    #               <code>PIIEntityTypes</code> must be comma-separated. The available values are:
    #               <code>BANK_ACCOUNT_NUMBER</code>, <code>BANK_ROUTING, CREDIT_DEBIT_NUMBER</code>, <code>CREDIT_DEBIT_CVV</code>, <code>CREDIT_DEBIT_EXPIRY</code>, <code>PIN</code>, <code>EMAIL</code>,
    #               <code>ADDRESS</code>, <code>NAME</code>, <code>PHONE</code>, <code>SSN</code>, and <code>ALL</code>.</p>
    #
    #           <p>
    #               <code>PiiEntityTypes</code> is an optional parameter with a default value of <code>ALL</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute language_model_name
    #   <p>The name of the language model used during transcription.</p>
    #
    #   @return [String]
    #
    # @!attribute identify_language
    #   <p>Automatically identifies the language spoken in media files.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute language_options
    #   <p>Language codes for the languages that you want to identify. You must provide at least 2 codes.</p>
    #
    #   @return [String]
    #
    # @!attribute preferred_language
    #   <p>Language code for the preferred language.</p>
    #
    #   Enum, one of: ["en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR", "ja-JP", "ko-KR", "zh-CN"]
    #
    #   @return [String]
    #
    EngineTranscribeSettings = ::Struct.new(
      :language_code,
      :vocabulary_filter_method,
      :vocabulary_filter_name,
      :vocabulary_name,
      :region,
      :enable_partial_results_stabilization,
      :partial_results_stability,
      :content_identification_type,
      :content_redaction_type,
      :pii_entity_types,
      :language_model_name,
      :identify_language,
      :language_options,
      :preferred_language,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.enable_partial_results_stabilization ||= false
        self.identify_language ||= false
      end

    end

    # <p>The client is permanently forbidden from making the request.</p>
    #
    # @!attribute code
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The request id associated with the call responsible for the exception.</p>
    #
    #   @return [String]
    #
    ForbiddenException = ::Struct.new(
      :code,
      :message,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute meeting_id
    #   <p>The Amazon Chime SDK meeting ID.</p>
    #
    #   @return [String]
    #
    # @!attribute attendee_id
    #   <p>The Amazon Chime SDK attendee ID.</p>
    #
    #   @return [String]
    #
    GetAttendeeInput = ::Struct.new(
      :meeting_id,
      :attendee_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute attendee
    #   <p>The Amazon Chime SDK attendee information.</p>
    #
    #   @return [Attendee]
    #
    GetAttendeeOutput = ::Struct.new(
      :attendee,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute meeting_id
    #   <p>The Amazon Chime SDK meeting ID.</p>
    #
    #   @return [String]
    #
    GetMeetingInput = ::Struct.new(
      :meeting_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute meeting
    #   <p>The Amazon Chime SDK meeting information.</p>
    #
    #   @return [Meeting]
    #
    GetMeetingOutput = ::Struct.new(
      :meeting,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request exceeds the resource limit.</p>
    #
    # @!attribute code
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The request id associated with the call responsible for the exception.</p>
    #
    #   @return [String]
    #
    LimitExceededException = ::Struct.new(
      :code,
      :message,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute meeting_id
    #   <p>The Amazon Chime SDK meeting ID.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #
    #   @return [Integer]
    #
    ListAttendeesInput = ::Struct.new(
      :meeting_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute attendees
    #   <p>The Amazon Chime SDK attendee information.</p>
    #
    #   @return [Array<Attendee>]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results.</p>
    #
    #   @return [String]
    #
    ListAttendeesOutput = ::Struct.new(
      :attendees,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for MediaCapabilities
    #
    module MediaCapabilities
      # No documentation available.
      #
      SEND_RECEIVE = "SendReceive"

      # No documentation available.
      #
      SEND = "Send"

      # No documentation available.
      #
      RECEIVE = "Receive"

      # No documentation available.
      #
      NONE = "None"
    end

    # <p>A set of endpoints used by clients to connect to the media service group for an Amazon Chime SDK meeting.</p>
    #
    # @!attribute audio_host_url
    #   <p>The audio host URL.</p>
    #
    #   @return [String]
    #
    # @!attribute audio_fallback_url
    #   <p>The audio fallback URL.</p>
    #
    #   @return [String]
    #
    # @!attribute signaling_url
    #   <p>The signaling URL.</p>
    #
    #   @return [String]
    #
    # @!attribute turn_control_url
    #   <p>The turn control URL.</p>
    #
    #   @return [String]
    #
    # @!attribute screen_data_url
    #   <p>The screen data URL.</p>
    #
    #   @return [String]
    #
    # @!attribute screen_viewing_url
    #   <p>The screen viewing URL.</p>
    #
    #   @return [String]
    #
    # @!attribute screen_sharing_url
    #   <p>The screen sharing URL.</p>
    #
    #   @return [String]
    #
    # @!attribute event_ingestion_url
    #   <p>The event ingestion URL.</p>
    #
    #   @return [String]
    #
    MediaPlacement = ::Struct.new(
      :audio_host_url,
      :audio_fallback_url,
      :signaling_url,
      :turn_control_url,
      :screen_data_url,
      :screen_viewing_url,
      :screen_sharing_url,
      :event_ingestion_url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A meeting created using the Amazon Chime SDK.</p>
    #
    # @!attribute meeting_id
    #   <p>The Amazon Chime SDK meeting ID.</p>
    #
    #   @return [String]
    #
    # @!attribute meeting_host_id
    #   <p>Reserved.</p>
    #
    #   @return [String]
    #
    # @!attribute external_meeting_id
    #   <p>The external meeting ID.</p>
    #
    #   @return [String]
    #
    # @!attribute media_region
    #   <p>The Region in which you create the meeting. Available values: <code>af-south-1</code>, <code>ap-northeast-1</code>,
    #               <code>ap-northeast-2</code>, <code>ap-south-1</code>, <code>ap-southeast-1</code>, <code>ap-southeast-2</code>, <code>ca-central-1</code>,
    #               <code>eu-central-1</code>, <code>eu-north-1</code>, <code>eu-south-1</code>,
    #               <code>eu-west-1</code>, <code>eu-west-2</code>, <code>eu-west-3</code>,
    #               <code>sa-east-1</code>, <code>us-east-1</code>, <code>us-east-2</code>,
    #               <code>us-west-1</code>, <code>us-west-2</code>.</p>
    #           <p>Available values in AWS GovCloud (US) Regions: <code>us-gov-east-1</code>, <code>us-gov-west-1</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute media_placement
    #   <p>The media placement for the meeting.</p>
    #
    #   @return [MediaPlacement]
    #
    # @!attribute meeting_features
    #   <p>The features available to a meeting, such as Amazon Voice Focus.</p>
    #
    #   @return [MeetingFeaturesConfiguration]
    #
    # @!attribute primary_meeting_id
    #   <p>When specified, replicates the media from the primary meeting to this meeting.</p>
    #
    #   @return [String]
    #
    Meeting = ::Struct.new(
      :meeting_id,
      :meeting_host_id,
      :external_meeting_id,
      :media_region,
      :media_placement,
      :meeting_features,
      :primary_meeting_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKMeetings::Types::Meeting "\
          "meeting_id=#{meeting_id || 'nil'}, "\
          "meeting_host_id=\"[SENSITIVE]\", "\
          "external_meeting_id=\"[SENSITIVE]\", "\
          "media_region=#{media_region || 'nil'}, "\
          "media_placement=#{media_placement || 'nil'}, "\
          "meeting_features=#{meeting_features || 'nil'}, "\
          "primary_meeting_id=#{primary_meeting_id || 'nil'}>"
      end
    end

    # Includes enum constants for MeetingFeatureStatus
    #
    module MeetingFeatureStatus
      # No documentation available.
      #
      AVAILABLE = "AVAILABLE"

      # No documentation available.
      #
      UNAVAILABLE = "UNAVAILABLE"
    end

    # <p>The configuration settings of the features available to a meeting.></p>
    #
    # @!attribute audio
    #   <p>The configuration settings for the audio features available to a meeting. </p>
    #
    #   @return [AudioFeatures]
    #
    MeetingFeaturesConfiguration = ::Struct.new(
      :audio,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>One or more of the resources in the request does not exist in the system.</p>
    #
    # @!attribute code
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The request ID associated with the call responsible for the exception.</p>
    #
    #   @return [String]
    #
    NotFoundException = ::Struct.new(
      :code,
      :message,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The configuration for resource targets to receive notifications when meeting and attendee events occur.</p>
    #
    # @!attribute lambda_function_arn
    #   <p>The ARN of the AWS Lambda function in the notifications configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute sns_topic_arn
    #   <p>The ARN of the SNS topic.</p>
    #
    #   @return [String]
    #
    # @!attribute sqs_queue_arn
    #   <p>The ARN of the SQS queue.</p>
    #
    #   @return [String]
    #
    NotificationsConfiguration = ::Struct.new(
      :lambda_function_arn,
      :sns_topic_arn,
      :sqs_queue_arn,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ChimeSDKMeetings::Types::NotificationsConfiguration "\
          "lambda_function_arn=\"[SENSITIVE]\", "\
          "sns_topic_arn=\"[SENSITIVE]\", "\
          "sqs_queue_arn=\"[SENSITIVE]\">"
      end
    end

    # <p>The service is currently unavailable.</p>
    #
    # @!attribute code
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute request_id
    #
    #   @return [String]
    #
    ServiceFailureException = ::Struct.new(
      :code,
      :message,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The service is currently unavailable.</p>
    #
    # @!attribute code
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The request id associated with the call responsible for the exception.</p>
    #
    #   @return [String]
    #
    # @!attribute retry_after_seconds
    #   <p>The number of seconds the caller should wait before retrying.</p>
    #
    #   @return [String]
    #
    ServiceUnavailableException = ::Struct.new(
      :code,
      :message,
      :request_id,
      :retry_after_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute meeting_id
    #   <p>The unique ID of the meeting being transcribed.</p>
    #
    #   @return [String]
    #
    # @!attribute transcription_configuration
    #   <p>The configuration for the current transcription operation. Must contain <code>EngineTranscribeSettings</code> or
    #               <code>EngineTranscribeMedicalSettings</code>.</p>
    #
    #   @return [TranscriptionConfiguration]
    #
    StartMeetingTranscriptionInput = ::Struct.new(
      :meeting_id,
      :transcription_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    StartMeetingTranscriptionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute meeting_id
    #   <p>The unique ID of the meeting for which you stop transcription.</p>
    #
    #   @return [String]
    #
    StopMeetingTranscriptionInput = ::Struct.new(
      :meeting_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    StopMeetingTranscriptionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The number of requests exceeds the limit.</p>
    #
    # @!attribute code
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute request_id
    #
    #   @return [String]
    #
    ThrottlingException = ::Struct.new(
      :code,
      :message,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TranscribeContentIdentificationType
    #
    module TranscribeContentIdentificationType
      # No documentation available.
      #
      PII = "PII"
    end

    # Includes enum constants for TranscribeContentRedactionType
    #
    module TranscribeContentRedactionType
      # No documentation available.
      #
      PII = "PII"
    end

    # Includes enum constants for TranscribeLanguageCode
    #
    module TranscribeLanguageCode
      # No documentation available.
      #
      EN_US = "en-US"

      # No documentation available.
      #
      EN_GB = "en-GB"

      # No documentation available.
      #
      ES_US = "es-US"

      # No documentation available.
      #
      FR_CA = "fr-CA"

      # No documentation available.
      #
      FR_FR = "fr-FR"

      # No documentation available.
      #
      EN_AU = "en-AU"

      # No documentation available.
      #
      IT_IT = "it-IT"

      # No documentation available.
      #
      DE_DE = "de-DE"

      # No documentation available.
      #
      PT_BR = "pt-BR"

      # No documentation available.
      #
      JA_JP = "ja-JP"

      # No documentation available.
      #
      KO_KR = "ko-KR"

      # No documentation available.
      #
      ZH_CN = "zh-CN"
    end

    # Includes enum constants for TranscribeMedicalContentIdentificationType
    #
    module TranscribeMedicalContentIdentificationType
      # No documentation available.
      #
      PHI = "PHI"
    end

    # Includes enum constants for TranscribeMedicalLanguageCode
    #
    module TranscribeMedicalLanguageCode
      # No documentation available.
      #
      EN_US = "en-US"
    end

    # Includes enum constants for TranscribeMedicalRegion
    #
    module TranscribeMedicalRegion
      # No documentation available.
      #
      US_EAST_1 = "us-east-1"

      # No documentation available.
      #
      US_EAST_2 = "us-east-2"

      # No documentation available.
      #
      US_WEST_2 = "us-west-2"

      # No documentation available.
      #
      AP_SOUTHEAST_2 = "ap-southeast-2"

      # No documentation available.
      #
      CA_CENTRAL_1 = "ca-central-1"

      # No documentation available.
      #
      EU_WEST_1 = "eu-west-1"

      # No documentation available.
      #
      AUTO = "auto"
    end

    # Includes enum constants for TranscribeMedicalSpecialty
    #
    module TranscribeMedicalSpecialty
      # No documentation available.
      #
      PRIMARYCARE = "PRIMARYCARE"

      # No documentation available.
      #
      CARDIOLOGY = "CARDIOLOGY"

      # No documentation available.
      #
      NEUROLOGY = "NEUROLOGY"

      # No documentation available.
      #
      ONCOLOGY = "ONCOLOGY"

      # No documentation available.
      #
      RADIOLOGY = "RADIOLOGY"

      # No documentation available.
      #
      UROLOGY = "UROLOGY"
    end

    # Includes enum constants for TranscribeMedicalType
    #
    module TranscribeMedicalType
      # No documentation available.
      #
      CONVERSATION = "CONVERSATION"

      # No documentation available.
      #
      DICTATION = "DICTATION"
    end

    # Includes enum constants for TranscribePartialResultsStability
    #
    module TranscribePartialResultsStability
      # No documentation available.
      #
      LOW = "low"

      # No documentation available.
      #
      MEDIUM = "medium"

      # No documentation available.
      #
      HIGH = "high"
    end

    # Includes enum constants for TranscribeRegion
    #
    module TranscribeRegion
      # No documentation available.
      #
      US_EAST_2 = "us-east-2"

      # No documentation available.
      #
      US_EAST_1 = "us-east-1"

      # No documentation available.
      #
      US_WEST_2 = "us-west-2"

      # No documentation available.
      #
      AP_NORTHEAST_2 = "ap-northeast-2"

      # No documentation available.
      #
      AP_SOUTHEAST_2 = "ap-southeast-2"

      # No documentation available.
      #
      AP_NORTHEAST_1 = "ap-northeast-1"

      # No documentation available.
      #
      CA_CENTRAL_1 = "ca-central-1"

      # No documentation available.
      #
      EU_CENTRAL_1 = "eu-central-1"

      # No documentation available.
      #
      EU_WEST_1 = "eu-west-1"

      # No documentation available.
      #
      EU_WEST_2 = "eu-west-2"

      # No documentation available.
      #
      SA_EAST_1 = "sa-east-1"

      # No documentation available.
      #
      AUTO = "auto"

      # No documentation available.
      #
      US_GOV_WEST_1 = "us-gov-west-1"
    end

    # Includes enum constants for TranscribeVocabularyFilterMethod
    #
    module TranscribeVocabularyFilterMethod
      # No documentation available.
      #
      REMOVE = "remove"

      # No documentation available.
      #
      MASK = "mask"

      # No documentation available.
      #
      TAG = "tag"
    end

    # <p>The configuration for the current transcription operation. Must contain <code>EngineTranscribeSettings</code> or <code>EngineTranscribeMedicalSettings</code>.</p>
    #
    # @!attribute engine_transcribe_settings
    #   <p>The transcription configuration settings passed to Amazon Transcribe.</p>
    #
    #   @return [EngineTranscribeSettings]
    #
    # @!attribute engine_transcribe_medical_settings
    #   <p>The transcription configuration settings passed to Amazon Transcribe Medical.</p>
    #
    #   @return [EngineTranscribeMedicalSettings]
    #
    TranscriptionConfiguration = ::Struct.new(
      :engine_transcribe_settings,
      :engine_transcribe_medical_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The user isn't authorized to request a resource.</p>
    #
    # @!attribute code
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The request id associated with the call responsible for the exception.</p>
    #
    #   @return [String]
    #
    UnauthorizedException = ::Struct.new(
      :code,
      :message,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request was well-formed but was unable to be followed due to semantic errors.</p>
    #
    # @!attribute code
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute request_id
    #   <p>The request id associated with the call responsible for the exception.</p>
    #
    #   @return [String]
    #
    UnprocessableEntityException = ::Struct.new(
      :code,
      :message,
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute meeting_id
    #   <p>The ID of the meeting associated with the update request.</p>
    #
    #   @return [String]
    #
    # @!attribute attendee_id
    #   <p>The ID of the attendee associated with the update request.</p>
    #
    #   @return [String]
    #
    # @!attribute capabilities
    #   <p>The capabilties that you want to update.</p>
    #
    #   @return [AttendeeCapabilities]
    #
    UpdateAttendeeCapabilitiesInput = ::Struct.new(
      :meeting_id,
      :attendee_id,
      :capabilities,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute attendee
    #   <p>An Amazon Chime SDK meeting attendee. Includes a unique
    #              <code>AttendeeId</code> and <code>JoinToken</code>. The
    #              <code>JoinToken</code>
    #              allows a client to authenticate and join as the specified attendee. The
    #              <code>JoinToken</code>
    #              expires when the meeting ends, or when
    #              <a>DeleteAttendee</a>
    #              is called. After that, the attendee is unable to join the meeting.
    #          </p>
    #
    #            <p>We recommend securely transferring each <code>JoinToken</code> from your server application
    #              to the client so that no other client has access to the token except for the one
    #              authorized to represent the attendee.</p>
    #
    #   @return [Attendee]
    #
    UpdateAttendeeCapabilitiesOutput = ::Struct.new(
      :attendee,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
