# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Textract
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type.code = params[:code]
        type
      end
    end

    module AnalyzeDocumentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AnalyzeDocumentInput, context: context)
        type = Types::AnalyzeDocumentInput.new
        type.document = Document.build(params[:document], context: "#{context}[:document]") unless params[:document].nil?
        type.feature_types = FeatureTypes.build(params[:feature_types], context: "#{context}[:feature_types]") unless params[:feature_types].nil?
        type.human_loop_config = HumanLoopConfig.build(params[:human_loop_config], context: "#{context}[:human_loop_config]") unless params[:human_loop_config].nil?
        type.queries_config = QueriesConfig.build(params[:queries_config], context: "#{context}[:queries_config]") unless params[:queries_config].nil?
        type
      end
    end

    module AnalyzeDocumentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AnalyzeDocumentOutput, context: context)
        type = Types::AnalyzeDocumentOutput.new
        type.document_metadata = DocumentMetadata.build(params[:document_metadata], context: "#{context}[:document_metadata]") unless params[:document_metadata].nil?
        type.blocks = BlockList.build(params[:blocks], context: "#{context}[:blocks]") unless params[:blocks].nil?
        type.human_loop_activation_output = HumanLoopActivationOutput.build(params[:human_loop_activation_output], context: "#{context}[:human_loop_activation_output]") unless params[:human_loop_activation_output].nil?
        type.analyze_document_model_version = params[:analyze_document_model_version]
        type
      end
    end

    module AnalyzeExpenseInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AnalyzeExpenseInput, context: context)
        type = Types::AnalyzeExpenseInput.new
        type.document = Document.build(params[:document], context: "#{context}[:document]") unless params[:document].nil?
        type
      end
    end

    module AnalyzeExpenseOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AnalyzeExpenseOutput, context: context)
        type = Types::AnalyzeExpenseOutput.new
        type.document_metadata = DocumentMetadata.build(params[:document_metadata], context: "#{context}[:document_metadata]") unless params[:document_metadata].nil?
        type.expense_documents = ExpenseDocumentList.build(params[:expense_documents], context: "#{context}[:expense_documents]") unless params[:expense_documents].nil?
        type
      end
    end

    module AnalyzeIDDetections
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AnalyzeIDDetections, context: context)
        type = Types::AnalyzeIDDetections.new
        type.text = params[:text]
        type.normalized_value = NormalizedValue.build(params[:normalized_value], context: "#{context}[:normalized_value]") unless params[:normalized_value].nil?
        type.confidence = params[:confidence]
        type
      end
    end

    module AnalyzeIDInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AnalyzeIDInput, context: context)
        type = Types::AnalyzeIDInput.new
        type.document_pages = DocumentPages.build(params[:document_pages], context: "#{context}[:document_pages]") unless params[:document_pages].nil?
        type
      end
    end

    module AnalyzeIDOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AnalyzeIDOutput, context: context)
        type = Types::AnalyzeIDOutput.new
        type.identity_documents = IdentityDocumentList.build(params[:identity_documents], context: "#{context}[:identity_documents]") unless params[:identity_documents].nil?
        type.document_metadata = DocumentMetadata.build(params[:document_metadata], context: "#{context}[:document_metadata]") unless params[:document_metadata].nil?
        type.analyze_id_model_version = params[:analyze_id_model_version]
        type
      end
    end

    module BadDocumentException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BadDocumentException, context: context)
        type = Types::BadDocumentException.new
        type.message = params[:message]
        type.code = params[:code]
        type
      end
    end

    module Block
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Block, context: context)
        type = Types::Block.new
        type.block_type = params[:block_type]
        type.confidence = params[:confidence]
        type.text = params[:text]
        type.text_type = params[:text_type]
        type.row_index = params[:row_index]
        type.column_index = params[:column_index]
        type.row_span = params[:row_span]
        type.column_span = params[:column_span]
        type.geometry = Geometry.build(params[:geometry], context: "#{context}[:geometry]") unless params[:geometry].nil?
        type.id = params[:id]
        type.relationships = RelationshipList.build(params[:relationships], context: "#{context}[:relationships]") unless params[:relationships].nil?
        type.entity_types = EntityTypes.build(params[:entity_types], context: "#{context}[:entity_types]") unless params[:entity_types].nil?
        type.selection_status = params[:selection_status]
        type.page = params[:page]
        type.query = Query.build(params[:query], context: "#{context}[:query]") unless params[:query].nil?
        type
      end
    end

    module BlockList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Block.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BoundingBox
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BoundingBox, context: context)
        type = Types::BoundingBox.new
        type.width = params[:width]
        type.height = params[:height]
        type.left = params[:left]
        type.top = params[:top]
        type
      end
    end

    module ContentClassifiers
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DetectDocumentTextInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetectDocumentTextInput, context: context)
        type = Types::DetectDocumentTextInput.new
        type.document = Document.build(params[:document], context: "#{context}[:document]") unless params[:document].nil?
        type
      end
    end

    module DetectDocumentTextOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetectDocumentTextOutput, context: context)
        type = Types::DetectDocumentTextOutput.new
        type.document_metadata = DocumentMetadata.build(params[:document_metadata], context: "#{context}[:document_metadata]") unless params[:document_metadata].nil?
        type.blocks = BlockList.build(params[:blocks], context: "#{context}[:blocks]") unless params[:blocks].nil?
        type.detect_document_text_model_version = params[:detect_document_text_model_version]
        type
      end
    end

    module Document
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Document, context: context)
        type = Types::Document.new
        type.bytes = params[:bytes]
        type.s3_object = S3Object.build(params[:s3_object], context: "#{context}[:s3_object]") unless params[:s3_object].nil?
        type
      end
    end

    module DocumentLocation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DocumentLocation, context: context)
        type = Types::DocumentLocation.new
        type.s3_object = S3Object.build(params[:s3_object], context: "#{context}[:s3_object]") unless params[:s3_object].nil?
        type
      end
    end

    module DocumentMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DocumentMetadata, context: context)
        type = Types::DocumentMetadata.new
        type.pages = params[:pages]
        type
      end
    end

    module DocumentPages
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Document.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DocumentTooLargeException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DocumentTooLargeException, context: context)
        type = Types::DocumentTooLargeException.new
        type.message = params[:message]
        type.code = params[:code]
        type
      end
    end

    module EntityTypes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ExpenseDetection
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExpenseDetection, context: context)
        type = Types::ExpenseDetection.new
        type.text = params[:text]
        type.geometry = Geometry.build(params[:geometry], context: "#{context}[:geometry]") unless params[:geometry].nil?
        type.confidence = params[:confidence]
        type
      end
    end

    module ExpenseDocument
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExpenseDocument, context: context)
        type = Types::ExpenseDocument.new
        type.expense_index = params[:expense_index]
        type.summary_fields = ExpenseFieldList.build(params[:summary_fields], context: "#{context}[:summary_fields]") unless params[:summary_fields].nil?
        type.line_item_groups = LineItemGroupList.build(params[:line_item_groups], context: "#{context}[:line_item_groups]") unless params[:line_item_groups].nil?
        type
      end
    end

    module ExpenseDocumentList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ExpenseDocument.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ExpenseField
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExpenseField, context: context)
        type = Types::ExpenseField.new
        type.type = ExpenseType.build(params[:type], context: "#{context}[:type]") unless params[:type].nil?
        type.label_detection = ExpenseDetection.build(params[:label_detection], context: "#{context}[:label_detection]") unless params[:label_detection].nil?
        type.value_detection = ExpenseDetection.build(params[:value_detection], context: "#{context}[:value_detection]") unless params[:value_detection].nil?
        type.page_number = params[:page_number]
        type
      end
    end

    module ExpenseFieldList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ExpenseField.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ExpenseType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExpenseType, context: context)
        type = Types::ExpenseType.new
        type.text = params[:text]
        type.confidence = params[:confidence]
        type
      end
    end

    module FeatureTypes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Geometry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Geometry, context: context)
        type = Types::Geometry.new
        type.bounding_box = BoundingBox.build(params[:bounding_box], context: "#{context}[:bounding_box]") unless params[:bounding_box].nil?
        type.polygon = Polygon.build(params[:polygon], context: "#{context}[:polygon]") unless params[:polygon].nil?
        type
      end
    end

    module GetDocumentAnalysisInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDocumentAnalysisInput, context: context)
        type = Types::GetDocumentAnalysisInput.new
        type.job_id = params[:job_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetDocumentAnalysisOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDocumentAnalysisOutput, context: context)
        type = Types::GetDocumentAnalysisOutput.new
        type.document_metadata = DocumentMetadata.build(params[:document_metadata], context: "#{context}[:document_metadata]") unless params[:document_metadata].nil?
        type.job_status = params[:job_status]
        type.next_token = params[:next_token]
        type.blocks = BlockList.build(params[:blocks], context: "#{context}[:blocks]") unless params[:blocks].nil?
        type.warnings = Warnings.build(params[:warnings], context: "#{context}[:warnings]") unless params[:warnings].nil?
        type.status_message = params[:status_message]
        type.analyze_document_model_version = params[:analyze_document_model_version]
        type
      end
    end

    module GetDocumentTextDetectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDocumentTextDetectionInput, context: context)
        type = Types::GetDocumentTextDetectionInput.new
        type.job_id = params[:job_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetDocumentTextDetectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDocumentTextDetectionOutput, context: context)
        type = Types::GetDocumentTextDetectionOutput.new
        type.document_metadata = DocumentMetadata.build(params[:document_metadata], context: "#{context}[:document_metadata]") unless params[:document_metadata].nil?
        type.job_status = params[:job_status]
        type.next_token = params[:next_token]
        type.blocks = BlockList.build(params[:blocks], context: "#{context}[:blocks]") unless params[:blocks].nil?
        type.warnings = Warnings.build(params[:warnings], context: "#{context}[:warnings]") unless params[:warnings].nil?
        type.status_message = params[:status_message]
        type.detect_document_text_model_version = params[:detect_document_text_model_version]
        type
      end
    end

    module GetExpenseAnalysisInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetExpenseAnalysisInput, context: context)
        type = Types::GetExpenseAnalysisInput.new
        type.job_id = params[:job_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetExpenseAnalysisOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetExpenseAnalysisOutput, context: context)
        type = Types::GetExpenseAnalysisOutput.new
        type.document_metadata = DocumentMetadata.build(params[:document_metadata], context: "#{context}[:document_metadata]") unless params[:document_metadata].nil?
        type.job_status = params[:job_status]
        type.next_token = params[:next_token]
        type.expense_documents = ExpenseDocumentList.build(params[:expense_documents], context: "#{context}[:expense_documents]") unless params[:expense_documents].nil?
        type.warnings = Warnings.build(params[:warnings], context: "#{context}[:warnings]") unless params[:warnings].nil?
        type.status_message = params[:status_message]
        type.analyze_expense_model_version = params[:analyze_expense_model_version]
        type
      end
    end

    module HumanLoopActivationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HumanLoopActivationOutput, context: context)
        type = Types::HumanLoopActivationOutput.new
        type.human_loop_arn = params[:human_loop_arn]
        type.human_loop_activation_reasons = HumanLoopActivationReasons.build(params[:human_loop_activation_reasons], context: "#{context}[:human_loop_activation_reasons]") unless params[:human_loop_activation_reasons].nil?
        type.human_loop_activation_conditions_evaluation_results = params[:human_loop_activation_conditions_evaluation_results]
        type
      end
    end

    module HumanLoopActivationReasons
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module HumanLoopConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HumanLoopConfig, context: context)
        type = Types::HumanLoopConfig.new
        type.human_loop_name = params[:human_loop_name]
        type.flow_definition_arn = params[:flow_definition_arn]
        type.data_attributes = HumanLoopDataAttributes.build(params[:data_attributes], context: "#{context}[:data_attributes]") unless params[:data_attributes].nil?
        type
      end
    end

    module HumanLoopDataAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HumanLoopDataAttributes, context: context)
        type = Types::HumanLoopDataAttributes.new
        type.content_classifiers = ContentClassifiers.build(params[:content_classifiers], context: "#{context}[:content_classifiers]") unless params[:content_classifiers].nil?
        type
      end
    end

    module HumanLoopQuotaExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HumanLoopQuotaExceededException, context: context)
        type = Types::HumanLoopQuotaExceededException.new
        type.resource_type = params[:resource_type]
        type.quota_code = params[:quota_code]
        type.service_code = params[:service_code]
        type.message = params[:message]
        type.code = params[:code]
        type
      end
    end

    module IdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module IdempotentParameterMismatchException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IdempotentParameterMismatchException, context: context)
        type = Types::IdempotentParameterMismatchException.new
        type.message = params[:message]
        type.code = params[:code]
        type
      end
    end

    module IdentityDocument
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IdentityDocument, context: context)
        type = Types::IdentityDocument.new
        type.document_index = params[:document_index]
        type.identity_document_fields = IdentityDocumentFieldList.build(params[:identity_document_fields], context: "#{context}[:identity_document_fields]") unless params[:identity_document_fields].nil?
        type
      end
    end

    module IdentityDocumentField
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IdentityDocumentField, context: context)
        type = Types::IdentityDocumentField.new
        type.type = AnalyzeIDDetections.build(params[:type], context: "#{context}[:type]") unless params[:type].nil?
        type.value_detection = AnalyzeIDDetections.build(params[:value_detection], context: "#{context}[:value_detection]") unless params[:value_detection].nil?
        type
      end
    end

    module IdentityDocumentFieldList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << IdentityDocumentField.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module IdentityDocumentList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << IdentityDocument.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InternalServerError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerError, context: context)
        type = Types::InternalServerError.new
        type.message = params[:message]
        type.code = params[:code]
        type
      end
    end

    module InvalidJobIdException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidJobIdException, context: context)
        type = Types::InvalidJobIdException.new
        type.message = params[:message]
        type.code = params[:code]
        type
      end
    end

    module InvalidKMSKeyException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidKMSKeyException, context: context)
        type = Types::InvalidKMSKeyException.new
        type.message = params[:message]
        type.code = params[:code]
        type
      end
    end

    module InvalidParameterException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidParameterException, context: context)
        type = Types::InvalidParameterException.new
        type.message = params[:message]
        type.code = params[:code]
        type
      end
    end

    module InvalidS3ObjectException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidS3ObjectException, context: context)
        type = Types::InvalidS3ObjectException.new
        type.message = params[:message]
        type.code = params[:code]
        type
      end
    end

    module LimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        type.message = params[:message]
        type.code = params[:code]
        type
      end
    end

    module LineItemFields
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LineItemFields, context: context)
        type = Types::LineItemFields.new
        type.line_item_expense_fields = ExpenseFieldList.build(params[:line_item_expense_fields], context: "#{context}[:line_item_expense_fields]") unless params[:line_item_expense_fields].nil?
        type
      end
    end

    module LineItemGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LineItemGroup, context: context)
        type = Types::LineItemGroup.new
        type.line_item_group_index = params[:line_item_group_index]
        type.line_items = LineItemList.build(params[:line_items], context: "#{context}[:line_items]") unless params[:line_items].nil?
        type
      end
    end

    module LineItemGroupList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LineItemGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LineItemList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LineItemFields.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module NormalizedValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NormalizedValue, context: context)
        type = Types::NormalizedValue.new
        type.value = params[:value]
        type.value_type = params[:value_type]
        type
      end
    end

    module NotificationChannel
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotificationChannel, context: context)
        type = Types::NotificationChannel.new
        type.sns_topic_arn = params[:sns_topic_arn]
        type.role_arn = params[:role_arn]
        type
      end
    end

    module OutputConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OutputConfig, context: context)
        type = Types::OutputConfig.new
        type.s3_bucket = params[:s3_bucket]
        type.s3_prefix = params[:s3_prefix]
        type
      end
    end

    module Pages
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Point
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Point, context: context)
        type = Types::Point.new
        type.x = params[:x]
        type.y = params[:y]
        type
      end
    end

    module Polygon
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Point.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ProvisionedThroughputExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProvisionedThroughputExceededException, context: context)
        type = Types::ProvisionedThroughputExceededException.new
        type.message = params[:message]
        type.code = params[:code]
        type
      end
    end

    module Queries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Query.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module QueriesConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::QueriesConfig, context: context)
        type = Types::QueriesConfig.new
        type.queries = Queries.build(params[:queries], context: "#{context}[:queries]") unless params[:queries].nil?
        type
      end
    end

    module Query
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Query, context: context)
        type = Types::Query.new
        type.text = params[:text]
        type.alias = params[:alias]
        type.pages = QueryPages.build(params[:pages], context: "#{context}[:pages]") unless params[:pages].nil?
        type
      end
    end

    module QueryPages
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Relationship
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Relationship, context: context)
        type = Types::Relationship.new
        type.type = params[:type]
        type.ids = IdList.build(params[:ids], context: "#{context}[:ids]") unless params[:ids].nil?
        type
      end
    end

    module RelationshipList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Relationship.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module S3Object
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3Object, context: context)
        type = Types::S3Object.new
        type.bucket = params[:bucket]
        type.name = params[:name]
        type.version = params[:version]
        type
      end
    end

    module StartDocumentAnalysisInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartDocumentAnalysisInput, context: context)
        type = Types::StartDocumentAnalysisInput.new
        type.document_location = DocumentLocation.build(params[:document_location], context: "#{context}[:document_location]") unless params[:document_location].nil?
        type.feature_types = FeatureTypes.build(params[:feature_types], context: "#{context}[:feature_types]") unless params[:feature_types].nil?
        type.client_request_token = params[:client_request_token]
        type.job_tag = params[:job_tag]
        type.notification_channel = NotificationChannel.build(params[:notification_channel], context: "#{context}[:notification_channel]") unless params[:notification_channel].nil?
        type.output_config = OutputConfig.build(params[:output_config], context: "#{context}[:output_config]") unless params[:output_config].nil?
        type.kms_key_id = params[:kms_key_id]
        type.queries_config = QueriesConfig.build(params[:queries_config], context: "#{context}[:queries_config]") unless params[:queries_config].nil?
        type
      end
    end

    module StartDocumentAnalysisOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartDocumentAnalysisOutput, context: context)
        type = Types::StartDocumentAnalysisOutput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module StartDocumentTextDetectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartDocumentTextDetectionInput, context: context)
        type = Types::StartDocumentTextDetectionInput.new
        type.document_location = DocumentLocation.build(params[:document_location], context: "#{context}[:document_location]") unless params[:document_location].nil?
        type.client_request_token = params[:client_request_token]
        type.job_tag = params[:job_tag]
        type.notification_channel = NotificationChannel.build(params[:notification_channel], context: "#{context}[:notification_channel]") unless params[:notification_channel].nil?
        type.output_config = OutputConfig.build(params[:output_config], context: "#{context}[:output_config]") unless params[:output_config].nil?
        type.kms_key_id = params[:kms_key_id]
        type
      end
    end

    module StartDocumentTextDetectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartDocumentTextDetectionOutput, context: context)
        type = Types::StartDocumentTextDetectionOutput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module StartExpenseAnalysisInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartExpenseAnalysisInput, context: context)
        type = Types::StartExpenseAnalysisInput.new
        type.document_location = DocumentLocation.build(params[:document_location], context: "#{context}[:document_location]") unless params[:document_location].nil?
        type.client_request_token = params[:client_request_token]
        type.job_tag = params[:job_tag]
        type.notification_channel = NotificationChannel.build(params[:notification_channel], context: "#{context}[:notification_channel]") unless params[:notification_channel].nil?
        type.output_config = OutputConfig.build(params[:output_config], context: "#{context}[:output_config]") unless params[:output_config].nil?
        type.kms_key_id = params[:kms_key_id]
        type
      end
    end

    module StartExpenseAnalysisOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartExpenseAnalysisOutput, context: context)
        type = Types::StartExpenseAnalysisOutput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.message = params[:message]
        type.code = params[:code]
        type
      end
    end

    module UnsupportedDocumentException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnsupportedDocumentException, context: context)
        type = Types::UnsupportedDocumentException.new
        type.message = params[:message]
        type.code = params[:code]
        type
      end
    end

    module Warning
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Warning, context: context)
        type = Types::Warning.new
        type.error_code = params[:error_code]
        type.pages = Pages.build(params[:pages], context: "#{context}[:pages]") unless params[:pages].nil?
        type
      end
    end

    module Warnings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Warning.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

  end
end
