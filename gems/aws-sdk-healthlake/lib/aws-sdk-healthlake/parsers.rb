# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::HealthLake
  module Parsers

    # Operation Parser for CreateFHIRDatastore
    class CreateFHIRDatastore
      def self.parse(http_resp)
        data = Types::CreateFHIRDatastoreOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.datastore_id = map['DatastoreId']
        data.datastore_arn = map['DatastoreArn']
        data.datastore_status = map['DatastoreStatus']
        data.datastore_endpoint = map['DatastoreEndpoint']
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

    # Operation Parser for DeleteFHIRDatastore
    class DeleteFHIRDatastore
      def self.parse(http_resp)
        data = Types::DeleteFHIRDatastoreOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.datastore_id = map['DatastoreId']
        data.datastore_arn = map['DatastoreArn']
        data.datastore_status = map['DatastoreStatus']
        data.datastore_endpoint = map['DatastoreEndpoint']
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
        data
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
        data
      end
    end

    # Operation Parser for DescribeFHIRDatastore
    class DescribeFHIRDatastore
      def self.parse(http_resp)
        data = Types::DescribeFHIRDatastoreOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.datastore_properties = (Parsers::DatastoreProperties.parse(map['DatastoreProperties']) unless map['DatastoreProperties'].nil?)
        data
      end
    end

    class DatastoreProperties
      def self.parse(map)
        data = Types::DatastoreProperties.new
        data.datastore_id = map['DatastoreId']
        data.datastore_arn = map['DatastoreArn']
        data.datastore_name = map['DatastoreName']
        data.datastore_status = map['DatastoreStatus']
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.datastore_type_version = map['DatastoreTypeVersion']
        data.datastore_endpoint = map['DatastoreEndpoint']
        data.sse_configuration = (Parsers::SseConfiguration.parse(map['SseConfiguration']) unless map['SseConfiguration'].nil?)
        data.preload_data_config = (Parsers::PreloadDataConfig.parse(map['PreloadDataConfig']) unless map['PreloadDataConfig'].nil?)
        return data
      end
    end

    class PreloadDataConfig
      def self.parse(map)
        data = Types::PreloadDataConfig.new
        data.preload_data_type = map['PreloadDataType']
        return data
      end
    end

    class SseConfiguration
      def self.parse(map)
        data = Types::SseConfiguration.new
        data.kms_encryption_config = (Parsers::KmsEncryptionConfig.parse(map['KmsEncryptionConfig']) unless map['KmsEncryptionConfig'].nil?)
        return data
      end
    end

    class KmsEncryptionConfig
      def self.parse(map)
        data = Types::KmsEncryptionConfig.new
        data.cmk_type = map['CmkType']
        data.kms_key_id = map['KmsKeyId']
        return data
      end
    end

    # Operation Parser for DescribeFHIRExportJob
    class DescribeFHIRExportJob
      def self.parse(http_resp)
        data = Types::DescribeFHIRExportJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.export_job_properties = (Parsers::ExportJobProperties.parse(map['ExportJobProperties']) unless map['ExportJobProperties'].nil?)
        data
      end
    end

    class ExportJobProperties
      def self.parse(map)
        data = Types::ExportJobProperties.new
        data.job_id = map['JobId']
        data.job_name = map['JobName']
        data.job_status = map['JobStatus']
        data.submit_time = Time.at(map['SubmitTime'].to_i) if map['SubmitTime']
        data.end_time = Time.at(map['EndTime'].to_i) if map['EndTime']
        data.datastore_id = map['DatastoreId']
        data.output_data_config = (Parsers::OutputDataConfig.parse(map['OutputDataConfig']) unless map['OutputDataConfig'].nil?)
        data.data_access_role_arn = map['DataAccessRoleArn']
        data.message = map['Message']
        return data
      end
    end

    class OutputDataConfig
      def self.parse(map)
        key, value = map.flatten
        case key
        when 'S3Configuration'
          value = (Parsers::S3Configuration.parse(value) unless value.nil?)
          Types::OutputDataConfig::S3Configuration.new(value) if value
        else
          Types::OutputDataConfig::Unknown.new({name: key, value: value})
        end
      end
    end

    class S3Configuration
      def self.parse(map)
        data = Types::S3Configuration.new
        data.s3_uri = map['S3Uri']
        data.kms_key_id = map['KmsKeyId']
        return data
      end
    end

    # Operation Parser for DescribeFHIRImportJob
    class DescribeFHIRImportJob
      def self.parse(http_resp)
        data = Types::DescribeFHIRImportJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.import_job_properties = (Parsers::ImportJobProperties.parse(map['ImportJobProperties']) unless map['ImportJobProperties'].nil?)
        data
      end
    end

    class ImportJobProperties
      def self.parse(map)
        data = Types::ImportJobProperties.new
        data.job_id = map['JobId']
        data.job_name = map['JobName']
        data.job_status = map['JobStatus']
        data.submit_time = Time.at(map['SubmitTime'].to_i) if map['SubmitTime']
        data.end_time = Time.at(map['EndTime'].to_i) if map['EndTime']
        data.datastore_id = map['DatastoreId']
        data.input_data_config = (Parsers::InputDataConfig.parse(map['InputDataConfig']) unless map['InputDataConfig'].nil?)
        data.job_output_data_config = (Parsers::OutputDataConfig.parse(map['JobOutputDataConfig']) unless map['JobOutputDataConfig'].nil?)
        data.data_access_role_arn = map['DataAccessRoleArn']
        data.message = map['Message']
        return data
      end
    end

    class InputDataConfig
      def self.parse(map)
        key, value = map.flatten
        case key
        when 'S3Uri'
          value = value
          Types::InputDataConfig::S3Uri.new(value) if value
        else
          Types::InputDataConfig::Unknown.new({name: key, value: value})
        end
      end
    end

    # Operation Parser for ListFHIRDatastores
    class ListFHIRDatastores
      def self.parse(http_resp)
        data = Types::ListFHIRDatastoresOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.datastore_properties_list = (Parsers::DatastorePropertiesList.parse(map['DatastorePropertiesList']) unless map['DatastorePropertiesList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class DatastorePropertiesList
      def self.parse(list)
        list.map do |value|
          Parsers::DatastoreProperties.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListFHIRExportJobs
    class ListFHIRExportJobs
      def self.parse(http_resp)
        data = Types::ListFHIRExportJobsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.export_job_properties_list = (Parsers::ExportJobPropertiesList.parse(map['ExportJobPropertiesList']) unless map['ExportJobPropertiesList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ExportJobPropertiesList
      def self.parse(list)
        list.map do |value|
          Parsers::ExportJobProperties.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListFHIRImportJobs
    class ListFHIRImportJobs
      def self.parse(http_resp)
        data = Types::ListFHIRImportJobsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.import_job_properties_list = (Parsers::ImportJobPropertiesList.parse(map['ImportJobPropertiesList']) unless map['ImportJobPropertiesList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ImportJobPropertiesList
      def self.parse(list)
        list.map do |value|
          Parsers::ImportJobProperties.parse(value) unless value.nil?
        end
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

    # Operation Parser for StartFHIRExportJob
    class StartFHIRExportJob
      def self.parse(http_resp)
        data = Types::StartFHIRExportJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_id = map['JobId']
        data.job_status = map['JobStatus']
        data.datastore_id = map['DatastoreId']
        data
      end
    end

    # Operation Parser for StartFHIRImportJob
    class StartFHIRImportJob
      def self.parse(http_resp)
        data = Types::StartFHIRImportJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_id = map['JobId']
        data.job_status = map['JobStatus']
        data.datastore_id = map['DatastoreId']
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
  end
end
