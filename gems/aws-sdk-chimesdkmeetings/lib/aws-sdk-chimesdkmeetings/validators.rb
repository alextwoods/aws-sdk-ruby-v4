# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ChimeSDKMeetings
  module Validators

    class Attendee
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Attendee, context: context)
        Hearth::Validator.validate!(input[:external_user_id], ::String, context: "#{context}[:external_user_id]")
        Hearth::Validator.validate!(input[:attendee_id], ::String, context: "#{context}[:attendee_id]")
        Hearth::Validator.validate!(input[:join_token], ::String, context: "#{context}[:join_token]")
        AttendeeCapabilities.validate!(input[:capabilities], context: "#{context}[:capabilities]") unless input[:capabilities].nil?
      end
    end

    class AttendeeCapabilities
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttendeeCapabilities, context: context)
        Hearth::Validator.validate!(input[:audio], ::String, context: "#{context}[:audio]")
        Hearth::Validator.validate!(input[:video], ::String, context: "#{context}[:video]")
        Hearth::Validator.validate!(input[:content], ::String, context: "#{context}[:content]")
      end
    end

    class AttendeeIdItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttendeeIdItem, context: context)
        Hearth::Validator.validate!(input[:attendee_id], ::String, context: "#{context}[:attendee_id]")
      end
    end

    class AttendeeIdsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AttendeeIdItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AttendeeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Attendee.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AudioFeatures
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AudioFeatures, context: context)
        Hearth::Validator.validate!(input[:echo_reduction], ::String, context: "#{context}[:echo_reduction]")
      end
    end

    class BadRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BadRequestException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class BatchCreateAttendeeErrorList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CreateAttendeeError.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchCreateAttendeeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchCreateAttendeeInput, context: context)
        Hearth::Validator.validate!(input[:meeting_id], ::String, context: "#{context}[:meeting_id]")
        CreateAttendeeRequestItemList.validate!(input[:attendees], context: "#{context}[:attendees]") unless input[:attendees].nil?
      end
    end

    class BatchCreateAttendeeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchCreateAttendeeOutput, context: context)
        AttendeeList.validate!(input[:attendees], context: "#{context}[:attendees]") unless input[:attendees].nil?
        BatchCreateAttendeeErrorList.validate!(input[:errors], context: "#{context}[:errors]") unless input[:errors].nil?
      end
    end

    class BatchUpdateAttendeeCapabilitiesExceptInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchUpdateAttendeeCapabilitiesExceptInput, context: context)
        Hearth::Validator.validate!(input[:meeting_id], ::String, context: "#{context}[:meeting_id]")
        AttendeeIdsList.validate!(input[:excluded_attendee_ids], context: "#{context}[:excluded_attendee_ids]") unless input[:excluded_attendee_ids].nil?
        AttendeeCapabilities.validate!(input[:capabilities], context: "#{context}[:capabilities]") unless input[:capabilities].nil?
      end
    end

    class BatchUpdateAttendeeCapabilitiesExceptOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchUpdateAttendeeCapabilitiesExceptOutput, context: context)
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class CreateAttendeeError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAttendeeError, context: context)
        Hearth::Validator.validate!(input[:external_user_id], ::String, context: "#{context}[:external_user_id]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class CreateAttendeeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAttendeeInput, context: context)
        Hearth::Validator.validate!(input[:meeting_id], ::String, context: "#{context}[:meeting_id]")
        Hearth::Validator.validate!(input[:external_user_id], ::String, context: "#{context}[:external_user_id]")
        AttendeeCapabilities.validate!(input[:capabilities], context: "#{context}[:capabilities]") unless input[:capabilities].nil?
      end
    end

    class CreateAttendeeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAttendeeOutput, context: context)
        Attendee.validate!(input[:attendee], context: "#{context}[:attendee]") unless input[:attendee].nil?
      end
    end

    class CreateAttendeeRequestItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAttendeeRequestItem, context: context)
        Hearth::Validator.validate!(input[:external_user_id], ::String, context: "#{context}[:external_user_id]")
        AttendeeCapabilities.validate!(input[:capabilities], context: "#{context}[:capabilities]") unless input[:capabilities].nil?
      end
    end

    class CreateAttendeeRequestItemList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CreateAttendeeRequestItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CreateMeetingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateMeetingInput, context: context)
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:media_region], ::String, context: "#{context}[:media_region]")
        Hearth::Validator.validate!(input[:meeting_host_id], ::String, context: "#{context}[:meeting_host_id]")
        Hearth::Validator.validate!(input[:external_meeting_id], ::String, context: "#{context}[:external_meeting_id]")
        NotificationsConfiguration.validate!(input[:notifications_configuration], context: "#{context}[:notifications_configuration]") unless input[:notifications_configuration].nil?
        MeetingFeaturesConfiguration.validate!(input[:meeting_features], context: "#{context}[:meeting_features]") unless input[:meeting_features].nil?
        Hearth::Validator.validate!(input[:primary_meeting_id], ::String, context: "#{context}[:primary_meeting_id]")
      end
    end

    class CreateMeetingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateMeetingOutput, context: context)
        Meeting.validate!(input[:meeting], context: "#{context}[:meeting]") unless input[:meeting].nil?
      end
    end

    class CreateMeetingWithAttendeesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateMeetingWithAttendeesInput, context: context)
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:media_region], ::String, context: "#{context}[:media_region]")
        Hearth::Validator.validate!(input[:meeting_host_id], ::String, context: "#{context}[:meeting_host_id]")
        Hearth::Validator.validate!(input[:external_meeting_id], ::String, context: "#{context}[:external_meeting_id]")
        MeetingFeaturesConfiguration.validate!(input[:meeting_features], context: "#{context}[:meeting_features]") unless input[:meeting_features].nil?
        NotificationsConfiguration.validate!(input[:notifications_configuration], context: "#{context}[:notifications_configuration]") unless input[:notifications_configuration].nil?
        CreateMeetingWithAttendeesRequestItemList.validate!(input[:attendees], context: "#{context}[:attendees]") unless input[:attendees].nil?
        Hearth::Validator.validate!(input[:primary_meeting_id], ::String, context: "#{context}[:primary_meeting_id]")
      end
    end

    class CreateMeetingWithAttendeesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateMeetingWithAttendeesOutput, context: context)
        Meeting.validate!(input[:meeting], context: "#{context}[:meeting]") unless input[:meeting].nil?
        AttendeeList.validate!(input[:attendees], context: "#{context}[:attendees]") unless input[:attendees].nil?
        BatchCreateAttendeeErrorList.validate!(input[:errors], context: "#{context}[:errors]") unless input[:errors].nil?
      end
    end

    class CreateMeetingWithAttendeesRequestItemList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CreateAttendeeRequestItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeleteAttendeeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAttendeeInput, context: context)
        Hearth::Validator.validate!(input[:meeting_id], ::String, context: "#{context}[:meeting_id]")
        Hearth::Validator.validate!(input[:attendee_id], ::String, context: "#{context}[:attendee_id]")
      end
    end

    class DeleteAttendeeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAttendeeOutput, context: context)
      end
    end

    class DeleteMeetingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMeetingInput, context: context)
        Hearth::Validator.validate!(input[:meeting_id], ::String, context: "#{context}[:meeting_id]")
      end
    end

    class DeleteMeetingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMeetingOutput, context: context)
      end
    end

    class EngineTranscribeMedicalSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EngineTranscribeMedicalSettings, context: context)
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:specialty], ::String, context: "#{context}[:specialty]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:vocabulary_name], ::String, context: "#{context}[:vocabulary_name]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:content_identification_type], ::String, context: "#{context}[:content_identification_type]")
      end
    end

    class EngineTranscribeSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EngineTranscribeSettings, context: context)
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:vocabulary_filter_method], ::String, context: "#{context}[:vocabulary_filter_method]")
        Hearth::Validator.validate!(input[:vocabulary_filter_name], ::String, context: "#{context}[:vocabulary_filter_name]")
        Hearth::Validator.validate!(input[:vocabulary_name], ::String, context: "#{context}[:vocabulary_name]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:enable_partial_results_stabilization], ::TrueClass, ::FalseClass, context: "#{context}[:enable_partial_results_stabilization]")
        Hearth::Validator.validate!(input[:partial_results_stability], ::String, context: "#{context}[:partial_results_stability]")
        Hearth::Validator.validate!(input[:content_identification_type], ::String, context: "#{context}[:content_identification_type]")
        Hearth::Validator.validate!(input[:content_redaction_type], ::String, context: "#{context}[:content_redaction_type]")
        Hearth::Validator.validate!(input[:pii_entity_types], ::String, context: "#{context}[:pii_entity_types]")
        Hearth::Validator.validate!(input[:language_model_name], ::String, context: "#{context}[:language_model_name]")
        Hearth::Validator.validate!(input[:identify_language], ::TrueClass, ::FalseClass, context: "#{context}[:identify_language]")
        Hearth::Validator.validate!(input[:language_options], ::String, context: "#{context}[:language_options]")
        Hearth::Validator.validate!(input[:preferred_language], ::String, context: "#{context}[:preferred_language]")
      end
    end

    class ForbiddenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ForbiddenException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class GetAttendeeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAttendeeInput, context: context)
        Hearth::Validator.validate!(input[:meeting_id], ::String, context: "#{context}[:meeting_id]")
        Hearth::Validator.validate!(input[:attendee_id], ::String, context: "#{context}[:attendee_id]")
      end
    end

    class GetAttendeeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAttendeeOutput, context: context)
        Attendee.validate!(input[:attendee], context: "#{context}[:attendee]") unless input[:attendee].nil?
      end
    end

    class GetMeetingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMeetingInput, context: context)
        Hearth::Validator.validate!(input[:meeting_id], ::String, context: "#{context}[:meeting_id]")
      end
    end

    class GetMeetingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMeetingOutput, context: context)
        Meeting.validate!(input[:meeting], context: "#{context}[:meeting]") unless input[:meeting].nil?
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class ListAttendeesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAttendeesInput, context: context)
        Hearth::Validator.validate!(input[:meeting_id], ::String, context: "#{context}[:meeting_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListAttendeesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAttendeesOutput, context: context)
        AttendeeList.validate!(input[:attendees], context: "#{context}[:attendees]") unless input[:attendees].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class MediaPlacement
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MediaPlacement, context: context)
        Hearth::Validator.validate!(input[:audio_host_url], ::String, context: "#{context}[:audio_host_url]")
        Hearth::Validator.validate!(input[:audio_fallback_url], ::String, context: "#{context}[:audio_fallback_url]")
        Hearth::Validator.validate!(input[:signaling_url], ::String, context: "#{context}[:signaling_url]")
        Hearth::Validator.validate!(input[:turn_control_url], ::String, context: "#{context}[:turn_control_url]")
        Hearth::Validator.validate!(input[:screen_data_url], ::String, context: "#{context}[:screen_data_url]")
        Hearth::Validator.validate!(input[:screen_viewing_url], ::String, context: "#{context}[:screen_viewing_url]")
        Hearth::Validator.validate!(input[:screen_sharing_url], ::String, context: "#{context}[:screen_sharing_url]")
        Hearth::Validator.validate!(input[:event_ingestion_url], ::String, context: "#{context}[:event_ingestion_url]")
      end
    end

    class Meeting
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Meeting, context: context)
        Hearth::Validator.validate!(input[:meeting_id], ::String, context: "#{context}[:meeting_id]")
        Hearth::Validator.validate!(input[:meeting_host_id], ::String, context: "#{context}[:meeting_host_id]")
        Hearth::Validator.validate!(input[:external_meeting_id], ::String, context: "#{context}[:external_meeting_id]")
        Hearth::Validator.validate!(input[:media_region], ::String, context: "#{context}[:media_region]")
        MediaPlacement.validate!(input[:media_placement], context: "#{context}[:media_placement]") unless input[:media_placement].nil?
        MeetingFeaturesConfiguration.validate!(input[:meeting_features], context: "#{context}[:meeting_features]") unless input[:meeting_features].nil?
        Hearth::Validator.validate!(input[:primary_meeting_id], ::String, context: "#{context}[:primary_meeting_id]")
      end
    end

    class MeetingFeaturesConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MeetingFeaturesConfiguration, context: context)
        AudioFeatures.validate!(input[:audio], context: "#{context}[:audio]") unless input[:audio].nil?
      end
    end

    class NotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotFoundException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class NotificationsConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotificationsConfiguration, context: context)
        Hearth::Validator.validate!(input[:lambda_function_arn], ::String, context: "#{context}[:lambda_function_arn]")
        Hearth::Validator.validate!(input[:sns_topic_arn], ::String, context: "#{context}[:sns_topic_arn]")
        Hearth::Validator.validate!(input[:sqs_queue_arn], ::String, context: "#{context}[:sqs_queue_arn]")
      end
    end

    class ServiceFailureException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceFailureException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class ServiceUnavailableException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceUnavailableException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:retry_after_seconds], ::String, context: "#{context}[:retry_after_seconds]")
      end
    end

    class StartMeetingTranscriptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartMeetingTranscriptionInput, context: context)
        Hearth::Validator.validate!(input[:meeting_id], ::String, context: "#{context}[:meeting_id]")
        TranscriptionConfiguration.validate!(input[:transcription_configuration], context: "#{context}[:transcription_configuration]") unless input[:transcription_configuration].nil?
      end
    end

    class StartMeetingTranscriptionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartMeetingTranscriptionOutput, context: context)
      end
    end

    class StopMeetingTranscriptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopMeetingTranscriptionInput, context: context)
        Hearth::Validator.validate!(input[:meeting_id], ::String, context: "#{context}[:meeting_id]")
      end
    end

    class StopMeetingTranscriptionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopMeetingTranscriptionOutput, context: context)
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class TranscriptionConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TranscriptionConfiguration, context: context)
        EngineTranscribeSettings.validate!(input[:engine_transcribe_settings], context: "#{context}[:engine_transcribe_settings]") unless input[:engine_transcribe_settings].nil?
        EngineTranscribeMedicalSettings.validate!(input[:engine_transcribe_medical_settings], context: "#{context}[:engine_transcribe_medical_settings]") unless input[:engine_transcribe_medical_settings].nil?
      end
    end

    class UnauthorizedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnauthorizedException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class UnprocessableEntityException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnprocessableEntityException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class UpdateAttendeeCapabilitiesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAttendeeCapabilitiesInput, context: context)
        Hearth::Validator.validate!(input[:meeting_id], ::String, context: "#{context}[:meeting_id]")
        Hearth::Validator.validate!(input[:attendee_id], ::String, context: "#{context}[:attendee_id]")
        AttendeeCapabilities.validate!(input[:capabilities], context: "#{context}[:capabilities]") unless input[:capabilities].nil?
      end
    end

    class UpdateAttendeeCapabilitiesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAttendeeCapabilitiesOutput, context: context)
        Attendee.validate!(input[:attendee], context: "#{context}[:attendee]") unless input[:attendee].nil?
      end
    end

  end
end
