# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::VoiceID
  module Builders

    # Operation Builder for CreateDomain
    class CreateDomain
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'VoiceID.CreateDomain'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['ServerSideEncryptionConfiguration'] = ServerSideEncryptionConfiguration.build(input[:server_side_encryption_configuration]) unless input[:server_side_encryption_configuration].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Structure Builder for ServerSideEncryptionConfiguration
    class ServerSideEncryptionConfiguration
      def self.build(input)
        data = {}
        data['KmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data
      end
    end

    # Operation Builder for DeleteDomain
    class DeleteDomain
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'VoiceID.DeleteDomain'
        data = {}
        data['DomainId'] = input[:domain_id] unless input[:domain_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteFraudster
    class DeleteFraudster
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'VoiceID.DeleteFraudster'
        data = {}
        data['DomainId'] = input[:domain_id] unless input[:domain_id].nil?
        data['FraudsterId'] = input[:fraudster_id] unless input[:fraudster_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteSpeaker
    class DeleteSpeaker
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'VoiceID.DeleteSpeaker'
        data = {}
        data['DomainId'] = input[:domain_id] unless input[:domain_id].nil?
        data['SpeakerId'] = input[:speaker_id] unless input[:speaker_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeDomain
    class DescribeDomain
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'VoiceID.DescribeDomain'
        data = {}
        data['DomainId'] = input[:domain_id] unless input[:domain_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeFraudster
    class DescribeFraudster
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'VoiceID.DescribeFraudster'
        data = {}
        data['DomainId'] = input[:domain_id] unless input[:domain_id].nil?
        data['FraudsterId'] = input[:fraudster_id] unless input[:fraudster_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeFraudsterRegistrationJob
    class DescribeFraudsterRegistrationJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'VoiceID.DescribeFraudsterRegistrationJob'
        data = {}
        data['DomainId'] = input[:domain_id] unless input[:domain_id].nil?
        data['JobId'] = input[:job_id] unless input[:job_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeSpeaker
    class DescribeSpeaker
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'VoiceID.DescribeSpeaker'
        data = {}
        data['DomainId'] = input[:domain_id] unless input[:domain_id].nil?
        data['SpeakerId'] = input[:speaker_id] unless input[:speaker_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeSpeakerEnrollmentJob
    class DescribeSpeakerEnrollmentJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'VoiceID.DescribeSpeakerEnrollmentJob'
        data = {}
        data['DomainId'] = input[:domain_id] unless input[:domain_id].nil?
        data['JobId'] = input[:job_id] unless input[:job_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for EvaluateSession
    class EvaluateSession
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'VoiceID.EvaluateSession'
        data = {}
        data['DomainId'] = input[:domain_id] unless input[:domain_id].nil?
        data['SessionNameOrId'] = input[:session_name_or_id] unless input[:session_name_or_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListDomains
    class ListDomains
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'VoiceID.ListDomains'
        data = {}
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListFraudsterRegistrationJobs
    class ListFraudsterRegistrationJobs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'VoiceID.ListFraudsterRegistrationJobs'
        data = {}
        data['DomainId'] = input[:domain_id] unless input[:domain_id].nil?
        data['JobStatus'] = input[:job_status] unless input[:job_status].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListSpeakerEnrollmentJobs
    class ListSpeakerEnrollmentJobs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'VoiceID.ListSpeakerEnrollmentJobs'
        data = {}
        data['DomainId'] = input[:domain_id] unless input[:domain_id].nil?
        data['JobStatus'] = input[:job_status] unless input[:job_status].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListSpeakers
    class ListSpeakers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'VoiceID.ListSpeakers'
        data = {}
        data['DomainId'] = input[:domain_id] unless input[:domain_id].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'VoiceID.ListTagsForResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for OptOutSpeaker
    class OptOutSpeaker
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'VoiceID.OptOutSpeaker'
        data = {}
        data['DomainId'] = input[:domain_id] unless input[:domain_id].nil?
        data['SpeakerId'] = input[:speaker_id] unless input[:speaker_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartFraudsterRegistrationJob
    class StartFraudsterRegistrationJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'VoiceID.StartFraudsterRegistrationJob'
        data = {}
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        data['JobName'] = input[:job_name] unless input[:job_name].nil?
        data['DomainId'] = input[:domain_id] unless input[:domain_id].nil?
        data['DataAccessRoleArn'] = input[:data_access_role_arn] unless input[:data_access_role_arn].nil?
        data['RegistrationConfig'] = RegistrationConfig.build(input[:registration_config]) unless input[:registration_config].nil?
        data['InputDataConfig'] = InputDataConfig.build(input[:input_data_config]) unless input[:input_data_config].nil?
        data['OutputDataConfig'] = OutputDataConfig.build(input[:output_data_config]) unless input[:output_data_config].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for OutputDataConfig
    class OutputDataConfig
      def self.build(input)
        data = {}
        data['S3Uri'] = input[:s3_uri] unless input[:s3_uri].nil?
        data['KmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data
      end
    end

    # Structure Builder for InputDataConfig
    class InputDataConfig
      def self.build(input)
        data = {}
        data['S3Uri'] = input[:s3_uri] unless input[:s3_uri].nil?
        data
      end
    end

    # Structure Builder for RegistrationConfig
    class RegistrationConfig
      def self.build(input)
        data = {}
        data['DuplicateRegistrationAction'] = input[:duplicate_registration_action] unless input[:duplicate_registration_action].nil?
        data['FraudsterSimilarityThreshold'] = input[:fraudster_similarity_threshold] unless input[:fraudster_similarity_threshold].nil?
        data
      end
    end

    # Operation Builder for StartSpeakerEnrollmentJob
    class StartSpeakerEnrollmentJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'VoiceID.StartSpeakerEnrollmentJob'
        data = {}
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        data['JobName'] = input[:job_name] unless input[:job_name].nil?
        data['DomainId'] = input[:domain_id] unless input[:domain_id].nil?
        data['DataAccessRoleArn'] = input[:data_access_role_arn] unless input[:data_access_role_arn].nil?
        data['EnrollmentConfig'] = EnrollmentConfig.build(input[:enrollment_config]) unless input[:enrollment_config].nil?
        data['InputDataConfig'] = InputDataConfig.build(input[:input_data_config]) unless input[:input_data_config].nil?
        data['OutputDataConfig'] = OutputDataConfig.build(input[:output_data_config]) unless input[:output_data_config].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for EnrollmentConfig
    class EnrollmentConfig
      def self.build(input)
        data = {}
        data['ExistingEnrollmentAction'] = input[:existing_enrollment_action] unless input[:existing_enrollment_action].nil?
        data['FraudDetectionConfig'] = EnrollmentJobFraudDetectionConfig.build(input[:fraud_detection_config]) unless input[:fraud_detection_config].nil?
        data
      end
    end

    # Structure Builder for EnrollmentJobFraudDetectionConfig
    class EnrollmentJobFraudDetectionConfig
      def self.build(input)
        data = {}
        data['FraudDetectionAction'] = input[:fraud_detection_action] unless input[:fraud_detection_action].nil?
        data['RiskThreshold'] = input[:risk_threshold] unless input[:risk_threshold].nil?
        data
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'VoiceID.TagResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'VoiceID.UntagResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['TagKeys'] = TagKeyList.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagKeyList
    class TagKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateDomain
    class UpdateDomain
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'VoiceID.UpdateDomain'
        data = {}
        data['DomainId'] = input[:domain_id] unless input[:domain_id].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['ServerSideEncryptionConfiguration'] = ServerSideEncryptionConfiguration.build(input[:server_side_encryption_configuration]) unless input[:server_side_encryption_configuration].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
