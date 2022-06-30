# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Textract
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
      end
    end

    class AnalyzeDocumentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AnalyzeDocumentInput, context: context)
        Validators::Document.validate!(input[:document], context: "#{context}[:document]") unless input[:document].nil?
        Validators::FeatureTypes.validate!(input[:feature_types], context: "#{context}[:feature_types]") unless input[:feature_types].nil?
        Validators::HumanLoopConfig.validate!(input[:human_loop_config], context: "#{context}[:human_loop_config]") unless input[:human_loop_config].nil?
        Validators::QueriesConfig.validate!(input[:queries_config], context: "#{context}[:queries_config]") unless input[:queries_config].nil?
      end
    end

    class AnalyzeDocumentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AnalyzeDocumentOutput, context: context)
        Validators::DocumentMetadata.validate!(input[:document_metadata], context: "#{context}[:document_metadata]") unless input[:document_metadata].nil?
        Validators::BlockList.validate!(input[:blocks], context: "#{context}[:blocks]") unless input[:blocks].nil?
        Validators::HumanLoopActivationOutput.validate!(input[:human_loop_activation_output], context: "#{context}[:human_loop_activation_output]") unless input[:human_loop_activation_output].nil?
        Hearth::Validator.validate!(input[:analyze_document_model_version], ::String, context: "#{context}[:analyze_document_model_version]")
      end
    end

    class AnalyzeExpenseInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AnalyzeExpenseInput, context: context)
        Validators::Document.validate!(input[:document], context: "#{context}[:document]") unless input[:document].nil?
      end
    end

    class AnalyzeExpenseOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AnalyzeExpenseOutput, context: context)
        Validators::DocumentMetadata.validate!(input[:document_metadata], context: "#{context}[:document_metadata]") unless input[:document_metadata].nil?
        Validators::ExpenseDocumentList.validate!(input[:expense_documents], context: "#{context}[:expense_documents]") unless input[:expense_documents].nil?
      end
    end

    class AnalyzeIDDetections
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AnalyzeIDDetections, context: context)
        Hearth::Validator.validate!(input[:text], ::String, context: "#{context}[:text]")
        Validators::NormalizedValue.validate!(input[:normalized_value], context: "#{context}[:normalized_value]") unless input[:normalized_value].nil?
        Hearth::Validator.validate!(input[:confidence], ::Float, context: "#{context}[:confidence]")
      end
    end

    class AnalyzeIDInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AnalyzeIDInput, context: context)
        Validators::DocumentPages.validate!(input[:document_pages], context: "#{context}[:document_pages]") unless input[:document_pages].nil?
      end
    end

    class AnalyzeIDOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AnalyzeIDOutput, context: context)
        Validators::IdentityDocumentList.validate!(input[:identity_documents], context: "#{context}[:identity_documents]") unless input[:identity_documents].nil?
        Validators::DocumentMetadata.validate!(input[:document_metadata], context: "#{context}[:document_metadata]") unless input[:document_metadata].nil?
        Hearth::Validator.validate!(input[:analyze_id_model_version], ::String, context: "#{context}[:analyze_id_model_version]")
      end
    end

    class BadDocumentException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BadDocumentException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
      end
    end

    class Block
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Block, context: context)
        Hearth::Validator.validate!(input[:block_type], ::String, context: "#{context}[:block_type]")
        Hearth::Validator.validate!(input[:confidence], ::Float, context: "#{context}[:confidence]")
        Hearth::Validator.validate!(input[:text], ::String, context: "#{context}[:text]")
        Hearth::Validator.validate!(input[:text_type], ::String, context: "#{context}[:text_type]")
        Hearth::Validator.validate!(input[:row_index], ::Integer, context: "#{context}[:row_index]")
        Hearth::Validator.validate!(input[:column_index], ::Integer, context: "#{context}[:column_index]")
        Hearth::Validator.validate!(input[:row_span], ::Integer, context: "#{context}[:row_span]")
        Hearth::Validator.validate!(input[:column_span], ::Integer, context: "#{context}[:column_span]")
        Validators::Geometry.validate!(input[:geometry], context: "#{context}[:geometry]") unless input[:geometry].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Validators::RelationshipList.validate!(input[:relationships], context: "#{context}[:relationships]") unless input[:relationships].nil?
        Validators::EntityTypes.validate!(input[:entity_types], context: "#{context}[:entity_types]") unless input[:entity_types].nil?
        Hearth::Validator.validate!(input[:selection_status], ::String, context: "#{context}[:selection_status]")
        Hearth::Validator.validate!(input[:page], ::Integer, context: "#{context}[:page]")
        Validators::Query.validate!(input[:query], context: "#{context}[:query]") unless input[:query].nil?
      end
    end

    class BlockList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Block.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BoundingBox
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BoundingBox, context: context)
        Hearth::Validator.validate!(input[:width], ::Float, context: "#{context}[:width]")
        Hearth::Validator.validate!(input[:height], ::Float, context: "#{context}[:height]")
        Hearth::Validator.validate!(input[:left], ::Float, context: "#{context}[:left]")
        Hearth::Validator.validate!(input[:top], ::Float, context: "#{context}[:top]")
      end
    end

    class ContentClassifiers
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DetectDocumentTextInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetectDocumentTextInput, context: context)
        Validators::Document.validate!(input[:document], context: "#{context}[:document]") unless input[:document].nil?
      end
    end

    class DetectDocumentTextOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetectDocumentTextOutput, context: context)
        Validators::DocumentMetadata.validate!(input[:document_metadata], context: "#{context}[:document_metadata]") unless input[:document_metadata].nil?
        Validators::BlockList.validate!(input[:blocks], context: "#{context}[:blocks]") unless input[:blocks].nil?
        Hearth::Validator.validate!(input[:detect_document_text_model_version], ::String, context: "#{context}[:detect_document_text_model_version]")
      end
    end

    class Document
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Document, context: context)
        Hearth::Validator.validate!(input[:bytes], ::String, context: "#{context}[:bytes]")
        Validators::S3Object.validate!(input[:s3_object], context: "#{context}[:s3_object]") unless input[:s3_object].nil?
      end
    end

    class DocumentLocation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DocumentLocation, context: context)
        Validators::S3Object.validate!(input[:s3_object], context: "#{context}[:s3_object]") unless input[:s3_object].nil?
      end
    end

    class DocumentMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DocumentMetadata, context: context)
        Hearth::Validator.validate!(input[:pages], ::Integer, context: "#{context}[:pages]")
      end
    end

    class DocumentPages
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Document.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DocumentTooLargeException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DocumentTooLargeException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
      end
    end

    class EntityTypes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ExpenseDetection
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExpenseDetection, context: context)
        Hearth::Validator.validate!(input[:text], ::String, context: "#{context}[:text]")
        Validators::Geometry.validate!(input[:geometry], context: "#{context}[:geometry]") unless input[:geometry].nil?
        Hearth::Validator.validate!(input[:confidence], ::Float, context: "#{context}[:confidence]")
      end
    end

    class ExpenseDocument
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExpenseDocument, context: context)
        Hearth::Validator.validate!(input[:expense_index], ::Integer, context: "#{context}[:expense_index]")
        Validators::ExpenseFieldList.validate!(input[:summary_fields], context: "#{context}[:summary_fields]") unless input[:summary_fields].nil?
        Validators::LineItemGroupList.validate!(input[:line_item_groups], context: "#{context}[:line_item_groups]") unless input[:line_item_groups].nil?
      end
    end

    class ExpenseDocumentList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ExpenseDocument.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ExpenseField
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExpenseField, context: context)
        Validators::ExpenseType.validate!(input[:type], context: "#{context}[:type]") unless input[:type].nil?
        Validators::ExpenseDetection.validate!(input[:label_detection], context: "#{context}[:label_detection]") unless input[:label_detection].nil?
        Validators::ExpenseDetection.validate!(input[:value_detection], context: "#{context}[:value_detection]") unless input[:value_detection].nil?
        Hearth::Validator.validate!(input[:page_number], ::Integer, context: "#{context}[:page_number]")
      end
    end

    class ExpenseFieldList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ExpenseField.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ExpenseType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExpenseType, context: context)
        Hearth::Validator.validate!(input[:text], ::String, context: "#{context}[:text]")
        Hearth::Validator.validate!(input[:confidence], ::Float, context: "#{context}[:confidence]")
      end
    end

    class FeatureTypes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Geometry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Geometry, context: context)
        Validators::BoundingBox.validate!(input[:bounding_box], context: "#{context}[:bounding_box]") unless input[:bounding_box].nil?
        Validators::Polygon.validate!(input[:polygon], context: "#{context}[:polygon]") unless input[:polygon].nil?
      end
    end

    class GetDocumentAnalysisInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDocumentAnalysisInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetDocumentAnalysisOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDocumentAnalysisOutput, context: context)
        Validators::DocumentMetadata.validate!(input[:document_metadata], context: "#{context}[:document_metadata]") unless input[:document_metadata].nil?
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::BlockList.validate!(input[:blocks], context: "#{context}[:blocks]") unless input[:blocks].nil?
        Validators::Warnings.validate!(input[:warnings], context: "#{context}[:warnings]") unless input[:warnings].nil?
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        Hearth::Validator.validate!(input[:analyze_document_model_version], ::String, context: "#{context}[:analyze_document_model_version]")
      end
    end

    class GetDocumentTextDetectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDocumentTextDetectionInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetDocumentTextDetectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDocumentTextDetectionOutput, context: context)
        Validators::DocumentMetadata.validate!(input[:document_metadata], context: "#{context}[:document_metadata]") unless input[:document_metadata].nil?
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::BlockList.validate!(input[:blocks], context: "#{context}[:blocks]") unless input[:blocks].nil?
        Validators::Warnings.validate!(input[:warnings], context: "#{context}[:warnings]") unless input[:warnings].nil?
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        Hearth::Validator.validate!(input[:detect_document_text_model_version], ::String, context: "#{context}[:detect_document_text_model_version]")
      end
    end

    class GetExpenseAnalysisInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetExpenseAnalysisInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetExpenseAnalysisOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetExpenseAnalysisOutput, context: context)
        Validators::DocumentMetadata.validate!(input[:document_metadata], context: "#{context}[:document_metadata]") unless input[:document_metadata].nil?
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::ExpenseDocumentList.validate!(input[:expense_documents], context: "#{context}[:expense_documents]") unless input[:expense_documents].nil?
        Validators::Warnings.validate!(input[:warnings], context: "#{context}[:warnings]") unless input[:warnings].nil?
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        Hearth::Validator.validate!(input[:analyze_expense_model_version], ::String, context: "#{context}[:analyze_expense_model_version]")
      end
    end

    class HumanLoopActivationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HumanLoopActivationOutput, context: context)
        Hearth::Validator.validate!(input[:human_loop_arn], ::String, context: "#{context}[:human_loop_arn]")
        Validators::HumanLoopActivationReasons.validate!(input[:human_loop_activation_reasons], context: "#{context}[:human_loop_activation_reasons]") unless input[:human_loop_activation_reasons].nil?
        Hearth::Validator.validate!(input[:human_loop_activation_conditions_evaluation_results], ::String, context: "#{context}[:human_loop_activation_conditions_evaluation_results]")
      end
    end

    class HumanLoopActivationReasons
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class HumanLoopConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HumanLoopConfig, context: context)
        Hearth::Validator.validate!(input[:human_loop_name], ::String, context: "#{context}[:human_loop_name]")
        Hearth::Validator.validate!(input[:flow_definition_arn], ::String, context: "#{context}[:flow_definition_arn]")
        Validators::HumanLoopDataAttributes.validate!(input[:data_attributes], context: "#{context}[:data_attributes]") unless input[:data_attributes].nil?
      end
    end

    class HumanLoopDataAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HumanLoopDataAttributes, context: context)
        Validators::ContentClassifiers.validate!(input[:content_classifiers], context: "#{context}[:content_classifiers]") unless input[:content_classifiers].nil?
      end
    end

    class HumanLoopQuotaExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HumanLoopQuotaExceededException, context: context)
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:quota_code], ::String, context: "#{context}[:quota_code]")
        Hearth::Validator.validate!(input[:service_code], ::String, context: "#{context}[:service_code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
      end
    end

    class IdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class IdempotentParameterMismatchException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IdempotentParameterMismatchException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
      end
    end

    class IdentityDocument
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IdentityDocument, context: context)
        Hearth::Validator.validate!(input[:document_index], ::Integer, context: "#{context}[:document_index]")
        Validators::IdentityDocumentFieldList.validate!(input[:identity_document_fields], context: "#{context}[:identity_document_fields]") unless input[:identity_document_fields].nil?
      end
    end

    class IdentityDocumentField
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IdentityDocumentField, context: context)
        Validators::AnalyzeIDDetections.validate!(input[:type], context: "#{context}[:type]") unless input[:type].nil?
        Validators::AnalyzeIDDetections.validate!(input[:value_detection], context: "#{context}[:value_detection]") unless input[:value_detection].nil?
      end
    end

    class IdentityDocumentFieldList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::IdentityDocumentField.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class IdentityDocumentList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::IdentityDocument.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InternalServerError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerError, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
      end
    end

    class InvalidJobIdException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidJobIdException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
      end
    end

    class InvalidKMSKeyException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidKMSKeyException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
      end
    end

    class InvalidParameterException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidParameterException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
      end
    end

    class InvalidS3ObjectException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidS3ObjectException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
      end
    end

    class LineItemFields
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LineItemFields, context: context)
        Validators::ExpenseFieldList.validate!(input[:line_item_expense_fields], context: "#{context}[:line_item_expense_fields]") unless input[:line_item_expense_fields].nil?
      end
    end

    class LineItemGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LineItemGroup, context: context)
        Hearth::Validator.validate!(input[:line_item_group_index], ::Integer, context: "#{context}[:line_item_group_index]")
        Validators::LineItemList.validate!(input[:line_items], context: "#{context}[:line_items]") unless input[:line_items].nil?
      end
    end

    class LineItemGroupList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::LineItemGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LineItemList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::LineItemFields.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class NormalizedValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NormalizedValue, context: context)
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:value_type], ::String, context: "#{context}[:value_type]")
      end
    end

    class NotificationChannel
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotificationChannel, context: context)
        Hearth::Validator.validate!(input[:sns_topic_arn], ::String, context: "#{context}[:sns_topic_arn]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
      end
    end

    class OutputConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OutputConfig, context: context)
        Hearth::Validator.validate!(input[:s3_bucket], ::String, context: "#{context}[:s3_bucket]")
        Hearth::Validator.validate!(input[:s3_prefix], ::String, context: "#{context}[:s3_prefix]")
      end
    end

    class Pages
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::Integer, context: "#{context}[#{index}]")
        end
      end
    end

    class Point
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Point, context: context)
        Hearth::Validator.validate!(input[:x], ::Float, context: "#{context}[:x]")
        Hearth::Validator.validate!(input[:y], ::Float, context: "#{context}[:y]")
      end
    end

    class Polygon
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Point.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ProvisionedThroughputExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProvisionedThroughputExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
      end
    end

    class Queries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Query.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class QueriesConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QueriesConfig, context: context)
        Validators::Queries.validate!(input[:queries], context: "#{context}[:queries]") unless input[:queries].nil?
      end
    end

    class Query
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Query, context: context)
        Hearth::Validator.validate!(input[:text], ::String, context: "#{context}[:text]")
        Hearth::Validator.validate!(input[:alias], ::String, context: "#{context}[:alias]")
        Validators::QueryPages.validate!(input[:pages], context: "#{context}[:pages]") unless input[:pages].nil?
      end
    end

    class QueryPages
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Relationship
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Relationship, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Validators::IdList.validate!(input[:ids], context: "#{context}[:ids]") unless input[:ids].nil?
      end
    end

    class RelationshipList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Relationship.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class S3Object
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3Object, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class StartDocumentAnalysisInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartDocumentAnalysisInput, context: context)
        Validators::DocumentLocation.validate!(input[:document_location], context: "#{context}[:document_location]") unless input[:document_location].nil?
        Validators::FeatureTypes.validate!(input[:feature_types], context: "#{context}[:feature_types]") unless input[:feature_types].nil?
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:job_tag], ::String, context: "#{context}[:job_tag]")
        Validators::NotificationChannel.validate!(input[:notification_channel], context: "#{context}[:notification_channel]") unless input[:notification_channel].nil?
        Validators::OutputConfig.validate!(input[:output_config], context: "#{context}[:output_config]") unless input[:output_config].nil?
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Validators::QueriesConfig.validate!(input[:queries_config], context: "#{context}[:queries_config]") unless input[:queries_config].nil?
      end
    end

    class StartDocumentAnalysisOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartDocumentAnalysisOutput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class StartDocumentTextDetectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartDocumentTextDetectionInput, context: context)
        Validators::DocumentLocation.validate!(input[:document_location], context: "#{context}[:document_location]") unless input[:document_location].nil?
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:job_tag], ::String, context: "#{context}[:job_tag]")
        Validators::NotificationChannel.validate!(input[:notification_channel], context: "#{context}[:notification_channel]") unless input[:notification_channel].nil?
        Validators::OutputConfig.validate!(input[:output_config], context: "#{context}[:output_config]") unless input[:output_config].nil?
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
      end
    end

    class StartDocumentTextDetectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartDocumentTextDetectionOutput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class StartExpenseAnalysisInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartExpenseAnalysisInput, context: context)
        Validators::DocumentLocation.validate!(input[:document_location], context: "#{context}[:document_location]") unless input[:document_location].nil?
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:job_tag], ::String, context: "#{context}[:job_tag]")
        Validators::NotificationChannel.validate!(input[:notification_channel], context: "#{context}[:notification_channel]") unless input[:notification_channel].nil?
        Validators::OutputConfig.validate!(input[:output_config], context: "#{context}[:output_config]") unless input[:output_config].nil?
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
      end
    end

    class StartExpenseAnalysisOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartExpenseAnalysisOutput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
      end
    end

    class UnsupportedDocumentException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnsupportedDocumentException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
      end
    end

    class Warning
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Warning, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Validators::Pages.validate!(input[:pages], context: "#{context}[:pages]") unless input[:pages].nil?
      end
    end

    class Warnings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Warning.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

  end
end
