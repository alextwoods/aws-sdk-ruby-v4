# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::HealthLake
  module Builders

    # Operation Builder for CreateFHIRDatastore
    class CreateFHIRDatastore
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'HealthLake.CreateFHIRDatastore'
        data = {}
        data['DatastoreName'] = input[:datastore_name] unless input[:datastore_name].nil?
        data['DatastoreTypeVersion'] = input[:datastore_type_version] unless input[:datastore_type_version].nil?
        data['SseConfiguration'] = Builders::SseConfiguration.build(input[:sse_configuration]) unless input[:sse_configuration].nil?
        data['PreloadDataConfig'] = Builders::PreloadDataConfig.build(input[:preload_data_config]) unless input[:preload_data_config].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Tag.build(element) unless element.nil?
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

    # Structure Builder for PreloadDataConfig
    class PreloadDataConfig
      def self.build(input)
        data = {}
        data['PreloadDataType'] = input[:preload_data_type] unless input[:preload_data_type].nil?
        data
      end
    end

    # Structure Builder for SseConfiguration
    class SseConfiguration
      def self.build(input)
        data = {}
        data['KmsEncryptionConfig'] = Builders::KmsEncryptionConfig.build(input[:kms_encryption_config]) unless input[:kms_encryption_config].nil?
        data
      end
    end

    # Structure Builder for KmsEncryptionConfig
    class KmsEncryptionConfig
      def self.build(input)
        data = {}
        data['CmkType'] = input[:cmk_type] unless input[:cmk_type].nil?
        data['KmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data
      end
    end

    # Operation Builder for DeleteFHIRDatastore
    class DeleteFHIRDatastore
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'HealthLake.DeleteFHIRDatastore'
        data = {}
        data['DatastoreId'] = input[:datastore_id] unless input[:datastore_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeFHIRDatastore
    class DescribeFHIRDatastore
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'HealthLake.DescribeFHIRDatastore'
        data = {}
        data['DatastoreId'] = input[:datastore_id] unless input[:datastore_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeFHIRExportJob
    class DescribeFHIRExportJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'HealthLake.DescribeFHIRExportJob'
        data = {}
        data['DatastoreId'] = input[:datastore_id] unless input[:datastore_id].nil?
        data['JobId'] = input[:job_id] unless input[:job_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeFHIRImportJob
    class DescribeFHIRImportJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'HealthLake.DescribeFHIRImportJob'
        data = {}
        data['DatastoreId'] = input[:datastore_id] unless input[:datastore_id].nil?
        data['JobId'] = input[:job_id] unless input[:job_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListFHIRDatastores
    class ListFHIRDatastores
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'HealthLake.ListFHIRDatastores'
        data = {}
        data['Filter'] = Builders::DatastoreFilter.build(input[:filter]) unless input[:filter].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for DatastoreFilter
    class DatastoreFilter
      def self.build(input)
        data = {}
        data['DatastoreName'] = input[:datastore_name] unless input[:datastore_name].nil?
        data['DatastoreStatus'] = input[:datastore_status] unless input[:datastore_status].nil?
        data['CreatedBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:created_before]).to_i unless input[:created_before].nil?
        data['CreatedAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:created_after]).to_i unless input[:created_after].nil?
        data
      end
    end

    # Operation Builder for ListFHIRExportJobs
    class ListFHIRExportJobs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'HealthLake.ListFHIRExportJobs'
        data = {}
        data['DatastoreId'] = input[:datastore_id] unless input[:datastore_id].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['JobName'] = input[:job_name] unless input[:job_name].nil?
        data['JobStatus'] = input[:job_status] unless input[:job_status].nil?
        data['SubmittedBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:submitted_before]).to_i unless input[:submitted_before].nil?
        data['SubmittedAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:submitted_after]).to_i unless input[:submitted_after].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListFHIRImportJobs
    class ListFHIRImportJobs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'HealthLake.ListFHIRImportJobs'
        data = {}
        data['DatastoreId'] = input[:datastore_id] unless input[:datastore_id].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['JobName'] = input[:job_name] unless input[:job_name].nil?
        data['JobStatus'] = input[:job_status] unless input[:job_status].nil?
        data['SubmittedBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:submitted_before]).to_i unless input[:submitted_before].nil?
        data['SubmittedAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:submitted_after]).to_i unless input[:submitted_after].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'HealthLake.ListTagsForResource'
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartFHIRExportJob
    class StartFHIRExportJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'HealthLake.StartFHIRExportJob'
        data = {}
        data['JobName'] = input[:job_name] unless input[:job_name].nil?
        data['OutputDataConfig'] = Builders::OutputDataConfig.build(input[:output_data_config]) unless input[:output_data_config].nil?
        data['DatastoreId'] = input[:datastore_id] unless input[:datastore_id].nil?
        data['DataAccessRoleArn'] = input[:data_access_role_arn] unless input[:data_access_role_arn].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for OutputDataConfig
    class OutputDataConfig
      def self.build(input)
        data = {}
        case input
        when Types::OutputDataConfig::S3Configuration
          data['S3Configuration'] = (Builders::S3Configuration.build(input) unless input.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::OutputDataConfig"
        end

        data
      end
    end

    # Structure Builder for S3Configuration
    class S3Configuration
      def self.build(input)
        data = {}
        data['S3Uri'] = input[:s3_uri] unless input[:s3_uri].nil?
        data['KmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data
      end
    end

    # Operation Builder for StartFHIRImportJob
    class StartFHIRImportJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'HealthLake.StartFHIRImportJob'
        data = {}
        data['JobName'] = input[:job_name] unless input[:job_name].nil?
        data['InputDataConfig'] = Builders::InputDataConfig.build(input[:input_data_config]) unless input[:input_data_config].nil?
        data['JobOutputDataConfig'] = Builders::OutputDataConfig.build(input[:job_output_data_config]) unless input[:job_output_data_config].nil?
        data['DatastoreId'] = input[:datastore_id] unless input[:datastore_id].nil?
        data['DataAccessRoleArn'] = input[:data_access_role_arn] unless input[:data_access_role_arn].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for InputDataConfig
    class InputDataConfig
      def self.build(input)
        data = {}
        case input
        when Types::InputDataConfig::S3Uri
          data['S3Uri'] = input
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::InputDataConfig"
        end

        data
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'HealthLake.TagResource'
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'HealthLake.UntagResource'
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['TagKeys'] = Builders::TagKeyList.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
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
  end
end
