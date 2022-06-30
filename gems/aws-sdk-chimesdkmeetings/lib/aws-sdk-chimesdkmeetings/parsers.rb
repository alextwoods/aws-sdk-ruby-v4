# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::ChimeSDKMeetings
  module Parsers

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
        data.capabilities = (Parsers::AttendeeCapabilities.parse(map['Capabilities']) unless map['Capabilities'].nil?)
        return data
      end
    end

    class AttendeeCapabilities
      def self.parse(map)
        data = Types::AttendeeCapabilities.new
        data.audio = map['Audio']
        data.video = map['Video']
        data.content = map['Content']
        return data
      end
    end

    # Error Parser for ServiceUnavailableException
    class ServiceUnavailableException
      def self.parse(http_resp)
        data = Types::ServiceUnavailableException.new
        data.retry_after_seconds = http_resp.headers['Retry-After']
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['Code']
        data.message = map['Message']
        data.request_id = map['RequestId']
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
        data.request_id = map['RequestId']
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
        data.request_id = map['RequestId']
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
        data.request_id = map['RequestId']
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
        data.request_id = map['RequestId']
        data
      end
    end

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp)
        data = Types::LimitExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['Code']
        data.message = map['Message']
        data.request_id = map['RequestId']
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['Code']
        data.message = map['Message']
        data.request_id = map['RequestId']
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
        data.request_id = map['RequestId']
        data
      end
    end

    # Error Parser for UnauthorizedException
    class UnauthorizedException
      def self.parse(http_resp)
        data = Types::UnauthorizedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['Code']
        data.message = map['Message']
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for BatchUpdateAttendeeCapabilitiesExcept
    class BatchUpdateAttendeeCapabilitiesExcept
      def self.parse(http_resp)
        data = Types::BatchUpdateAttendeeCapabilitiesExceptOutput.new
        map = Hearth::JSON.load(http_resp.body)
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
        data.request_id = map['RequestId']
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
        data.meeting_host_id = map['MeetingHostId']
        data.external_meeting_id = map['ExternalMeetingId']
        data.media_region = map['MediaRegion']
        data.media_placement = (Parsers::MediaPlacement.parse(map['MediaPlacement']) unless map['MediaPlacement'].nil?)
        data.meeting_features = (Parsers::MeetingFeaturesConfiguration.parse(map['MeetingFeatures']) unless map['MeetingFeatures'].nil?)
        data.primary_meeting_id = map['PrimaryMeetingId']
        return data
      end
    end

    class MeetingFeaturesConfiguration
      def self.parse(map)
        data = Types::MeetingFeaturesConfiguration.new
        data.audio = (Parsers::AudioFeatures.parse(map['Audio']) unless map['Audio'].nil?)
        return data
      end
    end

    class AudioFeatures
      def self.parse(map)
        data = Types::AudioFeatures.new
        data.echo_reduction = map['EchoReduction']
        return data
      end
    end

    class MediaPlacement
      def self.parse(map)
        data = Types::MediaPlacement.new
        data.audio_host_url = map['AudioHostUrl']
        data.audio_fallback_url = map['AudioFallbackUrl']
        data.signaling_url = map['SignalingUrl']
        data.turn_control_url = map['TurnControlUrl']
        data.screen_data_url = map['ScreenDataUrl']
        data.screen_viewing_url = map['ScreenViewingUrl']
        data.screen_sharing_url = map['ScreenSharingUrl']
        data.event_ingestion_url = map['EventIngestionUrl']
        return data
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

    # Operation Parser for DeleteAttendee
    class DeleteAttendee
      def self.parse(http_resp)
        data = Types::DeleteAttendeeOutput.new
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

    # Operation Parser for GetAttendee
    class GetAttendee
      def self.parse(http_resp)
        data = Types::GetAttendeeOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.attendee = (Parsers::Attendee.parse(map['Attendee']) unless map['Attendee'].nil?)
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

    # Operation Parser for UpdateAttendeeCapabilities
    class UpdateAttendeeCapabilities
      def self.parse(http_resp)
        data = Types::UpdateAttendeeCapabilitiesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.attendee = (Parsers::Attendee.parse(map['Attendee']) unless map['Attendee'].nil?)
        data
      end
    end
  end
end
