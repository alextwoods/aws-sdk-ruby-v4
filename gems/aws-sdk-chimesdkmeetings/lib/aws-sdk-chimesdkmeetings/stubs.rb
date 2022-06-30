# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ChimeSDKMeetings
  module Stubs

    # Operation Stubber for BatchCreateAttendee
    class BatchCreateAttendee
      def self.default(visited=[])
        {
          attendees: Stubs::AttendeeList.default(visited),
          errors: Stubs::BatchCreateAttendeeErrorList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Attendees'] = Stubs::AttendeeList.stub(stub[:attendees]) unless stub[:attendees].nil?
        data['Errors'] = Stubs::BatchCreateAttendeeErrorList.stub(stub[:errors]) unless stub[:errors].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for BatchCreateAttendeeErrorList
    class BatchCreateAttendeeErrorList
      def self.default(visited=[])
        return nil if visited.include?('BatchCreateAttendeeErrorList')
        visited = visited + ['BatchCreateAttendeeErrorList']
        [
          Stubs::CreateAttendeeError.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::CreateAttendeeError.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CreateAttendeeError
    class CreateAttendeeError
      def self.default(visited=[])
        return nil if visited.include?('CreateAttendeeError')
        visited = visited + ['CreateAttendeeError']
        {
          external_user_id: 'external_user_id',
          error_code: 'error_code',
          error_message: 'error_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::CreateAttendeeError.new
        data = {}
        data['ExternalUserId'] = stub[:external_user_id] unless stub[:external_user_id].nil?
        data['ErrorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data
      end
    end

    # List Stubber for AttendeeList
    class AttendeeList
      def self.default(visited=[])
        return nil if visited.include?('AttendeeList')
        visited = visited + ['AttendeeList']
        [
          Stubs::Attendee.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Attendee.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Attendee
    class Attendee
      def self.default(visited=[])
        return nil if visited.include?('Attendee')
        visited = visited + ['Attendee']
        {
          external_user_id: 'external_user_id',
          attendee_id: 'attendee_id',
          join_token: 'join_token',
          capabilities: Stubs::AttendeeCapabilities.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Attendee.new
        data = {}
        data['ExternalUserId'] = stub[:external_user_id] unless stub[:external_user_id].nil?
        data['AttendeeId'] = stub[:attendee_id] unless stub[:attendee_id].nil?
        data['JoinToken'] = stub[:join_token] unless stub[:join_token].nil?
        data['Capabilities'] = Stubs::AttendeeCapabilities.stub(stub[:capabilities]) unless stub[:capabilities].nil?
        data
      end
    end

    # Structure Stubber for AttendeeCapabilities
    class AttendeeCapabilities
      def self.default(visited=[])
        return nil if visited.include?('AttendeeCapabilities')
        visited = visited + ['AttendeeCapabilities']
        {
          audio: 'audio',
          video: 'video',
          content: 'content',
        }
      end

      def self.stub(stub)
        stub ||= Types::AttendeeCapabilities.new
        data = {}
        data['Audio'] = stub[:audio] unless stub[:audio].nil?
        data['Video'] = stub[:video] unless stub[:video].nil?
        data['Content'] = stub[:content] unless stub[:content].nil?
        data
      end
    end

    # Operation Stubber for BatchUpdateAttendeeCapabilitiesExcept
    class BatchUpdateAttendeeCapabilitiesExcept
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateAttendee
    class CreateAttendee
      def self.default(visited=[])
        {
          attendee: Stubs::Attendee.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Attendee'] = Stubs::Attendee.stub(stub[:attendee]) unless stub[:attendee].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateMeeting
    class CreateMeeting
      def self.default(visited=[])
        {
          meeting: Stubs::Meeting.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Meeting'] = Stubs::Meeting.stub(stub[:meeting]) unless stub[:meeting].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Meeting
    class Meeting
      def self.default(visited=[])
        return nil if visited.include?('Meeting')
        visited = visited + ['Meeting']
        {
          meeting_id: 'meeting_id',
          meeting_host_id: 'meeting_host_id',
          external_meeting_id: 'external_meeting_id',
          media_region: 'media_region',
          media_placement: Stubs::MediaPlacement.default(visited),
          meeting_features: Stubs::MeetingFeaturesConfiguration.default(visited),
          primary_meeting_id: 'primary_meeting_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::Meeting.new
        data = {}
        data['MeetingId'] = stub[:meeting_id] unless stub[:meeting_id].nil?
        data['MeetingHostId'] = stub[:meeting_host_id] unless stub[:meeting_host_id].nil?
        data['ExternalMeetingId'] = stub[:external_meeting_id] unless stub[:external_meeting_id].nil?
        data['MediaRegion'] = stub[:media_region] unless stub[:media_region].nil?
        data['MediaPlacement'] = Stubs::MediaPlacement.stub(stub[:media_placement]) unless stub[:media_placement].nil?
        data['MeetingFeatures'] = Stubs::MeetingFeaturesConfiguration.stub(stub[:meeting_features]) unless stub[:meeting_features].nil?
        data['PrimaryMeetingId'] = stub[:primary_meeting_id] unless stub[:primary_meeting_id].nil?
        data
      end
    end

    # Structure Stubber for MeetingFeaturesConfiguration
    class MeetingFeaturesConfiguration
      def self.default(visited=[])
        return nil if visited.include?('MeetingFeaturesConfiguration')
        visited = visited + ['MeetingFeaturesConfiguration']
        {
          audio: Stubs::AudioFeatures.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MeetingFeaturesConfiguration.new
        data = {}
        data['Audio'] = Stubs::AudioFeatures.stub(stub[:audio]) unless stub[:audio].nil?
        data
      end
    end

    # Structure Stubber for AudioFeatures
    class AudioFeatures
      def self.default(visited=[])
        return nil if visited.include?('AudioFeatures')
        visited = visited + ['AudioFeatures']
        {
          echo_reduction: 'echo_reduction',
        }
      end

      def self.stub(stub)
        stub ||= Types::AudioFeatures.new
        data = {}
        data['EchoReduction'] = stub[:echo_reduction] unless stub[:echo_reduction].nil?
        data
      end
    end

    # Structure Stubber for MediaPlacement
    class MediaPlacement
      def self.default(visited=[])
        return nil if visited.include?('MediaPlacement')
        visited = visited + ['MediaPlacement']
        {
          audio_host_url: 'audio_host_url',
          audio_fallback_url: 'audio_fallback_url',
          signaling_url: 'signaling_url',
          turn_control_url: 'turn_control_url',
          screen_data_url: 'screen_data_url',
          screen_viewing_url: 'screen_viewing_url',
          screen_sharing_url: 'screen_sharing_url',
          event_ingestion_url: 'event_ingestion_url',
        }
      end

      def self.stub(stub)
        stub ||= Types::MediaPlacement.new
        data = {}
        data['AudioHostUrl'] = stub[:audio_host_url] unless stub[:audio_host_url].nil?
        data['AudioFallbackUrl'] = stub[:audio_fallback_url] unless stub[:audio_fallback_url].nil?
        data['SignalingUrl'] = stub[:signaling_url] unless stub[:signaling_url].nil?
        data['TurnControlUrl'] = stub[:turn_control_url] unless stub[:turn_control_url].nil?
        data['ScreenDataUrl'] = stub[:screen_data_url] unless stub[:screen_data_url].nil?
        data['ScreenViewingUrl'] = stub[:screen_viewing_url] unless stub[:screen_viewing_url].nil?
        data['ScreenSharingUrl'] = stub[:screen_sharing_url] unless stub[:screen_sharing_url].nil?
        data['EventIngestionUrl'] = stub[:event_ingestion_url] unless stub[:event_ingestion_url].nil?
        data
      end
    end

    # Operation Stubber for CreateMeetingWithAttendees
    class CreateMeetingWithAttendees
      def self.default(visited=[])
        {
          meeting: Stubs::Meeting.default(visited),
          attendees: Stubs::AttendeeList.default(visited),
          errors: Stubs::BatchCreateAttendeeErrorList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Meeting'] = Stubs::Meeting.stub(stub[:meeting]) unless stub[:meeting].nil?
        data['Attendees'] = Stubs::AttendeeList.stub(stub[:attendees]) unless stub[:attendees].nil?
        data['Errors'] = Stubs::BatchCreateAttendeeErrorList.stub(stub[:errors]) unless stub[:errors].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteAttendee
    class DeleteAttendee
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteMeeting
    class DeleteMeeting
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for GetAttendee
    class GetAttendee
      def self.default(visited=[])
        {
          attendee: Stubs::Attendee.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Attendee'] = Stubs::Attendee.stub(stub[:attendee]) unless stub[:attendee].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetMeeting
    class GetMeeting
      def self.default(visited=[])
        {
          meeting: Stubs::Meeting.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Meeting'] = Stubs::Meeting.stub(stub[:meeting]) unless stub[:meeting].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListAttendees
    class ListAttendees
      def self.default(visited=[])
        {
          attendees: Stubs::AttendeeList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Attendees'] = Stubs::AttendeeList.stub(stub[:attendees]) unless stub[:attendees].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StartMeetingTranscription
    class StartMeetingTranscription
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopMeetingTranscription
    class StopMeetingTranscription
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateAttendeeCapabilities
    class UpdateAttendeeCapabilities
      def self.default(visited=[])
        {
          attendee: Stubs::Attendee.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Attendee'] = Stubs::Attendee.stub(stub[:attendee]) unless stub[:attendee].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
