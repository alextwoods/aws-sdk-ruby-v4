# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Textract
  module Types

    # <p>You aren't authorized to perform the action. Use the Amazon Resource Name (ARN)
    #             of an authorized user or IAM role to perform the operation.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute code
    #
    #   @return [String]
    #
    AccessDeniedException = ::Struct.new(
      :message,
      :code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute document
    #   <p>The input document as base64-encoded bytes or an Amazon S3 object. If you use the AWS CLI
    #            to call Amazon Textract operations, you can't pass image bytes. The document must be an image
    #            in JPEG, PNG, PDF, or TIFF format.</p>
    #            <p>If you're using an AWS SDK to call Amazon Textract, you might not need to base64-encode
    #            image bytes that are passed using the <code>Bytes</code> field. </p>
    #
    #   @return [Document]
    #
    # @!attribute feature_types
    #   <p>A list of the types of analysis to perform. Add TABLES to the list to return information
    #            about the tables that are detected in the input document. Add FORMS to return detected form data.
    #            To perform both types of analysis, add TABLES and FORMS to
    #               <code>FeatureTypes</code>. All lines and words detected in the document are included in
    #            the response (including text that isn't related to the value of <code>FeatureTypes</code>). </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute human_loop_config
    #   <p>Sets the configuration for the human in the loop workflow for analyzing documents.</p>
    #
    #   @return [HumanLoopConfig]
    #
    # @!attribute queries_config
    #   <p>Contains Queries and the alias for those Queries, as determined by the input. </p>
    #
    #   @return [QueriesConfig]
    #
    AnalyzeDocumentInput = ::Struct.new(
      :document,
      :feature_types,
      :human_loop_config,
      :queries_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute document_metadata
    #   <p>Metadata about the analyzed document. An example is the number of pages.</p>
    #
    #   @return [DocumentMetadata]
    #
    # @!attribute blocks
    #   <p>The items that are detected and analyzed by <code>AnalyzeDocument</code>.</p>
    #
    #   @return [Array<Block>]
    #
    # @!attribute human_loop_activation_output
    #   <p>Shows the results of the human in the loop evaluation.</p>
    #
    #   @return [HumanLoopActivationOutput]
    #
    # @!attribute analyze_document_model_version
    #   <p>The version of the model used to analyze the document.</p>
    #
    #   @return [String]
    #
    AnalyzeDocumentOutput = ::Struct.new(
      :document_metadata,
      :blocks,
      :human_loop_activation_output,
      :analyze_document_model_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute document
    #   <p>The input document, either as bytes or as an S3 object.</p>
    #            <p>You pass image bytes to an Amazon Textract API operation by using the <code>Bytes</code>
    #            property. For example, you would use the <code>Bytes</code> property to pass a document
    #            loaded from a local file system. Image bytes passed by using the <code>Bytes</code>
    #            property must be base64 encoded. Your code might not need to encode document file bytes if
    #            you're using an AWS SDK to call Amazon Textract API operations. </p>
    #            <p>You pass images stored in an S3 bucket to an Amazon Textract API operation by using the
    #               <code>S3Object</code> property. Documents stored in an S3 bucket don't need to be base64
    #            encoded.</p>
    #            <p>The AWS Region for the S3 bucket that contains the S3 object must match the AWS
    #            Region that you use for Amazon Textract operations.</p>
    #            <p>If you use the AWS CLI to call Amazon Textract operations, passing image bytes using
    #            the Bytes property isn't supported. You must first upload the document to an Amazon S3
    #            bucket, and then call the operation using the S3Object property.</p>
    #
    #            <p>For Amazon Textract to process an S3 object, the user must have permission
    #            to access the S3 object. </p>
    #
    #   @return [Document]
    #
    AnalyzeExpenseInput = ::Struct.new(
      :document,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute document_metadata
    #   <p>Information about the input document.</p>
    #
    #   @return [DocumentMetadata]
    #
    # @!attribute expense_documents
    #   <p>The expenses detected by Amazon Textract.</p>
    #
    #   @return [Array<ExpenseDocument>]
    #
    AnalyzeExpenseOutput = ::Struct.new(
      :document_metadata,
      :expense_documents,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Used to contain the information detected by an AnalyzeID operation.</p>
    #
    # @!attribute text
    #   <p>Text of either the normalized field or value associated with it.</p>
    #
    #   @return [String]
    #
    # @!attribute normalized_value
    #   <p>Only returned for dates, returns the type of value detected and the date
    #            written in a more machine readable way.</p>
    #
    #   @return [NormalizedValue]
    #
    # @!attribute confidence
    #   <p>The confidence score of the detected text.</p>
    #
    #   @return [Float]
    #
    AnalyzeIDDetections = ::Struct.new(
      :text,
      :normalized_value,
      :confidence,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute document_pages
    #   <p>The document being passed to AnalyzeID.</p>
    #
    #   @return [Array<Document>]
    #
    AnalyzeIDInput = ::Struct.new(
      :document_pages,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute identity_documents
    #   <p>The list of documents processed by AnalyzeID. Includes a number denoting their
    #            place in the list and the response structure for the document.</p>
    #
    #   @return [Array<IdentityDocument>]
    #
    # @!attribute document_metadata
    #   <p>Information about the input document.</p>
    #
    #   @return [DocumentMetadata]
    #
    # @!attribute analyze_id_model_version
    #   <p>The version of the AnalyzeIdentity API being used to process documents.</p>
    #
    #   @return [String]
    #
    AnalyzeIDOutput = ::Struct.new(
      :identity_documents,
      :document_metadata,
      :analyze_id_model_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Amazon Textract isn't able to read the document. For more information on the document
    #          limits in Amazon Textract, see <a>limits</a>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute code
    #
    #   @return [String]
    #
    BadDocumentException = ::Struct.new(
      :message,
      :code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A <code>Block</code> represents items that are recognized in a document within a group
    #          of pixels close to each other. The information returned in a <code>Block</code> object
    #          depends on the type of operation. In text detection for documents (for example <a>DetectDocumentText</a>), you get information about the detected words and lines
    #          of text. In text analysis (for example <a>AnalyzeDocument</a>), you can also get
    #          information about the fields, tables, and selection elements that are detected in the
    #          document.</p>
    #          <p>An array of <code>Block</code> objects is returned by both synchronous and asynchronous
    #          operations. In synchronous operations, such as <a>DetectDocumentText</a>, the
    #          array of <code>Block</code> objects is the entire set of results. In asynchronous
    #          operations, such as <a>GetDocumentAnalysis</a>, the array is returned over one
    #          or more responses.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/textract/latest/dg/how-it-works.html">How Amazon Textract Works</a>.</p>
    #
    # @!attribute block_type
    #   <p>The type of text item that's recognized. In operations for text detection, the following
    #            types are returned:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <i>PAGE</i> - Contains a list of the LINE <code>Block</code> objects
    #                  that are detected on a document page.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>WORD</i> - A word detected on a document page. A word is one or
    #                  more ISO basic Latin script characters that aren't separated by spaces.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>LINE</i> - A string of tab-delimited, contiguous words that are
    #                  detected on a document page.</p>
    #               </li>
    #            </ul>
    #            <p>In text analysis operations, the following types are returned:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <i>PAGE</i> - Contains a list of child <code>Block</code> objects
    #                  that are detected on a document page.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>KEY_VALUE_SET</i> - Stores the KEY and VALUE <code>Block</code>
    #                  objects for linked text that's detected on a document page. Use the
    #                     <code>EntityType</code> field to determine if a KEY_VALUE_SET object is a KEY
    #                     <code>Block</code> object or a VALUE <code>Block</code> object. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>WORD</i> - A word that's detected on a document page. A word is
    #                  one or more ISO basic Latin script characters that aren't separated by spaces.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>LINE</i> - A string of tab-delimited, contiguous words that are
    #                  detected on a document page.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>TABLE</i> - A table that's detected on a document page. A table
    #                  is grid-based information with two or more rows or columns, with a cell span of one
    #                  row and one column each. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>CELL</i> - A cell within a detected table. The cell is the parent
    #                  of the block that contains the text in the cell.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>SELECTION_ELEMENT</i> - A selection element such as an option
    #                  button (radio button) or a check box that's detected on a document page. Use the
    #                  value of <code>SelectionStatus</code> to determine the status of the selection
    #                  element.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>QUERY</i> - A question asked during the call of AnalyzeDocument. Contains an
    #                  alias and an ID that attachs it to its answer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>QUERY_RESULT</i> - A response to a question asked during the call
    #                  of analyze document. Comes with an alias and ID for ease of locating in a
    #                  response. Also contains location and confidence score.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["KEY_VALUE_SET", "PAGE", "LINE", "WORD", "TABLE", "CELL", "SELECTION_ELEMENT", "MERGED_CELL", "TITLE", "QUERY", "QUERY_RESULT"]
    #
    #   @return [String]
    #
    # @!attribute confidence
    #   <p>The confidence score that Amazon Textract has in the accuracy of the recognized text and
    #            the accuracy of the geometry points around the recognized text.</p>
    #
    #   @return [Float]
    #
    # @!attribute text
    #   <p>The word or line of text that's recognized by Amazon Textract. </p>
    #
    #   @return [String]
    #
    # @!attribute text_type
    #   <p>The kind of text that Amazon Textract has detected. Can check for handwritten text and
    #            printed text.</p>
    #
    #   Enum, one of: ["HANDWRITING", "PRINTED"]
    #
    #   @return [String]
    #
    # @!attribute row_index
    #   <p>The row in which a table cell is located. The first row position is 1.
    #               <code>RowIndex</code> isn't returned by <code>DetectDocumentText</code> and
    #               <code>GetDocumentTextDetection</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute column_index
    #   <p>The column in which a table cell appears. The first column position is 1.
    #               <code>ColumnIndex</code> isn't returned by <code>DetectDocumentText</code> and
    #               <code>GetDocumentTextDetection</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute row_span
    #   <p>The number of rows that a table cell spans. Currently this value is always 1, even if
    #            the number of rows spanned is greater than 1. <code>RowSpan</code> isn't returned by
    #               <code>DetectDocumentText</code> and <code>GetDocumentTextDetection</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute column_span
    #   <p>The number of columns that a table cell spans. Currently this value is always 1, even if
    #            the number of columns spanned is greater than 1. <code>ColumnSpan</code> isn't returned by
    #               <code>DetectDocumentText</code> and <code>GetDocumentTextDetection</code>. </p>
    #
    #   @return [Integer]
    #
    # @!attribute geometry
    #   <p>The location of the recognized text on the image. It includes an axis-aligned, coarse
    #            bounding box that surrounds the text, and a finer-grain polygon for more accurate spatial
    #            information. </p>
    #
    #   @return [Geometry]
    #
    # @!attribute id
    #   <p>The identifier for the recognized text. The identifier is only unique for a single
    #            operation. </p>
    #
    #   @return [String]
    #
    # @!attribute relationships
    #   <p>A list of child blocks of the current block. For example, a LINE object has child blocks
    #            for each WORD block that's part of the line of text. There aren't Relationship objects in
    #            the list for relationships that don't exist, such as when the current block has no child
    #            blocks. The list size can be the following:</p>
    #            <ul>
    #               <li>
    #                  <p>0 - The block has no child blocks.</p>
    #               </li>
    #               <li>
    #                  <p>1 - The block has child blocks.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<Relationship>]
    #
    # @!attribute entity_types
    #   <p>The type of entity. The following can be returned:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <i>KEY</i> - An identifier for a field on the document.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>VALUE</i> - The field text.</p>
    #               </li>
    #            </ul>
    #            <p>
    #               <code>EntityTypes</code> isn't returned by <code>DetectDocumentText</code> and
    #               <code>GetDocumentTextDetection</code>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute selection_status
    #   <p>The selection status of a selection element, such as an option button or check box.
    #         </p>
    #
    #   Enum, one of: ["SELECTED", "NOT_SELECTED"]
    #
    #   @return [String]
    #
    # @!attribute page
    #   <p>The page on which a block was detected. <code>Page</code> is returned by asynchronous
    #            operations. Page values greater than 1 are only returned for multipage documents that are
    #            in PDF or TIFF format. A scanned image (JPEG/PNG), even if it contains multiple document pages, is
    #            considered to be a single-page document. The value of <code>Page</code> is always 1.
    #            Synchronous operations don't return <code>Page</code> because every input document is
    #            considered to be a single-page document.</p>
    #
    #   @return [Integer]
    #
    # @!attribute query
    #   <p></p>
    #
    #   @return [Query]
    #
    Block = ::Struct.new(
      :block_type,
      :confidence,
      :text,
      :text_type,
      :row_index,
      :column_index,
      :row_span,
      :column_span,
      :geometry,
      :id,
      :relationships,
      :entity_types,
      :selection_status,
      :page,
      :query,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for BlockType
    #
    module BlockType
      # No documentation available.
      #
      KEY_VALUE_SET = "KEY_VALUE_SET"

      # No documentation available.
      #
      PAGE = "PAGE"

      # No documentation available.
      #
      LINE = "LINE"

      # No documentation available.
      #
      WORD = "WORD"

      # No documentation available.
      #
      TABLE = "TABLE"

      # No documentation available.
      #
      CELL = "CELL"

      # No documentation available.
      #
      SELECTION_ELEMENT = "SELECTION_ELEMENT"

      # No documentation available.
      #
      MERGED_CELL = "MERGED_CELL"

      # No documentation available.
      #
      TITLE = "TITLE"

      # No documentation available.
      #
      QUERY = "QUERY"

      # No documentation available.
      #
      QUERY_RESULT = "QUERY_RESULT"
    end

    # <p>The bounding box around the detected page, text, key-value pair, table, table cell, or
    #          selection element on a document page. The <code>left</code> (x-coordinate) and
    #             <code>top</code> (y-coordinate) are coordinates that represent the top and left sides of
    #          the bounding box. Note that the upper-left corner of the image is the origin (0,0). </p>
    #          <p>The <code>top</code> and <code>left</code> values returned are ratios of the overall
    #          document page size. For example, if the input image is 700 x 200 pixels, and the top-left
    #          coordinate of the bounding box is 350 x 50 pixels, the API returns a <code>left</code>
    #          value of 0.5 (350/700) and a <code>top</code> value of 0.25 (50/200).</p>
    #          <p>The <code>width</code> and <code>height</code> values represent the dimensions of the
    #          bounding box as a ratio of the overall document page dimension. For example, if the
    #          document page size is 700 x 200 pixels, and the bounding box width is 70 pixels, the width
    #          returned is 0.1. </p>
    #
    # @!attribute width
    #   <p>The width of the bounding box as a ratio of the overall document page
    #            width.</p>
    #
    #   @return [Float]
    #
    # @!attribute height
    #   <p>The height of the bounding box as a ratio of the overall document page
    #            height.</p>
    #
    #   @return [Float]
    #
    # @!attribute left
    #   <p>The left coordinate of the bounding box as a ratio of overall document page
    #            width.</p>
    #
    #   @return [Float]
    #
    # @!attribute top
    #   <p>The top coordinate of the bounding box as a ratio of overall document page
    #            height.</p>
    #
    #   @return [Float]
    #
    BoundingBox = ::Struct.new(
      :width,
      :height,
      :left,
      :top,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.width ||= 0
        self.height ||= 0
        self.left ||= 0
        self.top ||= 0
      end
    end

    # Includes enum constants for ContentClassifier
    #
    module ContentClassifier
      # No documentation available.
      #
      FREE_OF_PERSONALLY_IDENTIFIABLE_INFORMATION = "FreeOfPersonallyIdentifiableInformation"

      # No documentation available.
      #
      FREE_OF_ADULT_CONTENT = "FreeOfAdultContent"
    end

    # @!attribute document
    #   <p>The input document as base64-encoded bytes or an Amazon S3 object. If you use the AWS CLI
    #            to call Amazon Textract operations, you can't pass image bytes. The document must be an image
    #         in JPEG or PNG format.</p>
    #            <p>If you're using an AWS SDK to call Amazon Textract, you might not need to base64-encode
    #            image bytes that are passed using the <code>Bytes</code> field. </p>
    #
    #   @return [Document]
    #
    DetectDocumentTextInput = ::Struct.new(
      :document,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute document_metadata
    #   <p>Metadata about the document. It contains the number of pages that are detected in the
    #            document.</p>
    #
    #   @return [DocumentMetadata]
    #
    # @!attribute blocks
    #   <p>An array of <code>Block</code> objects that contain the text that's detected in the
    #            document.</p>
    #
    #   @return [Array<Block>]
    #
    # @!attribute detect_document_text_model_version
    #   <p></p>
    #
    #   @return [String]
    #
    DetectDocumentTextOutput = ::Struct.new(
      :document_metadata,
      :blocks,
      :detect_document_text_model_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The input document, either as bytes or as an S3 object.</p>
    #          <p>You pass image bytes to an Amazon Textract API operation by using the <code>Bytes</code>
    #          property. For example, you would use the <code>Bytes</code> property to pass a document
    #          loaded from a local file system. Image bytes passed by using the <code>Bytes</code>
    #          property must be base64 encoded. Your code might not need to encode document file bytes if
    #          you're using an AWS SDK to call Amazon Textract API operations. </p>
    #          <p>You pass images stored in an S3 bucket to an Amazon Textract API operation by using the
    #             <code>S3Object</code> property. Documents stored in an S3 bucket don't need to be base64
    #          encoded.</p>
    #          <p>The AWS Region for the S3 bucket that contains the S3 object must match the AWS
    #          Region that you use for Amazon Textract operations.</p>
    #          <p>If you use the AWS CLI to call Amazon Textract operations, passing image bytes using
    #          the Bytes property isn't supported. You must first upload the document to an Amazon S3
    #          bucket, and then call the operation using the S3Object property.</p>
    #
    #          <p>For Amazon Textract to process an S3 object, the user must have permission
    #          to access the S3 object. </p>
    #
    # @!attribute bytes
    #   <p>A blob of base64-encoded document bytes. The maximum size of a document that's provided
    #            in a blob of bytes is 5 MB. The document bytes must be in PNG or JPEG format.</p>
    #            <p>If you're using an AWS SDK to call Amazon Textract, you might not need to base64-encode
    #            image bytes passed using the <code>Bytes</code> field. </p>
    #
    #   @return [String]
    #
    # @!attribute s3_object
    #   <p>Identifies an S3 object as the document source. The maximum size of a document that's
    #            stored in an S3 bucket is 5 MB.</p>
    #
    #   @return [S3Object]
    #
    Document = ::Struct.new(
      :bytes,
      :s3_object,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The Amazon S3 bucket that contains the document to be processed. It's used by asynchronous
    #          operations such as <a>StartDocumentTextDetection</a>.</p>
    #          <p>The input document can be an image file in JPEG or PNG format. It can also be a file in
    #          PDF format.</p>
    #
    # @!attribute s3_object
    #   <p>The Amazon S3 bucket that contains the input document.</p>
    #
    #   @return [S3Object]
    #
    DocumentLocation = ::Struct.new(
      :s3_object,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the input document.</p>
    #
    # @!attribute pages
    #   <p>The number of pages that are detected in the document.</p>
    #
    #   @return [Integer]
    #
    DocumentMetadata = ::Struct.new(
      :pages,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The document can't be processed because it's too large. The maximum document size for
    #          synchronous operations 10 MB. The maximum document size for asynchronous operations is 500
    #          MB for PDF files.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute code
    #
    #   @return [String]
    #
    DocumentTooLargeException = ::Struct.new(
      :message,
      :code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EntityType
    #
    module EntityType
      # No documentation available.
      #
      KEY = "KEY"

      # No documentation available.
      #
      VALUE = "VALUE"

      # No documentation available.
      #
      COLUMN_HEADER = "COLUMN_HEADER"
    end

    # <p>An object used to store information about the Value or Label detected by Amazon Textract.</p>
    #
    # @!attribute text
    #   <p>The word or line of text recognized by Amazon Textract</p>
    #
    #   @return [String]
    #
    # @!attribute geometry
    #   <p>Information about where the following items are located on a document page: detected
    #            page, text, key-value pairs, tables, table cells, and selection elements.</p>
    #
    #   @return [Geometry]
    #
    # @!attribute confidence
    #   <p>The confidence in detection, as a percentage</p>
    #
    #   @return [Float]
    #
    ExpenseDetection = ::Struct.new(
      :text,
      :geometry,
      :confidence,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The structure holding all the information returned by AnalyzeExpense</p>
    #
    # @!attribute expense_index
    #   <p>Denotes which invoice or receipt in the document the information is coming from.
    #         First document will be 1, the second 2, and so on.</p>
    #
    #   @return [Integer]
    #
    # @!attribute summary_fields
    #   <p>Any information found outside of a table by Amazon Textract.</p>
    #
    #   @return [Array<ExpenseField>]
    #
    # @!attribute line_item_groups
    #   <p>Information detected on each table of a document, seperated into <code>LineItems</code>.</p>
    #
    #   @return [Array<LineItemGroup>]
    #
    ExpenseDocument = ::Struct.new(
      :expense_index,
      :summary_fields,
      :line_item_groups,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Breakdown of detected information, seperated into
    #          the catagories Type, LabelDetection, and ValueDetection</p>
    #
    # @!attribute type
    #   <p>The implied label of a detected element. Present alongside LabelDetection for explicit elements.</p>
    #
    #   @return [ExpenseType]
    #
    # @!attribute label_detection
    #   <p>The explicitly stated label of a detected element.</p>
    #
    #   @return [ExpenseDetection]
    #
    # @!attribute value_detection
    #   <p>The value of a detected element. Present in explicit and implicit elements.</p>
    #
    #   @return [ExpenseDetection]
    #
    # @!attribute page_number
    #   <p>The page number the value was detected on.</p>
    #
    #   @return [Integer]
    #
    ExpenseField = ::Struct.new(
      :type,
      :label_detection,
      :value_detection,
      :page_number,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object used to store information about the Type detected by Amazon Textract.</p>
    #
    # @!attribute text
    #   <p>The word or line of text detected by Amazon Textract.</p>
    #
    #   @return [String]
    #
    # @!attribute confidence
    #   <p>The confidence of accuracy, as a percentage.</p>
    #
    #   @return [Float]
    #
    ExpenseType = ::Struct.new(
      :text,
      :confidence,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FeatureType
    #
    module FeatureType
      # No documentation available.
      #
      TABLES = "TABLES"

      # No documentation available.
      #
      FORMS = "FORMS"

      # No documentation available.
      #
      QUERIES = "QUERIES"
    end

    # <p>Information about where the following items are located on a document page: detected
    #          page, text, key-value pairs, tables, table cells, and selection elements.</p>
    #
    # @!attribute bounding_box
    #   <p>An axis-aligned coarse representation of the location of the recognized item on the
    #            document page.</p>
    #
    #   @return [BoundingBox]
    #
    # @!attribute polygon
    #   <p>Within the bounding box, a fine-grained polygon around the recognized item.</p>
    #
    #   @return [Array<Point>]
    #
    Geometry = ::Struct.new(
      :bounding_box,
      :polygon,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>A unique identifier for the text-detection job. The <code>JobId</code> is returned from
    #            <code>StartDocumentAnalysis</code>. A <code>JobId</code> value is only valid for 7 days.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per paginated call. The largest value that you
    #            can specify is 1,000. If you specify a value greater than 1,000, a maximum of 1,000 results
    #            is returned. The default value is 1,000.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>If the previous response was incomplete (because there are more blocks to retrieve), Amazon Textract returns a pagination
    #            token in the response. You can use this pagination token to retrieve the next set of blocks.</p>
    #
    #   @return [String]
    #
    GetDocumentAnalysisInput = ::Struct.new(
      :job_id,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute document_metadata
    #   <p>Information about a document that Amazon Textract processed. <code>DocumentMetadata</code> is
    #            returned in every page of paginated responses from an Amazon Textract video operation.</p>
    #
    #   @return [DocumentMetadata]
    #
    # @!attribute job_status
    #   <p>The current status of the text detection job.</p>
    #
    #   Enum, one of: ["IN_PROGRESS", "SUCCEEDED", "FAILED", "PARTIAL_SUCCESS"]
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>If the response is truncated, Amazon Textract returns this token. You can use this token in
    #            the subsequent request to retrieve the next set of text detection results.</p>
    #
    #   @return [String]
    #
    # @!attribute blocks
    #   <p>The results of the text-analysis operation.</p>
    #
    #   @return [Array<Block>]
    #
    # @!attribute warnings
    #   <p>A list of warnings that occurred during the document-analysis operation.</p>
    #
    #   @return [Array<Warning>]
    #
    # @!attribute status_message
    #   <p>Returns if the detection job could not be completed. Contains explanation for what error occured.</p>
    #
    #   @return [String]
    #
    # @!attribute analyze_document_model_version
    #   <p></p>
    #
    #   @return [String]
    #
    GetDocumentAnalysisOutput = ::Struct.new(
      :document_metadata,
      :job_status,
      :next_token,
      :blocks,
      :warnings,
      :status_message,
      :analyze_document_model_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>A unique identifier for the text detection job. The <code>JobId</code> is returned from
    #            <code>StartDocumentTextDetection</code>. A <code>JobId</code> value is only valid for 7 days.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per paginated call. The largest value you can
    #            specify is 1,000. If you specify a value greater than 1,000, a maximum of 1,000 results is
    #            returned. The default value is 1,000.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>If the previous response was incomplete (because there are more blocks to retrieve), Amazon Textract returns a pagination
    #            token in the response. You can use this pagination token to retrieve the next set of blocks.</p>
    #
    #   @return [String]
    #
    GetDocumentTextDetectionInput = ::Struct.new(
      :job_id,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute document_metadata
    #   <p>Information about a document that Amazon Textract processed. <code>DocumentMetadata</code> is
    #            returned in every page of paginated responses from an Amazon Textract video operation.</p>
    #
    #   @return [DocumentMetadata]
    #
    # @!attribute job_status
    #   <p>The current status of the text detection job.</p>
    #
    #   Enum, one of: ["IN_PROGRESS", "SUCCEEDED", "FAILED", "PARTIAL_SUCCESS"]
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>If the response is truncated, Amazon Textract returns this token. You can use this token in
    #            the subsequent request to retrieve the next set of text-detection results.</p>
    #
    #   @return [String]
    #
    # @!attribute blocks
    #   <p>The results of the text-detection operation.</p>
    #
    #   @return [Array<Block>]
    #
    # @!attribute warnings
    #   <p>A list of warnings that occurred during the text-detection operation for the
    #            document.</p>
    #
    #   @return [Array<Warning>]
    #
    # @!attribute status_message
    #   <p>Returns if the detection job could not be completed. Contains explanation for what error occured. </p>
    #
    #   @return [String]
    #
    # @!attribute detect_document_text_model_version
    #   <p></p>
    #
    #   @return [String]
    #
    GetDocumentTextDetectionOutput = ::Struct.new(
      :document_metadata,
      :job_status,
      :next_token,
      :blocks,
      :warnings,
      :status_message,
      :detect_document_text_model_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>A unique identifier for the text detection job. The <code>JobId</code> is returned from
    #       <code>StartExpenseAnalysis</code>. A <code>JobId</code> value is only valid for 7 days.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per paginated call. The largest value you can
    #      specify is 20. If you specify a value greater than 20, a maximum of 20 results is
    #      returned. The default value is 20.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>If the previous response was incomplete (because there are more blocks to retrieve), Amazon Textract returns a pagination
    #      token in the response. You can use this pagination token to retrieve the next set of blocks.</p>
    #
    #   @return [String]
    #
    GetExpenseAnalysisInput = ::Struct.new(
      :job_id,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute document_metadata
    #   <p>Information about a document that Amazon Textract processed. <code>DocumentMetadata</code> is
    #      returned in every page of paginated responses from an Amazon Textract operation.</p>
    #
    #   @return [DocumentMetadata]
    #
    # @!attribute job_status
    #   <p>The current status of the text detection job.</p>
    #
    #   Enum, one of: ["IN_PROGRESS", "SUCCEEDED", "FAILED", "PARTIAL_SUCCESS"]
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>If the response is truncated, Amazon Textract returns this token. You can use this token in
    #      the subsequent request to retrieve the next set of text-detection results.</p>
    #
    #   @return [String]
    #
    # @!attribute expense_documents
    #   <p>The expenses detected by Amazon Textract.</p>
    #
    #   @return [Array<ExpenseDocument>]
    #
    # @!attribute warnings
    #   <p>A list of warnings that occurred during the text-detection operation for the
    #      document.</p>
    #
    #   @return [Array<Warning>]
    #
    # @!attribute status_message
    #   <p>Returns if the detection job could not be completed. Contains explanation for what error occured. </p>
    #
    #   @return [String]
    #
    # @!attribute analyze_expense_model_version
    #   <p>The current model version of AnalyzeExpense.</p>
    #
    #   @return [String]
    #
    GetExpenseAnalysisOutput = ::Struct.new(
      :document_metadata,
      :job_status,
      :next_token,
      :expense_documents,
      :warnings,
      :status_message,
      :analyze_expense_model_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Shows the results of the human in the loop evaluation. If there is no HumanLoopArn, the
    #          input did not trigger human review.</p>
    #
    # @!attribute human_loop_arn
    #   <p>The Amazon Resource Name (ARN) of the HumanLoop created.</p>
    #
    #   @return [String]
    #
    # @!attribute human_loop_activation_reasons
    #   <p>Shows if and why human review was needed.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute human_loop_activation_conditions_evaluation_results
    #   <p>Shows the result of condition evaluations, including those conditions which activated a
    #            human review.</p>
    #
    #   @return [String]
    #
    HumanLoopActivationOutput = ::Struct.new(
      :human_loop_arn,
      :human_loop_activation_reasons,
      :human_loop_activation_conditions_evaluation_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Sets up the human review workflow the document will be sent to if one of the conditions
    #          is met. You can also set certain attributes of the image before review. </p>
    #
    # @!attribute human_loop_name
    #   <p>The name of the human workflow used for this image. This should be kept unique within a
    #            region.</p>
    #
    #   @return [String]
    #
    # @!attribute flow_definition_arn
    #   <p>The Amazon Resource Name (ARN) of the flow definition.</p>
    #
    #   @return [String]
    #
    # @!attribute data_attributes
    #   <p>Sets attributes of the input data.</p>
    #
    #   @return [HumanLoopDataAttributes]
    #
    HumanLoopConfig = ::Struct.new(
      :human_loop_name,
      :flow_definition_arn,
      :data_attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Allows you to set attributes of the image. Currently, you can declare an image as free
    #          of personally identifiable information and adult content. </p>
    #
    # @!attribute content_classifiers
    #   <p>Sets whether the input image is free of personally identifiable information or adult
    #            content.</p>
    #
    #   @return [Array<String>]
    #
    HumanLoopDataAttributes = ::Struct.new(
      :content_classifiers,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates you have exceeded the maximum number of active human in the loop workflows available</p>
    #
    # @!attribute resource_type
    #   <p>The resource type.</p>
    #
    #   @return [String]
    #
    # @!attribute quota_code
    #   <p>The quota code.</p>
    #
    #   @return [String]
    #
    # @!attribute service_code
    #   <p>The service code.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute code
    #
    #   @return [String]
    #
    HumanLoopQuotaExceededException = ::Struct.new(
      :resource_type,
      :quota_code,
      :service_code,
      :message,
      :code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A <code>ClientRequestToken</code> input parameter was reused with an operation, but at
    #          least one of the other input parameters is different from the previous call to the
    #          operation. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute code
    #
    #   @return [String]
    #
    IdempotentParameterMismatchException = ::Struct.new(
      :message,
      :code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The structure that lists each document processed in an AnalyzeID operation.</p>
    #
    # @!attribute document_index
    #   <p>Denotes the placement of a document in the IdentityDocument list. The first document
    #            is marked 1, the second 2 and so on.</p>
    #
    #   @return [Integer]
    #
    # @!attribute identity_document_fields
    #   <p>The structure used to record information extracted from identity documents.
    #            Contains both normalized field and value of the extracted text.</p>
    #
    #   @return [Array<IdentityDocumentField>]
    #
    IdentityDocument = ::Struct.new(
      :document_index,
      :identity_document_fields,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Structure containing both the normalized type of the extracted information
    #          and the text associated with it. These are extracted as Type and Value respectively.</p>
    #
    # @!attribute type
    #   <p>Used to contain the information detected by an AnalyzeID operation.</p>
    #
    #   @return [AnalyzeIDDetections]
    #
    # @!attribute value_detection
    #   <p>Used to contain the information detected by an AnalyzeID operation.</p>
    #
    #   @return [AnalyzeIDDetections]
    #
    IdentityDocumentField = ::Struct.new(
      :type,
      :value_detection,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Amazon Textract experienced a service issue. Try your call again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute code
    #
    #   @return [String]
    #
    InternalServerError = ::Struct.new(
      :message,
      :code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An invalid job identifier was passed to <a>GetDocumentAnalysis</a> or to
    #       <a>GetDocumentAnalysis</a>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute code
    #
    #   @return [String]
    #
    InvalidJobIdException = ::Struct.new(
      :message,
      :code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Indicates you do not have decrypt permissions with the KMS key entered, or the KMS key
    #         was entered incorrectly. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute code
    #
    #   @return [String]
    #
    InvalidKMSKeyException = ::Struct.new(
      :message,
      :code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An input parameter violated a constraint. For example, in synchronous operations,
    #        an <code>InvalidParameterException</code> exception occurs
    #       when neither of the <code>S3Object</code> or <code>Bytes</code> values are supplied in the <code>Document</code>
    #       request parameter.
    #        Validate your parameter before calling the API operation again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute code
    #
    #   @return [String]
    #
    InvalidParameterException = ::Struct.new(
      :message,
      :code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Amazon Textract is unable to access the S3 object that's specified in the request.
    #          for more information, <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html">Configure Access to Amazon S3</a>
    #          For troubleshooting information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/troubleshooting.html">Troubleshooting Amazon S3</a>
    #          </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute code
    #
    #   @return [String]
    #
    InvalidS3ObjectException = ::Struct.new(
      :message,
      :code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for JobStatus
    #
    module JobStatus
      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"

      # No documentation available.
      #
      SUCCEEDED = "SUCCEEDED"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      PARTIAL_SUCCESS = "PARTIAL_SUCCESS"
    end

    # <p>An Amazon Textract service limit was exceeded. For example, if you start too many
    #          asynchronous jobs concurrently, calls to start operations
    #             (<code>StartDocumentTextDetection</code>, for example) raise a LimitExceededException
    #          exception (HTTP status code: 400) until the number of concurrently running jobs is below
    #          the Amazon Textract service limit. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute code
    #
    #   @return [String]
    #
    LimitExceededException = ::Struct.new(
      :message,
      :code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure that holds information about the different lines found in a document's tables.</p>
    #
    # @!attribute line_item_expense_fields
    #   <p>ExpenseFields used to show information from detected lines on a table.</p>
    #
    #   @return [Array<ExpenseField>]
    #
    LineItemFields = ::Struct.new(
      :line_item_expense_fields,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A grouping of tables which contain LineItems, with each table identified by the table's <code>LineItemGroupIndex</code>.</p>
    #
    # @!attribute line_item_group_index
    #   <p>The number used to identify a specific table in a document. The first table encountered will have a LineItemGroupIndex of 1, the second 2, etc.</p>
    #
    #   @return [Integer]
    #
    # @!attribute line_items
    #   <p>The breakdown of information on a particular line of a table. </p>
    #
    #   @return [Array<LineItemFields>]
    #
    LineItemGroup = ::Struct.new(
      :line_item_group_index,
      :line_items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information relating to dates in a document, including the type
    #          of value, and the value.</p>
    #
    # @!attribute value
    #   <p>The value of the date, written as Year-Month-DayTHour:Minute:Second.</p>
    #
    #   @return [String]
    #
    # @!attribute value_type
    #   <p>The normalized type of the value detected. In this case, DATE.</p>
    #
    #   Enum, one of: ["DATE"]
    #
    #   @return [String]
    #
    NormalizedValue = ::Struct.new(
      :value,
      :value_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The Amazon Simple Notification Service (Amazon SNS) topic to which Amazon Textract publishes the completion status of
    #          an asynchronous document operation, such as <a>StartDocumentTextDetection</a>. </p>
    #
    # @!attribute sns_topic_arn
    #   <p>The Amazon SNS topic that Amazon Textract posts the completion status to.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that gives Amazon Textract publishing permissions to the Amazon SNS topic. </p>
    #
    #   @return [String]
    #
    NotificationChannel = ::Struct.new(
      :sns_topic_arn,
      :role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Sets whether or not your output will go to a user created bucket. Used to set the name
    #          of the bucket, and the prefix on the output file.</p>
    #          <p>
    #             <code>OutputConfig</code> is an optional parameter which lets you adjust where your output will be placed.
    #          By default, Amazon Textract will store the results internally and can only be accessed by the Get
    #          API operations. With OutputConfig enabled, you can set the name of the bucket the output will be
    #          sent to and the file prefix of the results where you can download your results. Additionally, you
    #          can set the <code>KMSKeyID</code> parameter to a customer master key (CMK) to encrypt your output. Without this
    #          parameter set Amazon Textract will encrypt server-side using the AWS managed CMK for Amazon S3.</p>
    #          <p>Decryption of Customer Content is necessary for processing of the documents by Amazon Textract. If your account
    #          is opted out under an AI services opt out policy then all unencrypted Customer Content is immediately and permanently deleted after
    #          the Customer Content has been processed by the service. No copy of of the output is retained by Amazon Textract. For information about how to opt out, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html"> Managing AI services opt-out policy. </a>
    #          </p>
    #          <p>For more information on data privacy,
    #          see the <a href="https://aws.amazon.com/compliance/data-privacy-faq/">Data Privacy
    #             FAQ</a>.</p>
    #
    # @!attribute s3_bucket
    #   <p>The name of the bucket your output will go to.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_prefix
    #   <p>The prefix of the object key that the output will be saved to. When not enabled, the
    #            prefix will be “textract_output".</p>
    #
    #   @return [String]
    #
    OutputConfig = ::Struct.new(
      :s3_bucket,
      :s3_prefix,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The X and Y coordinates of a point on a document page. The X and Y
    #          values that are returned are ratios of the overall document page size. For example, if the
    #          input document is 700 x 200 and the operation returns X=0.5 and Y=0.25, then the point is
    #          at the (350,50) pixel coordinate on the document page.</p>
    #
    #          <p>An array of <code>Point</code> objects, <code>Polygon</code>, is returned
    #          by <a>DetectDocumentText</a>. <code>Polygon</code> represents a fine-grained
    #          polygon around detected text. For more information, see Geometry in the Amazon Textract
    #          Developer Guide. </p>
    #
    # @!attribute x
    #   <p>The value of the X coordinate for a point on a <code>Polygon</code>.</p>
    #
    #   @return [Float]
    #
    # @!attribute y
    #   <p>The value of the Y coordinate for a point on a <code>Polygon</code>.</p>
    #
    #   @return [Float]
    #
    Point = ::Struct.new(
      :x,
      :y,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.x ||= 0
        self.y ||= 0
      end
    end

    # <p>The number of requests exceeded your throughput limit. If you want to increase this limit,
    #          contact Amazon Textract.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute code
    #
    #   @return [String]
    #
    ProvisionedThroughputExceededException = ::Struct.new(
      :message,
      :code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute queries
    #   <p></p>
    #
    #   @return [Array<Query>]
    #
    QueriesConfig = ::Struct.new(
      :queries,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Each query contains the question you want to ask in the Text and the alias you want to associate.</p>
    #
    # @!attribute text
    #   <p>Question that Amazon Textract will apply to the document. An example would be "What is the customer's SSN?"</p>
    #
    #   @return [String]
    #
    # @!attribute alias
    #   <p>Alias attached to the query, for ease of location.</p>
    #
    #   @return [String]
    #
    # @!attribute pages
    #   <p>List of pages associated with the query. The following is a list of rules for using this parameter.</p>
    #            <ul>
    #               <li>
    #                  <p>If a page is not specified, it is set to <code>["1"]</code> by default.</p>
    #               </li>
    #               <li>
    #                  <p>The following characters are allowed in the parameter's string:
    #                  <code>0 1 2 3 4 5 6 7 8 9 - *</code>. No whitespace is allowed.</p>
    #               </li>
    #               <li>
    #                  <p>When using <code>*</code> to indicate all pages, it must be the only element
    #                  in the string.</p>
    #               </li>
    #               <li>
    #                  <p>You can use page intervals, such as <code>[“1-3”, “1-1”, “4-*”]</code>. Where <code>*</code> indicates last page of
    #                  document.</p>
    #               </li>
    #               <li>
    #                  <p>Specified pages must be greater than 0 and less than or equal to the number of pages in the document.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<String>]
    #
    Query = ::Struct.new(
      :text,
      :alias,
      :pages,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about how blocks are related to each other. A <code>Block</code> object
    #          contains 0 or more <code>Relation</code> objects in a list, <code>Relationships</code>. For
    #          more information, see <a>Block</a>.</p>
    #          <p>The <code>Type</code> element provides the type of the relationship for all blocks in
    #          the <code>IDs</code> array. </p>
    #
    # @!attribute type
    #   <p>The type of relationship that the blocks in the IDs array have with the current block.
    #            The relationship can be <code>VALUE</code> or <code>CHILD</code>. A relationship of type
    #            VALUE is a list that contains the ID of the VALUE block that's associated with the KEY of a
    #            key-value pair. A relationship of type CHILD is a list of IDs that identify WORD blocks in
    #            the case of lines Cell blocks in the case of Tables, and WORD blocks in the case of
    #            Selection Elements.</p>
    #
    #   Enum, one of: ["VALUE", "CHILD", "COMPLEX_FEATURES", "MERGED_CELL", "TITLE", "ANSWER"]
    #
    #   @return [String]
    #
    # @!attribute ids
    #   <p>An
    #            array of IDs for related blocks. You can get the type of the relationship from the
    #               <code>Type</code> element.</p>
    #
    #   @return [Array<String>]
    #
    Relationship = ::Struct.new(
      :type,
      :ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RelationshipType
    #
    module RelationshipType
      # No documentation available.
      #
      VALUE = "VALUE"

      # No documentation available.
      #
      CHILD = "CHILD"

      # No documentation available.
      #
      COMPLEX_FEATURES = "COMPLEX_FEATURES"

      # No documentation available.
      #
      MERGED_CELL = "MERGED_CELL"

      # No documentation available.
      #
      TITLE = "TITLE"

      # No documentation available.
      #
      ANSWER = "ANSWER"
    end

    # <p>The S3 bucket name and file name that identifies the document.</p>
    #          <p>The AWS Region for the S3 bucket that contains the document must match the Region that
    #          you use for Amazon Textract operations.</p>
    #
    #          <p>For Amazon Textract to process a file in an S3 bucket, the user must have
    #          permission to access the S3 bucket and file.
    #
    #       </p>
    #
    # @!attribute bucket
    #   <p>The name of the S3 bucket. Note that the   character is not valid in the file
    #            name.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The file name of the input document. Synchronous operations can use image files that are
    #            in JPEG or PNG format. Asynchronous operations also support PDF and TIFF format files.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>If the bucket has versioning enabled, you can specify the object version. </p>
    #
    #   @return [String]
    #
    S3Object = ::Struct.new(
      :bucket,
      :name,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SelectionStatus
    #
    module SelectionStatus
      # No documentation available.
      #
      SELECTED = "SELECTED"

      # No documentation available.
      #
      NOT_SELECTED = "NOT_SELECTED"
    end

    # @!attribute document_location
    #   <p>The location of the document to be processed.</p>
    #
    #   @return [DocumentLocation]
    #
    # @!attribute feature_types
    #   <p>A list of the types of analysis to perform. Add TABLES to the list to return information
    #            about the tables that are detected in the input document. Add FORMS to return detected
    #            form data. To perform both types of analysis, add TABLES
    #            and FORMS to <code>FeatureTypes</code>. All lines and words detected in the document are
    #            included in the response (including text that isn't related to the value of
    #               <code>FeatureTypes</code>). </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute client_request_token
    #   <p>The idempotent token that you use to identify the start request. If you use the same
    #            token with multiple <code>StartDocumentAnalysis</code> requests, the same
    #               <code>JobId</code> is returned. Use <code>ClientRequestToken</code> to prevent the same
    #            job from being accidentally started more than once. For more information, see
    #            <a href="https://docs.aws.amazon.com/textract/latest/dg/api-async.html">Calling Amazon Textract Asynchronous Operations</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute job_tag
    #   <p>An identifier that you specify that's included in the completion notification published
    #            to the Amazon SNS topic. For example, you can use <code>JobTag</code> to identify the type of
    #            document that the completion notification corresponds to (such as a tax form or a
    #            receipt).</p>
    #
    #   @return [String]
    #
    # @!attribute notification_channel
    #   <p>The Amazon SNS topic ARN that you want Amazon Textract to publish the completion status of the
    #            operation to. </p>
    #
    #   @return [NotificationChannel]
    #
    # @!attribute output_config
    #   <p>Sets if the output will go to a customer defined bucket. By default, Amazon Textract will save
    #            the results internally to be accessed by the GetDocumentAnalysis operation.</p>
    #
    #   @return [OutputConfig]
    #
    # @!attribute kms_key_id
    #   <p>The KMS key used to encrypt the inference results. This can be
    #            in either Key ID or Key Alias format. When a KMS key is provided, the
    #            KMS key will be used for server-side encryption of the objects in the
    #            customer bucket. When this parameter is not enabled, the result will
    #            be encrypted server side,using SSE-S3.</p>
    #
    #   @return [String]
    #
    # @!attribute queries_config
    #   <p></p>
    #
    #   @return [QueriesConfig]
    #
    StartDocumentAnalysisInput = ::Struct.new(
      :document_location,
      :feature_types,
      :client_request_token,
      :job_tag,
      :notification_channel,
      :output_config,
      :kms_key_id,
      :queries_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The identifier for the document text detection job. Use <code>JobId</code> to identify
    #            the job in a subsequent call to <code>GetDocumentAnalysis</code>. A <code>JobId</code> value
    #            is only valid for 7 days.</p>
    #
    #   @return [String]
    #
    StartDocumentAnalysisOutput = ::Struct.new(
      :job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute document_location
    #   <p>The location of the document to be processed.</p>
    #
    #   @return [DocumentLocation]
    #
    # @!attribute client_request_token
    #   <p>The idempotent token that's used to identify the start request. If you use the same
    #            token with multiple <code>StartDocumentTextDetection</code> requests, the same
    #               <code>JobId</code> is returned. Use <code>ClientRequestToken</code> to prevent the same
    #            job from being accidentally started more than once. For more information, see
    #            <a href="https://docs.aws.amazon.com/textract/latest/dg/api-async.html">Calling Amazon Textract Asynchronous Operations</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute job_tag
    #   <p>An identifier that you specify that's included in the completion notification published
    #            to the Amazon SNS topic. For example, you can use <code>JobTag</code> to identify the type of
    #            document that the completion notification corresponds to (such as a tax form or a
    #            receipt).</p>
    #
    #   @return [String]
    #
    # @!attribute notification_channel
    #   <p>The Amazon SNS topic ARN that you want Amazon Textract to publish the completion status of the
    #            operation to. </p>
    #
    #   @return [NotificationChannel]
    #
    # @!attribute output_config
    #   <p>Sets if the output will go to a customer defined bucket. By default Amazon Textract will
    #            save the results internally to be accessed with the GetDocumentTextDetection operation.</p>
    #
    #   @return [OutputConfig]
    #
    # @!attribute kms_key_id
    #   <p>The KMS key used to encrypt the inference results. This can be
    #            in either Key ID or Key Alias format. When a KMS key is provided, the
    #            KMS key will be used for server-side encryption of the objects in the
    #            customer bucket. When this parameter is not enabled, the result will
    #            be encrypted server side,using SSE-S3.</p>
    #
    #   @return [String]
    #
    StartDocumentTextDetectionInput = ::Struct.new(
      :document_location,
      :client_request_token,
      :job_tag,
      :notification_channel,
      :output_config,
      :kms_key_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The identifier of the text detection job for the document. Use <code>JobId</code> to
    #            identify the job in a subsequent call to <code>GetDocumentTextDetection</code>.
    #            A <code>JobId</code> value is only valid for 7 days.</p>
    #
    #   @return [String]
    #
    StartDocumentTextDetectionOutput = ::Struct.new(
      :job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute document_location
    #   <p>The location of the document to be processed.</p>
    #
    #   @return [DocumentLocation]
    #
    # @!attribute client_request_token
    #   <p>The idempotent token that's used to identify the start request. If you use the same token with multiple <code>StartDocumentTextDetection</code> requests, the same <code>JobId</code> is returned.
    #      Use <code>ClientRequestToken</code> to prevent the same job from being accidentally started more than once.
    #      For more information, see <a href="https://docs.aws.amazon.com/textract/latest/dg/api-async.html">Calling Amazon Textract Asynchronous Operations</a>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute job_tag
    #   <p>An identifier you specify that's included in the completion notification published
    #      to the Amazon SNS topic. For example, you can use <code>JobTag</code> to identify the type of
    #      document that the completion notification corresponds to (such as a tax form or a
    #      receipt).</p>
    #
    #   @return [String]
    #
    # @!attribute notification_channel
    #   <p>The Amazon SNS topic ARN that you want Amazon Textract to publish the completion status of the
    #      operation to. </p>
    #
    #   @return [NotificationChannel]
    #
    # @!attribute output_config
    #   <p>Sets if the output will go to a customer defined bucket. By default, Amazon Textract will
    #      save the results internally to be accessed by the <code>GetExpenseAnalysis</code>
    #      operation.</p>
    #
    #   @return [OutputConfig]
    #
    # @!attribute kms_key_id
    #   <p>The KMS key used to encrypt the inference results. This can be
    #      in either Key ID or Key Alias format. When a KMS key is provided, the
    #      KMS key will be used for server-side encryption of the objects in the
    #      customer bucket. When this parameter is not enabled, the result will
    #      be encrypted server side,using SSE-S3.</p>
    #
    #   @return [String]
    #
    StartExpenseAnalysisInput = ::Struct.new(
      :document_location,
      :client_request_token,
      :job_tag,
      :notification_channel,
      :output_config,
      :kms_key_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>A unique identifier for the text detection job. The <code>JobId</code> is returned from
    #       <code>StartExpenseAnalysis</code>. A <code>JobId</code> value is only valid for 7 days.</p>
    #
    #   @return [String]
    #
    StartExpenseAnalysisOutput = ::Struct.new(
      :job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TextType
    #
    module TextType
      # No documentation available.
      #
      HANDWRITING = "HANDWRITING"

      # No documentation available.
      #
      PRINTED = "PRINTED"
    end

    # <p>Amazon Textract is temporarily unable to process the request. Try your call again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute code
    #
    #   @return [String]
    #
    ThrottlingException = ::Struct.new(
      :message,
      :code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The format of the input document isn't supported. Documents for operations can be in
    #          PNG, JPEG, PDF, or TIFF format.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute code
    #
    #   @return [String]
    #
    UnsupportedDocumentException = ::Struct.new(
      :message,
      :code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ValueType
    #
    module ValueType
      # No documentation available.
      #
      DATE = "DATE"
    end

    # <p>A warning about an issue that occurred during asynchronous text analysis (<a>StartDocumentAnalysis</a>) or asynchronous document text detection (<a>StartDocumentTextDetection</a>). </p>
    #
    # @!attribute error_code
    #   <p>The error code for the warning.</p>
    #
    #   @return [String]
    #
    # @!attribute pages
    #   <p>A list of the pages that the warning applies to.</p>
    #
    #   @return [Array<Integer>]
    #
    Warning = ::Struct.new(
      :error_code,
      :pages,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
