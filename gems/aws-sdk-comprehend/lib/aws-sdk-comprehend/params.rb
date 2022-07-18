# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::Comprehend
  module Params

    module AttributeNamesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AugmentedManifestsListItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AugmentedManifestsListItem, context: context)
        type = Types::AugmentedManifestsListItem.new
        type.s3_uri = params[:s3_uri]
        type.split = params[:split]
        type.attribute_names = AttributeNamesList.build(params[:attribute_names], context: "#{context}[:attribute_names]") unless params[:attribute_names].nil?
        type.annotation_data_s3_uri = params[:annotation_data_s3_uri]
        type.source_documents_s3_uri = params[:source_documents_s3_uri]
        type.document_type = params[:document_type]
        type
      end
    end

    module BatchDetectDominantLanguageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDetectDominantLanguageInput, context: context)
        type = Types::BatchDetectDominantLanguageInput.new
        type.text_list = CustomerInputStringList.build(params[:text_list], context: "#{context}[:text_list]") unless params[:text_list].nil?
        type
      end
    end

    module BatchDetectDominantLanguageItemResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDetectDominantLanguageItemResult, context: context)
        type = Types::BatchDetectDominantLanguageItemResult.new
        type.index = params[:index]
        type.languages = ListOfDominantLanguages.build(params[:languages], context: "#{context}[:languages]") unless params[:languages].nil?
        type
      end
    end

    module BatchDetectDominantLanguageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDetectDominantLanguageOutput, context: context)
        type = Types::BatchDetectDominantLanguageOutput.new
        type.result_list = ListOfDetectDominantLanguageResult.build(params[:result_list], context: "#{context}[:result_list]") unless params[:result_list].nil?
        type.error_list = BatchItemErrorList.build(params[:error_list], context: "#{context}[:error_list]") unless params[:error_list].nil?
        type
      end
    end

    module BatchDetectEntitiesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDetectEntitiesInput, context: context)
        type = Types::BatchDetectEntitiesInput.new
        type.text_list = CustomerInputStringList.build(params[:text_list], context: "#{context}[:text_list]") unless params[:text_list].nil?
        type.language_code = params[:language_code]
        type
      end
    end

    module BatchDetectEntitiesItemResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDetectEntitiesItemResult, context: context)
        type = Types::BatchDetectEntitiesItemResult.new
        type.index = params[:index]
        type.entities = ListOfEntities.build(params[:entities], context: "#{context}[:entities]") unless params[:entities].nil?
        type
      end
    end

    module BatchDetectEntitiesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDetectEntitiesOutput, context: context)
        type = Types::BatchDetectEntitiesOutput.new
        type.result_list = ListOfDetectEntitiesResult.build(params[:result_list], context: "#{context}[:result_list]") unless params[:result_list].nil?
        type.error_list = BatchItemErrorList.build(params[:error_list], context: "#{context}[:error_list]") unless params[:error_list].nil?
        type
      end
    end

    module BatchDetectKeyPhrasesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDetectKeyPhrasesInput, context: context)
        type = Types::BatchDetectKeyPhrasesInput.new
        type.text_list = CustomerInputStringList.build(params[:text_list], context: "#{context}[:text_list]") unless params[:text_list].nil?
        type.language_code = params[:language_code]
        type
      end
    end

    module BatchDetectKeyPhrasesItemResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDetectKeyPhrasesItemResult, context: context)
        type = Types::BatchDetectKeyPhrasesItemResult.new
        type.index = params[:index]
        type.key_phrases = ListOfKeyPhrases.build(params[:key_phrases], context: "#{context}[:key_phrases]") unless params[:key_phrases].nil?
        type
      end
    end

    module BatchDetectKeyPhrasesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDetectKeyPhrasesOutput, context: context)
        type = Types::BatchDetectKeyPhrasesOutput.new
        type.result_list = ListOfDetectKeyPhrasesResult.build(params[:result_list], context: "#{context}[:result_list]") unless params[:result_list].nil?
        type.error_list = BatchItemErrorList.build(params[:error_list], context: "#{context}[:error_list]") unless params[:error_list].nil?
        type
      end
    end

    module BatchDetectSentimentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDetectSentimentInput, context: context)
        type = Types::BatchDetectSentimentInput.new
        type.text_list = CustomerInputStringList.build(params[:text_list], context: "#{context}[:text_list]") unless params[:text_list].nil?
        type.language_code = params[:language_code]
        type
      end
    end

    module BatchDetectSentimentItemResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDetectSentimentItemResult, context: context)
        type = Types::BatchDetectSentimentItemResult.new
        type.index = params[:index]
        type.sentiment = params[:sentiment]
        type.sentiment_score = SentimentScore.build(params[:sentiment_score], context: "#{context}[:sentiment_score]") unless params[:sentiment_score].nil?
        type
      end
    end

    module BatchDetectSentimentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDetectSentimentOutput, context: context)
        type = Types::BatchDetectSentimentOutput.new
        type.result_list = ListOfDetectSentimentResult.build(params[:result_list], context: "#{context}[:result_list]") unless params[:result_list].nil?
        type.error_list = BatchItemErrorList.build(params[:error_list], context: "#{context}[:error_list]") unless params[:error_list].nil?
        type
      end
    end

    module BatchDetectSyntaxInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDetectSyntaxInput, context: context)
        type = Types::BatchDetectSyntaxInput.new
        type.text_list = CustomerInputStringList.build(params[:text_list], context: "#{context}[:text_list]") unless params[:text_list].nil?
        type.language_code = params[:language_code]
        type
      end
    end

    module BatchDetectSyntaxItemResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDetectSyntaxItemResult, context: context)
        type = Types::BatchDetectSyntaxItemResult.new
        type.index = params[:index]
        type.syntax_tokens = ListOfSyntaxTokens.build(params[:syntax_tokens], context: "#{context}[:syntax_tokens]") unless params[:syntax_tokens].nil?
        type
      end
    end

    module BatchDetectSyntaxOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDetectSyntaxOutput, context: context)
        type = Types::BatchDetectSyntaxOutput.new
        type.result_list = ListOfDetectSyntaxResult.build(params[:result_list], context: "#{context}[:result_list]") unless params[:result_list].nil?
        type.error_list = BatchItemErrorList.build(params[:error_list], context: "#{context}[:error_list]") unless params[:error_list].nil?
        type
      end
    end

    module BatchItemError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchItemError, context: context)
        type = Types::BatchItemError.new
        type.index = params[:index]
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type
      end
    end

    module BatchItemErrorList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchItemError.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BatchSizeLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchSizeLimitExceededException, context: context)
        type = Types::BatchSizeLimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module ClassifierEvaluationMetrics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClassifierEvaluationMetrics, context: context)
        type = Types::ClassifierEvaluationMetrics.new
        type.accuracy = params[:accuracy]
        type.precision = params[:precision]
        type.recall = params[:recall]
        type.f1_score = params[:f1_score]
        type.micro_precision = params[:micro_precision]
        type.micro_recall = params[:micro_recall]
        type.micro_f1_score = params[:micro_f1_score]
        type.hamming_loss = params[:hamming_loss]
        type
      end
    end

    module ClassifierMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClassifierMetadata, context: context)
        type = Types::ClassifierMetadata.new
        type.number_of_labels = params[:number_of_labels]
        type.number_of_trained_documents = params[:number_of_trained_documents]
        type.number_of_test_documents = params[:number_of_test_documents]
        type.evaluation_metrics = ClassifierEvaluationMetrics.build(params[:evaluation_metrics], context: "#{context}[:evaluation_metrics]") unless params[:evaluation_metrics].nil?
        type
      end
    end

    module ClassifyDocumentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClassifyDocumentInput, context: context)
        type = Types::ClassifyDocumentInput.new
        type.text = params[:text]
        type.endpoint_arn = params[:endpoint_arn]
        type
      end
    end

    module ClassifyDocumentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClassifyDocumentOutput, context: context)
        type = Types::ClassifyDocumentOutput.new
        type.classes = ListOfClasses.build(params[:classes], context: "#{context}[:classes]") unless params[:classes].nil?
        type.labels = ListOfLabels.build(params[:labels], context: "#{context}[:labels]") unless params[:labels].nil?
        type
      end
    end

    module ConcurrentModificationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConcurrentModificationException, context: context)
        type = Types::ConcurrentModificationException.new
        type.message = params[:message]
        type
      end
    end

    module ContainsPiiEntitiesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContainsPiiEntitiesInput, context: context)
        type = Types::ContainsPiiEntitiesInput.new
        type.text = params[:text]
        type.language_code = params[:language_code]
        type
      end
    end

    module ContainsPiiEntitiesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContainsPiiEntitiesOutput, context: context)
        type = Types::ContainsPiiEntitiesOutput.new
        type.labels = ListOfEntityLabels.build(params[:labels], context: "#{context}[:labels]") unless params[:labels].nil?
        type
      end
    end

    module CreateDocumentClassifierInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDocumentClassifierInput, context: context)
        type = Types::CreateDocumentClassifierInput.new
        type.document_classifier_name = params[:document_classifier_name]
        type.version_name = params[:version_name]
        type.data_access_role_arn = params[:data_access_role_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.input_data_config = DocumentClassifierInputDataConfig.build(params[:input_data_config], context: "#{context}[:input_data_config]") unless params[:input_data_config].nil?
        type.output_data_config = DocumentClassifierOutputDataConfig.build(params[:output_data_config], context: "#{context}[:output_data_config]") unless params[:output_data_config].nil?
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type.language_code = params[:language_code]
        type.volume_kms_key_id = params[:volume_kms_key_id]
        type.vpc_config = VpcConfig.build(params[:vpc_config], context: "#{context}[:vpc_config]") unless params[:vpc_config].nil?
        type.mode = params[:mode]
        type.model_kms_key_id = params[:model_kms_key_id]
        type.model_policy = params[:model_policy]
        type
      end
    end

    module CreateDocumentClassifierOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDocumentClassifierOutput, context: context)
        type = Types::CreateDocumentClassifierOutput.new
        type.document_classifier_arn = params[:document_classifier_arn]
        type
      end
    end

    module CreateEndpointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEndpointInput, context: context)
        type = Types::CreateEndpointInput.new
        type.endpoint_name = params[:endpoint_name]
        type.model_arn = params[:model_arn]
        type.desired_inference_units = params[:desired_inference_units]
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.data_access_role_arn = params[:data_access_role_arn]
        type
      end
    end

    module CreateEndpointOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEndpointOutput, context: context)
        type = Types::CreateEndpointOutput.new
        type.endpoint_arn = params[:endpoint_arn]
        type
      end
    end

    module CreateEntityRecognizerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEntityRecognizerInput, context: context)
        type = Types::CreateEntityRecognizerInput.new
        type.recognizer_name = params[:recognizer_name]
        type.version_name = params[:version_name]
        type.data_access_role_arn = params[:data_access_role_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.input_data_config = EntityRecognizerInputDataConfig.build(params[:input_data_config], context: "#{context}[:input_data_config]") unless params[:input_data_config].nil?
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type.language_code = params[:language_code]
        type.volume_kms_key_id = params[:volume_kms_key_id]
        type.vpc_config = VpcConfig.build(params[:vpc_config], context: "#{context}[:vpc_config]") unless params[:vpc_config].nil?
        type.model_kms_key_id = params[:model_kms_key_id]
        type.model_policy = params[:model_policy]
        type
      end
    end

    module CreateEntityRecognizerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEntityRecognizerOutput, context: context)
        type = Types::CreateEntityRecognizerOutput.new
        type.entity_recognizer_arn = params[:entity_recognizer_arn]
        type
      end
    end

    module CustomerInputStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DeleteDocumentClassifierInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDocumentClassifierInput, context: context)
        type = Types::DeleteDocumentClassifierInput.new
        type.document_classifier_arn = params[:document_classifier_arn]
        type
      end
    end

    module DeleteDocumentClassifierOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDocumentClassifierOutput, context: context)
        type = Types::DeleteDocumentClassifierOutput.new
        type
      end
    end

    module DeleteEndpointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEndpointInput, context: context)
        type = Types::DeleteEndpointInput.new
        type.endpoint_arn = params[:endpoint_arn]
        type
      end
    end

    module DeleteEndpointOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEndpointOutput, context: context)
        type = Types::DeleteEndpointOutput.new
        type
      end
    end

    module DeleteEntityRecognizerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEntityRecognizerInput, context: context)
        type = Types::DeleteEntityRecognizerInput.new
        type.entity_recognizer_arn = params[:entity_recognizer_arn]
        type
      end
    end

    module DeleteEntityRecognizerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEntityRecognizerOutput, context: context)
        type = Types::DeleteEntityRecognizerOutput.new
        type
      end
    end

    module DeleteResourcePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteResourcePolicyInput, context: context)
        type = Types::DeleteResourcePolicyInput.new
        type.resource_arn = params[:resource_arn]
        type.policy_revision_id = params[:policy_revision_id]
        type
      end
    end

    module DeleteResourcePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteResourcePolicyOutput, context: context)
        type = Types::DeleteResourcePolicyOutput.new
        type
      end
    end

    module DescribeDocumentClassificationJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDocumentClassificationJobInput, context: context)
        type = Types::DescribeDocumentClassificationJobInput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module DescribeDocumentClassificationJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDocumentClassificationJobOutput, context: context)
        type = Types::DescribeDocumentClassificationJobOutput.new
        type.document_classification_job_properties = DocumentClassificationJobProperties.build(params[:document_classification_job_properties], context: "#{context}[:document_classification_job_properties]") unless params[:document_classification_job_properties].nil?
        type
      end
    end

    module DescribeDocumentClassifierInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDocumentClassifierInput, context: context)
        type = Types::DescribeDocumentClassifierInput.new
        type.document_classifier_arn = params[:document_classifier_arn]
        type
      end
    end

    module DescribeDocumentClassifierOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDocumentClassifierOutput, context: context)
        type = Types::DescribeDocumentClassifierOutput.new
        type.document_classifier_properties = DocumentClassifierProperties.build(params[:document_classifier_properties], context: "#{context}[:document_classifier_properties]") unless params[:document_classifier_properties].nil?
        type
      end
    end

    module DescribeDominantLanguageDetectionJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDominantLanguageDetectionJobInput, context: context)
        type = Types::DescribeDominantLanguageDetectionJobInput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module DescribeDominantLanguageDetectionJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDominantLanguageDetectionJobOutput, context: context)
        type = Types::DescribeDominantLanguageDetectionJobOutput.new
        type.dominant_language_detection_job_properties = DominantLanguageDetectionJobProperties.build(params[:dominant_language_detection_job_properties], context: "#{context}[:dominant_language_detection_job_properties]") unless params[:dominant_language_detection_job_properties].nil?
        type
      end
    end

    module DescribeEndpointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEndpointInput, context: context)
        type = Types::DescribeEndpointInput.new
        type.endpoint_arn = params[:endpoint_arn]
        type
      end
    end

    module DescribeEndpointOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEndpointOutput, context: context)
        type = Types::DescribeEndpointOutput.new
        type.endpoint_properties = EndpointProperties.build(params[:endpoint_properties], context: "#{context}[:endpoint_properties]") unless params[:endpoint_properties].nil?
        type
      end
    end

    module DescribeEntitiesDetectionJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEntitiesDetectionJobInput, context: context)
        type = Types::DescribeEntitiesDetectionJobInput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module DescribeEntitiesDetectionJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEntitiesDetectionJobOutput, context: context)
        type = Types::DescribeEntitiesDetectionJobOutput.new
        type.entities_detection_job_properties = EntitiesDetectionJobProperties.build(params[:entities_detection_job_properties], context: "#{context}[:entities_detection_job_properties]") unless params[:entities_detection_job_properties].nil?
        type
      end
    end

    module DescribeEntityRecognizerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEntityRecognizerInput, context: context)
        type = Types::DescribeEntityRecognizerInput.new
        type.entity_recognizer_arn = params[:entity_recognizer_arn]
        type
      end
    end

    module DescribeEntityRecognizerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEntityRecognizerOutput, context: context)
        type = Types::DescribeEntityRecognizerOutput.new
        type.entity_recognizer_properties = EntityRecognizerProperties.build(params[:entity_recognizer_properties], context: "#{context}[:entity_recognizer_properties]") unless params[:entity_recognizer_properties].nil?
        type
      end
    end

    module DescribeEventsDetectionJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEventsDetectionJobInput, context: context)
        type = Types::DescribeEventsDetectionJobInput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module DescribeEventsDetectionJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEventsDetectionJobOutput, context: context)
        type = Types::DescribeEventsDetectionJobOutput.new
        type.events_detection_job_properties = EventsDetectionJobProperties.build(params[:events_detection_job_properties], context: "#{context}[:events_detection_job_properties]") unless params[:events_detection_job_properties].nil?
        type
      end
    end

    module DescribeKeyPhrasesDetectionJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeKeyPhrasesDetectionJobInput, context: context)
        type = Types::DescribeKeyPhrasesDetectionJobInput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module DescribeKeyPhrasesDetectionJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeKeyPhrasesDetectionJobOutput, context: context)
        type = Types::DescribeKeyPhrasesDetectionJobOutput.new
        type.key_phrases_detection_job_properties = KeyPhrasesDetectionJobProperties.build(params[:key_phrases_detection_job_properties], context: "#{context}[:key_phrases_detection_job_properties]") unless params[:key_phrases_detection_job_properties].nil?
        type
      end
    end

    module DescribePiiEntitiesDetectionJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePiiEntitiesDetectionJobInput, context: context)
        type = Types::DescribePiiEntitiesDetectionJobInput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module DescribePiiEntitiesDetectionJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePiiEntitiesDetectionJobOutput, context: context)
        type = Types::DescribePiiEntitiesDetectionJobOutput.new
        type.pii_entities_detection_job_properties = PiiEntitiesDetectionJobProperties.build(params[:pii_entities_detection_job_properties], context: "#{context}[:pii_entities_detection_job_properties]") unless params[:pii_entities_detection_job_properties].nil?
        type
      end
    end

    module DescribeResourcePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeResourcePolicyInput, context: context)
        type = Types::DescribeResourcePolicyInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module DescribeResourcePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeResourcePolicyOutput, context: context)
        type = Types::DescribeResourcePolicyOutput.new
        type.resource_policy = params[:resource_policy]
        type.creation_time = params[:creation_time]
        type.last_modified_time = params[:last_modified_time]
        type.policy_revision_id = params[:policy_revision_id]
        type
      end
    end

    module DescribeSentimentDetectionJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSentimentDetectionJobInput, context: context)
        type = Types::DescribeSentimentDetectionJobInput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module DescribeSentimentDetectionJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSentimentDetectionJobOutput, context: context)
        type = Types::DescribeSentimentDetectionJobOutput.new
        type.sentiment_detection_job_properties = SentimentDetectionJobProperties.build(params[:sentiment_detection_job_properties], context: "#{context}[:sentiment_detection_job_properties]") unless params[:sentiment_detection_job_properties].nil?
        type
      end
    end

    module DescribeTargetedSentimentDetectionJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTargetedSentimentDetectionJobInput, context: context)
        type = Types::DescribeTargetedSentimentDetectionJobInput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module DescribeTargetedSentimentDetectionJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTargetedSentimentDetectionJobOutput, context: context)
        type = Types::DescribeTargetedSentimentDetectionJobOutput.new
        type.targeted_sentiment_detection_job_properties = TargetedSentimentDetectionJobProperties.build(params[:targeted_sentiment_detection_job_properties], context: "#{context}[:targeted_sentiment_detection_job_properties]") unless params[:targeted_sentiment_detection_job_properties].nil?
        type
      end
    end

    module DescribeTopicsDetectionJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTopicsDetectionJobInput, context: context)
        type = Types::DescribeTopicsDetectionJobInput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module DescribeTopicsDetectionJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTopicsDetectionJobOutput, context: context)
        type = Types::DescribeTopicsDetectionJobOutput.new
        type.topics_detection_job_properties = TopicsDetectionJobProperties.build(params[:topics_detection_job_properties], context: "#{context}[:topics_detection_job_properties]") unless params[:topics_detection_job_properties].nil?
        type
      end
    end

    module DetectDominantLanguageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetectDominantLanguageInput, context: context)
        type = Types::DetectDominantLanguageInput.new
        type.text = params[:text]
        type
      end
    end

    module DetectDominantLanguageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetectDominantLanguageOutput, context: context)
        type = Types::DetectDominantLanguageOutput.new
        type.languages = ListOfDominantLanguages.build(params[:languages], context: "#{context}[:languages]") unless params[:languages].nil?
        type
      end
    end

    module DetectEntitiesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetectEntitiesInput, context: context)
        type = Types::DetectEntitiesInput.new
        type.text = params[:text]
        type.language_code = params[:language_code]
        type.endpoint_arn = params[:endpoint_arn]
        type
      end
    end

    module DetectEntitiesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetectEntitiesOutput, context: context)
        type = Types::DetectEntitiesOutput.new
        type.entities = ListOfEntities.build(params[:entities], context: "#{context}[:entities]") unless params[:entities].nil?
        type
      end
    end

    module DetectKeyPhrasesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetectKeyPhrasesInput, context: context)
        type = Types::DetectKeyPhrasesInput.new
        type.text = params[:text]
        type.language_code = params[:language_code]
        type
      end
    end

    module DetectKeyPhrasesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetectKeyPhrasesOutput, context: context)
        type = Types::DetectKeyPhrasesOutput.new
        type.key_phrases = ListOfKeyPhrases.build(params[:key_phrases], context: "#{context}[:key_phrases]") unless params[:key_phrases].nil?
        type
      end
    end

    module DetectPiiEntitiesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetectPiiEntitiesInput, context: context)
        type = Types::DetectPiiEntitiesInput.new
        type.text = params[:text]
        type.language_code = params[:language_code]
        type
      end
    end

    module DetectPiiEntitiesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetectPiiEntitiesOutput, context: context)
        type = Types::DetectPiiEntitiesOutput.new
        type.entities = ListOfPiiEntities.build(params[:entities], context: "#{context}[:entities]") unless params[:entities].nil?
        type
      end
    end

    module DetectSentimentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetectSentimentInput, context: context)
        type = Types::DetectSentimentInput.new
        type.text = params[:text]
        type.language_code = params[:language_code]
        type
      end
    end

    module DetectSentimentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetectSentimentOutput, context: context)
        type = Types::DetectSentimentOutput.new
        type.sentiment = params[:sentiment]
        type.sentiment_score = SentimentScore.build(params[:sentiment_score], context: "#{context}[:sentiment_score]") unless params[:sentiment_score].nil?
        type
      end
    end

    module DetectSyntaxInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetectSyntaxInput, context: context)
        type = Types::DetectSyntaxInput.new
        type.text = params[:text]
        type.language_code = params[:language_code]
        type
      end
    end

    module DetectSyntaxOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetectSyntaxOutput, context: context)
        type = Types::DetectSyntaxOutput.new
        type.syntax_tokens = ListOfSyntaxTokens.build(params[:syntax_tokens], context: "#{context}[:syntax_tokens]") unless params[:syntax_tokens].nil?
        type
      end
    end

    module DocumentClass
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DocumentClass, context: context)
        type = Types::DocumentClass.new
        type.name = params[:name]
        type.score = params[:score]
        type
      end
    end

    module DocumentClassificationJobFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DocumentClassificationJobFilter, context: context)
        type = Types::DocumentClassificationJobFilter.new
        type.job_name = params[:job_name]
        type.job_status = params[:job_status]
        type.submit_time_before = params[:submit_time_before]
        type.submit_time_after = params[:submit_time_after]
        type
      end
    end

    module DocumentClassificationJobProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DocumentClassificationJobProperties, context: context)
        type = Types::DocumentClassificationJobProperties.new
        type.job_id = params[:job_id]
        type.job_arn = params[:job_arn]
        type.job_name = params[:job_name]
        type.job_status = params[:job_status]
        type.message = params[:message]
        type.submit_time = params[:submit_time]
        type.end_time = params[:end_time]
        type.document_classifier_arn = params[:document_classifier_arn]
        type.input_data_config = InputDataConfig.build(params[:input_data_config], context: "#{context}[:input_data_config]") unless params[:input_data_config].nil?
        type.output_data_config = OutputDataConfig.build(params[:output_data_config], context: "#{context}[:output_data_config]") unless params[:output_data_config].nil?
        type.data_access_role_arn = params[:data_access_role_arn]
        type.volume_kms_key_id = params[:volume_kms_key_id]
        type.vpc_config = VpcConfig.build(params[:vpc_config], context: "#{context}[:vpc_config]") unless params[:vpc_config].nil?
        type
      end
    end

    module DocumentClassificationJobPropertiesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DocumentClassificationJobProperties.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DocumentClassifierAugmentedManifestsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AugmentedManifestsListItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DocumentClassifierFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DocumentClassifierFilter, context: context)
        type = Types::DocumentClassifierFilter.new
        type.status = params[:status]
        type.document_classifier_name = params[:document_classifier_name]
        type.submit_time_before = params[:submit_time_before]
        type.submit_time_after = params[:submit_time_after]
        type
      end
    end

    module DocumentClassifierInputDataConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DocumentClassifierInputDataConfig, context: context)
        type = Types::DocumentClassifierInputDataConfig.new
        type.data_format = params[:data_format]
        type.s3_uri = params[:s3_uri]
        type.test_s3_uri = params[:test_s3_uri]
        type.label_delimiter = params[:label_delimiter]
        type.augmented_manifests = DocumentClassifierAugmentedManifestsList.build(params[:augmented_manifests], context: "#{context}[:augmented_manifests]") unless params[:augmented_manifests].nil?
        type
      end
    end

    module DocumentClassifierOutputDataConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DocumentClassifierOutputDataConfig, context: context)
        type = Types::DocumentClassifierOutputDataConfig.new
        type.s3_uri = params[:s3_uri]
        type.kms_key_id = params[:kms_key_id]
        type
      end
    end

    module DocumentClassifierProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DocumentClassifierProperties, context: context)
        type = Types::DocumentClassifierProperties.new
        type.document_classifier_arn = params[:document_classifier_arn]
        type.language_code = params[:language_code]
        type.status = params[:status]
        type.message = params[:message]
        type.submit_time = params[:submit_time]
        type.end_time = params[:end_time]
        type.training_start_time = params[:training_start_time]
        type.training_end_time = params[:training_end_time]
        type.input_data_config = DocumentClassifierInputDataConfig.build(params[:input_data_config], context: "#{context}[:input_data_config]") unless params[:input_data_config].nil?
        type.output_data_config = DocumentClassifierOutputDataConfig.build(params[:output_data_config], context: "#{context}[:output_data_config]") unless params[:output_data_config].nil?
        type.classifier_metadata = ClassifierMetadata.build(params[:classifier_metadata], context: "#{context}[:classifier_metadata]") unless params[:classifier_metadata].nil?
        type.data_access_role_arn = params[:data_access_role_arn]
        type.volume_kms_key_id = params[:volume_kms_key_id]
        type.vpc_config = VpcConfig.build(params[:vpc_config], context: "#{context}[:vpc_config]") unless params[:vpc_config].nil?
        type.mode = params[:mode]
        type.model_kms_key_id = params[:model_kms_key_id]
        type.version_name = params[:version_name]
        type.source_model_arn = params[:source_model_arn]
        type
      end
    end

    module DocumentClassifierPropertiesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DocumentClassifierProperties.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DocumentClassifierSummariesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DocumentClassifierSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DocumentClassifierSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DocumentClassifierSummary, context: context)
        type = Types::DocumentClassifierSummary.new
        type.document_classifier_name = params[:document_classifier_name]
        type.number_of_versions = params[:number_of_versions]
        type.latest_version_created_at = params[:latest_version_created_at]
        type.latest_version_name = params[:latest_version_name]
        type.latest_version_status = params[:latest_version_status]
        type
      end
    end

    module DocumentLabel
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DocumentLabel, context: context)
        type = Types::DocumentLabel.new
        type.name = params[:name]
        type.score = params[:score]
        type
      end
    end

    module DocumentReaderConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DocumentReaderConfig, context: context)
        type = Types::DocumentReaderConfig.new
        type.document_read_action = params[:document_read_action]
        type.document_read_mode = params[:document_read_mode]
        type.feature_types = ListOfDocumentReadFeatureTypes.build(params[:feature_types], context: "#{context}[:feature_types]") unless params[:feature_types].nil?
        type
      end
    end

    module DominantLanguage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DominantLanguage, context: context)
        type = Types::DominantLanguage.new
        type.language_code = params[:language_code]
        type.score = params[:score]
        type
      end
    end

    module DominantLanguageDetectionJobFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DominantLanguageDetectionJobFilter, context: context)
        type = Types::DominantLanguageDetectionJobFilter.new
        type.job_name = params[:job_name]
        type.job_status = params[:job_status]
        type.submit_time_before = params[:submit_time_before]
        type.submit_time_after = params[:submit_time_after]
        type
      end
    end

    module DominantLanguageDetectionJobProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DominantLanguageDetectionJobProperties, context: context)
        type = Types::DominantLanguageDetectionJobProperties.new
        type.job_id = params[:job_id]
        type.job_arn = params[:job_arn]
        type.job_name = params[:job_name]
        type.job_status = params[:job_status]
        type.message = params[:message]
        type.submit_time = params[:submit_time]
        type.end_time = params[:end_time]
        type.input_data_config = InputDataConfig.build(params[:input_data_config], context: "#{context}[:input_data_config]") unless params[:input_data_config].nil?
        type.output_data_config = OutputDataConfig.build(params[:output_data_config], context: "#{context}[:output_data_config]") unless params[:output_data_config].nil?
        type.data_access_role_arn = params[:data_access_role_arn]
        type.volume_kms_key_id = params[:volume_kms_key_id]
        type.vpc_config = VpcConfig.build(params[:vpc_config], context: "#{context}[:vpc_config]") unless params[:vpc_config].nil?
        type
      end
    end

    module DominantLanguageDetectionJobPropertiesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DominantLanguageDetectionJobProperties.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EndpointFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EndpointFilter, context: context)
        type = Types::EndpointFilter.new
        type.model_arn = params[:model_arn]
        type.status = params[:status]
        type.creation_time_before = params[:creation_time_before]
        type.creation_time_after = params[:creation_time_after]
        type
      end
    end

    module EndpointProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EndpointProperties, context: context)
        type = Types::EndpointProperties.new
        type.endpoint_arn = params[:endpoint_arn]
        type.status = params[:status]
        type.message = params[:message]
        type.model_arn = params[:model_arn]
        type.desired_model_arn = params[:desired_model_arn]
        type.desired_inference_units = params[:desired_inference_units]
        type.current_inference_units = params[:current_inference_units]
        type.creation_time = params[:creation_time]
        type.last_modified_time = params[:last_modified_time]
        type.data_access_role_arn = params[:data_access_role_arn]
        type.desired_data_access_role_arn = params[:desired_data_access_role_arn]
        type
      end
    end

    module EndpointPropertiesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EndpointProperties.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EntitiesDetectionJobFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EntitiesDetectionJobFilter, context: context)
        type = Types::EntitiesDetectionJobFilter.new
        type.job_name = params[:job_name]
        type.job_status = params[:job_status]
        type.submit_time_before = params[:submit_time_before]
        type.submit_time_after = params[:submit_time_after]
        type
      end
    end

    module EntitiesDetectionJobProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EntitiesDetectionJobProperties, context: context)
        type = Types::EntitiesDetectionJobProperties.new
        type.job_id = params[:job_id]
        type.job_arn = params[:job_arn]
        type.job_name = params[:job_name]
        type.job_status = params[:job_status]
        type.message = params[:message]
        type.submit_time = params[:submit_time]
        type.end_time = params[:end_time]
        type.entity_recognizer_arn = params[:entity_recognizer_arn]
        type.input_data_config = InputDataConfig.build(params[:input_data_config], context: "#{context}[:input_data_config]") unless params[:input_data_config].nil?
        type.output_data_config = OutputDataConfig.build(params[:output_data_config], context: "#{context}[:output_data_config]") unless params[:output_data_config].nil?
        type.language_code = params[:language_code]
        type.data_access_role_arn = params[:data_access_role_arn]
        type.volume_kms_key_id = params[:volume_kms_key_id]
        type.vpc_config = VpcConfig.build(params[:vpc_config], context: "#{context}[:vpc_config]") unless params[:vpc_config].nil?
        type
      end
    end

    module EntitiesDetectionJobPropertiesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EntitiesDetectionJobProperties.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Entity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Entity, context: context)
        type = Types::Entity.new
        type.score = params[:score]
        type.type = params[:type]
        type.text = params[:text]
        type.begin_offset = params[:begin_offset]
        type.end_offset = params[:end_offset]
        type
      end
    end

    module EntityLabel
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EntityLabel, context: context)
        type = Types::EntityLabel.new
        type.name = params[:name]
        type.score = params[:score]
        type
      end
    end

    module EntityRecognizerAnnotations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EntityRecognizerAnnotations, context: context)
        type = Types::EntityRecognizerAnnotations.new
        type.s3_uri = params[:s3_uri]
        type.test_s3_uri = params[:test_s3_uri]
        type
      end
    end

    module EntityRecognizerAugmentedManifestsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AugmentedManifestsListItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EntityRecognizerDocuments
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EntityRecognizerDocuments, context: context)
        type = Types::EntityRecognizerDocuments.new
        type.s3_uri = params[:s3_uri]
        type.test_s3_uri = params[:test_s3_uri]
        type.input_format = params[:input_format]
        type
      end
    end

    module EntityRecognizerEntityList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EntityRecognizerEntityList, context: context)
        type = Types::EntityRecognizerEntityList.new
        type.s3_uri = params[:s3_uri]
        type
      end
    end

    module EntityRecognizerEvaluationMetrics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EntityRecognizerEvaluationMetrics, context: context)
        type = Types::EntityRecognizerEvaluationMetrics.new
        type.precision = params[:precision]
        type.recall = params[:recall]
        type.f1_score = params[:f1_score]
        type
      end
    end

    module EntityRecognizerFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EntityRecognizerFilter, context: context)
        type = Types::EntityRecognizerFilter.new
        type.status = params[:status]
        type.recognizer_name = params[:recognizer_name]
        type.submit_time_before = params[:submit_time_before]
        type.submit_time_after = params[:submit_time_after]
        type
      end
    end

    module EntityRecognizerInputDataConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EntityRecognizerInputDataConfig, context: context)
        type = Types::EntityRecognizerInputDataConfig.new
        type.data_format = params[:data_format]
        type.entity_types = EntityTypesList.build(params[:entity_types], context: "#{context}[:entity_types]") unless params[:entity_types].nil?
        type.documents = EntityRecognizerDocuments.build(params[:documents], context: "#{context}[:documents]") unless params[:documents].nil?
        type.annotations = EntityRecognizerAnnotations.build(params[:annotations], context: "#{context}[:annotations]") unless params[:annotations].nil?
        type.entity_list = EntityRecognizerEntityList.build(params[:entity_list], context: "#{context}[:entity_list]") unless params[:entity_list].nil?
        type.augmented_manifests = EntityRecognizerAugmentedManifestsList.build(params[:augmented_manifests], context: "#{context}[:augmented_manifests]") unless params[:augmented_manifests].nil?
        type
      end
    end

    module EntityRecognizerMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EntityRecognizerMetadata, context: context)
        type = Types::EntityRecognizerMetadata.new
        type.number_of_trained_documents = params[:number_of_trained_documents]
        type.number_of_test_documents = params[:number_of_test_documents]
        type.evaluation_metrics = EntityRecognizerEvaluationMetrics.build(params[:evaluation_metrics], context: "#{context}[:evaluation_metrics]") unless params[:evaluation_metrics].nil?
        type.entity_types = EntityRecognizerMetadataEntityTypesList.build(params[:entity_types], context: "#{context}[:entity_types]") unless params[:entity_types].nil?
        type
      end
    end

    module EntityRecognizerMetadataEntityTypesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EntityRecognizerMetadataEntityTypesListItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EntityRecognizerMetadataEntityTypesListItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EntityRecognizerMetadataEntityTypesListItem, context: context)
        type = Types::EntityRecognizerMetadataEntityTypesListItem.new
        type.type = params[:type]
        type.evaluation_metrics = EntityTypesEvaluationMetrics.build(params[:evaluation_metrics], context: "#{context}[:evaluation_metrics]") unless params[:evaluation_metrics].nil?
        type.number_of_train_mentions = params[:number_of_train_mentions]
        type
      end
    end

    module EntityRecognizerProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EntityRecognizerProperties, context: context)
        type = Types::EntityRecognizerProperties.new
        type.entity_recognizer_arn = params[:entity_recognizer_arn]
        type.language_code = params[:language_code]
        type.status = params[:status]
        type.message = params[:message]
        type.submit_time = params[:submit_time]
        type.end_time = params[:end_time]
        type.training_start_time = params[:training_start_time]
        type.training_end_time = params[:training_end_time]
        type.input_data_config = EntityRecognizerInputDataConfig.build(params[:input_data_config], context: "#{context}[:input_data_config]") unless params[:input_data_config].nil?
        type.recognizer_metadata = EntityRecognizerMetadata.build(params[:recognizer_metadata], context: "#{context}[:recognizer_metadata]") unless params[:recognizer_metadata].nil?
        type.data_access_role_arn = params[:data_access_role_arn]
        type.volume_kms_key_id = params[:volume_kms_key_id]
        type.vpc_config = VpcConfig.build(params[:vpc_config], context: "#{context}[:vpc_config]") unless params[:vpc_config].nil?
        type.model_kms_key_id = params[:model_kms_key_id]
        type.version_name = params[:version_name]
        type.source_model_arn = params[:source_model_arn]
        type
      end
    end

    module EntityRecognizerPropertiesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EntityRecognizerProperties.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EntityRecognizerSummariesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EntityRecognizerSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EntityRecognizerSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EntityRecognizerSummary, context: context)
        type = Types::EntityRecognizerSummary.new
        type.recognizer_name = params[:recognizer_name]
        type.number_of_versions = params[:number_of_versions]
        type.latest_version_created_at = params[:latest_version_created_at]
        type.latest_version_name = params[:latest_version_name]
        type.latest_version_status = params[:latest_version_status]
        type
      end
    end

    module EntityTypesEvaluationMetrics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EntityTypesEvaluationMetrics, context: context)
        type = Types::EntityTypesEvaluationMetrics.new
        type.precision = params[:precision]
        type.recall = params[:recall]
        type.f1_score = params[:f1_score]
        type
      end
    end

    module EntityTypesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EntityTypesListItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EntityTypesListItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EntityTypesListItem, context: context)
        type = Types::EntityTypesListItem.new
        type.type = params[:type]
        type
      end
    end

    module EventsDetectionJobFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventsDetectionJobFilter, context: context)
        type = Types::EventsDetectionJobFilter.new
        type.job_name = params[:job_name]
        type.job_status = params[:job_status]
        type.submit_time_before = params[:submit_time_before]
        type.submit_time_after = params[:submit_time_after]
        type
      end
    end

    module EventsDetectionJobProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventsDetectionJobProperties, context: context)
        type = Types::EventsDetectionJobProperties.new
        type.job_id = params[:job_id]
        type.job_arn = params[:job_arn]
        type.job_name = params[:job_name]
        type.job_status = params[:job_status]
        type.message = params[:message]
        type.submit_time = params[:submit_time]
        type.end_time = params[:end_time]
        type.input_data_config = InputDataConfig.build(params[:input_data_config], context: "#{context}[:input_data_config]") unless params[:input_data_config].nil?
        type.output_data_config = OutputDataConfig.build(params[:output_data_config], context: "#{context}[:output_data_config]") unless params[:output_data_config].nil?
        type.language_code = params[:language_code]
        type.data_access_role_arn = params[:data_access_role_arn]
        type.target_event_types = TargetEventTypes.build(params[:target_event_types], context: "#{context}[:target_event_types]") unless params[:target_event_types].nil?
        type
      end
    end

    module EventsDetectionJobPropertiesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EventsDetectionJobProperties.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ImportModelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportModelInput, context: context)
        type = Types::ImportModelInput.new
        type.source_model_arn = params[:source_model_arn]
        type.model_name = params[:model_name]
        type.version_name = params[:version_name]
        type.model_kms_key_id = params[:model_kms_key_id]
        type.data_access_role_arn = params[:data_access_role_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ImportModelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportModelOutput, context: context)
        type = Types::ImportModelOutput.new
        type.model_arn = params[:model_arn]
        type
      end
    end

    module InputDataConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InputDataConfig, context: context)
        type = Types::InputDataConfig.new
        type.s3_uri = params[:s3_uri]
        type.input_format = params[:input_format]
        type.document_reader_config = DocumentReaderConfig.build(params[:document_reader_config], context: "#{context}[:document_reader_config]") unless params[:document_reader_config].nil?
        type
      end
    end

    module InternalServerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerException, context: context)
        type = Types::InternalServerException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidFilterException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidFilterException, context: context)
        type = Types::InvalidFilterException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidRequestException, context: context)
        type = Types::InvalidRequestException.new
        type.message = params[:message]
        type
      end
    end

    module JobNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobNotFoundException, context: context)
        type = Types::JobNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module KeyPhrase
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KeyPhrase, context: context)
        type = Types::KeyPhrase.new
        type.score = params[:score]
        type.text = params[:text]
        type.begin_offset = params[:begin_offset]
        type.end_offset = params[:end_offset]
        type
      end
    end

    module KeyPhrasesDetectionJobFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KeyPhrasesDetectionJobFilter, context: context)
        type = Types::KeyPhrasesDetectionJobFilter.new
        type.job_name = params[:job_name]
        type.job_status = params[:job_status]
        type.submit_time_before = params[:submit_time_before]
        type.submit_time_after = params[:submit_time_after]
        type
      end
    end

    module KeyPhrasesDetectionJobProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KeyPhrasesDetectionJobProperties, context: context)
        type = Types::KeyPhrasesDetectionJobProperties.new
        type.job_id = params[:job_id]
        type.job_arn = params[:job_arn]
        type.job_name = params[:job_name]
        type.job_status = params[:job_status]
        type.message = params[:message]
        type.submit_time = params[:submit_time]
        type.end_time = params[:end_time]
        type.input_data_config = InputDataConfig.build(params[:input_data_config], context: "#{context}[:input_data_config]") unless params[:input_data_config].nil?
        type.output_data_config = OutputDataConfig.build(params[:output_data_config], context: "#{context}[:output_data_config]") unless params[:output_data_config].nil?
        type.language_code = params[:language_code]
        type.data_access_role_arn = params[:data_access_role_arn]
        type.volume_kms_key_id = params[:volume_kms_key_id]
        type.vpc_config = VpcConfig.build(params[:vpc_config], context: "#{context}[:vpc_config]") unless params[:vpc_config].nil?
        type
      end
    end

    module KeyPhrasesDetectionJobPropertiesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << KeyPhrasesDetectionJobProperties.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module KmsKeyValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KmsKeyValidationException, context: context)
        type = Types::KmsKeyValidationException.new
        type.message = params[:message]
        type
      end
    end

    module ListDocumentClassificationJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDocumentClassificationJobsInput, context: context)
        type = Types::ListDocumentClassificationJobsInput.new
        type.filter = DocumentClassificationJobFilter.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListDocumentClassificationJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDocumentClassificationJobsOutput, context: context)
        type = Types::ListDocumentClassificationJobsOutput.new
        type.document_classification_job_properties_list = DocumentClassificationJobPropertiesList.build(params[:document_classification_job_properties_list], context: "#{context}[:document_classification_job_properties_list]") unless params[:document_classification_job_properties_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDocumentClassifierSummariesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDocumentClassifierSummariesInput, context: context)
        type = Types::ListDocumentClassifierSummariesInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListDocumentClassifierSummariesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDocumentClassifierSummariesOutput, context: context)
        type = Types::ListDocumentClassifierSummariesOutput.new
        type.document_classifier_summaries_list = DocumentClassifierSummariesList.build(params[:document_classifier_summaries_list], context: "#{context}[:document_classifier_summaries_list]") unless params[:document_classifier_summaries_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDocumentClassifiersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDocumentClassifiersInput, context: context)
        type = Types::ListDocumentClassifiersInput.new
        type.filter = DocumentClassifierFilter.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListDocumentClassifiersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDocumentClassifiersOutput, context: context)
        type = Types::ListDocumentClassifiersOutput.new
        type.document_classifier_properties_list = DocumentClassifierPropertiesList.build(params[:document_classifier_properties_list], context: "#{context}[:document_classifier_properties_list]") unless params[:document_classifier_properties_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDominantLanguageDetectionJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDominantLanguageDetectionJobsInput, context: context)
        type = Types::ListDominantLanguageDetectionJobsInput.new
        type.filter = DominantLanguageDetectionJobFilter.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListDominantLanguageDetectionJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDominantLanguageDetectionJobsOutput, context: context)
        type = Types::ListDominantLanguageDetectionJobsOutput.new
        type.dominant_language_detection_job_properties_list = DominantLanguageDetectionJobPropertiesList.build(params[:dominant_language_detection_job_properties_list], context: "#{context}[:dominant_language_detection_job_properties_list]") unless params[:dominant_language_detection_job_properties_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListEndpointsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEndpointsInput, context: context)
        type = Types::ListEndpointsInput.new
        type.filter = EndpointFilter.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListEndpointsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEndpointsOutput, context: context)
        type = Types::ListEndpointsOutput.new
        type.endpoint_properties_list = EndpointPropertiesList.build(params[:endpoint_properties_list], context: "#{context}[:endpoint_properties_list]") unless params[:endpoint_properties_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListEntitiesDetectionJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEntitiesDetectionJobsInput, context: context)
        type = Types::ListEntitiesDetectionJobsInput.new
        type.filter = EntitiesDetectionJobFilter.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListEntitiesDetectionJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEntitiesDetectionJobsOutput, context: context)
        type = Types::ListEntitiesDetectionJobsOutput.new
        type.entities_detection_job_properties_list = EntitiesDetectionJobPropertiesList.build(params[:entities_detection_job_properties_list], context: "#{context}[:entities_detection_job_properties_list]") unless params[:entities_detection_job_properties_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListEntityRecognizerSummariesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEntityRecognizerSummariesInput, context: context)
        type = Types::ListEntityRecognizerSummariesInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListEntityRecognizerSummariesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEntityRecognizerSummariesOutput, context: context)
        type = Types::ListEntityRecognizerSummariesOutput.new
        type.entity_recognizer_summaries_list = EntityRecognizerSummariesList.build(params[:entity_recognizer_summaries_list], context: "#{context}[:entity_recognizer_summaries_list]") unless params[:entity_recognizer_summaries_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListEntityRecognizersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEntityRecognizersInput, context: context)
        type = Types::ListEntityRecognizersInput.new
        type.filter = EntityRecognizerFilter.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListEntityRecognizersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEntityRecognizersOutput, context: context)
        type = Types::ListEntityRecognizersOutput.new
        type.entity_recognizer_properties_list = EntityRecognizerPropertiesList.build(params[:entity_recognizer_properties_list], context: "#{context}[:entity_recognizer_properties_list]") unless params[:entity_recognizer_properties_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListEventsDetectionJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEventsDetectionJobsInput, context: context)
        type = Types::ListEventsDetectionJobsInput.new
        type.filter = EventsDetectionJobFilter.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListEventsDetectionJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEventsDetectionJobsOutput, context: context)
        type = Types::ListEventsDetectionJobsOutput.new
        type.events_detection_job_properties_list = EventsDetectionJobPropertiesList.build(params[:events_detection_job_properties_list], context: "#{context}[:events_detection_job_properties_list]") unless params[:events_detection_job_properties_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListKeyPhrasesDetectionJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListKeyPhrasesDetectionJobsInput, context: context)
        type = Types::ListKeyPhrasesDetectionJobsInput.new
        type.filter = KeyPhrasesDetectionJobFilter.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListKeyPhrasesDetectionJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListKeyPhrasesDetectionJobsOutput, context: context)
        type = Types::ListKeyPhrasesDetectionJobsOutput.new
        type.key_phrases_detection_job_properties_list = KeyPhrasesDetectionJobPropertiesList.build(params[:key_phrases_detection_job_properties_list], context: "#{context}[:key_phrases_detection_job_properties_list]") unless params[:key_phrases_detection_job_properties_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListOfClasses
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DocumentClass.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfDetectDominantLanguageResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchDetectDominantLanguageItemResult.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfDetectEntitiesResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchDetectEntitiesItemResult.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfDetectKeyPhrasesResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchDetectKeyPhrasesItemResult.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfDetectSentimentResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchDetectSentimentItemResult.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfDetectSyntaxResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchDetectSyntaxItemResult.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfDocumentReadFeatureTypes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ListOfDominantLanguages
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DominantLanguage.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfEntities
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Entity.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfEntityLabels
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EntityLabel.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfKeyPhrases
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << KeyPhrase.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfLabels
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DocumentLabel.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfPiiEntities
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PiiEntity.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfPiiEntityTypes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ListOfSyntaxTokens
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SyntaxToken.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListPiiEntitiesDetectionJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPiiEntitiesDetectionJobsInput, context: context)
        type = Types::ListPiiEntitiesDetectionJobsInput.new
        type.filter = PiiEntitiesDetectionJobFilter.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListPiiEntitiesDetectionJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPiiEntitiesDetectionJobsOutput, context: context)
        type = Types::ListPiiEntitiesDetectionJobsOutput.new
        type.pii_entities_detection_job_properties_list = PiiEntitiesDetectionJobPropertiesList.build(params[:pii_entities_detection_job_properties_list], context: "#{context}[:pii_entities_detection_job_properties_list]") unless params[:pii_entities_detection_job_properties_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSentimentDetectionJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSentimentDetectionJobsInput, context: context)
        type = Types::ListSentimentDetectionJobsInput.new
        type.filter = SentimentDetectionJobFilter.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListSentimentDetectionJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSentimentDetectionJobsOutput, context: context)
        type = Types::ListSentimentDetectionJobsOutput.new
        type.sentiment_detection_job_properties_list = SentimentDetectionJobPropertiesList.build(params[:sentiment_detection_job_properties_list], context: "#{context}[:sentiment_detection_job_properties_list]") unless params[:sentiment_detection_job_properties_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ListTargetedSentimentDetectionJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTargetedSentimentDetectionJobsInput, context: context)
        type = Types::ListTargetedSentimentDetectionJobsInput.new
        type.filter = TargetedSentimentDetectionJobFilter.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListTargetedSentimentDetectionJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTargetedSentimentDetectionJobsOutput, context: context)
        type = Types::ListTargetedSentimentDetectionJobsOutput.new
        type.targeted_sentiment_detection_job_properties_list = TargetedSentimentDetectionJobPropertiesList.build(params[:targeted_sentiment_detection_job_properties_list], context: "#{context}[:targeted_sentiment_detection_job_properties_list]") unless params[:targeted_sentiment_detection_job_properties_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTopicsDetectionJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTopicsDetectionJobsInput, context: context)
        type = Types::ListTopicsDetectionJobsInput.new
        type.filter = TopicsDetectionJobFilter.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListTopicsDetectionJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTopicsDetectionJobsOutput, context: context)
        type = Types::ListTopicsDetectionJobsOutput.new
        type.topics_detection_job_properties_list = TopicsDetectionJobPropertiesList.build(params[:topics_detection_job_properties_list], context: "#{context}[:topics_detection_job_properties_list]") unless params[:topics_detection_job_properties_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module OutputDataConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OutputDataConfig, context: context)
        type = Types::OutputDataConfig.new
        type.s3_uri = params[:s3_uri]
        type.kms_key_id = params[:kms_key_id]
        type
      end
    end

    module PartOfSpeechTag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PartOfSpeechTag, context: context)
        type = Types::PartOfSpeechTag.new
        type.tag = params[:tag]
        type.score = params[:score]
        type
      end
    end

    module PiiEntitiesDetectionJobFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PiiEntitiesDetectionJobFilter, context: context)
        type = Types::PiiEntitiesDetectionJobFilter.new
        type.job_name = params[:job_name]
        type.job_status = params[:job_status]
        type.submit_time_before = params[:submit_time_before]
        type.submit_time_after = params[:submit_time_after]
        type
      end
    end

    module PiiEntitiesDetectionJobProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PiiEntitiesDetectionJobProperties, context: context)
        type = Types::PiiEntitiesDetectionJobProperties.new
        type.job_id = params[:job_id]
        type.job_arn = params[:job_arn]
        type.job_name = params[:job_name]
        type.job_status = params[:job_status]
        type.message = params[:message]
        type.submit_time = params[:submit_time]
        type.end_time = params[:end_time]
        type.input_data_config = InputDataConfig.build(params[:input_data_config], context: "#{context}[:input_data_config]") unless params[:input_data_config].nil?
        type.output_data_config = PiiOutputDataConfig.build(params[:output_data_config], context: "#{context}[:output_data_config]") unless params[:output_data_config].nil?
        type.redaction_config = RedactionConfig.build(params[:redaction_config], context: "#{context}[:redaction_config]") unless params[:redaction_config].nil?
        type.language_code = params[:language_code]
        type.data_access_role_arn = params[:data_access_role_arn]
        type.mode = params[:mode]
        type
      end
    end

    module PiiEntitiesDetectionJobPropertiesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PiiEntitiesDetectionJobProperties.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PiiEntity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PiiEntity, context: context)
        type = Types::PiiEntity.new
        type.score = params[:score]
        type.type = params[:type]
        type.begin_offset = params[:begin_offset]
        type.end_offset = params[:end_offset]
        type
      end
    end

    module PiiOutputDataConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PiiOutputDataConfig, context: context)
        type = Types::PiiOutputDataConfig.new
        type.s3_uri = params[:s3_uri]
        type.kms_key_id = params[:kms_key_id]
        type
      end
    end

    module PutResourcePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutResourcePolicyInput, context: context)
        type = Types::PutResourcePolicyInput.new
        type.resource_arn = params[:resource_arn]
        type.resource_policy = params[:resource_policy]
        type.policy_revision_id = params[:policy_revision_id]
        type
      end
    end

    module PutResourcePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutResourcePolicyOutput, context: context)
        type = Types::PutResourcePolicyOutput.new
        type.policy_revision_id = params[:policy_revision_id]
        type
      end
    end

    module RedactionConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RedactionConfig, context: context)
        type = Types::RedactionConfig.new
        type.pii_entity_types = ListOfPiiEntityTypes.build(params[:pii_entity_types], context: "#{context}[:pii_entity_types]") unless params[:pii_entity_types].nil?
        type.mask_mode = params[:mask_mode]
        type.mask_character = params[:mask_character]
        type
      end
    end

    module ResourceInUseException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceInUseException, context: context)
        type = Types::ResourceInUseException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceLimitExceededException, context: context)
        type = Types::ResourceLimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceUnavailableException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceUnavailableException, context: context)
        type = Types::ResourceUnavailableException.new
        type.message = params[:message]
        type
      end
    end

    module SecurityGroupIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SentimentDetectionJobFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SentimentDetectionJobFilter, context: context)
        type = Types::SentimentDetectionJobFilter.new
        type.job_name = params[:job_name]
        type.job_status = params[:job_status]
        type.submit_time_before = params[:submit_time_before]
        type.submit_time_after = params[:submit_time_after]
        type
      end
    end

    module SentimentDetectionJobProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SentimentDetectionJobProperties, context: context)
        type = Types::SentimentDetectionJobProperties.new
        type.job_id = params[:job_id]
        type.job_arn = params[:job_arn]
        type.job_name = params[:job_name]
        type.job_status = params[:job_status]
        type.message = params[:message]
        type.submit_time = params[:submit_time]
        type.end_time = params[:end_time]
        type.input_data_config = InputDataConfig.build(params[:input_data_config], context: "#{context}[:input_data_config]") unless params[:input_data_config].nil?
        type.output_data_config = OutputDataConfig.build(params[:output_data_config], context: "#{context}[:output_data_config]") unless params[:output_data_config].nil?
        type.language_code = params[:language_code]
        type.data_access_role_arn = params[:data_access_role_arn]
        type.volume_kms_key_id = params[:volume_kms_key_id]
        type.vpc_config = VpcConfig.build(params[:vpc_config], context: "#{context}[:vpc_config]") unless params[:vpc_config].nil?
        type
      end
    end

    module SentimentDetectionJobPropertiesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SentimentDetectionJobProperties.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SentimentScore
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SentimentScore, context: context)
        type = Types::SentimentScore.new
        type.positive = params[:positive]
        type.negative = params[:negative]
        type.neutral = params[:neutral]
        type.mixed = params[:mixed]
        type
      end
    end

    module StartDocumentClassificationJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartDocumentClassificationJobInput, context: context)
        type = Types::StartDocumentClassificationJobInput.new
        type.job_name = params[:job_name]
        type.document_classifier_arn = params[:document_classifier_arn]
        type.input_data_config = InputDataConfig.build(params[:input_data_config], context: "#{context}[:input_data_config]") unless params[:input_data_config].nil?
        type.output_data_config = OutputDataConfig.build(params[:output_data_config], context: "#{context}[:output_data_config]") unless params[:output_data_config].nil?
        type.data_access_role_arn = params[:data_access_role_arn]
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type.volume_kms_key_id = params[:volume_kms_key_id]
        type.vpc_config = VpcConfig.build(params[:vpc_config], context: "#{context}[:vpc_config]") unless params[:vpc_config].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module StartDocumentClassificationJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartDocumentClassificationJobOutput, context: context)
        type = Types::StartDocumentClassificationJobOutput.new
        type.job_id = params[:job_id]
        type.job_arn = params[:job_arn]
        type.job_status = params[:job_status]
        type
      end
    end

    module StartDominantLanguageDetectionJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartDominantLanguageDetectionJobInput, context: context)
        type = Types::StartDominantLanguageDetectionJobInput.new
        type.input_data_config = InputDataConfig.build(params[:input_data_config], context: "#{context}[:input_data_config]") unless params[:input_data_config].nil?
        type.output_data_config = OutputDataConfig.build(params[:output_data_config], context: "#{context}[:output_data_config]") unless params[:output_data_config].nil?
        type.data_access_role_arn = params[:data_access_role_arn]
        type.job_name = params[:job_name]
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type.volume_kms_key_id = params[:volume_kms_key_id]
        type.vpc_config = VpcConfig.build(params[:vpc_config], context: "#{context}[:vpc_config]") unless params[:vpc_config].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module StartDominantLanguageDetectionJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartDominantLanguageDetectionJobOutput, context: context)
        type = Types::StartDominantLanguageDetectionJobOutput.new
        type.job_id = params[:job_id]
        type.job_arn = params[:job_arn]
        type.job_status = params[:job_status]
        type
      end
    end

    module StartEntitiesDetectionJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartEntitiesDetectionJobInput, context: context)
        type = Types::StartEntitiesDetectionJobInput.new
        type.input_data_config = InputDataConfig.build(params[:input_data_config], context: "#{context}[:input_data_config]") unless params[:input_data_config].nil?
        type.output_data_config = OutputDataConfig.build(params[:output_data_config], context: "#{context}[:output_data_config]") unless params[:output_data_config].nil?
        type.data_access_role_arn = params[:data_access_role_arn]
        type.job_name = params[:job_name]
        type.entity_recognizer_arn = params[:entity_recognizer_arn]
        type.language_code = params[:language_code]
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type.volume_kms_key_id = params[:volume_kms_key_id]
        type.vpc_config = VpcConfig.build(params[:vpc_config], context: "#{context}[:vpc_config]") unless params[:vpc_config].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module StartEntitiesDetectionJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartEntitiesDetectionJobOutput, context: context)
        type = Types::StartEntitiesDetectionJobOutput.new
        type.job_id = params[:job_id]
        type.job_arn = params[:job_arn]
        type.job_status = params[:job_status]
        type
      end
    end

    module StartEventsDetectionJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartEventsDetectionJobInput, context: context)
        type = Types::StartEventsDetectionJobInput.new
        type.input_data_config = InputDataConfig.build(params[:input_data_config], context: "#{context}[:input_data_config]") unless params[:input_data_config].nil?
        type.output_data_config = OutputDataConfig.build(params[:output_data_config], context: "#{context}[:output_data_config]") unless params[:output_data_config].nil?
        type.data_access_role_arn = params[:data_access_role_arn]
        type.job_name = params[:job_name]
        type.language_code = params[:language_code]
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type.target_event_types = TargetEventTypes.build(params[:target_event_types], context: "#{context}[:target_event_types]") unless params[:target_event_types].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module StartEventsDetectionJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartEventsDetectionJobOutput, context: context)
        type = Types::StartEventsDetectionJobOutput.new
        type.job_id = params[:job_id]
        type.job_arn = params[:job_arn]
        type.job_status = params[:job_status]
        type
      end
    end

    module StartKeyPhrasesDetectionJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartKeyPhrasesDetectionJobInput, context: context)
        type = Types::StartKeyPhrasesDetectionJobInput.new
        type.input_data_config = InputDataConfig.build(params[:input_data_config], context: "#{context}[:input_data_config]") unless params[:input_data_config].nil?
        type.output_data_config = OutputDataConfig.build(params[:output_data_config], context: "#{context}[:output_data_config]") unless params[:output_data_config].nil?
        type.data_access_role_arn = params[:data_access_role_arn]
        type.job_name = params[:job_name]
        type.language_code = params[:language_code]
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type.volume_kms_key_id = params[:volume_kms_key_id]
        type.vpc_config = VpcConfig.build(params[:vpc_config], context: "#{context}[:vpc_config]") unless params[:vpc_config].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module StartKeyPhrasesDetectionJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartKeyPhrasesDetectionJobOutput, context: context)
        type = Types::StartKeyPhrasesDetectionJobOutput.new
        type.job_id = params[:job_id]
        type.job_arn = params[:job_arn]
        type.job_status = params[:job_status]
        type
      end
    end

    module StartPiiEntitiesDetectionJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartPiiEntitiesDetectionJobInput, context: context)
        type = Types::StartPiiEntitiesDetectionJobInput.new
        type.input_data_config = InputDataConfig.build(params[:input_data_config], context: "#{context}[:input_data_config]") unless params[:input_data_config].nil?
        type.output_data_config = OutputDataConfig.build(params[:output_data_config], context: "#{context}[:output_data_config]") unless params[:output_data_config].nil?
        type.mode = params[:mode]
        type.redaction_config = RedactionConfig.build(params[:redaction_config], context: "#{context}[:redaction_config]") unless params[:redaction_config].nil?
        type.data_access_role_arn = params[:data_access_role_arn]
        type.job_name = params[:job_name]
        type.language_code = params[:language_code]
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module StartPiiEntitiesDetectionJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartPiiEntitiesDetectionJobOutput, context: context)
        type = Types::StartPiiEntitiesDetectionJobOutput.new
        type.job_id = params[:job_id]
        type.job_arn = params[:job_arn]
        type.job_status = params[:job_status]
        type
      end
    end

    module StartSentimentDetectionJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartSentimentDetectionJobInput, context: context)
        type = Types::StartSentimentDetectionJobInput.new
        type.input_data_config = InputDataConfig.build(params[:input_data_config], context: "#{context}[:input_data_config]") unless params[:input_data_config].nil?
        type.output_data_config = OutputDataConfig.build(params[:output_data_config], context: "#{context}[:output_data_config]") unless params[:output_data_config].nil?
        type.data_access_role_arn = params[:data_access_role_arn]
        type.job_name = params[:job_name]
        type.language_code = params[:language_code]
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type.volume_kms_key_id = params[:volume_kms_key_id]
        type.vpc_config = VpcConfig.build(params[:vpc_config], context: "#{context}[:vpc_config]") unless params[:vpc_config].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module StartSentimentDetectionJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartSentimentDetectionJobOutput, context: context)
        type = Types::StartSentimentDetectionJobOutput.new
        type.job_id = params[:job_id]
        type.job_arn = params[:job_arn]
        type.job_status = params[:job_status]
        type
      end
    end

    module StartTargetedSentimentDetectionJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartTargetedSentimentDetectionJobInput, context: context)
        type = Types::StartTargetedSentimentDetectionJobInput.new
        type.input_data_config = InputDataConfig.build(params[:input_data_config], context: "#{context}[:input_data_config]") unless params[:input_data_config].nil?
        type.output_data_config = OutputDataConfig.build(params[:output_data_config], context: "#{context}[:output_data_config]") unless params[:output_data_config].nil?
        type.data_access_role_arn = params[:data_access_role_arn]
        type.job_name = params[:job_name]
        type.language_code = params[:language_code]
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type.volume_kms_key_id = params[:volume_kms_key_id]
        type.vpc_config = VpcConfig.build(params[:vpc_config], context: "#{context}[:vpc_config]") unless params[:vpc_config].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module StartTargetedSentimentDetectionJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartTargetedSentimentDetectionJobOutput, context: context)
        type = Types::StartTargetedSentimentDetectionJobOutput.new
        type.job_id = params[:job_id]
        type.job_arn = params[:job_arn]
        type.job_status = params[:job_status]
        type
      end
    end

    module StartTopicsDetectionJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartTopicsDetectionJobInput, context: context)
        type = Types::StartTopicsDetectionJobInput.new
        type.input_data_config = InputDataConfig.build(params[:input_data_config], context: "#{context}[:input_data_config]") unless params[:input_data_config].nil?
        type.output_data_config = OutputDataConfig.build(params[:output_data_config], context: "#{context}[:output_data_config]") unless params[:output_data_config].nil?
        type.data_access_role_arn = params[:data_access_role_arn]
        type.job_name = params[:job_name]
        type.number_of_topics = params[:number_of_topics]
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type.volume_kms_key_id = params[:volume_kms_key_id]
        type.vpc_config = VpcConfig.build(params[:vpc_config], context: "#{context}[:vpc_config]") unless params[:vpc_config].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module StartTopicsDetectionJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartTopicsDetectionJobOutput, context: context)
        type = Types::StartTopicsDetectionJobOutput.new
        type.job_id = params[:job_id]
        type.job_arn = params[:job_arn]
        type.job_status = params[:job_status]
        type
      end
    end

    module StopDominantLanguageDetectionJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopDominantLanguageDetectionJobInput, context: context)
        type = Types::StopDominantLanguageDetectionJobInput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module StopDominantLanguageDetectionJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopDominantLanguageDetectionJobOutput, context: context)
        type = Types::StopDominantLanguageDetectionJobOutput.new
        type.job_id = params[:job_id]
        type.job_status = params[:job_status]
        type
      end
    end

    module StopEntitiesDetectionJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopEntitiesDetectionJobInput, context: context)
        type = Types::StopEntitiesDetectionJobInput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module StopEntitiesDetectionJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopEntitiesDetectionJobOutput, context: context)
        type = Types::StopEntitiesDetectionJobOutput.new
        type.job_id = params[:job_id]
        type.job_status = params[:job_status]
        type
      end
    end

    module StopEventsDetectionJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopEventsDetectionJobInput, context: context)
        type = Types::StopEventsDetectionJobInput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module StopEventsDetectionJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopEventsDetectionJobOutput, context: context)
        type = Types::StopEventsDetectionJobOutput.new
        type.job_id = params[:job_id]
        type.job_status = params[:job_status]
        type
      end
    end

    module StopKeyPhrasesDetectionJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopKeyPhrasesDetectionJobInput, context: context)
        type = Types::StopKeyPhrasesDetectionJobInput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module StopKeyPhrasesDetectionJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopKeyPhrasesDetectionJobOutput, context: context)
        type = Types::StopKeyPhrasesDetectionJobOutput.new
        type.job_id = params[:job_id]
        type.job_status = params[:job_status]
        type
      end
    end

    module StopPiiEntitiesDetectionJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopPiiEntitiesDetectionJobInput, context: context)
        type = Types::StopPiiEntitiesDetectionJobInput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module StopPiiEntitiesDetectionJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopPiiEntitiesDetectionJobOutput, context: context)
        type = Types::StopPiiEntitiesDetectionJobOutput.new
        type.job_id = params[:job_id]
        type.job_status = params[:job_status]
        type
      end
    end

    module StopSentimentDetectionJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopSentimentDetectionJobInput, context: context)
        type = Types::StopSentimentDetectionJobInput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module StopSentimentDetectionJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopSentimentDetectionJobOutput, context: context)
        type = Types::StopSentimentDetectionJobOutput.new
        type.job_id = params[:job_id]
        type.job_status = params[:job_status]
        type
      end
    end

    module StopTargetedSentimentDetectionJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopTargetedSentimentDetectionJobInput, context: context)
        type = Types::StopTargetedSentimentDetectionJobInput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module StopTargetedSentimentDetectionJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopTargetedSentimentDetectionJobOutput, context: context)
        type = Types::StopTargetedSentimentDetectionJobOutput.new
        type.job_id = params[:job_id]
        type.job_status = params[:job_status]
        type
      end
    end

    module StopTrainingDocumentClassifierInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopTrainingDocumentClassifierInput, context: context)
        type = Types::StopTrainingDocumentClassifierInput.new
        type.document_classifier_arn = params[:document_classifier_arn]
        type
      end
    end

    module StopTrainingDocumentClassifierOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopTrainingDocumentClassifierOutput, context: context)
        type = Types::StopTrainingDocumentClassifierOutput.new
        type
      end
    end

    module StopTrainingEntityRecognizerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopTrainingEntityRecognizerInput, context: context)
        type = Types::StopTrainingEntityRecognizerInput.new
        type.entity_recognizer_arn = params[:entity_recognizer_arn]
        type
      end
    end

    module StopTrainingEntityRecognizerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopTrainingEntityRecognizerOutput, context: context)
        type = Types::StopTrainingEntityRecognizerOutput.new
        type
      end
    end

    module Subnets
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SyntaxToken
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SyntaxToken, context: context)
        type = Types::SyntaxToken.new
        type.token_id = params[:token_id]
        type.text = params[:text]
        type.begin_offset = params[:begin_offset]
        type.end_offset = params[:end_offset]
        type.part_of_speech = PartOfSpeechTag.build(params[:part_of_speech], context: "#{context}[:part_of_speech]") unless params[:part_of_speech].nil?
        type
      end
    end

    module Tag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Tag, context: context)
        type = Types::Tag.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module TagKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
        type
      end
    end

    module TargetEventTypes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TargetedSentimentDetectionJobFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TargetedSentimentDetectionJobFilter, context: context)
        type = Types::TargetedSentimentDetectionJobFilter.new
        type.job_name = params[:job_name]
        type.job_status = params[:job_status]
        type.submit_time_before = params[:submit_time_before]
        type.submit_time_after = params[:submit_time_after]
        type
      end
    end

    module TargetedSentimentDetectionJobProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TargetedSentimentDetectionJobProperties, context: context)
        type = Types::TargetedSentimentDetectionJobProperties.new
        type.job_id = params[:job_id]
        type.job_arn = params[:job_arn]
        type.job_name = params[:job_name]
        type.job_status = params[:job_status]
        type.message = params[:message]
        type.submit_time = params[:submit_time]
        type.end_time = params[:end_time]
        type.input_data_config = InputDataConfig.build(params[:input_data_config], context: "#{context}[:input_data_config]") unless params[:input_data_config].nil?
        type.output_data_config = OutputDataConfig.build(params[:output_data_config], context: "#{context}[:output_data_config]") unless params[:output_data_config].nil?
        type.language_code = params[:language_code]
        type.data_access_role_arn = params[:data_access_role_arn]
        type.volume_kms_key_id = params[:volume_kms_key_id]
        type.vpc_config = VpcConfig.build(params[:vpc_config], context: "#{context}[:vpc_config]") unless params[:vpc_config].nil?
        type
      end
    end

    module TargetedSentimentDetectionJobPropertiesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TargetedSentimentDetectionJobProperties.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TextSizeLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TextSizeLimitExceededException, context: context)
        type = Types::TextSizeLimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module TooManyRequestsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyRequestsException, context: context)
        type = Types::TooManyRequestsException.new
        type.message = params[:message]
        type
      end
    end

    module TooManyTagKeysException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyTagKeysException, context: context)
        type = Types::TooManyTagKeysException.new
        type.message = params[:message]
        type
      end
    end

    module TooManyTagsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyTagsException, context: context)
        type = Types::TooManyTagsException.new
        type.message = params[:message]
        type
      end
    end

    module TopicsDetectionJobFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TopicsDetectionJobFilter, context: context)
        type = Types::TopicsDetectionJobFilter.new
        type.job_name = params[:job_name]
        type.job_status = params[:job_status]
        type.submit_time_before = params[:submit_time_before]
        type.submit_time_after = params[:submit_time_after]
        type
      end
    end

    module TopicsDetectionJobProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TopicsDetectionJobProperties, context: context)
        type = Types::TopicsDetectionJobProperties.new
        type.job_id = params[:job_id]
        type.job_arn = params[:job_arn]
        type.job_name = params[:job_name]
        type.job_status = params[:job_status]
        type.message = params[:message]
        type.submit_time = params[:submit_time]
        type.end_time = params[:end_time]
        type.input_data_config = InputDataConfig.build(params[:input_data_config], context: "#{context}[:input_data_config]") unless params[:input_data_config].nil?
        type.output_data_config = OutputDataConfig.build(params[:output_data_config], context: "#{context}[:output_data_config]") unless params[:output_data_config].nil?
        type.number_of_topics = params[:number_of_topics]
        type.data_access_role_arn = params[:data_access_role_arn]
        type.volume_kms_key_id = params[:volume_kms_key_id]
        type.vpc_config = VpcConfig.build(params[:vpc_config], context: "#{context}[:vpc_config]") unless params[:vpc_config].nil?
        type
      end
    end

    module TopicsDetectionJobPropertiesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TopicsDetectionJobProperties.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UnsupportedLanguageException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnsupportedLanguageException, context: context)
        type = Types::UnsupportedLanguageException.new
        type.message = params[:message]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceOutput, context: context)
        type = Types::UntagResourceOutput.new
        type
      end
    end

    module UpdateEndpointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateEndpointInput, context: context)
        type = Types::UpdateEndpointInput.new
        type.endpoint_arn = params[:endpoint_arn]
        type.desired_model_arn = params[:desired_model_arn]
        type.desired_inference_units = params[:desired_inference_units]
        type.desired_data_access_role_arn = params[:desired_data_access_role_arn]
        type
      end
    end

    module UpdateEndpointOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateEndpointOutput, context: context)
        type = Types::UpdateEndpointOutput.new
        type
      end
    end

    module VpcConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VpcConfig, context: context)
        type = Types::VpcConfig.new
        type.security_group_ids = SecurityGroupIds.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type.subnets = Subnets.build(params[:subnets], context: "#{context}[:subnets]") unless params[:subnets].nil?
        type
      end
    end

  end
end
