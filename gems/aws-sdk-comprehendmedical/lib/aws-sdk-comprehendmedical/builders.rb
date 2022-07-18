# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ComprehendMedical
  module Builders

    # Operation Builder for DescribeEntitiesDetectionV2Job
    class DescribeEntitiesDetectionV2Job
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ComprehendMedical_20181030.DescribeEntitiesDetectionV2Job'
        data = {}
        data['JobId'] = input[:job_id] unless input[:job_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeICD10CMInferenceJob
    class DescribeICD10CMInferenceJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ComprehendMedical_20181030.DescribeICD10CMInferenceJob'
        data = {}
        data['JobId'] = input[:job_id] unless input[:job_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribePHIDetectionJob
    class DescribePHIDetectionJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ComprehendMedical_20181030.DescribePHIDetectionJob'
        data = {}
        data['JobId'] = input[:job_id] unless input[:job_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeRxNormInferenceJob
    class DescribeRxNormInferenceJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ComprehendMedical_20181030.DescribeRxNormInferenceJob'
        data = {}
        data['JobId'] = input[:job_id] unless input[:job_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeSNOMEDCTInferenceJob
    class DescribeSNOMEDCTInferenceJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ComprehendMedical_20181030.DescribeSNOMEDCTInferenceJob'
        data = {}
        data['JobId'] = input[:job_id] unless input[:job_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DetectEntities
    class DetectEntities
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ComprehendMedical_20181030.DetectEntities'
        data = {}
        data['Text'] = input[:text] unless input[:text].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DetectEntitiesV2
    class DetectEntitiesV2
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ComprehendMedical_20181030.DetectEntitiesV2'
        data = {}
        data['Text'] = input[:text] unless input[:text].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DetectPHI
    class DetectPHI
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ComprehendMedical_20181030.DetectPHI'
        data = {}
        data['Text'] = input[:text] unless input[:text].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for InferICD10CM
    class InferICD10CM
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ComprehendMedical_20181030.InferICD10CM'
        data = {}
        data['Text'] = input[:text] unless input[:text].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for InferRxNorm
    class InferRxNorm
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ComprehendMedical_20181030.InferRxNorm'
        data = {}
        data['Text'] = input[:text] unless input[:text].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for InferSNOMEDCT
    class InferSNOMEDCT
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ComprehendMedical_20181030.InferSNOMEDCT'
        data = {}
        data['Text'] = input[:text] unless input[:text].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListEntitiesDetectionV2Jobs
    class ListEntitiesDetectionV2Jobs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ComprehendMedical_20181030.ListEntitiesDetectionV2Jobs'
        data = {}
        data['Filter'] = Builders::ComprehendMedicalAsyncJobFilter.build(input[:filter]) unless input[:filter].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ComprehendMedicalAsyncJobFilter
    class ComprehendMedicalAsyncJobFilter
      def self.build(input)
        data = {}
        data['JobName'] = input[:job_name] unless input[:job_name].nil?
        data['JobStatus'] = input[:job_status] unless input[:job_status].nil?
        data['SubmitTimeBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:submit_time_before]).to_i unless input[:submit_time_before].nil?
        data['SubmitTimeAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:submit_time_after]).to_i unless input[:submit_time_after].nil?
        data
      end
    end

    # Operation Builder for ListICD10CMInferenceJobs
    class ListICD10CMInferenceJobs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ComprehendMedical_20181030.ListICD10CMInferenceJobs'
        data = {}
        data['Filter'] = Builders::ComprehendMedicalAsyncJobFilter.build(input[:filter]) unless input[:filter].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListPHIDetectionJobs
    class ListPHIDetectionJobs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ComprehendMedical_20181030.ListPHIDetectionJobs'
        data = {}
        data['Filter'] = Builders::ComprehendMedicalAsyncJobFilter.build(input[:filter]) unless input[:filter].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListRxNormInferenceJobs
    class ListRxNormInferenceJobs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ComprehendMedical_20181030.ListRxNormInferenceJobs'
        data = {}
        data['Filter'] = Builders::ComprehendMedicalAsyncJobFilter.build(input[:filter]) unless input[:filter].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListSNOMEDCTInferenceJobs
    class ListSNOMEDCTInferenceJobs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ComprehendMedical_20181030.ListSNOMEDCTInferenceJobs'
        data = {}
        data['Filter'] = Builders::ComprehendMedicalAsyncJobFilter.build(input[:filter]) unless input[:filter].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartEntitiesDetectionV2Job
    class StartEntitiesDetectionV2Job
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ComprehendMedical_20181030.StartEntitiesDetectionV2Job'
        data = {}
        data['InputDataConfig'] = Builders::InputDataConfig.build(input[:input_data_config]) unless input[:input_data_config].nil?
        data['OutputDataConfig'] = Builders::OutputDataConfig.build(input[:output_data_config]) unless input[:output_data_config].nil?
        data['DataAccessRoleArn'] = input[:data_access_role_arn] unless input[:data_access_role_arn].nil?
        data['JobName'] = input[:job_name] unless input[:job_name].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['KMSKey'] = input[:kms_key] unless input[:kms_key].nil?
        data['LanguageCode'] = input[:language_code] unless input[:language_code].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for OutputDataConfig
    class OutputDataConfig
      def self.build(input)
        data = {}
        data['S3Bucket'] = input[:s3_bucket] unless input[:s3_bucket].nil?
        data['S3Key'] = input[:s3_key] unless input[:s3_key].nil?
        data
      end
    end

    # Structure Builder for InputDataConfig
    class InputDataConfig
      def self.build(input)
        data = {}
        data['S3Bucket'] = input[:s3_bucket] unless input[:s3_bucket].nil?
        data['S3Key'] = input[:s3_key] unless input[:s3_key].nil?
        data
      end
    end

    # Operation Builder for StartICD10CMInferenceJob
    class StartICD10CMInferenceJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ComprehendMedical_20181030.StartICD10CMInferenceJob'
        data = {}
        data['InputDataConfig'] = Builders::InputDataConfig.build(input[:input_data_config]) unless input[:input_data_config].nil?
        data['OutputDataConfig'] = Builders::OutputDataConfig.build(input[:output_data_config]) unless input[:output_data_config].nil?
        data['DataAccessRoleArn'] = input[:data_access_role_arn] unless input[:data_access_role_arn].nil?
        data['JobName'] = input[:job_name] unless input[:job_name].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['KMSKey'] = input[:kms_key] unless input[:kms_key].nil?
        data['LanguageCode'] = input[:language_code] unless input[:language_code].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartPHIDetectionJob
    class StartPHIDetectionJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ComprehendMedical_20181030.StartPHIDetectionJob'
        data = {}
        data['InputDataConfig'] = Builders::InputDataConfig.build(input[:input_data_config]) unless input[:input_data_config].nil?
        data['OutputDataConfig'] = Builders::OutputDataConfig.build(input[:output_data_config]) unless input[:output_data_config].nil?
        data['DataAccessRoleArn'] = input[:data_access_role_arn] unless input[:data_access_role_arn].nil?
        data['JobName'] = input[:job_name] unless input[:job_name].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['KMSKey'] = input[:kms_key] unless input[:kms_key].nil?
        data['LanguageCode'] = input[:language_code] unless input[:language_code].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartRxNormInferenceJob
    class StartRxNormInferenceJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ComprehendMedical_20181030.StartRxNormInferenceJob'
        data = {}
        data['InputDataConfig'] = Builders::InputDataConfig.build(input[:input_data_config]) unless input[:input_data_config].nil?
        data['OutputDataConfig'] = Builders::OutputDataConfig.build(input[:output_data_config]) unless input[:output_data_config].nil?
        data['DataAccessRoleArn'] = input[:data_access_role_arn] unless input[:data_access_role_arn].nil?
        data['JobName'] = input[:job_name] unless input[:job_name].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['KMSKey'] = input[:kms_key] unless input[:kms_key].nil?
        data['LanguageCode'] = input[:language_code] unless input[:language_code].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartSNOMEDCTInferenceJob
    class StartSNOMEDCTInferenceJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ComprehendMedical_20181030.StartSNOMEDCTInferenceJob'
        data = {}
        data['InputDataConfig'] = Builders::InputDataConfig.build(input[:input_data_config]) unless input[:input_data_config].nil?
        data['OutputDataConfig'] = Builders::OutputDataConfig.build(input[:output_data_config]) unless input[:output_data_config].nil?
        data['DataAccessRoleArn'] = input[:data_access_role_arn] unless input[:data_access_role_arn].nil?
        data['JobName'] = input[:job_name] unless input[:job_name].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['KMSKey'] = input[:kms_key] unless input[:kms_key].nil?
        data['LanguageCode'] = input[:language_code] unless input[:language_code].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopEntitiesDetectionV2Job
    class StopEntitiesDetectionV2Job
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ComprehendMedical_20181030.StopEntitiesDetectionV2Job'
        data = {}
        data['JobId'] = input[:job_id] unless input[:job_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopICD10CMInferenceJob
    class StopICD10CMInferenceJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ComprehendMedical_20181030.StopICD10CMInferenceJob'
        data = {}
        data['JobId'] = input[:job_id] unless input[:job_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopPHIDetectionJob
    class StopPHIDetectionJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ComprehendMedical_20181030.StopPHIDetectionJob'
        data = {}
        data['JobId'] = input[:job_id] unless input[:job_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopRxNormInferenceJob
    class StopRxNormInferenceJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ComprehendMedical_20181030.StopRxNormInferenceJob'
        data = {}
        data['JobId'] = input[:job_id] unless input[:job_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopSNOMEDCTInferenceJob
    class StopSNOMEDCTInferenceJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ComprehendMedical_20181030.StopSNOMEDCTInferenceJob'
        data = {}
        data['JobId'] = input[:job_id] unless input[:job_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
