# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::VoiceID
  module Parsers

    # Operation Parser for CreateDomain
    class CreateDomain
      def self.parse(http_resp)
        data = Types::CreateDomainOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.domain = (Parsers::Domain.parse(map['Domain']) unless map['Domain'].nil?)
        data
      end
    end

    class Domain
      def self.parse(map)
        data = Types::Domain.new
        data.domain_id = map['DomainId']
        data.arn = map['Arn']
        data.name = map['Name']
        data.description = map['Description']
        data.domain_status = map['DomainStatus']
        data.server_side_encryption_configuration = (Parsers::ServerSideEncryptionConfiguration.parse(map['ServerSideEncryptionConfiguration']) unless map['ServerSideEncryptionConfiguration'].nil?)
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.updated_at = Time.at(map['UpdatedAt'].to_i) if map['UpdatedAt']
        data.server_side_encryption_update_details = (Parsers::ServerSideEncryptionUpdateDetails.parse(map['ServerSideEncryptionUpdateDetails']) unless map['ServerSideEncryptionUpdateDetails'].nil?)
        return data
      end
    end

    class ServerSideEncryptionUpdateDetails
      def self.parse(map)
        data = Types::ServerSideEncryptionUpdateDetails.new
        data.old_kms_key_id = map['OldKmsKeyId']
        data.update_status = map['UpdateStatus']
        data.message = map['Message']
        return data
      end
    end

    class ServerSideEncryptionConfiguration
      def self.parse(map)
        data = Types::ServerSideEncryptionConfiguration.new
        data.kms_key_id = map['KmsKeyId']
        return data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.resource_type = map['ResourceType']
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.conflict_type = map['ConflictType']
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ServiceQuotaExceededException
    class ServiceQuotaExceededException
      def self.parse(http_resp)
        data = Types::ServiceQuotaExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeleteDomain
    class DeleteDomain
      def self.parse(http_resp)
        data = Types::DeleteDomainOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteFraudster
    class DeleteFraudster
      def self.parse(http_resp)
        data = Types::DeleteFraudsterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteSpeaker
    class DeleteSpeaker
      def self.parse(http_resp)
        data = Types::DeleteSpeakerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DescribeDomain
    class DescribeDomain
      def self.parse(http_resp)
        data = Types::DescribeDomainOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.domain = (Parsers::Domain.parse(map['Domain']) unless map['Domain'].nil?)
        data
      end
    end

    # Operation Parser for DescribeFraudster
    class DescribeFraudster
      def self.parse(http_resp)
        data = Types::DescribeFraudsterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.fraudster = (Parsers::Fraudster.parse(map['Fraudster']) unless map['Fraudster'].nil?)
        data
      end
    end

    class Fraudster
      def self.parse(map)
        data = Types::Fraudster.new
        data.domain_id = map['DomainId']
        data.generated_fraudster_id = map['GeneratedFraudsterId']
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        return data
      end
    end

    # Operation Parser for DescribeFraudsterRegistrationJob
    class DescribeFraudsterRegistrationJob
      def self.parse(http_resp)
        data = Types::DescribeFraudsterRegistrationJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job = (Parsers::FraudsterRegistrationJob.parse(map['Job']) unless map['Job'].nil?)
        data
      end
    end

    class FraudsterRegistrationJob
      def self.parse(map)
        data = Types::FraudsterRegistrationJob.new
        data.job_name = map['JobName']
        data.job_id = map['JobId']
        data.job_status = map['JobStatus']
        data.domain_id = map['DomainId']
        data.data_access_role_arn = map['DataAccessRoleArn']
        data.registration_config = (Parsers::RegistrationConfig.parse(map['RegistrationConfig']) unless map['RegistrationConfig'].nil?)
        data.input_data_config = (Parsers::InputDataConfig.parse(map['InputDataConfig']) unless map['InputDataConfig'].nil?)
        data.output_data_config = (Parsers::OutputDataConfig.parse(map['OutputDataConfig']) unless map['OutputDataConfig'].nil?)
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.ended_at = Time.at(map['EndedAt'].to_i) if map['EndedAt']
        data.failure_details = (Parsers::FailureDetails.parse(map['FailureDetails']) unless map['FailureDetails'].nil?)
        data.job_progress = (Parsers::JobProgress.parse(map['JobProgress']) unless map['JobProgress'].nil?)
        return data
      end
    end

    class JobProgress
      def self.parse(map)
        data = Types::JobProgress.new
        data.percent_complete = map['PercentComplete']
        return data
      end
    end

    class FailureDetails
      def self.parse(map)
        data = Types::FailureDetails.new
        data.status_code = map['StatusCode']
        data.message = map['Message']
        return data
      end
    end

    class OutputDataConfig
      def self.parse(map)
        data = Types::OutputDataConfig.new
        data.s3_uri = map['S3Uri']
        data.kms_key_id = map['KmsKeyId']
        return data
      end
    end

    class InputDataConfig
      def self.parse(map)
        data = Types::InputDataConfig.new
        data.s3_uri = map['S3Uri']
        return data
      end
    end

    class RegistrationConfig
      def self.parse(map)
        data = Types::RegistrationConfig.new
        data.duplicate_registration_action = map['DuplicateRegistrationAction']
        data.fraudster_similarity_threshold = map['FraudsterSimilarityThreshold']
        return data
      end
    end

    # Operation Parser for DescribeSpeaker
    class DescribeSpeaker
      def self.parse(http_resp)
        data = Types::DescribeSpeakerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.speaker = (Parsers::Speaker.parse(map['Speaker']) unless map['Speaker'].nil?)
        data
      end
    end

    class Speaker
      def self.parse(map)
        data = Types::Speaker.new
        data.domain_id = map['DomainId']
        data.customer_speaker_id = map['CustomerSpeakerId']
        data.generated_speaker_id = map['GeneratedSpeakerId']
        data.status = map['Status']
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.updated_at = Time.at(map['UpdatedAt'].to_i) if map['UpdatedAt']
        data.last_accessed_at = Time.at(map['LastAccessedAt'].to_i) if map['LastAccessedAt']
        return data
      end
    end

    # Operation Parser for DescribeSpeakerEnrollmentJob
    class DescribeSpeakerEnrollmentJob
      def self.parse(http_resp)
        data = Types::DescribeSpeakerEnrollmentJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job = (Parsers::SpeakerEnrollmentJob.parse(map['Job']) unless map['Job'].nil?)
        data
      end
    end

    class SpeakerEnrollmentJob
      def self.parse(map)
        data = Types::SpeakerEnrollmentJob.new
        data.job_name = map['JobName']
        data.job_id = map['JobId']
        data.job_status = map['JobStatus']
        data.domain_id = map['DomainId']
        data.data_access_role_arn = map['DataAccessRoleArn']
        data.enrollment_config = (Parsers::EnrollmentConfig.parse(map['EnrollmentConfig']) unless map['EnrollmentConfig'].nil?)
        data.input_data_config = (Parsers::InputDataConfig.parse(map['InputDataConfig']) unless map['InputDataConfig'].nil?)
        data.output_data_config = (Parsers::OutputDataConfig.parse(map['OutputDataConfig']) unless map['OutputDataConfig'].nil?)
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.ended_at = Time.at(map['EndedAt'].to_i) if map['EndedAt']
        data.failure_details = (Parsers::FailureDetails.parse(map['FailureDetails']) unless map['FailureDetails'].nil?)
        data.job_progress = (Parsers::JobProgress.parse(map['JobProgress']) unless map['JobProgress'].nil?)
        return data
      end
    end

    class EnrollmentConfig
      def self.parse(map)
        data = Types::EnrollmentConfig.new
        data.existing_enrollment_action = map['ExistingEnrollmentAction']
        data.fraud_detection_config = (Parsers::EnrollmentJobFraudDetectionConfig.parse(map['FraudDetectionConfig']) unless map['FraudDetectionConfig'].nil?)
        return data
      end
    end

    class EnrollmentJobFraudDetectionConfig
      def self.parse(map)
        data = Types::EnrollmentJobFraudDetectionConfig.new
        data.fraud_detection_action = map['FraudDetectionAction']
        data.risk_threshold = map['RiskThreshold']
        return data
      end
    end

    # Operation Parser for EvaluateSession
    class EvaluateSession
      def self.parse(http_resp)
        data = Types::EvaluateSessionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.domain_id = map['DomainId']
        data.session_id = map['SessionId']
        data.session_name = map['SessionName']
        data.streaming_status = map['StreamingStatus']
        data.authentication_result = (Parsers::AuthenticationResult.parse(map['AuthenticationResult']) unless map['AuthenticationResult'].nil?)
        data.fraud_detection_result = (Parsers::FraudDetectionResult.parse(map['FraudDetectionResult']) unless map['FraudDetectionResult'].nil?)
        data
      end
    end

    class FraudDetectionResult
      def self.parse(map)
        data = Types::FraudDetectionResult.new
        data.fraud_detection_result_id = map['FraudDetectionResultId']
        data.audio_aggregation_started_at = Time.at(map['AudioAggregationStartedAt'].to_i) if map['AudioAggregationStartedAt']
        data.audio_aggregation_ended_at = Time.at(map['AudioAggregationEndedAt'].to_i) if map['AudioAggregationEndedAt']
        data.configuration = (Parsers::FraudDetectionConfiguration.parse(map['Configuration']) unless map['Configuration'].nil?)
        data.decision = map['Decision']
        data.reasons = (Parsers::FraudDetectionReasons.parse(map['Reasons']) unless map['Reasons'].nil?)
        data.risk_details = (Parsers::FraudRiskDetails.parse(map['RiskDetails']) unless map['RiskDetails'].nil?)
        return data
      end
    end

    class FraudRiskDetails
      def self.parse(map)
        data = Types::FraudRiskDetails.new
        data.known_fraudster_risk = (Parsers::KnownFraudsterRisk.parse(map['KnownFraudsterRisk']) unless map['KnownFraudsterRisk'].nil?)
        return data
      end
    end

    class KnownFraudsterRisk
      def self.parse(map)
        data = Types::KnownFraudsterRisk.new
        data.risk_score = map['RiskScore']
        data.generated_fraudster_id = map['GeneratedFraudsterId']
        return data
      end
    end

    class FraudDetectionReasons
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class FraudDetectionConfiguration
      def self.parse(map)
        data = Types::FraudDetectionConfiguration.new
        data.risk_threshold = map['RiskThreshold']
        return data
      end
    end

    class AuthenticationResult
      def self.parse(map)
        data = Types::AuthenticationResult.new
        data.authentication_result_id = map['AuthenticationResultId']
        data.audio_aggregation_started_at = Time.at(map['AudioAggregationStartedAt'].to_i) if map['AudioAggregationStartedAt']
        data.audio_aggregation_ended_at = Time.at(map['AudioAggregationEndedAt'].to_i) if map['AudioAggregationEndedAt']
        data.customer_speaker_id = map['CustomerSpeakerId']
        data.generated_speaker_id = map['GeneratedSpeakerId']
        data.decision = map['Decision']
        data.score = map['Score']
        data.configuration = (Parsers::AuthenticationConfiguration.parse(map['Configuration']) unless map['Configuration'].nil?)
        return data
      end
    end

    class AuthenticationConfiguration
      def self.parse(map)
        data = Types::AuthenticationConfiguration.new
        data.acceptance_threshold = map['AcceptanceThreshold']
        return data
      end
    end

    # Operation Parser for ListDomains
    class ListDomains
      def self.parse(http_resp)
        data = Types::ListDomainsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.domain_summaries = (Parsers::DomainSummaries.parse(map['DomainSummaries']) unless map['DomainSummaries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class DomainSummaries
      def self.parse(list)
        list.map do |value|
          Parsers::DomainSummary.parse(value) unless value.nil?
        end
      end
    end

    class DomainSummary
      def self.parse(map)
        data = Types::DomainSummary.new
        data.domain_id = map['DomainId']
        data.arn = map['Arn']
        data.name = map['Name']
        data.description = map['Description']
        data.domain_status = map['DomainStatus']
        data.server_side_encryption_configuration = (Parsers::ServerSideEncryptionConfiguration.parse(map['ServerSideEncryptionConfiguration']) unless map['ServerSideEncryptionConfiguration'].nil?)
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.updated_at = Time.at(map['UpdatedAt'].to_i) if map['UpdatedAt']
        data.server_side_encryption_update_details = (Parsers::ServerSideEncryptionUpdateDetails.parse(map['ServerSideEncryptionUpdateDetails']) unless map['ServerSideEncryptionUpdateDetails'].nil?)
        return data
      end
    end

    # Operation Parser for ListFraudsterRegistrationJobs
    class ListFraudsterRegistrationJobs
      def self.parse(http_resp)
        data = Types::ListFraudsterRegistrationJobsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_summaries = (Parsers::FraudsterRegistrationJobSummaries.parse(map['JobSummaries']) unless map['JobSummaries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class FraudsterRegistrationJobSummaries
      def self.parse(list)
        list.map do |value|
          Parsers::FraudsterRegistrationJobSummary.parse(value) unless value.nil?
        end
      end
    end

    class FraudsterRegistrationJobSummary
      def self.parse(map)
        data = Types::FraudsterRegistrationJobSummary.new
        data.job_name = map['JobName']
        data.job_id = map['JobId']
        data.job_status = map['JobStatus']
        data.domain_id = map['DomainId']
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.ended_at = Time.at(map['EndedAt'].to_i) if map['EndedAt']
        data.failure_details = (Parsers::FailureDetails.parse(map['FailureDetails']) unless map['FailureDetails'].nil?)
        data.job_progress = (Parsers::JobProgress.parse(map['JobProgress']) unless map['JobProgress'].nil?)
        return data
      end
    end

    # Operation Parser for ListSpeakerEnrollmentJobs
    class ListSpeakerEnrollmentJobs
      def self.parse(http_resp)
        data = Types::ListSpeakerEnrollmentJobsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_summaries = (Parsers::SpeakerEnrollmentJobSummaries.parse(map['JobSummaries']) unless map['JobSummaries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class SpeakerEnrollmentJobSummaries
      def self.parse(list)
        list.map do |value|
          Parsers::SpeakerEnrollmentJobSummary.parse(value) unless value.nil?
        end
      end
    end

    class SpeakerEnrollmentJobSummary
      def self.parse(map)
        data = Types::SpeakerEnrollmentJobSummary.new
        data.job_name = map['JobName']
        data.job_id = map['JobId']
        data.job_status = map['JobStatus']
        data.domain_id = map['DomainId']
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.ended_at = Time.at(map['EndedAt'].to_i) if map['EndedAt']
        data.failure_details = (Parsers::FailureDetails.parse(map['FailureDetails']) unless map['FailureDetails'].nil?)
        data.job_progress = (Parsers::JobProgress.parse(map['JobProgress']) unless map['JobProgress'].nil?)
        return data
      end
    end

    # Operation Parser for ListSpeakers
    class ListSpeakers
      def self.parse(http_resp)
        data = Types::ListSpeakersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.speaker_summaries = (Parsers::SpeakerSummaries.parse(map['SpeakerSummaries']) unless map['SpeakerSummaries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class SpeakerSummaries
      def self.parse(list)
        list.map do |value|
          Parsers::SpeakerSummary.parse(value) unless value.nil?
        end
      end
    end

    class SpeakerSummary
      def self.parse(map)
        data = Types::SpeakerSummary.new
        data.domain_id = map['DomainId']
        data.customer_speaker_id = map['CustomerSpeakerId']
        data.generated_speaker_id = map['GeneratedSpeakerId']
        data.status = map['Status']
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.updated_at = Time.at(map['UpdatedAt'].to_i) if map['UpdatedAt']
        data.last_accessed_at = Time.at(map['LastAccessedAt'].to_i) if map['LastAccessedAt']
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tags = (Parsers::TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    class TagList
      def self.parse(list)
        list.map do |value|
          Parsers::Tag.parse(value) unless value.nil?
        end
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

    # Operation Parser for OptOutSpeaker
    class OptOutSpeaker
      def self.parse(http_resp)
        data = Types::OptOutSpeakerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.speaker = (Parsers::Speaker.parse(map['Speaker']) unless map['Speaker'].nil?)
        data
      end
    end

    # Operation Parser for StartFraudsterRegistrationJob
    class StartFraudsterRegistrationJob
      def self.parse(http_resp)
        data = Types::StartFraudsterRegistrationJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job = (Parsers::FraudsterRegistrationJob.parse(map['Job']) unless map['Job'].nil?)
        data
      end
    end

    # Operation Parser for StartSpeakerEnrollmentJob
    class StartSpeakerEnrollmentJob
      def self.parse(http_resp)
        data = Types::StartSpeakerEnrollmentJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job = (Parsers::SpeakerEnrollmentJob.parse(map['Job']) unless map['Job'].nil?)
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateDomain
    class UpdateDomain
      def self.parse(http_resp)
        data = Types::UpdateDomainOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.domain = (Parsers::Domain.parse(map['Domain']) unless map['Domain'].nil?)
        data
      end
    end
  end
end
