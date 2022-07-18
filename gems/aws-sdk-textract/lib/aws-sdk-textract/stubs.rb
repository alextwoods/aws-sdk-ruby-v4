# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Textract
  module Stubs

    # Operation Stubber for AnalyzeDocument
    class AnalyzeDocument
      def self.default(visited=[])
        {
          document_metadata: DocumentMetadata.default(visited),
          blocks: BlockList.default(visited),
          human_loop_activation_output: HumanLoopActivationOutput.default(visited),
          analyze_document_model_version: 'analyze_document_model_version',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DocumentMetadata'] = Stubs::DocumentMetadata.stub(stub[:document_metadata]) unless stub[:document_metadata].nil?
        data['Blocks'] = Stubs::BlockList.stub(stub[:blocks]) unless stub[:blocks].nil?
        data['HumanLoopActivationOutput'] = Stubs::HumanLoopActivationOutput.stub(stub[:human_loop_activation_output]) unless stub[:human_loop_activation_output].nil?
        data['AnalyzeDocumentModelVersion'] = stub[:analyze_document_model_version] unless stub[:analyze_document_model_version].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for HumanLoopActivationOutput
    class HumanLoopActivationOutput
      def self.default(visited=[])
        return nil if visited.include?('HumanLoopActivationOutput')
        visited = visited + ['HumanLoopActivationOutput']
        {
          human_loop_arn: 'human_loop_arn',
          human_loop_activation_reasons: HumanLoopActivationReasons.default(visited),
          human_loop_activation_conditions_evaluation_results: 'human_loop_activation_conditions_evaluation_results',
        }
      end

      def self.stub(stub)
        stub ||= Types::HumanLoopActivationOutput.new
        data = {}
        data['HumanLoopArn'] = stub[:human_loop_arn] unless stub[:human_loop_arn].nil?
        data['HumanLoopActivationReasons'] = Stubs::HumanLoopActivationReasons.stub(stub[:human_loop_activation_reasons]) unless stub[:human_loop_activation_reasons].nil?
        data['HumanLoopActivationConditionsEvaluationResults'] = stub[:human_loop_activation_conditions_evaluation_results] unless stub[:human_loop_activation_conditions_evaluation_results].nil?
        data
      end
    end

    # List Stubber for HumanLoopActivationReasons
    class HumanLoopActivationReasons
      def self.default(visited=[])
        return nil if visited.include?('HumanLoopActivationReasons')
        visited = visited + ['HumanLoopActivationReasons']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for BlockList
    class BlockList
      def self.default(visited=[])
        return nil if visited.include?('BlockList')
        visited = visited + ['BlockList']
        [
          Block.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Block.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Block
    class Block
      def self.default(visited=[])
        return nil if visited.include?('Block')
        visited = visited + ['Block']
        {
          block_type: 'block_type',
          confidence: 1.0,
          text: 'text',
          text_type: 'text_type',
          row_index: 1,
          column_index: 1,
          row_span: 1,
          column_span: 1,
          geometry: Geometry.default(visited),
          id: 'id',
          relationships: RelationshipList.default(visited),
          entity_types: EntityTypes.default(visited),
          selection_status: 'selection_status',
          page: 1,
          query: Query.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Block.new
        data = {}
        data['BlockType'] = stub[:block_type] unless stub[:block_type].nil?
        data['Confidence'] = Hearth::NumberHelper.serialize(stub[:confidence])
        data['Text'] = stub[:text] unless stub[:text].nil?
        data['TextType'] = stub[:text_type] unless stub[:text_type].nil?
        data['RowIndex'] = stub[:row_index] unless stub[:row_index].nil?
        data['ColumnIndex'] = stub[:column_index] unless stub[:column_index].nil?
        data['RowSpan'] = stub[:row_span] unless stub[:row_span].nil?
        data['ColumnSpan'] = stub[:column_span] unless stub[:column_span].nil?
        data['Geometry'] = Stubs::Geometry.stub(stub[:geometry]) unless stub[:geometry].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Relationships'] = Stubs::RelationshipList.stub(stub[:relationships]) unless stub[:relationships].nil?
        data['EntityTypes'] = Stubs::EntityTypes.stub(stub[:entity_types]) unless stub[:entity_types].nil?
        data['SelectionStatus'] = stub[:selection_status] unless stub[:selection_status].nil?
        data['Page'] = stub[:page] unless stub[:page].nil?
        data['Query'] = Stubs::Query.stub(stub[:query]) unless stub[:query].nil?
        data
      end
    end

    # Structure Stubber for Query
    class Query
      def self.default(visited=[])
        return nil if visited.include?('Query')
        visited = visited + ['Query']
        {
          text: 'text',
          alias: 'alias',
          pages: QueryPages.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Query.new
        data = {}
        data['Text'] = stub[:text] unless stub[:text].nil?
        data['Alias'] = stub[:alias] unless stub[:alias].nil?
        data['Pages'] = Stubs::QueryPages.stub(stub[:pages]) unless stub[:pages].nil?
        data
      end
    end

    # List Stubber for QueryPages
    class QueryPages
      def self.default(visited=[])
        return nil if visited.include?('QueryPages')
        visited = visited + ['QueryPages']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for EntityTypes
    class EntityTypes
      def self.default(visited=[])
        return nil if visited.include?('EntityTypes')
        visited = visited + ['EntityTypes']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for RelationshipList
    class RelationshipList
      def self.default(visited=[])
        return nil if visited.include?('RelationshipList')
        visited = visited + ['RelationshipList']
        [
          Relationship.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Relationship.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Relationship
    class Relationship
      def self.default(visited=[])
        return nil if visited.include?('Relationship')
        visited = visited + ['Relationship']
        {
          type: 'type',
          ids: IdList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Relationship.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Ids'] = Stubs::IdList.stub(stub[:ids]) unless stub[:ids].nil?
        data
      end
    end

    # List Stubber for IdList
    class IdList
      def self.default(visited=[])
        return nil if visited.include?('IdList')
        visited = visited + ['IdList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Geometry
    class Geometry
      def self.default(visited=[])
        return nil if visited.include?('Geometry')
        visited = visited + ['Geometry']
        {
          bounding_box: BoundingBox.default(visited),
          polygon: Polygon.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Geometry.new
        data = {}
        data['BoundingBox'] = Stubs::BoundingBox.stub(stub[:bounding_box]) unless stub[:bounding_box].nil?
        data['Polygon'] = Stubs::Polygon.stub(stub[:polygon]) unless stub[:polygon].nil?
        data
      end
    end

    # List Stubber for Polygon
    class Polygon
      def self.default(visited=[])
        return nil if visited.include?('Polygon')
        visited = visited + ['Polygon']
        [
          Point.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Point.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Point
    class Point
      def self.default(visited=[])
        return nil if visited.include?('Point')
        visited = visited + ['Point']
        {
          x: 1.0,
          y: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::Point.new
        data = {}
        data['X'] = Hearth::NumberHelper.serialize(stub[:x])
        data['Y'] = Hearth::NumberHelper.serialize(stub[:y])
        data
      end
    end

    # Structure Stubber for BoundingBox
    class BoundingBox
      def self.default(visited=[])
        return nil if visited.include?('BoundingBox')
        visited = visited + ['BoundingBox']
        {
          width: 1.0,
          height: 1.0,
          left: 1.0,
          top: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::BoundingBox.new
        data = {}
        data['Width'] = Hearth::NumberHelper.serialize(stub[:width])
        data['Height'] = Hearth::NumberHelper.serialize(stub[:height])
        data['Left'] = Hearth::NumberHelper.serialize(stub[:left])
        data['Top'] = Hearth::NumberHelper.serialize(stub[:top])
        data
      end
    end

    # Structure Stubber for DocumentMetadata
    class DocumentMetadata
      def self.default(visited=[])
        return nil if visited.include?('DocumentMetadata')
        visited = visited + ['DocumentMetadata']
        {
          pages: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::DocumentMetadata.new
        data = {}
        data['Pages'] = stub[:pages] unless stub[:pages].nil?
        data
      end
    end

    # Operation Stubber for AnalyzeExpense
    class AnalyzeExpense
      def self.default(visited=[])
        {
          document_metadata: DocumentMetadata.default(visited),
          expense_documents: ExpenseDocumentList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DocumentMetadata'] = Stubs::DocumentMetadata.stub(stub[:document_metadata]) unless stub[:document_metadata].nil?
        data['ExpenseDocuments'] = Stubs::ExpenseDocumentList.stub(stub[:expense_documents]) unless stub[:expense_documents].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ExpenseDocumentList
    class ExpenseDocumentList
      def self.default(visited=[])
        return nil if visited.include?('ExpenseDocumentList')
        visited = visited + ['ExpenseDocumentList']
        [
          ExpenseDocument.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ExpenseDocument.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ExpenseDocument
    class ExpenseDocument
      def self.default(visited=[])
        return nil if visited.include?('ExpenseDocument')
        visited = visited + ['ExpenseDocument']
        {
          expense_index: 1,
          summary_fields: ExpenseFieldList.default(visited),
          line_item_groups: LineItemGroupList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ExpenseDocument.new
        data = {}
        data['ExpenseIndex'] = stub[:expense_index] unless stub[:expense_index].nil?
        data['SummaryFields'] = Stubs::ExpenseFieldList.stub(stub[:summary_fields]) unless stub[:summary_fields].nil?
        data['LineItemGroups'] = Stubs::LineItemGroupList.stub(stub[:line_item_groups]) unless stub[:line_item_groups].nil?
        data
      end
    end

    # List Stubber for LineItemGroupList
    class LineItemGroupList
      def self.default(visited=[])
        return nil if visited.include?('LineItemGroupList')
        visited = visited + ['LineItemGroupList']
        [
          LineItemGroup.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::LineItemGroup.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for LineItemGroup
    class LineItemGroup
      def self.default(visited=[])
        return nil if visited.include?('LineItemGroup')
        visited = visited + ['LineItemGroup']
        {
          line_item_group_index: 1,
          line_items: LineItemList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LineItemGroup.new
        data = {}
        data['LineItemGroupIndex'] = stub[:line_item_group_index] unless stub[:line_item_group_index].nil?
        data['LineItems'] = Stubs::LineItemList.stub(stub[:line_items]) unless stub[:line_items].nil?
        data
      end
    end

    # List Stubber for LineItemList
    class LineItemList
      def self.default(visited=[])
        return nil if visited.include?('LineItemList')
        visited = visited + ['LineItemList']
        [
          LineItemFields.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::LineItemFields.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for LineItemFields
    class LineItemFields
      def self.default(visited=[])
        return nil if visited.include?('LineItemFields')
        visited = visited + ['LineItemFields']
        {
          line_item_expense_fields: ExpenseFieldList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LineItemFields.new
        data = {}
        data['LineItemExpenseFields'] = Stubs::ExpenseFieldList.stub(stub[:line_item_expense_fields]) unless stub[:line_item_expense_fields].nil?
        data
      end
    end

    # List Stubber for ExpenseFieldList
    class ExpenseFieldList
      def self.default(visited=[])
        return nil if visited.include?('ExpenseFieldList')
        visited = visited + ['ExpenseFieldList']
        [
          ExpenseField.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ExpenseField.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ExpenseField
    class ExpenseField
      def self.default(visited=[])
        return nil if visited.include?('ExpenseField')
        visited = visited + ['ExpenseField']
        {
          type: ExpenseType.default(visited),
          label_detection: ExpenseDetection.default(visited),
          value_detection: ExpenseDetection.default(visited),
          page_number: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ExpenseField.new
        data = {}
        data['Type'] = Stubs::ExpenseType.stub(stub[:type]) unless stub[:type].nil?
        data['LabelDetection'] = Stubs::ExpenseDetection.stub(stub[:label_detection]) unless stub[:label_detection].nil?
        data['ValueDetection'] = Stubs::ExpenseDetection.stub(stub[:value_detection]) unless stub[:value_detection].nil?
        data['PageNumber'] = stub[:page_number] unless stub[:page_number].nil?
        data
      end
    end

    # Structure Stubber for ExpenseDetection
    class ExpenseDetection
      def self.default(visited=[])
        return nil if visited.include?('ExpenseDetection')
        visited = visited + ['ExpenseDetection']
        {
          text: 'text',
          geometry: Geometry.default(visited),
          confidence: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::ExpenseDetection.new
        data = {}
        data['Text'] = stub[:text] unless stub[:text].nil?
        data['Geometry'] = Stubs::Geometry.stub(stub[:geometry]) unless stub[:geometry].nil?
        data['Confidence'] = Hearth::NumberHelper.serialize(stub[:confidence])
        data
      end
    end

    # Structure Stubber for ExpenseType
    class ExpenseType
      def self.default(visited=[])
        return nil if visited.include?('ExpenseType')
        visited = visited + ['ExpenseType']
        {
          text: 'text',
          confidence: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::ExpenseType.new
        data = {}
        data['Text'] = stub[:text] unless stub[:text].nil?
        data['Confidence'] = Hearth::NumberHelper.serialize(stub[:confidence])
        data
      end
    end

    # Operation Stubber for AnalyzeID
    class AnalyzeID
      def self.default(visited=[])
        {
          identity_documents: IdentityDocumentList.default(visited),
          document_metadata: DocumentMetadata.default(visited),
          analyze_id_model_version: 'analyze_id_model_version',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['IdentityDocuments'] = Stubs::IdentityDocumentList.stub(stub[:identity_documents]) unless stub[:identity_documents].nil?
        data['DocumentMetadata'] = Stubs::DocumentMetadata.stub(stub[:document_metadata]) unless stub[:document_metadata].nil?
        data['AnalyzeIDModelVersion'] = stub[:analyze_id_model_version] unless stub[:analyze_id_model_version].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for IdentityDocumentList
    class IdentityDocumentList
      def self.default(visited=[])
        return nil if visited.include?('IdentityDocumentList')
        visited = visited + ['IdentityDocumentList']
        [
          IdentityDocument.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::IdentityDocument.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for IdentityDocument
    class IdentityDocument
      def self.default(visited=[])
        return nil if visited.include?('IdentityDocument')
        visited = visited + ['IdentityDocument']
        {
          document_index: 1,
          identity_document_fields: IdentityDocumentFieldList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::IdentityDocument.new
        data = {}
        data['DocumentIndex'] = stub[:document_index] unless stub[:document_index].nil?
        data['IdentityDocumentFields'] = Stubs::IdentityDocumentFieldList.stub(stub[:identity_document_fields]) unless stub[:identity_document_fields].nil?
        data
      end
    end

    # List Stubber for IdentityDocumentFieldList
    class IdentityDocumentFieldList
      def self.default(visited=[])
        return nil if visited.include?('IdentityDocumentFieldList')
        visited = visited + ['IdentityDocumentFieldList']
        [
          IdentityDocumentField.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::IdentityDocumentField.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for IdentityDocumentField
    class IdentityDocumentField
      def self.default(visited=[])
        return nil if visited.include?('IdentityDocumentField')
        visited = visited + ['IdentityDocumentField']
        {
          type: AnalyzeIDDetections.default(visited),
          value_detection: AnalyzeIDDetections.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::IdentityDocumentField.new
        data = {}
        data['Type'] = Stubs::AnalyzeIDDetections.stub(stub[:type]) unless stub[:type].nil?
        data['ValueDetection'] = Stubs::AnalyzeIDDetections.stub(stub[:value_detection]) unless stub[:value_detection].nil?
        data
      end
    end

    # Structure Stubber for AnalyzeIDDetections
    class AnalyzeIDDetections
      def self.default(visited=[])
        return nil if visited.include?('AnalyzeIDDetections')
        visited = visited + ['AnalyzeIDDetections']
        {
          text: 'text',
          normalized_value: NormalizedValue.default(visited),
          confidence: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::AnalyzeIDDetections.new
        data = {}
        data['Text'] = stub[:text] unless stub[:text].nil?
        data['NormalizedValue'] = Stubs::NormalizedValue.stub(stub[:normalized_value]) unless stub[:normalized_value].nil?
        data['Confidence'] = Hearth::NumberHelper.serialize(stub[:confidence])
        data
      end
    end

    # Structure Stubber for NormalizedValue
    class NormalizedValue
      def self.default(visited=[])
        return nil if visited.include?('NormalizedValue')
        visited = visited + ['NormalizedValue']
        {
          value: 'value',
          value_type: 'value_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::NormalizedValue.new
        data = {}
        data['Value'] = stub[:value] unless stub[:value].nil?
        data['ValueType'] = stub[:value_type] unless stub[:value_type].nil?
        data
      end
    end

    # Operation Stubber for DetectDocumentText
    class DetectDocumentText
      def self.default(visited=[])
        {
          document_metadata: DocumentMetadata.default(visited),
          blocks: BlockList.default(visited),
          detect_document_text_model_version: 'detect_document_text_model_version',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DocumentMetadata'] = Stubs::DocumentMetadata.stub(stub[:document_metadata]) unless stub[:document_metadata].nil?
        data['Blocks'] = Stubs::BlockList.stub(stub[:blocks]) unless stub[:blocks].nil?
        data['DetectDocumentTextModelVersion'] = stub[:detect_document_text_model_version] unless stub[:detect_document_text_model_version].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetDocumentAnalysis
    class GetDocumentAnalysis
      def self.default(visited=[])
        {
          document_metadata: DocumentMetadata.default(visited),
          job_status: 'job_status',
          next_token: 'next_token',
          blocks: BlockList.default(visited),
          warnings: Warnings.default(visited),
          status_message: 'status_message',
          analyze_document_model_version: 'analyze_document_model_version',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DocumentMetadata'] = Stubs::DocumentMetadata.stub(stub[:document_metadata]) unless stub[:document_metadata].nil?
        data['JobStatus'] = stub[:job_status] unless stub[:job_status].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['Blocks'] = Stubs::BlockList.stub(stub[:blocks]) unless stub[:blocks].nil?
        data['Warnings'] = Stubs::Warnings.stub(stub[:warnings]) unless stub[:warnings].nil?
        data['StatusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['AnalyzeDocumentModelVersion'] = stub[:analyze_document_model_version] unless stub[:analyze_document_model_version].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Warnings
    class Warnings
      def self.default(visited=[])
        return nil if visited.include?('Warnings')
        visited = visited + ['Warnings']
        [
          Warning.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Warning.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Warning
    class Warning
      def self.default(visited=[])
        return nil if visited.include?('Warning')
        visited = visited + ['Warning']
        {
          error_code: 'error_code',
          pages: Pages.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Warning.new
        data = {}
        data['ErrorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['Pages'] = Stubs::Pages.stub(stub[:pages]) unless stub[:pages].nil?
        data
      end
    end

    # List Stubber for Pages
    class Pages
      def self.default(visited=[])
        return nil if visited.include?('Pages')
        visited = visited + ['Pages']
        [
          1
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetDocumentTextDetection
    class GetDocumentTextDetection
      def self.default(visited=[])
        {
          document_metadata: DocumentMetadata.default(visited),
          job_status: 'job_status',
          next_token: 'next_token',
          blocks: BlockList.default(visited),
          warnings: Warnings.default(visited),
          status_message: 'status_message',
          detect_document_text_model_version: 'detect_document_text_model_version',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DocumentMetadata'] = Stubs::DocumentMetadata.stub(stub[:document_metadata]) unless stub[:document_metadata].nil?
        data['JobStatus'] = stub[:job_status] unless stub[:job_status].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['Blocks'] = Stubs::BlockList.stub(stub[:blocks]) unless stub[:blocks].nil?
        data['Warnings'] = Stubs::Warnings.stub(stub[:warnings]) unless stub[:warnings].nil?
        data['StatusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['DetectDocumentTextModelVersion'] = stub[:detect_document_text_model_version] unless stub[:detect_document_text_model_version].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetExpenseAnalysis
    class GetExpenseAnalysis
      def self.default(visited=[])
        {
          document_metadata: DocumentMetadata.default(visited),
          job_status: 'job_status',
          next_token: 'next_token',
          expense_documents: ExpenseDocumentList.default(visited),
          warnings: Warnings.default(visited),
          status_message: 'status_message',
          analyze_expense_model_version: 'analyze_expense_model_version',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DocumentMetadata'] = Stubs::DocumentMetadata.stub(stub[:document_metadata]) unless stub[:document_metadata].nil?
        data['JobStatus'] = stub[:job_status] unless stub[:job_status].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['ExpenseDocuments'] = Stubs::ExpenseDocumentList.stub(stub[:expense_documents]) unless stub[:expense_documents].nil?
        data['Warnings'] = Stubs::Warnings.stub(stub[:warnings]) unless stub[:warnings].nil?
        data['StatusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['AnalyzeExpenseModelVersion'] = stub[:analyze_expense_model_version] unless stub[:analyze_expense_model_version].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartDocumentAnalysis
    class StartDocumentAnalysis
      def self.default(visited=[])
        {
          job_id: 'job_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartDocumentTextDetection
    class StartDocumentTextDetection
      def self.default(visited=[])
        {
          job_id: 'job_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartExpenseAnalysis
    class StartExpenseAnalysis
      def self.default(visited=[])
        {
          job_id: 'job_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
