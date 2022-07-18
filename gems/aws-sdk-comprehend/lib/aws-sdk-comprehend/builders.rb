# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Comprehend
  module Builders

    # Operation Builder for BatchDetectDominantLanguage
    class BatchDetectDominantLanguage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Comprehend_20171127.BatchDetectDominantLanguage'
        data = {}
        data['TextList'] = Builders::CustomerInputStringList.build(input[:text_list]) unless input[:text_list].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for CustomerInputStringList
    class CustomerInputStringList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for BatchDetectEntities
    class BatchDetectEntities
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Comprehend_20171127.BatchDetectEntities'
        data = {}
        data['TextList'] = Builders::CustomerInputStringList.build(input[:text_list]) unless input[:text_list].nil?
        data['LanguageCode'] = input[:language_code] unless input[:language_code].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for BatchDetectKeyPhrases
    class BatchDetectKeyPhrases
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Comprehend_20171127.BatchDetectKeyPhrases'
        data = {}
        data['TextList'] = Builders::CustomerInputStringList.build(input[:text_list]) unless input[:text_list].nil?
        data['LanguageCode'] = input[:language_code] unless input[:language_code].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for BatchDetectSentiment
    class BatchDetectSentiment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Comprehend_20171127.BatchDetectSentiment'
        data = {}
        data['TextList'] = Builders::CustomerInputStringList.build(input[:text_list]) unless input[:text_list].nil?
        data['LanguageCode'] = input[:language_code] unless input[:language_code].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for BatchDetectSyntax
    class BatchDetectSyntax
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Comprehend_20171127.BatchDetectSyntax'
        data = {}
        data['TextList'] = Builders::CustomerInputStringList.build(input[:text_list]) unless input[:text_list].nil?
        data['LanguageCode'] = input[:language_code] unless input[:language_code].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ClassifyDocument
    class ClassifyDocument
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Comprehend_20171127.ClassifyDocument'
        data = {}
        data['Text'] = input[:text] unless input[:text].nil?
        data['EndpointArn'] = input[:endpoint_arn] unless input[:endpoint_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ContainsPiiEntities
    class ContainsPiiEntities
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Comprehend_20171127.ContainsPiiEntities'
        data = {}
        data['Text'] = input[:text] unless input[:text].nil?
        data['LanguageCode'] = input[:language_code] unless input[:language_code].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateDocumentClassifier
    class CreateDocumentClassifier
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Comprehend_20171127.CreateDocumentClassifier'
        data = {}
        data['DocumentClassifierName'] = input[:document_classifier_name] unless input[:document_classifier_name].nil?
        data['VersionName'] = input[:version_name] unless input[:version_name].nil?
        data['DataAccessRoleArn'] = input[:data_access_role_arn] unless input[:data_access_role_arn].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['InputDataConfig'] = Builders::DocumentClassifierInputDataConfig.build(input[:input_data_config]) unless input[:input_data_config].nil?
        data['OutputDataConfig'] = Builders::DocumentClassifierOutputDataConfig.build(input[:output_data_config]) unless input[:output_data_config].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['LanguageCode'] = input[:language_code] unless input[:language_code].nil?
        data['VolumeKmsKeyId'] = input[:volume_kms_key_id] unless input[:volume_kms_key_id].nil?
        data['VpcConfig'] = Builders::VpcConfig.build(input[:vpc_config]) unless input[:vpc_config].nil?
        data['Mode'] = input[:mode] unless input[:mode].nil?
        data['ModelKmsKeyId'] = input[:model_kms_key_id] unless input[:model_kms_key_id].nil?
        data['ModelPolicy'] = input[:model_policy] unless input[:model_policy].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for VpcConfig
    class VpcConfig
      def self.build(input)
        data = {}
        data['SecurityGroupIds'] = Builders::SecurityGroupIds.build(input[:security_group_ids]) unless input[:security_group_ids].nil?
        data['Subnets'] = Builders::Subnets.build(input[:subnets]) unless input[:subnets].nil?
        data
      end
    end

    # List Builder for Subnets
    class Subnets
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for SecurityGroupIds
    class SecurityGroupIds
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DocumentClassifierOutputDataConfig
    class DocumentClassifierOutputDataConfig
      def self.build(input)
        data = {}
        data['S3Uri'] = input[:s3_uri] unless input[:s3_uri].nil?
        data['KmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data
      end
    end

    # Structure Builder for DocumentClassifierInputDataConfig
    class DocumentClassifierInputDataConfig
      def self.build(input)
        data = {}
        data['DataFormat'] = input[:data_format] unless input[:data_format].nil?
        data['S3Uri'] = input[:s3_uri] unless input[:s3_uri].nil?
        data['TestS3Uri'] = input[:test_s3_uri] unless input[:test_s3_uri].nil?
        data['LabelDelimiter'] = input[:label_delimiter] unless input[:label_delimiter].nil?
        data['AugmentedManifests'] = Builders::DocumentClassifierAugmentedManifestsList.build(input[:augmented_manifests]) unless input[:augmented_manifests].nil?
        data
      end
    end

    # List Builder for DocumentClassifierAugmentedManifestsList
    class DocumentClassifierAugmentedManifestsList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AugmentedManifestsListItem.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AugmentedManifestsListItem
    class AugmentedManifestsListItem
      def self.build(input)
        data = {}
        data['S3Uri'] = input[:s3_uri] unless input[:s3_uri].nil?
        data['Split'] = input[:split] unless input[:split].nil?
        data['AttributeNames'] = Builders::AttributeNamesList.build(input[:attribute_names]) unless input[:attribute_names].nil?
        data['AnnotationDataS3Uri'] = input[:annotation_data_s3_uri] unless input[:annotation_data_s3_uri].nil?
        data['SourceDocumentsS3Uri'] = input[:source_documents_s3_uri] unless input[:source_documents_s3_uri].nil?
        data['DocumentType'] = input[:document_type] unless input[:document_type].nil?
        data
      end
    end

    # List Builder for AttributeNamesList
    class AttributeNamesList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
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

    # Operation Builder for CreateEndpoint
    class CreateEndpoint
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Comprehend_20171127.CreateEndpoint'
        data = {}
        data['EndpointName'] = input[:endpoint_name] unless input[:endpoint_name].nil?
        data['ModelArn'] = input[:model_arn] unless input[:model_arn].nil?
        data['DesiredInferenceUnits'] = input[:desired_inference_units] unless input[:desired_inference_units].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['DataAccessRoleArn'] = input[:data_access_role_arn] unless input[:data_access_role_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateEntityRecognizer
    class CreateEntityRecognizer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Comprehend_20171127.CreateEntityRecognizer'
        data = {}
        data['RecognizerName'] = input[:recognizer_name] unless input[:recognizer_name].nil?
        data['VersionName'] = input[:version_name] unless input[:version_name].nil?
        data['DataAccessRoleArn'] = input[:data_access_role_arn] unless input[:data_access_role_arn].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['InputDataConfig'] = Builders::EntityRecognizerInputDataConfig.build(input[:input_data_config]) unless input[:input_data_config].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['LanguageCode'] = input[:language_code] unless input[:language_code].nil?
        data['VolumeKmsKeyId'] = input[:volume_kms_key_id] unless input[:volume_kms_key_id].nil?
        data['VpcConfig'] = Builders::VpcConfig.build(input[:vpc_config]) unless input[:vpc_config].nil?
        data['ModelKmsKeyId'] = input[:model_kms_key_id] unless input[:model_kms_key_id].nil?
        data['ModelPolicy'] = input[:model_policy] unless input[:model_policy].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for EntityRecognizerInputDataConfig
    class EntityRecognizerInputDataConfig
      def self.build(input)
        data = {}
        data['DataFormat'] = input[:data_format] unless input[:data_format].nil?
        data['EntityTypes'] = Builders::EntityTypesList.build(input[:entity_types]) unless input[:entity_types].nil?
        data['Documents'] = Builders::EntityRecognizerDocuments.build(input[:documents]) unless input[:documents].nil?
        data['Annotations'] = Builders::EntityRecognizerAnnotations.build(input[:annotations]) unless input[:annotations].nil?
        data['EntityList'] = Builders::EntityRecognizerEntityList.build(input[:entity_list]) unless input[:entity_list].nil?
        data['AugmentedManifests'] = Builders::EntityRecognizerAugmentedManifestsList.build(input[:augmented_manifests]) unless input[:augmented_manifests].nil?
        data
      end
    end

    # List Builder for EntityRecognizerAugmentedManifestsList
    class EntityRecognizerAugmentedManifestsList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AugmentedManifestsListItem.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for EntityRecognizerEntityList
    class EntityRecognizerEntityList
      def self.build(input)
        data = {}
        data['S3Uri'] = input[:s3_uri] unless input[:s3_uri].nil?
        data
      end
    end

    # Structure Builder for EntityRecognizerAnnotations
    class EntityRecognizerAnnotations
      def self.build(input)
        data = {}
        data['S3Uri'] = input[:s3_uri] unless input[:s3_uri].nil?
        data['TestS3Uri'] = input[:test_s3_uri] unless input[:test_s3_uri].nil?
        data
      end
    end

    # Structure Builder for EntityRecognizerDocuments
    class EntityRecognizerDocuments
      def self.build(input)
        data = {}
        data['S3Uri'] = input[:s3_uri] unless input[:s3_uri].nil?
        data['TestS3Uri'] = input[:test_s3_uri] unless input[:test_s3_uri].nil?
        data['InputFormat'] = input[:input_format] unless input[:input_format].nil?
        data
      end
    end

    # List Builder for EntityTypesList
    class EntityTypesList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::EntityTypesListItem.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for EntityTypesListItem
    class EntityTypesListItem
      def self.build(input)
        data = {}
        data['Type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # Operation Builder for DeleteDocumentClassifier
    class DeleteDocumentClassifier
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Comprehend_20171127.DeleteDocumentClassifier'
        data = {}
        data['DocumentClassifierArn'] = input[:document_classifier_arn] unless input[:document_classifier_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteEndpoint
    class DeleteEndpoint
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Comprehend_20171127.DeleteEndpoint'
        data = {}
        data['EndpointArn'] = input[:endpoint_arn] unless input[:endpoint_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteEntityRecognizer
    class DeleteEntityRecognizer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Comprehend_20171127.DeleteEntityRecognizer'
        data = {}
        data['EntityRecognizerArn'] = input[:entity_recognizer_arn] unless input[:entity_recognizer_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteResourcePolicy
    class DeleteResourcePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Comprehend_20171127.DeleteResourcePolicy'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['PolicyRevisionId'] = input[:policy_revision_id] unless input[:policy_revision_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeDocumentClassificationJob
    class DescribeDocumentClassificationJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Comprehend_20171127.DescribeDocumentClassificationJob'
        data = {}
        data['JobId'] = input[:job_id] unless input[:job_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeDocumentClassifier
    class DescribeDocumentClassifier
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Comprehend_20171127.DescribeDocumentClassifier'
        data = {}
        data['DocumentClassifierArn'] = input[:document_classifier_arn] unless input[:document_classifier_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeDominantLanguageDetectionJob
    class DescribeDominantLanguageDetectionJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Comprehend_20171127.DescribeDominantLanguageDetectionJob'
        data = {}
        data['JobId'] = input[:job_id] unless input[:job_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeEndpoint
    class DescribeEndpoint
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Comprehend_20171127.DescribeEndpoint'
        data = {}
        data['EndpointArn'] = input[:endpoint_arn] unless input[:endpoint_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeEntitiesDetectionJob
    class DescribeEntitiesDetectionJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Comprehend_20171127.DescribeEntitiesDetectionJob'
        data = {}
        data['JobId'] = input[:job_id] unless input[:job_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeEntityRecognizer
    class DescribeEntityRecognizer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Comprehend_20171127.DescribeEntityRecognizer'
        data = {}
        data['EntityRecognizerArn'] = input[:entity_recognizer_arn] unless input[:entity_recognizer_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeEventsDetectionJob
    class DescribeEventsDetectionJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Comprehend_20171127.DescribeEventsDetectionJob'
        data = {}
        data['JobId'] = input[:job_id] unless input[:job_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeKeyPhrasesDetectionJob
    class DescribeKeyPhrasesDetectionJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Comprehend_20171127.DescribeKeyPhrasesDetectionJob'
        data = {}
        data['JobId'] = input[:job_id] unless input[:job_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribePiiEntitiesDetectionJob
    class DescribePiiEntitiesDetectionJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Comprehend_20171127.DescribePiiEntitiesDetectionJob'
        data = {}
        data['JobId'] = input[:job_id] unless input[:job_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeResourcePolicy
    class DescribeResourcePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Comprehend_20171127.DescribeResourcePolicy'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeSentimentDetectionJob
    class DescribeSentimentDetectionJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Comprehend_20171127.DescribeSentimentDetectionJob'
        data = {}
        data['JobId'] = input[:job_id] unless input[:job_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeTargetedSentimentDetectionJob
    class DescribeTargetedSentimentDetectionJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Comprehend_20171127.DescribeTargetedSentimentDetectionJob'
        data = {}
        data['JobId'] = input[:job_id] unless input[:job_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeTopicsDetectionJob
    class DescribeTopicsDetectionJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Comprehend_20171127.DescribeTopicsDetectionJob'
        data = {}
        data['JobId'] = input[:job_id] unless input[:job_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DetectDominantLanguage
    class DetectDominantLanguage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Comprehend_20171127.DetectDominantLanguage'
        data = {}
        data['Text'] = input[:text] unless input[:text].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DetectEntities
    class DetectEntities
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Comprehend_20171127.DetectEntities'
        data = {}
        data['Text'] = input[:text] unless input[:text].nil?
        data['LanguageCode'] = input[:language_code] unless input[:language_code].nil?
        data['EndpointArn'] = input[:endpoint_arn] unless input[:endpoint_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DetectKeyPhrases
    class DetectKeyPhrases
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Comprehend_20171127.DetectKeyPhrases'
        data = {}
        data['Text'] = input[:text] unless input[:text].nil?
        data['LanguageCode'] = input[:language_code] unless input[:language_code].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DetectPiiEntities
    class DetectPiiEntities
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Comprehend_20171127.DetectPiiEntities'
        data = {}
        data['Text'] = input[:text] unless input[:text].nil?
        data['LanguageCode'] = input[:language_code] unless input[:language_code].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DetectSentiment
    class DetectSentiment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Comprehend_20171127.DetectSentiment'
        data = {}
        data['Text'] = input[:text] unless input[:text].nil?
        data['LanguageCode'] = input[:language_code] unless input[:language_code].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DetectSyntax
    class DetectSyntax
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Comprehend_20171127.DetectSyntax'
        data = {}
        data['Text'] = input[:text] unless input[:text].nil?
        data['LanguageCode'] = input[:language_code] unless input[:language_code].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ImportModel
    class ImportModel
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Comprehend_20171127.ImportModel'
        data = {}
        data['SourceModelArn'] = input[:source_model_arn] unless input[:source_model_arn].nil?
        data['ModelName'] = input[:model_name] unless input[:model_name].nil?
        data['VersionName'] = input[:version_name] unless input[:version_name].nil?
        data['ModelKmsKeyId'] = input[:model_kms_key_id] unless input[:model_kms_key_id].nil?
        data['DataAccessRoleArn'] = input[:data_access_role_arn] unless input[:data_access_role_arn].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListDocumentClassificationJobs
    class ListDocumentClassificationJobs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Comprehend_20171127.ListDocumentClassificationJobs'
        data = {}
        data['Filter'] = Builders::DocumentClassificationJobFilter.build(input[:filter]) unless input[:filter].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for DocumentClassificationJobFilter
    class DocumentClassificationJobFilter
      def self.build(input)
        data = {}
        data['JobName'] = input[:job_name] unless input[:job_name].nil?
        data['JobStatus'] = input[:job_status] unless input[:job_status].nil?
        data['SubmitTimeBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:submit_time_before]).to_i unless input[:submit_time_before].nil?
        data['SubmitTimeAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:submit_time_after]).to_i unless input[:submit_time_after].nil?
        data
      end
    end

    # Operation Builder for ListDocumentClassifierSummaries
    class ListDocumentClassifierSummaries
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Comprehend_20171127.ListDocumentClassifierSummaries'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListDocumentClassifiers
    class ListDocumentClassifiers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Comprehend_20171127.ListDocumentClassifiers'
        data = {}
        data['Filter'] = Builders::DocumentClassifierFilter.build(input[:filter]) unless input[:filter].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for DocumentClassifierFilter
    class DocumentClassifierFilter
      def self.build(input)
        data = {}
        data['Status'] = input[:status] unless input[:status].nil?
        data['DocumentClassifierName'] = input[:document_classifier_name] unless input[:document_classifier_name].nil?
        data['SubmitTimeBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:submit_time_before]).to_i unless input[:submit_time_before].nil?
        data['SubmitTimeAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:submit_time_after]).to_i unless input[:submit_time_after].nil?
        data
      end
    end

    # Operation Builder for ListDominantLanguageDetectionJobs
    class ListDominantLanguageDetectionJobs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Comprehend_20171127.ListDominantLanguageDetectionJobs'
        data = {}
        data['Filter'] = Builders::DominantLanguageDetectionJobFilter.build(input[:filter]) unless input[:filter].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for DominantLanguageDetectionJobFilter
    class DominantLanguageDetectionJobFilter
      def self.build(input)
        data = {}
        data['JobName'] = input[:job_name] unless input[:job_name].nil?
        data['JobStatus'] = input[:job_status] unless input[:job_status].nil?
        data['SubmitTimeBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:submit_time_before]).to_i unless input[:submit_time_before].nil?
        data['SubmitTimeAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:submit_time_after]).to_i unless input[:submit_time_after].nil?
        data
      end
    end

    # Operation Builder for ListEndpoints
    class ListEndpoints
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Comprehend_20171127.ListEndpoints'
        data = {}
        data['Filter'] = Builders::EndpointFilter.build(input[:filter]) unless input[:filter].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for EndpointFilter
    class EndpointFilter
      def self.build(input)
        data = {}
        data['ModelArn'] = input[:model_arn] unless input[:model_arn].nil?
        data['Status'] = input[:status] unless input[:status].nil?
        data['CreationTimeBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:creation_time_before]).to_i unless input[:creation_time_before].nil?
        data['CreationTimeAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:creation_time_after]).to_i unless input[:creation_time_after].nil?
        data
      end
    end

    # Operation Builder for ListEntitiesDetectionJobs
    class ListEntitiesDetectionJobs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Comprehend_20171127.ListEntitiesDetectionJobs'
        data = {}
        data['Filter'] = Builders::EntitiesDetectionJobFilter.build(input[:filter]) unless input[:filter].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for EntitiesDetectionJobFilter
    class EntitiesDetectionJobFilter
      def self.build(input)
        data = {}
        data['JobName'] = input[:job_name] unless input[:job_name].nil?
        data['JobStatus'] = input[:job_status] unless input[:job_status].nil?
        data['SubmitTimeBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:submit_time_before]).to_i unless input[:submit_time_before].nil?
        data['SubmitTimeAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:submit_time_after]).to_i unless input[:submit_time_after].nil?
        data
      end
    end

    # Operation Builder for ListEntityRecognizerSummaries
    class ListEntityRecognizerSummaries
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Comprehend_20171127.ListEntityRecognizerSummaries'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListEntityRecognizers
    class ListEntityRecognizers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Comprehend_20171127.ListEntityRecognizers'
        data = {}
        data['Filter'] = Builders::EntityRecognizerFilter.build(input[:filter]) unless input[:filter].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for EntityRecognizerFilter
    class EntityRecognizerFilter
      def self.build(input)
        data = {}
        data['Status'] = input[:status] unless input[:status].nil?
        data['RecognizerName'] = input[:recognizer_name] unless input[:recognizer_name].nil?
        data['SubmitTimeBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:submit_time_before]).to_i unless input[:submit_time_before].nil?
        data['SubmitTimeAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:submit_time_after]).to_i unless input[:submit_time_after].nil?
        data
      end
    end

    # Operation Builder for ListEventsDetectionJobs
    class ListEventsDetectionJobs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Comprehend_20171127.ListEventsDetectionJobs'
        data = {}
        data['Filter'] = Builders::EventsDetectionJobFilter.build(input[:filter]) unless input[:filter].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for EventsDetectionJobFilter
    class EventsDetectionJobFilter
      def self.build(input)
        data = {}
        data['JobName'] = input[:job_name] unless input[:job_name].nil?
        data['JobStatus'] = input[:job_status] unless input[:job_status].nil?
        data['SubmitTimeBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:submit_time_before]).to_i unless input[:submit_time_before].nil?
        data['SubmitTimeAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:submit_time_after]).to_i unless input[:submit_time_after].nil?
        data
      end
    end

    # Operation Builder for ListKeyPhrasesDetectionJobs
    class ListKeyPhrasesDetectionJobs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Comprehend_20171127.ListKeyPhrasesDetectionJobs'
        data = {}
        data['Filter'] = Builders::KeyPhrasesDetectionJobFilter.build(input[:filter]) unless input[:filter].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for KeyPhrasesDetectionJobFilter
    class KeyPhrasesDetectionJobFilter
      def self.build(input)
        data = {}
        data['JobName'] = input[:job_name] unless input[:job_name].nil?
        data['JobStatus'] = input[:job_status] unless input[:job_status].nil?
        data['SubmitTimeBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:submit_time_before]).to_i unless input[:submit_time_before].nil?
        data['SubmitTimeAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:submit_time_after]).to_i unless input[:submit_time_after].nil?
        data
      end
    end

    # Operation Builder for ListPiiEntitiesDetectionJobs
    class ListPiiEntitiesDetectionJobs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Comprehend_20171127.ListPiiEntitiesDetectionJobs'
        data = {}
        data['Filter'] = Builders::PiiEntitiesDetectionJobFilter.build(input[:filter]) unless input[:filter].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for PiiEntitiesDetectionJobFilter
    class PiiEntitiesDetectionJobFilter
      def self.build(input)
        data = {}
        data['JobName'] = input[:job_name] unless input[:job_name].nil?
        data['JobStatus'] = input[:job_status] unless input[:job_status].nil?
        data['SubmitTimeBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:submit_time_before]).to_i unless input[:submit_time_before].nil?
        data['SubmitTimeAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:submit_time_after]).to_i unless input[:submit_time_after].nil?
        data
      end
    end

    # Operation Builder for ListSentimentDetectionJobs
    class ListSentimentDetectionJobs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Comprehend_20171127.ListSentimentDetectionJobs'
        data = {}
        data['Filter'] = Builders::SentimentDetectionJobFilter.build(input[:filter]) unless input[:filter].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for SentimentDetectionJobFilter
    class SentimentDetectionJobFilter
      def self.build(input)
        data = {}
        data['JobName'] = input[:job_name] unless input[:job_name].nil?
        data['JobStatus'] = input[:job_status] unless input[:job_status].nil?
        data['SubmitTimeBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:submit_time_before]).to_i unless input[:submit_time_before].nil?
        data['SubmitTimeAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:submit_time_after]).to_i unless input[:submit_time_after].nil?
        data
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Comprehend_20171127.ListTagsForResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTargetedSentimentDetectionJobs
    class ListTargetedSentimentDetectionJobs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Comprehend_20171127.ListTargetedSentimentDetectionJobs'
        data = {}
        data['Filter'] = Builders::TargetedSentimentDetectionJobFilter.build(input[:filter]) unless input[:filter].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for TargetedSentimentDetectionJobFilter
    class TargetedSentimentDetectionJobFilter
      def self.build(input)
        data = {}
        data['JobName'] = input[:job_name] unless input[:job_name].nil?
        data['JobStatus'] = input[:job_status] unless input[:job_status].nil?
        data['SubmitTimeBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:submit_time_before]).to_i unless input[:submit_time_before].nil?
        data['SubmitTimeAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:submit_time_after]).to_i unless input[:submit_time_after].nil?
        data
      end
    end

    # Operation Builder for ListTopicsDetectionJobs
    class ListTopicsDetectionJobs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Comprehend_20171127.ListTopicsDetectionJobs'
        data = {}
        data['Filter'] = Builders::TopicsDetectionJobFilter.build(input[:filter]) unless input[:filter].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for TopicsDetectionJobFilter
    class TopicsDetectionJobFilter
      def self.build(input)
        data = {}
        data['JobName'] = input[:job_name] unless input[:job_name].nil?
        data['JobStatus'] = input[:job_status] unless input[:job_status].nil?
        data['SubmitTimeBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:submit_time_before]).to_i unless input[:submit_time_before].nil?
        data['SubmitTimeAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:submit_time_after]).to_i unless input[:submit_time_after].nil?
        data
      end
    end

    # Operation Builder for PutResourcePolicy
    class PutResourcePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Comprehend_20171127.PutResourcePolicy'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['ResourcePolicy'] = input[:resource_policy] unless input[:resource_policy].nil?
        data['PolicyRevisionId'] = input[:policy_revision_id] unless input[:policy_revision_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartDocumentClassificationJob
    class StartDocumentClassificationJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Comprehend_20171127.StartDocumentClassificationJob'
        data = {}
        data['JobName'] = input[:job_name] unless input[:job_name].nil?
        data['DocumentClassifierArn'] = input[:document_classifier_arn] unless input[:document_classifier_arn].nil?
        data['InputDataConfig'] = Builders::InputDataConfig.build(input[:input_data_config]) unless input[:input_data_config].nil?
        data['OutputDataConfig'] = Builders::OutputDataConfig.build(input[:output_data_config]) unless input[:output_data_config].nil?
        data['DataAccessRoleArn'] = input[:data_access_role_arn] unless input[:data_access_role_arn].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['VolumeKmsKeyId'] = input[:volume_kms_key_id] unless input[:volume_kms_key_id].nil?
        data['VpcConfig'] = Builders::VpcConfig.build(input[:vpc_config]) unless input[:vpc_config].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
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
        data['InputFormat'] = input[:input_format] unless input[:input_format].nil?
        data['DocumentReaderConfig'] = Builders::DocumentReaderConfig.build(input[:document_reader_config]) unless input[:document_reader_config].nil?
        data
      end
    end

    # Structure Builder for DocumentReaderConfig
    class DocumentReaderConfig
      def self.build(input)
        data = {}
        data['DocumentReadAction'] = input[:document_read_action] unless input[:document_read_action].nil?
        data['DocumentReadMode'] = input[:document_read_mode] unless input[:document_read_mode].nil?
        data['FeatureTypes'] = Builders::ListOfDocumentReadFeatureTypes.build(input[:feature_types]) unless input[:feature_types].nil?
        data
      end
    end

    # List Builder for ListOfDocumentReadFeatureTypes
    class ListOfDocumentReadFeatureTypes
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for StartDominantLanguageDetectionJob
    class StartDominantLanguageDetectionJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Comprehend_20171127.StartDominantLanguageDetectionJob'
        data = {}
        data['InputDataConfig'] = Builders::InputDataConfig.build(input[:input_data_config]) unless input[:input_data_config].nil?
        data['OutputDataConfig'] = Builders::OutputDataConfig.build(input[:output_data_config]) unless input[:output_data_config].nil?
        data['DataAccessRoleArn'] = input[:data_access_role_arn] unless input[:data_access_role_arn].nil?
        data['JobName'] = input[:job_name] unless input[:job_name].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['VolumeKmsKeyId'] = input[:volume_kms_key_id] unless input[:volume_kms_key_id].nil?
        data['VpcConfig'] = Builders::VpcConfig.build(input[:vpc_config]) unless input[:vpc_config].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartEntitiesDetectionJob
    class StartEntitiesDetectionJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Comprehend_20171127.StartEntitiesDetectionJob'
        data = {}
        data['InputDataConfig'] = Builders::InputDataConfig.build(input[:input_data_config]) unless input[:input_data_config].nil?
        data['OutputDataConfig'] = Builders::OutputDataConfig.build(input[:output_data_config]) unless input[:output_data_config].nil?
        data['DataAccessRoleArn'] = input[:data_access_role_arn] unless input[:data_access_role_arn].nil?
        data['JobName'] = input[:job_name] unless input[:job_name].nil?
        data['EntityRecognizerArn'] = input[:entity_recognizer_arn] unless input[:entity_recognizer_arn].nil?
        data['LanguageCode'] = input[:language_code] unless input[:language_code].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['VolumeKmsKeyId'] = input[:volume_kms_key_id] unless input[:volume_kms_key_id].nil?
        data['VpcConfig'] = Builders::VpcConfig.build(input[:vpc_config]) unless input[:vpc_config].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartEventsDetectionJob
    class StartEventsDetectionJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Comprehend_20171127.StartEventsDetectionJob'
        data = {}
        data['InputDataConfig'] = Builders::InputDataConfig.build(input[:input_data_config]) unless input[:input_data_config].nil?
        data['OutputDataConfig'] = Builders::OutputDataConfig.build(input[:output_data_config]) unless input[:output_data_config].nil?
        data['DataAccessRoleArn'] = input[:data_access_role_arn] unless input[:data_access_role_arn].nil?
        data['JobName'] = input[:job_name] unless input[:job_name].nil?
        data['LanguageCode'] = input[:language_code] unless input[:language_code].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['TargetEventTypes'] = Builders::TargetEventTypes.build(input[:target_event_types]) unless input[:target_event_types].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TargetEventTypes
    class TargetEventTypes
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for StartKeyPhrasesDetectionJob
    class StartKeyPhrasesDetectionJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Comprehend_20171127.StartKeyPhrasesDetectionJob'
        data = {}
        data['InputDataConfig'] = Builders::InputDataConfig.build(input[:input_data_config]) unless input[:input_data_config].nil?
        data['OutputDataConfig'] = Builders::OutputDataConfig.build(input[:output_data_config]) unless input[:output_data_config].nil?
        data['DataAccessRoleArn'] = input[:data_access_role_arn] unless input[:data_access_role_arn].nil?
        data['JobName'] = input[:job_name] unless input[:job_name].nil?
        data['LanguageCode'] = input[:language_code] unless input[:language_code].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['VolumeKmsKeyId'] = input[:volume_kms_key_id] unless input[:volume_kms_key_id].nil?
        data['VpcConfig'] = Builders::VpcConfig.build(input[:vpc_config]) unless input[:vpc_config].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartPiiEntitiesDetectionJob
    class StartPiiEntitiesDetectionJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Comprehend_20171127.StartPiiEntitiesDetectionJob'
        data = {}
        data['InputDataConfig'] = Builders::InputDataConfig.build(input[:input_data_config]) unless input[:input_data_config].nil?
        data['OutputDataConfig'] = Builders::OutputDataConfig.build(input[:output_data_config]) unless input[:output_data_config].nil?
        data['Mode'] = input[:mode] unless input[:mode].nil?
        data['RedactionConfig'] = Builders::RedactionConfig.build(input[:redaction_config]) unless input[:redaction_config].nil?
        data['DataAccessRoleArn'] = input[:data_access_role_arn] unless input[:data_access_role_arn].nil?
        data['JobName'] = input[:job_name] unless input[:job_name].nil?
        data['LanguageCode'] = input[:language_code] unless input[:language_code].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for RedactionConfig
    class RedactionConfig
      def self.build(input)
        data = {}
        data['PiiEntityTypes'] = Builders::ListOfPiiEntityTypes.build(input[:pii_entity_types]) unless input[:pii_entity_types].nil?
        data['MaskMode'] = input[:mask_mode] unless input[:mask_mode].nil?
        data['MaskCharacter'] = input[:mask_character] unless input[:mask_character].nil?
        data
      end
    end

    # List Builder for ListOfPiiEntityTypes
    class ListOfPiiEntityTypes
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for StartSentimentDetectionJob
    class StartSentimentDetectionJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Comprehend_20171127.StartSentimentDetectionJob'
        data = {}
        data['InputDataConfig'] = Builders::InputDataConfig.build(input[:input_data_config]) unless input[:input_data_config].nil?
        data['OutputDataConfig'] = Builders::OutputDataConfig.build(input[:output_data_config]) unless input[:output_data_config].nil?
        data['DataAccessRoleArn'] = input[:data_access_role_arn] unless input[:data_access_role_arn].nil?
        data['JobName'] = input[:job_name] unless input[:job_name].nil?
        data['LanguageCode'] = input[:language_code] unless input[:language_code].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['VolumeKmsKeyId'] = input[:volume_kms_key_id] unless input[:volume_kms_key_id].nil?
        data['VpcConfig'] = Builders::VpcConfig.build(input[:vpc_config]) unless input[:vpc_config].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartTargetedSentimentDetectionJob
    class StartTargetedSentimentDetectionJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Comprehend_20171127.StartTargetedSentimentDetectionJob'
        data = {}
        data['InputDataConfig'] = Builders::InputDataConfig.build(input[:input_data_config]) unless input[:input_data_config].nil?
        data['OutputDataConfig'] = Builders::OutputDataConfig.build(input[:output_data_config]) unless input[:output_data_config].nil?
        data['DataAccessRoleArn'] = input[:data_access_role_arn] unless input[:data_access_role_arn].nil?
        data['JobName'] = input[:job_name] unless input[:job_name].nil?
        data['LanguageCode'] = input[:language_code] unless input[:language_code].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['VolumeKmsKeyId'] = input[:volume_kms_key_id] unless input[:volume_kms_key_id].nil?
        data['VpcConfig'] = Builders::VpcConfig.build(input[:vpc_config]) unless input[:vpc_config].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartTopicsDetectionJob
    class StartTopicsDetectionJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Comprehend_20171127.StartTopicsDetectionJob'
        data = {}
        data['InputDataConfig'] = Builders::InputDataConfig.build(input[:input_data_config]) unless input[:input_data_config].nil?
        data['OutputDataConfig'] = Builders::OutputDataConfig.build(input[:output_data_config]) unless input[:output_data_config].nil?
        data['DataAccessRoleArn'] = input[:data_access_role_arn] unless input[:data_access_role_arn].nil?
        data['JobName'] = input[:job_name] unless input[:job_name].nil?
        data['NumberOfTopics'] = input[:number_of_topics] unless input[:number_of_topics].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['VolumeKmsKeyId'] = input[:volume_kms_key_id] unless input[:volume_kms_key_id].nil?
        data['VpcConfig'] = Builders::VpcConfig.build(input[:vpc_config]) unless input[:vpc_config].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopDominantLanguageDetectionJob
    class StopDominantLanguageDetectionJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Comprehend_20171127.StopDominantLanguageDetectionJob'
        data = {}
        data['JobId'] = input[:job_id] unless input[:job_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopEntitiesDetectionJob
    class StopEntitiesDetectionJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Comprehend_20171127.StopEntitiesDetectionJob'
        data = {}
        data['JobId'] = input[:job_id] unless input[:job_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopEventsDetectionJob
    class StopEventsDetectionJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Comprehend_20171127.StopEventsDetectionJob'
        data = {}
        data['JobId'] = input[:job_id] unless input[:job_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopKeyPhrasesDetectionJob
    class StopKeyPhrasesDetectionJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Comprehend_20171127.StopKeyPhrasesDetectionJob'
        data = {}
        data['JobId'] = input[:job_id] unless input[:job_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopPiiEntitiesDetectionJob
    class StopPiiEntitiesDetectionJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Comprehend_20171127.StopPiiEntitiesDetectionJob'
        data = {}
        data['JobId'] = input[:job_id] unless input[:job_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopSentimentDetectionJob
    class StopSentimentDetectionJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Comprehend_20171127.StopSentimentDetectionJob'
        data = {}
        data['JobId'] = input[:job_id] unless input[:job_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopTargetedSentimentDetectionJob
    class StopTargetedSentimentDetectionJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Comprehend_20171127.StopTargetedSentimentDetectionJob'
        data = {}
        data['JobId'] = input[:job_id] unless input[:job_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopTrainingDocumentClassifier
    class StopTrainingDocumentClassifier
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Comprehend_20171127.StopTrainingDocumentClassifier'
        data = {}
        data['DocumentClassifierArn'] = input[:document_classifier_arn] unless input[:document_classifier_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopTrainingEntityRecognizer
    class StopTrainingEntityRecognizer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Comprehend_20171127.StopTrainingEntityRecognizer'
        data = {}
        data['EntityRecognizerArn'] = input[:entity_recognizer_arn] unless input[:entity_recognizer_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Comprehend_20171127.TagResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Comprehend_20171127.UntagResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
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

    # Operation Builder for UpdateEndpoint
    class UpdateEndpoint
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Comprehend_20171127.UpdateEndpoint'
        data = {}
        data['EndpointArn'] = input[:endpoint_arn] unless input[:endpoint_arn].nil?
        data['DesiredModelArn'] = input[:desired_model_arn] unless input[:desired_model_arn].nil?
        data['DesiredInferenceUnits'] = input[:desired_inference_units] unless input[:desired_inference_units].nil?
        data['DesiredDataAccessRoleArn'] = input[:desired_data_access_role_arn] unless input[:desired_data_access_role_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
