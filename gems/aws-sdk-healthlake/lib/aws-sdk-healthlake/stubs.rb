# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::HealthLake
  module Stubs

    # Operation Stubber for CreateFHIRDatastore
    class CreateFHIRDatastore
      def self.default(visited=[])
        {
          datastore_id: 'datastore_id',
          datastore_arn: 'datastore_arn',
          datastore_status: 'datastore_status',
          datastore_endpoint: 'datastore_endpoint',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DatastoreId'] = stub[:datastore_id] unless stub[:datastore_id].nil?
        data['DatastoreArn'] = stub[:datastore_arn] unless stub[:datastore_arn].nil?
        data['DatastoreStatus'] = stub[:datastore_status] unless stub[:datastore_status].nil?
        data['DatastoreEndpoint'] = stub[:datastore_endpoint] unless stub[:datastore_endpoint].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteFHIRDatastore
    class DeleteFHIRDatastore
      def self.default(visited=[])
        {
          datastore_id: 'datastore_id',
          datastore_arn: 'datastore_arn',
          datastore_status: 'datastore_status',
          datastore_endpoint: 'datastore_endpoint',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DatastoreId'] = stub[:datastore_id] unless stub[:datastore_id].nil?
        data['DatastoreArn'] = stub[:datastore_arn] unless stub[:datastore_arn].nil?
        data['DatastoreStatus'] = stub[:datastore_status] unless stub[:datastore_status].nil?
        data['DatastoreEndpoint'] = stub[:datastore_endpoint] unless stub[:datastore_endpoint].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeFHIRDatastore
    class DescribeFHIRDatastore
      def self.default(visited=[])
        {
          datastore_properties: Stubs::DatastoreProperties.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DatastoreProperties'] = Stubs::DatastoreProperties.stub(stub[:datastore_properties]) unless stub[:datastore_properties].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for DatastoreProperties
    class DatastoreProperties
      def self.default(visited=[])
        return nil if visited.include?('DatastoreProperties')
        visited = visited + ['DatastoreProperties']
        {
          datastore_id: 'datastore_id',
          datastore_arn: 'datastore_arn',
          datastore_name: 'datastore_name',
          datastore_status: 'datastore_status',
          created_at: Time.now,
          datastore_type_version: 'datastore_type_version',
          datastore_endpoint: 'datastore_endpoint',
          sse_configuration: Stubs::SseConfiguration.default(visited),
          preload_data_config: Stubs::PreloadDataConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DatastoreProperties.new
        data = {}
        data['DatastoreId'] = stub[:datastore_id] unless stub[:datastore_id].nil?
        data['DatastoreArn'] = stub[:datastore_arn] unless stub[:datastore_arn].nil?
        data['DatastoreName'] = stub[:datastore_name] unless stub[:datastore_name].nil?
        data['DatastoreStatus'] = stub[:datastore_status] unless stub[:datastore_status].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['DatastoreTypeVersion'] = stub[:datastore_type_version] unless stub[:datastore_type_version].nil?
        data['DatastoreEndpoint'] = stub[:datastore_endpoint] unless stub[:datastore_endpoint].nil?
        data['SseConfiguration'] = Stubs::SseConfiguration.stub(stub[:sse_configuration]) unless stub[:sse_configuration].nil?
        data['PreloadDataConfig'] = Stubs::PreloadDataConfig.stub(stub[:preload_data_config]) unless stub[:preload_data_config].nil?
        data
      end
    end

    # Structure Stubber for PreloadDataConfig
    class PreloadDataConfig
      def self.default(visited=[])
        return nil if visited.include?('PreloadDataConfig')
        visited = visited + ['PreloadDataConfig']
        {
          preload_data_type: 'preload_data_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::PreloadDataConfig.new
        data = {}
        data['PreloadDataType'] = stub[:preload_data_type] unless stub[:preload_data_type].nil?
        data
      end
    end

    # Structure Stubber for SseConfiguration
    class SseConfiguration
      def self.default(visited=[])
        return nil if visited.include?('SseConfiguration')
        visited = visited + ['SseConfiguration']
        {
          kms_encryption_config: Stubs::KmsEncryptionConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SseConfiguration.new
        data = {}
        data['KmsEncryptionConfig'] = Stubs::KmsEncryptionConfig.stub(stub[:kms_encryption_config]) unless stub[:kms_encryption_config].nil?
        data
      end
    end

    # Structure Stubber for KmsEncryptionConfig
    class KmsEncryptionConfig
      def self.default(visited=[])
        return nil if visited.include?('KmsEncryptionConfig')
        visited = visited + ['KmsEncryptionConfig']
        {
          cmk_type: 'cmk_type',
          kms_key_id: 'kms_key_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::KmsEncryptionConfig.new
        data = {}
        data['CmkType'] = stub[:cmk_type] unless stub[:cmk_type].nil?
        data['KmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data
      end
    end

    # Operation Stubber for DescribeFHIRExportJob
    class DescribeFHIRExportJob
      def self.default(visited=[])
        {
          export_job_properties: Stubs::ExportJobProperties.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ExportJobProperties'] = Stubs::ExportJobProperties.stub(stub[:export_job_properties]) unless stub[:export_job_properties].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ExportJobProperties
    class ExportJobProperties
      def self.default(visited=[])
        return nil if visited.include?('ExportJobProperties')
        visited = visited + ['ExportJobProperties']
        {
          job_id: 'job_id',
          job_name: 'job_name',
          job_status: 'job_status',
          submit_time: Time.now,
          end_time: Time.now,
          datastore_id: 'datastore_id',
          output_data_config: Stubs::OutputDataConfig.default(visited),
          data_access_role_arn: 'data_access_role_arn',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::ExportJobProperties.new
        data = {}
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['JobName'] = stub[:job_name] unless stub[:job_name].nil?
        data['JobStatus'] = stub[:job_status] unless stub[:job_status].nil?
        data['SubmitTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:submit_time]).to_i unless stub[:submit_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data['DatastoreId'] = stub[:datastore_id] unless stub[:datastore_id].nil?
        data['OutputDataConfig'] = Stubs::OutputDataConfig.stub(stub[:output_data_config]) unless stub[:output_data_config].nil?
        data['DataAccessRoleArn'] = stub[:data_access_role_arn] unless stub[:data_access_role_arn].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Union Stubber for OutputDataConfig
    class OutputDataConfig
      def self.default(visited=[])
        return nil if visited.include?('OutputDataConfig')
        visited = visited + ['OutputDataConfig']
        {
          s3_configuration: Stubs::S3Configuration.default(visited),
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::OutputDataConfig::S3Configuration
          data['S3Configuration'] = (Stubs::S3Configuration.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::OutputDataConfig"
        end

        data
      end
    end

    # Structure Stubber for S3Configuration
    class S3Configuration
      def self.default(visited=[])
        return nil if visited.include?('S3Configuration')
        visited = visited + ['S3Configuration']
        {
          s3_uri: 's3_uri',
          kms_key_id: 'kms_key_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3Configuration.new
        data = {}
        data['S3Uri'] = stub[:s3_uri] unless stub[:s3_uri].nil?
        data['KmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data
      end
    end

    # Operation Stubber for DescribeFHIRImportJob
    class DescribeFHIRImportJob
      def self.default(visited=[])
        {
          import_job_properties: Stubs::ImportJobProperties.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ImportJobProperties'] = Stubs::ImportJobProperties.stub(stub[:import_job_properties]) unless stub[:import_job_properties].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ImportJobProperties
    class ImportJobProperties
      def self.default(visited=[])
        return nil if visited.include?('ImportJobProperties')
        visited = visited + ['ImportJobProperties']
        {
          job_id: 'job_id',
          job_name: 'job_name',
          job_status: 'job_status',
          submit_time: Time.now,
          end_time: Time.now,
          datastore_id: 'datastore_id',
          input_data_config: Stubs::InputDataConfig.default(visited),
          job_output_data_config: Stubs::OutputDataConfig.default(visited),
          data_access_role_arn: 'data_access_role_arn',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::ImportJobProperties.new
        data = {}
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['JobName'] = stub[:job_name] unless stub[:job_name].nil?
        data['JobStatus'] = stub[:job_status] unless stub[:job_status].nil?
        data['SubmitTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:submit_time]).to_i unless stub[:submit_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data['DatastoreId'] = stub[:datastore_id] unless stub[:datastore_id].nil?
        data['InputDataConfig'] = Stubs::InputDataConfig.stub(stub[:input_data_config]) unless stub[:input_data_config].nil?
        data['JobOutputDataConfig'] = Stubs::OutputDataConfig.stub(stub[:job_output_data_config]) unless stub[:job_output_data_config].nil?
        data['DataAccessRoleArn'] = stub[:data_access_role_arn] unless stub[:data_access_role_arn].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Union Stubber for InputDataConfig
    class InputDataConfig
      def self.default(visited=[])
        return nil if visited.include?('InputDataConfig')
        visited = visited + ['InputDataConfig']
        {
          s3_uri: 's3_uri',
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::InputDataConfig::S3Uri
          data['S3Uri'] = stub.__getobj__
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::InputDataConfig"
        end

        data
      end
    end

    # Operation Stubber for ListFHIRDatastores
    class ListFHIRDatastores
      def self.default(visited=[])
        {
          datastore_properties_list: Stubs::DatastorePropertiesList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DatastorePropertiesList'] = Stubs::DatastorePropertiesList.stub(stub[:datastore_properties_list]) unless stub[:datastore_properties_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DatastorePropertiesList
    class DatastorePropertiesList
      def self.default(visited=[])
        return nil if visited.include?('DatastorePropertiesList')
        visited = visited + ['DatastorePropertiesList']
        [
          Stubs::DatastoreProperties.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DatastoreProperties.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListFHIRExportJobs
    class ListFHIRExportJobs
      def self.default(visited=[])
        {
          export_job_properties_list: Stubs::ExportJobPropertiesList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ExportJobPropertiesList'] = Stubs::ExportJobPropertiesList.stub(stub[:export_job_properties_list]) unless stub[:export_job_properties_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ExportJobPropertiesList
    class ExportJobPropertiesList
      def self.default(visited=[])
        return nil if visited.include?('ExportJobPropertiesList')
        visited = visited + ['ExportJobPropertiesList']
        [
          Stubs::ExportJobProperties.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ExportJobProperties.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListFHIRImportJobs
    class ListFHIRImportJobs
      def self.default(visited=[])
        {
          import_job_properties_list: Stubs::ImportJobPropertiesList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ImportJobPropertiesList'] = Stubs::ImportJobPropertiesList.stub(stub[:import_job_properties_list]) unless stub[:import_job_properties_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ImportJobPropertiesList
    class ImportJobPropertiesList
      def self.default(visited=[])
        return nil if visited.include?('ImportJobPropertiesList')
        visited = visited + ['ImportJobPropertiesList']
        [
          Stubs::ImportJobProperties.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ImportJobProperties.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: Stubs::TagList.default(visited),
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
          Stubs::Tag.default(visited)
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

    # Operation Stubber for StartFHIRExportJob
    class StartFHIRExportJob
      def self.default(visited=[])
        {
          job_id: 'job_id',
          job_status: 'job_status',
          datastore_id: 'datastore_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['JobStatus'] = stub[:job_status] unless stub[:job_status].nil?
        data['DatastoreId'] = stub[:datastore_id] unless stub[:datastore_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartFHIRImportJob
    class StartFHIRImportJob
      def self.default(visited=[])
        {
          job_id: 'job_id',
          job_status: 'job_status',
          datastore_id: 'datastore_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['JobStatus'] = stub[:job_status] unless stub[:job_status].nil?
        data['DatastoreId'] = stub[:datastore_id] unless stub[:datastore_id].nil?
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
  end
end
