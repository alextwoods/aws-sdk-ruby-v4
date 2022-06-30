# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Chime
  module Types

    # <p>You don't have permissions to perform the requested operation.</p>
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
    AccessDeniedException = ::Struct.new(
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The Amazon Chime account details. An AWS account can have multiple Amazon Chime accounts.</p>
    #
    # @!attribute aws_account_id
    #   <p>The AWS account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The Amazon Chime account name.</p>
    #
    #   @return [String]
    #
    # @!attribute account_type
    #   <p>The Amazon Chime account type. For more information about different account types, see
    #       <a href="https://docs.aws.amazon.com/chime/latest/ag/manage-chime-account.html">Managing Your Amazon Chime Accounts</a> in the <i>Amazon Chime Administration
    #                   Guide</i>.</p>
    #
    #   Enum, one of: ["Team", "EnterpriseDirectory", "EnterpriseLWA", "EnterpriseOIDC"]
    #
    #   @return [String]
    #
    # @!attribute created_timestamp
    #   <p>The Amazon Chime account creation timestamp, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    # @!attribute default_license
    #   <p>The default license for the Amazon Chime account.</p>
    #
    #   Enum, one of: ["Basic", "Plus", "Pro", "ProTrial"]
    #
    #   @return [String]
    #
    # @!attribute supported_licenses
    #   <p>Supported licenses for the Amazon Chime account.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute account_status
    #   <p>The status of the account.</p>
    #
    #   Enum, one of: ["Suspended", "Active"]
    #
    #   @return [String]
    #
    # @!attribute signin_delegate_groups
    #   <p>The sign-in delegate groups associated with the account.</p>
    #
    #   @return [Array<SigninDelegateGroup>]
    #
    Account = ::Struct.new(
      :aws_account_id,
      :account_id,
      :name,
      :account_type,
      :created_timestamp,
      :default_license,
      :supported_licenses,
      :account_status,
      :signin_delegate_groups,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Settings related to the Amazon Chime account. This includes settings that start or stop
    #             remote control of shared screens, or start or stop the dial-out option in the Amazon Chime web application. For more information about these settings, see
    #     <a href="https://docs.aws.amazon.com/chime/latest/ag/policies.html">Use the Policies Page</a> in the <i>Amazon Chime Administration Guide</i>.</p>
    #
    # @!attribute disable_remote_control
    #   <p>Setting that stops or starts remote control of shared screens during meetings.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute enable_dial_out
    #   <p>Setting that allows meeting participants to choose the <b>Call me at a phone number</b> option. For more information, see
    #       <a href="https://docs.aws.amazon.com/chime/latest/ug/chime-join-meeting.html">Join a Meeting without the Amazon Chime App</a>.</p>
    #
    #   @return [Boolean]
    #
    AccountSettings = ::Struct.new(
      :disable_remote_control,
      :enable_dial_out,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AccountStatus
    #
    module AccountStatus
      # No documentation available.
      #
      Suspended = "Suspended"

      # No documentation available.
      #
      Active = "Active"
    end

    # Includes enum constants for AccountType
    #
    module AccountType
      # No documentation available.
      #
      Team = "Team"

      # No documentation available.
      #
      EnterpriseDirectory = "EnterpriseDirectory"

      # No documentation available.
      #
      EnterpriseLWA = "EnterpriseLWA"

      # No documentation available.
      #
      EnterpriseOIDC = "EnterpriseOIDC"
    end

    # <p>The Alexa for Business metadata associated with an Amazon Chime user, used to integrate Alexa for Business with a device.</p>
    #
    # @!attribute is_alexa_for_business_enabled
    #   <p>Starts or stops Alexa for Business.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute alexa_for_business_room_arn
    #   <p>The ARN of the room resource.</p>
    #
    #   @return [String]
    #
    AlexaForBusinessMetadata = ::Struct.new(
      :is_alexa_for_business_enabled,
      :alexa_for_business_room_arn,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Chime::Types::AlexaForBusinessMetadata "\
          "is_alexa_for_business_enabled=#{is_alexa_for_business_enabled || 'nil'}, "\
          "alexa_for_business_room_arn=\"[SENSITIVE]\">"
      end
    end

    # <p>The details of an <code>AppInstance</code>, an instance of an Amazon Chime SDK messaging application.</p>
    #
    # @!attribute app_instance_arn
    #   <p>The ARN of the messaging instance.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of an <code>AppInstance</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute metadata
    #   <p>The metadata of an <code>AppInstance</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute created_timestamp
    #   <p>The time at which an <code>AppInstance</code> was created. In epoch milliseconds.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_timestamp
    #   <p>The time an <code>AppInstance</code> was last updated. In epoch milliseconds.</p>
    #
    #   @return [Time]
    #
    AppInstance = ::Struct.new(
      :app_instance_arn,
      :name,
      :metadata,
      :created_timestamp,
      :last_updated_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Chime::Types::AppInstance "\
          "app_instance_arn=#{app_instance_arn || 'nil'}, "\
          "name=\"[SENSITIVE]\", "\
          "metadata=\"[SENSITIVE]\", "\
          "created_timestamp=#{created_timestamp || 'nil'}, "\
          "last_updated_timestamp=#{last_updated_timestamp || 'nil'}>"
      end
    end

    # <p>The details of an <code>AppInstanceAdmin</code>.</p>
    #
    # @!attribute admin
    #   <p>The <code>AppInstanceAdmin</code> data.</p>
    #
    #   @return [Identity]
    #
    # @!attribute app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code> for which the user is an administrator.</p>
    #
    #   @return [String]
    #
    # @!attribute created_timestamp
    #   <p>The time at which an administrator was created.</p>
    #
    #   @return [Time]
    #
    AppInstanceAdmin = ::Struct.new(
      :admin,
      :app_instance_arn,
      :created_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Summary of the details of an <code>AppInstanceAdmin</code>.</p>
    #
    # @!attribute admin
    #   <p>The details of the <code>AppInstanceAdmin</code>.</p>
    #
    #   @return [Identity]
    #
    AppInstanceAdminSummary = ::Struct.new(
      :admin,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AppInstanceDataType
    #
    module AppInstanceDataType
      # No documentation available.
      #
      Channel = "Channel"

      # No documentation available.
      #
      ChannelMessage = "ChannelMessage"
    end

    # <p>The details of the data-retention settings for an <code>AppInstance</code>.</p>
    #
    # @!attribute channel_retention_settings
    #   <p>The length of time in days to retain the messages in a channel.</p>
    #
    #   @return [ChannelRetentionSettings]
    #
    AppInstanceRetentionSettings = ::Struct.new(
      :channel_retention_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The details of the streaming configuration of an <code>AppInstance</code>.</p>
    #
    # @!attribute app_instance_data_type
    #   <p>The type of data to be streamed.</p>
    #
    #   Enum, one of: ["Channel", "ChannelMessage"]
    #
    #   @return [String]
    #
    # @!attribute resource_arn
    #   <p>The resource ARN.</p>
    #
    #   @return [String]
    #
    AppInstanceStreamingConfiguration = ::Struct.new(
      :app_instance_data_type,
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Chime::Types::AppInstanceStreamingConfiguration "\
          "app_instance_data_type=#{app_instance_data_type || 'nil'}, "\
          "resource_arn=\"[SENSITIVE]\">"
      end
    end

    # <p>Summary of the data for an <code>AppInstance</code>.</p>
    #
    # @!attribute app_instance_arn
    #   <p>The <code>AppInstance</code> ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the <code>AppInstance</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute metadata
    #   <p>The metadata of the <code>AppInstance</code>.</p>
    #
    #   @return [String]
    #
    AppInstanceSummary = ::Struct.new(
      :app_instance_arn,
      :name,
      :metadata,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Chime::Types::AppInstanceSummary "\
          "app_instance_arn=#{app_instance_arn || 'nil'}, "\
          "name=\"[SENSITIVE]\", "\
          "metadata=\"[SENSITIVE]\">"
      end
    end

    # <p>The details of an <code>AppInstanceUser</code>.</p>
    #
    # @!attribute app_instance_user_arn
    #   <p>The ARN of the <code>AppInstanceUser</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the <code>AppInstanceUser</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute created_timestamp
    #   <p>The time at which the <code>AppInstanceUser</code> was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute metadata
    #   <p>The metadata of the <code>AppInstanceUser</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute last_updated_timestamp
    #   <p>The time at which the <code>AppInstanceUser</code> was last updated.</p>
    #
    #   @return [Time]
    #
    AppInstanceUser = ::Struct.new(
      :app_instance_user_arn,
      :name,
      :created_timestamp,
      :metadata,
      :last_updated_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Chime::Types::AppInstanceUser "\
          "app_instance_user_arn=#{app_instance_user_arn || 'nil'}, "\
          "name=\"[SENSITIVE]\", "\
          "created_timestamp=#{created_timestamp || 'nil'}, "\
          "metadata=\"[SENSITIVE]\", "\
          "last_updated_timestamp=#{last_updated_timestamp || 'nil'}>"
      end
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
    #   <p>The time at which a message was last read.</p>
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

    # <p>Summary of the details of an <code>AppInstanceUser</code>.</p>
    #
    # @!attribute app_instance_user_arn
    #   <p>The ARN of the <code>AppInstanceUser</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of an <code>AppInstanceUser</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute metadata
    #   <p>The metadata of the <code>AppInstanceUser</code>.</p>
    #
    #   @return [String]
    #
    AppInstanceUserSummary = ::Struct.new(
      :app_instance_user_arn,
      :name,
      :metadata,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Chime::Types::AppInstanceUserSummary "\
          "app_instance_user_arn=#{app_instance_user_arn || 'nil'}, "\
          "name=\"[SENSITIVE]\", "\
          "metadata=\"[SENSITIVE]\">"
      end
    end

    # <p>The configuration for the artifacts.</p>
    #
    # @!attribute audio
    #   <p>The configuration for the audio artifacts.</p>
    #
    #   @return [AudioArtifactsConfiguration]
    #
    # @!attribute video
    #   <p>The configuration for the video artifacts.</p>
    #
    #   @return [VideoArtifactsConfiguration]
    #
    # @!attribute content
    #   <p>The configuration for the content artifacts.</p>
    #
    #   @return [ContentArtifactsConfiguration]
    #
    ArtifactsConfiguration = ::Struct.new(
      :audio,
      :video,
      :content,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ArtifactsState
    #
    module ArtifactsState
      # No documentation available.
      #
      Enabled = "Enabled"

      # No documentation available.
      #
      Disabled = "Disabled"
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute user_id
    #   <p>The user ID.</p>
    #
    #   @return [String]
    #
    # @!attribute e164_phone_number
    #   <p>The phone number, in E.164 format.</p>
    #
    #   @return [String]
    #
    AssociatePhoneNumberWithUserInput = ::Struct.new(
      :account_id,
      :user_id,
      :e164_phone_number,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Chime::Types::AssociatePhoneNumberWithUserInput "\
          "account_id=#{account_id || 'nil'}, "\
          "user_id=#{user_id || 'nil'}, "\
          "e164_phone_number=\"[SENSITIVE]\">"
      end
    end

    AssociatePhoneNumberWithUserOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute voice_connector_group_id
    #   <p>The Amazon Chime Voice Connector group ID.</p>
    #
    #   @return [String]
    #
    # @!attribute e164_phone_numbers
    #   <p>List of phone numbers, in E.164 format.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute force_associate
    #   <p>If true, associates the provided phone numbers with the provided Amazon Chime Voice Connector Group and removes any previously existing associations. If false, does not associate any phone numbers that have previously existing associations.</p>
    #
    #   @return [Boolean]
    #
    AssociatePhoneNumbersWithVoiceConnectorGroupInput = ::Struct.new(
      :voice_connector_group_id,
      :e164_phone_numbers,
      :force_associate,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute phone_number_errors
    #   <p>If the action fails for one or more of the phone numbers in the request, a list of the phone numbers is returned, along with error codes and error messages.</p>
    #
    #   @return [Array<PhoneNumberError>]
    #
    AssociatePhoneNumbersWithVoiceConnectorGroupOutput = ::Struct.new(
      :phone_number_errors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute voice_connector_id
    #   <p>The Amazon Chime Voice Connector ID.</p>
    #
    #   @return [String]
    #
    # @!attribute e164_phone_numbers
    #   <p>List of phone numbers, in E.164 format.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute force_associate
    #   <p>If true, associates the provided phone numbers with the provided Amazon Chime Voice Connector and removes any previously existing associations. If false, does not associate any phone numbers that have previously existing associations.</p>
    #
    #   @return [Boolean]
    #
    AssociatePhoneNumbersWithVoiceConnectorInput = ::Struct.new(
      :voice_connector_id,
      :e164_phone_numbers,
      :force_associate,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute phone_number_errors
    #   <p>If the action fails for one or more of the phone numbers in the request, a list of the phone numbers is returned, along with error codes and
    #       error messages.</p>
    #
    #   @return [Array<PhoneNumberError>]
    #
    AssociatePhoneNumbersWithVoiceConnectorOutput = ::Struct.new(
      :phone_number_errors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute signin_delegate_groups
    #   <p>The sign-in delegate groups.</p>
    #
    #   @return [Array<SigninDelegateGroup>]
    #
    AssociateSigninDelegateGroupsWithAccountInput = ::Struct.new(
      :account_id,
      :signin_delegate_groups,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AssociateSigninDelegateGroupsWithAccountOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    # An Amazon Chime SDK meeting attendee. Includes a unique
    # <code>AttendeeId</code>
    # and
    # <code>JoinToken</code>
    # . The
    # <code>JoinToken</code>
    # allows a client to authenticate and join as the specified attendee. The
    # <code>JoinToken</code>
    # expires when the meeting ends or when
    # <a>DeleteAttendee</a>
    # is called. After that, the attendee is unable to join the meeting.
    # </p>
    #
    #          <p>We recommend securely transferring each <code>JoinToken</code> from your server application
    #             to the client so that no other client has access to the token except for the one
    #             authorized to represent the attendee.</p>
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
    Attendee = ::Struct.new(
      :external_user_id,
      :attendee_id,
      :join_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Chime::Types::Attendee "\
          "external_user_id=\"[SENSITIVE]\", "\
          "attendee_id=#{attendee_id || 'nil'}, "\
          "join_token=\"[SENSITIVE]\">"
      end
    end

    # <p>The audio artifact configuration object.</p>
    #
    # @!attribute mux_type
    #   <p>The MUX type of the audio artifact configuration object.</p>
    #
    #   Enum, one of: ["AudioOnly", "AudioWithActiveSpeakerVideo"]
    #
    #   @return [String]
    #
    AudioArtifactsConfiguration = ::Struct.new(
      :mux_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AudioMuxType
    #
    module AudioMuxType
      # No documentation available.
      #
      AudioOnly = "AudioOnly"

      # No documentation available.
      #
      AudioWithActiveSpeakerVideo = "AudioWithActiveSpeakerVideo"
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

    # @!attribute meeting_id
    #   <p>The Amazon Chime SDK meeting ID.</p>
    #
    #   @return [String]
    #
    # @!attribute attendees
    #   <p>The request containing the attendees to create.</p>
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
    #   <p>The attendee information, including attendees IDs and join tokens.</p>
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

    # <p>A list of failed member ARNs, error codes, and error messages.</p>
    #
    # @!attribute member_arn
    #   <p>The ARN of the member that the service couldn't add.</p>
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
    #   <p>The ARNs of the members you want to add to the channel.</p>
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

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute room_id
    #   <p>The room ID.</p>
    #
    #   @return [String]
    #
    # @!attribute membership_item_list
    #   <p>The list of membership items.</p>
    #
    #   @return [Array<MembershipItem>]
    #
    BatchCreateRoomMembershipInput = ::Struct.new(
      :account_id,
      :room_id,
      :membership_item_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute errors
    #   <p>If the action fails for one or more of the member IDs in the request, a list of the member IDs is returned, along with error codes and error messages.</p>
    #
    #   @return [Array<MemberError>]
    #
    BatchCreateRoomMembershipOutput = ::Struct.new(
      :errors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute phone_number_ids
    #   <p>List of phone number IDs.</p>
    #
    #   @return [Array<String>]
    #
    BatchDeletePhoneNumberInput = ::Struct.new(
      :phone_number_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute phone_number_errors
    #   <p>If the action fails for one or more of the phone numbers in the request, a list of the phone numbers is returned, along with error codes and error messages.</p>
    #
    #   @return [Array<PhoneNumberError>]
    #
    BatchDeletePhoneNumberOutput = ::Struct.new(
      :phone_number_errors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute user_id_list
    #   <p>The request containing the user IDs to suspend.</p>
    #
    #   @return [Array<String>]
    #
    BatchSuspendUserInput = ::Struct.new(
      :account_id,
      :user_id_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_errors
    #   <p>If the <a>BatchSuspendUser</a> action fails for one or more of the user IDs in the
    #               request, a list of the user IDs is returned, along with error codes and error messages.</p>
    #
    #   @return [Array<UserError>]
    #
    BatchSuspendUserOutput = ::Struct.new(
      :user_errors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute user_id_list
    #   <p>The request containing the user IDs to unsuspend.</p>
    #
    #   @return [Array<String>]
    #
    BatchUnsuspendUserInput = ::Struct.new(
      :account_id,
      :user_id_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_errors
    #   <p>If the <a>BatchUnsuspendUser</a> action fails for one or more of the user IDs in the
    #               request, a list of the user IDs is returned, along with error codes and error messages.</p>
    #
    #   @return [Array<UserError>]
    #
    BatchUnsuspendUserOutput = ::Struct.new(
      :user_errors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute update_phone_number_request_items
    #   <p>The request containing the phone number IDs and product types or calling names to update.</p>
    #
    #   @return [Array<UpdatePhoneNumberRequestItem>]
    #
    BatchUpdatePhoneNumberInput = ::Struct.new(
      :update_phone_number_request_items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute phone_number_errors
    #   <p>If the action fails for one or more of the phone numbers in the request, a list of the phone numbers is returned, along with error codes and error messages.</p>
    #
    #   @return [Array<PhoneNumberError>]
    #
    BatchUpdatePhoneNumberOutput = ::Struct.new(
      :phone_number_errors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute update_user_request_items
    #   <p>The request containing the user IDs and details to update.</p>
    #
    #   @return [Array<UpdateUserRequestItem>]
    #
    BatchUpdateUserInput = ::Struct.new(
      :account_id,
      :update_user_request_items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_errors
    #   <p>If the <a>BatchUpdateUser</a> action fails for one or more of the user IDs in the
    #               request, a list of the user IDs is returned, along with error codes and error messages.</p>
    #
    #   @return [Array<UserError>]
    #
    BatchUpdateUserOutput = ::Struct.new(
      :user_errors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A resource that allows Enterprise account administrators to configure an interface to receive events from Amazon Chime.</p>
    #
    # @!attribute bot_id
    #   <p>The bot ID.</p>
    #
    #   @return [String]
    #
    # @!attribute user_id
    #   <p>The unique ID for the bot user.</p>
    #
    #   @return [String]
    #
    # @!attribute display_name
    #   <p>The bot display name.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_type
    #   <p>The bot type.</p>
    #
    #   Enum, one of: ["ChatBot"]
    #
    #   @return [String]
    #
    # @!attribute disabled
    #   <p>When true, the bot is stopped from running in your account.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute created_timestamp
    #   <p>The bot creation timestamp, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    # @!attribute updated_timestamp
    #   <p>The updated bot timestamp, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    # @!attribute bot_email
    #   <p>The bot email address.</p>
    #
    #   @return [String]
    #
    # @!attribute security_token
    #   <p>The security token used to authenticate Amazon Chime with the outgoing event endpoint.</p>
    #
    #   @return [String]
    #
    Bot = ::Struct.new(
      :bot_id,
      :user_id,
      :display_name,
      :bot_type,
      :disabled,
      :created_timestamp,
      :updated_timestamp,
      :bot_email,
      :security_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Chime::Types::Bot "\
          "bot_id=#{bot_id || 'nil'}, "\
          "user_id=#{user_id || 'nil'}, "\
          "display_name=\"[SENSITIVE]\", "\
          "bot_type=#{bot_type || 'nil'}, "\
          "disabled=#{disabled || 'nil'}, "\
          "created_timestamp=#{created_timestamp || 'nil'}, "\
          "updated_timestamp=#{updated_timestamp || 'nil'}, "\
          "bot_email=\"[SENSITIVE]\", "\
          "security_token=\"[SENSITIVE]\">"
      end
    end

    # Includes enum constants for BotType
    #
    module BotType
      # No documentation available.
      #
      ChatBot = "ChatBot"
    end

    # <p>The Amazon Chime Business Calling settings for the administrator's AWS account. Includes any
    #             Amazon S3 buckets designated for storing call detail records.</p>
    #
    # @!attribute cdr_bucket
    #   <p>The Amazon S3 bucket designated for call detail record storage.</p>
    #
    #   @return [String]
    #
    BusinessCallingSettings = ::Struct.new(
      :cdr_bucket,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CallingNameStatus
    #
    module CallingNameStatus
      # No documentation available.
      #
      Unassigned = "Unassigned"

      # No documentation available.
      #
      UpdateInProgress = "UpdateInProgress"

      # No documentation available.
      #
      UpdateSucceeded = "UpdateSucceeded"

      # No documentation available.
      #
      UpdateFailed = "UpdateFailed"
    end

    # Includes enum constants for Capability
    #
    module Capability
      # No documentation available.
      #
      Voice = "Voice"

      # No documentation available.
      #
      SMS = "SMS"
    end

    # <p>The details of a channel.</p>
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
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Chime::Types::Channel "\
          "name=\"[SENSITIVE]\", "\
          "channel_arn=#{channel_arn || 'nil'}, "\
          "mode=#{mode || 'nil'}, "\
          "privacy=#{privacy || 'nil'}, "\
          "metadata=\"[SENSITIVE]\", "\
          "created_by=#{created_by || 'nil'}, "\
          "created_timestamp=#{created_timestamp || 'nil'}, "\
          "last_message_timestamp=#{last_message_timestamp || 'nil'}, "\
          "last_updated_timestamp=#{last_updated_timestamp || 'nil'}>"
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
    #   <p>Summary of the details of a <code>Channel</code>.</p>
    #
    #   @return [ChannelSummary]
    #
    # @!attribute app_instance_user_membership_summary
    #   <p>Summary of the membership details of an <code>AppInstanceUser</code>.</p>
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
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.redacted ||= false
      end

      def to_s
        "#<struct AWS::SDK::Chime::Types::ChannelMessage "\
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
          "persistence=#{persistence || 'nil'}>"
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
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.redacted ||= false
      end

      def to_s
        "#<struct AWS::SDK::Chime::Types::ChannelMessageSummary "\
          "message_id=#{message_id || 'nil'}, "\
          "content=\"[SENSITIVE]\", "\
          "metadata=\"[SENSITIVE]\", "\
          "type=#{type || 'nil'}, "\
          "created_timestamp=#{created_timestamp || 'nil'}, "\
          "last_updated_timestamp=#{last_updated_timestamp || 'nil'}, "\
          "last_edited_timestamp=#{last_edited_timestamp || 'nil'}, "\
          "sender=#{sender || 'nil'}, "\
          "redacted=#{redacted || 'nil'}>"
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

    # <p>The details of the retention settings for a channel.</p>
    #
    # @!attribute retention_days
    #   <p>The time in days to retain the messages in a channel.</p>
    #
    #   @return [Integer]
    #
    ChannelRetentionSettings = ::Struct.new(
      :retention_days,
      keyword_init: true
    ) do
      include Hearth::Structure
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
        "#<struct AWS::SDK::Chime::Types::ChannelSummary "\
          "name=\"[SENSITIVE]\", "\
          "channel_arn=#{channel_arn || 'nil'}, "\
          "mode=#{mode || 'nil'}, "\
          "privacy=#{privacy || 'nil'}, "\
          "metadata=\"[SENSITIVE]\", "\
          "last_message_timestamp=#{last_message_timestamp || 'nil'}>"
      end
    end

    # <p>The configuration object of the Amazon Chime SDK meeting for a specified media capture pipeline. <code>SourceType</code> must be <code>ChimeSdkMeeting</code>.</p>
    #
    # @!attribute source_configuration
    #   <p>The source configuration for a specified media capture pipline.</p>
    #
    #   @return [SourceConfiguration]
    #
    # @!attribute artifacts_configuration
    #   <p>The configuration for the artifacts in an Amazon Chime SDK meeting.</p>
    #
    #   @return [ArtifactsConfiguration]
    #
    ChimeSdkMeetingConfiguration = ::Struct.new(
      :source_configuration,
      :artifacts_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
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

    # <p>The content artifact object.</p>
    #
    # @!attribute state
    #   <p>Indicates whether the content artifact is enabled or disabled.</p>
    #
    #   Enum, one of: ["Enabled", "Disabled"]
    #
    #   @return [String]
    #
    # @!attribute mux_type
    #   <p>The MUX type of the artifact configuration.</p>
    #
    #   Enum, one of: ["ContentOnly"]
    #
    #   @return [String]
    #
    ContentArtifactsConfiguration = ::Struct.new(
      :state,
      :mux_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ContentMuxType
    #
    module ContentMuxType
      # No documentation available.
      #
      ContentOnly = "ContentOnly"
    end

    # <p>The retention settings that determine how long to retain conversation messages for an Amazon Chime Enterprise account.</p>
    #
    # @!attribute retention_days
    #   <p>The number of days for which to retain conversation messages.</p>
    #
    #   @return [Integer]
    #
    ConversationRetentionSettings = ::Struct.new(
      :retention_days,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the Amazon Chime account.</p>
    #
    #   @return [String]
    #
    CreateAccountInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account
    #   <p>The Amazon Chime account details.</p>
    #
    #   @return [Account]
    #
    CreateAccountOutput = ::Struct.new(
      :account,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_instance_admin_arn
    #   <p>The ARN of the administrator of the current <code>AppInstance</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    #
    #   @return [String]
    #
    CreateAppInstanceAdminInput = ::Struct.new(
      :app_instance_admin_arn,
      :app_instance_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_instance_admin
    #   <p>The name and ARN of the admin for the <code>AppInstance</code>.</p>
    #
    #   @return [Identity]
    #
    # @!attribute app_instance_arn
    #   <p>The ARN of the of the admin for the <code>AppInstance</code>.</p>
    #
    #   @return [String]
    #
    CreateAppInstanceAdminOutput = ::Struct.new(
      :app_instance_admin,
      :app_instance_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the <code>AppInstance</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute metadata
    #   <p>The metadata of the <code>AppInstance</code>. Limited to a 1KB string in UTF-8.</p>
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   <p>The <code>ClientRequestToken</code> of the <code>AppInstance</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Tags assigned to the <code>AppInstance</code>.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateAppInstanceInput = ::Struct.new(
      :name,
      :metadata,
      :client_request_token,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Chime::Types::CreateAppInstanceInput "\
          "name=\"[SENSITIVE]\", "\
          "metadata=\"[SENSITIVE]\", "\
          "client_request_token=\"[SENSITIVE]\", "\
          "tags=#{tags || 'nil'}>"
      end
    end

    # @!attribute app_instance_arn
    #   <p>The Amazon Resource Number (ARN) of the <code>AppInstance</code>.</p>
    #
    #   @return [String]
    #
    CreateAppInstanceOutput = ::Struct.new(
      :app_instance_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code> request.</p>
    #
    #   @return [String]
    #
    # @!attribute app_instance_user_id
    #   <p>The user ID of the <code>AppInstance</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The user's name.</p>
    #
    #   @return [String]
    #
    # @!attribute metadata
    #   <p>The request's metadata. Limited to a 1KB string in UTF-8.</p>
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   <p>The token assigned to the user requesting an <code>AppInstance</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Tags assigned to the <code>AppInstanceUser</code>.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateAppInstanceUserInput = ::Struct.new(
      :app_instance_arn,
      :app_instance_user_id,
      :name,
      :metadata,
      :client_request_token,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Chime::Types::CreateAppInstanceUserInput "\
          "app_instance_arn=#{app_instance_arn || 'nil'}, "\
          "app_instance_user_id=\"[SENSITIVE]\", "\
          "name=\"[SENSITIVE]\", "\
          "metadata=\"[SENSITIVE]\", "\
          "client_request_token=\"[SENSITIVE]\", "\
          "tags=#{tags || 'nil'}>"
      end
    end

    # @!attribute app_instance_user_arn
    #   <p>The user's ARN.</p>
    #
    #   @return [String]
    #
    CreateAppInstanceUserOutput = ::Struct.new(
      :app_instance_user_arn,
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
        "#<struct AWS::SDK::Chime::Types::CreateAttendeeError "\
          "external_user_id=\"[SENSITIVE]\", "\
          "error_code=#{error_code || 'nil'}, "\
          "error_message=#{error_message || 'nil'}>"
      end
    end

    # @!attribute meeting_id
    #   <p>The Amazon Chime SDK meeting ID.</p>
    #
    #   @return [String]
    #
    # @!attribute external_user_id
    #   <p>The Amazon Chime SDK external user ID. An idempotency token. Links the attendee to an identity managed by a builder application.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tag key-value pairs.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateAttendeeInput = ::Struct.new(
      :meeting_id,
      :external_user_id,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Chime::Types::CreateAttendeeInput "\
          "meeting_id=#{meeting_id || 'nil'}, "\
          "external_user_id=\"[SENSITIVE]\", "\
          "tags=#{tags || 'nil'}>"
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
    # @!attribute tags
    #   <p>The tag key-value pairs.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateAttendeeRequestItem = ::Struct.new(
      :external_user_id,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Chime::Types::CreateAttendeeRequestItem "\
          "external_user_id=\"[SENSITIVE]\", "\
          "tags=#{tags || 'nil'}>"
      end
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute display_name
    #   <p>The bot display name.</p>
    #
    #   @return [String]
    #
    # @!attribute domain
    #   <p>The domain of the Amazon Chime Enterprise account.</p>
    #
    #   @return [String]
    #
    CreateBotInput = ::Struct.new(
      :account_id,
      :display_name,
      :domain,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Chime::Types::CreateBotInput "\
          "account_id=#{account_id || 'nil'}, "\
          "display_name=\"[SENSITIVE]\", "\
          "domain=#{domain || 'nil'}>"
      end
    end

    # @!attribute bot
    #   <p>The bot details.</p>
    #
    #   @return [Bot]
    #
    CreateBotOutput = ::Struct.new(
      :bot,
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
    #   <p>The ARN of the member being banned.</p>
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
    CreateChannelInput = ::Struct.new(
      :app_instance_arn,
      :name,
      :mode,
      :privacy,
      :metadata,
      :client_request_token,
      :tags,
      :chime_bearer,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Chime::Types::CreateChannelInput "\
          "app_instance_arn=#{app_instance_arn || 'nil'}, "\
          "name=\"[SENSITIVE]\", "\
          "mode=#{mode || 'nil'}, "\
          "privacy=#{privacy || 'nil'}, "\
          "metadata=\"[SENSITIVE]\", "\
          "client_request_token=\"[SENSITIVE]\", "\
          "tags=#{tags || 'nil'}, "\
          "chime_bearer=#{chime_bearer || 'nil'}>"
      end
    end

    # @!attribute channel_arn
    #   <p>The ARN of the channel to which you're adding users.</p>
    #
    #   @return [String]
    #
    # @!attribute member_arn
    #   <p>The ARN of the member you want to add to the channel.</p>
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
    #   <p>The ARN of the moderator.</p>
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

    # @!attribute source_type
    #   <p>Source type from which the media artifacts will be captured. A Chime SDK Meeting
    #               is the only supported source.</p>
    #
    #   Enum, one of: ["ChimeSdkMeeting"]
    #
    #   @return [String]
    #
    # @!attribute source_arn
    #   <p>ARN of the source from which the media artifacts are captured.</p>
    #
    #   @return [String]
    #
    # @!attribute sink_type
    #   <p>Destination type to which the media artifacts are saved. You must use an S3 bucket. </p>
    #
    #   Enum, one of: ["S3Bucket"]
    #
    #   @return [String]
    #
    # @!attribute sink_arn
    #   <p>The ARN of the sink type.</p>
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   <p>The token assigned to the client making the pipeline request.</p>
    #
    #   @return [String]
    #
    # @!attribute chime_sdk_meeting_configuration
    #   <p>The configuration for a specified media capture pipeline. <code>SourceType</code> must be <code>ChimeSdkMeeting</code>.</p>
    #
    #   @return [ChimeSdkMeetingConfiguration]
    #
    CreateMediaCapturePipelineInput = ::Struct.new(
      :source_type,
      :source_arn,
      :sink_type,
      :sink_arn,
      :client_request_token,
      :chime_sdk_meeting_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Chime::Types::CreateMediaCapturePipelineInput "\
          "source_type=#{source_type || 'nil'}, "\
          "source_arn=\"[SENSITIVE]\", "\
          "sink_type=#{sink_type || 'nil'}, "\
          "sink_arn=\"[SENSITIVE]\", "\
          "client_request_token=\"[SENSITIVE]\", "\
          "chime_sdk_meeting_configuration=#{chime_sdk_meeting_configuration || 'nil'}>"
      end
    end

    # @!attribute media_capture_pipeline
    #   <p>A media capture pipeline object, the ID, source type, source ARN, sink type, and  sink ARN of a media capture pipeline object.</p>
    #
    #   @return [MediaCapturePipeline]
    #
    CreateMediaCapturePipelineOutput = ::Struct.new(
      :media_capture_pipeline,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute meeting_id
    #   <p>The Amazon Chime SDK meeting ID.</p>
    #
    #   @return [String]
    #
    # @!attribute from_phone_number
    #   <p>Phone number used as the caller ID when the remote party receives a call.</p>
    #
    #   @return [String]
    #
    # @!attribute to_phone_number
    #   <p>Phone number called when inviting someone to a meeting.</p>
    #
    #   @return [String]
    #
    # @!attribute join_token
    #   <p>Token used by the Amazon Chime SDK attendee. Call the <a href="https://docs.aws.amazon.com/chime/latest/APIReference/API_CreateAttendee.html">CreateAttendee</a> action to get a join token.</p>
    #
    #   @return [String]
    #
    CreateMeetingDialOutInput = ::Struct.new(
      :meeting_id,
      :from_phone_number,
      :to_phone_number,
      :join_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Chime::Types::CreateMeetingDialOutInput "\
          "meeting_id=#{meeting_id || 'nil'}, "\
          "from_phone_number=\"[SENSITIVE]\", "\
          "to_phone_number=\"[SENSITIVE]\", "\
          "join_token=\"[SENSITIVE]\">"
      end
    end

    # @!attribute transaction_id
    #   <p>Unique ID that tracks API calls.</p>
    #
    #   @return [String]
    #
    CreateMeetingDialOutOutput = ::Struct.new(
      :transaction_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_request_token
    #   <p>The unique identifier for the client request. Use a different token for different meetings.</p>
    #
    #   @return [String]
    #
    # @!attribute external_meeting_id
    #   <p>The external meeting ID.</p>
    #
    #   @return [String]
    #
    # @!attribute meeting_host_id
    #   <p>Reserved.</p>
    #
    #   @return [String]
    #
    # @!attribute media_region
    #   <p>
    #   The Region in which to create the meeting. Default: <code>us-east-1</code>.
    #   </p>
    #
    #            <p>
    #   Available values:
    #   <code>af-south-1</code>
    #   ,
    #   <code>ap-northeast-1</code>
    #   ,
    #   <code>ap-northeast-2</code>
    #   ,
    #   <code>ap-south-1</code>
    #   ,
    #   <code>ap-southeast-1</code>
    #   ,
    #   <code>ap-southeast-2</code>
    #   ,
    #   <code>ca-central-1</code>
    #   ,
    #   <code>eu-central-1</code>
    #   ,
    #   <code>eu-north-1</code>
    #   ,
    #   <code>eu-south-1</code>
    #   ,
    #   <code>eu-west-1</code>
    #   ,
    #   <code>eu-west-2</code>
    #   ,
    #   <code>eu-west-3</code>
    #   ,
    #   <code>sa-east-1</code>
    #   ,
    #   <code>us-east-1</code>
    #   ,
    #   <code>us-east-2</code>
    #   ,
    #   <code>us-west-1</code>
    #   ,
    #   <code>us-west-2</code>
    #   .
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tag key-value pairs.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute notifications_configuration
    #   <p>The configuration for resource targets to receive notifications when meeting and attendee events occur.</p>
    #
    #   @return [MeetingNotificationConfiguration]
    #
    CreateMeetingInput = ::Struct.new(
      :client_request_token,
      :external_meeting_id,
      :meeting_host_id,
      :media_region,
      :tags,
      :notifications_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Chime::Types::CreateMeetingInput "\
          "client_request_token=\"[SENSITIVE]\", "\
          "external_meeting_id=\"[SENSITIVE]\", "\
          "meeting_host_id=\"[SENSITIVE]\", "\
          "media_region=#{media_region || 'nil'}, "\
          "tags=#{tags || 'nil'}, "\
          "notifications_configuration=#{notifications_configuration || 'nil'}>"
      end
    end

    # @!attribute meeting
    #   <p>
    #   The meeting information, including the meeting ID and
    #   <code>MediaPlacement</code>
    #   .
    #   </p>
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
    # @!attribute external_meeting_id
    #   <p>The external meeting ID.</p>
    #
    #   @return [String]
    #
    # @!attribute meeting_host_id
    #   <p>Reserved.</p>
    #
    #   @return [String]
    #
    # @!attribute media_region
    #   <p>
    #   The Region in which to create the meeting. Default: <code>us-east-1</code>
    #   .
    #   </p>
    #
    #            <p>
    #   Available values:
    #   <code>af-south-1</code>
    #   ,
    #   <code>ap-northeast-1</code>
    #   ,
    #   <code>ap-northeast-2</code>
    #   ,
    #   <code>ap-south-1</code>
    #   ,
    #   <code>ap-southeast-1</code>
    #   ,
    #   <code>ap-southeast-2</code>
    #   ,
    #   <code>ca-central-1</code>
    #   ,
    #   <code>eu-central-1</code>
    #   ,
    #   <code>eu-north-1</code>
    #   ,
    #   <code>eu-south-1</code>
    #   ,
    #   <code>eu-west-1</code>
    #   ,
    #   <code>eu-west-2</code>
    #   ,
    #   <code>eu-west-3</code>
    #   ,
    #   <code>sa-east-1</code>
    #   ,
    #   <code>us-east-1</code>
    #   ,
    #   <code>us-east-2</code>
    #   ,
    #   <code>us-west-1</code>
    #   ,
    #   <code>us-west-2</code>
    #   .
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tag key-value pairs.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute notifications_configuration
    #   <p> The resource target configurations for receiving Amazon Chime SDK meeting and attendee event
    #               notifications. The Amazon Chime SDK supports resource targets located in the US East (N.
    #               Virginia) AWS Region (<code>us-east-1</code>). </p>
    #
    #   @return [MeetingNotificationConfiguration]
    #
    # @!attribute attendees
    #   <p>The request containing the attendees to create.</p>
    #
    #   @return [Array<CreateAttendeeRequestItem>]
    #
    CreateMeetingWithAttendeesInput = ::Struct.new(
      :client_request_token,
      :external_meeting_id,
      :meeting_host_id,
      :media_region,
      :tags,
      :notifications_configuration,
      :attendees,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Chime::Types::CreateMeetingWithAttendeesInput "\
          "client_request_token=\"[SENSITIVE]\", "\
          "external_meeting_id=\"[SENSITIVE]\", "\
          "meeting_host_id=\"[SENSITIVE]\", "\
          "media_region=#{media_region || 'nil'}, "\
          "tags=#{tags || 'nil'}, "\
          "notifications_configuration=#{notifications_configuration || 'nil'}, "\
          "attendees=#{attendees || 'nil'}>"
      end
    end

    # @!attribute meeting
    #   <p>A meeting created using the Amazon Chime SDK.</p>
    #
    #   @return [Meeting]
    #
    # @!attribute attendees
    #   <p>The attendee information, including attendees IDs and join tokens.</p>
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

    # @!attribute product_type
    #   <p>The phone number product type.</p>
    #
    #   Enum, one of: ["BusinessCalling", "VoiceConnector", "SipMediaApplicationDialIn"]
    #
    #   @return [String]
    #
    # @!attribute e164_phone_numbers
    #   <p>List of phone numbers, in E.164 format.</p>
    #
    #   @return [Array<String>]
    #
    CreatePhoneNumberOrderInput = ::Struct.new(
      :product_type,
      :e164_phone_numbers,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute phone_number_order
    #   <p>The phone number order details.</p>
    #
    #   @return [PhoneNumberOrder]
    #
    CreatePhoneNumberOrderOutput = ::Struct.new(
      :phone_number_order,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute voice_connector_id
    #   <p>The Amazon Chime voice connector ID.</p>
    #
    #   @return [String]
    #
    # @!attribute participant_phone_numbers
    #   <p>The participant phone numbers.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute name
    #   <p>The name of the proxy session.</p>
    #
    #   @return [String]
    #
    # @!attribute expiry_minutes
    #   <p>The number of minutes allowed for the proxy session.</p>
    #
    #   @return [Integer]
    #
    # @!attribute capabilities
    #   <p>The proxy session capabilities.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute number_selection_behavior
    #   <p>The preference for proxy phone number reuse, or stickiness, between the same participants across sessions.</p>
    #
    #   Enum, one of: ["PreferSticky", "AvoidSticky"]
    #
    #   @return [String]
    #
    # @!attribute geo_match_level
    #   <p>The preference for matching the country or area code of the proxy phone number with that of the first participant.</p>
    #
    #   Enum, one of: ["Country", "AreaCode"]
    #
    #   @return [String]
    #
    # @!attribute geo_match_params
    #   <p>The country and area code for the proxy phone number.</p>
    #
    #   @return [GeoMatchParams]
    #
    CreateProxySessionInput = ::Struct.new(
      :voice_connector_id,
      :participant_phone_numbers,
      :name,
      :expiry_minutes,
      :capabilities,
      :number_selection_behavior,
      :geo_match_level,
      :geo_match_params,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Chime::Types::CreateProxySessionInput "\
          "voice_connector_id=#{voice_connector_id || 'nil'}, "\
          "participant_phone_numbers=#{participant_phone_numbers || 'nil'}, "\
          "name=\"[SENSITIVE]\", "\
          "expiry_minutes=#{expiry_minutes || 'nil'}, "\
          "capabilities=#{capabilities || 'nil'}, "\
          "number_selection_behavior=#{number_selection_behavior || 'nil'}, "\
          "geo_match_level=#{geo_match_level || 'nil'}, "\
          "geo_match_params=#{geo_match_params || 'nil'}>"
      end
    end

    # @!attribute proxy_session
    #   <p>The proxy session details.</p>
    #
    #   @return [ProxySession]
    #
    CreateProxySessionOutput = ::Struct.new(
      :proxy_session,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The room name.</p>
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   <p>The idempotency token for the request.</p>
    #
    #   @return [String]
    #
    CreateRoomInput = ::Struct.new(
      :account_id,
      :name,
      :client_request_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Chime::Types::CreateRoomInput "\
          "account_id=#{account_id || 'nil'}, "\
          "name=\"[SENSITIVE]\", "\
          "client_request_token=\"[SENSITIVE]\">"
      end
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute room_id
    #   <p>The room ID.</p>
    #
    #   @return [String]
    #
    # @!attribute member_id
    #   <p>The Amazon Chime member ID (user ID or bot ID).</p>
    #
    #   @return [String]
    #
    # @!attribute role
    #   <p>The role of the member.</p>
    #
    #   Enum, one of: ["Administrator", "Member"]
    #
    #   @return [String]
    #
    CreateRoomMembershipInput = ::Struct.new(
      :account_id,
      :room_id,
      :member_id,
      :role,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute room_membership
    #   <p>The room membership details.</p>
    #
    #   @return [RoomMembership]
    #
    CreateRoomMembershipOutput = ::Struct.new(
      :room_membership,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute room
    #   <p>The room details.</p>
    #
    #   @return [Room]
    #
    CreateRoomOutput = ::Struct.new(
      :room,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute from_phone_number
    #   <p>The phone number that a user calls from. This is a phone number in your Amazon Chime phone number inventory.</p>
    #
    #   @return [String]
    #
    # @!attribute to_phone_number
    #   <p>The phone number that the service should call.</p>
    #
    #   @return [String]
    #
    # @!attribute sip_media_application_id
    #   <p>The ID of the SIP media application.</p>
    #
    #   @return [String]
    #
    # @!attribute sip_headers
    #   <p>The SIP headers added to an outbound call leg.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateSipMediaApplicationCallInput = ::Struct.new(
      :from_phone_number,
      :to_phone_number,
      :sip_media_application_id,
      :sip_headers,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Chime::Types::CreateSipMediaApplicationCallInput "\
          "from_phone_number=\"[SENSITIVE]\", "\
          "to_phone_number=\"[SENSITIVE]\", "\
          "sip_media_application_id=#{sip_media_application_id || 'nil'}, "\
          "sip_headers=#{sip_headers || 'nil'}>"
      end
    end

    # @!attribute sip_media_application_call
    #   <p>The actual call.</p>
    #
    #   @return [SipMediaApplicationCall]
    #
    CreateSipMediaApplicationCallOutput = ::Struct.new(
      :sip_media_application_call,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute aws_region
    #   <p>The AWS Region assigned to the SIP media application.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The SIP media application name.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoints
    #   <p>List of endpoints (Lambda Amazon Resource Names) specified for the SIP media application. Currently, only one endpoint is supported.</p>
    #
    #   @return [Array<SipMediaApplicationEndpoint>]
    #
    CreateSipMediaApplicationInput = ::Struct.new(
      :aws_region,
      :name,
      :endpoints,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute sip_media_application
    #   <p>The SIP media application details.</p>
    #
    #   @return [SipMediaApplication]
    #
    CreateSipMediaApplicationOutput = ::Struct.new(
      :sip_media_application,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the SIP rule.</p>
    #
    #   @return [String]
    #
    # @!attribute trigger_type
    #   <p>The type of trigger assigned to the SIP rule in <code>TriggerValue</code>, currently <code>RequestUriHostname</code> or <code>ToPhoneNumber</code>.</p>
    #
    #   Enum, one of: ["ToPhoneNumber", "RequestUriHostname"]
    #
    #   @return [String]
    #
    # @!attribute trigger_value
    #   <p>If <code>TriggerType</code> is <code>RequestUriHostname</code>, the value can be the outbound
    #               host name of an Amazon Chime Voice Connector. If <code>TriggerType</code> is
    #                   <code>ToPhoneNumber</code>, the value can be a customer-owned phone number in the
    #       E164 format. The <code>SipMediaApplication</code> specified in the <code>SipRule</code> is triggered if the request URI in an incoming SIP
    #       request matches the <code>RequestUriHostname</code>, or if the <code>To</code> header in the incoming SIP request matches the
    #       <code>ToPhoneNumber</code> value.</p>
    #
    #   @return [String]
    #
    # @!attribute disabled
    #   <p>Enables or disables a rule. You must disable rules before you can delete them.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute target_applications
    #   <p>List of SIP media applications with priority and AWS Region. Only one SIP application per AWS Region can be used.</p>
    #
    #   @return [Array<SipRuleTargetApplication>]
    #
    CreateSipRuleInput = ::Struct.new(
      :name,
      :trigger_type,
      :trigger_value,
      :disabled,
      :target_applications,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute sip_rule
    #   <p>Returns the SIP rule information, including the rule ID, triggers, and target applications.</p>
    #
    #   @return [SipRule]
    #
    CreateSipRuleOutput = ::Struct.new(
      :sip_rule,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute username
    #   <p>The user name.</p>
    #
    #   @return [String]
    #
    # @!attribute email
    #   <p>The user's email address.</p>
    #
    #   @return [String]
    #
    # @!attribute user_type
    #   <p>The user type.</p>
    #
    #   Enum, one of: ["PrivateUser", "SharedDevice"]
    #
    #   @return [String]
    #
    CreateUserInput = ::Struct.new(
      :account_id,
      :username,
      :email,
      :user_type,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Chime::Types::CreateUserInput "\
          "account_id=#{account_id || 'nil'}, "\
          "username=#{username || 'nil'}, "\
          "email=\"[SENSITIVE]\", "\
          "user_type=#{user_type || 'nil'}>"
      end
    end

    # @!attribute user
    #   <p>The user on the Amazon Chime account.</p>
    #
    #   @return [User]
    #
    CreateUserOutput = ::Struct.new(
      :user,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the Amazon Chime Voice Connector group.</p>
    #
    #   @return [String]
    #
    # @!attribute voice_connector_items
    #   <p>The Amazon Chime Voice Connectors to route inbound calls to.</p>
    #
    #   @return [Array<VoiceConnectorItem>]
    #
    CreateVoiceConnectorGroupInput = ::Struct.new(
      :name,
      :voice_connector_items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute voice_connector_group
    #   <p>The Amazon Chime Voice Connector group details.</p>
    #
    #   @return [VoiceConnectorGroup]
    #
    CreateVoiceConnectorGroupOutput = ::Struct.new(
      :voice_connector_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the Amazon Chime Voice Connector.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_region
    #   <p>
    #   The AWS Region in which the Amazon Chime Voice Connector is created. Default value:
    #   <code>us-east-1</code>
    #   .
    #   </p>
    #
    #   Enum, one of: ["us-east-1", "us-west-2"]
    #
    #   @return [String]
    #
    # @!attribute require_encryption
    #   <p>When enabled, requires encryption for the Amazon Chime Voice Connector.</p>
    #
    #   @return [Boolean]
    #
    CreateVoiceConnectorInput = ::Struct.new(
      :name,
      :aws_region,
      :require_encryption,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute voice_connector
    #   <p>The Amazon Chime Voice Connector details.</p>
    #
    #   @return [VoiceConnector]
    #
    CreateVoiceConnectorOutput = ::Struct.new(
      :voice_connector,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The SIP credentials used to authenticate requests to your Amazon Chime Voice Connector.</p>
    #
    # @!attribute username
    #   <p>The RFC2617 compliant user name associated with the SIP credentials, in US-ASCII
    #               format.</p>
    #
    #   @return [String]
    #
    # @!attribute password
    #   <p>The RFC2617 compliant password associated with the SIP credentials, in US-ASCII format.</p>
    #
    #   @return [String]
    #
    Credential = ::Struct.new(
      :username,
      :password,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Chime::Types::Credential "\
          "username=\"[SENSITIVE]\", "\
          "password=\"[SENSITIVE]\">"
      end
    end

    # <p>The Dialed Number Identification Service (DNIS) emergency calling configuration details associated with an Amazon Chime Voice Connector's emergency calling configuration.</p>
    #
    # @!attribute emergency_phone_number
    #   <p>The DNIS phone number to route emergency calls to, in E.164 format.</p>
    #
    #   @return [String]
    #
    # @!attribute test_phone_number
    #   <p>The DNIS phone number to route test emergency calls to, in E.164 format.</p>
    #
    #   @return [String]
    #
    # @!attribute calling_country
    #   <p>The country from which emergency calls are allowed, in ISO 3166-1 alpha-2 format.</p>
    #
    #   @return [String]
    #
    DNISEmergencyCallingConfiguration = ::Struct.new(
      :emergency_phone_number,
      :test_phone_number,
      :calling_country,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Chime::Types::DNISEmergencyCallingConfiguration "\
          "emergency_phone_number=\"[SENSITIVE]\", "\
          "test_phone_number=\"[SENSITIVE]\", "\
          "calling_country=#{calling_country || 'nil'}>"
      end
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    #   @return [String]
    #
    DeleteAccountInput = ::Struct.new(
      :account_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteAccountOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_instance_admin_arn
    #   <p>The ARN of the <code>AppInstance</code>'s administrator.</p>
    #
    #   @return [String]
    #
    # @!attribute app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    #
    #   @return [String]
    #
    DeleteAppInstanceAdminInput = ::Struct.new(
      :app_instance_admin_arn,
      :app_instance_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteAppInstanceAdminOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    #
    #   @return [String]
    #
    DeleteAppInstanceInput = ::Struct.new(
      :app_instance_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteAppInstanceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_instance_arn
    #   <p>The ARN of the streaming configurations being deleted.</p>
    #
    #   @return [String]
    #
    DeleteAppInstanceStreamingConfigurationsInput = ::Struct.new(
      :app_instance_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteAppInstanceStreamingConfigurationsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_instance_user_arn
    #   <p>The ARN of the user request being deleted.</p>
    #
    #   @return [String]
    #
    DeleteAppInstanceUserInput = ::Struct.new(
      :app_instance_user_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteAppInstanceUserOutput = ::Struct.new(
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
    #   <p>The ARN of the member that you're removing from the channel.</p>
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
    #   <p>The ARN of the moderator being deleted.</p>
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

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_id
    #   <p>The bot ID.</p>
    #
    #   @return [String]
    #
    DeleteEventsConfigurationInput = ::Struct.new(
      :account_id,
      :bot_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteEventsConfigurationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute media_pipeline_id
    #   <p>The ID of the media capture pipeline being deleted. </p>
    #
    #   @return [String]
    #
    DeleteMediaCapturePipelineInput = ::Struct.new(
      :media_pipeline_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteMediaCapturePipelineOutput = ::Struct.new(
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

    # @!attribute phone_number_id
    #   <p>The phone number ID.</p>
    #
    #   @return [String]
    #
    DeletePhoneNumberInput = ::Struct.new(
      :phone_number_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeletePhoneNumberOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute voice_connector_id
    #   <p>The Amazon Chime voice connector ID.</p>
    #
    #   @return [String]
    #
    # @!attribute proxy_session_id
    #   <p>The proxy session ID.</p>
    #
    #   @return [String]
    #
    DeleteProxySessionInput = ::Struct.new(
      :voice_connector_id,
      :proxy_session_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteProxySessionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute room_id
    #   <p>The chat room ID.</p>
    #
    #   @return [String]
    #
    DeleteRoomInput = ::Struct.new(
      :account_id,
      :room_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute room_id
    #   <p>The room ID.</p>
    #
    #   @return [String]
    #
    # @!attribute member_id
    #   <p>The member ID (user ID or bot ID).</p>
    #
    #   @return [String]
    #
    DeleteRoomMembershipInput = ::Struct.new(
      :account_id,
      :room_id,
      :member_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteRoomMembershipOutput = ::Struct.new(
      nil,
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

    # @!attribute sip_media_application_id
    #   <p>The SIP media application ID.</p>
    #
    #   @return [String]
    #
    DeleteSipMediaApplicationInput = ::Struct.new(
      :sip_media_application_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteSipMediaApplicationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute sip_rule_id
    #   <p>The SIP rule ID.</p>
    #
    #   @return [String]
    #
    DeleteSipRuleInput = ::Struct.new(
      :sip_rule_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteSipRuleOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute voice_connector_id
    #   <p>The Amazon Chime Voice Connector ID.</p>
    #
    #   @return [String]
    #
    DeleteVoiceConnectorEmergencyCallingConfigurationInput = ::Struct.new(
      :voice_connector_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteVoiceConnectorEmergencyCallingConfigurationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute voice_connector_group_id
    #   <p>The Amazon Chime Voice Connector group ID.</p>
    #
    #   @return [String]
    #
    DeleteVoiceConnectorGroupInput = ::Struct.new(
      :voice_connector_group_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteVoiceConnectorGroupOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute voice_connector_id
    #   <p>The Amazon Chime Voice Connector ID.</p>
    #
    #   @return [String]
    #
    DeleteVoiceConnectorInput = ::Struct.new(
      :voice_connector_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute voice_connector_id
    #   <p>The Amazon Chime Voice Connector ID.</p>
    #
    #   @return [String]
    #
    DeleteVoiceConnectorOriginationInput = ::Struct.new(
      :voice_connector_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteVoiceConnectorOriginationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteVoiceConnectorOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute voice_connector_id
    #   <p>The Amazon Chime Voice Connector ID.</p>
    #
    #   @return [String]
    #
    DeleteVoiceConnectorProxyInput = ::Struct.new(
      :voice_connector_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteVoiceConnectorProxyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute voice_connector_id
    #   <p>The Amazon Chime Voice Connector ID.</p>
    #
    #   @return [String]
    #
    DeleteVoiceConnectorStreamingConfigurationInput = ::Struct.new(
      :voice_connector_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteVoiceConnectorStreamingConfigurationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute voice_connector_id
    #   <p>The Amazon Chime Voice Connector ID.</p>
    #
    #   @return [String]
    #
    # @!attribute usernames
    #   <p>The RFC2617 compliant username associated with the SIP credentials, in US-ASCII format.</p>
    #
    #   @return [Array<String>]
    #
    DeleteVoiceConnectorTerminationCredentialsInput = ::Struct.new(
      :voice_connector_id,
      :usernames,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteVoiceConnectorTerminationCredentialsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute voice_connector_id
    #   <p>The Amazon Chime Voice Connector ID.</p>
    #
    #   @return [String]
    #
    DeleteVoiceConnectorTerminationInput = ::Struct.new(
      :voice_connector_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteVoiceConnectorTerminationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_instance_admin_arn
    #   <p>The ARN of the <code>AppInstanceAdmin</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    #
    #   @return [String]
    #
    DescribeAppInstanceAdminInput = ::Struct.new(
      :app_instance_admin_arn,
      :app_instance_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_instance_admin
    #   <p>The ARN and name of the <code>AppInstanceUser</code>, the ARN of the <code>AppInstance</code>, and the created and
    #               last-updated timestamps. All timestamps use epoch milliseconds.</p>
    #
    #   @return [AppInstanceAdmin]
    #
    DescribeAppInstanceAdminOutput = ::Struct.new(
      :app_instance_admin,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    #
    #   @return [String]
    #
    DescribeAppInstanceInput = ::Struct.new(
      :app_instance_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_instance
    #   <p>The ARN, metadata, created and last-updated timestamps, and the name of the <code>AppInstance</code>. All
    #               timestamps use epoch milliseconds.</p>
    #
    #   @return [AppInstance]
    #
    DescribeAppInstanceOutput = ::Struct.new(
      :app_instance,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_instance_user_arn
    #   <p>The ARN of the <code>AppInstanceUser</code>.</p>
    #
    #   @return [String]
    #
    DescribeAppInstanceUserInput = ::Struct.new(
      :app_instance_user_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_instance_user
    #   <p>The name of the <code>AppInstanceUser</code>.</p>
    #
    #   @return [AppInstanceUser]
    #
    DescribeAppInstanceUserOutput = ::Struct.new(
      :app_instance_user,
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
    #   <p>The ARN of the member being banned.</p>
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
    #   <p>The ARN of the member.</p>
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
    #   <p>The ARN of the channel moderator.</p>
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

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute user_id
    #   <p>The user ID.</p>
    #
    #   @return [String]
    #
    DisassociatePhoneNumberFromUserInput = ::Struct.new(
      :account_id,
      :user_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociatePhoneNumberFromUserOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute voice_connector_group_id
    #   <p>The Amazon Chime Voice Connector group ID.</p>
    #
    #   @return [String]
    #
    # @!attribute e164_phone_numbers
    #   <p>List of phone numbers, in E.164 format.</p>
    #
    #   @return [Array<String>]
    #
    DisassociatePhoneNumbersFromVoiceConnectorGroupInput = ::Struct.new(
      :voice_connector_group_id,
      :e164_phone_numbers,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute phone_number_errors
    #   <p>If the action fails for one or more of the phone numbers in the request, a list of the phone numbers is returned, along with error codes and error messages.</p>
    #
    #   @return [Array<PhoneNumberError>]
    #
    DisassociatePhoneNumbersFromVoiceConnectorGroupOutput = ::Struct.new(
      :phone_number_errors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute voice_connector_id
    #   <p>The Amazon Chime Voice Connector ID.</p>
    #
    #   @return [String]
    #
    # @!attribute e164_phone_numbers
    #   <p>List of phone numbers, in E.164 format.</p>
    #
    #   @return [Array<String>]
    #
    DisassociatePhoneNumbersFromVoiceConnectorInput = ::Struct.new(
      :voice_connector_id,
      :e164_phone_numbers,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute phone_number_errors
    #   <p>If the action fails for one or more of the phone numbers in the request, a list of the phone numbers is returned, along with error codes and error messages.</p>
    #
    #   @return [Array<PhoneNumberError>]
    #
    DisassociatePhoneNumbersFromVoiceConnectorOutput = ::Struct.new(
      :phone_number_errors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute group_names
    #   <p>The sign-in delegate group names.</p>
    #
    #   @return [Array<String>]
    #
    DisassociateSigninDelegateGroupsFromAccountInput = ::Struct.new(
      :account_id,
      :group_names,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateSigninDelegateGroupsFromAccountOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EmailStatus
    #
    module EmailStatus
      # No documentation available.
      #
      NotSent = "NotSent"

      # No documentation available.
      #
      Sent = "Sent"

      # No documentation available.
      #
      Failed = "Failed"
    end

    # <p>The emergency calling configuration details associated with an Amazon Chime Voice Connector.</p>
    #
    # @!attribute dnis
    #   <p>The Dialed Number Identification Service (DNIS) emergency calling configuration details.</p>
    #
    #   @return [Array<DNISEmergencyCallingConfiguration>]
    #
    EmergencyCallingConfiguration = ::Struct.new(
      :dnis,
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
    #   Enum, one of: ["us-east-2", "us-east-1", "us-west-2", "ap-northeast-2", "ap-southeast-2", "ap-northeast-1", "ca-central-1", "eu-central-1", "eu-west-1", "eu-west-2", "sa-east-1", "auto"]
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
    #   Enum, one of: ["PII"]
    #
    #   @return [String]
    #
    # @!attribute pii_entity_types
    #   <p>Lists the PII entity types you want to identify or redact. To specify entity types, you must enable <code>ContentIdentificationType</code> or <code>ContentRedactionType</code>.</p>
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

    # <p>The configuration that allows a bot to receive outgoing events. Can be either an HTTPS endpoint or a Lambda function ARN.</p>
    #
    # @!attribute bot_id
    #   <p>The bot ID.</p>
    #
    #   @return [String]
    #
    # @!attribute outbound_events_https_endpoint
    #   <p>HTTPS endpoint that allows a bot to receive outgoing events.</p>
    #
    #   @return [String]
    #
    # @!attribute lambda_function_arn
    #   <p>Lambda function ARN that allows a bot to receive outgoing events.</p>
    #
    #   @return [String]
    #
    EventsConfiguration = ::Struct.new(
      :bot_id,
      :outbound_events_https_endpoint,
      :lambda_function_arn,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Chime::Types::EventsConfiguration "\
          "bot_id=#{bot_id || 'nil'}, "\
          "outbound_events_https_endpoint=\"[SENSITIVE]\", "\
          "lambda_function_arn=\"[SENSITIVE]\">"
      end
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

    # Includes enum constants for GeoMatchLevel
    #
    module GeoMatchLevel
      # No documentation available.
      #
      Country = "Country"

      # No documentation available.
      #
      AreaCode = "AreaCode"
    end

    # <p>The country and area code for a proxy phone number in a proxy phone session.</p>
    #
    # @!attribute country
    #   <p>The country.</p>
    #
    #   @return [String]
    #
    # @!attribute area_code
    #   <p>The area code.</p>
    #
    #   @return [String]
    #
    GeoMatchParams = ::Struct.new(
      :country,
      :area_code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    #   @return [String]
    #
    GetAccountInput = ::Struct.new(
      :account_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account
    #   <p>The Amazon Chime account details.</p>
    #
    #   @return [Account]
    #
    GetAccountOutput = ::Struct.new(
      :account,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    #   @return [String]
    #
    GetAccountSettingsInput = ::Struct.new(
      :account_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_settings
    #   <p>The Amazon Chime account settings.</p>
    #
    #   @return [AccountSettings]
    #
    GetAccountSettingsOutput = ::Struct.new(
      :account_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    #
    #   @return [String]
    #
    GetAppInstanceRetentionSettingsInput = ::Struct.new(
      :app_instance_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_instance_retention_settings
    #   <p>The retention settings for the <code>AppInstance</code>.</p>
    #
    #   @return [AppInstanceRetentionSettings]
    #
    # @!attribute initiate_deletion_timestamp
    #   <p>The timestamp representing the time at which the specified items are retained, in Epoch Seconds.</p>
    #
    #   @return [Time]
    #
    GetAppInstanceRetentionSettingsOutput = ::Struct.new(
      :app_instance_retention_settings,
      :initiate_deletion_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    #
    #   @return [String]
    #
    GetAppInstanceStreamingConfigurationsInput = ::Struct.new(
      :app_instance_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_instance_streaming_configurations
    #   <p>The streaming settings.</p>
    #
    #   @return [Array<AppInstanceStreamingConfiguration>]
    #
    GetAppInstanceStreamingConfigurationsOutput = ::Struct.new(
      :app_instance_streaming_configurations,
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

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_id
    #   <p>The bot ID.</p>
    #
    #   @return [String]
    #
    GetBotInput = ::Struct.new(
      :account_id,
      :bot_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot
    #   <p>The chat bot details.</p>
    #
    #   @return [Bot]
    #
    GetBotOutput = ::Struct.new(
      :bot,
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

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_id
    #   <p>The bot ID.</p>
    #
    #   @return [String]
    #
    GetEventsConfigurationInput = ::Struct.new(
      :account_id,
      :bot_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute events_configuration
    #   <p>The events configuration details.</p>
    #
    #   @return [EventsConfiguration]
    #
    GetEventsConfigurationOutput = ::Struct.new(
      :events_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    GetGlobalSettingsInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute business_calling
    #   <p>The Amazon Chime Business Calling settings.</p>
    #
    #   @return [BusinessCallingSettings]
    #
    # @!attribute voice_connector
    #   <p>The Amazon Chime Voice Connector settings.</p>
    #
    #   @return [VoiceConnectorSettings]
    #
    GetGlobalSettingsOutput = ::Struct.new(
      :business_calling,
      :voice_connector,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute media_pipeline_id
    #   <p>The ID of the pipeline that you want to get.</p>
    #
    #   @return [String]
    #
    GetMediaCapturePipelineInput = ::Struct.new(
      :media_pipeline_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute media_capture_pipeline
    #   <p>The media capture pipeline object.</p>
    #
    #   @return [MediaCapturePipeline]
    #
    GetMediaCapturePipelineOutput = ::Struct.new(
      :media_capture_pipeline,
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

    # @!attribute phone_number_id
    #   <p>The phone number ID.</p>
    #
    #   @return [String]
    #
    GetPhoneNumberInput = ::Struct.new(
      :phone_number_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute phone_number_order_id
    #   <p>The ID for the phone number order.</p>
    #
    #   @return [String]
    #
    GetPhoneNumberOrderInput = ::Struct.new(
      :phone_number_order_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute phone_number_order
    #   <p>The phone number order details.</p>
    #
    #   @return [PhoneNumberOrder]
    #
    GetPhoneNumberOrderOutput = ::Struct.new(
      :phone_number_order,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute phone_number
    #   <p>The phone number details.</p>
    #
    #   @return [PhoneNumber]
    #
    GetPhoneNumberOutput = ::Struct.new(
      :phone_number,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    GetPhoneNumberSettingsInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute calling_name
    #   <p>The default outbound calling name for the account.</p>
    #
    #   @return [String]
    #
    # @!attribute calling_name_updated_timestamp
    #   <p>The updated outbound calling name timestamp, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    GetPhoneNumberSettingsOutput = ::Struct.new(
      :calling_name,
      :calling_name_updated_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Chime::Types::GetPhoneNumberSettingsOutput "\
          "calling_name=\"[SENSITIVE]\", "\
          "calling_name_updated_timestamp=#{calling_name_updated_timestamp || 'nil'}>"
      end
    end

    # @!attribute voice_connector_id
    #   <p>The Amazon Chime voice connector ID.</p>
    #
    #   @return [String]
    #
    # @!attribute proxy_session_id
    #   <p>The proxy session ID.</p>
    #
    #   @return [String]
    #
    GetProxySessionInput = ::Struct.new(
      :voice_connector_id,
      :proxy_session_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute proxy_session
    #   <p>The proxy session details.</p>
    #
    #   @return [ProxySession]
    #
    GetProxySessionOutput = ::Struct.new(
      :proxy_session,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    #   @return [String]
    #
    GetRetentionSettingsInput = ::Struct.new(
      :account_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute retention_settings
    #   <p>The retention settings.</p>
    #
    #   @return [RetentionSettings]
    #
    # @!attribute initiate_deletion_timestamp
    #   <p>The timestamp representing the time at which the specified items are permanently deleted, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    GetRetentionSettingsOutput = ::Struct.new(
      :retention_settings,
      :initiate_deletion_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute room_id
    #   <p>The room ID.</p>
    #
    #   @return [String]
    #
    GetRoomInput = ::Struct.new(
      :account_id,
      :room_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute room
    #   <p>The room details.</p>
    #
    #   @return [Room]
    #
    GetRoomOutput = ::Struct.new(
      :room,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute sip_media_application_id
    #   <p>The SIP media application ID.</p>
    #
    #   @return [String]
    #
    GetSipMediaApplicationInput = ::Struct.new(
      :sip_media_application_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute sip_media_application_id
    #   <p>The SIP media application ID.</p>
    #
    #   @return [String]
    #
    GetSipMediaApplicationLoggingConfigurationInput = ::Struct.new(
      :sip_media_application_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute sip_media_application_logging_configuration
    #   <p>The actual logging configuration.</p>
    #
    #   @return [SipMediaApplicationLoggingConfiguration]
    #
    GetSipMediaApplicationLoggingConfigurationOutput = ::Struct.new(
      :sip_media_application_logging_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute sip_media_application
    #   <p>The SIP media application details.</p>
    #
    #   @return [SipMediaApplication]
    #
    GetSipMediaApplicationOutput = ::Struct.new(
      :sip_media_application,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute sip_rule_id
    #   <p>The SIP rule ID.</p>
    #
    #   @return [String]
    #
    GetSipRuleInput = ::Struct.new(
      :sip_rule_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute sip_rule
    #   <p>The SIP rule details.</p>
    #
    #   @return [SipRule]
    #
    GetSipRuleOutput = ::Struct.new(
      :sip_rule,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute user_id
    #   <p>The user ID.</p>
    #
    #   @return [String]
    #
    GetUserInput = ::Struct.new(
      :account_id,
      :user_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user
    #   <p>The user details.</p>
    #
    #   @return [User]
    #
    GetUserOutput = ::Struct.new(
      :user,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute user_id
    #   <p>The user ID.</p>
    #
    #   @return [String]
    #
    GetUserSettingsInput = ::Struct.new(
      :account_id,
      :user_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_settings
    #   <p>The user settings.</p>
    #
    #   @return [UserSettings]
    #
    GetUserSettingsOutput = ::Struct.new(
      :user_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute voice_connector_id
    #   <p>The Amazon Chime Voice Connector ID.</p>
    #
    #   @return [String]
    #
    GetVoiceConnectorEmergencyCallingConfigurationInput = ::Struct.new(
      :voice_connector_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute emergency_calling_configuration
    #   <p>The emergency calling configuration details.</p>
    #
    #   @return [EmergencyCallingConfiguration]
    #
    GetVoiceConnectorEmergencyCallingConfigurationOutput = ::Struct.new(
      :emergency_calling_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute voice_connector_group_id
    #   <p>The Amazon Chime Voice Connector group ID.</p>
    #
    #   @return [String]
    #
    GetVoiceConnectorGroupInput = ::Struct.new(
      :voice_connector_group_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute voice_connector_group
    #   <p>The Amazon Chime Voice Connector group details.</p>
    #
    #   @return [VoiceConnectorGroup]
    #
    GetVoiceConnectorGroupOutput = ::Struct.new(
      :voice_connector_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute voice_connector_id
    #   <p>The Amazon Chime Voice Connector ID.</p>
    #
    #   @return [String]
    #
    GetVoiceConnectorInput = ::Struct.new(
      :voice_connector_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute voice_connector_id
    #   <p>The Amazon Chime Voice Connector ID.</p>
    #
    #   @return [String]
    #
    GetVoiceConnectorLoggingConfigurationInput = ::Struct.new(
      :voice_connector_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute logging_configuration
    #   <p>The logging configuration details.</p>
    #
    #   @return [LoggingConfiguration]
    #
    GetVoiceConnectorLoggingConfigurationOutput = ::Struct.new(
      :logging_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute voice_connector_id
    #   <p>The Amazon Chime Voice Connector ID.</p>
    #
    #   @return [String]
    #
    GetVoiceConnectorOriginationInput = ::Struct.new(
      :voice_connector_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute origination
    #   <p>The origination setting details.</p>
    #
    #   @return [Origination]
    #
    GetVoiceConnectorOriginationOutput = ::Struct.new(
      :origination,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute voice_connector
    #   <p>The Amazon Chime Voice Connector details.</p>
    #
    #   @return [VoiceConnector]
    #
    GetVoiceConnectorOutput = ::Struct.new(
      :voice_connector,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute voice_connector_id
    #   <p>The Amazon Chime voice connector ID.</p>
    #
    #   @return [String]
    #
    GetVoiceConnectorProxyInput = ::Struct.new(
      :voice_connector_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute proxy
    #   <p>The proxy configuration details.</p>
    #
    #   @return [Proxy]
    #
    GetVoiceConnectorProxyOutput = ::Struct.new(
      :proxy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute voice_connector_id
    #   <p>The Amazon Chime Voice Connector ID.</p>
    #
    #   @return [String]
    #
    GetVoiceConnectorStreamingConfigurationInput = ::Struct.new(
      :voice_connector_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute streaming_configuration
    #   <p>The streaming configuration details.</p>
    #
    #   @return [StreamingConfiguration]
    #
    GetVoiceConnectorStreamingConfigurationOutput = ::Struct.new(
      :streaming_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute voice_connector_id
    #   <p>The Amazon Chime Voice Connector ID.</p>
    #
    #   @return [String]
    #
    GetVoiceConnectorTerminationHealthInput = ::Struct.new(
      :voice_connector_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute termination_health
    #   <p>The termination health details.</p>
    #
    #   @return [TerminationHealth]
    #
    GetVoiceConnectorTerminationHealthOutput = ::Struct.new(
      :termination_health,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute voice_connector_id
    #   <p>The Amazon Chime Voice Connector ID.</p>
    #
    #   @return [String]
    #
    GetVoiceConnectorTerminationInput = ::Struct.new(
      :voice_connector_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute termination
    #   <p>The termination setting details.</p>
    #
    #   @return [Termination]
    #
    GetVoiceConnectorTerminationOutput = ::Struct.new(
      :termination,
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
        "#<struct AWS::SDK::Chime::Types::Identity "\
          "arn=#{arn || 'nil'}, "\
          "name=\"[SENSITIVE]\">"
      end
    end

    # <p>Invitation object returned after emailing users to invite them to join the Amazon Chime
    #                 <code>Team</code> account.</p>
    #
    # @!attribute invite_id
    #   <p>The invite ID.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the invite.</p>
    #
    #   Enum, one of: ["Pending", "Accepted", "Failed"]
    #
    #   @return [String]
    #
    # @!attribute email_address
    #   <p>The email address to which the invite is sent.</p>
    #
    #   @return [String]
    #
    # @!attribute email_status
    #   <p>The status of the invite email.</p>
    #
    #   Enum, one of: ["NotSent", "Sent", "Failed"]
    #
    #   @return [String]
    #
    Invite = ::Struct.new(
      :invite_id,
      :status,
      :email_address,
      :email_status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Chime::Types::Invite "\
          "invite_id=#{invite_id || 'nil'}, "\
          "status=#{status || 'nil'}, "\
          "email_address=\"[SENSITIVE]\", "\
          "email_status=#{email_status || 'nil'}>"
      end
    end

    # Includes enum constants for InviteStatus
    #
    module InviteStatus
      # No documentation available.
      #
      Pending = "Pending"

      # No documentation available.
      #
      Accepted = "Accepted"

      # No documentation available.
      #
      Failed = "Failed"
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute user_email_list
    #   <p>The user email addresses to which to send the email invitation.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute user_type
    #   <p>The user type.</p>
    #
    #   Enum, one of: ["PrivateUser", "SharedDevice"]
    #
    #   @return [String]
    #
    InviteUsersInput = ::Struct.new(
      :account_id,
      :user_email_list,
      :user_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute invites
    #   <p>The email invitation details.</p>
    #
    #   @return [Array<Invite>]
    #
    InviteUsersOutput = ::Struct.new(
      :invites,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for License
    #
    module License
      # No documentation available.
      #
      Basic = "Basic"

      # No documentation available.
      #
      Plus = "Plus"

      # No documentation available.
      #
      Pro = "Pro"

      # No documentation available.
      #
      ProTrial = "ProTrial"
    end

    # @!attribute name
    #   <p>Amazon Chime account name prefix with which to filter results.</p>
    #
    #   @return [String]
    #
    # @!attribute user_email
    #   <p>User email address with which to filter results.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. Defaults to 100.</p>
    #
    #   @return [Integer]
    #
    ListAccountsInput = ::Struct.new(
      :name,
      :user_email,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Chime::Types::ListAccountsInput "\
          "name=#{name || 'nil'}, "\
          "user_email=\"[SENSITIVE]\", "\
          "next_token=#{next_token || 'nil'}, "\
          "max_results=#{max_results || 'nil'}>"
      end
    end

    # @!attribute accounts
    #   <p>List of Amazon Chime accounts and account details.</p>
    #
    #   @return [Array<Account>]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results.</p>
    #
    #   @return [String]
    #
    ListAccountsOutput = ::Struct.new(
      :accounts,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of administrators that you want to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token returned from previous API requests until the number of administrators is reached.</p>
    #
    #   @return [String]
    #
    ListAppInstanceAdminsInput = ::Struct.new(
      :app_instance_arn,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Chime::Types::ListAppInstanceAdminsInput "\
          "app_instance_arn=#{app_instance_arn || 'nil'}, "\
          "max_results=#{max_results || 'nil'}, "\
          "next_token=\"[SENSITIVE]\">"
      end
    end

    # @!attribute app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute app_instance_admins
    #   <p>The information for each administrator.</p>
    #
    #   @return [Array<AppInstanceAdminSummary>]
    #
    # @!attribute next_token
    #   <p>The token returned from previous API requests until the number of administrators is reached.</p>
    #
    #   @return [String]
    #
    ListAppInstanceAdminsOutput = ::Struct.new(
      :app_instance_arn,
      :app_instance_admins,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Chime::Types::ListAppInstanceAdminsOutput "\
          "app_instance_arn=#{app_instance_arn || 'nil'}, "\
          "app_instance_admins=#{app_instance_admins || 'nil'}, "\
          "next_token=\"[SENSITIVE]\">"
      end
    end

    # @!attribute app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of requests that you want returned.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token passed by previous API calls until all requested users are returned.</p>
    #
    #   @return [String]
    #
    ListAppInstanceUsersInput = ::Struct.new(
      :app_instance_arn,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Chime::Types::ListAppInstanceUsersInput "\
          "app_instance_arn=#{app_instance_arn || 'nil'}, "\
          "max_results=#{max_results || 'nil'}, "\
          "next_token=\"[SENSITIVE]\">"
      end
    end

    # @!attribute app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute app_instance_users
    #   <p>The information for each requested <code>AppInstanceUser</code>.</p>
    #
    #   @return [Array<AppInstanceUserSummary>]
    #
    # @!attribute next_token
    #   <p>The token passed by previous API calls until all requested users are returned.</p>
    #
    #   @return [String]
    #
    ListAppInstanceUsersOutput = ::Struct.new(
      :app_instance_arn,
      :app_instance_users,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Chime::Types::ListAppInstanceUsersOutput "\
          "app_instance_arn=#{app_instance_arn || 'nil'}, "\
          "app_instance_users=#{app_instance_users || 'nil'}, "\
          "next_token=\"[SENSITIVE]\">"
      end
    end

    # @!attribute max_results
    #   <p>The maximum number of <code>AppInstance</code>s that you want to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token passed by previous API requests until you reach the maximum number of <code>AppInstance</code>s.</p>
    #
    #   @return [String]
    #
    ListAppInstancesInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Chime::Types::ListAppInstancesInput "\
          "max_results=#{max_results || 'nil'}, "\
          "next_token=\"[SENSITIVE]\">"
      end
    end

    # @!attribute app_instances
    #   <p>The information for each <code>AppInstance</code>.</p>
    #
    #   @return [Array<AppInstanceSummary>]
    #
    # @!attribute next_token
    #   <p>The token passed by previous API requests until the maximum number of <code>AppInstance</code>s is reached.</p>
    #
    #   @return [String]
    #
    ListAppInstancesOutput = ::Struct.new(
      :app_instances,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Chime::Types::ListAppInstancesOutput "\
          "app_instances=#{app_instances || 'nil'}, "\
          "next_token=\"[SENSITIVE]\">"
      end
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
    ListAttendeeTagsInput = ::Struct.new(
      :meeting_id,
      :attendee_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tags
    #   <p>A list of tag key-value pairs.</p>
    #
    #   @return [Array<Tag>]
    #
    ListAttendeeTagsOutput = ::Struct.new(
      :tags,
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

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. The default is 10.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results.</p>
    #
    #   @return [String]
    #
    ListBotsInput = ::Struct.new(
      :account_id,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bots
    #   <p>List of bots and bot details.</p>
    #
    #   @return [Array<Bot>]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results.</p>
    #
    #   @return [String]
    #
    ListBotsOutput = ::Struct.new(
      :bots,
      :next_token,
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
        "#<struct AWS::SDK::Chime::Types::ListChannelBansInput "\
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
        "#<struct AWS::SDK::Chime::Types::ListChannelBansOutput "\
          "channel_arn=#{channel_arn || 'nil'}, "\
          "next_token=\"[SENSITIVE]\", "\
          "channel_bans=#{channel_bans || 'nil'}>"
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
    #   <p>The token returned from previous API requests until the number of channel memberships is reached.</p>
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
        "#<struct AWS::SDK::Chime::Types::ListChannelMembershipsForAppInstanceUserInput "\
          "app_instance_user_arn=#{app_instance_user_arn || 'nil'}, "\
          "max_results=#{max_results || 'nil'}, "\
          "next_token=\"[SENSITIVE]\", "\
          "chime_bearer=#{chime_bearer || 'nil'}>"
      end
    end

    # @!attribute channel_memberships
    #   <p>The token passed by previous API calls until all requested users are returned.</p>
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
        "#<struct AWS::SDK::Chime::Types::ListChannelMembershipsForAppInstanceUserOutput "\
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
    #            members are always returned as part of <code>ListChannelMemberships</code>. Hidden members
    #            are only returned if the type filter in <code>ListChannelMemberships</code> equals
    #               <code>HIDDEN</code>. Otherwise hidden members are not returned.</p>
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
        "#<struct AWS::SDK::Chime::Types::ListChannelMembershipsInput "\
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
        "#<struct AWS::SDK::Chime::Types::ListChannelMembershipsOutput "\
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
        "#<struct AWS::SDK::Chime::Types::ListChannelMessagesInput "\
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
        "#<struct AWS::SDK::Chime::Types::ListChannelMessagesOutput "\
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
        "#<struct AWS::SDK::Chime::Types::ListChannelModeratorsInput "\
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
        "#<struct AWS::SDK::Chime::Types::ListChannelModeratorsOutput "\
          "channel_arn=#{channel_arn || 'nil'}, "\
          "next_token=\"[SENSITIVE]\", "\
          "channel_moderators=#{channel_moderators || 'nil'}>"
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
        "#<struct AWS::SDK::Chime::Types::ListChannelsInput "\
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
        "#<struct AWS::SDK::Chime::Types::ListChannelsModeratedByAppInstanceUserInput "\
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
        "#<struct AWS::SDK::Chime::Types::ListChannelsModeratedByAppInstanceUserOutput "\
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
        "#<struct AWS::SDK::Chime::Types::ListChannelsOutput "\
          "channels=#{channels || 'nil'}, "\
          "next_token=\"[SENSITIVE]\">"
      end
    end

    # @!attribute next_token
    #   <p>The token used to retrieve the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. Valid Range: 1 - 99.</p>
    #
    #   @return [Integer]
    #
    ListMediaCapturePipelinesInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute media_capture_pipelines
    #   <p>The media capture pipeline objects in the list.</p>
    #
    #   @return [Array<MediaCapturePipeline>]
    #
    # @!attribute next_token
    #   <p>The token used to retrieve the next page of results. </p>
    #
    #   @return [String]
    #
    ListMediaCapturePipelinesOutput = ::Struct.new(
      :media_capture_pipelines,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute meeting_id
    #   <p>The Amazon Chime SDK meeting ID.</p>
    #
    #   @return [String]
    #
    ListMeetingTagsInput = ::Struct.new(
      :meeting_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tags
    #   <p>A list of tag key-value pairs.</p>
    #
    #   @return [Array<Tag>]
    #
    ListMeetingTagsOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

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
    ListMeetingsInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute meetings
    #   <p>The Amazon Chime SDK meeting information.</p>
    #
    #   @return [Array<Meeting>]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results.</p>
    #
    #   @return [String]
    #
    ListMeetingsOutput = ::Struct.new(
      :meetings,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

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
    ListPhoneNumberOrdersInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute phone_number_orders
    #   <p>The phone number order details.</p>
    #
    #   @return [Array<PhoneNumberOrder>]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results.</p>
    #
    #   @return [String]
    #
    ListPhoneNumberOrdersOutput = ::Struct.new(
      :phone_number_orders,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute status
    #   <p>The phone number status.</p>
    #
    #   Enum, one of: ["AcquireInProgress", "AcquireFailed", "Unassigned", "Assigned", "ReleaseInProgress", "DeleteInProgress", "ReleaseFailed", "DeleteFailed"]
    #
    #   @return [String]
    #
    # @!attribute product_type
    #   <p>The phone number product type.</p>
    #
    #   Enum, one of: ["BusinessCalling", "VoiceConnector", "SipMediaApplicationDialIn"]
    #
    #   @return [String]
    #
    # @!attribute filter_name
    #   <p>The filter to use to limit the number of results.</p>
    #
    #   Enum, one of: ["AccountId", "UserId", "VoiceConnectorId", "VoiceConnectorGroupId", "SipRuleId"]
    #
    #   @return [String]
    #
    # @!attribute filter_value
    #   <p>The value to use for the filter.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results.</p>
    #
    #   @return [String]
    #
    ListPhoneNumbersInput = ::Struct.new(
      :status,
      :product_type,
      :filter_name,
      :filter_value,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute phone_numbers
    #   <p>The phone number details.</p>
    #
    #   @return [Array<PhoneNumber>]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results.</p>
    #
    #   @return [String]
    #
    ListPhoneNumbersOutput = ::Struct.new(
      :phone_numbers,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute voice_connector_id
    #   <p>The Amazon Chime voice connector ID.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The proxy session status.</p>
    #
    #   Enum, one of: ["Open", "InProgress", "Closed"]
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
    ListProxySessionsInput = ::Struct.new(
      :voice_connector_id,
      :status,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute proxy_sessions
    #   <p>The proxy session details.</p>
    #
    #   @return [Array<ProxySession>]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results.</p>
    #
    #   @return [String]
    #
    ListProxySessionsOutput = ::Struct.new(
      :proxy_sessions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute room_id
    #   <p>The room ID.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results.</p>
    #
    #   @return [String]
    #
    ListRoomMembershipsInput = ::Struct.new(
      :account_id,
      :room_id,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute room_memberships
    #   <p>The room membership details.</p>
    #
    #   @return [Array<RoomMembership>]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results.</p>
    #
    #   @return [String]
    #
    ListRoomMembershipsOutput = ::Struct.new(
      :room_memberships,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute member_id
    #   <p>The member ID (user ID or bot ID).</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results.</p>
    #
    #   @return [String]
    #
    ListRoomsInput = ::Struct.new(
      :account_id,
      :member_id,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute rooms
    #   <p>The room details.</p>
    #
    #   @return [Array<Room>]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results.</p>
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

    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. Defaults to 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results.</p>
    #
    #   @return [String]
    #
    ListSipMediaApplicationsInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute sip_media_applications
    #   <p>List of SIP media applications and application details.</p>
    #
    #   @return [Array<SipMediaApplication>]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results.</p>
    #
    #   @return [String]
    #
    ListSipMediaApplicationsOutput = ::Struct.new(
      :sip_media_applications,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute sip_media_application_id
    #   <p>The SIP media application ID.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. Defaults to 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results.</p>
    #
    #   @return [String]
    #
    ListSipRulesInput = ::Struct.new(
      :sip_media_application_id,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute sip_rules
    #   <p>List of SIP rules and rule details.</p>
    #
    #   @return [Array<SipRule>]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results.</p>
    #
    #   @return [String]
    #
    ListSipRulesOutput = ::Struct.new(
      :sip_rules,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute product_type
    #   <p>The phone number product type.</p>
    #
    #   Enum, one of: ["BusinessCalling", "VoiceConnector", "SipMediaApplicationDialIn"]
    #
    #   @return [String]
    #
    ListSupportedPhoneNumberCountriesInput = ::Struct.new(
      :product_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute phone_number_countries
    #   <p>The supported phone number countries.</p>
    #
    #   @return [Array<PhoneNumberCountry>]
    #
    ListSupportedPhoneNumberCountriesOutput = ::Struct.new(
      :phone_number_countries,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The resource ARN.</p>
    #
    #   @return [String]
    #
    ListTagsForResourceInput = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Chime::Types::ListTagsForResourceInput "\
          "resource_arn=\"[SENSITIVE]\">"
      end
    end

    # @!attribute tags
    #   <p>A list of tag-key value pairs.</p>
    #
    #   @return [Array<Tag>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute user_email
    #   <p>Optional. The user email address used to filter results. Maximum 1.</p>
    #
    #   @return [String]
    #
    # @!attribute user_type
    #   <p>The user type.</p>
    #
    #   Enum, one of: ["PrivateUser", "SharedDevice"]
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. Defaults to 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results.</p>
    #
    #   @return [String]
    #
    ListUsersInput = ::Struct.new(
      :account_id,
      :user_email,
      :user_type,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Chime::Types::ListUsersInput "\
          "account_id=#{account_id || 'nil'}, "\
          "user_email=\"[SENSITIVE]\", "\
          "user_type=#{user_type || 'nil'}, "\
          "max_results=#{max_results || 'nil'}, "\
          "next_token=#{next_token || 'nil'}>"
      end
    end

    # @!attribute users
    #   <p>List of users and user details.</p>
    #
    #   @return [Array<User>]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results.</p>
    #
    #   @return [String]
    #
    ListUsersOutput = ::Struct.new(
      :users,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

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
    ListVoiceConnectorGroupsInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute voice_connector_groups
    #   <p>The details of the Amazon Chime Voice Connector groups.</p>
    #
    #   @return [Array<VoiceConnectorGroup>]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results.</p>
    #
    #   @return [String]
    #
    ListVoiceConnectorGroupsOutput = ::Struct.new(
      :voice_connector_groups,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute voice_connector_id
    #   <p>The Amazon Chime Voice Connector ID.</p>
    #
    #   @return [String]
    #
    ListVoiceConnectorTerminationCredentialsInput = ::Struct.new(
      :voice_connector_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute usernames
    #   <p>A list of user names.</p>
    #
    #   @return [Array<String>]
    #
    ListVoiceConnectorTerminationCredentialsOutput = ::Struct.new(
      :usernames,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

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
    ListVoiceConnectorsInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute voice_connectors
    #   <p>The details of the Amazon Chime Voice Connectors.</p>
    #
    #   @return [Array<VoiceConnector>]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results.</p>
    #
    #   @return [String]
    #
    ListVoiceConnectorsOutput = ::Struct.new(
      :voice_connectors,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The logging configuration associated with an Amazon Chime Voice Connector. Specifies whether SIP message logs are enabled for sending to Amazon CloudWatch Logs.</p>
    #
    # @!attribute enable_sip_logs
    #   <p>Boolean that enables SIP message logs to CloudWatch logs.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute enable_media_metric_logs
    #   <p>Boolean that enables logging of detailed media metrics for Voice Connectors to CloudWatch logs.</p>
    #
    #   @return [Boolean]
    #
    LoggingConfiguration = ::Struct.new(
      :enable_sip_logs,
      :enable_media_metric_logs,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute user_id
    #   <p>The user ID.</p>
    #
    #   @return [String]
    #
    LogoutUserInput = ::Struct.new(
      :account_id,
      :user_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    LogoutUserOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A media capture pipeline object consisting of an ID, source type, source ARN, a sink type, a sink ARN, and a configuration object.</p>
    #
    # @!attribute media_pipeline_id
    #   <p>The ID of a media capture pipeline.</p>
    #
    #   @return [String]
    #
    # @!attribute source_type
    #   <p>Source type from which media artifacts are saved. You must use <code>ChimeMeeting</code>.</p>
    #
    #   Enum, one of: ["ChimeSdkMeeting"]
    #
    #   @return [String]
    #
    # @!attribute source_arn
    #   <p>ARN of the source from which the media artifacts will be saved.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the media capture pipeline.</p>
    #
    #   Enum, one of: ["Initializing", "InProgress", "Failed", "Stopping", "Stopped"]
    #
    #   @return [String]
    #
    # @!attribute sink_type
    #   <p>Destination type to which the media artifacts are saved. You must use an S3 Bucket.</p>
    #
    #   Enum, one of: ["S3Bucket"]
    #
    #   @return [String]
    #
    # @!attribute sink_arn
    #   <p>ARN of the destination to which the media artifacts are saved.</p>
    #
    #   @return [String]
    #
    # @!attribute created_timestamp
    #   <p>The time at which the capture pipeline was created, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    # @!attribute updated_timestamp
    #   <p>The time at which the capture pipeline was updated, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    # @!attribute chime_sdk_meeting_configuration
    #   <p>The configuration for a specified media capture pipeline. <code>SourceType</code> must be <code>ChimeSdkMeeting</code>.</p>
    #
    #   @return [ChimeSdkMeetingConfiguration]
    #
    MediaCapturePipeline = ::Struct.new(
      :media_pipeline_id,
      :source_type,
      :source_arn,
      :status,
      :sink_type,
      :sink_arn,
      :created_timestamp,
      :updated_timestamp,
      :chime_sdk_meeting_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Chime::Types::MediaCapturePipeline "\
          "media_pipeline_id=#{media_pipeline_id || 'nil'}, "\
          "source_type=#{source_type || 'nil'}, "\
          "source_arn=\"[SENSITIVE]\", "\
          "status=#{status || 'nil'}, "\
          "sink_type=#{sink_type || 'nil'}, "\
          "sink_arn=\"[SENSITIVE]\", "\
          "created_timestamp=#{created_timestamp || 'nil'}, "\
          "updated_timestamp=#{updated_timestamp || 'nil'}, "\
          "chime_sdk_meeting_configuration=#{chime_sdk_meeting_configuration || 'nil'}>"
      end
    end

    # Includes enum constants for MediaPipelineSinkType
    #
    module MediaPipelineSinkType
      # No documentation available.
      #
      S3Bucket = "S3Bucket"
    end

    # Includes enum constants for MediaPipelineSourceType
    #
    module MediaPipelineSourceType
      # No documentation available.
      #
      ChimeSdkMeeting = "ChimeSdkMeeting"
    end

    # Includes enum constants for MediaPipelineStatus
    #
    module MediaPipelineStatus
      # No documentation available.
      #
      Initializing = "Initializing"

      # No documentation available.
      #
      InProgress = "InProgress"

      # No documentation available.
      #
      Failed = "Failed"

      # No documentation available.
      #
      Stopping = "Stopping"

      # No documentation available.
      #
      Stopped = "Stopped"
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
    # @!attribute screen_data_url
    #   <p>The screen data URL.</p>
    #
    #   @return [String]
    #
    # @!attribute screen_sharing_url
    #   <p>The screen sharing URL.</p>
    #
    #   @return [String]
    #
    # @!attribute screen_viewing_url
    #   <p>The screen viewing URL.</p>
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
    # @!attribute event_ingestion_url
    #   <p>The event ingestion URL to which you send client meeting events.</p>
    #
    #   @return [String]
    #
    MediaPlacement = ::Struct.new(
      :audio_host_url,
      :audio_fallback_url,
      :screen_data_url,
      :screen_sharing_url,
      :screen_viewing_url,
      :signaling_url,
      :turn_control_url,
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
    # @!attribute external_meeting_id
    #   <p>The external meeting ID.</p>
    #
    #   @return [String]
    #
    # @!attribute media_placement
    #   <p>The media placement for the meeting.</p>
    #
    #   @return [MediaPlacement]
    #
    # @!attribute media_region
    #   <p>The Region in which you create the meeting. Available values: <code>af-south-1</code>, <code>ap-northeast-1</code>,
    #       <code>ap-northeast-2</code>, <code>ap-south-1</code>, <code>ap-southeast-1</code>, <code>ap-southeast-2</code>, <code>ca-central-1</code>,
    #       <code>eu-central-1</code>, <code>eu-north-1</code>, <code>eu-south-1</code>,
    #                   <code>eu-west-1</code>, <code>eu-west-2</code>, <code>eu-west-3</code>,
    #                   <code>sa-east-1</code>, <code>us-east-1</code>, <code>us-east-2</code>,
    #                   <code>us-west-1</code>, <code>us-west-2</code>.</p>
    #
    #   @return [String]
    #
    Meeting = ::Struct.new(
      :meeting_id,
      :external_meeting_id,
      :media_placement,
      :media_region,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Chime::Types::Meeting "\
          "meeting_id=#{meeting_id || 'nil'}, "\
          "external_meeting_id=\"[SENSITIVE]\", "\
          "media_placement=#{media_placement || 'nil'}, "\
          "media_region=#{media_region || 'nil'}>"
      end
    end

    # <p> The resource target configurations for receiving Amazon Chime SDK meeting and attendee event
    #             notifications. The Amazon Chime SDK supports resource targets located in the US East (N.
    #             Virginia) AWS Region (<code>us-east-1</code>). </p>
    #
    # @!attribute sns_topic_arn
    #   <p>The SNS topic ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute sqs_queue_arn
    #   <p>The SQS queue ARN.</p>
    #
    #   @return [String]
    #
    MeetingNotificationConfiguration = ::Struct.new(
      :sns_topic_arn,
      :sqs_queue_arn,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Chime::Types::MeetingNotificationConfiguration "\
          "sns_topic_arn=\"[SENSITIVE]\", "\
          "sqs_queue_arn=\"[SENSITIVE]\">"
      end
    end

    # <p>The member details, such as email address, name, member ID, and member type.</p>
    #
    # @!attribute member_id
    #   <p>The member ID (user ID or bot ID).</p>
    #
    #   @return [String]
    #
    # @!attribute member_type
    #   <p>The member type.</p>
    #
    #   Enum, one of: ["User", "Bot", "Webhook"]
    #
    #   @return [String]
    #
    # @!attribute email
    #   <p>The member email address.</p>
    #
    #   @return [String]
    #
    # @!attribute full_name
    #   <p>The member name.</p>
    #
    #   @return [String]
    #
    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    #   @return [String]
    #
    Member = ::Struct.new(
      :member_id,
      :member_type,
      :email,
      :full_name,
      :account_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Chime::Types::Member "\
          "member_id=#{member_id || 'nil'}, "\
          "member_type=#{member_type || 'nil'}, "\
          "email=\"[SENSITIVE]\", "\
          "full_name=\"[SENSITIVE]\", "\
          "account_id=#{account_id || 'nil'}>"
      end
    end

    # <p>The list of errors returned when a member action results in an error.</p>
    #
    # @!attribute member_id
    #   <p>The member ID.</p>
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
    MemberError = ::Struct.new(
      :member_id,
      :error_code,
      :error_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for MemberType
    #
    module MemberType
      # No documentation available.
      #
      User = "User"

      # No documentation available.
      #
      Bot = "Bot"

      # No documentation available.
      #
      Webhook = "Webhook"
    end

    # <p>Membership details, such as member ID and member role.</p>
    #
    # @!attribute member_id
    #   <p>The member ID.</p>
    #
    #   @return [String]
    #
    # @!attribute role
    #   <p>The member role.</p>
    #
    #   Enum, one of: ["Administrator", "Member"]
    #
    #   @return [String]
    #
    MembershipItem = ::Struct.new(
      :member_id,
      :role,
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

    # Includes enum constants for NotificationTarget
    #
    module NotificationTarget
      # No documentation available.
      #
      EventBridge = "EventBridge"

      # No documentation available.
      #
      SNS = "SNS"

      # No documentation available.
      #
      SQS = "SQS"
    end

    # Includes enum constants for NumberSelectionBehavior
    #
    module NumberSelectionBehavior
      # No documentation available.
      #
      PreferSticky = "PreferSticky"

      # No documentation available.
      #
      AvoidSticky = "AvoidSticky"
    end

    # <p>A phone number for which an order has been placed.</p>
    #
    # @!attribute e164_phone_number
    #   <p>The phone number, in E.164 format.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The phone number status.</p>
    #
    #   Enum, one of: ["Processing", "Acquired", "Failed"]
    #
    #   @return [String]
    #
    OrderedPhoneNumber = ::Struct.new(
      :e164_phone_number,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Chime::Types::OrderedPhoneNumber "\
          "e164_phone_number=\"[SENSITIVE]\", "\
          "status=#{status || 'nil'}>"
      end
    end

    # Includes enum constants for OrderedPhoneNumberStatus
    #
    module OrderedPhoneNumberStatus
      # No documentation available.
      #
      Processing = "Processing"

      # No documentation available.
      #
      Acquired = "Acquired"

      # No documentation available.
      #
      Failed = "Failed"
    end

    # <p>Origination settings enable your SIP hosts to receive inbound calls using your Amazon Chime
    #             Voice Connector.</p>
    #          <note>
    #             <p>The parameters listed below are not required, but you must use at least one. </p>
    #          </note>
    #
    # @!attribute routes
    #   <p>The call distribution properties defined for your SIP hosts. Valid range: Minimum value of 1.
    #       Maximum value of 20. This parameter is not required, but you must specify this parameter or <code>Disabled</code>.</p>
    #
    #   @return [Array<OriginationRoute>]
    #
    # @!attribute disabled
    #   <p>When origination settings are disabled, inbound calls are not enabled for your Amazon Chime
    #               Voice Connector. This parameter is not required, but you must specify this parameter or <code>Routes</code>.</p>
    #
    #   @return [Boolean]
    #
    Origination = ::Struct.new(
      :routes,
      :disabled,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Origination routes define call distribution properties for your SIP hosts to receive inbound
    #             calls using your Amazon Chime Voice Connector. Limit: Ten origination routes for each
    #             Amazon Chime Voice Connector.</p>
    #          <note>
    #             <p>The parameters listed below are not required, but you must use at least one. </p>
    #          </note>
    #
    # @!attribute host
    #   <p>The FQDN or IP address to contact for origination traffic.</p>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>The designated origination route port. Defaults to 5060.</p>
    #
    #   @return [Integer]
    #
    # @!attribute protocol
    #   <p>The protocol to use for the origination route. Encryption-enabled Amazon Chime Voice Connectors use TCP protocol by default.</p>
    #
    #   Enum, one of: ["TCP", "UDP"]
    #
    #   @return [String]
    #
    # @!attribute priority
    #   <p>The priority associated with the host, with 1 being the highest priority. Higher priority
    #               hosts are attempted first.</p>
    #
    #   @return [Integer]
    #
    # @!attribute weight
    #   <p>The weight associated with the host. If hosts are equal in priority, calls are redistributed among
    #               them based on their relative weight.</p>
    #
    #   @return [Integer]
    #
    OriginationRoute = ::Struct.new(
      :host,
      :port,
      :protocol,
      :priority,
      :weight,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for OriginationRouteProtocol
    #
    module OriginationRouteProtocol
      # No documentation available.
      #
      TCP = "TCP"

      # No documentation available.
      #
      UDP = "UDP"
    end

    # <p>The phone number and proxy phone number for a participant in an Amazon Chime Voice Connector proxy session.</p>
    #
    # @!attribute phone_number
    #   <p>The participant's phone number.</p>
    #
    #   @return [String]
    #
    # @!attribute proxy_phone_number
    #   <p>The participant's proxy phone number.</p>
    #
    #   @return [String]
    #
    Participant = ::Struct.new(
      :phone_number,
      :proxy_phone_number,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Chime::Types::Participant "\
          "phone_number=\"[SENSITIVE]\", "\
          "proxy_phone_number=\"[SENSITIVE]\">"
      end
    end

    # <p>A phone number used for Amazon Chime Business Calling or an Amazon Chime Voice
    #             Connector.</p>
    #
    # @!attribute phone_number_id
    #   <p>The phone number ID.</p>
    #
    #   @return [String]
    #
    # @!attribute e164_phone_number
    #   <p>The phone number, in E.164 format.</p>
    #
    #   @return [String]
    #
    # @!attribute country
    #   <p>The phone number country. Format: ISO 3166-1 alpha-2.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The phone number type.</p>
    #
    #   Enum, one of: ["Local", "TollFree"]
    #
    #   @return [String]
    #
    # @!attribute product_type
    #   <p>The phone number product type.</p>
    #
    #   Enum, one of: ["BusinessCalling", "VoiceConnector", "SipMediaApplicationDialIn"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The phone number status.</p>
    #
    #   Enum, one of: ["AcquireInProgress", "AcquireFailed", "Unassigned", "Assigned", "ReleaseInProgress", "DeleteInProgress", "ReleaseFailed", "DeleteFailed"]
    #
    #   @return [String]
    #
    # @!attribute capabilities
    #   <p>The phone number capabilities.</p>
    #
    #   @return [PhoneNumberCapabilities]
    #
    # @!attribute associations
    #   <p>The phone number associations.</p>
    #
    #   @return [Array<PhoneNumberAssociation>]
    #
    # @!attribute calling_name
    #   <p>The outbound calling name associated with the phone number.</p>
    #
    #   @return [String]
    #
    # @!attribute calling_name_status
    #   <p>The outbound calling name status.</p>
    #
    #   Enum, one of: ["Unassigned", "UpdateInProgress", "UpdateSucceeded", "UpdateFailed"]
    #
    #   @return [String]
    #
    # @!attribute created_timestamp
    #   <p>The phone number creation timestamp, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    # @!attribute updated_timestamp
    #   <p>The updated phone number timestamp, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    # @!attribute deletion_timestamp
    #   <p>The deleted phone number timestamp, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    PhoneNumber = ::Struct.new(
      :phone_number_id,
      :e164_phone_number,
      :country,
      :type,
      :product_type,
      :status,
      :capabilities,
      :associations,
      :calling_name,
      :calling_name_status,
      :created_timestamp,
      :updated_timestamp,
      :deletion_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Chime::Types::PhoneNumber "\
          "phone_number_id=#{phone_number_id || 'nil'}, "\
          "e164_phone_number=\"[SENSITIVE]\", "\
          "country=#{country || 'nil'}, "\
          "type=#{type || 'nil'}, "\
          "product_type=#{product_type || 'nil'}, "\
          "status=#{status || 'nil'}, "\
          "capabilities=#{capabilities || 'nil'}, "\
          "associations=#{associations || 'nil'}, "\
          "calling_name=\"[SENSITIVE]\", "\
          "calling_name_status=#{calling_name_status || 'nil'}, "\
          "created_timestamp=#{created_timestamp || 'nil'}, "\
          "updated_timestamp=#{updated_timestamp || 'nil'}, "\
          "deletion_timestamp=#{deletion_timestamp || 'nil'}>"
      end
    end

    # <p>The phone number associations, such as Amazon Chime account ID, Amazon Chime user ID, Amazon
    #             Chime Voice Connector ID, or Amazon Chime Voice Connector group ID.</p>
    #
    # @!attribute value
    #   <p>Contains the ID for the entity specified in Name.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>Defines the association with an Amazon Chime account ID, user ID, Amazon Chime Voice Connector
    #               ID, or Amazon Chime Voice Connector group ID.</p>
    #
    #   Enum, one of: ["AccountId", "UserId", "VoiceConnectorId", "VoiceConnectorGroupId", "SipRuleId"]
    #
    #   @return [String]
    #
    # @!attribute associated_timestamp
    #   <p>The timestamp of the phone number association, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    PhoneNumberAssociation = ::Struct.new(
      :value,
      :name,
      :associated_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PhoneNumberAssociationName
    #
    module PhoneNumberAssociationName
      # No documentation available.
      #
      AccountId = "AccountId"

      # No documentation available.
      #
      UserId = "UserId"

      # No documentation available.
      #
      VoiceConnectorId = "VoiceConnectorId"

      # No documentation available.
      #
      VoiceConnectorGroupId = "VoiceConnectorGroupId"

      # No documentation available.
      #
      SipRuleId = "SipRuleId"
    end

    # <p>The phone number capabilities for Amazon Chime Business Calling phone numbers, such as enabled
    #             inbound and outbound calling and text messaging.</p>
    #
    # @!attribute inbound_call
    #   <p>Allows or denies inbound calling for the specified phone number.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute outbound_call
    #   <p>Allows or denies outbound calling for the specified phone number.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute inbound_sms
    #   <p>Allows or denies inbound SMS messaging for the specified phone number.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute outbound_sms
    #   <p>Allows or denies outbound SMS messaging for the specified phone number.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute inbound_mms
    #   <p>Allows or denies inbound MMS messaging for the specified phone number.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute outbound_mms
    #   <p>Allows or denies outbound MMS messaging for the specified phone number.</p>
    #
    #   @return [Boolean]
    #
    PhoneNumberCapabilities = ::Struct.new(
      :inbound_call,
      :outbound_call,
      :inbound_sms,
      :outbound_sms,
      :inbound_mms,
      :outbound_mms,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The phone number country.</p>
    #
    # @!attribute country_code
    #   <p>The phone number country code. Format: ISO 3166-1 alpha-2.</p>
    #
    #   @return [String]
    #
    # @!attribute supported_phone_number_types
    #   <p>The supported phone number types. </p>
    #
    #   @return [Array<String>]
    #
    PhoneNumberCountry = ::Struct.new(
      :country_code,
      :supported_phone_number_types,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>If the phone number action fails for one or more of the phone numbers in the request, a list of
    #             the phone numbers is returned, along with error codes and error messages.</p>
    #
    # @!attribute phone_number_id
    #   <p>The phone number ID for which the action failed.</p>
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
    PhoneNumberError = ::Struct.new(
      :phone_number_id,
      :error_code,
      :error_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The details of a phone number order created for Amazon Chime.</p>
    #
    # @!attribute phone_number_order_id
    #   <p>The phone number order ID.</p>
    #
    #   @return [String]
    #
    # @!attribute product_type
    #   <p>The phone number order product type.</p>
    #
    #   Enum, one of: ["BusinessCalling", "VoiceConnector", "SipMediaApplicationDialIn"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the phone number order.</p>
    #
    #   Enum, one of: ["Processing", "Successful", "Failed", "Partial"]
    #
    #   @return [String]
    #
    # @!attribute ordered_phone_numbers
    #   <p>The ordered phone number details, such as the phone number in E.164 format and the phone
    #               number status.</p>
    #
    #   @return [Array<OrderedPhoneNumber>]
    #
    # @!attribute created_timestamp
    #   <p>The phone number order creation time stamp, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    # @!attribute updated_timestamp
    #   <p>The updated phone number order time stamp, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    PhoneNumberOrder = ::Struct.new(
      :phone_number_order_id,
      :product_type,
      :status,
      :ordered_phone_numbers,
      :created_timestamp,
      :updated_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PhoneNumberOrderStatus
    #
    module PhoneNumberOrderStatus
      # No documentation available.
      #
      Processing = "Processing"

      # No documentation available.
      #
      Successful = "Successful"

      # No documentation available.
      #
      Failed = "Failed"

      # No documentation available.
      #
      Partial = "Partial"
    end

    # Includes enum constants for PhoneNumberProductType
    #
    module PhoneNumberProductType
      # No documentation available.
      #
      BusinessCalling = "BusinessCalling"

      # No documentation available.
      #
      VoiceConnector = "VoiceConnector"

      # No documentation available.
      #
      SipMediaApplicationDialIn = "SipMediaApplicationDialIn"
    end

    # Includes enum constants for PhoneNumberStatus
    #
    module PhoneNumberStatus
      # No documentation available.
      #
      AcquireInProgress = "AcquireInProgress"

      # No documentation available.
      #
      AcquireFailed = "AcquireFailed"

      # No documentation available.
      #
      Unassigned = "Unassigned"

      # No documentation available.
      #
      Assigned = "Assigned"

      # No documentation available.
      #
      ReleaseInProgress = "ReleaseInProgress"

      # No documentation available.
      #
      DeleteInProgress = "DeleteInProgress"

      # No documentation available.
      #
      ReleaseFailed = "ReleaseFailed"

      # No documentation available.
      #
      DeleteFailed = "DeleteFailed"
    end

    # Includes enum constants for PhoneNumberType
    #
    module PhoneNumberType
      # No documentation available.
      #
      Local = "Local"

      # No documentation available.
      #
      TollFree = "TollFree"
    end

    # <p>The proxy configuration for an Amazon Chime Voice Connector.</p>
    #
    # @!attribute default_session_expiry_minutes
    #   <p>The default number of minutes allowed for proxy sessions.</p>
    #
    #   @return [Integer]
    #
    # @!attribute disabled
    #   <p>When true, stops proxy sessions from being created on the specified Amazon Chime Voice Connector.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute fall_back_phone_number
    #   <p>The phone number to route calls to after a proxy session expires.</p>
    #
    #   @return [String]
    #
    # @!attribute phone_number_countries
    #   <p>The countries for proxy phone numbers to be selected from.</p>
    #
    #   @return [Array<String>]
    #
    Proxy = ::Struct.new(
      :default_session_expiry_minutes,
      :disabled,
      :fall_back_phone_number,
      :phone_number_countries,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Chime::Types::Proxy "\
          "default_session_expiry_minutes=#{default_session_expiry_minutes || 'nil'}, "\
          "disabled=#{disabled || 'nil'}, "\
          "fall_back_phone_number=\"[SENSITIVE]\", "\
          "phone_number_countries=#{phone_number_countries || 'nil'}>"
      end
    end

    # <p>The proxy session for an Amazon Chime Voice Connector.</p>
    #
    # @!attribute voice_connector_id
    #   <p>The Amazon Chime voice connector ID.</p>
    #
    #   @return [String]
    #
    # @!attribute proxy_session_id
    #   <p>The proxy session ID.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the proxy session.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the proxy session.</p>
    #
    #   Enum, one of: ["Open", "InProgress", "Closed"]
    #
    #   @return [String]
    #
    # @!attribute expiry_minutes
    #   <p>The number of minutes allowed for the proxy session.</p>
    #
    #   @return [Integer]
    #
    # @!attribute capabilities
    #   <p>The proxy session capabilities.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute created_timestamp
    #   <p>The created time stamp, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    # @!attribute updated_timestamp
    #   <p>The updated time stamp, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    # @!attribute ended_timestamp
    #   <p>The ended time stamp, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    # @!attribute participants
    #   <p>The proxy session participants.</p>
    #
    #   @return [Array<Participant>]
    #
    # @!attribute number_selection_behavior
    #   <p>The preference for proxy phone number reuse, or stickiness, between the same participants across sessions.</p>
    #
    #   Enum, one of: ["PreferSticky", "AvoidSticky"]
    #
    #   @return [String]
    #
    # @!attribute geo_match_level
    #   <p>The preference for matching the country or area code of the proxy phone number with that of the first participant.</p>
    #
    #   Enum, one of: ["Country", "AreaCode"]
    #
    #   @return [String]
    #
    # @!attribute geo_match_params
    #   <p>The country and area code for the proxy phone number.</p>
    #
    #   @return [GeoMatchParams]
    #
    ProxySession = ::Struct.new(
      :voice_connector_id,
      :proxy_session_id,
      :name,
      :status,
      :expiry_minutes,
      :capabilities,
      :created_timestamp,
      :updated_timestamp,
      :ended_timestamp,
      :participants,
      :number_selection_behavior,
      :geo_match_level,
      :geo_match_params,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ProxySessionStatus
    #
    module ProxySessionStatus
      # No documentation available.
      #
      Open = "Open"

      # No documentation available.
      #
      InProgress = "InProgress"

      # No documentation available.
      #
      Closed = "Closed"
    end

    # @!attribute app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute app_instance_retention_settings
    #   <p>The time in days to retain data. Data type: number.</p>
    #
    #   @return [AppInstanceRetentionSettings]
    #
    PutAppInstanceRetentionSettingsInput = ::Struct.new(
      :app_instance_arn,
      :app_instance_retention_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_instance_retention_settings
    #   <p>The time in days to retain data. Data type: number.</p>
    #
    #   @return [AppInstanceRetentionSettings]
    #
    # @!attribute initiate_deletion_timestamp
    #   <p>The time at which the API deletes data.</p>
    #
    #   @return [Time]
    #
    PutAppInstanceRetentionSettingsOutput = ::Struct.new(
      :app_instance_retention_settings,
      :initiate_deletion_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute app_instance_streaming_configurations
    #   <p>The streaming configurations set for an <code>AppInstance</code>.</p>
    #
    #   @return [Array<AppInstanceStreamingConfiguration>]
    #
    PutAppInstanceStreamingConfigurationsInput = ::Struct.new(
      :app_instance_arn,
      :app_instance_streaming_configurations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_instance_streaming_configurations
    #   <p>The streaming configurations of an <code>AppInstance</code>.</p>
    #
    #   @return [Array<AppInstanceStreamingConfiguration>]
    #
    PutAppInstanceStreamingConfigurationsOutput = ::Struct.new(
      :app_instance_streaming_configurations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_id
    #   <p>The bot ID.</p>
    #
    #   @return [String]
    #
    # @!attribute outbound_events_https_endpoint
    #   <p>HTTPS endpoint that allows the bot to receive outgoing events.</p>
    #
    #   @return [String]
    #
    # @!attribute lambda_function_arn
    #   <p>Lambda function ARN that allows the bot to receive outgoing events.</p>
    #
    #   @return [String]
    #
    PutEventsConfigurationInput = ::Struct.new(
      :account_id,
      :bot_id,
      :outbound_events_https_endpoint,
      :lambda_function_arn,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Chime::Types::PutEventsConfigurationInput "\
          "account_id=#{account_id || 'nil'}, "\
          "bot_id=#{bot_id || 'nil'}, "\
          "outbound_events_https_endpoint=\"[SENSITIVE]\", "\
          "lambda_function_arn=\"[SENSITIVE]\">"
      end
    end

    # @!attribute events_configuration
    #   <p>The configuration that allows a bot to receive outgoing events. Can be either an HTTPS endpoint or a Lambda function ARN.</p>
    #
    #   @return [EventsConfiguration]
    #
    PutEventsConfigurationOutput = ::Struct.new(
      :events_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute retention_settings
    #   <p>The retention settings.</p>
    #
    #   @return [RetentionSettings]
    #
    PutRetentionSettingsInput = ::Struct.new(
      :account_id,
      :retention_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute retention_settings
    #   <p>The retention settings.</p>
    #
    #   @return [RetentionSettings]
    #
    # @!attribute initiate_deletion_timestamp
    #   <p>The timestamp representing the time at which the specified items are permanently deleted, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    PutRetentionSettingsOutput = ::Struct.new(
      :retention_settings,
      :initiate_deletion_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute sip_media_application_id
    #   <p>The SIP media application ID.</p>
    #
    #   @return [String]
    #
    # @!attribute sip_media_application_logging_configuration
    #   <p>The actual logging configuration.</p>
    #
    #   @return [SipMediaApplicationLoggingConfiguration]
    #
    PutSipMediaApplicationLoggingConfigurationInput = ::Struct.new(
      :sip_media_application_id,
      :sip_media_application_logging_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute sip_media_application_logging_configuration
    #   <p>Logging configuration of the SIP media application.</p>
    #
    #   @return [SipMediaApplicationLoggingConfiguration]
    #
    PutSipMediaApplicationLoggingConfigurationOutput = ::Struct.new(
      :sip_media_application_logging_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute voice_connector_id
    #   <p>The Amazon Chime Voice Connector ID.</p>
    #
    #   @return [String]
    #
    # @!attribute emergency_calling_configuration
    #   <p>The emergency calling configuration details.</p>
    #
    #   @return [EmergencyCallingConfiguration]
    #
    PutVoiceConnectorEmergencyCallingConfigurationInput = ::Struct.new(
      :voice_connector_id,
      :emergency_calling_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute emergency_calling_configuration
    #   <p>The emergency calling configuration details.</p>
    #
    #   @return [EmergencyCallingConfiguration]
    #
    PutVoiceConnectorEmergencyCallingConfigurationOutput = ::Struct.new(
      :emergency_calling_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute voice_connector_id
    #   <p>The Amazon Chime Voice Connector ID.</p>
    #
    #   @return [String]
    #
    # @!attribute logging_configuration
    #   <p>The logging configuration details to add.</p>
    #
    #   @return [LoggingConfiguration]
    #
    PutVoiceConnectorLoggingConfigurationInput = ::Struct.new(
      :voice_connector_id,
      :logging_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute logging_configuration
    #   <p>The updated logging configuration details.</p>
    #
    #   @return [LoggingConfiguration]
    #
    PutVoiceConnectorLoggingConfigurationOutput = ::Struct.new(
      :logging_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute voice_connector_id
    #   <p>The Amazon Chime Voice Connector ID.</p>
    #
    #   @return [String]
    #
    # @!attribute origination
    #   <p>The origination setting details to add.</p>
    #
    #   @return [Origination]
    #
    PutVoiceConnectorOriginationInput = ::Struct.new(
      :voice_connector_id,
      :origination,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute origination
    #   <p>The updated origination setting details.</p>
    #
    #   @return [Origination]
    #
    PutVoiceConnectorOriginationOutput = ::Struct.new(
      :origination,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute voice_connector_id
    #   <p>The Amazon Chime voice connector ID.</p>
    #
    #   @return [String]
    #
    # @!attribute default_session_expiry_minutes
    #   <p>The default number of minutes allowed for proxy sessions.</p>
    #
    #   @return [Integer]
    #
    # @!attribute phone_number_pool_countries
    #   <p>The countries for proxy phone numbers to be selected from.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute fall_back_phone_number
    #   <p>The phone number to route calls to after a proxy session expires.</p>
    #
    #   @return [String]
    #
    # @!attribute disabled
    #   <p>When true, stops proxy sessions from being created on the specified Amazon Chime Voice Connector.</p>
    #
    #   @return [Boolean]
    #
    PutVoiceConnectorProxyInput = ::Struct.new(
      :voice_connector_id,
      :default_session_expiry_minutes,
      :phone_number_pool_countries,
      :fall_back_phone_number,
      :disabled,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Chime::Types::PutVoiceConnectorProxyInput "\
          "voice_connector_id=#{voice_connector_id || 'nil'}, "\
          "default_session_expiry_minutes=#{default_session_expiry_minutes || 'nil'}, "\
          "phone_number_pool_countries=#{phone_number_pool_countries || 'nil'}, "\
          "fall_back_phone_number=\"[SENSITIVE]\", "\
          "disabled=#{disabled || 'nil'}>"
      end
    end

    # @!attribute proxy
    #   <p>The proxy configuration details.</p>
    #
    #   @return [Proxy]
    #
    PutVoiceConnectorProxyOutput = ::Struct.new(
      :proxy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute voice_connector_id
    #   <p>The Amazon Chime Voice Connector ID.</p>
    #
    #   @return [String]
    #
    # @!attribute streaming_configuration
    #   <p>The streaming configuration details to add.</p>
    #
    #   @return [StreamingConfiguration]
    #
    PutVoiceConnectorStreamingConfigurationInput = ::Struct.new(
      :voice_connector_id,
      :streaming_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute streaming_configuration
    #   <p>The updated streaming configuration details.</p>
    #
    #   @return [StreamingConfiguration]
    #
    PutVoiceConnectorStreamingConfigurationOutput = ::Struct.new(
      :streaming_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute voice_connector_id
    #   <p>The Amazon Chime Voice Connector ID.</p>
    #
    #   @return [String]
    #
    # @!attribute credentials
    #   <p>The termination SIP credentials.</p>
    #
    #   @return [Array<Credential>]
    #
    PutVoiceConnectorTerminationCredentialsInput = ::Struct.new(
      :voice_connector_id,
      :credentials,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutVoiceConnectorTerminationCredentialsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute voice_connector_id
    #   <p>The Amazon Chime Voice Connector ID.</p>
    #
    #   @return [String]
    #
    # @!attribute termination
    #   <p>The termination setting details to add.</p>
    #
    #   @return [Termination]
    #
    PutVoiceConnectorTerminationInput = ::Struct.new(
      :voice_connector_id,
      :termination,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute termination
    #   <p>The updated termination setting details.</p>
    #
    #   @return [Termination]
    #
    PutVoiceConnectorTerminationOutput = ::Struct.new(
      :termination,
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

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute conversation_id
    #   <p>The conversation ID.</p>
    #
    #   @return [String]
    #
    # @!attribute message_id
    #   <p>The message ID.</p>
    #
    #   @return [String]
    #
    RedactConversationMessageInput = ::Struct.new(
      :account_id,
      :conversation_id,
      :message_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    RedactConversationMessageOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute room_id
    #   <p>The room ID.</p>
    #
    #   @return [String]
    #
    # @!attribute message_id
    #   <p>The message ID.</p>
    #
    #   @return [String]
    #
    RedactRoomMessageInput = ::Struct.new(
      :account_id,
      :room_id,
      :message_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    RedactRoomMessageOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_id
    #   <p>The bot ID.</p>
    #
    #   @return [String]
    #
    RegenerateSecurityTokenInput = ::Struct.new(
      :account_id,
      :bot_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot
    #   <p>A resource that allows Enterprise account administrators to configure an interface to receive events from Amazon Chime.</p>
    #
    #   @return [Bot]
    #
    RegenerateSecurityTokenOutput = ::Struct.new(
      :bot,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RegistrationStatus
    #
    module RegistrationStatus
      # No documentation available.
      #
      Unregistered = "Unregistered"

      # No documentation available.
      #
      Registered = "Registered"

      # No documentation available.
      #
      Suspended = "Suspended"
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute user_id
    #   <p>The user ID.</p>
    #
    #   @return [String]
    #
    ResetPersonalPINInput = ::Struct.new(
      :account_id,
      :user_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user
    #   <p>The user details and new personal meeting PIN.</p>
    #
    #   @return [User]
    #
    ResetPersonalPINOutput = ::Struct.new(
      :user,
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

    # @!attribute phone_number_id
    #   <p>The phone number.</p>
    #
    #   @return [String]
    #
    RestorePhoneNumberInput = ::Struct.new(
      :phone_number_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute phone_number
    #   <p>The phone number details.</p>
    #
    #   @return [PhoneNumber]
    #
    RestorePhoneNumberOutput = ::Struct.new(
      :phone_number,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The retention settings for an Amazon Chime Enterprise account that determine how long to retain items such as chat-room messages and chat-conversation messages.</p>
    #
    # @!attribute room_retention_settings
    #   <p>The chat room retention settings.</p>
    #
    #   @return [RoomRetentionSettings]
    #
    # @!attribute conversation_retention_settings
    #   <p>The chat conversation retention settings.</p>
    #
    #   @return [ConversationRetentionSettings]
    #
    RetentionSettings = ::Struct.new(
      :room_retention_settings,
      :conversation_retention_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The Amazon Chime chat room details.</p>
    #
    # @!attribute room_id
    #   <p>The room ID.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The room name.</p>
    #
    #   @return [String]
    #
    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute created_by
    #   <p>The identifier of the room creator.</p>
    #
    #   @return [String]
    #
    # @!attribute created_timestamp
    #   <p>The room creation timestamp, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    # @!attribute updated_timestamp
    #   <p>The room update timestamp, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    Room = ::Struct.new(
      :room_id,
      :name,
      :account_id,
      :created_by,
      :created_timestamp,
      :updated_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Chime::Types::Room "\
          "room_id=#{room_id || 'nil'}, "\
          "name=\"[SENSITIVE]\", "\
          "account_id=#{account_id || 'nil'}, "\
          "created_by=#{created_by || 'nil'}, "\
          "created_timestamp=#{created_timestamp || 'nil'}, "\
          "updated_timestamp=#{updated_timestamp || 'nil'}>"
      end
    end

    # <p>The room membership details.</p>
    #
    # @!attribute room_id
    #   <p>The room ID.</p>
    #
    #   @return [String]
    #
    # @!attribute member
    #   <p>The member details, such as email address, name, member ID, and member type.</p>
    #
    #   @return [Member]
    #
    # @!attribute role
    #   <p>The membership role.</p>
    #
    #   Enum, one of: ["Administrator", "Member"]
    #
    #   @return [String]
    #
    # @!attribute invited_by
    #   <p>The identifier of the user that invited the room member.</p>
    #
    #   @return [String]
    #
    # @!attribute updated_timestamp
    #   <p>The room membership update timestamp, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    RoomMembership = ::Struct.new(
      :room_id,
      :member,
      :role,
      :invited_by,
      :updated_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RoomMembershipRole
    #
    module RoomMembershipRole
      # No documentation available.
      #
      Administrator = "Administrator"

      # No documentation available.
      #
      Member = "Member"
    end

    # <p>The retention settings that determine how long to retain chat-room messages for an Amazon Chime Enterprise account.</p>
    #
    # @!attribute retention_days
    #   <p>The number of days for which to retain chat-room messages.</p>
    #
    #   @return [Integer]
    #
    RoomRetentionSettings = ::Struct.new(
      :retention_days,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute area_code
    #   <p>The area code used to filter results. Only applies to the US.</p>
    #
    #   @return [String]
    #
    # @!attribute city
    #   <p>The city used to filter results. Only applies to the US.</p>
    #
    #   @return [String]
    #
    # @!attribute country
    #   <p>The country used to filter results. Defaults to the US Format: ISO 3166-1 alpha-2.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state used to filter results. Required only if you provide <code>City</code>. Only applies to the US.</p>
    #
    #   @return [String]
    #
    # @!attribute toll_free_prefix
    #   <p>The toll-free prefix that you use to filter results. Only applies to the US.</p>
    #
    #   @return [String]
    #
    # @!attribute phone_number_type
    #   <p>The phone number type used to filter results. Required for non-US numbers.</p>
    #
    #   Enum, one of: ["Local", "TollFree"]
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token used to retrieve the next page of results.</p>
    #
    #   @return [String]
    #
    SearchAvailablePhoneNumbersInput = ::Struct.new(
      :area_code,
      :city,
      :country,
      :state,
      :toll_free_prefix,
      :phone_number_type,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute e164_phone_numbers
    #   <p>List of phone numbers, in E.164 format.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The token used to retrieve the next page of search results.</p>
    #
    #   @return [String]
    #
    SearchAvailablePhoneNumbersOutput = ::Struct.new(
      :e164_phone_numbers,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The video streams to capture for a specified media capture pipeline. The total number of video streams can't exceed 25.</p>
    #
    # @!attribute attendee_ids
    #   <p>The attendee IDs of the streams selected for a media capture pipeline. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute external_user_ids
    #   <p>The external user IDs of the streams selected for a media capture pipeline.</p>
    #
    #   @return [Array<String>]
    #
    SelectedVideoStreams = ::Struct.new(
      :attendee_ids,
      :external_user_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
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
    SendChannelMessageInput = ::Struct.new(
      :channel_arn,
      :content,
      :type,
      :persistence,
      :metadata,
      :client_request_token,
      :chime_bearer,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Chime::Types::SendChannelMessageInput "\
          "channel_arn=#{channel_arn || 'nil'}, "\
          "content=\"[SENSITIVE]\", "\
          "type=#{type || 'nil'}, "\
          "persistence=#{persistence || 'nil'}, "\
          "metadata=\"[SENSITIVE]\", "\
          "client_request_token=\"[SENSITIVE]\", "\
          "chime_bearer=#{chime_bearer || 'nil'}>"
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
    SendChannelMessageOutput = ::Struct.new(
      :channel_arn,
      :message_id,
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

    # <p>An Active Directory (AD) group whose members are granted permission to act as delegates.</p>
    #
    # @!attribute group_name
    #   <p>The group name.</p>
    #
    #   @return [String]
    #
    SigninDelegateGroup = ::Struct.new(
      :group_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The details of the SIP media application, including name and endpoints. An AWS account can have multiple SIP media applications.</p>
    #
    # @!attribute sip_media_application_id
    #   <p>The SIP media application ID.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_region
    #   <p>The AWS Region in which the SIP media application is created.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the SIP media application.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoints
    #   <p>List of endpoints for SIP media application. Currently, only one endpoint per SIP media application is permitted.</p>
    #
    #   @return [Array<SipMediaApplicationEndpoint>]
    #
    # @!attribute created_timestamp
    #   <p>The SIP media application creation timestamp, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    # @!attribute updated_timestamp
    #   <p>The SIP media application updated timestamp, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    SipMediaApplication = ::Struct.new(
      :sip_media_application_id,
      :aws_region,
      :name,
      :endpoints,
      :created_timestamp,
      :updated_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A <code>Call</code> instance for a SIP media application.</p>
    #
    # @!attribute transaction_id
    #   <p>The transaction ID of a call.</p>
    #
    #   @return [String]
    #
    SipMediaApplicationCall = ::Struct.new(
      :transaction_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The endpoint assigned to the SIP media application.</p>
    #
    # @!attribute lambda_arn
    #   <p>Valid Amazon Resource Name (ARN) of the Lambda function. The function must be created in the same AWS Region as the SIP media application.</p>
    #
    #   @return [String]
    #
    SipMediaApplicationEndpoint = ::Struct.new(
      :lambda_arn,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Chime::Types::SipMediaApplicationEndpoint "\
          "lambda_arn=\"[SENSITIVE]\">"
      end
    end

    # <p>Logging configuration of the SIP media application.</p>
    #
    # @!attribute enable_sip_media_application_message_logs
    #   <p>Enables application message logs for the SIP media application.</p>
    #
    #   @return [Boolean]
    #
    SipMediaApplicationLoggingConfiguration = ::Struct.new(
      :enable_sip_media_application_message_logs,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The SIP rule details, including name, triggers, and target applications. An AWS account can have multiple SIP rules.</p>
    #
    # @!attribute sip_rule_id
    #   <p>The SIP rule ID.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the SIP rule.</p>
    #
    #   @return [String]
    #
    # @!attribute disabled
    #   <p>Indicates whether the SIP rule is enabled or disabled. You must disable a rule before you can delete it.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute trigger_type
    #   <p>The type of trigger assigned to the SIP rule in <code>TriggerValue</code>, currently <code>RequestUriHostname</code> or
    #           <code>ToPhoneNumber</code>.</p>
    #
    #   Enum, one of: ["ToPhoneNumber", "RequestUriHostname"]
    #
    #   @return [String]
    #
    # @!attribute trigger_value
    #   <p>If <code>TriggerType</code> is <code>RequestUriHostname</code>, then the value can be the
    #               outbound host name of the Amazon Chime Voice Connector. If <code>TriggerType</code> is
    #                   <code>ToPhoneNumber</code>, then the value can be a customer-owned phone number in
    #               E164 format. <code>SipRule</code> is triggered when a SIP rule requests host name or
    #                   <code>ToPhoneNumber</code> matches in the incoming SIP request.</p>
    #
    #   @return [String]
    #
    # @!attribute target_applications
    #   <p>Target SIP media application and other details, such as priority and AWS Region, to be
    #               specified in the SIP rule. Only one SIP rule per AWS Region can be provided.</p>
    #
    #   @return [Array<SipRuleTargetApplication>]
    #
    # @!attribute created_timestamp
    #   <p>The time at which the SIP rule was created, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    # @!attribute updated_timestamp
    #   <p>The time at which the SIP rule was last updated, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    SipRule = ::Struct.new(
      :sip_rule_id,
      :name,
      :disabled,
      :trigger_type,
      :trigger_value,
      :target_applications,
      :created_timestamp,
      :updated_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Target SIP media application and other details, such as priority and AWS Region, to be
    #             specified in the SIP rule. Only one SIP rule per AWS Region can be provided.</p>
    #
    # @!attribute sip_media_application_id
    #   <p>The SIP media application ID.</p>
    #
    #   @return [String]
    #
    # @!attribute priority
    #   <p>Priority of the SIP media application in the target list.</p>
    #
    #   @return [Integer]
    #
    # @!attribute aws_region
    #   <p>The AWS Region of the target application.</p>
    #
    #   @return [String]
    #
    SipRuleTargetApplication = ::Struct.new(
      :sip_media_application_id,
      :priority,
      :aws_region,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SipRuleTriggerType
    #
    module SipRuleTriggerType
      # No documentation available.
      #
      ToPhoneNumber = "ToPhoneNumber"

      # No documentation available.
      #
      RequestUriHostname = "RequestUriHostname"
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

    # <p>Source configuration for a specified media capture pipeline.</p>
    #
    # @!attribute selected_video_streams
    #   <p>The selected video streams to capture for a specified media capture pipeline. The number of video streams can't exceed 25.</p>
    #
    #   @return [SelectedVideoStreams]
    #
    SourceConfiguration = ::Struct.new(
      :selected_video_streams,
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
    #   <p>The configuration for the current transcription operation. Must contain <code>EngineTranscribeSettings</code> or <code>EngineTranscribeMedicalSettings</code>.</p>
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

    # <p>The streaming configuration associated with an Amazon Chime Voice Connector. Specifies whether
    #             media streaming is enabled for sending to Amazon Kinesis, and shows the retention period
    #             for the Amazon Kinesis data, in hours.</p>
    #
    # @!attribute data_retention_in_hours
    #   <p>The retention period, in hours, for the Amazon Kinesis data.</p>
    #
    #   @return [Integer]
    #
    # @!attribute disabled
    #   <p>When true, media streaming to Amazon Kinesis is turned off.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute streaming_notification_targets
    #   <p>The streaming notification targets.</p>
    #
    #   @return [Array<StreamingNotificationTarget>]
    #
    StreamingConfiguration = ::Struct.new(
      :data_retention_in_hours,
      :disabled,
      :streaming_notification_targets,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The targeted recipient for a streaming configuration notification.</p>
    #
    # @!attribute notification_target
    #   <p>The streaming notification target.</p>
    #
    #   Enum, one of: ["EventBridge", "SNS", "SQS"]
    #
    #   @return [String]
    #
    StreamingNotificationTarget = ::Struct.new(
      :notification_target,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a tag applied to a resource.</p>
    #
    # @!attribute key
    #   <p>The key of the tag.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the tag.</p>
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
        "#<struct AWS::SDK::Chime::Types::Tag "\
          "key=\"[SENSITIVE]\", "\
          "value=\"[SENSITIVE]\">"
      end
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
    # @!attribute tags
    #   <p>The tag key-value pairs.</p>
    #
    #   @return [Array<Tag>]
    #
    TagAttendeeInput = ::Struct.new(
      :meeting_id,
      :attendee_id,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    TagAttendeeOutput = ::Struct.new(
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
    # @!attribute tags
    #   <p>The tag key-value pairs.</p>
    #
    #   @return [Array<Tag>]
    #
    TagMeetingInput = ::Struct.new(
      :meeting_id,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    TagMeetingOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
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

      def to_s
        "#<struct AWS::SDK::Chime::Types::TagResourceInput "\
          "resource_arn=\"[SENSITIVE]\", "\
          "tags=#{tags || 'nil'}>"
      end
    end

    TagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Settings that allow management of telephony permissions for an Amazon Chime user, such as
    #             inbound and outbound calling and text messaging.</p>
    #
    # @!attribute inbound_calling
    #   <p>Allows or denies inbound calling.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute outbound_calling
    #   <p>Allows or denies outbound calling.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute sms
    #   <p>Allows or denies SMS messaging.</p>
    #
    #   @return [Boolean]
    #
    TelephonySettings = ::Struct.new(
      :inbound_calling,
      :outbound_calling,
      :sms,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Termination settings enable your SIP hosts to make outbound calls using your Amazon Chime
    #             Voice Connector.</p>
    #
    # @!attribute cps_limit
    #   <p>The limit on calls per second. Max value based on account service quota. Default value of
    #               1.</p>
    #
    #   @return [Integer]
    #
    # @!attribute default_phone_number
    #   <p>The default caller ID phone number.</p>
    #
    #   @return [String]
    #
    # @!attribute calling_regions
    #   <p>The countries to which calls are allowed, in ISO 3166-1 alpha-2 format. Required.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute cidr_allowed_list
    #   <p>The IP addresses allowed to make calls, in CIDR format. Required.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute disabled
    #   <p>When termination settings are disabled, outbound calls can not be made.</p>
    #
    #   @return [Boolean]
    #
    Termination = ::Struct.new(
      :cps_limit,
      :default_phone_number,
      :calling_regions,
      :cidr_allowed_list,
      :disabled,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Chime::Types::Termination "\
          "cps_limit=#{cps_limit || 'nil'}, "\
          "default_phone_number=\"[SENSITIVE]\", "\
          "calling_regions=#{calling_regions || 'nil'}, "\
          "cidr_allowed_list=#{cidr_allowed_list || 'nil'}, "\
          "disabled=#{disabled || 'nil'}>"
      end
    end

    # <p>The termination health details, including the source IP address and timestamp of the last
    #             successful SIP <code>OPTIONS</code> message from your SIP infrastructure.</p>
    #
    # @!attribute timestamp
    #   <p>The timestamp, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    # @!attribute source
    #   <p>The source IP address.</p>
    #
    #   @return [String]
    #
    TerminationHealth = ::Struct.new(
      :timestamp,
      :source,
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
      PrimaryCare = "PRIMARYCARE"

      # No documentation available.
      #
      Cardiology = "CARDIOLOGY"

      # No documentation available.
      #
      Neurology = "NEUROLOGY"

      # No documentation available.
      #
      Oncology = "ONCOLOGY"

      # No documentation available.
      #
      Radiology = "RADIOLOGY"

      # No documentation available.
      #
      Urology = "UROLOGY"
    end

    # Includes enum constants for TranscribeMedicalType
    #
    module TranscribeMedicalType
      # No documentation available.
      #
      Conversation = "CONVERSATION"

      # No documentation available.
      #
      Dictation = "DICTATION"
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
    end

    # Includes enum constants for TranscribeVocabularyFilterMethod
    #
    module TranscribeVocabularyFilterMethod
      # No documentation available.
      #
      Remove = "remove"

      # No documentation available.
      #
      Mask = "mask"

      # No documentation available.
      #
      Tag = "tag"
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

    # <p>The request was well-formed but was unable to be followed due to semantic errors.</p>
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
    UnprocessableEntityException = ::Struct.new(
      :code,
      :message,
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
    # @!attribute tag_keys
    #   <p>The tag keys.</p>
    #
    #   @return [Array<String>]
    #
    UntagAttendeeInput = ::Struct.new(
      :meeting_id,
      :attendee_id,
      :tag_keys,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UntagAttendeeOutput = ::Struct.new(
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
    # @!attribute tag_keys
    #   <p>The tag keys.</p>
    #
    #   @return [Array<String>]
    #
    UntagMeetingInput = ::Struct.new(
      :meeting_id,
      :tag_keys,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UntagMeetingOutput = ::Struct.new(
      nil,
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

      def to_s
        "#<struct AWS::SDK::Chime::Types::UntagResourceInput "\
          "resource_arn=\"[SENSITIVE]\", "\
          "tag_keys=#{tag_keys || 'nil'}>"
      end
    end

    UntagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The new name for the specified Amazon Chime account.</p>
    #
    #   @return [String]
    #
    # @!attribute default_license
    #   <p>The default license applied when you add users to an Amazon Chime account.</p>
    #
    #   Enum, one of: ["Basic", "Plus", "Pro", "ProTrial"]
    #
    #   @return [String]
    #
    UpdateAccountInput = ::Struct.new(
      :account_id,
      :name,
      :default_license,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account
    #   <p>The updated Amazon Chime account details.</p>
    #
    #   @return [Account]
    #
    UpdateAccountOutput = ::Struct.new(
      :account,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute account_settings
    #   <p>The Amazon Chime account settings to update.</p>
    #
    #   @return [AccountSettings]
    #
    UpdateAccountSettingsInput = ::Struct.new(
      :account_id,
      :account_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateAccountSettingsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name that you want to change.</p>
    #
    #   @return [String]
    #
    # @!attribute metadata
    #   <p>The metadata that you want to change.</p>
    #
    #   @return [String]
    #
    UpdateAppInstanceInput = ::Struct.new(
      :app_instance_arn,
      :name,
      :metadata,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Chime::Types::UpdateAppInstanceInput "\
          "app_instance_arn=#{app_instance_arn || 'nil'}, "\
          "name=\"[SENSITIVE]\", "\
          "metadata=\"[SENSITIVE]\">"
      end
    end

    # @!attribute app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>. </p>
    #
    #   @return [String]
    #
    UpdateAppInstanceOutput = ::Struct.new(
      :app_instance_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_instance_user_arn
    #   <p>The ARN of the <code>AppInstanceUser</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the <code>AppInstanceUser</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute metadata
    #   <p>The metadata of the <code>AppInstanceUser</code>.</p>
    #
    #   @return [String]
    #
    UpdateAppInstanceUserInput = ::Struct.new(
      :app_instance_user_arn,
      :name,
      :metadata,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Chime::Types::UpdateAppInstanceUserInput "\
          "app_instance_user_arn=#{app_instance_user_arn || 'nil'}, "\
          "name=\"[SENSITIVE]\", "\
          "metadata=\"[SENSITIVE]\">"
      end
    end

    # @!attribute app_instance_user_arn
    #   <p>The ARN of the <code>AppInstanceUser</code>.</p>
    #
    #   @return [String]
    #
    UpdateAppInstanceUserOutput = ::Struct.new(
      :app_instance_user_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute bot_id
    #   <p>The bot ID.</p>
    #
    #   @return [String]
    #
    # @!attribute disabled
    #   <p>When true, stops the specified bot from running in your account.</p>
    #
    #   @return [Boolean]
    #
    UpdateBotInput = ::Struct.new(
      :account_id,
      :bot_id,
      :disabled,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bot
    #   <p>The updated bot details.</p>
    #
    #   @return [Bot]
    #
    UpdateBotOutput = ::Struct.new(
      :bot,
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
        "#<struct AWS::SDK::Chime::Types::UpdateChannelInput "\
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
        "#<struct AWS::SDK::Chime::Types::UpdateChannelMessageInput "\
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
    UpdateChannelMessageOutput = ::Struct.new(
      :channel_arn,
      :message_id,
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

    # @!attribute business_calling
    #   <p>The Amazon Chime Business Calling settings.</p>
    #
    #   @return [BusinessCallingSettings]
    #
    # @!attribute voice_connector
    #   <p>The Amazon Chime Voice Connector settings.</p>
    #
    #   @return [VoiceConnectorSettings]
    #
    UpdateGlobalSettingsInput = ::Struct.new(
      :business_calling,
      :voice_connector,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateGlobalSettingsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute phone_number_id
    #   <p>The phone number ID.</p>
    #
    #   @return [String]
    #
    # @!attribute product_type
    #   <p>The product type.</p>
    #
    #   Enum, one of: ["BusinessCalling", "VoiceConnector", "SipMediaApplicationDialIn"]
    #
    #   @return [String]
    #
    # @!attribute calling_name
    #   <p>The outbound calling name associated with the phone number.</p>
    #
    #   @return [String]
    #
    UpdatePhoneNumberInput = ::Struct.new(
      :phone_number_id,
      :product_type,
      :calling_name,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Chime::Types::UpdatePhoneNumberInput "\
          "phone_number_id=#{phone_number_id || 'nil'}, "\
          "product_type=#{product_type || 'nil'}, "\
          "calling_name=\"[SENSITIVE]\">"
      end
    end

    # @!attribute phone_number
    #   <p>The updated phone number details.</p>
    #
    #   @return [PhoneNumber]
    #
    UpdatePhoneNumberOutput = ::Struct.new(
      :phone_number,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The phone number ID, product type, or calling name fields to update, used with the
    # <a>BatchUpdatePhoneNumber</a> and <a>UpdatePhoneNumber</a> actions.</p>
    #
    # @!attribute phone_number_id
    #   <p>The phone number ID to update.</p>
    #
    #   @return [String]
    #
    # @!attribute product_type
    #   <p>The product type to update.</p>
    #
    #   Enum, one of: ["BusinessCalling", "VoiceConnector", "SipMediaApplicationDialIn"]
    #
    #   @return [String]
    #
    # @!attribute calling_name
    #   <p>The outbound calling name to update.</p>
    #
    #   @return [String]
    #
    UpdatePhoneNumberRequestItem = ::Struct.new(
      :phone_number_id,
      :product_type,
      :calling_name,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Chime::Types::UpdatePhoneNumberRequestItem "\
          "phone_number_id=#{phone_number_id || 'nil'}, "\
          "product_type=#{product_type || 'nil'}, "\
          "calling_name=\"[SENSITIVE]\">"
      end
    end

    # @!attribute calling_name
    #   <p>The default outbound calling name for the account.</p>
    #
    #   @return [String]
    #
    UpdatePhoneNumberSettingsInput = ::Struct.new(
      :calling_name,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Chime::Types::UpdatePhoneNumberSettingsInput "\
          "calling_name=\"[SENSITIVE]\">"
      end
    end

    UpdatePhoneNumberSettingsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute voice_connector_id
    #   <p>The Amazon Chime voice connector ID.</p>
    #
    #   @return [String]
    #
    # @!attribute proxy_session_id
    #   <p>The proxy session ID.</p>
    #
    #   @return [String]
    #
    # @!attribute capabilities
    #   <p>The proxy session capabilities.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute expiry_minutes
    #   <p>The number of minutes allowed for the proxy session.</p>
    #
    #   @return [Integer]
    #
    UpdateProxySessionInput = ::Struct.new(
      :voice_connector_id,
      :proxy_session_id,
      :capabilities,
      :expiry_minutes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute proxy_session
    #   <p>The proxy session details.</p>
    #
    #   @return [ProxySession]
    #
    UpdateProxySessionOutput = ::Struct.new(
      :proxy_session,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute room_id
    #   <p>The room ID.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The room name.</p>
    #
    #   @return [String]
    #
    UpdateRoomInput = ::Struct.new(
      :account_id,
      :room_id,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Chime::Types::UpdateRoomInput "\
          "account_id=#{account_id || 'nil'}, "\
          "room_id=#{room_id || 'nil'}, "\
          "name=\"[SENSITIVE]\">"
      end
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute room_id
    #   <p>The room ID.</p>
    #
    #   @return [String]
    #
    # @!attribute member_id
    #   <p>The member ID.</p>
    #
    #   @return [String]
    #
    # @!attribute role
    #   <p>The role of the member.</p>
    #
    #   Enum, one of: ["Administrator", "Member"]
    #
    #   @return [String]
    #
    UpdateRoomMembershipInput = ::Struct.new(
      :account_id,
      :room_id,
      :member_id,
      :role,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute room_membership
    #   <p>The room membership details.</p>
    #
    #   @return [RoomMembership]
    #
    UpdateRoomMembershipOutput = ::Struct.new(
      :room_membership,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute room
    #   <p>The room details.</p>
    #
    #   @return [Room]
    #
    UpdateRoomOutput = ::Struct.new(
      :room,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute sip_media_application_id
    #   <p>The ID of the SIP media application handling the call.</p>
    #
    #   @return [String]
    #
    # @!attribute transaction_id
    #   <p>The ID of the call transaction.</p>
    #
    #   @return [String]
    #
    # @!attribute arguments
    #   <p>Arguments made available to the Lambda function as part of the <code>CALL_UPDATE_REQUESTED</code> event. Can contain 0-20 key-value pairs.</p>
    #
    #   @return [Hash<String, String>]
    #
    UpdateSipMediaApplicationCallInput = ::Struct.new(
      :sip_media_application_id,
      :transaction_id,
      :arguments,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute sip_media_application_call
    #   <p>A <code>Call</code> instance for a SIP media application.</p>
    #
    #   @return [SipMediaApplicationCall]
    #
    UpdateSipMediaApplicationCallOutput = ::Struct.new(
      :sip_media_application_call,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute sip_media_application_id
    #   <p>The SIP media application ID.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The new name for the specified SIP media application.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoints
    #   <p>The new set of endpoints for the specified SIP media application.</p>
    #
    #   @return [Array<SipMediaApplicationEndpoint>]
    #
    UpdateSipMediaApplicationInput = ::Struct.new(
      :sip_media_application_id,
      :name,
      :endpoints,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute sip_media_application
    #   <p>The updated SIP media application details.</p>
    #
    #   @return [SipMediaApplication]
    #
    UpdateSipMediaApplicationOutput = ::Struct.new(
      :sip_media_application,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute sip_rule_id
    #   <p>The SIP rule ID.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The new name for the specified SIP rule.</p>
    #
    #   @return [String]
    #
    # @!attribute disabled
    #   <p>The new value specified to indicate whether the rule is disabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute target_applications
    #   <p>The new value of the list of target applications.</p>
    #
    #   @return [Array<SipRuleTargetApplication>]
    #
    UpdateSipRuleInput = ::Struct.new(
      :sip_rule_id,
      :name,
      :disabled,
      :target_applications,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute sip_rule
    #   <p>Updated SIP rule details.</p>
    #
    #   @return [SipRule]
    #
    UpdateSipRuleOutput = ::Struct.new(
      :sip_rule,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute user_id
    #   <p>The user ID.</p>
    #
    #   @return [String]
    #
    # @!attribute license_type
    #   <p>The user license type to update. This must be a supported license type for the Amazon Chime
    #               account that the user belongs to.</p>
    #
    #   Enum, one of: ["Basic", "Plus", "Pro", "ProTrial"]
    #
    #   @return [String]
    #
    # @!attribute user_type
    #   <p>The user type.</p>
    #
    #   Enum, one of: ["PrivateUser", "SharedDevice"]
    #
    #   @return [String]
    #
    # @!attribute alexa_for_business_metadata
    #   <p>The Alexa for Business metadata.</p>
    #
    #   @return [AlexaForBusinessMetadata]
    #
    UpdateUserInput = ::Struct.new(
      :account_id,
      :user_id,
      :license_type,
      :user_type,
      :alexa_for_business_metadata,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user
    #   <p>The updated user details.</p>
    #
    #   @return [User]
    #
    UpdateUserOutput = ::Struct.new(
      :user,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The user ID and user fields to update, used with the
    # <a>BatchUpdateUser</a> action.</p>
    #
    # @!attribute user_id
    #   <p>The user ID.</p>
    #
    #   @return [String]
    #
    # @!attribute license_type
    #   <p>The user license type.</p>
    #
    #   Enum, one of: ["Basic", "Plus", "Pro", "ProTrial"]
    #
    #   @return [String]
    #
    # @!attribute user_type
    #   <p>The user type.</p>
    #
    #   Enum, one of: ["PrivateUser", "SharedDevice"]
    #
    #   @return [String]
    #
    # @!attribute alexa_for_business_metadata
    #   <p>The Alexa for Business metadata.</p>
    #
    #   @return [AlexaForBusinessMetadata]
    #
    UpdateUserRequestItem = ::Struct.new(
      :user_id,
      :license_type,
      :user_type,
      :alexa_for_business_metadata,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute user_id
    #   <p>The user ID.</p>
    #
    #   @return [String]
    #
    # @!attribute user_settings
    #   <p>The user settings to update.</p>
    #
    #   @return [UserSettings]
    #
    UpdateUserSettingsInput = ::Struct.new(
      :account_id,
      :user_id,
      :user_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateUserSettingsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute voice_connector_group_id
    #   <p>The Amazon Chime Voice Connector group ID.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the Amazon Chime Voice Connector group.</p>
    #
    #   @return [String]
    #
    # @!attribute voice_connector_items
    #   <p>The <code>VoiceConnectorItems</code> to associate with the group.</p>
    #
    #   @return [Array<VoiceConnectorItem>]
    #
    UpdateVoiceConnectorGroupInput = ::Struct.new(
      :voice_connector_group_id,
      :name,
      :voice_connector_items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute voice_connector_group
    #   <p>The updated Amazon Chime Voice Connector group details.</p>
    #
    #   @return [VoiceConnectorGroup]
    #
    UpdateVoiceConnectorGroupOutput = ::Struct.new(
      :voice_connector_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute voice_connector_id
    #   <p>The Amazon Chime Voice Connector ID.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the Amazon Chime Voice Connector.</p>
    #
    #   @return [String]
    #
    # @!attribute require_encryption
    #   <p>When enabled, requires encryption for the Amazon Chime Voice Connector.</p>
    #
    #   @return [Boolean]
    #
    UpdateVoiceConnectorInput = ::Struct.new(
      :voice_connector_id,
      :name,
      :require_encryption,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute voice_connector
    #   <p>The updated Amazon Chime Voice Connector details.</p>
    #
    #   @return [VoiceConnector]
    #
    UpdateVoiceConnectorOutput = ::Struct.new(
      :voice_connector,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The user on the Amazon Chime account.</p>
    #
    # @!attribute user_id
    #   <p>The user ID.</p>
    #
    #   @return [String]
    #
    # @!attribute account_id
    #   <p>The Amazon Chime account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute primary_email
    #   <p>The primary email address of the user.</p>
    #
    #   @return [String]
    #
    # @!attribute primary_provisioned_number
    #   <p>The primary phone number associated with the user.</p>
    #
    #   @return [String]
    #
    # @!attribute display_name
    #   <p>The display name of the user.</p>
    #
    #   @return [String]
    #
    # @!attribute license_type
    #   <p>The license type for the user.</p>
    #
    #   Enum, one of: ["Basic", "Plus", "Pro", "ProTrial"]
    #
    #   @return [String]
    #
    # @!attribute user_type
    #   <p>The user type.</p>
    #
    #   Enum, one of: ["PrivateUser", "SharedDevice"]
    #
    #   @return [String]
    #
    # @!attribute user_registration_status
    #   <p>The user registration status.</p>
    #
    #   Enum, one of: ["Unregistered", "Registered", "Suspended"]
    #
    #   @return [String]
    #
    # @!attribute user_invitation_status
    #   <p>The user invite status.</p>
    #
    #   Enum, one of: ["Pending", "Accepted", "Failed"]
    #
    #   @return [String]
    #
    # @!attribute registered_on
    #   <p>Date and time when the user is registered, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    # @!attribute invited_on
    #   <p>Date and time when the user is invited to the Amazon Chime account, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    # @!attribute alexa_for_business_metadata
    #   <p>The Alexa for Business metadata.</p>
    #
    #   @return [AlexaForBusinessMetadata]
    #
    # @!attribute personal_pin
    #   <p>The user's personal meeting PIN.</p>
    #
    #   @return [String]
    #
    User = ::Struct.new(
      :user_id,
      :account_id,
      :primary_email,
      :primary_provisioned_number,
      :display_name,
      :license_type,
      :user_type,
      :user_registration_status,
      :user_invitation_status,
      :registered_on,
      :invited_on,
      :alexa_for_business_metadata,
      :personal_pin,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Chime::Types::User "\
          "user_id=#{user_id || 'nil'}, "\
          "account_id=#{account_id || 'nil'}, "\
          "primary_email=\"[SENSITIVE]\", "\
          "primary_provisioned_number=\"[SENSITIVE]\", "\
          "display_name=\"[SENSITIVE]\", "\
          "license_type=#{license_type || 'nil'}, "\
          "user_type=#{user_type || 'nil'}, "\
          "user_registration_status=#{user_registration_status || 'nil'}, "\
          "user_invitation_status=#{user_invitation_status || 'nil'}, "\
          "registered_on=#{registered_on || 'nil'}, "\
          "invited_on=#{invited_on || 'nil'}, "\
          "alexa_for_business_metadata=#{alexa_for_business_metadata || 'nil'}, "\
          "personal_pin=#{personal_pin || 'nil'}>"
      end
    end

    # <p>The list of errors returned when errors are encountered during the <a>BatchSuspendUser</a>, <a>BatchUnsuspendUser</a>, or
    #     <a>BatchUpdateUser</a> actions. This includes user IDs, error codes, and error messages.</p>
    #
    # @!attribute user_id
    #   <p>The user ID for which the action failed.</p>
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
    UserError = ::Struct.new(
      :user_id,
      :error_code,
      :error_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Settings associated with an Amazon Chime user, including inbound and outbound calling and text
    #             messaging.</p>
    #
    # @!attribute telephony
    #   <p>The telephony settings associated with the user.</p>
    #
    #   @return [TelephonySettings]
    #
    UserSettings = ::Struct.new(
      :telephony,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for UserType
    #
    module UserType
      # No documentation available.
      #
      PrivateUser = "PrivateUser"

      # No documentation available.
      #
      SharedDevice = "SharedDevice"
    end

    # <p>The video artifact configuration object.</p>
    #
    # @!attribute state
    #   <p>Indicates whether the video artifact is enabled or disabled.</p>
    #
    #   Enum, one of: ["Enabled", "Disabled"]
    #
    #   @return [String]
    #
    # @!attribute mux_type
    #   <p>The MUX type of the video artifact configuration object.</p>
    #
    #   Enum, one of: ["VideoOnly"]
    #
    #   @return [String]
    #
    VideoArtifactsConfiguration = ::Struct.new(
      :state,
      :mux_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for VideoMuxType
    #
    module VideoMuxType
      # No documentation available.
      #
      VideoOnly = "VideoOnly"
    end

    # <p>The Amazon Chime Voice Connector configuration, including outbound host name and encryption
    #             settings.</p>
    #
    # @!attribute voice_connector_id
    #   <p>The Amazon Chime Voice Connector ID.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_region
    #   <p>
    #   The AWS Region in which the Amazon Chime Voice Connector is created. Default:
    #   <code>us-east-1</code>.
    #   </p>
    #
    #   Enum, one of: ["us-east-1", "us-west-2"]
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the Amazon Chime Voice Connector.</p>
    #
    #   @return [String]
    #
    # @!attribute outbound_host_name
    #   <p>The outbound host name for the Amazon Chime Voice Connector.</p>
    #
    #   @return [String]
    #
    # @!attribute require_encryption
    #   <p>Designates whether encryption is required for the Amazon Chime Voice Connector.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute created_timestamp
    #   <p>The Amazon Chime Voice Connector creation timestamp, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    # @!attribute updated_timestamp
    #   <p>The updated Amazon Chime Voice Connector timestamp, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    # @!attribute voice_connector_arn
    #   <p>The ARN of the specified Amazon Chime Voice Connector.</p>
    #
    #   @return [String]
    #
    VoiceConnector = ::Struct.new(
      :voice_connector_id,
      :aws_region,
      :name,
      :outbound_host_name,
      :require_encryption,
      :created_timestamp,
      :updated_timestamp,
      :voice_connector_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for VoiceConnectorAwsRegion
    #
    module VoiceConnectorAwsRegion
      # No documentation available.
      #
      US_EAST_1 = "us-east-1"

      # No documentation available.
      #
      US_WEST_2 = "us-west-2"
    end

    # <p>The Amazon Chime Voice Connector group configuration, including associated Amazon Chime Voice
    #             Connectors. You can include Amazon Chime Voice Connectors from different AWS Regions in
    #             your group. This creates a fault tolerant mechanism for fallback in case of availability
    #             events.</p>
    #
    # @!attribute voice_connector_group_id
    #   <p>The Amazon Chime Voice Connector group ID.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the Amazon Chime Voice Connector group.</p>
    #
    #   @return [String]
    #
    # @!attribute voice_connector_items
    #   <p>The Amazon Chime Voice Connectors to which to route inbound calls.</p>
    #
    #   @return [Array<VoiceConnectorItem>]
    #
    # @!attribute created_timestamp
    #   <p>The Amazon Chime Voice Connector group creation time stamp, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    # @!attribute updated_timestamp
    #   <p>The updated Amazon Chime Voice Connector group time stamp, in ISO 8601 format.</p>
    #
    #   @return [Time]
    #
    # @!attribute voice_connector_group_arn
    #   <p>The ARN of the specified Amazon Chime Voice Connector group.</p>
    #
    #   @return [String]
    #
    VoiceConnectorGroup = ::Struct.new(
      :voice_connector_group_id,
      :name,
      :voice_connector_items,
      :created_timestamp,
      :updated_timestamp,
      :voice_connector_group_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>For Amazon Chime Voice Connector groups, the Amazon Chime Voice Connectors to which to route inbound calls. Includes priority configuration settings. Limit: 3
    # <code>VoiceConnectorItems</code>
    # per Amazon Chime Voice Connector group.</p>
    #
    # @!attribute voice_connector_id
    #   <p>The Amazon Chime Voice Connector ID.</p>
    #
    #   @return [String]
    #
    # @!attribute priority
    #   <p>The priority associated with the Amazon Chime Voice Connector, with 1 being the highest priority. Higher priority Amazon Chime Voice Connectors are attempted first.</p>
    #
    #   @return [Integer]
    #
    VoiceConnectorItem = ::Struct.new(
      :voice_connector_id,
      :priority,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The Amazon Chime Voice Connector settings. Includes any Amazon S3 buckets designated for
    #             storing call detail records.</p>
    #
    # @!attribute cdr_bucket
    #   <p>The Amazon S3 bucket designated for call detail record storage.</p>
    #
    #   @return [String]
    #
    VoiceConnectorSettings = ::Struct.new(
      :cdr_bucket,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
