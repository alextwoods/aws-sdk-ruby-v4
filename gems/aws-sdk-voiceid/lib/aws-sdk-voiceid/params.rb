# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::VoiceID
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module AuthenticationConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AuthenticationConfiguration, context: context)
        type = Types::AuthenticationConfiguration.new
        type.acceptance_threshold = params[:acceptance_threshold]
        type
      end
    end

    module AuthenticationResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AuthenticationResult, context: context)
        type = Types::AuthenticationResult.new
        type.authentication_result_id = params[:authentication_result_id]
        type.audio_aggregation_started_at = params[:audio_aggregation_started_at]
        type.audio_aggregation_ended_at = params[:audio_aggregation_ended_at]
        type.customer_speaker_id = params[:customer_speaker_id]
        type.generated_speaker_id = params[:generated_speaker_id]
        type.decision = params[:decision]
        type.score = params[:score]
        type.configuration = AuthenticationConfiguration.build(params[:configuration], context: "#{context}[:configuration]") unless params[:configuration].nil?
        type
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type.conflict_type = params[:conflict_type]
        type
      end
    end

    module CreateDomainInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDomainInput, context: context)
        type = Types::CreateDomainInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.server_side_encryption_configuration = ServerSideEncryptionConfiguration.build(params[:server_side_encryption_configuration], context: "#{context}[:server_side_encryption_configuration]") unless params[:server_side_encryption_configuration].nil?
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateDomainOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDomainOutput, context: context)
        type = Types::CreateDomainOutput.new
        type.domain = Domain.build(params[:domain], context: "#{context}[:domain]") unless params[:domain].nil?
        type
      end
    end

    module DeleteDomainInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDomainInput, context: context)
        type = Types::DeleteDomainInput.new
        type.domain_id = params[:domain_id]
        type
      end
    end

    module DeleteDomainOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDomainOutput, context: context)
        type = Types::DeleteDomainOutput.new
        type
      end
    end

    module DeleteFraudsterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFraudsterInput, context: context)
        type = Types::DeleteFraudsterInput.new
        type.domain_id = params[:domain_id]
        type.fraudster_id = params[:fraudster_id]
        type
      end
    end

    module DeleteFraudsterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFraudsterOutput, context: context)
        type = Types::DeleteFraudsterOutput.new
        type
      end
    end

    module DeleteSpeakerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSpeakerInput, context: context)
        type = Types::DeleteSpeakerInput.new
        type.domain_id = params[:domain_id]
        type.speaker_id = params[:speaker_id]
        type
      end
    end

    module DeleteSpeakerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSpeakerOutput, context: context)
        type = Types::DeleteSpeakerOutput.new
        type
      end
    end

    module DescribeDomainInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDomainInput, context: context)
        type = Types::DescribeDomainInput.new
        type.domain_id = params[:domain_id]
        type
      end
    end

    module DescribeDomainOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDomainOutput, context: context)
        type = Types::DescribeDomainOutput.new
        type.domain = Domain.build(params[:domain], context: "#{context}[:domain]") unless params[:domain].nil?
        type
      end
    end

    module DescribeFraudsterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFraudsterInput, context: context)
        type = Types::DescribeFraudsterInput.new
        type.domain_id = params[:domain_id]
        type.fraudster_id = params[:fraudster_id]
        type
      end
    end

    module DescribeFraudsterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFraudsterOutput, context: context)
        type = Types::DescribeFraudsterOutput.new
        type.fraudster = Fraudster.build(params[:fraudster], context: "#{context}[:fraudster]") unless params[:fraudster].nil?
        type
      end
    end

    module DescribeFraudsterRegistrationJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFraudsterRegistrationJobInput, context: context)
        type = Types::DescribeFraudsterRegistrationJobInput.new
        type.domain_id = params[:domain_id]
        type.job_id = params[:job_id]
        type
      end
    end

    module DescribeFraudsterRegistrationJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFraudsterRegistrationJobOutput, context: context)
        type = Types::DescribeFraudsterRegistrationJobOutput.new
        type.job = FraudsterRegistrationJob.build(params[:job], context: "#{context}[:job]") unless params[:job].nil?
        type
      end
    end

    module DescribeSpeakerEnrollmentJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSpeakerEnrollmentJobInput, context: context)
        type = Types::DescribeSpeakerEnrollmentJobInput.new
        type.domain_id = params[:domain_id]
        type.job_id = params[:job_id]
        type
      end
    end

    module DescribeSpeakerEnrollmentJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSpeakerEnrollmentJobOutput, context: context)
        type = Types::DescribeSpeakerEnrollmentJobOutput.new
        type.job = SpeakerEnrollmentJob.build(params[:job], context: "#{context}[:job]") unless params[:job].nil?
        type
      end
    end

    module DescribeSpeakerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSpeakerInput, context: context)
        type = Types::DescribeSpeakerInput.new
        type.domain_id = params[:domain_id]
        type.speaker_id = params[:speaker_id]
        type
      end
    end

    module DescribeSpeakerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSpeakerOutput, context: context)
        type = Types::DescribeSpeakerOutput.new
        type.speaker = Speaker.build(params[:speaker], context: "#{context}[:speaker]") unless params[:speaker].nil?
        type
      end
    end

    module Domain
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Domain, context: context)
        type = Types::Domain.new
        type.domain_id = params[:domain_id]
        type.arn = params[:arn]
        type.name = params[:name]
        type.description = params[:description]
        type.domain_status = params[:domain_status]
        type.server_side_encryption_configuration = ServerSideEncryptionConfiguration.build(params[:server_side_encryption_configuration], context: "#{context}[:server_side_encryption_configuration]") unless params[:server_side_encryption_configuration].nil?
        type.created_at = params[:created_at]
        type.updated_at = params[:updated_at]
        type.server_side_encryption_update_details = ServerSideEncryptionUpdateDetails.build(params[:server_side_encryption_update_details], context: "#{context}[:server_side_encryption_update_details]") unless params[:server_side_encryption_update_details].nil?
        type
      end
    end

    module DomainSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DomainSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DomainSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DomainSummary, context: context)
        type = Types::DomainSummary.new
        type.domain_id = params[:domain_id]
        type.arn = params[:arn]
        type.name = params[:name]
        type.description = params[:description]
        type.domain_status = params[:domain_status]
        type.server_side_encryption_configuration = ServerSideEncryptionConfiguration.build(params[:server_side_encryption_configuration], context: "#{context}[:server_side_encryption_configuration]") unless params[:server_side_encryption_configuration].nil?
        type.created_at = params[:created_at]
        type.updated_at = params[:updated_at]
        type.server_side_encryption_update_details = ServerSideEncryptionUpdateDetails.build(params[:server_side_encryption_update_details], context: "#{context}[:server_side_encryption_update_details]") unless params[:server_side_encryption_update_details].nil?
        type
      end
    end

    module EnrollmentConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnrollmentConfig, context: context)
        type = Types::EnrollmentConfig.new
        type.existing_enrollment_action = params[:existing_enrollment_action]
        type.fraud_detection_config = EnrollmentJobFraudDetectionConfig.build(params[:fraud_detection_config], context: "#{context}[:fraud_detection_config]") unless params[:fraud_detection_config].nil?
        type
      end
    end

    module EnrollmentJobFraudDetectionConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnrollmentJobFraudDetectionConfig, context: context)
        type = Types::EnrollmentJobFraudDetectionConfig.new
        type.fraud_detection_action = params[:fraud_detection_action]
        type.risk_threshold = params[:risk_threshold]
        type
      end
    end

    module EvaluateSessionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EvaluateSessionInput, context: context)
        type = Types::EvaluateSessionInput.new
        type.domain_id = params[:domain_id]
        type.session_name_or_id = params[:session_name_or_id]
        type
      end
    end

    module EvaluateSessionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EvaluateSessionOutput, context: context)
        type = Types::EvaluateSessionOutput.new
        type.domain_id = params[:domain_id]
        type.session_id = params[:session_id]
        type.session_name = params[:session_name]
        type.streaming_status = params[:streaming_status]
        type.authentication_result = AuthenticationResult.build(params[:authentication_result], context: "#{context}[:authentication_result]") unless params[:authentication_result].nil?
        type.fraud_detection_result = FraudDetectionResult.build(params[:fraud_detection_result], context: "#{context}[:fraud_detection_result]") unless params[:fraud_detection_result].nil?
        type
      end
    end

    module FailureDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FailureDetails, context: context)
        type = Types::FailureDetails.new
        type.status_code = params[:status_code]
        type.message = params[:message]
        type
      end
    end

    module FraudDetectionConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FraudDetectionConfiguration, context: context)
        type = Types::FraudDetectionConfiguration.new
        type.risk_threshold = params[:risk_threshold]
        type
      end
    end

    module FraudDetectionReasons
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module FraudDetectionResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FraudDetectionResult, context: context)
        type = Types::FraudDetectionResult.new
        type.fraud_detection_result_id = params[:fraud_detection_result_id]
        type.audio_aggregation_started_at = params[:audio_aggregation_started_at]
        type.audio_aggregation_ended_at = params[:audio_aggregation_ended_at]
        type.configuration = FraudDetectionConfiguration.build(params[:configuration], context: "#{context}[:configuration]") unless params[:configuration].nil?
        type.decision = params[:decision]
        type.reasons = FraudDetectionReasons.build(params[:reasons], context: "#{context}[:reasons]") unless params[:reasons].nil?
        type.risk_details = FraudRiskDetails.build(params[:risk_details], context: "#{context}[:risk_details]") unless params[:risk_details].nil?
        type
      end
    end

    module FraudRiskDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FraudRiskDetails, context: context)
        type = Types::FraudRiskDetails.new
        type.known_fraudster_risk = KnownFraudsterRisk.build(params[:known_fraudster_risk], context: "#{context}[:known_fraudster_risk]") unless params[:known_fraudster_risk].nil?
        type
      end
    end

    module Fraudster
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Fraudster, context: context)
        type = Types::Fraudster.new
        type.domain_id = params[:domain_id]
        type.generated_fraudster_id = params[:generated_fraudster_id]
        type.created_at = params[:created_at]
        type
      end
    end

    module FraudsterRegistrationJob
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FraudsterRegistrationJob, context: context)
        type = Types::FraudsterRegistrationJob.new
        type.job_name = params[:job_name]
        type.job_id = params[:job_id]
        type.job_status = params[:job_status]
        type.domain_id = params[:domain_id]
        type.data_access_role_arn = params[:data_access_role_arn]
        type.registration_config = RegistrationConfig.build(params[:registration_config], context: "#{context}[:registration_config]") unless params[:registration_config].nil?
        type.input_data_config = InputDataConfig.build(params[:input_data_config], context: "#{context}[:input_data_config]") unless params[:input_data_config].nil?
        type.output_data_config = OutputDataConfig.build(params[:output_data_config], context: "#{context}[:output_data_config]") unless params[:output_data_config].nil?
        type.created_at = params[:created_at]
        type.ended_at = params[:ended_at]
        type.failure_details = FailureDetails.build(params[:failure_details], context: "#{context}[:failure_details]") unless params[:failure_details].nil?
        type.job_progress = JobProgress.build(params[:job_progress], context: "#{context}[:job_progress]") unless params[:job_progress].nil?
        type
      end
    end

    module FraudsterRegistrationJobSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FraudsterRegistrationJobSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FraudsterRegistrationJobSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FraudsterRegistrationJobSummary, context: context)
        type = Types::FraudsterRegistrationJobSummary.new
        type.job_name = params[:job_name]
        type.job_id = params[:job_id]
        type.job_status = params[:job_status]
        type.domain_id = params[:domain_id]
        type.created_at = params[:created_at]
        type.ended_at = params[:ended_at]
        type.failure_details = FailureDetails.build(params[:failure_details], context: "#{context}[:failure_details]") unless params[:failure_details].nil?
        type.job_progress = JobProgress.build(params[:job_progress], context: "#{context}[:job_progress]") unless params[:job_progress].nil?
        type
      end
    end

    module InputDataConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InputDataConfig, context: context)
        type = Types::InputDataConfig.new
        type.s3_uri = params[:s3_uri]
        type
      end
    end

    module InternalServerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerException, context: context)
        type = Types::InternalServerException.new
        type.message = params[:message]
        type
      end
    end

    module JobProgress
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobProgress, context: context)
        type = Types::JobProgress.new
        type.percent_complete = params[:percent_complete]
        type
      end
    end

    module KnownFraudsterRisk
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KnownFraudsterRisk, context: context)
        type = Types::KnownFraudsterRisk.new
        type.risk_score = params[:risk_score]
        type.generated_fraudster_id = params[:generated_fraudster_id]
        type
      end
    end

    module ListDomainsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDomainsInput, context: context)
        type = Types::ListDomainsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDomainsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDomainsOutput, context: context)
        type = Types::ListDomainsOutput.new
        type.domain_summaries = DomainSummaries.build(params[:domain_summaries], context: "#{context}[:domain_summaries]") unless params[:domain_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListFraudsterRegistrationJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFraudsterRegistrationJobsInput, context: context)
        type = Types::ListFraudsterRegistrationJobsInput.new
        type.domain_id = params[:domain_id]
        type.job_status = params[:job_status]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListFraudsterRegistrationJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFraudsterRegistrationJobsOutput, context: context)
        type = Types::ListFraudsterRegistrationJobsOutput.new
        type.job_summaries = FraudsterRegistrationJobSummaries.build(params[:job_summaries], context: "#{context}[:job_summaries]") unless params[:job_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSpeakerEnrollmentJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSpeakerEnrollmentJobsInput, context: context)
        type = Types::ListSpeakerEnrollmentJobsInput.new
        type.domain_id = params[:domain_id]
        type.job_status = params[:job_status]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSpeakerEnrollmentJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSpeakerEnrollmentJobsOutput, context: context)
        type = Types::ListSpeakerEnrollmentJobsOutput.new
        type.job_summaries = SpeakerEnrollmentJobSummaries.build(params[:job_summaries], context: "#{context}[:job_summaries]") unless params[:job_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSpeakersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSpeakersInput, context: context)
        type = Types::ListSpeakersInput.new
        type.domain_id = params[:domain_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSpeakersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSpeakersOutput, context: context)
        type = Types::ListSpeakersOutput.new
        type.speaker_summaries = SpeakerSummaries.build(params[:speaker_summaries], context: "#{context}[:speaker_summaries]") unless params[:speaker_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module OptOutSpeakerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OptOutSpeakerInput, context: context)
        type = Types::OptOutSpeakerInput.new
        type.domain_id = params[:domain_id]
        type.speaker_id = params[:speaker_id]
        type
      end
    end

    module OptOutSpeakerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OptOutSpeakerOutput, context: context)
        type = Types::OptOutSpeakerOutput.new
        type.speaker = Speaker.build(params[:speaker], context: "#{context}[:speaker]") unless params[:speaker].nil?
        type
      end
    end

    module OutputDataConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OutputDataConfig, context: context)
        type = Types::OutputDataConfig.new
        type.s3_uri = params[:s3_uri]
        type.kms_key_id = params[:kms_key_id]
        type
      end
    end

    module RegistrationConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegistrationConfig, context: context)
        type = Types::RegistrationConfig.new
        type.duplicate_registration_action = params[:duplicate_registration_action]
        type.fraudster_similarity_threshold = params[:fraudster_similarity_threshold]
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module ServerSideEncryptionConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServerSideEncryptionConfiguration, context: context)
        type = Types::ServerSideEncryptionConfiguration.new
        type.kms_key_id = params[:kms_key_id]
        type
      end
    end

    module ServerSideEncryptionUpdateDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServerSideEncryptionUpdateDetails, context: context)
        type = Types::ServerSideEncryptionUpdateDetails.new
        type.old_kms_key_id = params[:old_kms_key_id]
        type.update_status = params[:update_status]
        type.message = params[:message]
        type
      end
    end

    module ServiceQuotaExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceQuotaExceededException, context: context)
        type = Types::ServiceQuotaExceededException.new
        type.message = params[:message]
        type
      end
    end

    module Speaker
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Speaker, context: context)
        type = Types::Speaker.new
        type.domain_id = params[:domain_id]
        type.customer_speaker_id = params[:customer_speaker_id]
        type.generated_speaker_id = params[:generated_speaker_id]
        type.status = params[:status]
        type.created_at = params[:created_at]
        type.updated_at = params[:updated_at]
        type.last_accessed_at = params[:last_accessed_at]
        type
      end
    end

    module SpeakerEnrollmentJob
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SpeakerEnrollmentJob, context: context)
        type = Types::SpeakerEnrollmentJob.new
        type.job_name = params[:job_name]
        type.job_id = params[:job_id]
        type.job_status = params[:job_status]
        type.domain_id = params[:domain_id]
        type.data_access_role_arn = params[:data_access_role_arn]
        type.enrollment_config = EnrollmentConfig.build(params[:enrollment_config], context: "#{context}[:enrollment_config]") unless params[:enrollment_config].nil?
        type.input_data_config = InputDataConfig.build(params[:input_data_config], context: "#{context}[:input_data_config]") unless params[:input_data_config].nil?
        type.output_data_config = OutputDataConfig.build(params[:output_data_config], context: "#{context}[:output_data_config]") unless params[:output_data_config].nil?
        type.created_at = params[:created_at]
        type.ended_at = params[:ended_at]
        type.failure_details = FailureDetails.build(params[:failure_details], context: "#{context}[:failure_details]") unless params[:failure_details].nil?
        type.job_progress = JobProgress.build(params[:job_progress], context: "#{context}[:job_progress]") unless params[:job_progress].nil?
        type
      end
    end

    module SpeakerEnrollmentJobSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SpeakerEnrollmentJobSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SpeakerEnrollmentJobSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SpeakerEnrollmentJobSummary, context: context)
        type = Types::SpeakerEnrollmentJobSummary.new
        type.job_name = params[:job_name]
        type.job_id = params[:job_id]
        type.job_status = params[:job_status]
        type.domain_id = params[:domain_id]
        type.created_at = params[:created_at]
        type.ended_at = params[:ended_at]
        type.failure_details = FailureDetails.build(params[:failure_details], context: "#{context}[:failure_details]") unless params[:failure_details].nil?
        type.job_progress = JobProgress.build(params[:job_progress], context: "#{context}[:job_progress]") unless params[:job_progress].nil?
        type
      end
    end

    module SpeakerSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SpeakerSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SpeakerSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SpeakerSummary, context: context)
        type = Types::SpeakerSummary.new
        type.domain_id = params[:domain_id]
        type.customer_speaker_id = params[:customer_speaker_id]
        type.generated_speaker_id = params[:generated_speaker_id]
        type.status = params[:status]
        type.created_at = params[:created_at]
        type.updated_at = params[:updated_at]
        type.last_accessed_at = params[:last_accessed_at]
        type
      end
    end

    module StartFraudsterRegistrationJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartFraudsterRegistrationJobInput, context: context)
        type = Types::StartFraudsterRegistrationJobInput.new
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.job_name = params[:job_name]
        type.domain_id = params[:domain_id]
        type.data_access_role_arn = params[:data_access_role_arn]
        type.registration_config = RegistrationConfig.build(params[:registration_config], context: "#{context}[:registration_config]") unless params[:registration_config].nil?
        type.input_data_config = InputDataConfig.build(params[:input_data_config], context: "#{context}[:input_data_config]") unless params[:input_data_config].nil?
        type.output_data_config = OutputDataConfig.build(params[:output_data_config], context: "#{context}[:output_data_config]") unless params[:output_data_config].nil?
        type
      end
    end

    module StartFraudsterRegistrationJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartFraudsterRegistrationJobOutput, context: context)
        type = Types::StartFraudsterRegistrationJobOutput.new
        type.job = FraudsterRegistrationJob.build(params[:job], context: "#{context}[:job]") unless params[:job].nil?
        type
      end
    end

    module StartSpeakerEnrollmentJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartSpeakerEnrollmentJobInput, context: context)
        type = Types::StartSpeakerEnrollmentJobInput.new
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.job_name = params[:job_name]
        type.domain_id = params[:domain_id]
        type.data_access_role_arn = params[:data_access_role_arn]
        type.enrollment_config = EnrollmentConfig.build(params[:enrollment_config], context: "#{context}[:enrollment_config]") unless params[:enrollment_config].nil?
        type.input_data_config = InputDataConfig.build(params[:input_data_config], context: "#{context}[:input_data_config]") unless params[:input_data_config].nil?
        type.output_data_config = OutputDataConfig.build(params[:output_data_config], context: "#{context}[:output_data_config]") unless params[:output_data_config].nil?
        type
      end
    end

    module StartSpeakerEnrollmentJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartSpeakerEnrollmentJobOutput, context: context)
        type = Types::StartSpeakerEnrollmentJobOutput.new
        type.job = SpeakerEnrollmentJob.build(params[:job], context: "#{context}[:job]") unless params[:job].nil?
        type
      end
    end

    module Tag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Tag, context: context)
        type = Types::Tag.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module TagKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
        type
      end
    end

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.message = params[:message]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceOutput, context: context)
        type = Types::UntagResourceOutput.new
        type
      end
    end

    module UpdateDomainInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDomainInput, context: context)
        type = Types::UpdateDomainInput.new
        type.domain_id = params[:domain_id]
        type.name = params[:name]
        type.description = params[:description]
        type.server_side_encryption_configuration = ServerSideEncryptionConfiguration.build(params[:server_side_encryption_configuration], context: "#{context}[:server_side_encryption_configuration]") unless params[:server_side_encryption_configuration].nil?
        type
      end
    end

    module UpdateDomainOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDomainOutput, context: context)
        type = Types::UpdateDomainOutput.new
        type.domain = Domain.build(params[:domain], context: "#{context}[:domain]") unless params[:domain].nil?
        type
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type
      end
    end

  end
end
