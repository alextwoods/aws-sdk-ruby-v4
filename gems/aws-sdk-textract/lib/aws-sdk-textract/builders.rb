# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'
require 'stringio'

module AWS::SDK::Textract
  module Builders

    # Operation Builder for AnalyzeDocument
    class AnalyzeDocument
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Textract.AnalyzeDocument'
        data = {}
        data['Document'] = Document.build(input[:document]) unless input[:document].nil?
        data['FeatureTypes'] = FeatureTypes.build(input[:feature_types]) unless input[:feature_types].nil?
        data['HumanLoopConfig'] = HumanLoopConfig.build(input[:human_loop_config]) unless input[:human_loop_config].nil?
        data['QueriesConfig'] = QueriesConfig.build(input[:queries_config]) unless input[:queries_config].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for QueriesConfig
    class QueriesConfig
      def self.build(input)
        data = {}
        data['Queries'] = Queries.build(input[:queries]) unless input[:queries].nil?
        data
      end
    end

    # List Builder for Queries
    class Queries
      def self.build(input)
        data = []
        input.each do |element|
          data << Query.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Query
    class Query
      def self.build(input)
        data = {}
        data['Text'] = input[:text] unless input[:text].nil?
        data['Alias'] = input[:alias] unless input[:alias].nil?
        data['Pages'] = QueryPages.build(input[:pages]) unless input[:pages].nil?
        data
      end
    end

    # List Builder for QueryPages
    class QueryPages
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for HumanLoopConfig
    class HumanLoopConfig
      def self.build(input)
        data = {}
        data['HumanLoopName'] = input[:human_loop_name] unless input[:human_loop_name].nil?
        data['FlowDefinitionArn'] = input[:flow_definition_arn] unless input[:flow_definition_arn].nil?
        data['DataAttributes'] = HumanLoopDataAttributes.build(input[:data_attributes]) unless input[:data_attributes].nil?
        data
      end
    end

    # Structure Builder for HumanLoopDataAttributes
    class HumanLoopDataAttributes
      def self.build(input)
        data = {}
        data['ContentClassifiers'] = ContentClassifiers.build(input[:content_classifiers]) unless input[:content_classifiers].nil?
        data
      end
    end

    # List Builder for ContentClassifiers
    class ContentClassifiers
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for FeatureTypes
    class FeatureTypes
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Document
    class Document
      def self.build(input)
        data = {}
        data['Bytes'] = ::Base64::encode64(input[:bytes]).strip unless input[:bytes].nil?
        data['S3Object'] = S3Object.build(input[:s3_object]) unless input[:s3_object].nil?
        data
      end
    end

    # Structure Builder for S3Object
    class S3Object
      def self.build(input)
        data = {}
        data['Bucket'] = input[:bucket] unless input[:bucket].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Version'] = input[:version] unless input[:version].nil?
        data
      end
    end

    # Operation Builder for AnalyzeExpense
    class AnalyzeExpense
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Textract.AnalyzeExpense'
        data = {}
        data['Document'] = Document.build(input[:document]) unless input[:document].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AnalyzeID
    class AnalyzeID
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Textract.AnalyzeID'
        data = {}
        data['DocumentPages'] = DocumentPages.build(input[:document_pages]) unless input[:document_pages].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for DocumentPages
    class DocumentPages
      def self.build(input)
        data = []
        input.each do |element|
          data << Document.build(element) unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DetectDocumentText
    class DetectDocumentText
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Textract.DetectDocumentText'
        data = {}
        data['Document'] = Document.build(input[:document]) unless input[:document].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetDocumentAnalysis
    class GetDocumentAnalysis
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Textract.GetDocumentAnalysis'
        data = {}
        data['JobId'] = input[:job_id] unless input[:job_id].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetDocumentTextDetection
    class GetDocumentTextDetection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Textract.GetDocumentTextDetection'
        data = {}
        data['JobId'] = input[:job_id] unless input[:job_id].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetExpenseAnalysis
    class GetExpenseAnalysis
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Textract.GetExpenseAnalysis'
        data = {}
        data['JobId'] = input[:job_id] unless input[:job_id].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartDocumentAnalysis
    class StartDocumentAnalysis
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Textract.StartDocumentAnalysis'
        data = {}
        data['DocumentLocation'] = DocumentLocation.build(input[:document_location]) unless input[:document_location].nil?
        data['FeatureTypes'] = FeatureTypes.build(input[:feature_types]) unless input[:feature_types].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['JobTag'] = input[:job_tag] unless input[:job_tag].nil?
        data['NotificationChannel'] = NotificationChannel.build(input[:notification_channel]) unless input[:notification_channel].nil?
        data['OutputConfig'] = OutputConfig.build(input[:output_config]) unless input[:output_config].nil?
        data['KMSKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data['QueriesConfig'] = QueriesConfig.build(input[:queries_config]) unless input[:queries_config].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for OutputConfig
    class OutputConfig
      def self.build(input)
        data = {}
        data['S3Bucket'] = input[:s3_bucket] unless input[:s3_bucket].nil?
        data['S3Prefix'] = input[:s3_prefix] unless input[:s3_prefix].nil?
        data
      end
    end

    # Structure Builder for NotificationChannel
    class NotificationChannel
      def self.build(input)
        data = {}
        data['SNSTopicArn'] = input[:sns_topic_arn] unless input[:sns_topic_arn].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data
      end
    end

    # Structure Builder for DocumentLocation
    class DocumentLocation
      def self.build(input)
        data = {}
        data['S3Object'] = S3Object.build(input[:s3_object]) unless input[:s3_object].nil?
        data
      end
    end

    # Operation Builder for StartDocumentTextDetection
    class StartDocumentTextDetection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Textract.StartDocumentTextDetection'
        data = {}
        data['DocumentLocation'] = DocumentLocation.build(input[:document_location]) unless input[:document_location].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['JobTag'] = input[:job_tag] unless input[:job_tag].nil?
        data['NotificationChannel'] = NotificationChannel.build(input[:notification_channel]) unless input[:notification_channel].nil?
        data['OutputConfig'] = OutputConfig.build(input[:output_config]) unless input[:output_config].nil?
        data['KMSKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartExpenseAnalysis
    class StartExpenseAnalysis
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Textract.StartExpenseAnalysis'
        data = {}
        data['DocumentLocation'] = DocumentLocation.build(input[:document_location]) unless input[:document_location].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['JobTag'] = input[:job_tag] unless input[:job_tag].nil?
        data['NotificationChannel'] = NotificationChannel.build(input[:notification_channel]) unless input[:notification_channel].nil?
        data['OutputConfig'] = OutputConfig.build(input[:output_config]) unless input[:output_config].nil?
        data['KMSKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
