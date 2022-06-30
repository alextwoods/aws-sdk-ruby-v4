# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::ChimeSDKMeetings
  module Params

    module Attendee
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Attendee, context: context)
        type = Types::Attendee.new
        type.external_user_id = params[:external_user_id]
        type.attendee_id = params[:attendee_id]
        type.join_token = params[:join_token]
        type.capabilities = AttendeeCapabilities.build(params[:capabilities], context: "#{context}[:capabilities]") unless params[:capabilities].nil?
        type
      end
    end

    module AttendeeCapabilities
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttendeeCapabilities, context: context)
        type = Types::AttendeeCapabilities.new
        type.audio = params[:audio]
        type.video = params[:video]
        type.content = params[:content]
        type
      end
    end

    module AttendeeIdItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttendeeIdItem, context: context)
        type = Types::AttendeeIdItem.new
        type.attendee_id = params[:attendee_id]
        type
      end
    end

    module AttendeeIdsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AttendeeIdItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AttendeeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Attendee.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AudioFeatures
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AudioFeatures, context: context)
        type = Types::AudioFeatures.new
        type.echo_reduction = params[:echo_reduction]
        type
      end
    end

    module BadRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BadRequestException, context: context)
        type = Types::BadRequestException.new
        type.code = params[:code]
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module BatchCreateAttendeeErrorList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CreateAttendeeError.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BatchCreateAttendeeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchCreateAttendeeInput, context: context)
        type = Types::BatchCreateAttendeeInput.new
        type.meeting_id = params[:meeting_id]
        type.attendees = CreateAttendeeRequestItemList.build(params[:attendees], context: "#{context}[:attendees]") unless params[:attendees].nil?
        type
      end
    end

    module BatchCreateAttendeeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchCreateAttendeeOutput, context: context)
        type = Types::BatchCreateAttendeeOutput.new
        type.attendees = AttendeeList.build(params[:attendees], context: "#{context}[:attendees]") unless params[:attendees].nil?
        type.errors = BatchCreateAttendeeErrorList.build(params[:errors], context: "#{context}[:errors]") unless params[:errors].nil?
        type
      end
    end

    module BatchUpdateAttendeeCapabilitiesExceptInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchUpdateAttendeeCapabilitiesExceptInput, context: context)
        type = Types::BatchUpdateAttendeeCapabilitiesExceptInput.new
        type.meeting_id = params[:meeting_id]
        type.excluded_attendee_ids = AttendeeIdsList.build(params[:excluded_attendee_ids], context: "#{context}[:excluded_attendee_ids]") unless params[:excluded_attendee_ids].nil?
        type.capabilities = AttendeeCapabilities.build(params[:capabilities], context: "#{context}[:capabilities]") unless params[:capabilities].nil?
        type
      end
    end

    module BatchUpdateAttendeeCapabilitiesExceptOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchUpdateAttendeeCapabilitiesExceptOutput, context: context)
        type = Types::BatchUpdateAttendeeCapabilitiesExceptOutput.new
        type
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.code = params[:code]
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module CreateAttendeeError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAttendeeError, context: context)
        type = Types::CreateAttendeeError.new
        type.external_user_id = params[:external_user_id]
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type
      end
    end

    module CreateAttendeeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAttendeeInput, context: context)
        type = Types::CreateAttendeeInput.new
        type.meeting_id = params[:meeting_id]
        type.external_user_id = params[:external_user_id]
        type.capabilities = AttendeeCapabilities.build(params[:capabilities], context: "#{context}[:capabilities]") unless params[:capabilities].nil?
        type
      end
    end

    module CreateAttendeeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAttendeeOutput, context: context)
        type = Types::CreateAttendeeOutput.new
        type.attendee = Attendee.build(params[:attendee], context: "#{context}[:attendee]") unless params[:attendee].nil?
        type
      end
    end

    module CreateAttendeeRequestItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAttendeeRequestItem, context: context)
        type = Types::CreateAttendeeRequestItem.new
        type.external_user_id = params[:external_user_id]
        type.capabilities = AttendeeCapabilities.build(params[:capabilities], context: "#{context}[:capabilities]") unless params[:capabilities].nil?
        type
      end
    end

    module CreateAttendeeRequestItemList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CreateAttendeeRequestItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CreateMeetingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateMeetingInput, context: context)
        type = Types::CreateMeetingInput.new
        type.client_request_token = params[:client_request_token] || SecureRandom.uuid
        type.media_region = params[:media_region]
        type.meeting_host_id = params[:meeting_host_id]
        type.external_meeting_id = params[:external_meeting_id]
        type.notifications_configuration = NotificationsConfiguration.build(params[:notifications_configuration], context: "#{context}[:notifications_configuration]") unless params[:notifications_configuration].nil?
        type.meeting_features = MeetingFeaturesConfiguration.build(params[:meeting_features], context: "#{context}[:meeting_features]") unless params[:meeting_features].nil?
        type.primary_meeting_id = params[:primary_meeting_id]
        type
      end
    end

    module CreateMeetingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateMeetingOutput, context: context)
        type = Types::CreateMeetingOutput.new
        type.meeting = Meeting.build(params[:meeting], context: "#{context}[:meeting]") unless params[:meeting].nil?
        type
      end
    end

    module CreateMeetingWithAttendeesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateMeetingWithAttendeesInput, context: context)
        type = Types::CreateMeetingWithAttendeesInput.new
        type.client_request_token = params[:client_request_token] || SecureRandom.uuid
        type.media_region = params[:media_region]
        type.meeting_host_id = params[:meeting_host_id]
        type.external_meeting_id = params[:external_meeting_id]
        type.meeting_features = MeetingFeaturesConfiguration.build(params[:meeting_features], context: "#{context}[:meeting_features]") unless params[:meeting_features].nil?
        type.notifications_configuration = NotificationsConfiguration.build(params[:notifications_configuration], context: "#{context}[:notifications_configuration]") unless params[:notifications_configuration].nil?
        type.attendees = CreateMeetingWithAttendeesRequestItemList.build(params[:attendees], context: "#{context}[:attendees]") unless params[:attendees].nil?
        type.primary_meeting_id = params[:primary_meeting_id]
        type
      end
    end

    module CreateMeetingWithAttendeesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateMeetingWithAttendeesOutput, context: context)
        type = Types::CreateMeetingWithAttendeesOutput.new
        type.meeting = Meeting.build(params[:meeting], context: "#{context}[:meeting]") unless params[:meeting].nil?
        type.attendees = AttendeeList.build(params[:attendees], context: "#{context}[:attendees]") unless params[:attendees].nil?
        type.errors = BatchCreateAttendeeErrorList.build(params[:errors], context: "#{context}[:errors]") unless params[:errors].nil?
        type
      end
    end

    module CreateMeetingWithAttendeesRequestItemList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CreateAttendeeRequestItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeleteAttendeeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAttendeeInput, context: context)
        type = Types::DeleteAttendeeInput.new
        type.meeting_id = params[:meeting_id]
        type.attendee_id = params[:attendee_id]
        type
      end
    end

    module DeleteAttendeeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAttendeeOutput, context: context)
        type = Types::DeleteAttendeeOutput.new
        type
      end
    end

    module DeleteMeetingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteMeetingInput, context: context)
        type = Types::DeleteMeetingInput.new
        type.meeting_id = params[:meeting_id]
        type
      end
    end

    module DeleteMeetingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteMeetingOutput, context: context)
        type = Types::DeleteMeetingOutput.new
        type
      end
    end

    module EngineTranscribeMedicalSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EngineTranscribeMedicalSettings, context: context)
        type = Types::EngineTranscribeMedicalSettings.new
        type.language_code = params[:language_code]
        type.specialty = params[:specialty]
        type.type = params[:type]
        type.vocabulary_name = params[:vocabulary_name]
        type.region = params[:region]
        type.content_identification_type = params[:content_identification_type]
        type
      end
    end

    module EngineTranscribeSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EngineTranscribeSettings, context: context)
        type = Types::EngineTranscribeSettings.new
        type.language_code = params[:language_code]
        type.vocabulary_filter_method = params[:vocabulary_filter_method]
        type.vocabulary_filter_name = params[:vocabulary_filter_name]
        type.vocabulary_name = params[:vocabulary_name]
        type.region = params[:region]
        type.enable_partial_results_stabilization = params[:enable_partial_results_stabilization]
        type.partial_results_stability = params[:partial_results_stability]
        type.content_identification_type = params[:content_identification_type]
        type.content_redaction_type = params[:content_redaction_type]
        type.pii_entity_types = params[:pii_entity_types]
        type.language_model_name = params[:language_model_name]
        type.identify_language = params[:identify_language]
        type.language_options = params[:language_options]
        type.preferred_language = params[:preferred_language]
        type
      end
    end

    module ForbiddenException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ForbiddenException, context: context)
        type = Types::ForbiddenException.new
        type.code = params[:code]
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module GetAttendeeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAttendeeInput, context: context)
        type = Types::GetAttendeeInput.new
        type.meeting_id = params[:meeting_id]
        type.attendee_id = params[:attendee_id]
        type
      end
    end

    module GetAttendeeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAttendeeOutput, context: context)
        type = Types::GetAttendeeOutput.new
        type.attendee = Attendee.build(params[:attendee], context: "#{context}[:attendee]") unless params[:attendee].nil?
        type
      end
    end

    module GetMeetingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMeetingInput, context: context)
        type = Types::GetMeetingInput.new
        type.meeting_id = params[:meeting_id]
        type
      end
    end

    module GetMeetingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMeetingOutput, context: context)
        type = Types::GetMeetingOutput.new
        type.meeting = Meeting.build(params[:meeting], context: "#{context}[:meeting]") unless params[:meeting].nil?
        type
      end
    end

    module LimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        type.code = params[:code]
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module ListAttendeesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAttendeesInput, context: context)
        type = Types::ListAttendeesInput.new
        type.meeting_id = params[:meeting_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListAttendeesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAttendeesOutput, context: context)
        type = Types::ListAttendeesOutput.new
        type.attendees = AttendeeList.build(params[:attendees], context: "#{context}[:attendees]") unless params[:attendees].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module MediaPlacement
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MediaPlacement, context: context)
        type = Types::MediaPlacement.new
        type.audio_host_url = params[:audio_host_url]
        type.audio_fallback_url = params[:audio_fallback_url]
        type.signaling_url = params[:signaling_url]
        type.turn_control_url = params[:turn_control_url]
        type.screen_data_url = params[:screen_data_url]
        type.screen_viewing_url = params[:screen_viewing_url]
        type.screen_sharing_url = params[:screen_sharing_url]
        type.event_ingestion_url = params[:event_ingestion_url]
        type
      end
    end

    module Meeting
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Meeting, context: context)
        type = Types::Meeting.new
        type.meeting_id = params[:meeting_id]
        type.meeting_host_id = params[:meeting_host_id]
        type.external_meeting_id = params[:external_meeting_id]
        type.media_region = params[:media_region]
        type.media_placement = MediaPlacement.build(params[:media_placement], context: "#{context}[:media_placement]") unless params[:media_placement].nil?
        type.meeting_features = MeetingFeaturesConfiguration.build(params[:meeting_features], context: "#{context}[:meeting_features]") unless params[:meeting_features].nil?
        type.primary_meeting_id = params[:primary_meeting_id]
        type
      end
    end

    module MeetingFeaturesConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MeetingFeaturesConfiguration, context: context)
        type = Types::MeetingFeaturesConfiguration.new
        type.audio = AudioFeatures.build(params[:audio], context: "#{context}[:audio]") unless params[:audio].nil?
        type
      end
    end

    module NotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotFoundException, context: context)
        type = Types::NotFoundException.new
        type.code = params[:code]
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module NotificationsConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotificationsConfiguration, context: context)
        type = Types::NotificationsConfiguration.new
        type.lambda_function_arn = params[:lambda_function_arn]
        type.sns_topic_arn = params[:sns_topic_arn]
        type.sqs_queue_arn = params[:sqs_queue_arn]
        type
      end
    end

    module ServiceFailureException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceFailureException, context: context)
        type = Types::ServiceFailureException.new
        type.code = params[:code]
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module ServiceUnavailableException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceUnavailableException, context: context)
        type = Types::ServiceUnavailableException.new
        type.code = params[:code]
        type.message = params[:message]
        type.request_id = params[:request_id]
        type.retry_after_seconds = params[:retry_after_seconds]
        type
      end
    end

    module StartMeetingTranscriptionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartMeetingTranscriptionInput, context: context)
        type = Types::StartMeetingTranscriptionInput.new
        type.meeting_id = params[:meeting_id]
        type.transcription_configuration = TranscriptionConfiguration.build(params[:transcription_configuration], context: "#{context}[:transcription_configuration]") unless params[:transcription_configuration].nil?
        type
      end
    end

    module StartMeetingTranscriptionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartMeetingTranscriptionOutput, context: context)
        type = Types::StartMeetingTranscriptionOutput.new
        type
      end
    end

    module StopMeetingTranscriptionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopMeetingTranscriptionInput, context: context)
        type = Types::StopMeetingTranscriptionInput.new
        type.meeting_id = params[:meeting_id]
        type
      end
    end

    module StopMeetingTranscriptionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopMeetingTranscriptionOutput, context: context)
        type = Types::StopMeetingTranscriptionOutput.new
        type
      end
    end

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.code = params[:code]
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module TranscriptionConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TranscriptionConfiguration, context: context)
        type = Types::TranscriptionConfiguration.new
        type.engine_transcribe_settings = EngineTranscribeSettings.build(params[:engine_transcribe_settings], context: "#{context}[:engine_transcribe_settings]") unless params[:engine_transcribe_settings].nil?
        type.engine_transcribe_medical_settings = EngineTranscribeMedicalSettings.build(params[:engine_transcribe_medical_settings], context: "#{context}[:engine_transcribe_medical_settings]") unless params[:engine_transcribe_medical_settings].nil?
        type
      end
    end

    module UnauthorizedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnauthorizedException, context: context)
        type = Types::UnauthorizedException.new
        type.code = params[:code]
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module UnprocessableEntityException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnprocessableEntityException, context: context)
        type = Types::UnprocessableEntityException.new
        type.code = params[:code]
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module UpdateAttendeeCapabilitiesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAttendeeCapabilitiesInput, context: context)
        type = Types::UpdateAttendeeCapabilitiesInput.new
        type.meeting_id = params[:meeting_id]
        type.attendee_id = params[:attendee_id]
        type.capabilities = AttendeeCapabilities.build(params[:capabilities], context: "#{context}[:capabilities]") unless params[:capabilities].nil?
        type
      end
    end

    module UpdateAttendeeCapabilitiesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAttendeeCapabilitiesOutput, context: context)
        type = Types::UpdateAttendeeCapabilitiesOutput.new
        type.attendee = Attendee.build(params[:attendee], context: "#{context}[:attendee]") unless params[:attendee].nil?
        type
      end
    end

  end
end
