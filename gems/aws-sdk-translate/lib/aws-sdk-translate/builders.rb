# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::Translate
  module Builders

    # Operation Builder for CreateParallelData
    class CreateParallelData
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSShineFrontendService_20170701.CreateParallelData'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['ParallelDataConfig'] = Builders::ParallelDataConfig.build(input[:parallel_data_config]) unless input[:parallel_data_config].nil?
        data['EncryptionKey'] = Builders::EncryptionKey.build(input[:encryption_key]) unless input[:encryption_key].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for EncryptionKey
    class EncryptionKey
      def self.build(input)
        data = {}
        data['Type'] = input[:type] unless input[:type].nil?
        data['Id'] = input[:id] unless input[:id].nil?
        data
      end
    end

    # Structure Builder for ParallelDataConfig
    class ParallelDataConfig
      def self.build(input)
        data = {}
        data['S3Uri'] = input[:s3_uri] unless input[:s3_uri].nil?
        data['Format'] = input[:format] unless input[:format].nil?
        data
      end
    end

    # Operation Builder for DeleteParallelData
    class DeleteParallelData
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSShineFrontendService_20170701.DeleteParallelData'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteTerminology
    class DeleteTerminology
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSShineFrontendService_20170701.DeleteTerminology'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeTextTranslationJob
    class DescribeTextTranslationJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSShineFrontendService_20170701.DescribeTextTranslationJob'
        data = {}
        data['JobId'] = input[:job_id] unless input[:job_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetParallelData
    class GetParallelData
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSShineFrontendService_20170701.GetParallelData'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetTerminology
    class GetTerminology
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSShineFrontendService_20170701.GetTerminology'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['TerminologyDataFormat'] = input[:terminology_data_format] unless input[:terminology_data_format].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ImportTerminology
    class ImportTerminology
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSShineFrontendService_20170701.ImportTerminology'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['MergeStrategy'] = input[:merge_strategy] unless input[:merge_strategy].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['TerminologyData'] = Builders::TerminologyData.build(input[:terminology_data]) unless input[:terminology_data].nil?
        data['EncryptionKey'] = Builders::EncryptionKey.build(input[:encryption_key]) unless input[:encryption_key].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for TerminologyData
    class TerminologyData
      def self.build(input)
        data = {}
        data['File'] = Base64::encode64(input[:file]).strip unless input[:file].nil?
        data['Format'] = input[:format] unless input[:format].nil?
        data['Directionality'] = input[:directionality] unless input[:directionality].nil?
        data
      end
    end

    # Operation Builder for ListParallelData
    class ListParallelData
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSShineFrontendService_20170701.ListParallelData'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTerminologies
    class ListTerminologies
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSShineFrontendService_20170701.ListTerminologies'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTextTranslationJobs
    class ListTextTranslationJobs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSShineFrontendService_20170701.ListTextTranslationJobs'
        data = {}
        data['Filter'] = Builders::TextTranslationJobFilter.build(input[:filter]) unless input[:filter].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for TextTranslationJobFilter
    class TextTranslationJobFilter
      def self.build(input)
        data = {}
        data['JobName'] = input[:job_name] unless input[:job_name].nil?
        data['JobStatus'] = input[:job_status] unless input[:job_status].nil?
        data['SubmittedBeforeTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:submitted_before_time]).to_i unless input[:submitted_before_time].nil?
        data['SubmittedAfterTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:submitted_after_time]).to_i unless input[:submitted_after_time].nil?
        data
      end
    end

    # Operation Builder for StartTextTranslationJob
    class StartTextTranslationJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSShineFrontendService_20170701.StartTextTranslationJob'
        data = {}
        data['JobName'] = input[:job_name] unless input[:job_name].nil?
        data['InputDataConfig'] = Builders::InputDataConfig.build(input[:input_data_config]) unless input[:input_data_config].nil?
        data['OutputDataConfig'] = Builders::OutputDataConfig.build(input[:output_data_config]) unless input[:output_data_config].nil?
        data['DataAccessRoleArn'] = input[:data_access_role_arn] unless input[:data_access_role_arn].nil?
        data['SourceLanguageCode'] = input[:source_language_code] unless input[:source_language_code].nil?
        data['TargetLanguageCodes'] = Builders::TargetLanguageCodeStringList.build(input[:target_language_codes]) unless input[:target_language_codes].nil?
        data['TerminologyNames'] = Builders::ResourceNameList.build(input[:terminology_names]) unless input[:terminology_names].nil?
        data['ParallelDataNames'] = Builders::ResourceNameList.build(input[:parallel_data_names]) unless input[:parallel_data_names].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        data['Settings'] = Builders::TranslationSettings.build(input[:settings]) unless input[:settings].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for TranslationSettings
    class TranslationSettings
      def self.build(input)
        data = {}
        data['Formality'] = input[:formality] unless input[:formality].nil?
        data['Profanity'] = input[:profanity] unless input[:profanity].nil?
        data
      end
    end

    # List Builder for ResourceNameList
    class ResourceNameList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for TargetLanguageCodeStringList
    class TargetLanguageCodeStringList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for OutputDataConfig
    class OutputDataConfig
      def self.build(input)
        data = {}
        data['S3Uri'] = input[:s3_uri] unless input[:s3_uri].nil?
        data['EncryptionKey'] = Builders::EncryptionKey.build(input[:encryption_key]) unless input[:encryption_key].nil?
        data
      end
    end

    # Structure Builder for InputDataConfig
    class InputDataConfig
      def self.build(input)
        data = {}
        data['S3Uri'] = input[:s3_uri] unless input[:s3_uri].nil?
        data['ContentType'] = input[:content_type] unless input[:content_type].nil?
        data
      end
    end

    # Operation Builder for StopTextTranslationJob
    class StopTextTranslationJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSShineFrontendService_20170701.StopTextTranslationJob'
        data = {}
        data['JobId'] = input[:job_id] unless input[:job_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TranslateText
    class TranslateText
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSShineFrontendService_20170701.TranslateText'
        data = {}
        data['Text'] = input[:text] unless input[:text].nil?
        data['TerminologyNames'] = Builders::ResourceNameList.build(input[:terminology_names]) unless input[:terminology_names].nil?
        data['SourceLanguageCode'] = input[:source_language_code] unless input[:source_language_code].nil?
        data['TargetLanguageCode'] = input[:target_language_code] unless input[:target_language_code].nil?
        data['Settings'] = Builders::TranslationSettings.build(input[:settings]) unless input[:settings].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateParallelData
    class UpdateParallelData
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSShineFrontendService_20170701.UpdateParallelData'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['ParallelDataConfig'] = Builders::ParallelDataConfig.build(input[:parallel_data_config]) unless input[:parallel_data_config].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
