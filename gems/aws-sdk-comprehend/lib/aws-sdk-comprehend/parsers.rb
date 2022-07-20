# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Comprehend
  module Parsers

    # Operation Parser for BatchDetectDominantLanguage
    class BatchDetectDominantLanguage
      def self.parse(http_resp)
        data = Types::BatchDetectDominantLanguageOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.result_list = (ListOfDetectDominantLanguageResult.parse(map['ResultList']) unless map['ResultList'].nil?)
        data.error_list = (BatchItemErrorList.parse(map['ErrorList']) unless map['ErrorList'].nil?)
        data
      end
    end

    class BatchItemErrorList
      def self.parse(list)
        list.map do |value|
          BatchItemError.parse(value) unless value.nil?
        end
      end
    end

    class BatchItemError
      def self.parse(map)
        data = Types::BatchItemError.new
        data.index = map['Index']
        data.error_code = map['ErrorCode']
        data.error_message = map['ErrorMessage']
        return data
      end
    end

    class ListOfDetectDominantLanguageResult
      def self.parse(list)
        list.map do |value|
          BatchDetectDominantLanguageItemResult.parse(value) unless value.nil?
        end
      end
    end

    class BatchDetectDominantLanguageItemResult
      def self.parse(map)
        data = Types::BatchDetectDominantLanguageItemResult.new
        data.index = map['Index']
        data.languages = (ListOfDominantLanguages.parse(map['Languages']) unless map['Languages'].nil?)
        return data
      end
    end

    class ListOfDominantLanguages
      def self.parse(list)
        list.map do |value|
          DominantLanguage.parse(value) unless value.nil?
        end
      end
    end

    class DominantLanguage
      def self.parse(map)
        data = Types::DominantLanguage.new
        data.language_code = map['LanguageCode']
        data.score = Hearth::NumberHelper.deserialize(map['Score'])
        return data
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

    # Error Parser for BatchSizeLimitExceededException
    class BatchSizeLimitExceededException
      def self.parse(http_resp)
        data = Types::BatchSizeLimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for TextSizeLimitExceededException
    class TextSizeLimitExceededException
      def self.parse(http_resp)
        data = Types::TextSizeLimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidRequestException
    class InvalidRequestException
      def self.parse(http_resp)
        data = Types::InvalidRequestException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for BatchDetectEntities
    class BatchDetectEntities
      def self.parse(http_resp)
        data = Types::BatchDetectEntitiesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.result_list = (ListOfDetectEntitiesResult.parse(map['ResultList']) unless map['ResultList'].nil?)
        data.error_list = (BatchItemErrorList.parse(map['ErrorList']) unless map['ErrorList'].nil?)
        data
      end
    end

    class ListOfDetectEntitiesResult
      def self.parse(list)
        list.map do |value|
          BatchDetectEntitiesItemResult.parse(value) unless value.nil?
        end
      end
    end

    class BatchDetectEntitiesItemResult
      def self.parse(map)
        data = Types::BatchDetectEntitiesItemResult.new
        data.index = map['Index']
        data.entities = (ListOfEntities.parse(map['Entities']) unless map['Entities'].nil?)
        return data
      end
    end

    class ListOfEntities
      def self.parse(list)
        list.map do |value|
          Entity.parse(value) unless value.nil?
        end
      end
    end

    class Entity
      def self.parse(map)
        data = Types::Entity.new
        data.score = Hearth::NumberHelper.deserialize(map['Score'])
        data.type = map['Type']
        data.text = map['Text']
        data.begin_offset = map['BeginOffset']
        data.end_offset = map['EndOffset']
        return data
      end
    end

    # Error Parser for UnsupportedLanguageException
    class UnsupportedLanguageException
      def self.parse(http_resp)
        data = Types::UnsupportedLanguageException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for BatchDetectKeyPhrases
    class BatchDetectKeyPhrases
      def self.parse(http_resp)
        data = Types::BatchDetectKeyPhrasesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.result_list = (ListOfDetectKeyPhrasesResult.parse(map['ResultList']) unless map['ResultList'].nil?)
        data.error_list = (BatchItemErrorList.parse(map['ErrorList']) unless map['ErrorList'].nil?)
        data
      end
    end

    class ListOfDetectKeyPhrasesResult
      def self.parse(list)
        list.map do |value|
          BatchDetectKeyPhrasesItemResult.parse(value) unless value.nil?
        end
      end
    end

    class BatchDetectKeyPhrasesItemResult
      def self.parse(map)
        data = Types::BatchDetectKeyPhrasesItemResult.new
        data.index = map['Index']
        data.key_phrases = (ListOfKeyPhrases.parse(map['KeyPhrases']) unless map['KeyPhrases'].nil?)
        return data
      end
    end

    class ListOfKeyPhrases
      def self.parse(list)
        list.map do |value|
          KeyPhrase.parse(value) unless value.nil?
        end
      end
    end

    class KeyPhrase
      def self.parse(map)
        data = Types::KeyPhrase.new
        data.score = Hearth::NumberHelper.deserialize(map['Score'])
        data.text = map['Text']
        data.begin_offset = map['BeginOffset']
        data.end_offset = map['EndOffset']
        return data
      end
    end

    # Operation Parser for BatchDetectSentiment
    class BatchDetectSentiment
      def self.parse(http_resp)
        data = Types::BatchDetectSentimentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.result_list = (ListOfDetectSentimentResult.parse(map['ResultList']) unless map['ResultList'].nil?)
        data.error_list = (BatchItemErrorList.parse(map['ErrorList']) unless map['ErrorList'].nil?)
        data
      end
    end

    class ListOfDetectSentimentResult
      def self.parse(list)
        list.map do |value|
          BatchDetectSentimentItemResult.parse(value) unless value.nil?
        end
      end
    end

    class BatchDetectSentimentItemResult
      def self.parse(map)
        data = Types::BatchDetectSentimentItemResult.new
        data.index = map['Index']
        data.sentiment = map['Sentiment']
        data.sentiment_score = (SentimentScore.parse(map['SentimentScore']) unless map['SentimentScore'].nil?)
        return data
      end
    end

    class SentimentScore
      def self.parse(map)
        data = Types::SentimentScore.new
        data.positive = Hearth::NumberHelper.deserialize(map['Positive'])
        data.negative = Hearth::NumberHelper.deserialize(map['Negative'])
        data.neutral = Hearth::NumberHelper.deserialize(map['Neutral'])
        data.mixed = Hearth::NumberHelper.deserialize(map['Mixed'])
        return data
      end
    end

    # Operation Parser for BatchDetectSyntax
    class BatchDetectSyntax
      def self.parse(http_resp)
        data = Types::BatchDetectSyntaxOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.result_list = (ListOfDetectSyntaxResult.parse(map['ResultList']) unless map['ResultList'].nil?)
        data.error_list = (BatchItemErrorList.parse(map['ErrorList']) unless map['ErrorList'].nil?)
        data
      end
    end

    class ListOfDetectSyntaxResult
      def self.parse(list)
        list.map do |value|
          BatchDetectSyntaxItemResult.parse(value) unless value.nil?
        end
      end
    end

    class BatchDetectSyntaxItemResult
      def self.parse(map)
        data = Types::BatchDetectSyntaxItemResult.new
        data.index = map['Index']
        data.syntax_tokens = (ListOfSyntaxTokens.parse(map['SyntaxTokens']) unless map['SyntaxTokens'].nil?)
        return data
      end
    end

    class ListOfSyntaxTokens
      def self.parse(list)
        list.map do |value|
          SyntaxToken.parse(value) unless value.nil?
        end
      end
    end

    class SyntaxToken
      def self.parse(map)
        data = Types::SyntaxToken.new
        data.token_id = map['TokenId']
        data.text = map['Text']
        data.begin_offset = map['BeginOffset']
        data.end_offset = map['EndOffset']
        data.part_of_speech = (PartOfSpeechTag.parse(map['PartOfSpeech']) unless map['PartOfSpeech'].nil?)
        return data
      end
    end

    class PartOfSpeechTag
      def self.parse(map)
        data = Types::PartOfSpeechTag.new
        data.tag = map['Tag']
        data.score = Hearth::NumberHelper.deserialize(map['Score'])
        return data
      end
    end

    # Operation Parser for ClassifyDocument
    class ClassifyDocument
      def self.parse(http_resp)
        data = Types::ClassifyDocumentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.classes = (ListOfClasses.parse(map['Classes']) unless map['Classes'].nil?)
        data.labels = (ListOfLabels.parse(map['Labels']) unless map['Labels'].nil?)
        data
      end
    end

    class ListOfLabels
      def self.parse(list)
        list.map do |value|
          DocumentLabel.parse(value) unless value.nil?
        end
      end
    end

    class DocumentLabel
      def self.parse(map)
        data = Types::DocumentLabel.new
        data.name = map['Name']
        data.score = Hearth::NumberHelper.deserialize(map['Score'])
        return data
      end
    end

    class ListOfClasses
      def self.parse(list)
        list.map do |value|
          DocumentClass.parse(value) unless value.nil?
        end
      end
    end

    class DocumentClass
      def self.parse(map)
        data = Types::DocumentClass.new
        data.name = map['Name']
        data.score = Hearth::NumberHelper.deserialize(map['Score'])
        return data
      end
    end

    # Error Parser for ResourceUnavailableException
    class ResourceUnavailableException
      def self.parse(http_resp)
        data = Types::ResourceUnavailableException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for ContainsPiiEntities
    class ContainsPiiEntities
      def self.parse(http_resp)
        data = Types::ContainsPiiEntitiesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.labels = (ListOfEntityLabels.parse(map['Labels']) unless map['Labels'].nil?)
        data
      end
    end

    class ListOfEntityLabels
      def self.parse(list)
        list.map do |value|
          EntityLabel.parse(value) unless value.nil?
        end
      end
    end

    class EntityLabel
      def self.parse(map)
        data = Types::EntityLabel.new
        data.name = map['Name']
        data.score = Hearth::NumberHelper.deserialize(map['Score'])
        return data
      end
    end

    # Operation Parser for CreateDocumentClassifier
    class CreateDocumentClassifier
      def self.parse(http_resp)
        data = Types::CreateDocumentClassifierOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.document_classifier_arn = map['DocumentClassifierArn']
        data
      end
    end

    # Error Parser for ResourceLimitExceededException
    class ResourceLimitExceededException
      def self.parse(http_resp)
        data = Types::ResourceLimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for TooManyTagsException
    class TooManyTagsException
      def self.parse(http_resp)
        data = Types::TooManyTagsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for KmsKeyValidationException
    class KmsKeyValidationException
      def self.parse(http_resp)
        data = Types::KmsKeyValidationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ResourceInUseException
    class ResourceInUseException
      def self.parse(http_resp)
        data = Types::ResourceInUseException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for TooManyRequestsException
    class TooManyRequestsException
      def self.parse(http_resp)
        data = Types::TooManyRequestsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateEndpoint
    class CreateEndpoint
      def self.parse(http_resp)
        data = Types::CreateEndpointOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.endpoint_arn = map['EndpointArn']
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

    # Operation Parser for CreateEntityRecognizer
    class CreateEntityRecognizer
      def self.parse(http_resp)
        data = Types::CreateEntityRecognizerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.entity_recognizer_arn = map['EntityRecognizerArn']
        data
      end
    end

    # Operation Parser for DeleteDocumentClassifier
    class DeleteDocumentClassifier
      def self.parse(http_resp)
        data = Types::DeleteDocumentClassifierOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteEndpoint
    class DeleteEndpoint
      def self.parse(http_resp)
        data = Types::DeleteEndpointOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteEntityRecognizer
    class DeleteEntityRecognizer
      def self.parse(http_resp)
        data = Types::DeleteEntityRecognizerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteResourcePolicy
    class DeleteResourcePolicy
      def self.parse(http_resp)
        data = Types::DeleteResourcePolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DescribeDocumentClassificationJob
    class DescribeDocumentClassificationJob
      def self.parse(http_resp)
        data = Types::DescribeDocumentClassificationJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.document_classification_job_properties = (DocumentClassificationJobProperties.parse(map['DocumentClassificationJobProperties']) unless map['DocumentClassificationJobProperties'].nil?)
        data
      end
    end

    class DocumentClassificationJobProperties
      def self.parse(map)
        data = Types::DocumentClassificationJobProperties.new
        data.job_id = map['JobId']
        data.job_arn = map['JobArn']
        data.job_name = map['JobName']
        data.job_status = map['JobStatus']
        data.message = map['Message']
        data.submit_time = Time.at(map['SubmitTime'].to_i) if map['SubmitTime']
        data.end_time = Time.at(map['EndTime'].to_i) if map['EndTime']
        data.document_classifier_arn = map['DocumentClassifierArn']
        data.input_data_config = (InputDataConfig.parse(map['InputDataConfig']) unless map['InputDataConfig'].nil?)
        data.output_data_config = (OutputDataConfig.parse(map['OutputDataConfig']) unless map['OutputDataConfig'].nil?)
        data.data_access_role_arn = map['DataAccessRoleArn']
        data.volume_kms_key_id = map['VolumeKmsKeyId']
        data.vpc_config = (VpcConfig.parse(map['VpcConfig']) unless map['VpcConfig'].nil?)
        return data
      end
    end

    class VpcConfig
      def self.parse(map)
        data = Types::VpcConfig.new
        data.security_group_ids = (SecurityGroupIds.parse(map['SecurityGroupIds']) unless map['SecurityGroupIds'].nil?)
        data.subnets = (Subnets.parse(map['Subnets']) unless map['Subnets'].nil?)
        return data
      end
    end

    class Subnets
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class SecurityGroupIds
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
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
        data.input_format = map['InputFormat']
        data.document_reader_config = (DocumentReaderConfig.parse(map['DocumentReaderConfig']) unless map['DocumentReaderConfig'].nil?)
        return data
      end
    end

    class DocumentReaderConfig
      def self.parse(map)
        data = Types::DocumentReaderConfig.new
        data.document_read_action = map['DocumentReadAction']
        data.document_read_mode = map['DocumentReadMode']
        data.feature_types = (ListOfDocumentReadFeatureTypes.parse(map['FeatureTypes']) unless map['FeatureTypes'].nil?)
        return data
      end
    end

    class ListOfDocumentReadFeatureTypes
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Error Parser for JobNotFoundException
    class JobNotFoundException
      def self.parse(http_resp)
        data = Types::JobNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DescribeDocumentClassifier
    class DescribeDocumentClassifier
      def self.parse(http_resp)
        data = Types::DescribeDocumentClassifierOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.document_classifier_properties = (DocumentClassifierProperties.parse(map['DocumentClassifierProperties']) unless map['DocumentClassifierProperties'].nil?)
        data
      end
    end

    class DocumentClassifierProperties
      def self.parse(map)
        data = Types::DocumentClassifierProperties.new
        data.document_classifier_arn = map['DocumentClassifierArn']
        data.language_code = map['LanguageCode']
        data.status = map['Status']
        data.message = map['Message']
        data.submit_time = Time.at(map['SubmitTime'].to_i) if map['SubmitTime']
        data.end_time = Time.at(map['EndTime'].to_i) if map['EndTime']
        data.training_start_time = Time.at(map['TrainingStartTime'].to_i) if map['TrainingStartTime']
        data.training_end_time = Time.at(map['TrainingEndTime'].to_i) if map['TrainingEndTime']
        data.input_data_config = (DocumentClassifierInputDataConfig.parse(map['InputDataConfig']) unless map['InputDataConfig'].nil?)
        data.output_data_config = (DocumentClassifierOutputDataConfig.parse(map['OutputDataConfig']) unless map['OutputDataConfig'].nil?)
        data.classifier_metadata = (ClassifierMetadata.parse(map['ClassifierMetadata']) unless map['ClassifierMetadata'].nil?)
        data.data_access_role_arn = map['DataAccessRoleArn']
        data.volume_kms_key_id = map['VolumeKmsKeyId']
        data.vpc_config = (VpcConfig.parse(map['VpcConfig']) unless map['VpcConfig'].nil?)
        data.mode = map['Mode']
        data.model_kms_key_id = map['ModelKmsKeyId']
        data.version_name = map['VersionName']
        data.source_model_arn = map['SourceModelArn']
        return data
      end
    end

    class ClassifierMetadata
      def self.parse(map)
        data = Types::ClassifierMetadata.new
        data.number_of_labels = map['NumberOfLabels']
        data.number_of_trained_documents = map['NumberOfTrainedDocuments']
        data.number_of_test_documents = map['NumberOfTestDocuments']
        data.evaluation_metrics = (ClassifierEvaluationMetrics.parse(map['EvaluationMetrics']) unless map['EvaluationMetrics'].nil?)
        return data
      end
    end

    class ClassifierEvaluationMetrics
      def self.parse(map)
        data = Types::ClassifierEvaluationMetrics.new
        data.accuracy = Hearth::NumberHelper.deserialize(map['Accuracy'])
        data.precision = Hearth::NumberHelper.deserialize(map['Precision'])
        data.recall = Hearth::NumberHelper.deserialize(map['Recall'])
        data.f1_score = Hearth::NumberHelper.deserialize(map['F1Score'])
        data.micro_precision = Hearth::NumberHelper.deserialize(map['MicroPrecision'])
        data.micro_recall = Hearth::NumberHelper.deserialize(map['MicroRecall'])
        data.micro_f1_score = Hearth::NumberHelper.deserialize(map['MicroF1Score'])
        data.hamming_loss = Hearth::NumberHelper.deserialize(map['HammingLoss'])
        return data
      end
    end

    class DocumentClassifierOutputDataConfig
      def self.parse(map)
        data = Types::DocumentClassifierOutputDataConfig.new
        data.s3_uri = map['S3Uri']
        data.kms_key_id = map['KmsKeyId']
        return data
      end
    end

    class DocumentClassifierInputDataConfig
      def self.parse(map)
        data = Types::DocumentClassifierInputDataConfig.new
        data.data_format = map['DataFormat']
        data.s3_uri = map['S3Uri']
        data.test_s3_uri = map['TestS3Uri']
        data.label_delimiter = map['LabelDelimiter']
        data.augmented_manifests = (DocumentClassifierAugmentedManifestsList.parse(map['AugmentedManifests']) unless map['AugmentedManifests'].nil?)
        return data
      end
    end

    class DocumentClassifierAugmentedManifestsList
      def self.parse(list)
        list.map do |value|
          AugmentedManifestsListItem.parse(value) unless value.nil?
        end
      end
    end

    class AugmentedManifestsListItem
      def self.parse(map)
        data = Types::AugmentedManifestsListItem.new
        data.s3_uri = map['S3Uri']
        data.split = map['Split']
        data.attribute_names = (AttributeNamesList.parse(map['AttributeNames']) unless map['AttributeNames'].nil?)
        data.annotation_data_s3_uri = map['AnnotationDataS3Uri']
        data.source_documents_s3_uri = map['SourceDocumentsS3Uri']
        data.document_type = map['DocumentType']
        return data
      end
    end

    class AttributeNamesList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeDominantLanguageDetectionJob
    class DescribeDominantLanguageDetectionJob
      def self.parse(http_resp)
        data = Types::DescribeDominantLanguageDetectionJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.dominant_language_detection_job_properties = (DominantLanguageDetectionJobProperties.parse(map['DominantLanguageDetectionJobProperties']) unless map['DominantLanguageDetectionJobProperties'].nil?)
        data
      end
    end

    class DominantLanguageDetectionJobProperties
      def self.parse(map)
        data = Types::DominantLanguageDetectionJobProperties.new
        data.job_id = map['JobId']
        data.job_arn = map['JobArn']
        data.job_name = map['JobName']
        data.job_status = map['JobStatus']
        data.message = map['Message']
        data.submit_time = Time.at(map['SubmitTime'].to_i) if map['SubmitTime']
        data.end_time = Time.at(map['EndTime'].to_i) if map['EndTime']
        data.input_data_config = (InputDataConfig.parse(map['InputDataConfig']) unless map['InputDataConfig'].nil?)
        data.output_data_config = (OutputDataConfig.parse(map['OutputDataConfig']) unless map['OutputDataConfig'].nil?)
        data.data_access_role_arn = map['DataAccessRoleArn']
        data.volume_kms_key_id = map['VolumeKmsKeyId']
        data.vpc_config = (VpcConfig.parse(map['VpcConfig']) unless map['VpcConfig'].nil?)
        return data
      end
    end

    # Operation Parser for DescribeEndpoint
    class DescribeEndpoint
      def self.parse(http_resp)
        data = Types::DescribeEndpointOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.endpoint_properties = (EndpointProperties.parse(map['EndpointProperties']) unless map['EndpointProperties'].nil?)
        data
      end
    end

    class EndpointProperties
      def self.parse(map)
        data = Types::EndpointProperties.new
        data.endpoint_arn = map['EndpointArn']
        data.status = map['Status']
        data.message = map['Message']
        data.model_arn = map['ModelArn']
        data.desired_model_arn = map['DesiredModelArn']
        data.desired_inference_units = map['DesiredInferenceUnits']
        data.current_inference_units = map['CurrentInferenceUnits']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.data_access_role_arn = map['DataAccessRoleArn']
        data.desired_data_access_role_arn = map['DesiredDataAccessRoleArn']
        return data
      end
    end

    # Operation Parser for DescribeEntitiesDetectionJob
    class DescribeEntitiesDetectionJob
      def self.parse(http_resp)
        data = Types::DescribeEntitiesDetectionJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.entities_detection_job_properties = (EntitiesDetectionJobProperties.parse(map['EntitiesDetectionJobProperties']) unless map['EntitiesDetectionJobProperties'].nil?)
        data
      end
    end

    class EntitiesDetectionJobProperties
      def self.parse(map)
        data = Types::EntitiesDetectionJobProperties.new
        data.job_id = map['JobId']
        data.job_arn = map['JobArn']
        data.job_name = map['JobName']
        data.job_status = map['JobStatus']
        data.message = map['Message']
        data.submit_time = Time.at(map['SubmitTime'].to_i) if map['SubmitTime']
        data.end_time = Time.at(map['EndTime'].to_i) if map['EndTime']
        data.entity_recognizer_arn = map['EntityRecognizerArn']
        data.input_data_config = (InputDataConfig.parse(map['InputDataConfig']) unless map['InputDataConfig'].nil?)
        data.output_data_config = (OutputDataConfig.parse(map['OutputDataConfig']) unless map['OutputDataConfig'].nil?)
        data.language_code = map['LanguageCode']
        data.data_access_role_arn = map['DataAccessRoleArn']
        data.volume_kms_key_id = map['VolumeKmsKeyId']
        data.vpc_config = (VpcConfig.parse(map['VpcConfig']) unless map['VpcConfig'].nil?)
        return data
      end
    end

    # Operation Parser for DescribeEntityRecognizer
    class DescribeEntityRecognizer
      def self.parse(http_resp)
        data = Types::DescribeEntityRecognizerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.entity_recognizer_properties = (EntityRecognizerProperties.parse(map['EntityRecognizerProperties']) unless map['EntityRecognizerProperties'].nil?)
        data
      end
    end

    class EntityRecognizerProperties
      def self.parse(map)
        data = Types::EntityRecognizerProperties.new
        data.entity_recognizer_arn = map['EntityRecognizerArn']
        data.language_code = map['LanguageCode']
        data.status = map['Status']
        data.message = map['Message']
        data.submit_time = Time.at(map['SubmitTime'].to_i) if map['SubmitTime']
        data.end_time = Time.at(map['EndTime'].to_i) if map['EndTime']
        data.training_start_time = Time.at(map['TrainingStartTime'].to_i) if map['TrainingStartTime']
        data.training_end_time = Time.at(map['TrainingEndTime'].to_i) if map['TrainingEndTime']
        data.input_data_config = (EntityRecognizerInputDataConfig.parse(map['InputDataConfig']) unless map['InputDataConfig'].nil?)
        data.recognizer_metadata = (EntityRecognizerMetadata.parse(map['RecognizerMetadata']) unless map['RecognizerMetadata'].nil?)
        data.data_access_role_arn = map['DataAccessRoleArn']
        data.volume_kms_key_id = map['VolumeKmsKeyId']
        data.vpc_config = (VpcConfig.parse(map['VpcConfig']) unless map['VpcConfig'].nil?)
        data.model_kms_key_id = map['ModelKmsKeyId']
        data.version_name = map['VersionName']
        data.source_model_arn = map['SourceModelArn']
        return data
      end
    end

    class EntityRecognizerMetadata
      def self.parse(map)
        data = Types::EntityRecognizerMetadata.new
        data.number_of_trained_documents = map['NumberOfTrainedDocuments']
        data.number_of_test_documents = map['NumberOfTestDocuments']
        data.evaluation_metrics = (EntityRecognizerEvaluationMetrics.parse(map['EvaluationMetrics']) unless map['EvaluationMetrics'].nil?)
        data.entity_types = (EntityRecognizerMetadataEntityTypesList.parse(map['EntityTypes']) unless map['EntityTypes'].nil?)
        return data
      end
    end

    class EntityRecognizerMetadataEntityTypesList
      def self.parse(list)
        list.map do |value|
          EntityRecognizerMetadataEntityTypesListItem.parse(value) unless value.nil?
        end
      end
    end

    class EntityRecognizerMetadataEntityTypesListItem
      def self.parse(map)
        data = Types::EntityRecognizerMetadataEntityTypesListItem.new
        data.type = map['Type']
        data.evaluation_metrics = (EntityTypesEvaluationMetrics.parse(map['EvaluationMetrics']) unless map['EvaluationMetrics'].nil?)
        data.number_of_train_mentions = map['NumberOfTrainMentions']
        return data
      end
    end

    class EntityTypesEvaluationMetrics
      def self.parse(map)
        data = Types::EntityTypesEvaluationMetrics.new
        data.precision = Hearth::NumberHelper.deserialize(map['Precision'])
        data.recall = Hearth::NumberHelper.deserialize(map['Recall'])
        data.f1_score = Hearth::NumberHelper.deserialize(map['F1Score'])
        return data
      end
    end

    class EntityRecognizerEvaluationMetrics
      def self.parse(map)
        data = Types::EntityRecognizerEvaluationMetrics.new
        data.precision = Hearth::NumberHelper.deserialize(map['Precision'])
        data.recall = Hearth::NumberHelper.deserialize(map['Recall'])
        data.f1_score = Hearth::NumberHelper.deserialize(map['F1Score'])
        return data
      end
    end

    class EntityRecognizerInputDataConfig
      def self.parse(map)
        data = Types::EntityRecognizerInputDataConfig.new
        data.data_format = map['DataFormat']
        data.entity_types = (EntityTypesList.parse(map['EntityTypes']) unless map['EntityTypes'].nil?)
        data.documents = (EntityRecognizerDocuments.parse(map['Documents']) unless map['Documents'].nil?)
        data.annotations = (EntityRecognizerAnnotations.parse(map['Annotations']) unless map['Annotations'].nil?)
        data.entity_list = (EntityRecognizerEntityList.parse(map['EntityList']) unless map['EntityList'].nil?)
        data.augmented_manifests = (EntityRecognizerAugmentedManifestsList.parse(map['AugmentedManifests']) unless map['AugmentedManifests'].nil?)
        return data
      end
    end

    class EntityRecognizerAugmentedManifestsList
      def self.parse(list)
        list.map do |value|
          AugmentedManifestsListItem.parse(value) unless value.nil?
        end
      end
    end

    class EntityRecognizerEntityList
      def self.parse(map)
        data = Types::EntityRecognizerEntityList.new
        data.s3_uri = map['S3Uri']
        return data
      end
    end

    class EntityRecognizerAnnotations
      def self.parse(map)
        data = Types::EntityRecognizerAnnotations.new
        data.s3_uri = map['S3Uri']
        data.test_s3_uri = map['TestS3Uri']
        return data
      end
    end

    class EntityRecognizerDocuments
      def self.parse(map)
        data = Types::EntityRecognizerDocuments.new
        data.s3_uri = map['S3Uri']
        data.test_s3_uri = map['TestS3Uri']
        data.input_format = map['InputFormat']
        return data
      end
    end

    class EntityTypesList
      def self.parse(list)
        list.map do |value|
          EntityTypesListItem.parse(value) unless value.nil?
        end
      end
    end

    class EntityTypesListItem
      def self.parse(map)
        data = Types::EntityTypesListItem.new
        data.type = map['Type']
        return data
      end
    end

    # Operation Parser for DescribeEventsDetectionJob
    class DescribeEventsDetectionJob
      def self.parse(http_resp)
        data = Types::DescribeEventsDetectionJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.events_detection_job_properties = (EventsDetectionJobProperties.parse(map['EventsDetectionJobProperties']) unless map['EventsDetectionJobProperties'].nil?)
        data
      end
    end

    class EventsDetectionJobProperties
      def self.parse(map)
        data = Types::EventsDetectionJobProperties.new
        data.job_id = map['JobId']
        data.job_arn = map['JobArn']
        data.job_name = map['JobName']
        data.job_status = map['JobStatus']
        data.message = map['Message']
        data.submit_time = Time.at(map['SubmitTime'].to_i) if map['SubmitTime']
        data.end_time = Time.at(map['EndTime'].to_i) if map['EndTime']
        data.input_data_config = (InputDataConfig.parse(map['InputDataConfig']) unless map['InputDataConfig'].nil?)
        data.output_data_config = (OutputDataConfig.parse(map['OutputDataConfig']) unless map['OutputDataConfig'].nil?)
        data.language_code = map['LanguageCode']
        data.data_access_role_arn = map['DataAccessRoleArn']
        data.target_event_types = (TargetEventTypes.parse(map['TargetEventTypes']) unless map['TargetEventTypes'].nil?)
        return data
      end
    end

    class TargetEventTypes
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeKeyPhrasesDetectionJob
    class DescribeKeyPhrasesDetectionJob
      def self.parse(http_resp)
        data = Types::DescribeKeyPhrasesDetectionJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.key_phrases_detection_job_properties = (KeyPhrasesDetectionJobProperties.parse(map['KeyPhrasesDetectionJobProperties']) unless map['KeyPhrasesDetectionJobProperties'].nil?)
        data
      end
    end

    class KeyPhrasesDetectionJobProperties
      def self.parse(map)
        data = Types::KeyPhrasesDetectionJobProperties.new
        data.job_id = map['JobId']
        data.job_arn = map['JobArn']
        data.job_name = map['JobName']
        data.job_status = map['JobStatus']
        data.message = map['Message']
        data.submit_time = Time.at(map['SubmitTime'].to_i) if map['SubmitTime']
        data.end_time = Time.at(map['EndTime'].to_i) if map['EndTime']
        data.input_data_config = (InputDataConfig.parse(map['InputDataConfig']) unless map['InputDataConfig'].nil?)
        data.output_data_config = (OutputDataConfig.parse(map['OutputDataConfig']) unless map['OutputDataConfig'].nil?)
        data.language_code = map['LanguageCode']
        data.data_access_role_arn = map['DataAccessRoleArn']
        data.volume_kms_key_id = map['VolumeKmsKeyId']
        data.vpc_config = (VpcConfig.parse(map['VpcConfig']) unless map['VpcConfig'].nil?)
        return data
      end
    end

    # Operation Parser for DescribePiiEntitiesDetectionJob
    class DescribePiiEntitiesDetectionJob
      def self.parse(http_resp)
        data = Types::DescribePiiEntitiesDetectionJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.pii_entities_detection_job_properties = (PiiEntitiesDetectionJobProperties.parse(map['PiiEntitiesDetectionJobProperties']) unless map['PiiEntitiesDetectionJobProperties'].nil?)
        data
      end
    end

    class PiiEntitiesDetectionJobProperties
      def self.parse(map)
        data = Types::PiiEntitiesDetectionJobProperties.new
        data.job_id = map['JobId']
        data.job_arn = map['JobArn']
        data.job_name = map['JobName']
        data.job_status = map['JobStatus']
        data.message = map['Message']
        data.submit_time = Time.at(map['SubmitTime'].to_i) if map['SubmitTime']
        data.end_time = Time.at(map['EndTime'].to_i) if map['EndTime']
        data.input_data_config = (InputDataConfig.parse(map['InputDataConfig']) unless map['InputDataConfig'].nil?)
        data.output_data_config = (PiiOutputDataConfig.parse(map['OutputDataConfig']) unless map['OutputDataConfig'].nil?)
        data.redaction_config = (RedactionConfig.parse(map['RedactionConfig']) unless map['RedactionConfig'].nil?)
        data.language_code = map['LanguageCode']
        data.data_access_role_arn = map['DataAccessRoleArn']
        data.mode = map['Mode']
        return data
      end
    end

    class RedactionConfig
      def self.parse(map)
        data = Types::RedactionConfig.new
        data.pii_entity_types = (ListOfPiiEntityTypes.parse(map['PiiEntityTypes']) unless map['PiiEntityTypes'].nil?)
        data.mask_mode = map['MaskMode']
        data.mask_character = map['MaskCharacter']
        return data
      end
    end

    class ListOfPiiEntityTypes
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class PiiOutputDataConfig
      def self.parse(map)
        data = Types::PiiOutputDataConfig.new
        data.s3_uri = map['S3Uri']
        data.kms_key_id = map['KmsKeyId']
        return data
      end
    end

    # Operation Parser for DescribeResourcePolicy
    class DescribeResourcePolicy
      def self.parse(http_resp)
        data = Types::DescribeResourcePolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resource_policy = map['ResourcePolicy']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.policy_revision_id = map['PolicyRevisionId']
        data
      end
    end

    # Operation Parser for DescribeSentimentDetectionJob
    class DescribeSentimentDetectionJob
      def self.parse(http_resp)
        data = Types::DescribeSentimentDetectionJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.sentiment_detection_job_properties = (SentimentDetectionJobProperties.parse(map['SentimentDetectionJobProperties']) unless map['SentimentDetectionJobProperties'].nil?)
        data
      end
    end

    class SentimentDetectionJobProperties
      def self.parse(map)
        data = Types::SentimentDetectionJobProperties.new
        data.job_id = map['JobId']
        data.job_arn = map['JobArn']
        data.job_name = map['JobName']
        data.job_status = map['JobStatus']
        data.message = map['Message']
        data.submit_time = Time.at(map['SubmitTime'].to_i) if map['SubmitTime']
        data.end_time = Time.at(map['EndTime'].to_i) if map['EndTime']
        data.input_data_config = (InputDataConfig.parse(map['InputDataConfig']) unless map['InputDataConfig'].nil?)
        data.output_data_config = (OutputDataConfig.parse(map['OutputDataConfig']) unless map['OutputDataConfig'].nil?)
        data.language_code = map['LanguageCode']
        data.data_access_role_arn = map['DataAccessRoleArn']
        data.volume_kms_key_id = map['VolumeKmsKeyId']
        data.vpc_config = (VpcConfig.parse(map['VpcConfig']) unless map['VpcConfig'].nil?)
        return data
      end
    end

    # Operation Parser for DescribeTargetedSentimentDetectionJob
    class DescribeTargetedSentimentDetectionJob
      def self.parse(http_resp)
        data = Types::DescribeTargetedSentimentDetectionJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.targeted_sentiment_detection_job_properties = (TargetedSentimentDetectionJobProperties.parse(map['TargetedSentimentDetectionJobProperties']) unless map['TargetedSentimentDetectionJobProperties'].nil?)
        data
      end
    end

    class TargetedSentimentDetectionJobProperties
      def self.parse(map)
        data = Types::TargetedSentimentDetectionJobProperties.new
        data.job_id = map['JobId']
        data.job_arn = map['JobArn']
        data.job_name = map['JobName']
        data.job_status = map['JobStatus']
        data.message = map['Message']
        data.submit_time = Time.at(map['SubmitTime'].to_i) if map['SubmitTime']
        data.end_time = Time.at(map['EndTime'].to_i) if map['EndTime']
        data.input_data_config = (InputDataConfig.parse(map['InputDataConfig']) unless map['InputDataConfig'].nil?)
        data.output_data_config = (OutputDataConfig.parse(map['OutputDataConfig']) unless map['OutputDataConfig'].nil?)
        data.language_code = map['LanguageCode']
        data.data_access_role_arn = map['DataAccessRoleArn']
        data.volume_kms_key_id = map['VolumeKmsKeyId']
        data.vpc_config = (VpcConfig.parse(map['VpcConfig']) unless map['VpcConfig'].nil?)
        return data
      end
    end

    # Operation Parser for DescribeTopicsDetectionJob
    class DescribeTopicsDetectionJob
      def self.parse(http_resp)
        data = Types::DescribeTopicsDetectionJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.topics_detection_job_properties = (TopicsDetectionJobProperties.parse(map['TopicsDetectionJobProperties']) unless map['TopicsDetectionJobProperties'].nil?)
        data
      end
    end

    class TopicsDetectionJobProperties
      def self.parse(map)
        data = Types::TopicsDetectionJobProperties.new
        data.job_id = map['JobId']
        data.job_arn = map['JobArn']
        data.job_name = map['JobName']
        data.job_status = map['JobStatus']
        data.message = map['Message']
        data.submit_time = Time.at(map['SubmitTime'].to_i) if map['SubmitTime']
        data.end_time = Time.at(map['EndTime'].to_i) if map['EndTime']
        data.input_data_config = (InputDataConfig.parse(map['InputDataConfig']) unless map['InputDataConfig'].nil?)
        data.output_data_config = (OutputDataConfig.parse(map['OutputDataConfig']) unless map['OutputDataConfig'].nil?)
        data.number_of_topics = map['NumberOfTopics']
        data.data_access_role_arn = map['DataAccessRoleArn']
        data.volume_kms_key_id = map['VolumeKmsKeyId']
        data.vpc_config = (VpcConfig.parse(map['VpcConfig']) unless map['VpcConfig'].nil?)
        return data
      end
    end

    # Operation Parser for DetectDominantLanguage
    class DetectDominantLanguage
      def self.parse(http_resp)
        data = Types::DetectDominantLanguageOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.languages = (ListOfDominantLanguages.parse(map['Languages']) unless map['Languages'].nil?)
        data
      end
    end

    # Operation Parser for DetectEntities
    class DetectEntities
      def self.parse(http_resp)
        data = Types::DetectEntitiesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.entities = (ListOfEntities.parse(map['Entities']) unless map['Entities'].nil?)
        data
      end
    end

    # Operation Parser for DetectKeyPhrases
    class DetectKeyPhrases
      def self.parse(http_resp)
        data = Types::DetectKeyPhrasesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.key_phrases = (ListOfKeyPhrases.parse(map['KeyPhrases']) unless map['KeyPhrases'].nil?)
        data
      end
    end

    # Operation Parser for DetectPiiEntities
    class DetectPiiEntities
      def self.parse(http_resp)
        data = Types::DetectPiiEntitiesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.entities = (ListOfPiiEntities.parse(map['Entities']) unless map['Entities'].nil?)
        data
      end
    end

    class ListOfPiiEntities
      def self.parse(list)
        list.map do |value|
          PiiEntity.parse(value) unless value.nil?
        end
      end
    end

    class PiiEntity
      def self.parse(map)
        data = Types::PiiEntity.new
        data.score = Hearth::NumberHelper.deserialize(map['Score'])
        data.type = map['Type']
        data.begin_offset = map['BeginOffset']
        data.end_offset = map['EndOffset']
        return data
      end
    end

    # Operation Parser for DetectSentiment
    class DetectSentiment
      def self.parse(http_resp)
        data = Types::DetectSentimentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.sentiment = map['Sentiment']
        data.sentiment_score = (SentimentScore.parse(map['SentimentScore']) unless map['SentimentScore'].nil?)
        data
      end
    end

    # Operation Parser for DetectSyntax
    class DetectSyntax
      def self.parse(http_resp)
        data = Types::DetectSyntaxOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.syntax_tokens = (ListOfSyntaxTokens.parse(map['SyntaxTokens']) unless map['SyntaxTokens'].nil?)
        data
      end
    end

    # Operation Parser for ImportModel
    class ImportModel
      def self.parse(http_resp)
        data = Types::ImportModelOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.model_arn = map['ModelArn']
        data
      end
    end

    # Operation Parser for ListDocumentClassificationJobs
    class ListDocumentClassificationJobs
      def self.parse(http_resp)
        data = Types::ListDocumentClassificationJobsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.document_classification_job_properties_list = (DocumentClassificationJobPropertiesList.parse(map['DocumentClassificationJobPropertiesList']) unless map['DocumentClassificationJobPropertiesList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class DocumentClassificationJobPropertiesList
      def self.parse(list)
        list.map do |value|
          DocumentClassificationJobProperties.parse(value) unless value.nil?
        end
      end
    end

    # Error Parser for InvalidFilterException
    class InvalidFilterException
      def self.parse(http_resp)
        data = Types::InvalidFilterException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for ListDocumentClassifierSummaries
    class ListDocumentClassifierSummaries
      def self.parse(http_resp)
        data = Types::ListDocumentClassifierSummariesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.document_classifier_summaries_list = (DocumentClassifierSummariesList.parse(map['DocumentClassifierSummariesList']) unless map['DocumentClassifierSummariesList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class DocumentClassifierSummariesList
      def self.parse(list)
        list.map do |value|
          DocumentClassifierSummary.parse(value) unless value.nil?
        end
      end
    end

    class DocumentClassifierSummary
      def self.parse(map)
        data = Types::DocumentClassifierSummary.new
        data.document_classifier_name = map['DocumentClassifierName']
        data.number_of_versions = map['NumberOfVersions']
        data.latest_version_created_at = Time.at(map['LatestVersionCreatedAt'].to_i) if map['LatestVersionCreatedAt']
        data.latest_version_name = map['LatestVersionName']
        data.latest_version_status = map['LatestVersionStatus']
        return data
      end
    end

    # Operation Parser for ListDocumentClassifiers
    class ListDocumentClassifiers
      def self.parse(http_resp)
        data = Types::ListDocumentClassifiersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.document_classifier_properties_list = (DocumentClassifierPropertiesList.parse(map['DocumentClassifierPropertiesList']) unless map['DocumentClassifierPropertiesList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class DocumentClassifierPropertiesList
      def self.parse(list)
        list.map do |value|
          DocumentClassifierProperties.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListDominantLanguageDetectionJobs
    class ListDominantLanguageDetectionJobs
      def self.parse(http_resp)
        data = Types::ListDominantLanguageDetectionJobsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.dominant_language_detection_job_properties_list = (DominantLanguageDetectionJobPropertiesList.parse(map['DominantLanguageDetectionJobPropertiesList']) unless map['DominantLanguageDetectionJobPropertiesList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class DominantLanguageDetectionJobPropertiesList
      def self.parse(list)
        list.map do |value|
          DominantLanguageDetectionJobProperties.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListEndpoints
    class ListEndpoints
      def self.parse(http_resp)
        data = Types::ListEndpointsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.endpoint_properties_list = (EndpointPropertiesList.parse(map['EndpointPropertiesList']) unless map['EndpointPropertiesList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class EndpointPropertiesList
      def self.parse(list)
        list.map do |value|
          EndpointProperties.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListEntitiesDetectionJobs
    class ListEntitiesDetectionJobs
      def self.parse(http_resp)
        data = Types::ListEntitiesDetectionJobsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.entities_detection_job_properties_list = (EntitiesDetectionJobPropertiesList.parse(map['EntitiesDetectionJobPropertiesList']) unless map['EntitiesDetectionJobPropertiesList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class EntitiesDetectionJobPropertiesList
      def self.parse(list)
        list.map do |value|
          EntitiesDetectionJobProperties.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListEntityRecognizerSummaries
    class ListEntityRecognizerSummaries
      def self.parse(http_resp)
        data = Types::ListEntityRecognizerSummariesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.entity_recognizer_summaries_list = (EntityRecognizerSummariesList.parse(map['EntityRecognizerSummariesList']) unless map['EntityRecognizerSummariesList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class EntityRecognizerSummariesList
      def self.parse(list)
        list.map do |value|
          EntityRecognizerSummary.parse(value) unless value.nil?
        end
      end
    end

    class EntityRecognizerSummary
      def self.parse(map)
        data = Types::EntityRecognizerSummary.new
        data.recognizer_name = map['RecognizerName']
        data.number_of_versions = map['NumberOfVersions']
        data.latest_version_created_at = Time.at(map['LatestVersionCreatedAt'].to_i) if map['LatestVersionCreatedAt']
        data.latest_version_name = map['LatestVersionName']
        data.latest_version_status = map['LatestVersionStatus']
        return data
      end
    end

    # Operation Parser for ListEntityRecognizers
    class ListEntityRecognizers
      def self.parse(http_resp)
        data = Types::ListEntityRecognizersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.entity_recognizer_properties_list = (EntityRecognizerPropertiesList.parse(map['EntityRecognizerPropertiesList']) unless map['EntityRecognizerPropertiesList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class EntityRecognizerPropertiesList
      def self.parse(list)
        list.map do |value|
          EntityRecognizerProperties.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListEventsDetectionJobs
    class ListEventsDetectionJobs
      def self.parse(http_resp)
        data = Types::ListEventsDetectionJobsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.events_detection_job_properties_list = (EventsDetectionJobPropertiesList.parse(map['EventsDetectionJobPropertiesList']) unless map['EventsDetectionJobPropertiesList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class EventsDetectionJobPropertiesList
      def self.parse(list)
        list.map do |value|
          EventsDetectionJobProperties.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListKeyPhrasesDetectionJobs
    class ListKeyPhrasesDetectionJobs
      def self.parse(http_resp)
        data = Types::ListKeyPhrasesDetectionJobsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.key_phrases_detection_job_properties_list = (KeyPhrasesDetectionJobPropertiesList.parse(map['KeyPhrasesDetectionJobPropertiesList']) unless map['KeyPhrasesDetectionJobPropertiesList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class KeyPhrasesDetectionJobPropertiesList
      def self.parse(list)
        list.map do |value|
          KeyPhrasesDetectionJobProperties.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListPiiEntitiesDetectionJobs
    class ListPiiEntitiesDetectionJobs
      def self.parse(http_resp)
        data = Types::ListPiiEntitiesDetectionJobsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.pii_entities_detection_job_properties_list = (PiiEntitiesDetectionJobPropertiesList.parse(map['PiiEntitiesDetectionJobPropertiesList']) unless map['PiiEntitiesDetectionJobPropertiesList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class PiiEntitiesDetectionJobPropertiesList
      def self.parse(list)
        list.map do |value|
          PiiEntitiesDetectionJobProperties.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListSentimentDetectionJobs
    class ListSentimentDetectionJobs
      def self.parse(http_resp)
        data = Types::ListSentimentDetectionJobsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.sentiment_detection_job_properties_list = (SentimentDetectionJobPropertiesList.parse(map['SentimentDetectionJobPropertiesList']) unless map['SentimentDetectionJobPropertiesList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class SentimentDetectionJobPropertiesList
      def self.parse(list)
        list.map do |value|
          SentimentDetectionJobProperties.parse(value) unless value.nil?
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
        data.resource_arn = map['ResourceArn']
        data.tags = (TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    class TagList
      def self.parse(list)
        list.map do |value|
          Tag.parse(value) unless value.nil?
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

    # Operation Parser for ListTargetedSentimentDetectionJobs
    class ListTargetedSentimentDetectionJobs
      def self.parse(http_resp)
        data = Types::ListTargetedSentimentDetectionJobsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.targeted_sentiment_detection_job_properties_list = (TargetedSentimentDetectionJobPropertiesList.parse(map['TargetedSentimentDetectionJobPropertiesList']) unless map['TargetedSentimentDetectionJobPropertiesList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class TargetedSentimentDetectionJobPropertiesList
      def self.parse(list)
        list.map do |value|
          TargetedSentimentDetectionJobProperties.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListTopicsDetectionJobs
    class ListTopicsDetectionJobs
      def self.parse(http_resp)
        data = Types::ListTopicsDetectionJobsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.topics_detection_job_properties_list = (TopicsDetectionJobPropertiesList.parse(map['TopicsDetectionJobPropertiesList']) unless map['TopicsDetectionJobPropertiesList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class TopicsDetectionJobPropertiesList
      def self.parse(list)
        list.map do |value|
          TopicsDetectionJobProperties.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for PutResourcePolicy
    class PutResourcePolicy
      def self.parse(http_resp)
        data = Types::PutResourcePolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.policy_revision_id = map['PolicyRevisionId']
        data
      end
    end

    # Operation Parser for StartDocumentClassificationJob
    class StartDocumentClassificationJob
      def self.parse(http_resp)
        data = Types::StartDocumentClassificationJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_id = map['JobId']
        data.job_arn = map['JobArn']
        data.job_status = map['JobStatus']
        data
      end
    end

    # Operation Parser for StartDominantLanguageDetectionJob
    class StartDominantLanguageDetectionJob
      def self.parse(http_resp)
        data = Types::StartDominantLanguageDetectionJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_id = map['JobId']
        data.job_arn = map['JobArn']
        data.job_status = map['JobStatus']
        data
      end
    end

    # Operation Parser for StartEntitiesDetectionJob
    class StartEntitiesDetectionJob
      def self.parse(http_resp)
        data = Types::StartEntitiesDetectionJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_id = map['JobId']
        data.job_arn = map['JobArn']
        data.job_status = map['JobStatus']
        data
      end
    end

    # Operation Parser for StartEventsDetectionJob
    class StartEventsDetectionJob
      def self.parse(http_resp)
        data = Types::StartEventsDetectionJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_id = map['JobId']
        data.job_arn = map['JobArn']
        data.job_status = map['JobStatus']
        data
      end
    end

    # Operation Parser for StartKeyPhrasesDetectionJob
    class StartKeyPhrasesDetectionJob
      def self.parse(http_resp)
        data = Types::StartKeyPhrasesDetectionJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_id = map['JobId']
        data.job_arn = map['JobArn']
        data.job_status = map['JobStatus']
        data
      end
    end

    # Operation Parser for StartPiiEntitiesDetectionJob
    class StartPiiEntitiesDetectionJob
      def self.parse(http_resp)
        data = Types::StartPiiEntitiesDetectionJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_id = map['JobId']
        data.job_arn = map['JobArn']
        data.job_status = map['JobStatus']
        data
      end
    end

    # Operation Parser for StartSentimentDetectionJob
    class StartSentimentDetectionJob
      def self.parse(http_resp)
        data = Types::StartSentimentDetectionJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_id = map['JobId']
        data.job_arn = map['JobArn']
        data.job_status = map['JobStatus']
        data
      end
    end

    # Operation Parser for StartTargetedSentimentDetectionJob
    class StartTargetedSentimentDetectionJob
      def self.parse(http_resp)
        data = Types::StartTargetedSentimentDetectionJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_id = map['JobId']
        data.job_arn = map['JobArn']
        data.job_status = map['JobStatus']
        data
      end
    end

    # Operation Parser for StartTopicsDetectionJob
    class StartTopicsDetectionJob
      def self.parse(http_resp)
        data = Types::StartTopicsDetectionJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_id = map['JobId']
        data.job_arn = map['JobArn']
        data.job_status = map['JobStatus']
        data
      end
    end

    # Operation Parser for StopDominantLanguageDetectionJob
    class StopDominantLanguageDetectionJob
      def self.parse(http_resp)
        data = Types::StopDominantLanguageDetectionJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_id = map['JobId']
        data.job_status = map['JobStatus']
        data
      end
    end

    # Operation Parser for StopEntitiesDetectionJob
    class StopEntitiesDetectionJob
      def self.parse(http_resp)
        data = Types::StopEntitiesDetectionJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_id = map['JobId']
        data.job_status = map['JobStatus']
        data
      end
    end

    # Operation Parser for StopEventsDetectionJob
    class StopEventsDetectionJob
      def self.parse(http_resp)
        data = Types::StopEventsDetectionJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_id = map['JobId']
        data.job_status = map['JobStatus']
        data
      end
    end

    # Operation Parser for StopKeyPhrasesDetectionJob
    class StopKeyPhrasesDetectionJob
      def self.parse(http_resp)
        data = Types::StopKeyPhrasesDetectionJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_id = map['JobId']
        data.job_status = map['JobStatus']
        data
      end
    end

    # Operation Parser for StopPiiEntitiesDetectionJob
    class StopPiiEntitiesDetectionJob
      def self.parse(http_resp)
        data = Types::StopPiiEntitiesDetectionJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_id = map['JobId']
        data.job_status = map['JobStatus']
        data
      end
    end

    # Operation Parser for StopSentimentDetectionJob
    class StopSentimentDetectionJob
      def self.parse(http_resp)
        data = Types::StopSentimentDetectionJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_id = map['JobId']
        data.job_status = map['JobStatus']
        data
      end
    end

    # Operation Parser for StopTargetedSentimentDetectionJob
    class StopTargetedSentimentDetectionJob
      def self.parse(http_resp)
        data = Types::StopTargetedSentimentDetectionJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_id = map['JobId']
        data.job_status = map['JobStatus']
        data
      end
    end

    # Operation Parser for StopTrainingDocumentClassifier
    class StopTrainingDocumentClassifier
      def self.parse(http_resp)
        data = Types::StopTrainingDocumentClassifierOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for StopTrainingEntityRecognizer
    class StopTrainingEntityRecognizer
      def self.parse(http_resp)
        data = Types::StopTrainingEntityRecognizerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
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

    # Error Parser for ConcurrentModificationException
    class ConcurrentModificationException
      def self.parse(http_resp)
        data = Types::ConcurrentModificationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
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

    # Error Parser for TooManyTagKeysException
    class TooManyTagKeysException
      def self.parse(http_resp)
        data = Types::TooManyTagKeysException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for UpdateEndpoint
    class UpdateEndpoint
      def self.parse(http_resp)
        data = Types::UpdateEndpointOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end
  end
end
