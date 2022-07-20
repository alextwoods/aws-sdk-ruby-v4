# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::ChimeSDKMeetings
  module Builders

    # Operation Builder for BatchCreateAttendee
    class BatchCreateAttendee
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        CGI.parse('operation=batch-create').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:meeting_id].to_s.empty?
          raise ArgumentError, "HTTP label :meeting_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/meetings/%<MeetingId>s/attendees',
            MeetingId: Hearth::HTTP.uri_escape(input[:meeting_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Attendees'] = CreateAttendeeRequestItemList.build(input[:attendees]) unless input[:attendees].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for CreateAttendeeRequestItemList
    class CreateAttendeeRequestItemList
      def self.build(input)
        data = []
        input.each do |element|
          data << CreateAttendeeRequestItem.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CreateAttendeeRequestItem
    class CreateAttendeeRequestItem
      def self.build(input)
        data = {}
        data['ExternalUserId'] = input[:external_user_id] unless input[:external_user_id].nil?
        data['Capabilities'] = AttendeeCapabilities.build(input[:capabilities]) unless input[:capabilities].nil?
        data
      end
    end

    # Structure Builder for AttendeeCapabilities
    class AttendeeCapabilities
      def self.build(input)
        data = {}
        data['Audio'] = input[:audio] unless input[:audio].nil?
        data['Video'] = input[:video] unless input[:video].nil?
        data['Content'] = input[:content] unless input[:content].nil?
        data
      end
    end

    # Operation Builder for BatchUpdateAttendeeCapabilitiesExcept
    class BatchUpdateAttendeeCapabilitiesExcept
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        CGI.parse('operation=batch-update-except').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:meeting_id].to_s.empty?
          raise ArgumentError, "HTTP label :meeting_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/meetings/%<MeetingId>s/attendees/capabilities',
            MeetingId: Hearth::HTTP.uri_escape(input[:meeting_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ExcludedAttendeeIds'] = AttendeeIdsList.build(input[:excluded_attendee_ids]) unless input[:excluded_attendee_ids].nil?
        data['Capabilities'] = AttendeeCapabilities.build(input[:capabilities]) unless input[:capabilities].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for AttendeeIdsList
    class AttendeeIdsList
      def self.build(input)
        data = []
        input.each do |element|
          data << AttendeeIdItem.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AttendeeIdItem
    class AttendeeIdItem
      def self.build(input)
        data = {}
        data['AttendeeId'] = input[:attendee_id] unless input[:attendee_id].nil?
        data
      end
    end

    # Operation Builder for CreateAttendee
    class CreateAttendee
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:meeting_id].to_s.empty?
          raise ArgumentError, "HTTP label :meeting_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/meetings/%<MeetingId>s/attendees',
            MeetingId: Hearth::HTTP.uri_escape(input[:meeting_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ExternalUserId'] = input[:external_user_id] unless input[:external_user_id].nil?
        data['Capabilities'] = AttendeeCapabilities.build(input[:capabilities]) unless input[:capabilities].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateMeeting
    class CreateMeeting
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/meetings')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['MediaRegion'] = input[:media_region] unless input[:media_region].nil?
        data['MeetingHostId'] = input[:meeting_host_id] unless input[:meeting_host_id].nil?
        data['ExternalMeetingId'] = input[:external_meeting_id] unless input[:external_meeting_id].nil?
        data['NotificationsConfiguration'] = NotificationsConfiguration.build(input[:notifications_configuration]) unless input[:notifications_configuration].nil?
        data['MeetingFeatures'] = MeetingFeaturesConfiguration.build(input[:meeting_features]) unless input[:meeting_features].nil?
        data['PrimaryMeetingId'] = input[:primary_meeting_id] unless input[:primary_meeting_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for MeetingFeaturesConfiguration
    class MeetingFeaturesConfiguration
      def self.build(input)
        data = {}
        data['Audio'] = AudioFeatures.build(input[:audio]) unless input[:audio].nil?
        data
      end
    end

    # Structure Builder for AudioFeatures
    class AudioFeatures
      def self.build(input)
        data = {}
        data['EchoReduction'] = input[:echo_reduction] unless input[:echo_reduction].nil?
        data
      end
    end

    # Structure Builder for NotificationsConfiguration
    class NotificationsConfiguration
      def self.build(input)
        data = {}
        data['LambdaFunctionArn'] = input[:lambda_function_arn] unless input[:lambda_function_arn].nil?
        data['SnsTopicArn'] = input[:sns_topic_arn] unless input[:sns_topic_arn].nil?
        data['SqsQueueArn'] = input[:sqs_queue_arn] unless input[:sqs_queue_arn].nil?
        data
      end
    end

    # Operation Builder for CreateMeetingWithAttendees
    class CreateMeetingWithAttendees
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        CGI.parse('operation=create-attendees').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        http_req.append_path('/meetings')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['MediaRegion'] = input[:media_region] unless input[:media_region].nil?
        data['MeetingHostId'] = input[:meeting_host_id] unless input[:meeting_host_id].nil?
        data['ExternalMeetingId'] = input[:external_meeting_id] unless input[:external_meeting_id].nil?
        data['MeetingFeatures'] = MeetingFeaturesConfiguration.build(input[:meeting_features]) unless input[:meeting_features].nil?
        data['NotificationsConfiguration'] = NotificationsConfiguration.build(input[:notifications_configuration]) unless input[:notifications_configuration].nil?
        data['Attendees'] = CreateMeetingWithAttendeesRequestItemList.build(input[:attendees]) unless input[:attendees].nil?
        data['PrimaryMeetingId'] = input[:primary_meeting_id] unless input[:primary_meeting_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for CreateMeetingWithAttendeesRequestItemList
    class CreateMeetingWithAttendeesRequestItemList
      def self.build(input)
        data = []
        input.each do |element|
          data << CreateAttendeeRequestItem.build(element) unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DeleteAttendee
    class DeleteAttendee
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:meeting_id].to_s.empty?
          raise ArgumentError, "HTTP label :meeting_id cannot be nil or empty."
        end
        if input[:attendee_id].to_s.empty?
          raise ArgumentError, "HTTP label :attendee_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/meetings/%<MeetingId>s/attendees/%<AttendeeId>s',
            MeetingId: Hearth::HTTP.uri_escape(input[:meeting_id].to_s),
            AttendeeId: Hearth::HTTP.uri_escape(input[:attendee_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteMeeting
    class DeleteMeeting
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:meeting_id].to_s.empty?
          raise ArgumentError, "HTTP label :meeting_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/meetings/%<MeetingId>s',
            MeetingId: Hearth::HTTP.uri_escape(input[:meeting_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetAttendee
    class GetAttendee
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:meeting_id].to_s.empty?
          raise ArgumentError, "HTTP label :meeting_id cannot be nil or empty."
        end
        if input[:attendee_id].to_s.empty?
          raise ArgumentError, "HTTP label :attendee_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/meetings/%<MeetingId>s/attendees/%<AttendeeId>s',
            MeetingId: Hearth::HTTP.uri_escape(input[:meeting_id].to_s),
            AttendeeId: Hearth::HTTP.uri_escape(input[:attendee_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetMeeting
    class GetMeeting
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:meeting_id].to_s.empty?
          raise ArgumentError, "HTTP label :meeting_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/meetings/%<MeetingId>s',
            MeetingId: Hearth::HTTP.uri_escape(input[:meeting_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListAttendees
    class ListAttendees
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:meeting_id].to_s.empty?
          raise ArgumentError, "HTTP label :meeting_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/meetings/%<MeetingId>s/attendees',
            MeetingId: Hearth::HTTP.uri_escape(input[:meeting_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        params['max-results'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for StartMeetingTranscription
    class StartMeetingTranscription
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        CGI.parse('operation=start').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:meeting_id].to_s.empty?
          raise ArgumentError, "HTTP label :meeting_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/meetings/%<MeetingId>s/transcription',
            MeetingId: Hearth::HTTP.uri_escape(input[:meeting_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['TranscriptionConfiguration'] = TranscriptionConfiguration.build(input[:transcription_configuration]) unless input[:transcription_configuration].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for TranscriptionConfiguration
    class TranscriptionConfiguration
      def self.build(input)
        data = {}
        data['EngineTranscribeSettings'] = EngineTranscribeSettings.build(input[:engine_transcribe_settings]) unless input[:engine_transcribe_settings].nil?
        data['EngineTranscribeMedicalSettings'] = EngineTranscribeMedicalSettings.build(input[:engine_transcribe_medical_settings]) unless input[:engine_transcribe_medical_settings].nil?
        data
      end
    end

    # Structure Builder for EngineTranscribeMedicalSettings
    class EngineTranscribeMedicalSettings
      def self.build(input)
        data = {}
        data['LanguageCode'] = input[:language_code] unless input[:language_code].nil?
        data['Specialty'] = input[:specialty] unless input[:specialty].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data['VocabularyName'] = input[:vocabulary_name] unless input[:vocabulary_name].nil?
        data['Region'] = input[:region] unless input[:region].nil?
        data['ContentIdentificationType'] = input[:content_identification_type] unless input[:content_identification_type].nil?
        data
      end
    end

    # Structure Builder for EngineTranscribeSettings
    class EngineTranscribeSettings
      def self.build(input)
        data = {}
        data['LanguageCode'] = input[:language_code] unless input[:language_code].nil?
        data['VocabularyFilterMethod'] = input[:vocabulary_filter_method] unless input[:vocabulary_filter_method].nil?
        data['VocabularyFilterName'] = input[:vocabulary_filter_name] unless input[:vocabulary_filter_name].nil?
        data['VocabularyName'] = input[:vocabulary_name] unless input[:vocabulary_name].nil?
        data['Region'] = input[:region] unless input[:region].nil?
        data['EnablePartialResultsStabilization'] = input[:enable_partial_results_stabilization] unless input[:enable_partial_results_stabilization].nil?
        data['PartialResultsStability'] = input[:partial_results_stability] unless input[:partial_results_stability].nil?
        data['ContentIdentificationType'] = input[:content_identification_type] unless input[:content_identification_type].nil?
        data['ContentRedactionType'] = input[:content_redaction_type] unless input[:content_redaction_type].nil?
        data['PiiEntityTypes'] = input[:pii_entity_types] unless input[:pii_entity_types].nil?
        data['LanguageModelName'] = input[:language_model_name] unless input[:language_model_name].nil?
        data['IdentifyLanguage'] = input[:identify_language] unless input[:identify_language].nil?
        data['LanguageOptions'] = input[:language_options] unless input[:language_options].nil?
        data['PreferredLanguage'] = input[:preferred_language] unless input[:preferred_language].nil?
        data
      end
    end

    # Operation Builder for StopMeetingTranscription
    class StopMeetingTranscription
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        CGI.parse('operation=stop').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:meeting_id].to_s.empty?
          raise ArgumentError, "HTTP label :meeting_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/meetings/%<MeetingId>s/transcription',
            MeetingId: Hearth::HTTP.uri_escape(input[:meeting_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for UpdateAttendeeCapabilities
    class UpdateAttendeeCapabilities
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:meeting_id].to_s.empty?
          raise ArgumentError, "HTTP label :meeting_id cannot be nil or empty."
        end
        if input[:attendee_id].to_s.empty?
          raise ArgumentError, "HTTP label :attendee_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/meetings/%<MeetingId>s/attendees/%<AttendeeId>s/capabilities',
            MeetingId: Hearth::HTTP.uri_escape(input[:meeting_id].to_s),
            AttendeeId: Hearth::HTTP.uri_escape(input[:attendee_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Capabilities'] = AttendeeCapabilities.build(input[:capabilities]) unless input[:capabilities].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
