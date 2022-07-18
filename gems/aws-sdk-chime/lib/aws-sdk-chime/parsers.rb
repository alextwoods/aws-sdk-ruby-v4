# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Chime
  module Parsers

    # Operation Parser for AssociatePhoneNumberWithUser
    class AssociatePhoneNumberWithUser
      def self.parse(http_resp)
        data = Types::AssociatePhoneNumberWithUserOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for ServiceFailureException
    class ServiceFailureException
      def self.parse(http_resp)
        data = Types::ServiceFailureException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['Code']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for BadRequestException
    class BadRequestException
      def self.parse(http_resp)
        data = Types::BadRequestException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['Code']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for NotFoundException
    class NotFoundException
      def self.parse(http_resp)
        data = Types::NotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['Code']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['Code']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for UnauthorizedClientException
    class UnauthorizedClientException
      def self.parse(http_resp)
        data = Types::UnauthorizedClientException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['Code']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ThrottledClientException
    class ThrottledClientException
      def self.parse(http_resp)
        data = Types::ThrottledClientException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['Code']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ServiceUnavailableException
    class ServiceUnavailableException
      def self.parse(http_resp)
        data = Types::ServiceUnavailableException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['Code']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ForbiddenException
    class ForbiddenException
      def self.parse(http_resp)
        data = Types::ForbiddenException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['Code']
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for AssociatePhoneNumbersWithVoiceConnector
    class AssociatePhoneNumbersWithVoiceConnector
      def self.parse(http_resp)
        data = Types::AssociatePhoneNumbersWithVoiceConnectorOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.phone_number_errors = (Parsers::PhoneNumberErrorList.parse(map['PhoneNumberErrors']) unless map['PhoneNumberErrors'].nil?)
        data
      end
    end

    class PhoneNumberErrorList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::PhoneNumberError.parse(value) unless value.nil?
        end
        data
      end
    end

    class PhoneNumberError
      def self.parse(map)
        data = Types::PhoneNumberError.new
        data.phone_number_id = map['PhoneNumberId']
        data.error_code = map['ErrorCode']
        data.error_message = map['ErrorMessage']
        return data
      end
    end

    # Operation Parser for AssociatePhoneNumbersWithVoiceConnectorGroup
    class AssociatePhoneNumbersWithVoiceConnectorGroup
      def self.parse(http_resp)
        data = Types::AssociatePhoneNumbersWithVoiceConnectorGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.phone_number_errors = (Parsers::PhoneNumberErrorList.parse(map['PhoneNumberErrors']) unless map['PhoneNumberErrors'].nil?)
        data
      end
    end

    # Operation Parser for AssociateSigninDelegateGroupsWithAccount
    class AssociateSigninDelegateGroupsWithAccount
      def self.parse(http_resp)
        data = Types::AssociateSigninDelegateGroupsWithAccountOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for BatchCreateAttendee
    class BatchCreateAttendee
      def self.parse(http_resp)
        data = Types::BatchCreateAttendeeOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.attendees = (Parsers::AttendeeList.parse(map['Attendees']) unless map['Attendees'].nil?)
        data.errors = (Parsers::BatchCreateAttendeeErrorList.parse(map['Errors']) unless map['Errors'].nil?)
        data
      end
    end

    class BatchCreateAttendeeErrorList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::CreateAttendeeError.parse(value) unless value.nil?
        end
        data
      end
    end

    class CreateAttendeeError
      def self.parse(map)
        data = Types::CreateAttendeeError.new
        data.external_user_id = map['ExternalUserId']
        data.error_code = map['ErrorCode']
        data.error_message = map['ErrorMessage']
        return data
      end
    end

    class AttendeeList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Attendee.parse(value) unless value.nil?
        end
        data
      end
    end

    class Attendee
      def self.parse(map)
        data = Types::Attendee.new
        data.external_user_id = map['ExternalUserId']
        data.attendee_id = map['AttendeeId']
        data.join_token = map['JoinToken']
        return data
      end
    end

    # Error Parser for ResourceLimitExceededException
    class ResourceLimitExceededException
      def self.parse(http_resp)
        data = Types::ResourceLimitExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['Code']
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for BatchCreateChannelMembership
    class BatchCreateChannelMembership
      def self.parse(http_resp)
        data = Types::BatchCreateChannelMembershipOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.batch_channel_memberships = (Parsers::BatchChannelMemberships.parse(map['BatchChannelMemberships']) unless map['BatchChannelMemberships'].nil?)
        data.errors = (Parsers::BatchCreateChannelMembershipErrors.parse(map['Errors']) unless map['Errors'].nil?)
        data
      end
    end

    class BatchCreateChannelMembershipErrors
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::BatchCreateChannelMembershipError.parse(value) unless value.nil?
        end
        data
      end
    end

    class BatchCreateChannelMembershipError
      def self.parse(map)
        data = Types::BatchCreateChannelMembershipError.new
        data.member_arn = map['MemberArn']
        data.error_code = map['ErrorCode']
        data.error_message = map['ErrorMessage']
        return data
      end
    end

    class BatchChannelMemberships
      def self.parse(map)
        data = Types::BatchChannelMemberships.new
        data.invited_by = (Parsers::Identity.parse(map['InvitedBy']) unless map['InvitedBy'].nil?)
        data.type = map['Type']
        data.members = (Parsers::Members.parse(map['Members']) unless map['Members'].nil?)
        data.channel_arn = map['ChannelArn']
        return data
      end
    end

    class Members
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Identity.parse(value) unless value.nil?
        end
        data
      end
    end

    class Identity
      def self.parse(map)
        data = Types::Identity.new
        data.arn = map['Arn']
        data.name = map['Name']
        return data
      end
    end

    # Operation Parser for BatchCreateRoomMembership
    class BatchCreateRoomMembership
      def self.parse(http_resp)
        data = Types::BatchCreateRoomMembershipOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.errors = (Parsers::MemberErrorList.parse(map['Errors']) unless map['Errors'].nil?)
        data
      end
    end

    class MemberErrorList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::MemberError.parse(value) unless value.nil?
        end
        data
      end
    end

    class MemberError
      def self.parse(map)
        data = Types::MemberError.new
        data.member_id = map['MemberId']
        data.error_code = map['ErrorCode']
        data.error_message = map['ErrorMessage']
        return data
      end
    end

    # Operation Parser for BatchDeletePhoneNumber
    class BatchDeletePhoneNumber
      def self.parse(http_resp)
        data = Types::BatchDeletePhoneNumberOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.phone_number_errors = (Parsers::PhoneNumberErrorList.parse(map['PhoneNumberErrors']) unless map['PhoneNumberErrors'].nil?)
        data
      end
    end

    # Operation Parser for BatchSuspendUser
    class BatchSuspendUser
      def self.parse(http_resp)
        data = Types::BatchSuspendUserOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.user_errors = (Parsers::UserErrorList.parse(map['UserErrors']) unless map['UserErrors'].nil?)
        data
      end
    end

    class UserErrorList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::UserError.parse(value) unless value.nil?
        end
        data
      end
    end

    class UserError
      def self.parse(map)
        data = Types::UserError.new
        data.user_id = map['UserId']
        data.error_code = map['ErrorCode']
        data.error_message = map['ErrorMessage']
        return data
      end
    end

    # Operation Parser for BatchUnsuspendUser
    class BatchUnsuspendUser
      def self.parse(http_resp)
        data = Types::BatchUnsuspendUserOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.user_errors = (Parsers::UserErrorList.parse(map['UserErrors']) unless map['UserErrors'].nil?)
        data
      end
    end

    # Operation Parser for BatchUpdatePhoneNumber
    class BatchUpdatePhoneNumber
      def self.parse(http_resp)
        data = Types::BatchUpdatePhoneNumberOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.phone_number_errors = (Parsers::PhoneNumberErrorList.parse(map['PhoneNumberErrors']) unless map['PhoneNumberErrors'].nil?)
        data
      end
    end

    # Operation Parser for BatchUpdateUser
    class BatchUpdateUser
      def self.parse(http_resp)
        data = Types::BatchUpdateUserOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.user_errors = (Parsers::UserErrorList.parse(map['UserErrors']) unless map['UserErrors'].nil?)
        data
      end
    end

    # Operation Parser for CreateAccount
    class CreateAccount
      def self.parse(http_resp)
        data = Types::CreateAccountOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.account = (Parsers::Account.parse(map['Account']) unless map['Account'].nil?)
        data
      end
    end

    class Account
      def self.parse(map)
        data = Types::Account.new
        data.aws_account_id = map['AwsAccountId']
        data.account_id = map['AccountId']
        data.name = map['Name']
        data.account_type = map['AccountType']
        data.created_timestamp = Time.parse(map['CreatedTimestamp']) if map['CreatedTimestamp']
        data.default_license = map['DefaultLicense']
        data.supported_licenses = (Parsers::LicenseList.parse(map['SupportedLicenses']) unless map['SupportedLicenses'].nil?)
        data.account_status = map['AccountStatus']
        data.signin_delegate_groups = (Parsers::SigninDelegateGroupList.parse(map['SigninDelegateGroups']) unless map['SigninDelegateGroups'].nil?)
        return data
      end
    end

    class SigninDelegateGroupList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::SigninDelegateGroup.parse(value) unless value.nil?
        end
        data
      end
    end

    class SigninDelegateGroup
      def self.parse(map)
        data = Types::SigninDelegateGroup.new
        data.group_name = map['GroupName']
        return data
      end
    end

    class LicenseList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for CreateAppInstance
    class CreateAppInstance
      def self.parse(http_resp)
        data = Types::CreateAppInstanceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app_instance_arn = map['AppInstanceArn']
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['Code']
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateAppInstanceAdmin
    class CreateAppInstanceAdmin
      def self.parse(http_resp)
        data = Types::CreateAppInstanceAdminOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app_instance_admin = (Parsers::Identity.parse(map['AppInstanceAdmin']) unless map['AppInstanceAdmin'].nil?)
        data.app_instance_arn = map['AppInstanceArn']
        data
      end
    end

    # Operation Parser for CreateAppInstanceUser
    class CreateAppInstanceUser
      def self.parse(http_resp)
        data = Types::CreateAppInstanceUserOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app_instance_user_arn = map['AppInstanceUserArn']
        data
      end
    end

    # Operation Parser for CreateAttendee
    class CreateAttendee
      def self.parse(http_resp)
        data = Types::CreateAttendeeOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.attendee = (Parsers::Attendee.parse(map['Attendee']) unless map['Attendee'].nil?)
        data
      end
    end

    # Operation Parser for CreateBot
    class CreateBot
      def self.parse(http_resp)
        data = Types::CreateBotOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.bot = (Parsers::Bot.parse(map['Bot']) unless map['Bot'].nil?)
        data
      end
    end

    class Bot
      def self.parse(map)
        data = Types::Bot.new
        data.bot_id = map['BotId']
        data.user_id = map['UserId']
        data.display_name = map['DisplayName']
        data.bot_type = map['BotType']
        data.disabled = map['Disabled']
        data.created_timestamp = Time.parse(map['CreatedTimestamp']) if map['CreatedTimestamp']
        data.updated_timestamp = Time.parse(map['UpdatedTimestamp']) if map['UpdatedTimestamp']
        data.bot_email = map['BotEmail']
        data.security_token = map['SecurityToken']
        return data
      end
    end

    # Operation Parser for CreateChannel
    class CreateChannel
      def self.parse(http_resp)
        data = Types::CreateChannelOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channel_arn = map['ChannelArn']
        data
      end
    end

    # Operation Parser for CreateChannelBan
    class CreateChannelBan
      def self.parse(http_resp)
        data = Types::CreateChannelBanOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channel_arn = map['ChannelArn']
        data.member = (Parsers::Identity.parse(map['Member']) unless map['Member'].nil?)
        data
      end
    end

    # Operation Parser for CreateChannelMembership
    class CreateChannelMembership
      def self.parse(http_resp)
        data = Types::CreateChannelMembershipOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channel_arn = map['ChannelArn']
        data.member = (Parsers::Identity.parse(map['Member']) unless map['Member'].nil?)
        data
      end
    end

    # Operation Parser for CreateChannelModerator
    class CreateChannelModerator
      def self.parse(http_resp)
        data = Types::CreateChannelModeratorOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channel_arn = map['ChannelArn']
        data.channel_moderator = (Parsers::Identity.parse(map['ChannelModerator']) unless map['ChannelModerator'].nil?)
        data
      end
    end

    # Operation Parser for CreateMediaCapturePipeline
    class CreateMediaCapturePipeline
      def self.parse(http_resp)
        data = Types::CreateMediaCapturePipelineOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.media_capture_pipeline = (Parsers::MediaCapturePipeline.parse(map['MediaCapturePipeline']) unless map['MediaCapturePipeline'].nil?)
        data
      end
    end

    class MediaCapturePipeline
      def self.parse(map)
        data = Types::MediaCapturePipeline.new
        data.media_pipeline_id = map['MediaPipelineId']
        data.source_type = map['SourceType']
        data.source_arn = map['SourceArn']
        data.status = map['Status']
        data.sink_type = map['SinkType']
        data.sink_arn = map['SinkArn']
        data.created_timestamp = Time.parse(map['CreatedTimestamp']) if map['CreatedTimestamp']
        data.updated_timestamp = Time.parse(map['UpdatedTimestamp']) if map['UpdatedTimestamp']
        data.chime_sdk_meeting_configuration = (Parsers::ChimeSdkMeetingConfiguration.parse(map['ChimeSdkMeetingConfiguration']) unless map['ChimeSdkMeetingConfiguration'].nil?)
        return data
      end
    end

    class ChimeSdkMeetingConfiguration
      def self.parse(map)
        data = Types::ChimeSdkMeetingConfiguration.new
        data.source_configuration = (Parsers::SourceConfiguration.parse(map['SourceConfiguration']) unless map['SourceConfiguration'].nil?)
        data.artifacts_configuration = (Parsers::ArtifactsConfiguration.parse(map['ArtifactsConfiguration']) unless map['ArtifactsConfiguration'].nil?)
        return data
      end
    end

    class ArtifactsConfiguration
      def self.parse(map)
        data = Types::ArtifactsConfiguration.new
        data.audio = (Parsers::AudioArtifactsConfiguration.parse(map['Audio']) unless map['Audio'].nil?)
        data.video = (Parsers::VideoArtifactsConfiguration.parse(map['Video']) unless map['Video'].nil?)
        data.content = (Parsers::ContentArtifactsConfiguration.parse(map['Content']) unless map['Content'].nil?)
        return data
      end
    end

    class ContentArtifactsConfiguration
      def self.parse(map)
        data = Types::ContentArtifactsConfiguration.new
        data.state = map['State']
        data.mux_type = map['MuxType']
        return data
      end
    end

    class VideoArtifactsConfiguration
      def self.parse(map)
        data = Types::VideoArtifactsConfiguration.new
        data.state = map['State']
        data.mux_type = map['MuxType']
        return data
      end
    end

    class AudioArtifactsConfiguration
      def self.parse(map)
        data = Types::AudioArtifactsConfiguration.new
        data.mux_type = map['MuxType']
        return data
      end
    end

    class SourceConfiguration
      def self.parse(map)
        data = Types::SourceConfiguration.new
        data.selected_video_streams = (Parsers::SelectedVideoStreams.parse(map['SelectedVideoStreams']) unless map['SelectedVideoStreams'].nil?)
        return data
      end
    end

    class SelectedVideoStreams
      def self.parse(map)
        data = Types::SelectedVideoStreams.new
        data.attendee_ids = (Parsers::AttendeeIdList.parse(map['AttendeeIds']) unless map['AttendeeIds'].nil?)
        data.external_user_ids = (Parsers::ExternalUserIdList.parse(map['ExternalUserIds']) unless map['ExternalUserIds'].nil?)
        return data
      end
    end

    class ExternalUserIdList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class AttendeeIdList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for CreateMeeting
    class CreateMeeting
      def self.parse(http_resp)
        data = Types::CreateMeetingOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.meeting = (Parsers::Meeting.parse(map['Meeting']) unless map['Meeting'].nil?)
        data
      end
    end

    class Meeting
      def self.parse(map)
        data = Types::Meeting.new
        data.meeting_id = map['MeetingId']
        data.external_meeting_id = map['ExternalMeetingId']
        data.media_placement = (Parsers::MediaPlacement.parse(map['MediaPlacement']) unless map['MediaPlacement'].nil?)
        data.media_region = map['MediaRegion']
        return data
      end
    end

    class MediaPlacement
      def self.parse(map)
        data = Types::MediaPlacement.new
        data.audio_host_url = map['AudioHostUrl']
        data.audio_fallback_url = map['AudioFallbackUrl']
        data.screen_data_url = map['ScreenDataUrl']
        data.screen_sharing_url = map['ScreenSharingUrl']
        data.screen_viewing_url = map['ScreenViewingUrl']
        data.signaling_url = map['SignalingUrl']
        data.turn_control_url = map['TurnControlUrl']
        data.event_ingestion_url = map['EventIngestionUrl']
        return data
      end
    end

    # Operation Parser for CreateMeetingDialOut
    class CreateMeetingDialOut
      def self.parse(http_resp)
        data = Types::CreateMeetingDialOutOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.transaction_id = map['TransactionId']
        data
      end
    end

    # Operation Parser for CreateMeetingWithAttendees
    class CreateMeetingWithAttendees
      def self.parse(http_resp)
        data = Types::CreateMeetingWithAttendeesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.meeting = (Parsers::Meeting.parse(map['Meeting']) unless map['Meeting'].nil?)
        data.attendees = (Parsers::AttendeeList.parse(map['Attendees']) unless map['Attendees'].nil?)
        data.errors = (Parsers::BatchCreateAttendeeErrorList.parse(map['Errors']) unless map['Errors'].nil?)
        data
      end
    end

    # Operation Parser for CreatePhoneNumberOrder
    class CreatePhoneNumberOrder
      def self.parse(http_resp)
        data = Types::CreatePhoneNumberOrderOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.phone_number_order = (Parsers::PhoneNumberOrder.parse(map['PhoneNumberOrder']) unless map['PhoneNumberOrder'].nil?)
        data
      end
    end

    class PhoneNumberOrder
      def self.parse(map)
        data = Types::PhoneNumberOrder.new
        data.phone_number_order_id = map['PhoneNumberOrderId']
        data.product_type = map['ProductType']
        data.status = map['Status']
        data.ordered_phone_numbers = (Parsers::OrderedPhoneNumberList.parse(map['OrderedPhoneNumbers']) unless map['OrderedPhoneNumbers'].nil?)
        data.created_timestamp = Time.parse(map['CreatedTimestamp']) if map['CreatedTimestamp']
        data.updated_timestamp = Time.parse(map['UpdatedTimestamp']) if map['UpdatedTimestamp']
        return data
      end
    end

    class OrderedPhoneNumberList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::OrderedPhoneNumber.parse(value) unless value.nil?
        end
        data
      end
    end

    class OrderedPhoneNumber
      def self.parse(map)
        data = Types::OrderedPhoneNumber.new
        data.e164_phone_number = map['E164PhoneNumber']
        data.status = map['Status']
        return data
      end
    end

    # Operation Parser for CreateProxySession
    class CreateProxySession
      def self.parse(http_resp)
        data = Types::CreateProxySessionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.proxy_session = (Parsers::ProxySession.parse(map['ProxySession']) unless map['ProxySession'].nil?)
        data
      end
    end

    class ProxySession
      def self.parse(map)
        data = Types::ProxySession.new
        data.voice_connector_id = map['VoiceConnectorId']
        data.proxy_session_id = map['ProxySessionId']
        data.name = map['Name']
        data.status = map['Status']
        data.expiry_minutes = map['ExpiryMinutes']
        data.capabilities = (Parsers::CapabilityList.parse(map['Capabilities']) unless map['Capabilities'].nil?)
        data.created_timestamp = Time.parse(map['CreatedTimestamp']) if map['CreatedTimestamp']
        data.updated_timestamp = Time.parse(map['UpdatedTimestamp']) if map['UpdatedTimestamp']
        data.ended_timestamp = Time.parse(map['EndedTimestamp']) if map['EndedTimestamp']
        data.participants = (Parsers::Participants.parse(map['Participants']) unless map['Participants'].nil?)
        data.number_selection_behavior = map['NumberSelectionBehavior']
        data.geo_match_level = map['GeoMatchLevel']
        data.geo_match_params = (Parsers::GeoMatchParams.parse(map['GeoMatchParams']) unless map['GeoMatchParams'].nil?)
        return data
      end
    end

    class GeoMatchParams
      def self.parse(map)
        data = Types::GeoMatchParams.new
        data.country = map['Country']
        data.area_code = map['AreaCode']
        return data
      end
    end

    class Participants
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Participant.parse(value) unless value.nil?
        end
        data
      end
    end

    class Participant
      def self.parse(map)
        data = Types::Participant.new
        data.phone_number = map['PhoneNumber']
        data.proxy_phone_number = map['ProxyPhoneNumber']
        return data
      end
    end

    class CapabilityList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for CreateRoom
    class CreateRoom
      def self.parse(http_resp)
        data = Types::CreateRoomOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.room = (Parsers::Room.parse(map['Room']) unless map['Room'].nil?)
        data
      end
    end

    class Room
      def self.parse(map)
        data = Types::Room.new
        data.room_id = map['RoomId']
        data.name = map['Name']
        data.account_id = map['AccountId']
        data.created_by = map['CreatedBy']
        data.created_timestamp = Time.parse(map['CreatedTimestamp']) if map['CreatedTimestamp']
        data.updated_timestamp = Time.parse(map['UpdatedTimestamp']) if map['UpdatedTimestamp']
        return data
      end
    end

    # Operation Parser for CreateRoomMembership
    class CreateRoomMembership
      def self.parse(http_resp)
        data = Types::CreateRoomMembershipOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.room_membership = (Parsers::RoomMembership.parse(map['RoomMembership']) unless map['RoomMembership'].nil?)
        data
      end
    end

    class RoomMembership
      def self.parse(map)
        data = Types::RoomMembership.new
        data.room_id = map['RoomId']
        data.member = (Parsers::Member.parse(map['Member']) unless map['Member'].nil?)
        data.role = map['Role']
        data.invited_by = map['InvitedBy']
        data.updated_timestamp = Time.parse(map['UpdatedTimestamp']) if map['UpdatedTimestamp']
        return data
      end
    end

    class Member
      def self.parse(map)
        data = Types::Member.new
        data.member_id = map['MemberId']
        data.member_type = map['MemberType']
        data.email = map['Email']
        data.full_name = map['FullName']
        data.account_id = map['AccountId']
        return data
      end
    end

    # Operation Parser for CreateSipMediaApplication
    class CreateSipMediaApplication
      def self.parse(http_resp)
        data = Types::CreateSipMediaApplicationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.sip_media_application = (Parsers::SipMediaApplication.parse(map['SipMediaApplication']) unless map['SipMediaApplication'].nil?)
        data
      end
    end

    class SipMediaApplication
      def self.parse(map)
        data = Types::SipMediaApplication.new
        data.sip_media_application_id = map['SipMediaApplicationId']
        data.aws_region = map['AwsRegion']
        data.name = map['Name']
        data.endpoints = (Parsers::SipMediaApplicationEndpointList.parse(map['Endpoints']) unless map['Endpoints'].nil?)
        data.created_timestamp = Time.parse(map['CreatedTimestamp']) if map['CreatedTimestamp']
        data.updated_timestamp = Time.parse(map['UpdatedTimestamp']) if map['UpdatedTimestamp']
        return data
      end
    end

    class SipMediaApplicationEndpointList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::SipMediaApplicationEndpoint.parse(value) unless value.nil?
        end
        data
      end
    end

    class SipMediaApplicationEndpoint
      def self.parse(map)
        data = Types::SipMediaApplicationEndpoint.new
        data.lambda_arn = map['LambdaArn']
        return data
      end
    end

    # Operation Parser for CreateSipMediaApplicationCall
    class CreateSipMediaApplicationCall
      def self.parse(http_resp)
        data = Types::CreateSipMediaApplicationCallOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.sip_media_application_call = (Parsers::SipMediaApplicationCall.parse(map['SipMediaApplicationCall']) unless map['SipMediaApplicationCall'].nil?)
        data
      end
    end

    class SipMediaApplicationCall
      def self.parse(map)
        data = Types::SipMediaApplicationCall.new
        data.transaction_id = map['TransactionId']
        return data
      end
    end

    # Operation Parser for CreateSipRule
    class CreateSipRule
      def self.parse(http_resp)
        data = Types::CreateSipRuleOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.sip_rule = (Parsers::SipRule.parse(map['SipRule']) unless map['SipRule'].nil?)
        data
      end
    end

    class SipRule
      def self.parse(map)
        data = Types::SipRule.new
        data.sip_rule_id = map['SipRuleId']
        data.name = map['Name']
        data.disabled = map['Disabled']
        data.trigger_type = map['TriggerType']
        data.trigger_value = map['TriggerValue']
        data.target_applications = (Parsers::SipRuleTargetApplicationList.parse(map['TargetApplications']) unless map['TargetApplications'].nil?)
        data.created_timestamp = Time.parse(map['CreatedTimestamp']) if map['CreatedTimestamp']
        data.updated_timestamp = Time.parse(map['UpdatedTimestamp']) if map['UpdatedTimestamp']
        return data
      end
    end

    class SipRuleTargetApplicationList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::SipRuleTargetApplication.parse(value) unless value.nil?
        end
        data
      end
    end

    class SipRuleTargetApplication
      def self.parse(map)
        data = Types::SipRuleTargetApplication.new
        data.sip_media_application_id = map['SipMediaApplicationId']
        data.priority = map['Priority']
        data.aws_region = map['AwsRegion']
        return data
      end
    end

    # Operation Parser for CreateUser
    class CreateUser
      def self.parse(http_resp)
        data = Types::CreateUserOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.user = (Parsers::User.parse(map['User']) unless map['User'].nil?)
        data
      end
    end

    class User
      def self.parse(map)
        data = Types::User.new
        data.user_id = map['UserId']
        data.account_id = map['AccountId']
        data.primary_email = map['PrimaryEmail']
        data.primary_provisioned_number = map['PrimaryProvisionedNumber']
        data.display_name = map['DisplayName']
        data.license_type = map['LicenseType']
        data.user_type = map['UserType']
        data.user_registration_status = map['UserRegistrationStatus']
        data.user_invitation_status = map['UserInvitationStatus']
        data.registered_on = Time.parse(map['RegisteredOn']) if map['RegisteredOn']
        data.invited_on = Time.parse(map['InvitedOn']) if map['InvitedOn']
        data.alexa_for_business_metadata = (Parsers::AlexaForBusinessMetadata.parse(map['AlexaForBusinessMetadata']) unless map['AlexaForBusinessMetadata'].nil?)
        data.personal_pin = map['PersonalPIN']
        return data
      end
    end

    class AlexaForBusinessMetadata
      def self.parse(map)
        data = Types::AlexaForBusinessMetadata.new
        data.is_alexa_for_business_enabled = map['IsAlexaForBusinessEnabled']
        data.alexa_for_business_room_arn = map['AlexaForBusinessRoomArn']
        return data
      end
    end

    # Operation Parser for CreateVoiceConnector
    class CreateVoiceConnector
      def self.parse(http_resp)
        data = Types::CreateVoiceConnectorOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.voice_connector = (Parsers::VoiceConnector.parse(map['VoiceConnector']) unless map['VoiceConnector'].nil?)
        data
      end
    end

    class VoiceConnector
      def self.parse(map)
        data = Types::VoiceConnector.new
        data.voice_connector_id = map['VoiceConnectorId']
        data.aws_region = map['AwsRegion']
        data.name = map['Name']
        data.outbound_host_name = map['OutboundHostName']
        data.require_encryption = map['RequireEncryption']
        data.created_timestamp = Time.parse(map['CreatedTimestamp']) if map['CreatedTimestamp']
        data.updated_timestamp = Time.parse(map['UpdatedTimestamp']) if map['UpdatedTimestamp']
        data.voice_connector_arn = map['VoiceConnectorArn']
        return data
      end
    end

    # Operation Parser for CreateVoiceConnectorGroup
    class CreateVoiceConnectorGroup
      def self.parse(http_resp)
        data = Types::CreateVoiceConnectorGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.voice_connector_group = (Parsers::VoiceConnectorGroup.parse(map['VoiceConnectorGroup']) unless map['VoiceConnectorGroup'].nil?)
        data
      end
    end

    class VoiceConnectorGroup
      def self.parse(map)
        data = Types::VoiceConnectorGroup.new
        data.voice_connector_group_id = map['VoiceConnectorGroupId']
        data.name = map['Name']
        data.voice_connector_items = (Parsers::VoiceConnectorItemList.parse(map['VoiceConnectorItems']) unless map['VoiceConnectorItems'].nil?)
        data.created_timestamp = Time.parse(map['CreatedTimestamp']) if map['CreatedTimestamp']
        data.updated_timestamp = Time.parse(map['UpdatedTimestamp']) if map['UpdatedTimestamp']
        data.voice_connector_group_arn = map['VoiceConnectorGroupArn']
        return data
      end
    end

    class VoiceConnectorItemList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::VoiceConnectorItem.parse(value) unless value.nil?
        end
        data
      end
    end

    class VoiceConnectorItem
      def self.parse(map)
        data = Types::VoiceConnectorItem.new
        data.voice_connector_id = map['VoiceConnectorId']
        data.priority = map['Priority']
        return data
      end
    end

    # Operation Parser for DeleteAccount
    class DeleteAccount
      def self.parse(http_resp)
        data = Types::DeleteAccountOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for UnprocessableEntityException
    class UnprocessableEntityException
      def self.parse(http_resp)
        data = Types::UnprocessableEntityException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['Code']
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeleteAppInstance
    class DeleteAppInstance
      def self.parse(http_resp)
        data = Types::DeleteAppInstanceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteAppInstanceAdmin
    class DeleteAppInstanceAdmin
      def self.parse(http_resp)
        data = Types::DeleteAppInstanceAdminOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteAppInstanceStreamingConfigurations
    class DeleteAppInstanceStreamingConfigurations
      def self.parse(http_resp)
        data = Types::DeleteAppInstanceStreamingConfigurationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteAppInstanceUser
    class DeleteAppInstanceUser
      def self.parse(http_resp)
        data = Types::DeleteAppInstanceUserOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteAttendee
    class DeleteAttendee
      def self.parse(http_resp)
        data = Types::DeleteAttendeeOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteChannel
    class DeleteChannel
      def self.parse(http_resp)
        data = Types::DeleteChannelOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteChannelBan
    class DeleteChannelBan
      def self.parse(http_resp)
        data = Types::DeleteChannelBanOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteChannelMembership
    class DeleteChannelMembership
      def self.parse(http_resp)
        data = Types::DeleteChannelMembershipOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteChannelMessage
    class DeleteChannelMessage
      def self.parse(http_resp)
        data = Types::DeleteChannelMessageOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteChannelModerator
    class DeleteChannelModerator
      def self.parse(http_resp)
        data = Types::DeleteChannelModeratorOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteEventsConfiguration
    class DeleteEventsConfiguration
      def self.parse(http_resp)
        data = Types::DeleteEventsConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteMediaCapturePipeline
    class DeleteMediaCapturePipeline
      def self.parse(http_resp)
        data = Types::DeleteMediaCapturePipelineOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteMeeting
    class DeleteMeeting
      def self.parse(http_resp)
        data = Types::DeleteMeetingOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeletePhoneNumber
    class DeletePhoneNumber
      def self.parse(http_resp)
        data = Types::DeletePhoneNumberOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteProxySession
    class DeleteProxySession
      def self.parse(http_resp)
        data = Types::DeleteProxySessionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteRoom
    class DeleteRoom
      def self.parse(http_resp)
        data = Types::DeleteRoomOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteRoomMembership
    class DeleteRoomMembership
      def self.parse(http_resp)
        data = Types::DeleteRoomMembershipOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteSipMediaApplication
    class DeleteSipMediaApplication
      def self.parse(http_resp)
        data = Types::DeleteSipMediaApplicationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteSipRule
    class DeleteSipRule
      def self.parse(http_resp)
        data = Types::DeleteSipRuleOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteVoiceConnector
    class DeleteVoiceConnector
      def self.parse(http_resp)
        data = Types::DeleteVoiceConnectorOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteVoiceConnectorEmergencyCallingConfiguration
    class DeleteVoiceConnectorEmergencyCallingConfiguration
      def self.parse(http_resp)
        data = Types::DeleteVoiceConnectorEmergencyCallingConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteVoiceConnectorGroup
    class DeleteVoiceConnectorGroup
      def self.parse(http_resp)
        data = Types::DeleteVoiceConnectorGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteVoiceConnectorOrigination
    class DeleteVoiceConnectorOrigination
      def self.parse(http_resp)
        data = Types::DeleteVoiceConnectorOriginationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteVoiceConnectorProxy
    class DeleteVoiceConnectorProxy
      def self.parse(http_resp)
        data = Types::DeleteVoiceConnectorProxyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteVoiceConnectorStreamingConfiguration
    class DeleteVoiceConnectorStreamingConfiguration
      def self.parse(http_resp)
        data = Types::DeleteVoiceConnectorStreamingConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteVoiceConnectorTermination
    class DeleteVoiceConnectorTermination
      def self.parse(http_resp)
        data = Types::DeleteVoiceConnectorTerminationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteVoiceConnectorTerminationCredentials
    class DeleteVoiceConnectorTerminationCredentials
      def self.parse(http_resp)
        data = Types::DeleteVoiceConnectorTerminationCredentialsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DescribeAppInstance
    class DescribeAppInstance
      def self.parse(http_resp)
        data = Types::DescribeAppInstanceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app_instance = (Parsers::AppInstance.parse(map['AppInstance']) unless map['AppInstance'].nil?)
        data
      end
    end

    class AppInstance
      def self.parse(map)
        data = Types::AppInstance.new
        data.app_instance_arn = map['AppInstanceArn']
        data.name = map['Name']
        data.metadata = map['Metadata']
        data.created_timestamp = Time.at(map['CreatedTimestamp'].to_i) if map['CreatedTimestamp']
        data.last_updated_timestamp = Time.at(map['LastUpdatedTimestamp'].to_i) if map['LastUpdatedTimestamp']
        return data
      end
    end

    # Operation Parser for DescribeAppInstanceAdmin
    class DescribeAppInstanceAdmin
      def self.parse(http_resp)
        data = Types::DescribeAppInstanceAdminOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app_instance_admin = (Parsers::AppInstanceAdmin.parse(map['AppInstanceAdmin']) unless map['AppInstanceAdmin'].nil?)
        data
      end
    end

    class AppInstanceAdmin
      def self.parse(map)
        data = Types::AppInstanceAdmin.new
        data.admin = (Parsers::Identity.parse(map['Admin']) unless map['Admin'].nil?)
        data.app_instance_arn = map['AppInstanceArn']
        data.created_timestamp = Time.at(map['CreatedTimestamp'].to_i) if map['CreatedTimestamp']
        return data
      end
    end

    # Operation Parser for DescribeAppInstanceUser
    class DescribeAppInstanceUser
      def self.parse(http_resp)
        data = Types::DescribeAppInstanceUserOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app_instance_user = (Parsers::AppInstanceUser.parse(map['AppInstanceUser']) unless map['AppInstanceUser'].nil?)
        data
      end
    end

    class AppInstanceUser
      def self.parse(map)
        data = Types::AppInstanceUser.new
        data.app_instance_user_arn = map['AppInstanceUserArn']
        data.name = map['Name']
        data.created_timestamp = Time.at(map['CreatedTimestamp'].to_i) if map['CreatedTimestamp']
        data.metadata = map['Metadata']
        data.last_updated_timestamp = Time.at(map['LastUpdatedTimestamp'].to_i) if map['LastUpdatedTimestamp']
        return data
      end
    end

    # Operation Parser for DescribeChannel
    class DescribeChannel
      def self.parse(http_resp)
        data = Types::DescribeChannelOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channel = (Parsers::Channel.parse(map['Channel']) unless map['Channel'].nil?)
        data
      end
    end

    class Channel
      def self.parse(map)
        data = Types::Channel.new
        data.name = map['Name']
        data.channel_arn = map['ChannelArn']
        data.mode = map['Mode']
        data.privacy = map['Privacy']
        data.metadata = map['Metadata']
        data.created_by = (Parsers::Identity.parse(map['CreatedBy']) unless map['CreatedBy'].nil?)
        data.created_timestamp = Time.at(map['CreatedTimestamp'].to_i) if map['CreatedTimestamp']
        data.last_message_timestamp = Time.at(map['LastMessageTimestamp'].to_i) if map['LastMessageTimestamp']
        data.last_updated_timestamp = Time.at(map['LastUpdatedTimestamp'].to_i) if map['LastUpdatedTimestamp']
        return data
      end
    end

    # Operation Parser for DescribeChannelBan
    class DescribeChannelBan
      def self.parse(http_resp)
        data = Types::DescribeChannelBanOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channel_ban = (Parsers::ChannelBan.parse(map['ChannelBan']) unless map['ChannelBan'].nil?)
        data
      end
    end

    class ChannelBan
      def self.parse(map)
        data = Types::ChannelBan.new
        data.member = (Parsers::Identity.parse(map['Member']) unless map['Member'].nil?)
        data.channel_arn = map['ChannelArn']
        data.created_timestamp = Time.at(map['CreatedTimestamp'].to_i) if map['CreatedTimestamp']
        data.created_by = (Parsers::Identity.parse(map['CreatedBy']) unless map['CreatedBy'].nil?)
        return data
      end
    end

    # Operation Parser for DescribeChannelMembership
    class DescribeChannelMembership
      def self.parse(http_resp)
        data = Types::DescribeChannelMembershipOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channel_membership = (Parsers::ChannelMembership.parse(map['ChannelMembership']) unless map['ChannelMembership'].nil?)
        data
      end
    end

    class ChannelMembership
      def self.parse(map)
        data = Types::ChannelMembership.new
        data.invited_by = (Parsers::Identity.parse(map['InvitedBy']) unless map['InvitedBy'].nil?)
        data.type = map['Type']
        data.member = (Parsers::Identity.parse(map['Member']) unless map['Member'].nil?)
        data.channel_arn = map['ChannelArn']
        data.created_timestamp = Time.at(map['CreatedTimestamp'].to_i) if map['CreatedTimestamp']
        data.last_updated_timestamp = Time.at(map['LastUpdatedTimestamp'].to_i) if map['LastUpdatedTimestamp']
        return data
      end
    end

    # Operation Parser for DescribeChannelMembershipForAppInstanceUser
    class DescribeChannelMembershipForAppInstanceUser
      def self.parse(http_resp)
        data = Types::DescribeChannelMembershipForAppInstanceUserOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channel_membership = (Parsers::ChannelMembershipForAppInstanceUserSummary.parse(map['ChannelMembership']) unless map['ChannelMembership'].nil?)
        data
      end
    end

    class ChannelMembershipForAppInstanceUserSummary
      def self.parse(map)
        data = Types::ChannelMembershipForAppInstanceUserSummary.new
        data.channel_summary = (Parsers::ChannelSummary.parse(map['ChannelSummary']) unless map['ChannelSummary'].nil?)
        data.app_instance_user_membership_summary = (Parsers::AppInstanceUserMembershipSummary.parse(map['AppInstanceUserMembershipSummary']) unless map['AppInstanceUserMembershipSummary'].nil?)
        return data
      end
    end

    class AppInstanceUserMembershipSummary
      def self.parse(map)
        data = Types::AppInstanceUserMembershipSummary.new
        data.type = map['Type']
        data.read_marker_timestamp = Time.at(map['ReadMarkerTimestamp'].to_i) if map['ReadMarkerTimestamp']
        return data
      end
    end

    class ChannelSummary
      def self.parse(map)
        data = Types::ChannelSummary.new
        data.name = map['Name']
        data.channel_arn = map['ChannelArn']
        data.mode = map['Mode']
        data.privacy = map['Privacy']
        data.metadata = map['Metadata']
        data.last_message_timestamp = Time.at(map['LastMessageTimestamp'].to_i) if map['LastMessageTimestamp']
        return data
      end
    end

    # Operation Parser for DescribeChannelModeratedByAppInstanceUser
    class DescribeChannelModeratedByAppInstanceUser
      def self.parse(http_resp)
        data = Types::DescribeChannelModeratedByAppInstanceUserOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channel = (Parsers::ChannelModeratedByAppInstanceUserSummary.parse(map['Channel']) unless map['Channel'].nil?)
        data
      end
    end

    class ChannelModeratedByAppInstanceUserSummary
      def self.parse(map)
        data = Types::ChannelModeratedByAppInstanceUserSummary.new
        data.channel_summary = (Parsers::ChannelSummary.parse(map['ChannelSummary']) unless map['ChannelSummary'].nil?)
        return data
      end
    end

    # Operation Parser for DescribeChannelModerator
    class DescribeChannelModerator
      def self.parse(http_resp)
        data = Types::DescribeChannelModeratorOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channel_moderator = (Parsers::ChannelModerator.parse(map['ChannelModerator']) unless map['ChannelModerator'].nil?)
        data
      end
    end

    class ChannelModerator
      def self.parse(map)
        data = Types::ChannelModerator.new
        data.moderator = (Parsers::Identity.parse(map['Moderator']) unless map['Moderator'].nil?)
        data.channel_arn = map['ChannelArn']
        data.created_timestamp = Time.at(map['CreatedTimestamp'].to_i) if map['CreatedTimestamp']
        data.created_by = (Parsers::Identity.parse(map['CreatedBy']) unless map['CreatedBy'].nil?)
        return data
      end
    end

    # Operation Parser for DisassociatePhoneNumberFromUser
    class DisassociatePhoneNumberFromUser
      def self.parse(http_resp)
        data = Types::DisassociatePhoneNumberFromUserOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DisassociatePhoneNumbersFromVoiceConnector
    class DisassociatePhoneNumbersFromVoiceConnector
      def self.parse(http_resp)
        data = Types::DisassociatePhoneNumbersFromVoiceConnectorOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.phone_number_errors = (Parsers::PhoneNumberErrorList.parse(map['PhoneNumberErrors']) unless map['PhoneNumberErrors'].nil?)
        data
      end
    end

    # Operation Parser for DisassociatePhoneNumbersFromVoiceConnectorGroup
    class DisassociatePhoneNumbersFromVoiceConnectorGroup
      def self.parse(http_resp)
        data = Types::DisassociatePhoneNumbersFromVoiceConnectorGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.phone_number_errors = (Parsers::PhoneNumberErrorList.parse(map['PhoneNumberErrors']) unless map['PhoneNumberErrors'].nil?)
        data
      end
    end

    # Operation Parser for DisassociateSigninDelegateGroupsFromAccount
    class DisassociateSigninDelegateGroupsFromAccount
      def self.parse(http_resp)
        data = Types::DisassociateSigninDelegateGroupsFromAccountOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for GetAccount
    class GetAccount
      def self.parse(http_resp)
        data = Types::GetAccountOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.account = (Parsers::Account.parse(map['Account']) unless map['Account'].nil?)
        data
      end
    end

    # Operation Parser for GetAccountSettings
    class GetAccountSettings
      def self.parse(http_resp)
        data = Types::GetAccountSettingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.account_settings = (Parsers::AccountSettings.parse(map['AccountSettings']) unless map['AccountSettings'].nil?)
        data
      end
    end

    class AccountSettings
      def self.parse(map)
        data = Types::AccountSettings.new
        data.disable_remote_control = map['DisableRemoteControl']
        data.enable_dial_out = map['EnableDialOut']
        return data
      end
    end

    # Operation Parser for GetAppInstanceRetentionSettings
    class GetAppInstanceRetentionSettings
      def self.parse(http_resp)
        data = Types::GetAppInstanceRetentionSettingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app_instance_retention_settings = (Parsers::AppInstanceRetentionSettings.parse(map['AppInstanceRetentionSettings']) unless map['AppInstanceRetentionSettings'].nil?)
        data.initiate_deletion_timestamp = Time.at(map['InitiateDeletionTimestamp'].to_i) if map['InitiateDeletionTimestamp']
        data
      end
    end

    class AppInstanceRetentionSettings
      def self.parse(map)
        data = Types::AppInstanceRetentionSettings.new
        data.channel_retention_settings = (Parsers::ChannelRetentionSettings.parse(map['ChannelRetentionSettings']) unless map['ChannelRetentionSettings'].nil?)
        return data
      end
    end

    class ChannelRetentionSettings
      def self.parse(map)
        data = Types::ChannelRetentionSettings.new
        data.retention_days = map['RetentionDays']
        return data
      end
    end

    # Operation Parser for GetAppInstanceStreamingConfigurations
    class GetAppInstanceStreamingConfigurations
      def self.parse(http_resp)
        data = Types::GetAppInstanceStreamingConfigurationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app_instance_streaming_configurations = (Parsers::AppInstanceStreamingConfigurationList.parse(map['AppInstanceStreamingConfigurations']) unless map['AppInstanceStreamingConfigurations'].nil?)
        data
      end
    end

    class AppInstanceStreamingConfigurationList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AppInstanceStreamingConfiguration.parse(value) unless value.nil?
        end
        data
      end
    end

    class AppInstanceStreamingConfiguration
      def self.parse(map)
        data = Types::AppInstanceStreamingConfiguration.new
        data.app_instance_data_type = map['AppInstanceDataType']
        data.resource_arn = map['ResourceArn']
        return data
      end
    end

    # Operation Parser for GetAttendee
    class GetAttendee
      def self.parse(http_resp)
        data = Types::GetAttendeeOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.attendee = (Parsers::Attendee.parse(map['Attendee']) unless map['Attendee'].nil?)
        data
      end
    end

    # Operation Parser for GetBot
    class GetBot
      def self.parse(http_resp)
        data = Types::GetBotOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.bot = (Parsers::Bot.parse(map['Bot']) unless map['Bot'].nil?)
        data
      end
    end

    # Operation Parser for GetChannelMessage
    class GetChannelMessage
      def self.parse(http_resp)
        data = Types::GetChannelMessageOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channel_message = (Parsers::ChannelMessage.parse(map['ChannelMessage']) unless map['ChannelMessage'].nil?)
        data
      end
    end

    class ChannelMessage
      def self.parse(map)
        data = Types::ChannelMessage.new
        data.channel_arn = map['ChannelArn']
        data.message_id = map['MessageId']
        data.content = map['Content']
        data.metadata = map['Metadata']
        data.type = map['Type']
        data.created_timestamp = Time.at(map['CreatedTimestamp'].to_i) if map['CreatedTimestamp']
        data.last_edited_timestamp = Time.at(map['LastEditedTimestamp'].to_i) if map['LastEditedTimestamp']
        data.last_updated_timestamp = Time.at(map['LastUpdatedTimestamp'].to_i) if map['LastUpdatedTimestamp']
        data.sender = (Parsers::Identity.parse(map['Sender']) unless map['Sender'].nil?)
        data.redacted = map['Redacted']
        data.persistence = map['Persistence']
        return data
      end
    end

    # Operation Parser for GetEventsConfiguration
    class GetEventsConfiguration
      def self.parse(http_resp)
        data = Types::GetEventsConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.events_configuration = (Parsers::EventsConfiguration.parse(map['EventsConfiguration']) unless map['EventsConfiguration'].nil?)
        data
      end
    end

    class EventsConfiguration
      def self.parse(map)
        data = Types::EventsConfiguration.new
        data.bot_id = map['BotId']
        data.outbound_events_https_endpoint = map['OutboundEventsHTTPSEndpoint']
        data.lambda_function_arn = map['LambdaFunctionArn']
        return data
      end
    end

    # Operation Parser for GetGlobalSettings
    class GetGlobalSettings
      def self.parse(http_resp)
        data = Types::GetGlobalSettingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.business_calling = (Parsers::BusinessCallingSettings.parse(map['BusinessCalling']) unless map['BusinessCalling'].nil?)
        data.voice_connector = (Parsers::VoiceConnectorSettings.parse(map['VoiceConnector']) unless map['VoiceConnector'].nil?)
        data
      end
    end

    class VoiceConnectorSettings
      def self.parse(map)
        data = Types::VoiceConnectorSettings.new
        data.cdr_bucket = map['CdrBucket']
        return data
      end
    end

    class BusinessCallingSettings
      def self.parse(map)
        data = Types::BusinessCallingSettings.new
        data.cdr_bucket = map['CdrBucket']
        return data
      end
    end

    # Operation Parser for GetMediaCapturePipeline
    class GetMediaCapturePipeline
      def self.parse(http_resp)
        data = Types::GetMediaCapturePipelineOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.media_capture_pipeline = (Parsers::MediaCapturePipeline.parse(map['MediaCapturePipeline']) unless map['MediaCapturePipeline'].nil?)
        data
      end
    end

    # Operation Parser for GetMeeting
    class GetMeeting
      def self.parse(http_resp)
        data = Types::GetMeetingOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.meeting = (Parsers::Meeting.parse(map['Meeting']) unless map['Meeting'].nil?)
        data
      end
    end

    # Operation Parser for GetMessagingSessionEndpoint
    class GetMessagingSessionEndpoint
      def self.parse(http_resp)
        data = Types::GetMessagingSessionEndpointOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.endpoint = (Parsers::MessagingSessionEndpoint.parse(map['Endpoint']) unless map['Endpoint'].nil?)
        data
      end
    end

    class MessagingSessionEndpoint
      def self.parse(map)
        data = Types::MessagingSessionEndpoint.new
        data.url = map['Url']
        return data
      end
    end

    # Operation Parser for GetPhoneNumber
    class GetPhoneNumber
      def self.parse(http_resp)
        data = Types::GetPhoneNumberOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.phone_number = (Parsers::PhoneNumber.parse(map['PhoneNumber']) unless map['PhoneNumber'].nil?)
        data
      end
    end

    class PhoneNumber
      def self.parse(map)
        data = Types::PhoneNumber.new
        data.phone_number_id = map['PhoneNumberId']
        data.e164_phone_number = map['E164PhoneNumber']
        data.country = map['Country']
        data.type = map['Type']
        data.product_type = map['ProductType']
        data.status = map['Status']
        data.capabilities = (Parsers::PhoneNumberCapabilities.parse(map['Capabilities']) unless map['Capabilities'].nil?)
        data.associations = (Parsers::PhoneNumberAssociationList.parse(map['Associations']) unless map['Associations'].nil?)
        data.calling_name = map['CallingName']
        data.calling_name_status = map['CallingNameStatus']
        data.created_timestamp = Time.parse(map['CreatedTimestamp']) if map['CreatedTimestamp']
        data.updated_timestamp = Time.parse(map['UpdatedTimestamp']) if map['UpdatedTimestamp']
        data.deletion_timestamp = Time.parse(map['DeletionTimestamp']) if map['DeletionTimestamp']
        return data
      end
    end

    class PhoneNumberAssociationList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::PhoneNumberAssociation.parse(value) unless value.nil?
        end
        data
      end
    end

    class PhoneNumberAssociation
      def self.parse(map)
        data = Types::PhoneNumberAssociation.new
        data.value = map['Value']
        data.name = map['Name']
        data.associated_timestamp = Time.parse(map['AssociatedTimestamp']) if map['AssociatedTimestamp']
        return data
      end
    end

    class PhoneNumberCapabilities
      def self.parse(map)
        data = Types::PhoneNumberCapabilities.new
        data.inbound_call = map['InboundCall']
        data.outbound_call = map['OutboundCall']
        data.inbound_sms = map['InboundSMS']
        data.outbound_sms = map['OutboundSMS']
        data.inbound_mms = map['InboundMMS']
        data.outbound_mms = map['OutboundMMS']
        return data
      end
    end

    # Operation Parser for GetPhoneNumberOrder
    class GetPhoneNumberOrder
      def self.parse(http_resp)
        data = Types::GetPhoneNumberOrderOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.phone_number_order = (Parsers::PhoneNumberOrder.parse(map['PhoneNumberOrder']) unless map['PhoneNumberOrder'].nil?)
        data
      end
    end

    # Operation Parser for GetPhoneNumberSettings
    class GetPhoneNumberSettings
      def self.parse(http_resp)
        data = Types::GetPhoneNumberSettingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.calling_name = map['CallingName']
        data.calling_name_updated_timestamp = Time.parse(map['CallingNameUpdatedTimestamp']) if map['CallingNameUpdatedTimestamp']
        data
      end
    end

    # Operation Parser for GetProxySession
    class GetProxySession
      def self.parse(http_resp)
        data = Types::GetProxySessionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.proxy_session = (Parsers::ProxySession.parse(map['ProxySession']) unless map['ProxySession'].nil?)
        data
      end
    end

    # Operation Parser for GetRetentionSettings
    class GetRetentionSettings
      def self.parse(http_resp)
        data = Types::GetRetentionSettingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.retention_settings = (Parsers::RetentionSettings.parse(map['RetentionSettings']) unless map['RetentionSettings'].nil?)
        data.initiate_deletion_timestamp = Time.parse(map['InitiateDeletionTimestamp']) if map['InitiateDeletionTimestamp']
        data
      end
    end

    class RetentionSettings
      def self.parse(map)
        data = Types::RetentionSettings.new
        data.room_retention_settings = (Parsers::RoomRetentionSettings.parse(map['RoomRetentionSettings']) unless map['RoomRetentionSettings'].nil?)
        data.conversation_retention_settings = (Parsers::ConversationRetentionSettings.parse(map['ConversationRetentionSettings']) unless map['ConversationRetentionSettings'].nil?)
        return data
      end
    end

    class ConversationRetentionSettings
      def self.parse(map)
        data = Types::ConversationRetentionSettings.new
        data.retention_days = map['RetentionDays']
        return data
      end
    end

    class RoomRetentionSettings
      def self.parse(map)
        data = Types::RoomRetentionSettings.new
        data.retention_days = map['RetentionDays']
        return data
      end
    end

    # Operation Parser for GetRoom
    class GetRoom
      def self.parse(http_resp)
        data = Types::GetRoomOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.room = (Parsers::Room.parse(map['Room']) unless map['Room'].nil?)
        data
      end
    end

    # Operation Parser for GetSipMediaApplication
    class GetSipMediaApplication
      def self.parse(http_resp)
        data = Types::GetSipMediaApplicationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.sip_media_application = (Parsers::SipMediaApplication.parse(map['SipMediaApplication']) unless map['SipMediaApplication'].nil?)
        data
      end
    end

    # Operation Parser for GetSipMediaApplicationLoggingConfiguration
    class GetSipMediaApplicationLoggingConfiguration
      def self.parse(http_resp)
        data = Types::GetSipMediaApplicationLoggingConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.sip_media_application_logging_configuration = (Parsers::SipMediaApplicationLoggingConfiguration.parse(map['SipMediaApplicationLoggingConfiguration']) unless map['SipMediaApplicationLoggingConfiguration'].nil?)
        data
      end
    end

    class SipMediaApplicationLoggingConfiguration
      def self.parse(map)
        data = Types::SipMediaApplicationLoggingConfiguration.new
        data.enable_sip_media_application_message_logs = map['EnableSipMediaApplicationMessageLogs']
        return data
      end
    end

    # Operation Parser for GetSipRule
    class GetSipRule
      def self.parse(http_resp)
        data = Types::GetSipRuleOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.sip_rule = (Parsers::SipRule.parse(map['SipRule']) unless map['SipRule'].nil?)
        data
      end
    end

    # Operation Parser for GetUser
    class GetUser
      def self.parse(http_resp)
        data = Types::GetUserOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.user = (Parsers::User.parse(map['User']) unless map['User'].nil?)
        data
      end
    end

    # Operation Parser for GetUserSettings
    class GetUserSettings
      def self.parse(http_resp)
        data = Types::GetUserSettingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.user_settings = (Parsers::UserSettings.parse(map['UserSettings']) unless map['UserSettings'].nil?)
        data
      end
    end

    class UserSettings
      def self.parse(map)
        data = Types::UserSettings.new
        data.telephony = (Parsers::TelephonySettings.parse(map['Telephony']) unless map['Telephony'].nil?)
        return data
      end
    end

    class TelephonySettings
      def self.parse(map)
        data = Types::TelephonySettings.new
        data.inbound_calling = map['InboundCalling']
        data.outbound_calling = map['OutboundCalling']
        data.sms = map['SMS']
        return data
      end
    end

    # Operation Parser for GetVoiceConnector
    class GetVoiceConnector
      def self.parse(http_resp)
        data = Types::GetVoiceConnectorOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.voice_connector = (Parsers::VoiceConnector.parse(map['VoiceConnector']) unless map['VoiceConnector'].nil?)
        data
      end
    end

    # Operation Parser for GetVoiceConnectorEmergencyCallingConfiguration
    class GetVoiceConnectorEmergencyCallingConfiguration
      def self.parse(http_resp)
        data = Types::GetVoiceConnectorEmergencyCallingConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.emergency_calling_configuration = (Parsers::EmergencyCallingConfiguration.parse(map['EmergencyCallingConfiguration']) unless map['EmergencyCallingConfiguration'].nil?)
        data
      end
    end

    class EmergencyCallingConfiguration
      def self.parse(map)
        data = Types::EmergencyCallingConfiguration.new
        data.dnis = (Parsers::DNISEmergencyCallingConfigurationList.parse(map['DNIS']) unless map['DNIS'].nil?)
        return data
      end
    end

    class DNISEmergencyCallingConfigurationList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::DNISEmergencyCallingConfiguration.parse(value) unless value.nil?
        end
        data
      end
    end

    class DNISEmergencyCallingConfiguration
      def self.parse(map)
        data = Types::DNISEmergencyCallingConfiguration.new
        data.emergency_phone_number = map['EmergencyPhoneNumber']
        data.test_phone_number = map['TestPhoneNumber']
        data.calling_country = map['CallingCountry']
        return data
      end
    end

    # Operation Parser for GetVoiceConnectorGroup
    class GetVoiceConnectorGroup
      def self.parse(http_resp)
        data = Types::GetVoiceConnectorGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.voice_connector_group = (Parsers::VoiceConnectorGroup.parse(map['VoiceConnectorGroup']) unless map['VoiceConnectorGroup'].nil?)
        data
      end
    end

    # Operation Parser for GetVoiceConnectorLoggingConfiguration
    class GetVoiceConnectorLoggingConfiguration
      def self.parse(http_resp)
        data = Types::GetVoiceConnectorLoggingConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.logging_configuration = (Parsers::LoggingConfiguration.parse(map['LoggingConfiguration']) unless map['LoggingConfiguration'].nil?)
        data
      end
    end

    class LoggingConfiguration
      def self.parse(map)
        data = Types::LoggingConfiguration.new
        data.enable_sip_logs = map['EnableSIPLogs']
        data.enable_media_metric_logs = map['EnableMediaMetricLogs']
        return data
      end
    end

    # Operation Parser for GetVoiceConnectorOrigination
    class GetVoiceConnectorOrigination
      def self.parse(http_resp)
        data = Types::GetVoiceConnectorOriginationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.origination = (Parsers::Origination.parse(map['Origination']) unless map['Origination'].nil?)
        data
      end
    end

    class Origination
      def self.parse(map)
        data = Types::Origination.new
        data.routes = (Parsers::OriginationRouteList.parse(map['Routes']) unless map['Routes'].nil?)
        data.disabled = map['Disabled']
        return data
      end
    end

    class OriginationRouteList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::OriginationRoute.parse(value) unless value.nil?
        end
        data
      end
    end

    class OriginationRoute
      def self.parse(map)
        data = Types::OriginationRoute.new
        data.host = map['Host']
        data.port = map['Port']
        data.protocol = map['Protocol']
        data.priority = map['Priority']
        data.weight = map['Weight']
        return data
      end
    end

    # Operation Parser for GetVoiceConnectorProxy
    class GetVoiceConnectorProxy
      def self.parse(http_resp)
        data = Types::GetVoiceConnectorProxyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.proxy = (Parsers::Proxy.parse(map['Proxy']) unless map['Proxy'].nil?)
        data
      end
    end

    class Proxy
      def self.parse(map)
        data = Types::Proxy.new
        data.default_session_expiry_minutes = map['DefaultSessionExpiryMinutes']
        data.disabled = map['Disabled']
        data.fall_back_phone_number = map['FallBackPhoneNumber']
        data.phone_number_countries = (Parsers::StringList.parse(map['PhoneNumberCountries']) unless map['PhoneNumberCountries'].nil?)
        return data
      end
    end

    class StringList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetVoiceConnectorStreamingConfiguration
    class GetVoiceConnectorStreamingConfiguration
      def self.parse(http_resp)
        data = Types::GetVoiceConnectorStreamingConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.streaming_configuration = (Parsers::StreamingConfiguration.parse(map['StreamingConfiguration']) unless map['StreamingConfiguration'].nil?)
        data
      end
    end

    class StreamingConfiguration
      def self.parse(map)
        data = Types::StreamingConfiguration.new
        data.data_retention_in_hours = map['DataRetentionInHours']
        data.disabled = map['Disabled']
        data.streaming_notification_targets = (Parsers::StreamingNotificationTargetList.parse(map['StreamingNotificationTargets']) unless map['StreamingNotificationTargets'].nil?)
        return data
      end
    end

    class StreamingNotificationTargetList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::StreamingNotificationTarget.parse(value) unless value.nil?
        end
        data
      end
    end

    class StreamingNotificationTarget
      def self.parse(map)
        data = Types::StreamingNotificationTarget.new
        data.notification_target = map['NotificationTarget']
        return data
      end
    end

    # Operation Parser for GetVoiceConnectorTermination
    class GetVoiceConnectorTermination
      def self.parse(http_resp)
        data = Types::GetVoiceConnectorTerminationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.termination = (Parsers::Termination.parse(map['Termination']) unless map['Termination'].nil?)
        data
      end
    end

    class Termination
      def self.parse(map)
        data = Types::Termination.new
        data.cps_limit = map['CpsLimit']
        data.default_phone_number = map['DefaultPhoneNumber']
        data.calling_regions = (Parsers::CallingRegionList.parse(map['CallingRegions']) unless map['CallingRegions'].nil?)
        data.cidr_allowed_list = (Parsers::StringList.parse(map['CidrAllowedList']) unless map['CidrAllowedList'].nil?)
        data.disabled = map['Disabled']
        return data
      end
    end

    class CallingRegionList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetVoiceConnectorTerminationHealth
    class GetVoiceConnectorTerminationHealth
      def self.parse(http_resp)
        data = Types::GetVoiceConnectorTerminationHealthOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.termination_health = (Parsers::TerminationHealth.parse(map['TerminationHealth']) unless map['TerminationHealth'].nil?)
        data
      end
    end

    class TerminationHealth
      def self.parse(map)
        data = Types::TerminationHealth.new
        data.timestamp = Time.parse(map['Timestamp']) if map['Timestamp']
        data.source = map['Source']
        return data
      end
    end

    # Operation Parser for InviteUsers
    class InviteUsers
      def self.parse(http_resp)
        data = Types::InviteUsersOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.invites = (Parsers::InviteList.parse(map['Invites']) unless map['Invites'].nil?)
        data
      end
    end

    class InviteList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Invite.parse(value) unless value.nil?
        end
        data
      end
    end

    class Invite
      def self.parse(map)
        data = Types::Invite.new
        data.invite_id = map['InviteId']
        data.status = map['Status']
        data.email_address = map['EmailAddress']
        data.email_status = map['EmailStatus']
        return data
      end
    end

    # Operation Parser for ListAccounts
    class ListAccounts
      def self.parse(http_resp)
        data = Types::ListAccountsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.accounts = (Parsers::AccountList.parse(map['Accounts']) unless map['Accounts'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class AccountList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Account.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListAppInstanceAdmins
    class ListAppInstanceAdmins
      def self.parse(http_resp)
        data = Types::ListAppInstanceAdminsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app_instance_arn = map['AppInstanceArn']
        data.app_instance_admins = (Parsers::AppInstanceAdminList.parse(map['AppInstanceAdmins']) unless map['AppInstanceAdmins'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class AppInstanceAdminList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AppInstanceAdminSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class AppInstanceAdminSummary
      def self.parse(map)
        data = Types::AppInstanceAdminSummary.new
        data.admin = (Parsers::Identity.parse(map['Admin']) unless map['Admin'].nil?)
        return data
      end
    end

    # Operation Parser for ListAppInstanceUsers
    class ListAppInstanceUsers
      def self.parse(http_resp)
        data = Types::ListAppInstanceUsersOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app_instance_arn = map['AppInstanceArn']
        data.app_instance_users = (Parsers::AppInstanceUserList.parse(map['AppInstanceUsers']) unless map['AppInstanceUsers'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class AppInstanceUserList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AppInstanceUserSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class AppInstanceUserSummary
      def self.parse(map)
        data = Types::AppInstanceUserSummary.new
        data.app_instance_user_arn = map['AppInstanceUserArn']
        data.name = map['Name']
        data.metadata = map['Metadata']
        return data
      end
    end

    # Operation Parser for ListAppInstances
    class ListAppInstances
      def self.parse(http_resp)
        data = Types::ListAppInstancesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app_instances = (Parsers::AppInstanceList.parse(map['AppInstances']) unless map['AppInstances'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class AppInstanceList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AppInstanceSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class AppInstanceSummary
      def self.parse(map)
        data = Types::AppInstanceSummary.new
        data.app_instance_arn = map['AppInstanceArn']
        data.name = map['Name']
        data.metadata = map['Metadata']
        return data
      end
    end

    # Operation Parser for ListAttendeeTags
    class ListAttendeeTags
      def self.parse(http_resp)
        data = Types::ListAttendeeTagsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (Parsers::TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    class TagList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Tag.parse(value) unless value.nil?
        end
        data
      end
    end

    class Tag
      def self.parse(map)
        data = Types::Tag.new
        data.key = map['Key']
        data.value = map['Value']
        return data
      end
    end

    # Operation Parser for ListAttendees
    class ListAttendees
      def self.parse(http_resp)
        data = Types::ListAttendeesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.attendees = (Parsers::AttendeeList.parse(map['Attendees']) unless map['Attendees'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for ListBots
    class ListBots
      def self.parse(http_resp)
        data = Types::ListBotsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.bots = (Parsers::BotList.parse(map['Bots']) unless map['Bots'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class BotList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Bot.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListChannelBans
    class ListChannelBans
      def self.parse(http_resp)
        data = Types::ListChannelBansOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channel_arn = map['ChannelArn']
        data.next_token = map['NextToken']
        data.channel_bans = (Parsers::ChannelBanSummaryList.parse(map['ChannelBans']) unless map['ChannelBans'].nil?)
        data
      end
    end

    class ChannelBanSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ChannelBanSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class ChannelBanSummary
      def self.parse(map)
        data = Types::ChannelBanSummary.new
        data.member = (Parsers::Identity.parse(map['Member']) unless map['Member'].nil?)
        return data
      end
    end

    # Operation Parser for ListChannelMemberships
    class ListChannelMemberships
      def self.parse(http_resp)
        data = Types::ListChannelMembershipsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channel_arn = map['ChannelArn']
        data.channel_memberships = (Parsers::ChannelMembershipSummaryList.parse(map['ChannelMemberships']) unless map['ChannelMemberships'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ChannelMembershipSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ChannelMembershipSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class ChannelMembershipSummary
      def self.parse(map)
        data = Types::ChannelMembershipSummary.new
        data.member = (Parsers::Identity.parse(map['Member']) unless map['Member'].nil?)
        return data
      end
    end

    # Operation Parser for ListChannelMembershipsForAppInstanceUser
    class ListChannelMembershipsForAppInstanceUser
      def self.parse(http_resp)
        data = Types::ListChannelMembershipsForAppInstanceUserOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channel_memberships = (Parsers::ChannelMembershipForAppInstanceUserSummaryList.parse(map['ChannelMemberships']) unless map['ChannelMemberships'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ChannelMembershipForAppInstanceUserSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ChannelMembershipForAppInstanceUserSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListChannelMessages
    class ListChannelMessages
      def self.parse(http_resp)
        data = Types::ListChannelMessagesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channel_arn = map['ChannelArn']
        data.next_token = map['NextToken']
        data.channel_messages = (Parsers::ChannelMessageSummaryList.parse(map['ChannelMessages']) unless map['ChannelMessages'].nil?)
        data
      end
    end

    class ChannelMessageSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ChannelMessageSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class ChannelMessageSummary
      def self.parse(map)
        data = Types::ChannelMessageSummary.new
        data.message_id = map['MessageId']
        data.content = map['Content']
        data.metadata = map['Metadata']
        data.type = map['Type']
        data.created_timestamp = Time.at(map['CreatedTimestamp'].to_i) if map['CreatedTimestamp']
        data.last_updated_timestamp = Time.at(map['LastUpdatedTimestamp'].to_i) if map['LastUpdatedTimestamp']
        data.last_edited_timestamp = Time.at(map['LastEditedTimestamp'].to_i) if map['LastEditedTimestamp']
        data.sender = (Parsers::Identity.parse(map['Sender']) unless map['Sender'].nil?)
        data.redacted = map['Redacted']
        return data
      end
    end

    # Operation Parser for ListChannelModerators
    class ListChannelModerators
      def self.parse(http_resp)
        data = Types::ListChannelModeratorsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channel_arn = map['ChannelArn']
        data.next_token = map['NextToken']
        data.channel_moderators = (Parsers::ChannelModeratorSummaryList.parse(map['ChannelModerators']) unless map['ChannelModerators'].nil?)
        data
      end
    end

    class ChannelModeratorSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ChannelModeratorSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class ChannelModeratorSummary
      def self.parse(map)
        data = Types::ChannelModeratorSummary.new
        data.moderator = (Parsers::Identity.parse(map['Moderator']) unless map['Moderator'].nil?)
        return data
      end
    end

    # Operation Parser for ListChannels
    class ListChannels
      def self.parse(http_resp)
        data = Types::ListChannelsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channels = (Parsers::ChannelSummaryList.parse(map['Channels']) unless map['Channels'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ChannelSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ChannelSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListChannelsModeratedByAppInstanceUser
    class ListChannelsModeratedByAppInstanceUser
      def self.parse(http_resp)
        data = Types::ListChannelsModeratedByAppInstanceUserOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channels = (Parsers::ChannelModeratedByAppInstanceUserSummaryList.parse(map['Channels']) unless map['Channels'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ChannelModeratedByAppInstanceUserSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ChannelModeratedByAppInstanceUserSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListMediaCapturePipelines
    class ListMediaCapturePipelines
      def self.parse(http_resp)
        data = Types::ListMediaCapturePipelinesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.media_capture_pipelines = (Parsers::MediaCapturePipelineList.parse(map['MediaCapturePipelines']) unless map['MediaCapturePipelines'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class MediaCapturePipelineList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::MediaCapturePipeline.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListMeetingTags
    class ListMeetingTags
      def self.parse(http_resp)
        data = Types::ListMeetingTagsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (Parsers::TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    # Operation Parser for ListMeetings
    class ListMeetings
      def self.parse(http_resp)
        data = Types::ListMeetingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.meetings = (Parsers::MeetingList.parse(map['Meetings']) unless map['Meetings'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class MeetingList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Meeting.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListPhoneNumberOrders
    class ListPhoneNumberOrders
      def self.parse(http_resp)
        data = Types::ListPhoneNumberOrdersOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.phone_number_orders = (Parsers::PhoneNumberOrderList.parse(map['PhoneNumberOrders']) unless map['PhoneNumberOrders'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class PhoneNumberOrderList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::PhoneNumberOrder.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListPhoneNumbers
    class ListPhoneNumbers
      def self.parse(http_resp)
        data = Types::ListPhoneNumbersOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.phone_numbers = (Parsers::PhoneNumberList.parse(map['PhoneNumbers']) unless map['PhoneNumbers'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class PhoneNumberList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::PhoneNumber.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListProxySessions
    class ListProxySessions
      def self.parse(http_resp)
        data = Types::ListProxySessionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.proxy_sessions = (Parsers::ProxySessions.parse(map['ProxySessions']) unless map['ProxySessions'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ProxySessions
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ProxySession.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListRoomMemberships
    class ListRoomMemberships
      def self.parse(http_resp)
        data = Types::ListRoomMembershipsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.room_memberships = (Parsers::RoomMembershipList.parse(map['RoomMemberships']) unless map['RoomMemberships'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class RoomMembershipList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::RoomMembership.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListRooms
    class ListRooms
      def self.parse(http_resp)
        data = Types::ListRoomsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.rooms = (Parsers::RoomList.parse(map['Rooms']) unless map['Rooms'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class RoomList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Room.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListSipMediaApplications
    class ListSipMediaApplications
      def self.parse(http_resp)
        data = Types::ListSipMediaApplicationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.sip_media_applications = (Parsers::SipMediaApplicationList.parse(map['SipMediaApplications']) unless map['SipMediaApplications'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class SipMediaApplicationList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::SipMediaApplication.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListSipRules
    class ListSipRules
      def self.parse(http_resp)
        data = Types::ListSipRulesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.sip_rules = (Parsers::SipRuleList.parse(map['SipRules']) unless map['SipRules'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class SipRuleList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::SipRule.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListSupportedPhoneNumberCountries
    class ListSupportedPhoneNumberCountries
      def self.parse(http_resp)
        data = Types::ListSupportedPhoneNumberCountriesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.phone_number_countries = (Parsers::PhoneNumberCountriesList.parse(map['PhoneNumberCountries']) unless map['PhoneNumberCountries'].nil?)
        data
      end
    end

    class PhoneNumberCountriesList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::PhoneNumberCountry.parse(value) unless value.nil?
        end
        data
      end
    end

    class PhoneNumberCountry
      def self.parse(map)
        data = Types::PhoneNumberCountry.new
        data.country_code = map['CountryCode']
        data.supported_phone_number_types = (Parsers::PhoneNumberTypeList.parse(map['SupportedPhoneNumberTypes']) unless map['SupportedPhoneNumberTypes'].nil?)
        return data
      end
    end

    class PhoneNumberTypeList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (Parsers::TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    # Operation Parser for ListUsers
    class ListUsers
      def self.parse(http_resp)
        data = Types::ListUsersOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.users = (Parsers::UserList.parse(map['Users']) unless map['Users'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class UserList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::User.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListVoiceConnectorGroups
    class ListVoiceConnectorGroups
      def self.parse(http_resp)
        data = Types::ListVoiceConnectorGroupsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.voice_connector_groups = (Parsers::VoiceConnectorGroupList.parse(map['VoiceConnectorGroups']) unless map['VoiceConnectorGroups'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class VoiceConnectorGroupList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::VoiceConnectorGroup.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListVoiceConnectorTerminationCredentials
    class ListVoiceConnectorTerminationCredentials
      def self.parse(http_resp)
        data = Types::ListVoiceConnectorTerminationCredentialsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.usernames = (Parsers::SensitiveStringList.parse(map['Usernames']) unless map['Usernames'].nil?)
        data
      end
    end

    class SensitiveStringList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListVoiceConnectors
    class ListVoiceConnectors
      def self.parse(http_resp)
        data = Types::ListVoiceConnectorsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.voice_connectors = (Parsers::VoiceConnectorList.parse(map['VoiceConnectors']) unless map['VoiceConnectors'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class VoiceConnectorList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::VoiceConnector.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for LogoutUser
    class LogoutUser
      def self.parse(http_resp)
        data = Types::LogoutUserOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for PutAppInstanceRetentionSettings
    class PutAppInstanceRetentionSettings
      def self.parse(http_resp)
        data = Types::PutAppInstanceRetentionSettingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app_instance_retention_settings = (Parsers::AppInstanceRetentionSettings.parse(map['AppInstanceRetentionSettings']) unless map['AppInstanceRetentionSettings'].nil?)
        data.initiate_deletion_timestamp = Time.at(map['InitiateDeletionTimestamp'].to_i) if map['InitiateDeletionTimestamp']
        data
      end
    end

    # Operation Parser for PutAppInstanceStreamingConfigurations
    class PutAppInstanceStreamingConfigurations
      def self.parse(http_resp)
        data = Types::PutAppInstanceStreamingConfigurationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app_instance_streaming_configurations = (Parsers::AppInstanceStreamingConfigurationList.parse(map['AppInstanceStreamingConfigurations']) unless map['AppInstanceStreamingConfigurations'].nil?)
        data
      end
    end

    # Operation Parser for PutEventsConfiguration
    class PutEventsConfiguration
      def self.parse(http_resp)
        data = Types::PutEventsConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.events_configuration = (Parsers::EventsConfiguration.parse(map['EventsConfiguration']) unless map['EventsConfiguration'].nil?)
        data
      end
    end

    # Operation Parser for PutRetentionSettings
    class PutRetentionSettings
      def self.parse(http_resp)
        data = Types::PutRetentionSettingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.retention_settings = (Parsers::RetentionSettings.parse(map['RetentionSettings']) unless map['RetentionSettings'].nil?)
        data.initiate_deletion_timestamp = Time.parse(map['InitiateDeletionTimestamp']) if map['InitiateDeletionTimestamp']
        data
      end
    end

    # Operation Parser for PutSipMediaApplicationLoggingConfiguration
    class PutSipMediaApplicationLoggingConfiguration
      def self.parse(http_resp)
        data = Types::PutSipMediaApplicationLoggingConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.sip_media_application_logging_configuration = (Parsers::SipMediaApplicationLoggingConfiguration.parse(map['SipMediaApplicationLoggingConfiguration']) unless map['SipMediaApplicationLoggingConfiguration'].nil?)
        data
      end
    end

    # Operation Parser for PutVoiceConnectorEmergencyCallingConfiguration
    class PutVoiceConnectorEmergencyCallingConfiguration
      def self.parse(http_resp)
        data = Types::PutVoiceConnectorEmergencyCallingConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.emergency_calling_configuration = (Parsers::EmergencyCallingConfiguration.parse(map['EmergencyCallingConfiguration']) unless map['EmergencyCallingConfiguration'].nil?)
        data
      end
    end

    # Operation Parser for PutVoiceConnectorLoggingConfiguration
    class PutVoiceConnectorLoggingConfiguration
      def self.parse(http_resp)
        data = Types::PutVoiceConnectorLoggingConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.logging_configuration = (Parsers::LoggingConfiguration.parse(map['LoggingConfiguration']) unless map['LoggingConfiguration'].nil?)
        data
      end
    end

    # Operation Parser for PutVoiceConnectorOrigination
    class PutVoiceConnectorOrigination
      def self.parse(http_resp)
        data = Types::PutVoiceConnectorOriginationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.origination = (Parsers::Origination.parse(map['Origination']) unless map['Origination'].nil?)
        data
      end
    end

    # Operation Parser for PutVoiceConnectorProxy
    class PutVoiceConnectorProxy
      def self.parse(http_resp)
        data = Types::PutVoiceConnectorProxyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.proxy = (Parsers::Proxy.parse(map['Proxy']) unless map['Proxy'].nil?)
        data
      end
    end

    # Operation Parser for PutVoiceConnectorStreamingConfiguration
    class PutVoiceConnectorStreamingConfiguration
      def self.parse(http_resp)
        data = Types::PutVoiceConnectorStreamingConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.streaming_configuration = (Parsers::StreamingConfiguration.parse(map['StreamingConfiguration']) unless map['StreamingConfiguration'].nil?)
        data
      end
    end

    # Operation Parser for PutVoiceConnectorTermination
    class PutVoiceConnectorTermination
      def self.parse(http_resp)
        data = Types::PutVoiceConnectorTerminationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.termination = (Parsers::Termination.parse(map['Termination']) unless map['Termination'].nil?)
        data
      end
    end

    # Operation Parser for PutVoiceConnectorTerminationCredentials
    class PutVoiceConnectorTerminationCredentials
      def self.parse(http_resp)
        data = Types::PutVoiceConnectorTerminationCredentialsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for RedactChannelMessage
    class RedactChannelMessage
      def self.parse(http_resp)
        data = Types::RedactChannelMessageOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channel_arn = map['ChannelArn']
        data.message_id = map['MessageId']
        data
      end
    end

    # Operation Parser for RedactConversationMessage
    class RedactConversationMessage
      def self.parse(http_resp)
        data = Types::RedactConversationMessageOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for RedactRoomMessage
    class RedactRoomMessage
      def self.parse(http_resp)
        data = Types::RedactRoomMessageOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for RegenerateSecurityToken
    class RegenerateSecurityToken
      def self.parse(http_resp)
        data = Types::RegenerateSecurityTokenOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.bot = (Parsers::Bot.parse(map['Bot']) unless map['Bot'].nil?)
        data
      end
    end

    # Operation Parser for ResetPersonalPIN
    class ResetPersonalPIN
      def self.parse(http_resp)
        data = Types::ResetPersonalPINOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.user = (Parsers::User.parse(map['User']) unless map['User'].nil?)
        data
      end
    end

    # Operation Parser for RestorePhoneNumber
    class RestorePhoneNumber
      def self.parse(http_resp)
        data = Types::RestorePhoneNumberOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.phone_number = (Parsers::PhoneNumber.parse(map['PhoneNumber']) unless map['PhoneNumber'].nil?)
        data
      end
    end

    # Operation Parser for SearchAvailablePhoneNumbers
    class SearchAvailablePhoneNumbers
      def self.parse(http_resp)
        data = Types::SearchAvailablePhoneNumbersOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.e164_phone_numbers = (Parsers::E164PhoneNumberList.parse(map['E164PhoneNumbers']) unless map['E164PhoneNumbers'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class E164PhoneNumberList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for SendChannelMessage
    class SendChannelMessage
      def self.parse(http_resp)
        data = Types::SendChannelMessageOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channel_arn = map['ChannelArn']
        data.message_id = map['MessageId']
        data
      end
    end

    # Operation Parser for StartMeetingTranscription
    class StartMeetingTranscription
      def self.parse(http_resp)
        data = Types::StartMeetingTranscriptionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for StopMeetingTranscription
    class StopMeetingTranscription
      def self.parse(http_resp)
        data = Types::StopMeetingTranscriptionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for TagAttendee
    class TagAttendee
      def self.parse(http_resp)
        data = Types::TagAttendeeOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for TagMeeting
    class TagMeeting
      def self.parse(http_resp)
        data = Types::TagMeetingOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UntagAttendee
    class UntagAttendee
      def self.parse(http_resp)
        data = Types::UntagAttendeeOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UntagMeeting
    class UntagMeeting
      def self.parse(http_resp)
        data = Types::UntagMeetingOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateAccount
    class UpdateAccount
      def self.parse(http_resp)
        data = Types::UpdateAccountOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.account = (Parsers::Account.parse(map['Account']) unless map['Account'].nil?)
        data
      end
    end

    # Operation Parser for UpdateAccountSettings
    class UpdateAccountSettings
      def self.parse(http_resp)
        data = Types::UpdateAccountSettingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateAppInstance
    class UpdateAppInstance
      def self.parse(http_resp)
        data = Types::UpdateAppInstanceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app_instance_arn = map['AppInstanceArn']
        data
      end
    end

    # Operation Parser for UpdateAppInstanceUser
    class UpdateAppInstanceUser
      def self.parse(http_resp)
        data = Types::UpdateAppInstanceUserOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app_instance_user_arn = map['AppInstanceUserArn']
        data
      end
    end

    # Operation Parser for UpdateBot
    class UpdateBot
      def self.parse(http_resp)
        data = Types::UpdateBotOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.bot = (Parsers::Bot.parse(map['Bot']) unless map['Bot'].nil?)
        data
      end
    end

    # Operation Parser for UpdateChannel
    class UpdateChannel
      def self.parse(http_resp)
        data = Types::UpdateChannelOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channel_arn = map['ChannelArn']
        data
      end
    end

    # Operation Parser for UpdateChannelMessage
    class UpdateChannelMessage
      def self.parse(http_resp)
        data = Types::UpdateChannelMessageOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channel_arn = map['ChannelArn']
        data.message_id = map['MessageId']
        data
      end
    end

    # Operation Parser for UpdateChannelReadMarker
    class UpdateChannelReadMarker
      def self.parse(http_resp)
        data = Types::UpdateChannelReadMarkerOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channel_arn = map['ChannelArn']
        data
      end
    end

    # Operation Parser for UpdateGlobalSettings
    class UpdateGlobalSettings
      def self.parse(http_resp)
        data = Types::UpdateGlobalSettingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdatePhoneNumber
    class UpdatePhoneNumber
      def self.parse(http_resp)
        data = Types::UpdatePhoneNumberOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.phone_number = (Parsers::PhoneNumber.parse(map['PhoneNumber']) unless map['PhoneNumber'].nil?)
        data
      end
    end

    # Operation Parser for UpdatePhoneNumberSettings
    class UpdatePhoneNumberSettings
      def self.parse(http_resp)
        data = Types::UpdatePhoneNumberSettingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateProxySession
    class UpdateProxySession
      def self.parse(http_resp)
        data = Types::UpdateProxySessionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.proxy_session = (Parsers::ProxySession.parse(map['ProxySession']) unless map['ProxySession'].nil?)
        data
      end
    end

    # Operation Parser for UpdateRoom
    class UpdateRoom
      def self.parse(http_resp)
        data = Types::UpdateRoomOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.room = (Parsers::Room.parse(map['Room']) unless map['Room'].nil?)
        data
      end
    end

    # Operation Parser for UpdateRoomMembership
    class UpdateRoomMembership
      def self.parse(http_resp)
        data = Types::UpdateRoomMembershipOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.room_membership = (Parsers::RoomMembership.parse(map['RoomMembership']) unless map['RoomMembership'].nil?)
        data
      end
    end

    # Operation Parser for UpdateSipMediaApplication
    class UpdateSipMediaApplication
      def self.parse(http_resp)
        data = Types::UpdateSipMediaApplicationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.sip_media_application = (Parsers::SipMediaApplication.parse(map['SipMediaApplication']) unless map['SipMediaApplication'].nil?)
        data
      end
    end

    # Operation Parser for UpdateSipMediaApplicationCall
    class UpdateSipMediaApplicationCall
      def self.parse(http_resp)
        data = Types::UpdateSipMediaApplicationCallOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.sip_media_application_call = (Parsers::SipMediaApplicationCall.parse(map['SipMediaApplicationCall']) unless map['SipMediaApplicationCall'].nil?)
        data
      end
    end

    # Operation Parser for UpdateSipRule
    class UpdateSipRule
      def self.parse(http_resp)
        data = Types::UpdateSipRuleOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.sip_rule = (Parsers::SipRule.parse(map['SipRule']) unless map['SipRule'].nil?)
        data
      end
    end

    # Operation Parser for UpdateUser
    class UpdateUser
      def self.parse(http_resp)
        data = Types::UpdateUserOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.user = (Parsers::User.parse(map['User']) unless map['User'].nil?)
        data
      end
    end

    # Operation Parser for UpdateUserSettings
    class UpdateUserSettings
      def self.parse(http_resp)
        data = Types::UpdateUserSettingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateVoiceConnector
    class UpdateVoiceConnector
      def self.parse(http_resp)
        data = Types::UpdateVoiceConnectorOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.voice_connector = (Parsers::VoiceConnector.parse(map['VoiceConnector']) unless map['VoiceConnector'].nil?)
        data
      end
    end

    # Operation Parser for UpdateVoiceConnectorGroup
    class UpdateVoiceConnectorGroup
      def self.parse(http_resp)
        data = Types::UpdateVoiceConnectorGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.voice_connector_group = (Parsers::VoiceConnectorGroup.parse(map['VoiceConnectorGroup']) unless map['VoiceConnectorGroup'].nil?)
        data
      end
    end
  end
end
