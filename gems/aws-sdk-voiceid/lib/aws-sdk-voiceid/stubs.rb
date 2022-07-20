# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::VoiceID
  module Stubs

    # Operation Stubber for CreateDomain
    class CreateDomain
      def self.default(visited=[])
        {
          domain: Domain.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Domain'] = Stubs::Domain.stub(stub[:domain]) unless stub[:domain].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Domain
    class Domain
      def self.default(visited=[])
        return nil if visited.include?('Domain')
        visited = visited + ['Domain']
        {
          domain_id: 'domain_id',
          arn: 'arn',
          name: 'name',
          description: 'description',
          domain_status: 'domain_status',
          server_side_encryption_configuration: ServerSideEncryptionConfiguration.default(visited),
          created_at: Time.now,
          updated_at: Time.now,
          server_side_encryption_update_details: ServerSideEncryptionUpdateDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Domain.new
        data = {}
        data['DomainId'] = stub[:domain_id] unless stub[:domain_id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['DomainStatus'] = stub[:domain_status] unless stub[:domain_status].nil?
        data['ServerSideEncryptionConfiguration'] = Stubs::ServerSideEncryptionConfiguration.stub(stub[:server_side_encryption_configuration]) unless stub[:server_side_encryption_configuration].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['UpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:updated_at]).to_i unless stub[:updated_at].nil?
        data['ServerSideEncryptionUpdateDetails'] = Stubs::ServerSideEncryptionUpdateDetails.stub(stub[:server_side_encryption_update_details]) unless stub[:server_side_encryption_update_details].nil?
        data
      end
    end

    # Structure Stubber for ServerSideEncryptionUpdateDetails
    class ServerSideEncryptionUpdateDetails
      def self.default(visited=[])
        return nil if visited.include?('ServerSideEncryptionUpdateDetails')
        visited = visited + ['ServerSideEncryptionUpdateDetails']
        {
          old_kms_key_id: 'old_kms_key_id',
          update_status: 'update_status',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::ServerSideEncryptionUpdateDetails.new
        data = {}
        data['OldKmsKeyId'] = stub[:old_kms_key_id] unless stub[:old_kms_key_id].nil?
        data['UpdateStatus'] = stub[:update_status] unless stub[:update_status].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Structure Stubber for ServerSideEncryptionConfiguration
    class ServerSideEncryptionConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ServerSideEncryptionConfiguration')
        visited = visited + ['ServerSideEncryptionConfiguration']
        {
          kms_key_id: 'kms_key_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::ServerSideEncryptionConfiguration.new
        data = {}
        data['KmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data
      end
    end

    # Operation Stubber for DeleteDomain
    class DeleteDomain
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteFraudster
    class DeleteFraudster
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteSpeaker
    class DeleteSpeaker
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeDomain
    class DescribeDomain
      def self.default(visited=[])
        {
          domain: Domain.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Domain'] = Stubs::Domain.stub(stub[:domain]) unless stub[:domain].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeFraudster
    class DescribeFraudster
      def self.default(visited=[])
        {
          fraudster: Fraudster.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Fraudster'] = Stubs::Fraudster.stub(stub[:fraudster]) unless stub[:fraudster].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Fraudster
    class Fraudster
      def self.default(visited=[])
        return nil if visited.include?('Fraudster')
        visited = visited + ['Fraudster']
        {
          domain_id: 'domain_id',
          generated_fraudster_id: 'generated_fraudster_id',
          created_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Fraudster.new
        data = {}
        data['DomainId'] = stub[:domain_id] unless stub[:domain_id].nil?
        data['GeneratedFraudsterId'] = stub[:generated_fraudster_id] unless stub[:generated_fraudster_id].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data
      end
    end

    # Operation Stubber for DescribeFraudsterRegistrationJob
    class DescribeFraudsterRegistrationJob
      def self.default(visited=[])
        {
          job: FraudsterRegistrationJob.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Job'] = Stubs::FraudsterRegistrationJob.stub(stub[:job]) unless stub[:job].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for FraudsterRegistrationJob
    class FraudsterRegistrationJob
      def self.default(visited=[])
        return nil if visited.include?('FraudsterRegistrationJob')
        visited = visited + ['FraudsterRegistrationJob']
        {
          job_name: 'job_name',
          job_id: 'job_id',
          job_status: 'job_status',
          domain_id: 'domain_id',
          data_access_role_arn: 'data_access_role_arn',
          registration_config: RegistrationConfig.default(visited),
          input_data_config: InputDataConfig.default(visited),
          output_data_config: OutputDataConfig.default(visited),
          created_at: Time.now,
          ended_at: Time.now,
          failure_details: FailureDetails.default(visited),
          job_progress: JobProgress.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FraudsterRegistrationJob.new
        data = {}
        data['JobName'] = stub[:job_name] unless stub[:job_name].nil?
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['JobStatus'] = stub[:job_status] unless stub[:job_status].nil?
        data['DomainId'] = stub[:domain_id] unless stub[:domain_id].nil?
        data['DataAccessRoleArn'] = stub[:data_access_role_arn] unless stub[:data_access_role_arn].nil?
        data['RegistrationConfig'] = Stubs::RegistrationConfig.stub(stub[:registration_config]) unless stub[:registration_config].nil?
        data['InputDataConfig'] = Stubs::InputDataConfig.stub(stub[:input_data_config]) unless stub[:input_data_config].nil?
        data['OutputDataConfig'] = Stubs::OutputDataConfig.stub(stub[:output_data_config]) unless stub[:output_data_config].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['EndedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:ended_at]).to_i unless stub[:ended_at].nil?
        data['FailureDetails'] = Stubs::FailureDetails.stub(stub[:failure_details]) unless stub[:failure_details].nil?
        data['JobProgress'] = Stubs::JobProgress.stub(stub[:job_progress]) unless stub[:job_progress].nil?
        data
      end
    end

    # Structure Stubber for JobProgress
    class JobProgress
      def self.default(visited=[])
        return nil if visited.include?('JobProgress')
        visited = visited + ['JobProgress']
        {
          percent_complete: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::JobProgress.new
        data = {}
        data['PercentComplete'] = stub[:percent_complete] unless stub[:percent_complete].nil?
        data
      end
    end

    # Structure Stubber for FailureDetails
    class FailureDetails
      def self.default(visited=[])
        return nil if visited.include?('FailureDetails')
        visited = visited + ['FailureDetails']
        {
          status_code: 1,
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::FailureDetails.new
        data = {}
        data['StatusCode'] = stub[:status_code] unless stub[:status_code].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Structure Stubber for OutputDataConfig
    class OutputDataConfig
      def self.default(visited=[])
        return nil if visited.include?('OutputDataConfig')
        visited = visited + ['OutputDataConfig']
        {
          s3_uri: 's3_uri',
          kms_key_id: 'kms_key_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::OutputDataConfig.new
        data = {}
        data['S3Uri'] = stub[:s3_uri] unless stub[:s3_uri].nil?
        data['KmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data
      end
    end

    # Structure Stubber for InputDataConfig
    class InputDataConfig
      def self.default(visited=[])
        return nil if visited.include?('InputDataConfig')
        visited = visited + ['InputDataConfig']
        {
          s3_uri: 's3_uri',
        }
      end

      def self.stub(stub)
        stub ||= Types::InputDataConfig.new
        data = {}
        data['S3Uri'] = stub[:s3_uri] unless stub[:s3_uri].nil?
        data
      end
    end

    # Structure Stubber for RegistrationConfig
    class RegistrationConfig
      def self.default(visited=[])
        return nil if visited.include?('RegistrationConfig')
        visited = visited + ['RegistrationConfig']
        {
          duplicate_registration_action: 'duplicate_registration_action',
          fraudster_similarity_threshold: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::RegistrationConfig.new
        data = {}
        data['DuplicateRegistrationAction'] = stub[:duplicate_registration_action] unless stub[:duplicate_registration_action].nil?
        data['FraudsterSimilarityThreshold'] = stub[:fraudster_similarity_threshold] unless stub[:fraudster_similarity_threshold].nil?
        data
      end
    end

    # Operation Stubber for DescribeSpeaker
    class DescribeSpeaker
      def self.default(visited=[])
        {
          speaker: Speaker.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Speaker'] = Stubs::Speaker.stub(stub[:speaker]) unless stub[:speaker].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Speaker
    class Speaker
      def self.default(visited=[])
        return nil if visited.include?('Speaker')
        visited = visited + ['Speaker']
        {
          domain_id: 'domain_id',
          customer_speaker_id: 'customer_speaker_id',
          generated_speaker_id: 'generated_speaker_id',
          status: 'status',
          created_at: Time.now,
          updated_at: Time.now,
          last_accessed_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Speaker.new
        data = {}
        data['DomainId'] = stub[:domain_id] unless stub[:domain_id].nil?
        data['CustomerSpeakerId'] = stub[:customer_speaker_id] unless stub[:customer_speaker_id].nil?
        data['GeneratedSpeakerId'] = stub[:generated_speaker_id] unless stub[:generated_speaker_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['UpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:updated_at]).to_i unless stub[:updated_at].nil?
        data['LastAccessedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_accessed_at]).to_i unless stub[:last_accessed_at].nil?
        data
      end
    end

    # Operation Stubber for DescribeSpeakerEnrollmentJob
    class DescribeSpeakerEnrollmentJob
      def self.default(visited=[])
        {
          job: SpeakerEnrollmentJob.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Job'] = Stubs::SpeakerEnrollmentJob.stub(stub[:job]) unless stub[:job].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for SpeakerEnrollmentJob
    class SpeakerEnrollmentJob
      def self.default(visited=[])
        return nil if visited.include?('SpeakerEnrollmentJob')
        visited = visited + ['SpeakerEnrollmentJob']
        {
          job_name: 'job_name',
          job_id: 'job_id',
          job_status: 'job_status',
          domain_id: 'domain_id',
          data_access_role_arn: 'data_access_role_arn',
          enrollment_config: EnrollmentConfig.default(visited),
          input_data_config: InputDataConfig.default(visited),
          output_data_config: OutputDataConfig.default(visited),
          created_at: Time.now,
          ended_at: Time.now,
          failure_details: FailureDetails.default(visited),
          job_progress: JobProgress.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SpeakerEnrollmentJob.new
        data = {}
        data['JobName'] = stub[:job_name] unless stub[:job_name].nil?
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['JobStatus'] = stub[:job_status] unless stub[:job_status].nil?
        data['DomainId'] = stub[:domain_id] unless stub[:domain_id].nil?
        data['DataAccessRoleArn'] = stub[:data_access_role_arn] unless stub[:data_access_role_arn].nil?
        data['EnrollmentConfig'] = Stubs::EnrollmentConfig.stub(stub[:enrollment_config]) unless stub[:enrollment_config].nil?
        data['InputDataConfig'] = Stubs::InputDataConfig.stub(stub[:input_data_config]) unless stub[:input_data_config].nil?
        data['OutputDataConfig'] = Stubs::OutputDataConfig.stub(stub[:output_data_config]) unless stub[:output_data_config].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['EndedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:ended_at]).to_i unless stub[:ended_at].nil?
        data['FailureDetails'] = Stubs::FailureDetails.stub(stub[:failure_details]) unless stub[:failure_details].nil?
        data['JobProgress'] = Stubs::JobProgress.stub(stub[:job_progress]) unless stub[:job_progress].nil?
        data
      end
    end

    # Structure Stubber for EnrollmentConfig
    class EnrollmentConfig
      def self.default(visited=[])
        return nil if visited.include?('EnrollmentConfig')
        visited = visited + ['EnrollmentConfig']
        {
          existing_enrollment_action: 'existing_enrollment_action',
          fraud_detection_config: EnrollmentJobFraudDetectionConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::EnrollmentConfig.new
        data = {}
        data['ExistingEnrollmentAction'] = stub[:existing_enrollment_action] unless stub[:existing_enrollment_action].nil?
        data['FraudDetectionConfig'] = Stubs::EnrollmentJobFraudDetectionConfig.stub(stub[:fraud_detection_config]) unless stub[:fraud_detection_config].nil?
        data
      end
    end

    # Structure Stubber for EnrollmentJobFraudDetectionConfig
    class EnrollmentJobFraudDetectionConfig
      def self.default(visited=[])
        return nil if visited.include?('EnrollmentJobFraudDetectionConfig')
        visited = visited + ['EnrollmentJobFraudDetectionConfig']
        {
          fraud_detection_action: 'fraud_detection_action',
          risk_threshold: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::EnrollmentJobFraudDetectionConfig.new
        data = {}
        data['FraudDetectionAction'] = stub[:fraud_detection_action] unless stub[:fraud_detection_action].nil?
        data['RiskThreshold'] = stub[:risk_threshold] unless stub[:risk_threshold].nil?
        data
      end
    end

    # Operation Stubber for EvaluateSession
    class EvaluateSession
      def self.default(visited=[])
        {
          domain_id: 'domain_id',
          session_id: 'session_id',
          session_name: 'session_name',
          streaming_status: 'streaming_status',
          authentication_result: AuthenticationResult.default(visited),
          fraud_detection_result: FraudDetectionResult.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DomainId'] = stub[:domain_id] unless stub[:domain_id].nil?
        data['SessionId'] = stub[:session_id] unless stub[:session_id].nil?
        data['SessionName'] = stub[:session_name] unless stub[:session_name].nil?
        data['StreamingStatus'] = stub[:streaming_status] unless stub[:streaming_status].nil?
        data['AuthenticationResult'] = Stubs::AuthenticationResult.stub(stub[:authentication_result]) unless stub[:authentication_result].nil?
        data['FraudDetectionResult'] = Stubs::FraudDetectionResult.stub(stub[:fraud_detection_result]) unless stub[:fraud_detection_result].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for FraudDetectionResult
    class FraudDetectionResult
      def self.default(visited=[])
        return nil if visited.include?('FraudDetectionResult')
        visited = visited + ['FraudDetectionResult']
        {
          fraud_detection_result_id: 'fraud_detection_result_id',
          audio_aggregation_started_at: Time.now,
          audio_aggregation_ended_at: Time.now,
          configuration: FraudDetectionConfiguration.default(visited),
          decision: 'decision',
          reasons: FraudDetectionReasons.default(visited),
          risk_details: FraudRiskDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FraudDetectionResult.new
        data = {}
        data['FraudDetectionResultId'] = stub[:fraud_detection_result_id] unless stub[:fraud_detection_result_id].nil?
        data['AudioAggregationStartedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:audio_aggregation_started_at]).to_i unless stub[:audio_aggregation_started_at].nil?
        data['AudioAggregationEndedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:audio_aggregation_ended_at]).to_i unless stub[:audio_aggregation_ended_at].nil?
        data['Configuration'] = Stubs::FraudDetectionConfiguration.stub(stub[:configuration]) unless stub[:configuration].nil?
        data['Decision'] = stub[:decision] unless stub[:decision].nil?
        data['Reasons'] = Stubs::FraudDetectionReasons.stub(stub[:reasons]) unless stub[:reasons].nil?
        data['RiskDetails'] = Stubs::FraudRiskDetails.stub(stub[:risk_details]) unless stub[:risk_details].nil?
        data
      end
    end

    # Structure Stubber for FraudRiskDetails
    class FraudRiskDetails
      def self.default(visited=[])
        return nil if visited.include?('FraudRiskDetails')
        visited = visited + ['FraudRiskDetails']
        {
          known_fraudster_risk: KnownFraudsterRisk.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FraudRiskDetails.new
        data = {}
        data['KnownFraudsterRisk'] = Stubs::KnownFraudsterRisk.stub(stub[:known_fraudster_risk]) unless stub[:known_fraudster_risk].nil?
        data
      end
    end

    # Structure Stubber for KnownFraudsterRisk
    class KnownFraudsterRisk
      def self.default(visited=[])
        return nil if visited.include?('KnownFraudsterRisk')
        visited = visited + ['KnownFraudsterRisk']
        {
          risk_score: 1,
          generated_fraudster_id: 'generated_fraudster_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::KnownFraudsterRisk.new
        data = {}
        data['RiskScore'] = stub[:risk_score] unless stub[:risk_score].nil?
        data['GeneratedFraudsterId'] = stub[:generated_fraudster_id] unless stub[:generated_fraudster_id].nil?
        data
      end
    end

    # List Stubber for FraudDetectionReasons
    class FraudDetectionReasons
      def self.default(visited=[])
        return nil if visited.include?('FraudDetectionReasons')
        visited = visited + ['FraudDetectionReasons']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FraudDetectionConfiguration
    class FraudDetectionConfiguration
      def self.default(visited=[])
        return nil if visited.include?('FraudDetectionConfiguration')
        visited = visited + ['FraudDetectionConfiguration']
        {
          risk_threshold: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::FraudDetectionConfiguration.new
        data = {}
        data['RiskThreshold'] = stub[:risk_threshold] unless stub[:risk_threshold].nil?
        data
      end
    end

    # Structure Stubber for AuthenticationResult
    class AuthenticationResult
      def self.default(visited=[])
        return nil if visited.include?('AuthenticationResult')
        visited = visited + ['AuthenticationResult']
        {
          authentication_result_id: 'authentication_result_id',
          audio_aggregation_started_at: Time.now,
          audio_aggregation_ended_at: Time.now,
          customer_speaker_id: 'customer_speaker_id',
          generated_speaker_id: 'generated_speaker_id',
          decision: 'decision',
          score: 1,
          configuration: AuthenticationConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AuthenticationResult.new
        data = {}
        data['AuthenticationResultId'] = stub[:authentication_result_id] unless stub[:authentication_result_id].nil?
        data['AudioAggregationStartedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:audio_aggregation_started_at]).to_i unless stub[:audio_aggregation_started_at].nil?
        data['AudioAggregationEndedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:audio_aggregation_ended_at]).to_i unless stub[:audio_aggregation_ended_at].nil?
        data['CustomerSpeakerId'] = stub[:customer_speaker_id] unless stub[:customer_speaker_id].nil?
        data['GeneratedSpeakerId'] = stub[:generated_speaker_id] unless stub[:generated_speaker_id].nil?
        data['Decision'] = stub[:decision] unless stub[:decision].nil?
        data['Score'] = stub[:score] unless stub[:score].nil?
        data['Configuration'] = Stubs::AuthenticationConfiguration.stub(stub[:configuration]) unless stub[:configuration].nil?
        data
      end
    end

    # Structure Stubber for AuthenticationConfiguration
    class AuthenticationConfiguration
      def self.default(visited=[])
        return nil if visited.include?('AuthenticationConfiguration')
        visited = visited + ['AuthenticationConfiguration']
        {
          acceptance_threshold: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::AuthenticationConfiguration.new
        data = {}
        data['AcceptanceThreshold'] = stub[:acceptance_threshold] unless stub[:acceptance_threshold].nil?
        data
      end
    end

    # Operation Stubber for ListDomains
    class ListDomains
      def self.default(visited=[])
        {
          domain_summaries: DomainSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DomainSummaries'] = Stubs::DomainSummaries.stub(stub[:domain_summaries]) unless stub[:domain_summaries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DomainSummaries
    class DomainSummaries
      def self.default(visited=[])
        return nil if visited.include?('DomainSummaries')
        visited = visited + ['DomainSummaries']
        [
          DomainSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DomainSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DomainSummary
    class DomainSummary
      def self.default(visited=[])
        return nil if visited.include?('DomainSummary')
        visited = visited + ['DomainSummary']
        {
          domain_id: 'domain_id',
          arn: 'arn',
          name: 'name',
          description: 'description',
          domain_status: 'domain_status',
          server_side_encryption_configuration: ServerSideEncryptionConfiguration.default(visited),
          created_at: Time.now,
          updated_at: Time.now,
          server_side_encryption_update_details: ServerSideEncryptionUpdateDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DomainSummary.new
        data = {}
        data['DomainId'] = stub[:domain_id] unless stub[:domain_id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['DomainStatus'] = stub[:domain_status] unless stub[:domain_status].nil?
        data['ServerSideEncryptionConfiguration'] = Stubs::ServerSideEncryptionConfiguration.stub(stub[:server_side_encryption_configuration]) unless stub[:server_side_encryption_configuration].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['UpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:updated_at]).to_i unless stub[:updated_at].nil?
        data['ServerSideEncryptionUpdateDetails'] = Stubs::ServerSideEncryptionUpdateDetails.stub(stub[:server_side_encryption_update_details]) unless stub[:server_side_encryption_update_details].nil?
        data
      end
    end

    # Operation Stubber for ListFraudsterRegistrationJobs
    class ListFraudsterRegistrationJobs
      def self.default(visited=[])
        {
          job_summaries: FraudsterRegistrationJobSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobSummaries'] = Stubs::FraudsterRegistrationJobSummaries.stub(stub[:job_summaries]) unless stub[:job_summaries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for FraudsterRegistrationJobSummaries
    class FraudsterRegistrationJobSummaries
      def self.default(visited=[])
        return nil if visited.include?('FraudsterRegistrationJobSummaries')
        visited = visited + ['FraudsterRegistrationJobSummaries']
        [
          FraudsterRegistrationJobSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::FraudsterRegistrationJobSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FraudsterRegistrationJobSummary
    class FraudsterRegistrationJobSummary
      def self.default(visited=[])
        return nil if visited.include?('FraudsterRegistrationJobSummary')
        visited = visited + ['FraudsterRegistrationJobSummary']
        {
          job_name: 'job_name',
          job_id: 'job_id',
          job_status: 'job_status',
          domain_id: 'domain_id',
          created_at: Time.now,
          ended_at: Time.now,
          failure_details: FailureDetails.default(visited),
          job_progress: JobProgress.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FraudsterRegistrationJobSummary.new
        data = {}
        data['JobName'] = stub[:job_name] unless stub[:job_name].nil?
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['JobStatus'] = stub[:job_status] unless stub[:job_status].nil?
        data['DomainId'] = stub[:domain_id] unless stub[:domain_id].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['EndedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:ended_at]).to_i unless stub[:ended_at].nil?
        data['FailureDetails'] = Stubs::FailureDetails.stub(stub[:failure_details]) unless stub[:failure_details].nil?
        data['JobProgress'] = Stubs::JobProgress.stub(stub[:job_progress]) unless stub[:job_progress].nil?
        data
      end
    end

    # Operation Stubber for ListSpeakerEnrollmentJobs
    class ListSpeakerEnrollmentJobs
      def self.default(visited=[])
        {
          job_summaries: SpeakerEnrollmentJobSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobSummaries'] = Stubs::SpeakerEnrollmentJobSummaries.stub(stub[:job_summaries]) unless stub[:job_summaries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for SpeakerEnrollmentJobSummaries
    class SpeakerEnrollmentJobSummaries
      def self.default(visited=[])
        return nil if visited.include?('SpeakerEnrollmentJobSummaries')
        visited = visited + ['SpeakerEnrollmentJobSummaries']
        [
          SpeakerEnrollmentJobSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SpeakerEnrollmentJobSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SpeakerEnrollmentJobSummary
    class SpeakerEnrollmentJobSummary
      def self.default(visited=[])
        return nil if visited.include?('SpeakerEnrollmentJobSummary')
        visited = visited + ['SpeakerEnrollmentJobSummary']
        {
          job_name: 'job_name',
          job_id: 'job_id',
          job_status: 'job_status',
          domain_id: 'domain_id',
          created_at: Time.now,
          ended_at: Time.now,
          failure_details: FailureDetails.default(visited),
          job_progress: JobProgress.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SpeakerEnrollmentJobSummary.new
        data = {}
        data['JobName'] = stub[:job_name] unless stub[:job_name].nil?
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['JobStatus'] = stub[:job_status] unless stub[:job_status].nil?
        data['DomainId'] = stub[:domain_id] unless stub[:domain_id].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['EndedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:ended_at]).to_i unless stub[:ended_at].nil?
        data['FailureDetails'] = Stubs::FailureDetails.stub(stub[:failure_details]) unless stub[:failure_details].nil?
        data['JobProgress'] = Stubs::JobProgress.stub(stub[:job_progress]) unless stub[:job_progress].nil?
        data
      end
    end

    # Operation Stubber for ListSpeakers
    class ListSpeakers
      def self.default(visited=[])
        {
          speaker_summaries: SpeakerSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SpeakerSummaries'] = Stubs::SpeakerSummaries.stub(stub[:speaker_summaries]) unless stub[:speaker_summaries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for SpeakerSummaries
    class SpeakerSummaries
      def self.default(visited=[])
        return nil if visited.include?('SpeakerSummaries')
        visited = visited + ['SpeakerSummaries']
        [
          SpeakerSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SpeakerSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SpeakerSummary
    class SpeakerSummary
      def self.default(visited=[])
        return nil if visited.include?('SpeakerSummary')
        visited = visited + ['SpeakerSummary']
        {
          domain_id: 'domain_id',
          customer_speaker_id: 'customer_speaker_id',
          generated_speaker_id: 'generated_speaker_id',
          status: 'status',
          created_at: Time.now,
          updated_at: Time.now,
          last_accessed_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::SpeakerSummary.new
        data = {}
        data['DomainId'] = stub[:domain_id] unless stub[:domain_id].nil?
        data['CustomerSpeakerId'] = stub[:customer_speaker_id] unless stub[:customer_speaker_id].nil?
        data['GeneratedSpeakerId'] = stub[:generated_speaker_id] unless stub[:generated_speaker_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['UpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:updated_at]).to_i unless stub[:updated_at].nil?
        data['LastAccessedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_accessed_at]).to_i unless stub[:last_accessed_at].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TagList
    class TagList
      def self.default(visited=[])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
        [
          Tag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Tag.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Tag
    class Tag
      def self.default(visited=[])
        return nil if visited.include?('Tag')
        visited = visited + ['Tag']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::Tag.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for OptOutSpeaker
    class OptOutSpeaker
      def self.default(visited=[])
        {
          speaker: Speaker.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Speaker'] = Stubs::Speaker.stub(stub[:speaker]) unless stub[:speaker].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartFraudsterRegistrationJob
    class StartFraudsterRegistrationJob
      def self.default(visited=[])
        {
          job: FraudsterRegistrationJob.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Job'] = Stubs::FraudsterRegistrationJob.stub(stub[:job]) unless stub[:job].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartSpeakerEnrollmentJob
    class StartSpeakerEnrollmentJob
      def self.default(visited=[])
        {
          job: SpeakerEnrollmentJob.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Job'] = Stubs::SpeakerEnrollmentJob.stub(stub[:job]) unless stub[:job].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UntagResource
    class UntagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateDomain
    class UpdateDomain
      def self.default(visited=[])
        {
          domain: Domain.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Domain'] = Stubs::Domain.stub(stub[:domain]) unless stub[:domain].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
