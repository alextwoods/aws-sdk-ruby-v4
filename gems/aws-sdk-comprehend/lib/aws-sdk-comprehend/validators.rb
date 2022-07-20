# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::Comprehend
  module Validators

    class AttributeNamesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AugmentedManifestsListItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AugmentedManifestsListItem, context: context)
        Hearth::Validator.validate!(input[:s3_uri], ::String, context: "#{context}[:s3_uri]")
        Hearth::Validator.validate!(input[:split], ::String, context: "#{context}[:split]")
        AttributeNamesList.validate!(input[:attribute_names], context: "#{context}[:attribute_names]") unless input[:attribute_names].nil?
        Hearth::Validator.validate!(input[:annotation_data_s3_uri], ::String, context: "#{context}[:annotation_data_s3_uri]")
        Hearth::Validator.validate!(input[:source_documents_s3_uri], ::String, context: "#{context}[:source_documents_s3_uri]")
        Hearth::Validator.validate!(input[:document_type], ::String, context: "#{context}[:document_type]")
      end
    end

    class BatchDetectDominantLanguageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDetectDominantLanguageInput, context: context)
        CustomerInputStringList.validate!(input[:text_list], context: "#{context}[:text_list]") unless input[:text_list].nil?
      end
    end

    class BatchDetectDominantLanguageItemResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDetectDominantLanguageItemResult, context: context)
        Hearth::Validator.validate!(input[:index], ::Integer, context: "#{context}[:index]")
        ListOfDominantLanguages.validate!(input[:languages], context: "#{context}[:languages]") unless input[:languages].nil?
      end
    end

    class BatchDetectDominantLanguageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDetectDominantLanguageOutput, context: context)
        ListOfDetectDominantLanguageResult.validate!(input[:result_list], context: "#{context}[:result_list]") unless input[:result_list].nil?
        BatchItemErrorList.validate!(input[:error_list], context: "#{context}[:error_list]") unless input[:error_list].nil?
      end
    end

    class BatchDetectEntitiesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDetectEntitiesInput, context: context)
        CustomerInputStringList.validate!(input[:text_list], context: "#{context}[:text_list]") unless input[:text_list].nil?
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
      end
    end

    class BatchDetectEntitiesItemResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDetectEntitiesItemResult, context: context)
        Hearth::Validator.validate!(input[:index], ::Integer, context: "#{context}[:index]")
        ListOfEntities.validate!(input[:entities], context: "#{context}[:entities]") unless input[:entities].nil?
      end
    end

    class BatchDetectEntitiesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDetectEntitiesOutput, context: context)
        ListOfDetectEntitiesResult.validate!(input[:result_list], context: "#{context}[:result_list]") unless input[:result_list].nil?
        BatchItemErrorList.validate!(input[:error_list], context: "#{context}[:error_list]") unless input[:error_list].nil?
      end
    end

    class BatchDetectKeyPhrasesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDetectKeyPhrasesInput, context: context)
        CustomerInputStringList.validate!(input[:text_list], context: "#{context}[:text_list]") unless input[:text_list].nil?
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
      end
    end

    class BatchDetectKeyPhrasesItemResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDetectKeyPhrasesItemResult, context: context)
        Hearth::Validator.validate!(input[:index], ::Integer, context: "#{context}[:index]")
        ListOfKeyPhrases.validate!(input[:key_phrases], context: "#{context}[:key_phrases]") unless input[:key_phrases].nil?
      end
    end

    class BatchDetectKeyPhrasesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDetectKeyPhrasesOutput, context: context)
        ListOfDetectKeyPhrasesResult.validate!(input[:result_list], context: "#{context}[:result_list]") unless input[:result_list].nil?
        BatchItemErrorList.validate!(input[:error_list], context: "#{context}[:error_list]") unless input[:error_list].nil?
      end
    end

    class BatchDetectSentimentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDetectSentimentInput, context: context)
        CustomerInputStringList.validate!(input[:text_list], context: "#{context}[:text_list]") unless input[:text_list].nil?
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
      end
    end

    class BatchDetectSentimentItemResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDetectSentimentItemResult, context: context)
        Hearth::Validator.validate!(input[:index], ::Integer, context: "#{context}[:index]")
        Hearth::Validator.validate!(input[:sentiment], ::String, context: "#{context}[:sentiment]")
        SentimentScore.validate!(input[:sentiment_score], context: "#{context}[:sentiment_score]") unless input[:sentiment_score].nil?
      end
    end

    class BatchDetectSentimentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDetectSentimentOutput, context: context)
        ListOfDetectSentimentResult.validate!(input[:result_list], context: "#{context}[:result_list]") unless input[:result_list].nil?
        BatchItemErrorList.validate!(input[:error_list], context: "#{context}[:error_list]") unless input[:error_list].nil?
      end
    end

    class BatchDetectSyntaxInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDetectSyntaxInput, context: context)
        CustomerInputStringList.validate!(input[:text_list], context: "#{context}[:text_list]") unless input[:text_list].nil?
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
      end
    end

    class BatchDetectSyntaxItemResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDetectSyntaxItemResult, context: context)
        Hearth::Validator.validate!(input[:index], ::Integer, context: "#{context}[:index]")
        ListOfSyntaxTokens.validate!(input[:syntax_tokens], context: "#{context}[:syntax_tokens]") unless input[:syntax_tokens].nil?
      end
    end

    class BatchDetectSyntaxOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDetectSyntaxOutput, context: context)
        ListOfDetectSyntaxResult.validate!(input[:result_list], context: "#{context}[:result_list]") unless input[:result_list].nil?
        BatchItemErrorList.validate!(input[:error_list], context: "#{context}[:error_list]") unless input[:error_list].nil?
      end
    end

    class BatchItemError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchItemError, context: context)
        Hearth::Validator.validate!(input[:index], ::Integer, context: "#{context}[:index]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class BatchItemErrorList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BatchItemError.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchSizeLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchSizeLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ClassifierEvaluationMetrics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClassifierEvaluationMetrics, context: context)
        Hearth::Validator.validate!(input[:accuracy], ::Float, context: "#{context}[:accuracy]")
        Hearth::Validator.validate!(input[:precision], ::Float, context: "#{context}[:precision]")
        Hearth::Validator.validate!(input[:recall], ::Float, context: "#{context}[:recall]")
        Hearth::Validator.validate!(input[:f1_score], ::Float, context: "#{context}[:f1_score]")
        Hearth::Validator.validate!(input[:micro_precision], ::Float, context: "#{context}[:micro_precision]")
        Hearth::Validator.validate!(input[:micro_recall], ::Float, context: "#{context}[:micro_recall]")
        Hearth::Validator.validate!(input[:micro_f1_score], ::Float, context: "#{context}[:micro_f1_score]")
        Hearth::Validator.validate!(input[:hamming_loss], ::Float, context: "#{context}[:hamming_loss]")
      end
    end

    class ClassifierMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClassifierMetadata, context: context)
        Hearth::Validator.validate!(input[:number_of_labels], ::Integer, context: "#{context}[:number_of_labels]")
        Hearth::Validator.validate!(input[:number_of_trained_documents], ::Integer, context: "#{context}[:number_of_trained_documents]")
        Hearth::Validator.validate!(input[:number_of_test_documents], ::Integer, context: "#{context}[:number_of_test_documents]")
        ClassifierEvaluationMetrics.validate!(input[:evaluation_metrics], context: "#{context}[:evaluation_metrics]") unless input[:evaluation_metrics].nil?
      end
    end

    class ClassifyDocumentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClassifyDocumentInput, context: context)
        Hearth::Validator.validate!(input[:text], ::String, context: "#{context}[:text]")
        Hearth::Validator.validate!(input[:endpoint_arn], ::String, context: "#{context}[:endpoint_arn]")
      end
    end

    class ClassifyDocumentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClassifyDocumentOutput, context: context)
        ListOfClasses.validate!(input[:classes], context: "#{context}[:classes]") unless input[:classes].nil?
        ListOfLabels.validate!(input[:labels], context: "#{context}[:labels]") unless input[:labels].nil?
      end
    end

    class ConcurrentModificationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConcurrentModificationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ContainsPiiEntitiesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContainsPiiEntitiesInput, context: context)
        Hearth::Validator.validate!(input[:text], ::String, context: "#{context}[:text]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
      end
    end

    class ContainsPiiEntitiesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContainsPiiEntitiesOutput, context: context)
        ListOfEntityLabels.validate!(input[:labels], context: "#{context}[:labels]") unless input[:labels].nil?
      end
    end

    class CreateDocumentClassifierInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDocumentClassifierInput, context: context)
        Hearth::Validator.validate!(input[:document_classifier_name], ::String, context: "#{context}[:document_classifier_name]")
        Hearth::Validator.validate!(input[:version_name], ::String, context: "#{context}[:version_name]")
        Hearth::Validator.validate!(input[:data_access_role_arn], ::String, context: "#{context}[:data_access_role_arn]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        DocumentClassifierInputDataConfig.validate!(input[:input_data_config], context: "#{context}[:input_data_config]") unless input[:input_data_config].nil?
        DocumentClassifierOutputDataConfig.validate!(input[:output_data_config], context: "#{context}[:output_data_config]") unless input[:output_data_config].nil?
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:volume_kms_key_id], ::String, context: "#{context}[:volume_kms_key_id]")
        VpcConfig.validate!(input[:vpc_config], context: "#{context}[:vpc_config]") unless input[:vpc_config].nil?
        Hearth::Validator.validate!(input[:mode], ::String, context: "#{context}[:mode]")
        Hearth::Validator.validate!(input[:model_kms_key_id], ::String, context: "#{context}[:model_kms_key_id]")
        Hearth::Validator.validate!(input[:model_policy], ::String, context: "#{context}[:model_policy]")
      end
    end

    class CreateDocumentClassifierOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDocumentClassifierOutput, context: context)
        Hearth::Validator.validate!(input[:document_classifier_arn], ::String, context: "#{context}[:document_classifier_arn]")
      end
    end

    class CreateEndpointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEndpointInput, context: context)
        Hearth::Validator.validate!(input[:endpoint_name], ::String, context: "#{context}[:endpoint_name]")
        Hearth::Validator.validate!(input[:model_arn], ::String, context: "#{context}[:model_arn]")
        Hearth::Validator.validate!(input[:desired_inference_units], ::Integer, context: "#{context}[:desired_inference_units]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:data_access_role_arn], ::String, context: "#{context}[:data_access_role_arn]")
      end
    end

    class CreateEndpointOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEndpointOutput, context: context)
        Hearth::Validator.validate!(input[:endpoint_arn], ::String, context: "#{context}[:endpoint_arn]")
      end
    end

    class CreateEntityRecognizerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEntityRecognizerInput, context: context)
        Hearth::Validator.validate!(input[:recognizer_name], ::String, context: "#{context}[:recognizer_name]")
        Hearth::Validator.validate!(input[:version_name], ::String, context: "#{context}[:version_name]")
        Hearth::Validator.validate!(input[:data_access_role_arn], ::String, context: "#{context}[:data_access_role_arn]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        EntityRecognizerInputDataConfig.validate!(input[:input_data_config], context: "#{context}[:input_data_config]") unless input[:input_data_config].nil?
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:volume_kms_key_id], ::String, context: "#{context}[:volume_kms_key_id]")
        VpcConfig.validate!(input[:vpc_config], context: "#{context}[:vpc_config]") unless input[:vpc_config].nil?
        Hearth::Validator.validate!(input[:model_kms_key_id], ::String, context: "#{context}[:model_kms_key_id]")
        Hearth::Validator.validate!(input[:model_policy], ::String, context: "#{context}[:model_policy]")
      end
    end

    class CreateEntityRecognizerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEntityRecognizerOutput, context: context)
        Hearth::Validator.validate!(input[:entity_recognizer_arn], ::String, context: "#{context}[:entity_recognizer_arn]")
      end
    end

    class CustomerInputStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DeleteDocumentClassifierInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDocumentClassifierInput, context: context)
        Hearth::Validator.validate!(input[:document_classifier_arn], ::String, context: "#{context}[:document_classifier_arn]")
      end
    end

    class DeleteDocumentClassifierOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDocumentClassifierOutput, context: context)
      end
    end

    class DeleteEndpointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEndpointInput, context: context)
        Hearth::Validator.validate!(input[:endpoint_arn], ::String, context: "#{context}[:endpoint_arn]")
      end
    end

    class DeleteEndpointOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEndpointOutput, context: context)
      end
    end

    class DeleteEntityRecognizerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEntityRecognizerInput, context: context)
        Hearth::Validator.validate!(input[:entity_recognizer_arn], ::String, context: "#{context}[:entity_recognizer_arn]")
      end
    end

    class DeleteEntityRecognizerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEntityRecognizerOutput, context: context)
      end
    end

    class DeleteResourcePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteResourcePolicyInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:policy_revision_id], ::String, context: "#{context}[:policy_revision_id]")
      end
    end

    class DeleteResourcePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteResourcePolicyOutput, context: context)
      end
    end

    class DescribeDocumentClassificationJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDocumentClassificationJobInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class DescribeDocumentClassificationJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDocumentClassificationJobOutput, context: context)
        DocumentClassificationJobProperties.validate!(input[:document_classification_job_properties], context: "#{context}[:document_classification_job_properties]") unless input[:document_classification_job_properties].nil?
      end
    end

    class DescribeDocumentClassifierInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDocumentClassifierInput, context: context)
        Hearth::Validator.validate!(input[:document_classifier_arn], ::String, context: "#{context}[:document_classifier_arn]")
      end
    end

    class DescribeDocumentClassifierOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDocumentClassifierOutput, context: context)
        DocumentClassifierProperties.validate!(input[:document_classifier_properties], context: "#{context}[:document_classifier_properties]") unless input[:document_classifier_properties].nil?
      end
    end

    class DescribeDominantLanguageDetectionJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDominantLanguageDetectionJobInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class DescribeDominantLanguageDetectionJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDominantLanguageDetectionJobOutput, context: context)
        DominantLanguageDetectionJobProperties.validate!(input[:dominant_language_detection_job_properties], context: "#{context}[:dominant_language_detection_job_properties]") unless input[:dominant_language_detection_job_properties].nil?
      end
    end

    class DescribeEndpointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEndpointInput, context: context)
        Hearth::Validator.validate!(input[:endpoint_arn], ::String, context: "#{context}[:endpoint_arn]")
      end
    end

    class DescribeEndpointOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEndpointOutput, context: context)
        EndpointProperties.validate!(input[:endpoint_properties], context: "#{context}[:endpoint_properties]") unless input[:endpoint_properties].nil?
      end
    end

    class DescribeEntitiesDetectionJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEntitiesDetectionJobInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class DescribeEntitiesDetectionJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEntitiesDetectionJobOutput, context: context)
        EntitiesDetectionJobProperties.validate!(input[:entities_detection_job_properties], context: "#{context}[:entities_detection_job_properties]") unless input[:entities_detection_job_properties].nil?
      end
    end

    class DescribeEntityRecognizerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEntityRecognizerInput, context: context)
        Hearth::Validator.validate!(input[:entity_recognizer_arn], ::String, context: "#{context}[:entity_recognizer_arn]")
      end
    end

    class DescribeEntityRecognizerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEntityRecognizerOutput, context: context)
        EntityRecognizerProperties.validate!(input[:entity_recognizer_properties], context: "#{context}[:entity_recognizer_properties]") unless input[:entity_recognizer_properties].nil?
      end
    end

    class DescribeEventsDetectionJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEventsDetectionJobInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class DescribeEventsDetectionJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEventsDetectionJobOutput, context: context)
        EventsDetectionJobProperties.validate!(input[:events_detection_job_properties], context: "#{context}[:events_detection_job_properties]") unless input[:events_detection_job_properties].nil?
      end
    end

    class DescribeKeyPhrasesDetectionJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeKeyPhrasesDetectionJobInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class DescribeKeyPhrasesDetectionJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeKeyPhrasesDetectionJobOutput, context: context)
        KeyPhrasesDetectionJobProperties.validate!(input[:key_phrases_detection_job_properties], context: "#{context}[:key_phrases_detection_job_properties]") unless input[:key_phrases_detection_job_properties].nil?
      end
    end

    class DescribePiiEntitiesDetectionJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePiiEntitiesDetectionJobInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class DescribePiiEntitiesDetectionJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePiiEntitiesDetectionJobOutput, context: context)
        PiiEntitiesDetectionJobProperties.validate!(input[:pii_entities_detection_job_properties], context: "#{context}[:pii_entities_detection_job_properties]") unless input[:pii_entities_detection_job_properties].nil?
      end
    end

    class DescribeResourcePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeResourcePolicyInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class DescribeResourcePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeResourcePolicyOutput, context: context)
        Hearth::Validator.validate!(input[:resource_policy], ::String, context: "#{context}[:resource_policy]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:policy_revision_id], ::String, context: "#{context}[:policy_revision_id]")
      end
    end

    class DescribeSentimentDetectionJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSentimentDetectionJobInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class DescribeSentimentDetectionJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSentimentDetectionJobOutput, context: context)
        SentimentDetectionJobProperties.validate!(input[:sentiment_detection_job_properties], context: "#{context}[:sentiment_detection_job_properties]") unless input[:sentiment_detection_job_properties].nil?
      end
    end

    class DescribeTargetedSentimentDetectionJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTargetedSentimentDetectionJobInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class DescribeTargetedSentimentDetectionJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTargetedSentimentDetectionJobOutput, context: context)
        TargetedSentimentDetectionJobProperties.validate!(input[:targeted_sentiment_detection_job_properties], context: "#{context}[:targeted_sentiment_detection_job_properties]") unless input[:targeted_sentiment_detection_job_properties].nil?
      end
    end

    class DescribeTopicsDetectionJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTopicsDetectionJobInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class DescribeTopicsDetectionJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTopicsDetectionJobOutput, context: context)
        TopicsDetectionJobProperties.validate!(input[:topics_detection_job_properties], context: "#{context}[:topics_detection_job_properties]") unless input[:topics_detection_job_properties].nil?
      end
    end

    class DetectDominantLanguageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetectDominantLanguageInput, context: context)
        Hearth::Validator.validate!(input[:text], ::String, context: "#{context}[:text]")
      end
    end

    class DetectDominantLanguageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetectDominantLanguageOutput, context: context)
        ListOfDominantLanguages.validate!(input[:languages], context: "#{context}[:languages]") unless input[:languages].nil?
      end
    end

    class DetectEntitiesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetectEntitiesInput, context: context)
        Hearth::Validator.validate!(input[:text], ::String, context: "#{context}[:text]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:endpoint_arn], ::String, context: "#{context}[:endpoint_arn]")
      end
    end

    class DetectEntitiesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetectEntitiesOutput, context: context)
        ListOfEntities.validate!(input[:entities], context: "#{context}[:entities]") unless input[:entities].nil?
      end
    end

    class DetectKeyPhrasesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetectKeyPhrasesInput, context: context)
        Hearth::Validator.validate!(input[:text], ::String, context: "#{context}[:text]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
      end
    end

    class DetectKeyPhrasesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetectKeyPhrasesOutput, context: context)
        ListOfKeyPhrases.validate!(input[:key_phrases], context: "#{context}[:key_phrases]") unless input[:key_phrases].nil?
      end
    end

    class DetectPiiEntitiesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetectPiiEntitiesInput, context: context)
        Hearth::Validator.validate!(input[:text], ::String, context: "#{context}[:text]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
      end
    end

    class DetectPiiEntitiesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetectPiiEntitiesOutput, context: context)
        ListOfPiiEntities.validate!(input[:entities], context: "#{context}[:entities]") unless input[:entities].nil?
      end
    end

    class DetectSentimentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetectSentimentInput, context: context)
        Hearth::Validator.validate!(input[:text], ::String, context: "#{context}[:text]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
      end
    end

    class DetectSentimentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetectSentimentOutput, context: context)
        Hearth::Validator.validate!(input[:sentiment], ::String, context: "#{context}[:sentiment]")
        SentimentScore.validate!(input[:sentiment_score], context: "#{context}[:sentiment_score]") unless input[:sentiment_score].nil?
      end
    end

    class DetectSyntaxInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetectSyntaxInput, context: context)
        Hearth::Validator.validate!(input[:text], ::String, context: "#{context}[:text]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
      end
    end

    class DetectSyntaxOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetectSyntaxOutput, context: context)
        ListOfSyntaxTokens.validate!(input[:syntax_tokens], context: "#{context}[:syntax_tokens]") unless input[:syntax_tokens].nil?
      end
    end

    class DocumentClass
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DocumentClass, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:score], ::Float, context: "#{context}[:score]")
      end
    end

    class DocumentClassificationJobFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DocumentClassificationJobFilter, context: context)
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
        Hearth::Validator.validate!(input[:submit_time_before], ::Time, context: "#{context}[:submit_time_before]")
        Hearth::Validator.validate!(input[:submit_time_after], ::Time, context: "#{context}[:submit_time_after]")
      end
    end

    class DocumentClassificationJobProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DocumentClassificationJobProperties, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:job_arn], ::String, context: "#{context}[:job_arn]")
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:submit_time], ::Time, context: "#{context}[:submit_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:document_classifier_arn], ::String, context: "#{context}[:document_classifier_arn]")
        InputDataConfig.validate!(input[:input_data_config], context: "#{context}[:input_data_config]") unless input[:input_data_config].nil?
        OutputDataConfig.validate!(input[:output_data_config], context: "#{context}[:output_data_config]") unless input[:output_data_config].nil?
        Hearth::Validator.validate!(input[:data_access_role_arn], ::String, context: "#{context}[:data_access_role_arn]")
        Hearth::Validator.validate!(input[:volume_kms_key_id], ::String, context: "#{context}[:volume_kms_key_id]")
        VpcConfig.validate!(input[:vpc_config], context: "#{context}[:vpc_config]") unless input[:vpc_config].nil?
      end
    end

    class DocumentClassificationJobPropertiesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DocumentClassificationJobProperties.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DocumentClassifierAugmentedManifestsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AugmentedManifestsListItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DocumentClassifierFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DocumentClassifierFilter, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:document_classifier_name], ::String, context: "#{context}[:document_classifier_name]")
        Hearth::Validator.validate!(input[:submit_time_before], ::Time, context: "#{context}[:submit_time_before]")
        Hearth::Validator.validate!(input[:submit_time_after], ::Time, context: "#{context}[:submit_time_after]")
      end
    end

    class DocumentClassifierInputDataConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DocumentClassifierInputDataConfig, context: context)
        Hearth::Validator.validate!(input[:data_format], ::String, context: "#{context}[:data_format]")
        Hearth::Validator.validate!(input[:s3_uri], ::String, context: "#{context}[:s3_uri]")
        Hearth::Validator.validate!(input[:test_s3_uri], ::String, context: "#{context}[:test_s3_uri]")
        Hearth::Validator.validate!(input[:label_delimiter], ::String, context: "#{context}[:label_delimiter]")
        DocumentClassifierAugmentedManifestsList.validate!(input[:augmented_manifests], context: "#{context}[:augmented_manifests]") unless input[:augmented_manifests].nil?
      end
    end

    class DocumentClassifierOutputDataConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DocumentClassifierOutputDataConfig, context: context)
        Hearth::Validator.validate!(input[:s3_uri], ::String, context: "#{context}[:s3_uri]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
      end
    end

    class DocumentClassifierProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DocumentClassifierProperties, context: context)
        Hearth::Validator.validate!(input[:document_classifier_arn], ::String, context: "#{context}[:document_classifier_arn]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:submit_time], ::Time, context: "#{context}[:submit_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:training_start_time], ::Time, context: "#{context}[:training_start_time]")
        Hearth::Validator.validate!(input[:training_end_time], ::Time, context: "#{context}[:training_end_time]")
        DocumentClassifierInputDataConfig.validate!(input[:input_data_config], context: "#{context}[:input_data_config]") unless input[:input_data_config].nil?
        DocumentClassifierOutputDataConfig.validate!(input[:output_data_config], context: "#{context}[:output_data_config]") unless input[:output_data_config].nil?
        ClassifierMetadata.validate!(input[:classifier_metadata], context: "#{context}[:classifier_metadata]") unless input[:classifier_metadata].nil?
        Hearth::Validator.validate!(input[:data_access_role_arn], ::String, context: "#{context}[:data_access_role_arn]")
        Hearth::Validator.validate!(input[:volume_kms_key_id], ::String, context: "#{context}[:volume_kms_key_id]")
        VpcConfig.validate!(input[:vpc_config], context: "#{context}[:vpc_config]") unless input[:vpc_config].nil?
        Hearth::Validator.validate!(input[:mode], ::String, context: "#{context}[:mode]")
        Hearth::Validator.validate!(input[:model_kms_key_id], ::String, context: "#{context}[:model_kms_key_id]")
        Hearth::Validator.validate!(input[:version_name], ::String, context: "#{context}[:version_name]")
        Hearth::Validator.validate!(input[:source_model_arn], ::String, context: "#{context}[:source_model_arn]")
      end
    end

    class DocumentClassifierPropertiesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DocumentClassifierProperties.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DocumentClassifierSummariesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DocumentClassifierSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DocumentClassifierSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DocumentClassifierSummary, context: context)
        Hearth::Validator.validate!(input[:document_classifier_name], ::String, context: "#{context}[:document_classifier_name]")
        Hearth::Validator.validate!(input[:number_of_versions], ::Integer, context: "#{context}[:number_of_versions]")
        Hearth::Validator.validate!(input[:latest_version_created_at], ::Time, context: "#{context}[:latest_version_created_at]")
        Hearth::Validator.validate!(input[:latest_version_name], ::String, context: "#{context}[:latest_version_name]")
        Hearth::Validator.validate!(input[:latest_version_status], ::String, context: "#{context}[:latest_version_status]")
      end
    end

    class DocumentLabel
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DocumentLabel, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:score], ::Float, context: "#{context}[:score]")
      end
    end

    class DocumentReaderConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DocumentReaderConfig, context: context)
        Hearth::Validator.validate!(input[:document_read_action], ::String, context: "#{context}[:document_read_action]")
        Hearth::Validator.validate!(input[:document_read_mode], ::String, context: "#{context}[:document_read_mode]")
        ListOfDocumentReadFeatureTypes.validate!(input[:feature_types], context: "#{context}[:feature_types]") unless input[:feature_types].nil?
      end
    end

    class DominantLanguage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DominantLanguage, context: context)
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:score], ::Float, context: "#{context}[:score]")
      end
    end

    class DominantLanguageDetectionJobFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DominantLanguageDetectionJobFilter, context: context)
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
        Hearth::Validator.validate!(input[:submit_time_before], ::Time, context: "#{context}[:submit_time_before]")
        Hearth::Validator.validate!(input[:submit_time_after], ::Time, context: "#{context}[:submit_time_after]")
      end
    end

    class DominantLanguageDetectionJobProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DominantLanguageDetectionJobProperties, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:job_arn], ::String, context: "#{context}[:job_arn]")
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:submit_time], ::Time, context: "#{context}[:submit_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        InputDataConfig.validate!(input[:input_data_config], context: "#{context}[:input_data_config]") unless input[:input_data_config].nil?
        OutputDataConfig.validate!(input[:output_data_config], context: "#{context}[:output_data_config]") unless input[:output_data_config].nil?
        Hearth::Validator.validate!(input[:data_access_role_arn], ::String, context: "#{context}[:data_access_role_arn]")
        Hearth::Validator.validate!(input[:volume_kms_key_id], ::String, context: "#{context}[:volume_kms_key_id]")
        VpcConfig.validate!(input[:vpc_config], context: "#{context}[:vpc_config]") unless input[:vpc_config].nil?
      end
    end

    class DominantLanguageDetectionJobPropertiesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DominantLanguageDetectionJobProperties.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EndpointFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EndpointFilter, context: context)
        Hearth::Validator.validate!(input[:model_arn], ::String, context: "#{context}[:model_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:creation_time_before], ::Time, context: "#{context}[:creation_time_before]")
        Hearth::Validator.validate!(input[:creation_time_after], ::Time, context: "#{context}[:creation_time_after]")
      end
    end

    class EndpointProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EndpointProperties, context: context)
        Hearth::Validator.validate!(input[:endpoint_arn], ::String, context: "#{context}[:endpoint_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:model_arn], ::String, context: "#{context}[:model_arn]")
        Hearth::Validator.validate!(input[:desired_model_arn], ::String, context: "#{context}[:desired_model_arn]")
        Hearth::Validator.validate!(input[:desired_inference_units], ::Integer, context: "#{context}[:desired_inference_units]")
        Hearth::Validator.validate!(input[:current_inference_units], ::Integer, context: "#{context}[:current_inference_units]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:data_access_role_arn], ::String, context: "#{context}[:data_access_role_arn]")
        Hearth::Validator.validate!(input[:desired_data_access_role_arn], ::String, context: "#{context}[:desired_data_access_role_arn]")
      end
    end

    class EndpointPropertiesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EndpointProperties.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EntitiesDetectionJobFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EntitiesDetectionJobFilter, context: context)
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
        Hearth::Validator.validate!(input[:submit_time_before], ::Time, context: "#{context}[:submit_time_before]")
        Hearth::Validator.validate!(input[:submit_time_after], ::Time, context: "#{context}[:submit_time_after]")
      end
    end

    class EntitiesDetectionJobProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EntitiesDetectionJobProperties, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:job_arn], ::String, context: "#{context}[:job_arn]")
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:submit_time], ::Time, context: "#{context}[:submit_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:entity_recognizer_arn], ::String, context: "#{context}[:entity_recognizer_arn]")
        InputDataConfig.validate!(input[:input_data_config], context: "#{context}[:input_data_config]") unless input[:input_data_config].nil?
        OutputDataConfig.validate!(input[:output_data_config], context: "#{context}[:output_data_config]") unless input[:output_data_config].nil?
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:data_access_role_arn], ::String, context: "#{context}[:data_access_role_arn]")
        Hearth::Validator.validate!(input[:volume_kms_key_id], ::String, context: "#{context}[:volume_kms_key_id]")
        VpcConfig.validate!(input[:vpc_config], context: "#{context}[:vpc_config]") unless input[:vpc_config].nil?
      end
    end

    class EntitiesDetectionJobPropertiesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EntitiesDetectionJobProperties.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Entity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Entity, context: context)
        Hearth::Validator.validate!(input[:score], ::Float, context: "#{context}[:score]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:text], ::String, context: "#{context}[:text]")
        Hearth::Validator.validate!(input[:begin_offset], ::Integer, context: "#{context}[:begin_offset]")
        Hearth::Validator.validate!(input[:end_offset], ::Integer, context: "#{context}[:end_offset]")
      end
    end

    class EntityLabel
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EntityLabel, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:score], ::Float, context: "#{context}[:score]")
      end
    end

    class EntityRecognizerAnnotations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EntityRecognizerAnnotations, context: context)
        Hearth::Validator.validate!(input[:s3_uri], ::String, context: "#{context}[:s3_uri]")
        Hearth::Validator.validate!(input[:test_s3_uri], ::String, context: "#{context}[:test_s3_uri]")
      end
    end

    class EntityRecognizerAugmentedManifestsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AugmentedManifestsListItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EntityRecognizerDocuments
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EntityRecognizerDocuments, context: context)
        Hearth::Validator.validate!(input[:s3_uri], ::String, context: "#{context}[:s3_uri]")
        Hearth::Validator.validate!(input[:test_s3_uri], ::String, context: "#{context}[:test_s3_uri]")
        Hearth::Validator.validate!(input[:input_format], ::String, context: "#{context}[:input_format]")
      end
    end

    class EntityRecognizerEntityList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EntityRecognizerEntityList, context: context)
        Hearth::Validator.validate!(input[:s3_uri], ::String, context: "#{context}[:s3_uri]")
      end
    end

    class EntityRecognizerEvaluationMetrics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EntityRecognizerEvaluationMetrics, context: context)
        Hearth::Validator.validate!(input[:precision], ::Float, context: "#{context}[:precision]")
        Hearth::Validator.validate!(input[:recall], ::Float, context: "#{context}[:recall]")
        Hearth::Validator.validate!(input[:f1_score], ::Float, context: "#{context}[:f1_score]")
      end
    end

    class EntityRecognizerFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EntityRecognizerFilter, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:recognizer_name], ::String, context: "#{context}[:recognizer_name]")
        Hearth::Validator.validate!(input[:submit_time_before], ::Time, context: "#{context}[:submit_time_before]")
        Hearth::Validator.validate!(input[:submit_time_after], ::Time, context: "#{context}[:submit_time_after]")
      end
    end

    class EntityRecognizerInputDataConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EntityRecognizerInputDataConfig, context: context)
        Hearth::Validator.validate!(input[:data_format], ::String, context: "#{context}[:data_format]")
        EntityTypesList.validate!(input[:entity_types], context: "#{context}[:entity_types]") unless input[:entity_types].nil?
        EntityRecognizerDocuments.validate!(input[:documents], context: "#{context}[:documents]") unless input[:documents].nil?
        EntityRecognizerAnnotations.validate!(input[:annotations], context: "#{context}[:annotations]") unless input[:annotations].nil?
        EntityRecognizerEntityList.validate!(input[:entity_list], context: "#{context}[:entity_list]") unless input[:entity_list].nil?
        EntityRecognizerAugmentedManifestsList.validate!(input[:augmented_manifests], context: "#{context}[:augmented_manifests]") unless input[:augmented_manifests].nil?
      end
    end

    class EntityRecognizerMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EntityRecognizerMetadata, context: context)
        Hearth::Validator.validate!(input[:number_of_trained_documents], ::Integer, context: "#{context}[:number_of_trained_documents]")
        Hearth::Validator.validate!(input[:number_of_test_documents], ::Integer, context: "#{context}[:number_of_test_documents]")
        EntityRecognizerEvaluationMetrics.validate!(input[:evaluation_metrics], context: "#{context}[:evaluation_metrics]") unless input[:evaluation_metrics].nil?
        EntityRecognizerMetadataEntityTypesList.validate!(input[:entity_types], context: "#{context}[:entity_types]") unless input[:entity_types].nil?
      end
    end

    class EntityRecognizerMetadataEntityTypesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EntityRecognizerMetadataEntityTypesListItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EntityRecognizerMetadataEntityTypesListItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EntityRecognizerMetadataEntityTypesListItem, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        EntityTypesEvaluationMetrics.validate!(input[:evaluation_metrics], context: "#{context}[:evaluation_metrics]") unless input[:evaluation_metrics].nil?
        Hearth::Validator.validate!(input[:number_of_train_mentions], ::Integer, context: "#{context}[:number_of_train_mentions]")
      end
    end

    class EntityRecognizerProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EntityRecognizerProperties, context: context)
        Hearth::Validator.validate!(input[:entity_recognizer_arn], ::String, context: "#{context}[:entity_recognizer_arn]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:submit_time], ::Time, context: "#{context}[:submit_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:training_start_time], ::Time, context: "#{context}[:training_start_time]")
        Hearth::Validator.validate!(input[:training_end_time], ::Time, context: "#{context}[:training_end_time]")
        EntityRecognizerInputDataConfig.validate!(input[:input_data_config], context: "#{context}[:input_data_config]") unless input[:input_data_config].nil?
        EntityRecognizerMetadata.validate!(input[:recognizer_metadata], context: "#{context}[:recognizer_metadata]") unless input[:recognizer_metadata].nil?
        Hearth::Validator.validate!(input[:data_access_role_arn], ::String, context: "#{context}[:data_access_role_arn]")
        Hearth::Validator.validate!(input[:volume_kms_key_id], ::String, context: "#{context}[:volume_kms_key_id]")
        VpcConfig.validate!(input[:vpc_config], context: "#{context}[:vpc_config]") unless input[:vpc_config].nil?
        Hearth::Validator.validate!(input[:model_kms_key_id], ::String, context: "#{context}[:model_kms_key_id]")
        Hearth::Validator.validate!(input[:version_name], ::String, context: "#{context}[:version_name]")
        Hearth::Validator.validate!(input[:source_model_arn], ::String, context: "#{context}[:source_model_arn]")
      end
    end

    class EntityRecognizerPropertiesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EntityRecognizerProperties.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EntityRecognizerSummariesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EntityRecognizerSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EntityRecognizerSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EntityRecognizerSummary, context: context)
        Hearth::Validator.validate!(input[:recognizer_name], ::String, context: "#{context}[:recognizer_name]")
        Hearth::Validator.validate!(input[:number_of_versions], ::Integer, context: "#{context}[:number_of_versions]")
        Hearth::Validator.validate!(input[:latest_version_created_at], ::Time, context: "#{context}[:latest_version_created_at]")
        Hearth::Validator.validate!(input[:latest_version_name], ::String, context: "#{context}[:latest_version_name]")
        Hearth::Validator.validate!(input[:latest_version_status], ::String, context: "#{context}[:latest_version_status]")
      end
    end

    class EntityTypesEvaluationMetrics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EntityTypesEvaluationMetrics, context: context)
        Hearth::Validator.validate!(input[:precision], ::Float, context: "#{context}[:precision]")
        Hearth::Validator.validate!(input[:recall], ::Float, context: "#{context}[:recall]")
        Hearth::Validator.validate!(input[:f1_score], ::Float, context: "#{context}[:f1_score]")
      end
    end

    class EntityTypesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EntityTypesListItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EntityTypesListItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EntityTypesListItem, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class EventsDetectionJobFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventsDetectionJobFilter, context: context)
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
        Hearth::Validator.validate!(input[:submit_time_before], ::Time, context: "#{context}[:submit_time_before]")
        Hearth::Validator.validate!(input[:submit_time_after], ::Time, context: "#{context}[:submit_time_after]")
      end
    end

    class EventsDetectionJobProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventsDetectionJobProperties, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:job_arn], ::String, context: "#{context}[:job_arn]")
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:submit_time], ::Time, context: "#{context}[:submit_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        InputDataConfig.validate!(input[:input_data_config], context: "#{context}[:input_data_config]") unless input[:input_data_config].nil?
        OutputDataConfig.validate!(input[:output_data_config], context: "#{context}[:output_data_config]") unless input[:output_data_config].nil?
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:data_access_role_arn], ::String, context: "#{context}[:data_access_role_arn]")
        TargetEventTypes.validate!(input[:target_event_types], context: "#{context}[:target_event_types]") unless input[:target_event_types].nil?
      end
    end

    class EventsDetectionJobPropertiesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EventsDetectionJobProperties.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ImportModelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportModelInput, context: context)
        Hearth::Validator.validate!(input[:source_model_arn], ::String, context: "#{context}[:source_model_arn]")
        Hearth::Validator.validate!(input[:model_name], ::String, context: "#{context}[:model_name]")
        Hearth::Validator.validate!(input[:version_name], ::String, context: "#{context}[:version_name]")
        Hearth::Validator.validate!(input[:model_kms_key_id], ::String, context: "#{context}[:model_kms_key_id]")
        Hearth::Validator.validate!(input[:data_access_role_arn], ::String, context: "#{context}[:data_access_role_arn]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ImportModelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportModelOutput, context: context)
        Hearth::Validator.validate!(input[:model_arn], ::String, context: "#{context}[:model_arn]")
      end
    end

    class InputDataConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InputDataConfig, context: context)
        Hearth::Validator.validate!(input[:s3_uri], ::String, context: "#{context}[:s3_uri]")
        Hearth::Validator.validate!(input[:input_format], ::String, context: "#{context}[:input_format]")
        DocumentReaderConfig.validate!(input[:document_reader_config], context: "#{context}[:document_reader_config]") unless input[:document_reader_config].nil?
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidFilterException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidFilterException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class JobNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class KeyPhrase
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KeyPhrase, context: context)
        Hearth::Validator.validate!(input[:score], ::Float, context: "#{context}[:score]")
        Hearth::Validator.validate!(input[:text], ::String, context: "#{context}[:text]")
        Hearth::Validator.validate!(input[:begin_offset], ::Integer, context: "#{context}[:begin_offset]")
        Hearth::Validator.validate!(input[:end_offset], ::Integer, context: "#{context}[:end_offset]")
      end
    end

    class KeyPhrasesDetectionJobFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KeyPhrasesDetectionJobFilter, context: context)
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
        Hearth::Validator.validate!(input[:submit_time_before], ::Time, context: "#{context}[:submit_time_before]")
        Hearth::Validator.validate!(input[:submit_time_after], ::Time, context: "#{context}[:submit_time_after]")
      end
    end

    class KeyPhrasesDetectionJobProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KeyPhrasesDetectionJobProperties, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:job_arn], ::String, context: "#{context}[:job_arn]")
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:submit_time], ::Time, context: "#{context}[:submit_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        InputDataConfig.validate!(input[:input_data_config], context: "#{context}[:input_data_config]") unless input[:input_data_config].nil?
        OutputDataConfig.validate!(input[:output_data_config], context: "#{context}[:output_data_config]") unless input[:output_data_config].nil?
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:data_access_role_arn], ::String, context: "#{context}[:data_access_role_arn]")
        Hearth::Validator.validate!(input[:volume_kms_key_id], ::String, context: "#{context}[:volume_kms_key_id]")
        VpcConfig.validate!(input[:vpc_config], context: "#{context}[:vpc_config]") unless input[:vpc_config].nil?
      end
    end

    class KeyPhrasesDetectionJobPropertiesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          KeyPhrasesDetectionJobProperties.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class KmsKeyValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KmsKeyValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListDocumentClassificationJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDocumentClassificationJobsInput, context: context)
        DocumentClassificationJobFilter.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListDocumentClassificationJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDocumentClassificationJobsOutput, context: context)
        DocumentClassificationJobPropertiesList.validate!(input[:document_classification_job_properties_list], context: "#{context}[:document_classification_job_properties_list]") unless input[:document_classification_job_properties_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDocumentClassifierSummariesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDocumentClassifierSummariesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListDocumentClassifierSummariesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDocumentClassifierSummariesOutput, context: context)
        DocumentClassifierSummariesList.validate!(input[:document_classifier_summaries_list], context: "#{context}[:document_classifier_summaries_list]") unless input[:document_classifier_summaries_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDocumentClassifiersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDocumentClassifiersInput, context: context)
        DocumentClassifierFilter.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListDocumentClassifiersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDocumentClassifiersOutput, context: context)
        DocumentClassifierPropertiesList.validate!(input[:document_classifier_properties_list], context: "#{context}[:document_classifier_properties_list]") unless input[:document_classifier_properties_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDominantLanguageDetectionJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDominantLanguageDetectionJobsInput, context: context)
        DominantLanguageDetectionJobFilter.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListDominantLanguageDetectionJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDominantLanguageDetectionJobsOutput, context: context)
        DominantLanguageDetectionJobPropertiesList.validate!(input[:dominant_language_detection_job_properties_list], context: "#{context}[:dominant_language_detection_job_properties_list]") unless input[:dominant_language_detection_job_properties_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListEndpointsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEndpointsInput, context: context)
        EndpointFilter.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListEndpointsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEndpointsOutput, context: context)
        EndpointPropertiesList.validate!(input[:endpoint_properties_list], context: "#{context}[:endpoint_properties_list]") unless input[:endpoint_properties_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListEntitiesDetectionJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEntitiesDetectionJobsInput, context: context)
        EntitiesDetectionJobFilter.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListEntitiesDetectionJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEntitiesDetectionJobsOutput, context: context)
        EntitiesDetectionJobPropertiesList.validate!(input[:entities_detection_job_properties_list], context: "#{context}[:entities_detection_job_properties_list]") unless input[:entities_detection_job_properties_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListEntityRecognizerSummariesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEntityRecognizerSummariesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListEntityRecognizerSummariesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEntityRecognizerSummariesOutput, context: context)
        EntityRecognizerSummariesList.validate!(input[:entity_recognizer_summaries_list], context: "#{context}[:entity_recognizer_summaries_list]") unless input[:entity_recognizer_summaries_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListEntityRecognizersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEntityRecognizersInput, context: context)
        EntityRecognizerFilter.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListEntityRecognizersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEntityRecognizersOutput, context: context)
        EntityRecognizerPropertiesList.validate!(input[:entity_recognizer_properties_list], context: "#{context}[:entity_recognizer_properties_list]") unless input[:entity_recognizer_properties_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListEventsDetectionJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEventsDetectionJobsInput, context: context)
        EventsDetectionJobFilter.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListEventsDetectionJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEventsDetectionJobsOutput, context: context)
        EventsDetectionJobPropertiesList.validate!(input[:events_detection_job_properties_list], context: "#{context}[:events_detection_job_properties_list]") unless input[:events_detection_job_properties_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListKeyPhrasesDetectionJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListKeyPhrasesDetectionJobsInput, context: context)
        KeyPhrasesDetectionJobFilter.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListKeyPhrasesDetectionJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListKeyPhrasesDetectionJobsOutput, context: context)
        KeyPhrasesDetectionJobPropertiesList.validate!(input[:key_phrases_detection_job_properties_list], context: "#{context}[:key_phrases_detection_job_properties_list]") unless input[:key_phrases_detection_job_properties_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListOfClasses
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DocumentClass.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfDetectDominantLanguageResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BatchDetectDominantLanguageItemResult.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfDetectEntitiesResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BatchDetectEntitiesItemResult.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfDetectKeyPhrasesResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BatchDetectKeyPhrasesItemResult.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfDetectSentimentResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BatchDetectSentimentItemResult.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfDetectSyntaxResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BatchDetectSyntaxItemResult.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfDocumentReadFeatureTypes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ListOfDominantLanguages
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DominantLanguage.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfEntities
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Entity.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfEntityLabels
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EntityLabel.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfKeyPhrases
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          KeyPhrase.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfLabels
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DocumentLabel.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfPiiEntities
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PiiEntity.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfPiiEntityTypes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ListOfSyntaxTokens
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SyntaxToken.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListPiiEntitiesDetectionJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPiiEntitiesDetectionJobsInput, context: context)
        PiiEntitiesDetectionJobFilter.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListPiiEntitiesDetectionJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPiiEntitiesDetectionJobsOutput, context: context)
        PiiEntitiesDetectionJobPropertiesList.validate!(input[:pii_entities_detection_job_properties_list], context: "#{context}[:pii_entities_detection_job_properties_list]") unless input[:pii_entities_detection_job_properties_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSentimentDetectionJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSentimentDetectionJobsInput, context: context)
        SentimentDetectionJobFilter.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListSentimentDetectionJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSentimentDetectionJobsOutput, context: context)
        SentimentDetectionJobPropertiesList.validate!(input[:sentiment_detection_job_properties_list], context: "#{context}[:sentiment_detection_job_properties_list]") unless input[:sentiment_detection_job_properties_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ListTargetedSentimentDetectionJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTargetedSentimentDetectionJobsInput, context: context)
        TargetedSentimentDetectionJobFilter.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListTargetedSentimentDetectionJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTargetedSentimentDetectionJobsOutput, context: context)
        TargetedSentimentDetectionJobPropertiesList.validate!(input[:targeted_sentiment_detection_job_properties_list], context: "#{context}[:targeted_sentiment_detection_job_properties_list]") unless input[:targeted_sentiment_detection_job_properties_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTopicsDetectionJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTopicsDetectionJobsInput, context: context)
        TopicsDetectionJobFilter.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListTopicsDetectionJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTopicsDetectionJobsOutput, context: context)
        TopicsDetectionJobPropertiesList.validate!(input[:topics_detection_job_properties_list], context: "#{context}[:topics_detection_job_properties_list]") unless input[:topics_detection_job_properties_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class OutputDataConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OutputDataConfig, context: context)
        Hearth::Validator.validate!(input[:s3_uri], ::String, context: "#{context}[:s3_uri]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
      end
    end

    class PartOfSpeechTag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PartOfSpeechTag, context: context)
        Hearth::Validator.validate!(input[:tag], ::String, context: "#{context}[:tag]")
        Hearth::Validator.validate!(input[:score], ::Float, context: "#{context}[:score]")
      end
    end

    class PiiEntitiesDetectionJobFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PiiEntitiesDetectionJobFilter, context: context)
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
        Hearth::Validator.validate!(input[:submit_time_before], ::Time, context: "#{context}[:submit_time_before]")
        Hearth::Validator.validate!(input[:submit_time_after], ::Time, context: "#{context}[:submit_time_after]")
      end
    end

    class PiiEntitiesDetectionJobProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PiiEntitiesDetectionJobProperties, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:job_arn], ::String, context: "#{context}[:job_arn]")
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:submit_time], ::Time, context: "#{context}[:submit_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        InputDataConfig.validate!(input[:input_data_config], context: "#{context}[:input_data_config]") unless input[:input_data_config].nil?
        PiiOutputDataConfig.validate!(input[:output_data_config], context: "#{context}[:output_data_config]") unless input[:output_data_config].nil?
        RedactionConfig.validate!(input[:redaction_config], context: "#{context}[:redaction_config]") unless input[:redaction_config].nil?
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:data_access_role_arn], ::String, context: "#{context}[:data_access_role_arn]")
        Hearth::Validator.validate!(input[:mode], ::String, context: "#{context}[:mode]")
      end
    end

    class PiiEntitiesDetectionJobPropertiesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PiiEntitiesDetectionJobProperties.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PiiEntity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PiiEntity, context: context)
        Hearth::Validator.validate!(input[:score], ::Float, context: "#{context}[:score]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:begin_offset], ::Integer, context: "#{context}[:begin_offset]")
        Hearth::Validator.validate!(input[:end_offset], ::Integer, context: "#{context}[:end_offset]")
      end
    end

    class PiiOutputDataConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PiiOutputDataConfig, context: context)
        Hearth::Validator.validate!(input[:s3_uri], ::String, context: "#{context}[:s3_uri]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
      end
    end

    class PutResourcePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutResourcePolicyInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:resource_policy], ::String, context: "#{context}[:resource_policy]")
        Hearth::Validator.validate!(input[:policy_revision_id], ::String, context: "#{context}[:policy_revision_id]")
      end
    end

    class PutResourcePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutResourcePolicyOutput, context: context)
        Hearth::Validator.validate!(input[:policy_revision_id], ::String, context: "#{context}[:policy_revision_id]")
      end
    end

    class RedactionConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RedactionConfig, context: context)
        ListOfPiiEntityTypes.validate!(input[:pii_entity_types], context: "#{context}[:pii_entity_types]") unless input[:pii_entity_types].nil?
        Hearth::Validator.validate!(input[:mask_mode], ::String, context: "#{context}[:mask_mode]")
        Hearth::Validator.validate!(input[:mask_character], ::String, context: "#{context}[:mask_character]")
      end
    end

    class ResourceInUseException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceInUseException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceUnavailableException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceUnavailableException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SecurityGroupIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SentimentDetectionJobFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SentimentDetectionJobFilter, context: context)
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
        Hearth::Validator.validate!(input[:submit_time_before], ::Time, context: "#{context}[:submit_time_before]")
        Hearth::Validator.validate!(input[:submit_time_after], ::Time, context: "#{context}[:submit_time_after]")
      end
    end

    class SentimentDetectionJobProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SentimentDetectionJobProperties, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:job_arn], ::String, context: "#{context}[:job_arn]")
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:submit_time], ::Time, context: "#{context}[:submit_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        InputDataConfig.validate!(input[:input_data_config], context: "#{context}[:input_data_config]") unless input[:input_data_config].nil?
        OutputDataConfig.validate!(input[:output_data_config], context: "#{context}[:output_data_config]") unless input[:output_data_config].nil?
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:data_access_role_arn], ::String, context: "#{context}[:data_access_role_arn]")
        Hearth::Validator.validate!(input[:volume_kms_key_id], ::String, context: "#{context}[:volume_kms_key_id]")
        VpcConfig.validate!(input[:vpc_config], context: "#{context}[:vpc_config]") unless input[:vpc_config].nil?
      end
    end

    class SentimentDetectionJobPropertiesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SentimentDetectionJobProperties.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SentimentScore
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SentimentScore, context: context)
        Hearth::Validator.validate!(input[:positive], ::Float, context: "#{context}[:positive]")
        Hearth::Validator.validate!(input[:negative], ::Float, context: "#{context}[:negative]")
        Hearth::Validator.validate!(input[:neutral], ::Float, context: "#{context}[:neutral]")
        Hearth::Validator.validate!(input[:mixed], ::Float, context: "#{context}[:mixed]")
      end
    end

    class StartDocumentClassificationJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartDocumentClassificationJobInput, context: context)
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:document_classifier_arn], ::String, context: "#{context}[:document_classifier_arn]")
        InputDataConfig.validate!(input[:input_data_config], context: "#{context}[:input_data_config]") unless input[:input_data_config].nil?
        OutputDataConfig.validate!(input[:output_data_config], context: "#{context}[:output_data_config]") unless input[:output_data_config].nil?
        Hearth::Validator.validate!(input[:data_access_role_arn], ::String, context: "#{context}[:data_access_role_arn]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:volume_kms_key_id], ::String, context: "#{context}[:volume_kms_key_id]")
        VpcConfig.validate!(input[:vpc_config], context: "#{context}[:vpc_config]") unless input[:vpc_config].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class StartDocumentClassificationJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartDocumentClassificationJobOutput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:job_arn], ::String, context: "#{context}[:job_arn]")
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
      end
    end

    class StartDominantLanguageDetectionJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartDominantLanguageDetectionJobInput, context: context)
        InputDataConfig.validate!(input[:input_data_config], context: "#{context}[:input_data_config]") unless input[:input_data_config].nil?
        OutputDataConfig.validate!(input[:output_data_config], context: "#{context}[:output_data_config]") unless input[:output_data_config].nil?
        Hearth::Validator.validate!(input[:data_access_role_arn], ::String, context: "#{context}[:data_access_role_arn]")
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:volume_kms_key_id], ::String, context: "#{context}[:volume_kms_key_id]")
        VpcConfig.validate!(input[:vpc_config], context: "#{context}[:vpc_config]") unless input[:vpc_config].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class StartDominantLanguageDetectionJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartDominantLanguageDetectionJobOutput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:job_arn], ::String, context: "#{context}[:job_arn]")
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
      end
    end

    class StartEntitiesDetectionJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartEntitiesDetectionJobInput, context: context)
        InputDataConfig.validate!(input[:input_data_config], context: "#{context}[:input_data_config]") unless input[:input_data_config].nil?
        OutputDataConfig.validate!(input[:output_data_config], context: "#{context}[:output_data_config]") unless input[:output_data_config].nil?
        Hearth::Validator.validate!(input[:data_access_role_arn], ::String, context: "#{context}[:data_access_role_arn]")
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:entity_recognizer_arn], ::String, context: "#{context}[:entity_recognizer_arn]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:volume_kms_key_id], ::String, context: "#{context}[:volume_kms_key_id]")
        VpcConfig.validate!(input[:vpc_config], context: "#{context}[:vpc_config]") unless input[:vpc_config].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class StartEntitiesDetectionJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartEntitiesDetectionJobOutput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:job_arn], ::String, context: "#{context}[:job_arn]")
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
      end
    end

    class StartEventsDetectionJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartEventsDetectionJobInput, context: context)
        InputDataConfig.validate!(input[:input_data_config], context: "#{context}[:input_data_config]") unless input[:input_data_config].nil?
        OutputDataConfig.validate!(input[:output_data_config], context: "#{context}[:output_data_config]") unless input[:output_data_config].nil?
        Hearth::Validator.validate!(input[:data_access_role_arn], ::String, context: "#{context}[:data_access_role_arn]")
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        TargetEventTypes.validate!(input[:target_event_types], context: "#{context}[:target_event_types]") unless input[:target_event_types].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class StartEventsDetectionJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartEventsDetectionJobOutput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:job_arn], ::String, context: "#{context}[:job_arn]")
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
      end
    end

    class StartKeyPhrasesDetectionJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartKeyPhrasesDetectionJobInput, context: context)
        InputDataConfig.validate!(input[:input_data_config], context: "#{context}[:input_data_config]") unless input[:input_data_config].nil?
        OutputDataConfig.validate!(input[:output_data_config], context: "#{context}[:output_data_config]") unless input[:output_data_config].nil?
        Hearth::Validator.validate!(input[:data_access_role_arn], ::String, context: "#{context}[:data_access_role_arn]")
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:volume_kms_key_id], ::String, context: "#{context}[:volume_kms_key_id]")
        VpcConfig.validate!(input[:vpc_config], context: "#{context}[:vpc_config]") unless input[:vpc_config].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class StartKeyPhrasesDetectionJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartKeyPhrasesDetectionJobOutput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:job_arn], ::String, context: "#{context}[:job_arn]")
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
      end
    end

    class StartPiiEntitiesDetectionJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartPiiEntitiesDetectionJobInput, context: context)
        InputDataConfig.validate!(input[:input_data_config], context: "#{context}[:input_data_config]") unless input[:input_data_config].nil?
        OutputDataConfig.validate!(input[:output_data_config], context: "#{context}[:output_data_config]") unless input[:output_data_config].nil?
        Hearth::Validator.validate!(input[:mode], ::String, context: "#{context}[:mode]")
        RedactionConfig.validate!(input[:redaction_config], context: "#{context}[:redaction_config]") unless input[:redaction_config].nil?
        Hearth::Validator.validate!(input[:data_access_role_arn], ::String, context: "#{context}[:data_access_role_arn]")
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class StartPiiEntitiesDetectionJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartPiiEntitiesDetectionJobOutput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:job_arn], ::String, context: "#{context}[:job_arn]")
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
      end
    end

    class StartSentimentDetectionJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartSentimentDetectionJobInput, context: context)
        InputDataConfig.validate!(input[:input_data_config], context: "#{context}[:input_data_config]") unless input[:input_data_config].nil?
        OutputDataConfig.validate!(input[:output_data_config], context: "#{context}[:output_data_config]") unless input[:output_data_config].nil?
        Hearth::Validator.validate!(input[:data_access_role_arn], ::String, context: "#{context}[:data_access_role_arn]")
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:volume_kms_key_id], ::String, context: "#{context}[:volume_kms_key_id]")
        VpcConfig.validate!(input[:vpc_config], context: "#{context}[:vpc_config]") unless input[:vpc_config].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class StartSentimentDetectionJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartSentimentDetectionJobOutput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:job_arn], ::String, context: "#{context}[:job_arn]")
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
      end
    end

    class StartTargetedSentimentDetectionJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartTargetedSentimentDetectionJobInput, context: context)
        InputDataConfig.validate!(input[:input_data_config], context: "#{context}[:input_data_config]") unless input[:input_data_config].nil?
        OutputDataConfig.validate!(input[:output_data_config], context: "#{context}[:output_data_config]") unless input[:output_data_config].nil?
        Hearth::Validator.validate!(input[:data_access_role_arn], ::String, context: "#{context}[:data_access_role_arn]")
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:volume_kms_key_id], ::String, context: "#{context}[:volume_kms_key_id]")
        VpcConfig.validate!(input[:vpc_config], context: "#{context}[:vpc_config]") unless input[:vpc_config].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class StartTargetedSentimentDetectionJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartTargetedSentimentDetectionJobOutput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:job_arn], ::String, context: "#{context}[:job_arn]")
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
      end
    end

    class StartTopicsDetectionJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartTopicsDetectionJobInput, context: context)
        InputDataConfig.validate!(input[:input_data_config], context: "#{context}[:input_data_config]") unless input[:input_data_config].nil?
        OutputDataConfig.validate!(input[:output_data_config], context: "#{context}[:output_data_config]") unless input[:output_data_config].nil?
        Hearth::Validator.validate!(input[:data_access_role_arn], ::String, context: "#{context}[:data_access_role_arn]")
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:number_of_topics], ::Integer, context: "#{context}[:number_of_topics]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:volume_kms_key_id], ::String, context: "#{context}[:volume_kms_key_id]")
        VpcConfig.validate!(input[:vpc_config], context: "#{context}[:vpc_config]") unless input[:vpc_config].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class StartTopicsDetectionJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartTopicsDetectionJobOutput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:job_arn], ::String, context: "#{context}[:job_arn]")
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
      end
    end

    class StopDominantLanguageDetectionJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopDominantLanguageDetectionJobInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class StopDominantLanguageDetectionJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopDominantLanguageDetectionJobOutput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
      end
    end

    class StopEntitiesDetectionJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopEntitiesDetectionJobInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class StopEntitiesDetectionJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopEntitiesDetectionJobOutput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
      end
    end

    class StopEventsDetectionJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopEventsDetectionJobInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class StopEventsDetectionJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopEventsDetectionJobOutput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
      end
    end

    class StopKeyPhrasesDetectionJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopKeyPhrasesDetectionJobInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class StopKeyPhrasesDetectionJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopKeyPhrasesDetectionJobOutput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
      end
    end

    class StopPiiEntitiesDetectionJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopPiiEntitiesDetectionJobInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class StopPiiEntitiesDetectionJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopPiiEntitiesDetectionJobOutput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
      end
    end

    class StopSentimentDetectionJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopSentimentDetectionJobInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class StopSentimentDetectionJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopSentimentDetectionJobOutput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
      end
    end

    class StopTargetedSentimentDetectionJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopTargetedSentimentDetectionJobInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class StopTargetedSentimentDetectionJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopTargetedSentimentDetectionJobOutput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
      end
    end

    class StopTrainingDocumentClassifierInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopTrainingDocumentClassifierInput, context: context)
        Hearth::Validator.validate!(input[:document_classifier_arn], ::String, context: "#{context}[:document_classifier_arn]")
      end
    end

    class StopTrainingDocumentClassifierOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopTrainingDocumentClassifierOutput, context: context)
      end
    end

    class StopTrainingEntityRecognizerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopTrainingEntityRecognizerInput, context: context)
        Hearth::Validator.validate!(input[:entity_recognizer_arn], ::String, context: "#{context}[:entity_recognizer_arn]")
      end
    end

    class StopTrainingEntityRecognizerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopTrainingEntityRecognizerOutput, context: context)
      end
    end

    class Subnets
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SyntaxToken
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SyntaxToken, context: context)
        Hearth::Validator.validate!(input[:token_id], ::Integer, context: "#{context}[:token_id]")
        Hearth::Validator.validate!(input[:text], ::String, context: "#{context}[:text]")
        Hearth::Validator.validate!(input[:begin_offset], ::Integer, context: "#{context}[:begin_offset]")
        Hearth::Validator.validate!(input[:end_offset], ::Integer, context: "#{context}[:end_offset]")
        PartOfSpeechTag.validate!(input[:part_of_speech], context: "#{context}[:part_of_speech]") unless input[:part_of_speech].nil?
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class TargetEventTypes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TargetedSentimentDetectionJobFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TargetedSentimentDetectionJobFilter, context: context)
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
        Hearth::Validator.validate!(input[:submit_time_before], ::Time, context: "#{context}[:submit_time_before]")
        Hearth::Validator.validate!(input[:submit_time_after], ::Time, context: "#{context}[:submit_time_after]")
      end
    end

    class TargetedSentimentDetectionJobProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TargetedSentimentDetectionJobProperties, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:job_arn], ::String, context: "#{context}[:job_arn]")
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:submit_time], ::Time, context: "#{context}[:submit_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        InputDataConfig.validate!(input[:input_data_config], context: "#{context}[:input_data_config]") unless input[:input_data_config].nil?
        OutputDataConfig.validate!(input[:output_data_config], context: "#{context}[:output_data_config]") unless input[:output_data_config].nil?
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:data_access_role_arn], ::String, context: "#{context}[:data_access_role_arn]")
        Hearth::Validator.validate!(input[:volume_kms_key_id], ::String, context: "#{context}[:volume_kms_key_id]")
        VpcConfig.validate!(input[:vpc_config], context: "#{context}[:vpc_config]") unless input[:vpc_config].nil?
      end
    end

    class TargetedSentimentDetectionJobPropertiesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TargetedSentimentDetectionJobProperties.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TextSizeLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TextSizeLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyRequestsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyRequestsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyTagKeysException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyTagKeysException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyTagsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyTagsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TopicsDetectionJobFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TopicsDetectionJobFilter, context: context)
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
        Hearth::Validator.validate!(input[:submit_time_before], ::Time, context: "#{context}[:submit_time_before]")
        Hearth::Validator.validate!(input[:submit_time_after], ::Time, context: "#{context}[:submit_time_after]")
      end
    end

    class TopicsDetectionJobProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TopicsDetectionJobProperties, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:job_arn], ::String, context: "#{context}[:job_arn]")
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:submit_time], ::Time, context: "#{context}[:submit_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        InputDataConfig.validate!(input[:input_data_config], context: "#{context}[:input_data_config]") unless input[:input_data_config].nil?
        OutputDataConfig.validate!(input[:output_data_config], context: "#{context}[:output_data_config]") unless input[:output_data_config].nil?
        Hearth::Validator.validate!(input[:number_of_topics], ::Integer, context: "#{context}[:number_of_topics]")
        Hearth::Validator.validate!(input[:data_access_role_arn], ::String, context: "#{context}[:data_access_role_arn]")
        Hearth::Validator.validate!(input[:volume_kms_key_id], ::String, context: "#{context}[:volume_kms_key_id]")
        VpcConfig.validate!(input[:vpc_config], context: "#{context}[:vpc_config]") unless input[:vpc_config].nil?
      end
    end

    class TopicsDetectionJobPropertiesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TopicsDetectionJobProperties.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UnsupportedLanguageException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnsupportedLanguageException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateEndpointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateEndpointInput, context: context)
        Hearth::Validator.validate!(input[:endpoint_arn], ::String, context: "#{context}[:endpoint_arn]")
        Hearth::Validator.validate!(input[:desired_model_arn], ::String, context: "#{context}[:desired_model_arn]")
        Hearth::Validator.validate!(input[:desired_inference_units], ::Integer, context: "#{context}[:desired_inference_units]")
        Hearth::Validator.validate!(input[:desired_data_access_role_arn], ::String, context: "#{context}[:desired_data_access_role_arn]")
      end
    end

    class UpdateEndpointOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateEndpointOutput, context: context)
      end
    end

    class VpcConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VpcConfig, context: context)
        SecurityGroupIds.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
        Subnets.validate!(input[:subnets], context: "#{context}[:subnets]") unless input[:subnets].nil?
      end
    end

  end
end
