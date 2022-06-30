# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::Textract
  module Parsers

    # Operation Parser for AnalyzeDocument
    class AnalyzeDocument
      def self.parse(http_resp)
        data = Types::AnalyzeDocumentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.document_metadata = (Parsers::DocumentMetadata.parse(map['DocumentMetadata']) unless map['DocumentMetadata'].nil?)
        data.blocks = (Parsers::BlockList.parse(map['Blocks']) unless map['Blocks'].nil?)
        data.human_loop_activation_output = (Parsers::HumanLoopActivationOutput.parse(map['HumanLoopActivationOutput']) unless map['HumanLoopActivationOutput'].nil?)
        data.analyze_document_model_version = map['AnalyzeDocumentModelVersion']
        data
      end
    end

    class HumanLoopActivationOutput
      def self.parse(map)
        data = Types::HumanLoopActivationOutput.new
        data.human_loop_arn = map['HumanLoopArn']
        data.human_loop_activation_reasons = (Parsers::HumanLoopActivationReasons.parse(map['HumanLoopActivationReasons']) unless map['HumanLoopActivationReasons'].nil?)
        data.human_loop_activation_conditions_evaluation_results = map['HumanLoopActivationConditionsEvaluationResults']
        return data
      end
    end

    class HumanLoopActivationReasons
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class BlockList
      def self.parse(list)
        list.map do |value|
          Parsers::Block.parse(value) unless value.nil?
        end
      end
    end

    class Block
      def self.parse(map)
        data = Types::Block.new
        data.block_type = map['BlockType']
        data.confidence = Hearth::NumberHelper.deserialize(map['Confidence'])
        data.text = map['Text']
        data.text_type = map['TextType']
        data.row_index = map['RowIndex']
        data.column_index = map['ColumnIndex']
        data.row_span = map['RowSpan']
        data.column_span = map['ColumnSpan']
        data.geometry = (Parsers::Geometry.parse(map['Geometry']) unless map['Geometry'].nil?)
        data.id = map['Id']
        data.relationships = (Parsers::RelationshipList.parse(map['Relationships']) unless map['Relationships'].nil?)
        data.entity_types = (Parsers::EntityTypes.parse(map['EntityTypes']) unless map['EntityTypes'].nil?)
        data.selection_status = map['SelectionStatus']
        data.page = map['Page']
        data.query = (Parsers::Query.parse(map['Query']) unless map['Query'].nil?)
        return data
      end
    end

    class Query
      def self.parse(map)
        data = Types::Query.new
        data.text = map['Text']
        data.alias = map['Alias']
        data.pages = (Parsers::QueryPages.parse(map['Pages']) unless map['Pages'].nil?)
        return data
      end
    end

    class QueryPages
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class EntityTypes
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class RelationshipList
      def self.parse(list)
        list.map do |value|
          Parsers::Relationship.parse(value) unless value.nil?
        end
      end
    end

    class Relationship
      def self.parse(map)
        data = Types::Relationship.new
        data.type = map['Type']
        data.ids = (Parsers::IdList.parse(map['Ids']) unless map['Ids'].nil?)
        return data
      end
    end

    class IdList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class Geometry
      def self.parse(map)
        data = Types::Geometry.new
        data.bounding_box = (Parsers::BoundingBox.parse(map['BoundingBox']) unless map['BoundingBox'].nil?)
        data.polygon = (Parsers::Polygon.parse(map['Polygon']) unless map['Polygon'].nil?)
        return data
      end
    end

    class Polygon
      def self.parse(list)
        list.map do |value|
          Parsers::Point.parse(value) unless value.nil?
        end
      end
    end

    class Point
      def self.parse(map)
        data = Types::Point.new
        data.x = Hearth::NumberHelper.deserialize(map['X'])
        data.y = Hearth::NumberHelper.deserialize(map['Y'])
        return data
      end
    end

    class BoundingBox
      def self.parse(map)
        data = Types::BoundingBox.new
        data.width = Hearth::NumberHelper.deserialize(map['Width'])
        data.height = Hearth::NumberHelper.deserialize(map['Height'])
        data.left = Hearth::NumberHelper.deserialize(map['Left'])
        data.top = Hearth::NumberHelper.deserialize(map['Top'])
        return data
      end
    end

    class DocumentMetadata
      def self.parse(map)
        data = Types::DocumentMetadata.new
        data.pages = map['Pages']
        return data
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
        data.code = map['Code']
        data
      end
    end

    # Error Parser for HumanLoopQuotaExceededException
    class HumanLoopQuotaExceededException
      def self.parse(http_resp)
        data = Types::HumanLoopQuotaExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resource_type = map['ResourceType']
        data.quota_code = map['QuotaCode']
        data.service_code = map['ServiceCode']
        data.message = map['Message']
        data.code = map['Code']
        data
      end
    end

    # Error Parser for BadDocumentException
    class BadDocumentException
      def self.parse(http_resp)
        data = Types::BadDocumentException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.code = map['Code']
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
        data.code = map['Code']
        data
      end
    end

    # Error Parser for ProvisionedThroughputExceededException
    class ProvisionedThroughputExceededException
      def self.parse(http_resp)
        data = Types::ProvisionedThroughputExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.code = map['Code']
        data
      end
    end

    # Error Parser for DocumentTooLargeException
    class DocumentTooLargeException
      def self.parse(http_resp)
        data = Types::DocumentTooLargeException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.code = map['Code']
        data
      end
    end

    # Error Parser for InvalidS3ObjectException
    class InvalidS3ObjectException
      def self.parse(http_resp)
        data = Types::InvalidS3ObjectException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.code = map['Code']
        data
      end
    end

    # Error Parser for InvalidParameterException
    class InvalidParameterException
      def self.parse(http_resp)
        data = Types::InvalidParameterException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.code = map['Code']
        data
      end
    end

    # Error Parser for UnsupportedDocumentException
    class UnsupportedDocumentException
      def self.parse(http_resp)
        data = Types::UnsupportedDocumentException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.code = map['Code']
        data
      end
    end

    # Error Parser for InternalServerError
    class InternalServerError
      def self.parse(http_resp)
        data = Types::InternalServerError.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.code = map['Code']
        data
      end
    end

    # Operation Parser for AnalyzeExpense
    class AnalyzeExpense
      def self.parse(http_resp)
        data = Types::AnalyzeExpenseOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.document_metadata = (Parsers::DocumentMetadata.parse(map['DocumentMetadata']) unless map['DocumentMetadata'].nil?)
        data.expense_documents = (Parsers::ExpenseDocumentList.parse(map['ExpenseDocuments']) unless map['ExpenseDocuments'].nil?)
        data
      end
    end

    class ExpenseDocumentList
      def self.parse(list)
        list.map do |value|
          Parsers::ExpenseDocument.parse(value) unless value.nil?
        end
      end
    end

    class ExpenseDocument
      def self.parse(map)
        data = Types::ExpenseDocument.new
        data.expense_index = map['ExpenseIndex']
        data.summary_fields = (Parsers::ExpenseFieldList.parse(map['SummaryFields']) unless map['SummaryFields'].nil?)
        data.line_item_groups = (Parsers::LineItemGroupList.parse(map['LineItemGroups']) unless map['LineItemGroups'].nil?)
        return data
      end
    end

    class LineItemGroupList
      def self.parse(list)
        list.map do |value|
          Parsers::LineItemGroup.parse(value) unless value.nil?
        end
      end
    end

    class LineItemGroup
      def self.parse(map)
        data = Types::LineItemGroup.new
        data.line_item_group_index = map['LineItemGroupIndex']
        data.line_items = (Parsers::LineItemList.parse(map['LineItems']) unless map['LineItems'].nil?)
        return data
      end
    end

    class LineItemList
      def self.parse(list)
        list.map do |value|
          Parsers::LineItemFields.parse(value) unless value.nil?
        end
      end
    end

    class LineItemFields
      def self.parse(map)
        data = Types::LineItemFields.new
        data.line_item_expense_fields = (Parsers::ExpenseFieldList.parse(map['LineItemExpenseFields']) unless map['LineItemExpenseFields'].nil?)
        return data
      end
    end

    class ExpenseFieldList
      def self.parse(list)
        list.map do |value|
          Parsers::ExpenseField.parse(value) unless value.nil?
        end
      end
    end

    class ExpenseField
      def self.parse(map)
        data = Types::ExpenseField.new
        data.type = (Parsers::ExpenseType.parse(map['Type']) unless map['Type'].nil?)
        data.label_detection = (Parsers::ExpenseDetection.parse(map['LabelDetection']) unless map['LabelDetection'].nil?)
        data.value_detection = (Parsers::ExpenseDetection.parse(map['ValueDetection']) unless map['ValueDetection'].nil?)
        data.page_number = map['PageNumber']
        return data
      end
    end

    class ExpenseDetection
      def self.parse(map)
        data = Types::ExpenseDetection.new
        data.text = map['Text']
        data.geometry = (Parsers::Geometry.parse(map['Geometry']) unless map['Geometry'].nil?)
        data.confidence = Hearth::NumberHelper.deserialize(map['Confidence'])
        return data
      end
    end

    class ExpenseType
      def self.parse(map)
        data = Types::ExpenseType.new
        data.text = map['Text']
        data.confidence = Hearth::NumberHelper.deserialize(map['Confidence'])
        return data
      end
    end

    # Operation Parser for AnalyzeID
    class AnalyzeID
      def self.parse(http_resp)
        data = Types::AnalyzeIDOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.identity_documents = (Parsers::IdentityDocumentList.parse(map['IdentityDocuments']) unless map['IdentityDocuments'].nil?)
        data.document_metadata = (Parsers::DocumentMetadata.parse(map['DocumentMetadata']) unless map['DocumentMetadata'].nil?)
        data.analyze_id_model_version = map['AnalyzeIDModelVersion']
        data
      end
    end

    class IdentityDocumentList
      def self.parse(list)
        list.map do |value|
          Parsers::IdentityDocument.parse(value) unless value.nil?
        end
      end
    end

    class IdentityDocument
      def self.parse(map)
        data = Types::IdentityDocument.new
        data.document_index = map['DocumentIndex']
        data.identity_document_fields = (Parsers::IdentityDocumentFieldList.parse(map['IdentityDocumentFields']) unless map['IdentityDocumentFields'].nil?)
        return data
      end
    end

    class IdentityDocumentFieldList
      def self.parse(list)
        list.map do |value|
          Parsers::IdentityDocumentField.parse(value) unless value.nil?
        end
      end
    end

    class IdentityDocumentField
      def self.parse(map)
        data = Types::IdentityDocumentField.new
        data.type = (Parsers::AnalyzeIDDetections.parse(map['Type']) unless map['Type'].nil?)
        data.value_detection = (Parsers::AnalyzeIDDetections.parse(map['ValueDetection']) unless map['ValueDetection'].nil?)
        return data
      end
    end

    class AnalyzeIDDetections
      def self.parse(map)
        data = Types::AnalyzeIDDetections.new
        data.text = map['Text']
        data.normalized_value = (Parsers::NormalizedValue.parse(map['NormalizedValue']) unless map['NormalizedValue'].nil?)
        data.confidence = Hearth::NumberHelper.deserialize(map['Confidence'])
        return data
      end
    end

    class NormalizedValue
      def self.parse(map)
        data = Types::NormalizedValue.new
        data.value = map['Value']
        data.value_type = map['ValueType']
        return data
      end
    end

    # Operation Parser for DetectDocumentText
    class DetectDocumentText
      def self.parse(http_resp)
        data = Types::DetectDocumentTextOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.document_metadata = (Parsers::DocumentMetadata.parse(map['DocumentMetadata']) unless map['DocumentMetadata'].nil?)
        data.blocks = (Parsers::BlockList.parse(map['Blocks']) unless map['Blocks'].nil?)
        data.detect_document_text_model_version = map['DetectDocumentTextModelVersion']
        data
      end
    end

    # Operation Parser for GetDocumentAnalysis
    class GetDocumentAnalysis
      def self.parse(http_resp)
        data = Types::GetDocumentAnalysisOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.document_metadata = (Parsers::DocumentMetadata.parse(map['DocumentMetadata']) unless map['DocumentMetadata'].nil?)
        data.job_status = map['JobStatus']
        data.next_token = map['NextToken']
        data.blocks = (Parsers::BlockList.parse(map['Blocks']) unless map['Blocks'].nil?)
        data.warnings = (Parsers::Warnings.parse(map['Warnings']) unless map['Warnings'].nil?)
        data.status_message = map['StatusMessage']
        data.analyze_document_model_version = map['AnalyzeDocumentModelVersion']
        data
      end
    end

    class Warnings
      def self.parse(list)
        list.map do |value|
          Parsers::Warning.parse(value) unless value.nil?
        end
      end
    end

    class Warning
      def self.parse(map)
        data = Types::Warning.new
        data.error_code = map['ErrorCode']
        data.pages = (Parsers::Pages.parse(map['Pages']) unless map['Pages'].nil?)
        return data
      end
    end

    class Pages
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Error Parser for InvalidJobIdException
    class InvalidJobIdException
      def self.parse(http_resp)
        data = Types::InvalidJobIdException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.code = map['Code']
        data
      end
    end

    # Error Parser for InvalidKMSKeyException
    class InvalidKMSKeyException
      def self.parse(http_resp)
        data = Types::InvalidKMSKeyException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.code = map['Code']
        data
      end
    end

    # Operation Parser for GetDocumentTextDetection
    class GetDocumentTextDetection
      def self.parse(http_resp)
        data = Types::GetDocumentTextDetectionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.document_metadata = (Parsers::DocumentMetadata.parse(map['DocumentMetadata']) unless map['DocumentMetadata'].nil?)
        data.job_status = map['JobStatus']
        data.next_token = map['NextToken']
        data.blocks = (Parsers::BlockList.parse(map['Blocks']) unless map['Blocks'].nil?)
        data.warnings = (Parsers::Warnings.parse(map['Warnings']) unless map['Warnings'].nil?)
        data.status_message = map['StatusMessage']
        data.detect_document_text_model_version = map['DetectDocumentTextModelVersion']
        data
      end
    end

    # Operation Parser for GetExpenseAnalysis
    class GetExpenseAnalysis
      def self.parse(http_resp)
        data = Types::GetExpenseAnalysisOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.document_metadata = (Parsers::DocumentMetadata.parse(map['DocumentMetadata']) unless map['DocumentMetadata'].nil?)
        data.job_status = map['JobStatus']
        data.next_token = map['NextToken']
        data.expense_documents = (Parsers::ExpenseDocumentList.parse(map['ExpenseDocuments']) unless map['ExpenseDocuments'].nil?)
        data.warnings = (Parsers::Warnings.parse(map['Warnings']) unless map['Warnings'].nil?)
        data.status_message = map['StatusMessage']
        data.analyze_expense_model_version = map['AnalyzeExpenseModelVersion']
        data
      end
    end

    # Operation Parser for StartDocumentAnalysis
    class StartDocumentAnalysis
      def self.parse(http_resp)
        data = Types::StartDocumentAnalysisOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_id = map['JobId']
        data
      end
    end

    # Error Parser for IdempotentParameterMismatchException
    class IdempotentParameterMismatchException
      def self.parse(http_resp)
        data = Types::IdempotentParameterMismatchException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.code = map['Code']
        data
      end
    end

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp)
        data = Types::LimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.code = map['Code']
        data
      end
    end

    # Operation Parser for StartDocumentTextDetection
    class StartDocumentTextDetection
      def self.parse(http_resp)
        data = Types::StartDocumentTextDetectionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_id = map['JobId']
        data
      end
    end

    # Operation Parser for StartExpenseAnalysis
    class StartExpenseAnalysis
      def self.parse(http_resp)
        data = Types::StartExpenseAnalysisOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_id = map['JobId']
        data
      end
    end
  end
end
