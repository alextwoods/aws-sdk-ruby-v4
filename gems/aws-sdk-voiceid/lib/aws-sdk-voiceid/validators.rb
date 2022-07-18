# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::VoiceID
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AuthenticationConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AuthenticationConfiguration, context: context)
        Hearth::Validator.validate!(input[:acceptance_threshold], ::Integer, context: "#{context}[:acceptance_threshold]")
      end
    end

    class AuthenticationResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AuthenticationResult, context: context)
        Hearth::Validator.validate!(input[:authentication_result_id], ::String, context: "#{context}[:authentication_result_id]")
        Hearth::Validator.validate!(input[:audio_aggregation_started_at], ::Time, context: "#{context}[:audio_aggregation_started_at]")
        Hearth::Validator.validate!(input[:audio_aggregation_ended_at], ::Time, context: "#{context}[:audio_aggregation_ended_at]")
        Hearth::Validator.validate!(input[:customer_speaker_id], ::String, context: "#{context}[:customer_speaker_id]")
        Hearth::Validator.validate!(input[:generated_speaker_id], ::String, context: "#{context}[:generated_speaker_id]")
        Hearth::Validator.validate!(input[:decision], ::String, context: "#{context}[:decision]")
        Hearth::Validator.validate!(input[:score], ::Integer, context: "#{context}[:score]")
        AuthenticationConfiguration.validate!(input[:configuration], context: "#{context}[:configuration]") unless input[:configuration].nil?
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:conflict_type], ::String, context: "#{context}[:conflict_type]")
      end
    end

    class CreateDomainInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDomainInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        ServerSideEncryptionConfiguration.validate!(input[:server_side_encryption_configuration], context: "#{context}[:server_side_encryption_configuration]") unless input[:server_side_encryption_configuration].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateDomainOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDomainOutput, context: context)
        Domain.validate!(input[:domain], context: "#{context}[:domain]") unless input[:domain].nil?
      end
    end

    class DeleteDomainInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDomainInput, context: context)
        Hearth::Validator.validate!(input[:domain_id], ::String, context: "#{context}[:domain_id]")
      end
    end

    class DeleteDomainOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDomainOutput, context: context)
      end
    end

    class DeleteFraudsterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFraudsterInput, context: context)
        Hearth::Validator.validate!(input[:domain_id], ::String, context: "#{context}[:domain_id]")
        Hearth::Validator.validate!(input[:fraudster_id], ::String, context: "#{context}[:fraudster_id]")
      end
    end

    class DeleteFraudsterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFraudsterOutput, context: context)
      end
    end

    class DeleteSpeakerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSpeakerInput, context: context)
        Hearth::Validator.validate!(input[:domain_id], ::String, context: "#{context}[:domain_id]")
        Hearth::Validator.validate!(input[:speaker_id], ::String, context: "#{context}[:speaker_id]")
      end
    end

    class DeleteSpeakerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSpeakerOutput, context: context)
      end
    end

    class DescribeDomainInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDomainInput, context: context)
        Hearth::Validator.validate!(input[:domain_id], ::String, context: "#{context}[:domain_id]")
      end
    end

    class DescribeDomainOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDomainOutput, context: context)
        Domain.validate!(input[:domain], context: "#{context}[:domain]") unless input[:domain].nil?
      end
    end

    class DescribeFraudsterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFraudsterInput, context: context)
        Hearth::Validator.validate!(input[:domain_id], ::String, context: "#{context}[:domain_id]")
        Hearth::Validator.validate!(input[:fraudster_id], ::String, context: "#{context}[:fraudster_id]")
      end
    end

    class DescribeFraudsterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFraudsterOutput, context: context)
        Fraudster.validate!(input[:fraudster], context: "#{context}[:fraudster]") unless input[:fraudster].nil?
      end
    end

    class DescribeFraudsterRegistrationJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFraudsterRegistrationJobInput, context: context)
        Hearth::Validator.validate!(input[:domain_id], ::String, context: "#{context}[:domain_id]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class DescribeFraudsterRegistrationJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFraudsterRegistrationJobOutput, context: context)
        FraudsterRegistrationJob.validate!(input[:job], context: "#{context}[:job]") unless input[:job].nil?
      end
    end

    class DescribeSpeakerEnrollmentJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSpeakerEnrollmentJobInput, context: context)
        Hearth::Validator.validate!(input[:domain_id], ::String, context: "#{context}[:domain_id]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class DescribeSpeakerEnrollmentJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSpeakerEnrollmentJobOutput, context: context)
        SpeakerEnrollmentJob.validate!(input[:job], context: "#{context}[:job]") unless input[:job].nil?
      end
    end

    class DescribeSpeakerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSpeakerInput, context: context)
        Hearth::Validator.validate!(input[:domain_id], ::String, context: "#{context}[:domain_id]")
        Hearth::Validator.validate!(input[:speaker_id], ::String, context: "#{context}[:speaker_id]")
      end
    end

    class DescribeSpeakerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSpeakerOutput, context: context)
        Speaker.validate!(input[:speaker], context: "#{context}[:speaker]") unless input[:speaker].nil?
      end
    end

    class Domain
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Domain, context: context)
        Hearth::Validator.validate!(input[:domain_id], ::String, context: "#{context}[:domain_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:domain_status], ::String, context: "#{context}[:domain_status]")
        ServerSideEncryptionConfiguration.validate!(input[:server_side_encryption_configuration], context: "#{context}[:server_side_encryption_configuration]") unless input[:server_side_encryption_configuration].nil?
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
        ServerSideEncryptionUpdateDetails.validate!(input[:server_side_encryption_update_details], context: "#{context}[:server_side_encryption_update_details]") unless input[:server_side_encryption_update_details].nil?
      end
    end

    class DomainSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DomainSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DomainSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DomainSummary, context: context)
        Hearth::Validator.validate!(input[:domain_id], ::String, context: "#{context}[:domain_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:domain_status], ::String, context: "#{context}[:domain_status]")
        ServerSideEncryptionConfiguration.validate!(input[:server_side_encryption_configuration], context: "#{context}[:server_side_encryption_configuration]") unless input[:server_side_encryption_configuration].nil?
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
        ServerSideEncryptionUpdateDetails.validate!(input[:server_side_encryption_update_details], context: "#{context}[:server_side_encryption_update_details]") unless input[:server_side_encryption_update_details].nil?
      end
    end

    class EnrollmentConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnrollmentConfig, context: context)
        Hearth::Validator.validate!(input[:existing_enrollment_action], ::String, context: "#{context}[:existing_enrollment_action]")
        EnrollmentJobFraudDetectionConfig.validate!(input[:fraud_detection_config], context: "#{context}[:fraud_detection_config]") unless input[:fraud_detection_config].nil?
      end
    end

    class EnrollmentJobFraudDetectionConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnrollmentJobFraudDetectionConfig, context: context)
        Hearth::Validator.validate!(input[:fraud_detection_action], ::String, context: "#{context}[:fraud_detection_action]")
        Hearth::Validator.validate!(input[:risk_threshold], ::Integer, context: "#{context}[:risk_threshold]")
      end
    end

    class EvaluateSessionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EvaluateSessionInput, context: context)
        Hearth::Validator.validate!(input[:domain_id], ::String, context: "#{context}[:domain_id]")
        Hearth::Validator.validate!(input[:session_name_or_id], ::String, context: "#{context}[:session_name_or_id]")
      end
    end

    class EvaluateSessionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EvaluateSessionOutput, context: context)
        Hearth::Validator.validate!(input[:domain_id], ::String, context: "#{context}[:domain_id]")
        Hearth::Validator.validate!(input[:session_id], ::String, context: "#{context}[:session_id]")
        Hearth::Validator.validate!(input[:session_name], ::String, context: "#{context}[:session_name]")
        Hearth::Validator.validate!(input[:streaming_status], ::String, context: "#{context}[:streaming_status]")
        AuthenticationResult.validate!(input[:authentication_result], context: "#{context}[:authentication_result]") unless input[:authentication_result].nil?
        FraudDetectionResult.validate!(input[:fraud_detection_result], context: "#{context}[:fraud_detection_result]") unless input[:fraud_detection_result].nil?
      end
    end

    class FailureDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FailureDetails, context: context)
        Hearth::Validator.validate!(input[:status_code], ::Integer, context: "#{context}[:status_code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class FraudDetectionConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FraudDetectionConfiguration, context: context)
        Hearth::Validator.validate!(input[:risk_threshold], ::Integer, context: "#{context}[:risk_threshold]")
      end
    end

    class FraudDetectionReasons
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class FraudDetectionResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FraudDetectionResult, context: context)
        Hearth::Validator.validate!(input[:fraud_detection_result_id], ::String, context: "#{context}[:fraud_detection_result_id]")
        Hearth::Validator.validate!(input[:audio_aggregation_started_at], ::Time, context: "#{context}[:audio_aggregation_started_at]")
        Hearth::Validator.validate!(input[:audio_aggregation_ended_at], ::Time, context: "#{context}[:audio_aggregation_ended_at]")
        FraudDetectionConfiguration.validate!(input[:configuration], context: "#{context}[:configuration]") unless input[:configuration].nil?
        Hearth::Validator.validate!(input[:decision], ::String, context: "#{context}[:decision]")
        FraudDetectionReasons.validate!(input[:reasons], context: "#{context}[:reasons]") unless input[:reasons].nil?
        FraudRiskDetails.validate!(input[:risk_details], context: "#{context}[:risk_details]") unless input[:risk_details].nil?
      end
    end

    class FraudRiskDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FraudRiskDetails, context: context)
        KnownFraudsterRisk.validate!(input[:known_fraudster_risk], context: "#{context}[:known_fraudster_risk]") unless input[:known_fraudster_risk].nil?
      end
    end

    class Fraudster
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Fraudster, context: context)
        Hearth::Validator.validate!(input[:domain_id], ::String, context: "#{context}[:domain_id]")
        Hearth::Validator.validate!(input[:generated_fraudster_id], ::String, context: "#{context}[:generated_fraudster_id]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
      end
    end

    class FraudsterRegistrationJob
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FraudsterRegistrationJob, context: context)
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
        Hearth::Validator.validate!(input[:domain_id], ::String, context: "#{context}[:domain_id]")
        Hearth::Validator.validate!(input[:data_access_role_arn], ::String, context: "#{context}[:data_access_role_arn]")
        RegistrationConfig.validate!(input[:registration_config], context: "#{context}[:registration_config]") unless input[:registration_config].nil?
        InputDataConfig.validate!(input[:input_data_config], context: "#{context}[:input_data_config]") unless input[:input_data_config].nil?
        OutputDataConfig.validate!(input[:output_data_config], context: "#{context}[:output_data_config]") unless input[:output_data_config].nil?
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:ended_at], ::Time, context: "#{context}[:ended_at]")
        FailureDetails.validate!(input[:failure_details], context: "#{context}[:failure_details]") unless input[:failure_details].nil?
        JobProgress.validate!(input[:job_progress], context: "#{context}[:job_progress]") unless input[:job_progress].nil?
      end
    end

    class FraudsterRegistrationJobSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          FraudsterRegistrationJobSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FraudsterRegistrationJobSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FraudsterRegistrationJobSummary, context: context)
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
        Hearth::Validator.validate!(input[:domain_id], ::String, context: "#{context}[:domain_id]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:ended_at], ::Time, context: "#{context}[:ended_at]")
        FailureDetails.validate!(input[:failure_details], context: "#{context}[:failure_details]") unless input[:failure_details].nil?
        JobProgress.validate!(input[:job_progress], context: "#{context}[:job_progress]") unless input[:job_progress].nil?
      end
    end

    class InputDataConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InputDataConfig, context: context)
        Hearth::Validator.validate!(input[:s3_uri], ::String, context: "#{context}[:s3_uri]")
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class JobProgress
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobProgress, context: context)
        Hearth::Validator.validate!(input[:percent_complete], ::Integer, context: "#{context}[:percent_complete]")
      end
    end

    class KnownFraudsterRisk
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KnownFraudsterRisk, context: context)
        Hearth::Validator.validate!(input[:risk_score], ::Integer, context: "#{context}[:risk_score]")
        Hearth::Validator.validate!(input[:generated_fraudster_id], ::String, context: "#{context}[:generated_fraudster_id]")
      end
    end

    class ListDomainsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDomainsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDomainsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDomainsOutput, context: context)
        DomainSummaries.validate!(input[:domain_summaries], context: "#{context}[:domain_summaries]") unless input[:domain_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListFraudsterRegistrationJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFraudsterRegistrationJobsInput, context: context)
        Hearth::Validator.validate!(input[:domain_id], ::String, context: "#{context}[:domain_id]")
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListFraudsterRegistrationJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFraudsterRegistrationJobsOutput, context: context)
        FraudsterRegistrationJobSummaries.validate!(input[:job_summaries], context: "#{context}[:job_summaries]") unless input[:job_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSpeakerEnrollmentJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSpeakerEnrollmentJobsInput, context: context)
        Hearth::Validator.validate!(input[:domain_id], ::String, context: "#{context}[:domain_id]")
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSpeakerEnrollmentJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSpeakerEnrollmentJobsOutput, context: context)
        SpeakerEnrollmentJobSummaries.validate!(input[:job_summaries], context: "#{context}[:job_summaries]") unless input[:job_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSpeakersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSpeakersInput, context: context)
        Hearth::Validator.validate!(input[:domain_id], ::String, context: "#{context}[:domain_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSpeakersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSpeakersOutput, context: context)
        SpeakerSummaries.validate!(input[:speaker_summaries], context: "#{context}[:speaker_summaries]") unless input[:speaker_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class OptOutSpeakerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OptOutSpeakerInput, context: context)
        Hearth::Validator.validate!(input[:domain_id], ::String, context: "#{context}[:domain_id]")
        Hearth::Validator.validate!(input[:speaker_id], ::String, context: "#{context}[:speaker_id]")
      end
    end

    class OptOutSpeakerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OptOutSpeakerOutput, context: context)
        Speaker.validate!(input[:speaker], context: "#{context}[:speaker]") unless input[:speaker].nil?
      end
    end

    class OutputDataConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OutputDataConfig, context: context)
        Hearth::Validator.validate!(input[:s3_uri], ::String, context: "#{context}[:s3_uri]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
      end
    end

    class RegistrationConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegistrationConfig, context: context)
        Hearth::Validator.validate!(input[:duplicate_registration_action], ::String, context: "#{context}[:duplicate_registration_action]")
        Hearth::Validator.validate!(input[:fraudster_similarity_threshold], ::Integer, context: "#{context}[:fraudster_similarity_threshold]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class ServerSideEncryptionConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServerSideEncryptionConfiguration, context: context)
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
      end
    end

    class ServerSideEncryptionUpdateDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServerSideEncryptionUpdateDetails, context: context)
        Hearth::Validator.validate!(input[:old_kms_key_id], ::String, context: "#{context}[:old_kms_key_id]")
        Hearth::Validator.validate!(input[:update_status], ::String, context: "#{context}[:update_status]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ServiceQuotaExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceQuotaExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Speaker
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Speaker, context: context)
        Hearth::Validator.validate!(input[:domain_id], ::String, context: "#{context}[:domain_id]")
        Hearth::Validator.validate!(input[:customer_speaker_id], ::String, context: "#{context}[:customer_speaker_id]")
        Hearth::Validator.validate!(input[:generated_speaker_id], ::String, context: "#{context}[:generated_speaker_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
        Hearth::Validator.validate!(input[:last_accessed_at], ::Time, context: "#{context}[:last_accessed_at]")
      end
    end

    class SpeakerEnrollmentJob
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SpeakerEnrollmentJob, context: context)
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
        Hearth::Validator.validate!(input[:domain_id], ::String, context: "#{context}[:domain_id]")
        Hearth::Validator.validate!(input[:data_access_role_arn], ::String, context: "#{context}[:data_access_role_arn]")
        EnrollmentConfig.validate!(input[:enrollment_config], context: "#{context}[:enrollment_config]") unless input[:enrollment_config].nil?
        InputDataConfig.validate!(input[:input_data_config], context: "#{context}[:input_data_config]") unless input[:input_data_config].nil?
        OutputDataConfig.validate!(input[:output_data_config], context: "#{context}[:output_data_config]") unless input[:output_data_config].nil?
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:ended_at], ::Time, context: "#{context}[:ended_at]")
        FailureDetails.validate!(input[:failure_details], context: "#{context}[:failure_details]") unless input[:failure_details].nil?
        JobProgress.validate!(input[:job_progress], context: "#{context}[:job_progress]") unless input[:job_progress].nil?
      end
    end

    class SpeakerEnrollmentJobSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SpeakerEnrollmentJobSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SpeakerEnrollmentJobSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SpeakerEnrollmentJobSummary, context: context)
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
        Hearth::Validator.validate!(input[:domain_id], ::String, context: "#{context}[:domain_id]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:ended_at], ::Time, context: "#{context}[:ended_at]")
        FailureDetails.validate!(input[:failure_details], context: "#{context}[:failure_details]") unless input[:failure_details].nil?
        JobProgress.validate!(input[:job_progress], context: "#{context}[:job_progress]") unless input[:job_progress].nil?
      end
    end

    class SpeakerSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SpeakerSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SpeakerSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SpeakerSummary, context: context)
        Hearth::Validator.validate!(input[:domain_id], ::String, context: "#{context}[:domain_id]")
        Hearth::Validator.validate!(input[:customer_speaker_id], ::String, context: "#{context}[:customer_speaker_id]")
        Hearth::Validator.validate!(input[:generated_speaker_id], ::String, context: "#{context}[:generated_speaker_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
        Hearth::Validator.validate!(input[:last_accessed_at], ::Time, context: "#{context}[:last_accessed_at]")
      end
    end

    class StartFraudsterRegistrationJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartFraudsterRegistrationJobInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:domain_id], ::String, context: "#{context}[:domain_id]")
        Hearth::Validator.validate!(input[:data_access_role_arn], ::String, context: "#{context}[:data_access_role_arn]")
        RegistrationConfig.validate!(input[:registration_config], context: "#{context}[:registration_config]") unless input[:registration_config].nil?
        InputDataConfig.validate!(input[:input_data_config], context: "#{context}[:input_data_config]") unless input[:input_data_config].nil?
        OutputDataConfig.validate!(input[:output_data_config], context: "#{context}[:output_data_config]") unless input[:output_data_config].nil?
      end
    end

    class StartFraudsterRegistrationJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartFraudsterRegistrationJobOutput, context: context)
        FraudsterRegistrationJob.validate!(input[:job], context: "#{context}[:job]") unless input[:job].nil?
      end
    end

    class StartSpeakerEnrollmentJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartSpeakerEnrollmentJobInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:domain_id], ::String, context: "#{context}[:domain_id]")
        Hearth::Validator.validate!(input[:data_access_role_arn], ::String, context: "#{context}[:data_access_role_arn]")
        EnrollmentConfig.validate!(input[:enrollment_config], context: "#{context}[:enrollment_config]") unless input[:enrollment_config].nil?
        InputDataConfig.validate!(input[:input_data_config], context: "#{context}[:input_data_config]") unless input[:input_data_config].nil?
        OutputDataConfig.validate!(input[:output_data_config], context: "#{context}[:output_data_config]") unless input[:output_data_config].nil?
      end
    end

    class StartSpeakerEnrollmentJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartSpeakerEnrollmentJobOutput, context: context)
        SpeakerEnrollmentJob.validate!(input[:job], context: "#{context}[:job]") unless input[:job].nil?
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateDomainInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDomainInput, context: context)
        Hearth::Validator.validate!(input[:domain_id], ::String, context: "#{context}[:domain_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        ServerSideEncryptionConfiguration.validate!(input[:server_side_encryption_configuration], context: "#{context}[:server_side_encryption_configuration]") unless input[:server_side_encryption_configuration].nil?
      end
    end

    class UpdateDomainOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDomainOutput, context: context)
        Domain.validate!(input[:domain], context: "#{context}[:domain]") unless input[:domain].nil?
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

  end
end
