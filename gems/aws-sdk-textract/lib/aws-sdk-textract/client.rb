# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::Textract
  # An API client for Textract
  # See {#initialize} for a full list of supported configuration options
  # <p>Amazon Textract detects and analyzes text in documents and converts it
  #          into machine-readable text. This is the API reference documentation for
  #          Amazon Textract.</p>
  #
  class Client
    include Hearth::ClientStubs

    @middleware = Hearth::MiddlewareBuilder.new

    def self.middleware
      @middleware
    end

    # @param [Config] config
    #   An instance of {Config}
    #
    def initialize(config = AWS::SDK::Textract::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Analyzes an input document for relationships between detected items.  </p>
    #          <p>The types of information returned are as follows: </p>
    #          <ul>
    #             <li>
    #                <p>Form data (key-value pairs). The related information is returned in two <a>Block</a> objects, each of type <code>KEY_VALUE_SET</code>: a KEY
    #                   <code>Block</code> object and a VALUE <code>Block</code> object. For example,
    #                   <i>Name: Ana Silva Carolina</i> contains a key and value.
    #                   <i>Name:</i> is the key. <i>Ana Silva Carolina</i> is
    #                the value.</p>
    #             </li>
    #             <li>
    #                <p>Table and table cell data. A TABLE <code>Block</code> object contains information about a detected table. A CELL
    #                <code>Block</code> object is returned for each cell in a table.</p>
    #             </li>
    #             <li>
    #                <p>Lines and words of text. A LINE <code>Block</code> object contains one or more WORD <code>Block</code> objects.
    #         All lines and words that are detected in the document are returned (including text that doesn't have a
    #                relationship with the value of <code>FeatureTypes</code>). </p>
    #             </li>
    #             <li>
    #                <p>Queries.A QUERIES_RESULT Block object contains the answer to the query, the alias associated and an ID that
    #             connect it to the query asked. This Block also contains a location and attached confidence score.</p>
    #             </li>
    #          </ul>
    #
    #          <p>Selection elements such as check boxes and option buttons (radio buttons) can be detected in form data and in tables.
    #          A SELECTION_ELEMENT <code>Block</code> object contains information about a selection element,
    #          including the selection status.</p>
    #
    #          <p>You can choose which type of analysis to perform by specifying the <code>FeatureTypes</code> list.
    #       </p>
    #          <p>The output is returned in a list of <code>Block</code> objects.</p>
    #          <p>
    #             <code>AnalyzeDocument</code> is a synchronous operation. To analyze documents
    #       asynchronously, use <a>StartDocumentAnalysis</a>.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/textract/latest/dg/how-it-works-analyzing.html">Document Text Analysis</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::AnalyzeDocumentInput}.
    #
    # @option params [Document] :document
    #   <p>The input document as base64-encoded bytes or an Amazon S3 object. If you use the AWS CLI
    #            to call Amazon Textract operations, you can't pass image bytes. The document must be an image
    #            in JPEG, PNG, PDF, or TIFF format.</p>
    #            <p>If you're using an AWS SDK to call Amazon Textract, you might not need to base64-encode
    #            image bytes that are passed using the <code>Bytes</code> field. </p>
    #
    # @option params [Array<String>] :feature_types
    #   <p>A list of the types of analysis to perform. Add TABLES to the list to return information
    #            about the tables that are detected in the input document. Add FORMS to return detected form data.
    #            To perform both types of analysis, add TABLES and FORMS to
    #               <code>FeatureTypes</code>. All lines and words detected in the document are included in
    #            the response (including text that isn't related to the value of <code>FeatureTypes</code>). </p>
    #
    # @option params [HumanLoopConfig] :human_loop_config
    #   <p>Sets the configuration for the human in the loop workflow for analyzing documents.</p>
    #
    # @option params [QueriesConfig] :queries_config
    #   <p>Contains Queries and the alias for those Queries, as determined by the input. </p>
    #
    # @return [Types::AnalyzeDocumentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.analyze_document(
    #     document: {
    #       bytes: 'Bytes',
    #       s3_object: {
    #         bucket: 'Bucket',
    #         name: 'Name',
    #         version: 'Version'
    #       }
    #     }, # required
    #     feature_types: [
    #       'TABLES' # accepts ["TABLES", "FORMS", "QUERIES"]
    #     ], # required
    #     human_loop_config: {
    #       human_loop_name: 'HumanLoopName', # required
    #       flow_definition_arn: 'FlowDefinitionArn', # required
    #       data_attributes: {
    #         content_classifiers: [
    #           'FreeOfPersonallyIdentifiableInformation' # accepts ["FreeOfPersonallyIdentifiableInformation", "FreeOfAdultContent"]
    #         ]
    #       }
    #     },
    #     queries_config: {
    #       queries: [
    #         {
    #           text: 'Text', # required
    #           alias: 'Alias',
    #           pages: [
    #             'member'
    #           ]
    #         }
    #       ] # required
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AnalyzeDocumentOutput
    #   resp.data.document_metadata #=> Types::DocumentMetadata
    #   resp.data.document_metadata.pages #=> Integer
    #   resp.data.blocks #=> Array<Block>
    #   resp.data.blocks[0] #=> Types::Block
    #   resp.data.blocks[0].block_type #=> String, one of ["KEY_VALUE_SET", "PAGE", "LINE", "WORD", "TABLE", "CELL", "SELECTION_ELEMENT", "MERGED_CELL", "TITLE", "QUERY", "QUERY_RESULT"]
    #   resp.data.blocks[0].confidence #=> Float
    #   resp.data.blocks[0].text #=> String
    #   resp.data.blocks[0].text_type #=> String, one of ["HANDWRITING", "PRINTED"]
    #   resp.data.blocks[0].row_index #=> Integer
    #   resp.data.blocks[0].column_index #=> Integer
    #   resp.data.blocks[0].row_span #=> Integer
    #   resp.data.blocks[0].column_span #=> Integer
    #   resp.data.blocks[0].geometry #=> Types::Geometry
    #   resp.data.blocks[0].geometry.bounding_box #=> Types::BoundingBox
    #   resp.data.blocks[0].geometry.bounding_box.width #=> Float
    #   resp.data.blocks[0].geometry.bounding_box.height #=> Float
    #   resp.data.blocks[0].geometry.bounding_box.left #=> Float
    #   resp.data.blocks[0].geometry.bounding_box.top #=> Float
    #   resp.data.blocks[0].geometry.polygon #=> Array<Point>
    #   resp.data.blocks[0].geometry.polygon[0] #=> Types::Point
    #   resp.data.blocks[0].geometry.polygon[0].x #=> Float
    #   resp.data.blocks[0].geometry.polygon[0].y #=> Float
    #   resp.data.blocks[0].id #=> String
    #   resp.data.blocks[0].relationships #=> Array<Relationship>
    #   resp.data.blocks[0].relationships[0] #=> Types::Relationship
    #   resp.data.blocks[0].relationships[0].type #=> String, one of ["VALUE", "CHILD", "COMPLEX_FEATURES", "MERGED_CELL", "TITLE", "ANSWER"]
    #   resp.data.blocks[0].relationships[0].ids #=> Array<String>
    #   resp.data.blocks[0].relationships[0].ids[0] #=> String
    #   resp.data.blocks[0].entity_types #=> Array<String>
    #   resp.data.blocks[0].entity_types[0] #=> String, one of ["KEY", "VALUE", "COLUMN_HEADER"]
    #   resp.data.blocks[0].selection_status #=> String, one of ["SELECTED", "NOT_SELECTED"]
    #   resp.data.blocks[0].page #=> Integer
    #   resp.data.blocks[0].query #=> Types::Query
    #   resp.data.blocks[0].query.text #=> String
    #   resp.data.blocks[0].query.alias #=> String
    #   resp.data.blocks[0].query.pages #=> Array<String>
    #   resp.data.blocks[0].query.pages[0] #=> String
    #   resp.data.human_loop_activation_output #=> Types::HumanLoopActivationOutput
    #   resp.data.human_loop_activation_output.human_loop_arn #=> String
    #   resp.data.human_loop_activation_output.human_loop_activation_reasons #=> Array<String>
    #   resp.data.human_loop_activation_output.human_loop_activation_reasons[0] #=> String
    #   resp.data.human_loop_activation_output.human_loop_activation_conditions_evaluation_results #=> String
    #   resp.data.analyze_document_model_version #=> String
    #
    def analyze_document(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AnalyzeDocumentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AnalyzeDocumentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AnalyzeDocument
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::HumanLoopQuotaExceededException, Errors::BadDocumentException, Errors::ThrottlingException, Errors::ProvisionedThroughputExceededException, Errors::DocumentTooLargeException, Errors::InvalidS3ObjectException, Errors::InvalidParameterException, Errors::UnsupportedDocumentException, Errors::InternalServerError]),
        data_parser: Parsers::AnalyzeDocument
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AnalyzeDocument,
        stubs: @stubs,
        params_class: Params::AnalyzeDocumentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :analyze_document
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             <code>AnalyzeExpense</code> synchronously analyzes an input document for financially related relationships between text.</p>
    #          <p>Information is returned as <code>ExpenseDocuments</code> and seperated as follows.</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>LineItemGroups</code>- A data set containing <code>LineItems</code> which
    #          store information about the lines of text, such as an item purchased and its price on a receipt.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>SummaryFields</code>- Contains all other information a receipt, such as header information
    #          or the vendors name.</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::AnalyzeExpenseInput}.
    #
    # @option params [Document] :document
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
    # @return [Types::AnalyzeExpenseOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.analyze_expense(
    #     document: {
    #       bytes: 'Bytes',
    #       s3_object: {
    #         bucket: 'Bucket',
    #         name: 'Name',
    #         version: 'Version'
    #       }
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AnalyzeExpenseOutput
    #   resp.data.document_metadata #=> Types::DocumentMetadata
    #   resp.data.document_metadata.pages #=> Integer
    #   resp.data.expense_documents #=> Array<ExpenseDocument>
    #   resp.data.expense_documents[0] #=> Types::ExpenseDocument
    #   resp.data.expense_documents[0].expense_index #=> Integer
    #   resp.data.expense_documents[0].summary_fields #=> Array<ExpenseField>
    #   resp.data.expense_documents[0].summary_fields[0] #=> Types::ExpenseField
    #   resp.data.expense_documents[0].summary_fields[0].type #=> Types::ExpenseType
    #   resp.data.expense_documents[0].summary_fields[0].type.text #=> String
    #   resp.data.expense_documents[0].summary_fields[0].type.confidence #=> Float
    #   resp.data.expense_documents[0].summary_fields[0].label_detection #=> Types::ExpenseDetection
    #   resp.data.expense_documents[0].summary_fields[0].label_detection.text #=> String
    #   resp.data.expense_documents[0].summary_fields[0].label_detection.geometry #=> Types::Geometry
    #   resp.data.expense_documents[0].summary_fields[0].label_detection.geometry.bounding_box #=> Types::BoundingBox
    #   resp.data.expense_documents[0].summary_fields[0].label_detection.geometry.bounding_box.width #=> Float
    #   resp.data.expense_documents[0].summary_fields[0].label_detection.geometry.bounding_box.height #=> Float
    #   resp.data.expense_documents[0].summary_fields[0].label_detection.geometry.bounding_box.left #=> Float
    #   resp.data.expense_documents[0].summary_fields[0].label_detection.geometry.bounding_box.top #=> Float
    #   resp.data.expense_documents[0].summary_fields[0].label_detection.geometry.polygon #=> Array<Point>
    #   resp.data.expense_documents[0].summary_fields[0].label_detection.geometry.polygon[0] #=> Types::Point
    #   resp.data.expense_documents[0].summary_fields[0].label_detection.geometry.polygon[0].x #=> Float
    #   resp.data.expense_documents[0].summary_fields[0].label_detection.geometry.polygon[0].y #=> Float
    #   resp.data.expense_documents[0].summary_fields[0].label_detection.confidence #=> Float
    #   resp.data.expense_documents[0].summary_fields[0].value_detection #=> Types::ExpenseDetection
    #   resp.data.expense_documents[0].summary_fields[0].page_number #=> Integer
    #   resp.data.expense_documents[0].line_item_groups #=> Array<LineItemGroup>
    #   resp.data.expense_documents[0].line_item_groups[0] #=> Types::LineItemGroup
    #   resp.data.expense_documents[0].line_item_groups[0].line_item_group_index #=> Integer
    #   resp.data.expense_documents[0].line_item_groups[0].line_items #=> Array<LineItemFields>
    #   resp.data.expense_documents[0].line_item_groups[0].line_items[0] #=> Types::LineItemFields
    #   resp.data.expense_documents[0].line_item_groups[0].line_items[0].line_item_expense_fields #=> Array<ExpenseField>
    #
    def analyze_expense(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AnalyzeExpenseInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AnalyzeExpenseInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AnalyzeExpense
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::BadDocumentException, Errors::ThrottlingException, Errors::ProvisionedThroughputExceededException, Errors::DocumentTooLargeException, Errors::InvalidS3ObjectException, Errors::InvalidParameterException, Errors::UnsupportedDocumentException, Errors::InternalServerError]),
        data_parser: Parsers::AnalyzeExpense
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AnalyzeExpense,
        stubs: @stubs,
        params_class: Params::AnalyzeExpenseOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :analyze_expense
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Analyzes identity documents for relevant information. This information is extracted
    #          and returned as <code>IdentityDocumentFields</code>, which records both the normalized
    #          field and value of the extracted text.Unlike other Amazon Textract operations, <code>AnalyzeID</code>
    #       doesn't return any Geometry data.</p>
    #
    # @param [Hash] params
    #   See {Types::AnalyzeIDInput}.
    #
    # @option params [Array<Document>] :document_pages
    #   <p>The document being passed to AnalyzeID.</p>
    #
    # @return [Types::AnalyzeIDOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.analyze_id(
    #     document_pages: [
    #       {
    #         bytes: 'Bytes',
    #         s3_object: {
    #           bucket: 'Bucket',
    #           name: 'Name',
    #           version: 'Version'
    #         }
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AnalyzeIDOutput
    #   resp.data.identity_documents #=> Array<IdentityDocument>
    #   resp.data.identity_documents[0] #=> Types::IdentityDocument
    #   resp.data.identity_documents[0].document_index #=> Integer
    #   resp.data.identity_documents[0].identity_document_fields #=> Array<IdentityDocumentField>
    #   resp.data.identity_documents[0].identity_document_fields[0] #=> Types::IdentityDocumentField
    #   resp.data.identity_documents[0].identity_document_fields[0].type #=> Types::AnalyzeIDDetections
    #   resp.data.identity_documents[0].identity_document_fields[0].type.text #=> String
    #   resp.data.identity_documents[0].identity_document_fields[0].type.normalized_value #=> Types::NormalizedValue
    #   resp.data.identity_documents[0].identity_document_fields[0].type.normalized_value.value #=> String
    #   resp.data.identity_documents[0].identity_document_fields[0].type.normalized_value.value_type #=> String, one of ["DATE"]
    #   resp.data.identity_documents[0].identity_document_fields[0].type.confidence #=> Float
    #   resp.data.identity_documents[0].identity_document_fields[0].value_detection #=> Types::AnalyzeIDDetections
    #   resp.data.document_metadata #=> Types::DocumentMetadata
    #   resp.data.document_metadata.pages #=> Integer
    #   resp.data.analyze_id_model_version #=> String
    #
    def analyze_id(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AnalyzeIDInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AnalyzeIDInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AnalyzeID
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::BadDocumentException, Errors::ThrottlingException, Errors::ProvisionedThroughputExceededException, Errors::DocumentTooLargeException, Errors::InvalidS3ObjectException, Errors::InvalidParameterException, Errors::UnsupportedDocumentException, Errors::InternalServerError]),
        data_parser: Parsers::AnalyzeID
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AnalyzeID,
        stubs: @stubs,
        params_class: Params::AnalyzeIDOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :analyze_id
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Detects text in the input document. Amazon Textract can detect lines of text and the
    #          words that make up a line of text. The input document must be an image in JPEG, PNG, PDF, or TIFF
    #          format. <code>DetectDocumentText</code> returns the detected text in an array of <a>Block</a> objects. </p>
    #          <p>Each document page has as an associated <code>Block</code> of type PAGE. Each PAGE <code>Block</code> object
    #          is the parent of LINE <code>Block</code> objects that represent the lines of detected text on a page. A LINE <code>Block</code> object is
    #          a parent for each word that makes up the line. Words are represented by <code>Block</code> objects of type WORD.</p>
    #
    #          <p>
    #             <code>DetectDocumentText</code> is a synchronous operation. To analyze documents
    #          asynchronously, use <a>StartDocumentTextDetection</a>.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/textract/latest/dg/how-it-works-detecting.html">Document Text Detection</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DetectDocumentTextInput}.
    #
    # @option params [Document] :document
    #   <p>The input document as base64-encoded bytes or an Amazon S3 object. If you use the AWS CLI
    #            to call Amazon Textract operations, you can't pass image bytes. The document must be an image
    #         in JPEG or PNG format.</p>
    #            <p>If you're using an AWS SDK to call Amazon Textract, you might not need to base64-encode
    #            image bytes that are passed using the <code>Bytes</code> field. </p>
    #
    # @return [Types::DetectDocumentTextOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detect_document_text(
    #     document: {
    #       bytes: 'Bytes',
    #       s3_object: {
    #         bucket: 'Bucket',
    #         name: 'Name',
    #         version: 'Version'
    #       }
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DetectDocumentTextOutput
    #   resp.data.document_metadata #=> Types::DocumentMetadata
    #   resp.data.document_metadata.pages #=> Integer
    #   resp.data.blocks #=> Array<Block>
    #   resp.data.blocks[0] #=> Types::Block
    #   resp.data.blocks[0].block_type #=> String, one of ["KEY_VALUE_SET", "PAGE", "LINE", "WORD", "TABLE", "CELL", "SELECTION_ELEMENT", "MERGED_CELL", "TITLE", "QUERY", "QUERY_RESULT"]
    #   resp.data.blocks[0].confidence #=> Float
    #   resp.data.blocks[0].text #=> String
    #   resp.data.blocks[0].text_type #=> String, one of ["HANDWRITING", "PRINTED"]
    #   resp.data.blocks[0].row_index #=> Integer
    #   resp.data.blocks[0].column_index #=> Integer
    #   resp.data.blocks[0].row_span #=> Integer
    #   resp.data.blocks[0].column_span #=> Integer
    #   resp.data.blocks[0].geometry #=> Types::Geometry
    #   resp.data.blocks[0].geometry.bounding_box #=> Types::BoundingBox
    #   resp.data.blocks[0].geometry.bounding_box.width #=> Float
    #   resp.data.blocks[0].geometry.bounding_box.height #=> Float
    #   resp.data.blocks[0].geometry.bounding_box.left #=> Float
    #   resp.data.blocks[0].geometry.bounding_box.top #=> Float
    #   resp.data.blocks[0].geometry.polygon #=> Array<Point>
    #   resp.data.blocks[0].geometry.polygon[0] #=> Types::Point
    #   resp.data.blocks[0].geometry.polygon[0].x #=> Float
    #   resp.data.blocks[0].geometry.polygon[0].y #=> Float
    #   resp.data.blocks[0].id #=> String
    #   resp.data.blocks[0].relationships #=> Array<Relationship>
    #   resp.data.blocks[0].relationships[0] #=> Types::Relationship
    #   resp.data.blocks[0].relationships[0].type #=> String, one of ["VALUE", "CHILD", "COMPLEX_FEATURES", "MERGED_CELL", "TITLE", "ANSWER"]
    #   resp.data.blocks[0].relationships[0].ids #=> Array<String>
    #   resp.data.blocks[0].relationships[0].ids[0] #=> String
    #   resp.data.blocks[0].entity_types #=> Array<String>
    #   resp.data.blocks[0].entity_types[0] #=> String, one of ["KEY", "VALUE", "COLUMN_HEADER"]
    #   resp.data.blocks[0].selection_status #=> String, one of ["SELECTED", "NOT_SELECTED"]
    #   resp.data.blocks[0].page #=> Integer
    #   resp.data.blocks[0].query #=> Types::Query
    #   resp.data.blocks[0].query.text #=> String
    #   resp.data.blocks[0].query.alias #=> String
    #   resp.data.blocks[0].query.pages #=> Array<String>
    #   resp.data.blocks[0].query.pages[0] #=> String
    #   resp.data.detect_document_text_model_version #=> String
    #
    def detect_document_text(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DetectDocumentTextInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DetectDocumentTextInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DetectDocumentText
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::BadDocumentException, Errors::ThrottlingException, Errors::ProvisionedThroughputExceededException, Errors::DocumentTooLargeException, Errors::InvalidS3ObjectException, Errors::InvalidParameterException, Errors::UnsupportedDocumentException, Errors::InternalServerError]),
        data_parser: Parsers::DetectDocumentText
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DetectDocumentText,
        stubs: @stubs,
        params_class: Params::DetectDocumentTextOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :detect_document_text
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the results for an Amazon Textract asynchronous operation that analyzes text in a document.</p>
    #          <p>You start asynchronous text analysis by calling <a>StartDocumentAnalysis</a>, which returns a job identifier
    #             (<code>JobId</code>). When the text analysis operation finishes, Amazon Textract publishes a
    #          completion status to the Amazon Simple Notification Service (Amazon SNS) topic that's registered in the initial call to
    #             <code>StartDocumentAnalysis</code>. To get the results of the text-detection operation,
    #          first check that the status value published to the Amazon SNS topic is <code>SUCCEEDED</code>.
    #          If so, call <code>GetDocumentAnalysis</code>, and pass the job identifier
    #             (<code>JobId</code>) from the initial call to <code>StartDocumentAnalysis</code>.</p>
    #          <p>
    #             <code>GetDocumentAnalysis</code> returns an array of <a>Block</a> objects. The following
    #          types of information are returned: </p>
    #          <ul>
    #             <li>
    #                <p>Form data (key-value pairs). The related information is returned in two <a>Block</a> objects, each of type <code>KEY_VALUE_SET</code>: a KEY
    #             <code>Block</code> object and a VALUE <code>Block</code> object. For example,
    #             <i>Name: Ana Silva Carolina</i> contains a key and value.
    #             <i>Name:</i> is the key. <i>Ana Silva Carolina</i> is
    #             the value.</p>
    #             </li>
    #             <li>
    #                <p>Table and table cell data. A TABLE <code>Block</code> object contains information about a detected table. A CELL
    #             <code>Block</code> object is returned for each cell in a table.</p>
    #             </li>
    #             <li>
    #                <p>Lines and words of text. A LINE <code>Block</code> object contains one or more WORD <code>Block</code> objects.
    #             All lines and words that are detected in the document are returned (including text that doesn't have a
    #             relationship with the value of the <code>StartDocumentAnalysis</code>
    #                   <code>FeatureTypes</code> input parameter). </p>
    #             </li>
    #             <li>
    #                <p>Queries. A QUERIES_RESULT Block object contains the answer to the query, the alias associated and an ID that
    #             connect it to the query asked. This Block also contains a location and attached confidence score</p>
    #             </li>
    #          </ul>
    #
    #          <p>Selection elements such as check boxes and option buttons (radio buttons) can be detected in form data and in tables.
    #          A SELECTION_ELEMENT <code>Block</code> object contains information about a selection element,
    #          including the selection status.</p>
    #
    #
    #          <p>Use the <code>MaxResults</code> parameter to limit the number of blocks that are
    #          returned. If there are more results than specified in <code>MaxResults</code>, the value of
    #             <code>NextToken</code> in the operation response contains a pagination token for getting
    #          the next set of results. To get the next page of results, call
    #             <code>GetDocumentAnalysis</code>, and populate the <code>NextToken</code> request
    #          parameter with the token value that's returned from the previous call to
    #             <code>GetDocumentAnalysis</code>.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/textract/latest/dg/how-it-works-analyzing.html">Document Text Analysis</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDocumentAnalysisInput}.
    #
    # @option params [String] :job_id
    #   <p>A unique identifier for the text-detection job. The <code>JobId</code> is returned from
    #            <code>StartDocumentAnalysis</code>. A <code>JobId</code> value is only valid for 7 days.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per paginated call. The largest value that you
    #            can specify is 1,000. If you specify a value greater than 1,000, a maximum of 1,000 results
    #            is returned. The default value is 1,000.</p>
    #
    # @option params [String] :next_token
    #   <p>If the previous response was incomplete (because there are more blocks to retrieve), Amazon Textract returns a pagination
    #            token in the response. You can use this pagination token to retrieve the next set of blocks.</p>
    #
    # @return [Types::GetDocumentAnalysisOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_document_analysis(
    #     job_id: 'JobId', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDocumentAnalysisOutput
    #   resp.data.document_metadata #=> Types::DocumentMetadata
    #   resp.data.document_metadata.pages #=> Integer
    #   resp.data.job_status #=> String, one of ["IN_PROGRESS", "SUCCEEDED", "FAILED", "PARTIAL_SUCCESS"]
    #   resp.data.next_token #=> String
    #   resp.data.blocks #=> Array<Block>
    #   resp.data.blocks[0] #=> Types::Block
    #   resp.data.blocks[0].block_type #=> String, one of ["KEY_VALUE_SET", "PAGE", "LINE", "WORD", "TABLE", "CELL", "SELECTION_ELEMENT", "MERGED_CELL", "TITLE", "QUERY", "QUERY_RESULT"]
    #   resp.data.blocks[0].confidence #=> Float
    #   resp.data.blocks[0].text #=> String
    #   resp.data.blocks[0].text_type #=> String, one of ["HANDWRITING", "PRINTED"]
    #   resp.data.blocks[0].row_index #=> Integer
    #   resp.data.blocks[0].column_index #=> Integer
    #   resp.data.blocks[0].row_span #=> Integer
    #   resp.data.blocks[0].column_span #=> Integer
    #   resp.data.blocks[0].geometry #=> Types::Geometry
    #   resp.data.blocks[0].geometry.bounding_box #=> Types::BoundingBox
    #   resp.data.blocks[0].geometry.bounding_box.width #=> Float
    #   resp.data.blocks[0].geometry.bounding_box.height #=> Float
    #   resp.data.blocks[0].geometry.bounding_box.left #=> Float
    #   resp.data.blocks[0].geometry.bounding_box.top #=> Float
    #   resp.data.blocks[0].geometry.polygon #=> Array<Point>
    #   resp.data.blocks[0].geometry.polygon[0] #=> Types::Point
    #   resp.data.blocks[0].geometry.polygon[0].x #=> Float
    #   resp.data.blocks[0].geometry.polygon[0].y #=> Float
    #   resp.data.blocks[0].id #=> String
    #   resp.data.blocks[0].relationships #=> Array<Relationship>
    #   resp.data.blocks[0].relationships[0] #=> Types::Relationship
    #   resp.data.blocks[0].relationships[0].type #=> String, one of ["VALUE", "CHILD", "COMPLEX_FEATURES", "MERGED_CELL", "TITLE", "ANSWER"]
    #   resp.data.blocks[0].relationships[0].ids #=> Array<String>
    #   resp.data.blocks[0].relationships[0].ids[0] #=> String
    #   resp.data.blocks[0].entity_types #=> Array<String>
    #   resp.data.blocks[0].entity_types[0] #=> String, one of ["KEY", "VALUE", "COLUMN_HEADER"]
    #   resp.data.blocks[0].selection_status #=> String, one of ["SELECTED", "NOT_SELECTED"]
    #   resp.data.blocks[0].page #=> Integer
    #   resp.data.blocks[0].query #=> Types::Query
    #   resp.data.blocks[0].query.text #=> String
    #   resp.data.blocks[0].query.alias #=> String
    #   resp.data.blocks[0].query.pages #=> Array<String>
    #   resp.data.blocks[0].query.pages[0] #=> String
    #   resp.data.warnings #=> Array<Warning>
    #   resp.data.warnings[0] #=> Types::Warning
    #   resp.data.warnings[0].error_code #=> String
    #   resp.data.warnings[0].pages #=> Array<Integer>
    #   resp.data.warnings[0].pages[0] #=> Integer
    #   resp.data.status_message #=> String
    #   resp.data.analyze_document_model_version #=> String
    #
    def get_document_analysis(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDocumentAnalysisInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDocumentAnalysisInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDocumentAnalysis
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InvalidJobIdException, Errors::ThrottlingException, Errors::ProvisionedThroughputExceededException, Errors::InvalidKMSKeyException, Errors::InvalidS3ObjectException, Errors::InvalidParameterException, Errors::InternalServerError]),
        data_parser: Parsers::GetDocumentAnalysis
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDocumentAnalysis,
        stubs: @stubs,
        params_class: Params::GetDocumentAnalysisOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_document_analysis
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the results for an Amazon Textract asynchronous operation that detects text in a document.
    #      Amazon Textract can detect lines of text and the words that make up a line of text.</p>
    #          <p>You start asynchronous text detection by calling <a>StartDocumentTextDetection</a>, which returns a job identifier
    #             (<code>JobId</code>). When the text detection operation finishes, Amazon Textract publishes a
    #          completion status to the Amazon Simple Notification Service (Amazon SNS) topic that's registered in the initial call to
    #             <code>StartDocumentTextDetection</code>. To get the results of the text-detection
    #          operation, first check that the status value published to the Amazon SNS topic is
    #             <code>SUCCEEDED</code>. If so, call <code>GetDocumentTextDetection</code>, and pass the
    #          job identifier (<code>JobId</code>) from the initial call to
    #             <code>StartDocumentTextDetection</code>.</p>
    #          <p>
    #             <code>GetDocumentTextDetection</code> returns an array of <a>Block</a>
    #          objects. </p>
    #          <p>Each document page has as an associated <code>Block</code> of type PAGE. Each PAGE <code>Block</code> object
    #         is the parent of LINE <code>Block</code> objects that represent the lines of detected text on a page. A LINE <code>Block</code> object is
    #         a parent for each word that makes up the line. Words are represented by <code>Block</code> objects of type WORD.</p>
    #
    #          <p>Use the MaxResults parameter to limit the number of blocks that are returned. If there
    #          are more results than specified in <code>MaxResults</code>, the value of
    #             <code>NextToken</code> in the operation response contains a pagination token for getting
    #          the next set of results. To get the next page of results, call
    #             <code>GetDocumentTextDetection</code>, and populate the <code>NextToken</code> request
    #          parameter with the token value that's returned from the previous call to
    #             <code>GetDocumentTextDetection</code>.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/textract/latest/dg/how-it-works-detecting.html">Document Text Detection</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDocumentTextDetectionInput}.
    #
    # @option params [String] :job_id
    #   <p>A unique identifier for the text detection job. The <code>JobId</code> is returned from
    #            <code>StartDocumentTextDetection</code>. A <code>JobId</code> value is only valid for 7 days.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per paginated call. The largest value you can
    #            specify is 1,000. If you specify a value greater than 1,000, a maximum of 1,000 results is
    #            returned. The default value is 1,000.</p>
    #
    # @option params [String] :next_token
    #   <p>If the previous response was incomplete (because there are more blocks to retrieve), Amazon Textract returns a pagination
    #            token in the response. You can use this pagination token to retrieve the next set of blocks.</p>
    #
    # @return [Types::GetDocumentTextDetectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_document_text_detection(
    #     job_id: 'JobId', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDocumentTextDetectionOutput
    #   resp.data.document_metadata #=> Types::DocumentMetadata
    #   resp.data.document_metadata.pages #=> Integer
    #   resp.data.job_status #=> String, one of ["IN_PROGRESS", "SUCCEEDED", "FAILED", "PARTIAL_SUCCESS"]
    #   resp.data.next_token #=> String
    #   resp.data.blocks #=> Array<Block>
    #   resp.data.blocks[0] #=> Types::Block
    #   resp.data.blocks[0].block_type #=> String, one of ["KEY_VALUE_SET", "PAGE", "LINE", "WORD", "TABLE", "CELL", "SELECTION_ELEMENT", "MERGED_CELL", "TITLE", "QUERY", "QUERY_RESULT"]
    #   resp.data.blocks[0].confidence #=> Float
    #   resp.data.blocks[0].text #=> String
    #   resp.data.blocks[0].text_type #=> String, one of ["HANDWRITING", "PRINTED"]
    #   resp.data.blocks[0].row_index #=> Integer
    #   resp.data.blocks[0].column_index #=> Integer
    #   resp.data.blocks[0].row_span #=> Integer
    #   resp.data.blocks[0].column_span #=> Integer
    #   resp.data.blocks[0].geometry #=> Types::Geometry
    #   resp.data.blocks[0].geometry.bounding_box #=> Types::BoundingBox
    #   resp.data.blocks[0].geometry.bounding_box.width #=> Float
    #   resp.data.blocks[0].geometry.bounding_box.height #=> Float
    #   resp.data.blocks[0].geometry.bounding_box.left #=> Float
    #   resp.data.blocks[0].geometry.bounding_box.top #=> Float
    #   resp.data.blocks[0].geometry.polygon #=> Array<Point>
    #   resp.data.blocks[0].geometry.polygon[0] #=> Types::Point
    #   resp.data.blocks[0].geometry.polygon[0].x #=> Float
    #   resp.data.blocks[0].geometry.polygon[0].y #=> Float
    #   resp.data.blocks[0].id #=> String
    #   resp.data.blocks[0].relationships #=> Array<Relationship>
    #   resp.data.blocks[0].relationships[0] #=> Types::Relationship
    #   resp.data.blocks[0].relationships[0].type #=> String, one of ["VALUE", "CHILD", "COMPLEX_FEATURES", "MERGED_CELL", "TITLE", "ANSWER"]
    #   resp.data.blocks[0].relationships[0].ids #=> Array<String>
    #   resp.data.blocks[0].relationships[0].ids[0] #=> String
    #   resp.data.blocks[0].entity_types #=> Array<String>
    #   resp.data.blocks[0].entity_types[0] #=> String, one of ["KEY", "VALUE", "COLUMN_HEADER"]
    #   resp.data.blocks[0].selection_status #=> String, one of ["SELECTED", "NOT_SELECTED"]
    #   resp.data.blocks[0].page #=> Integer
    #   resp.data.blocks[0].query #=> Types::Query
    #   resp.data.blocks[0].query.text #=> String
    #   resp.data.blocks[0].query.alias #=> String
    #   resp.data.blocks[0].query.pages #=> Array<String>
    #   resp.data.blocks[0].query.pages[0] #=> String
    #   resp.data.warnings #=> Array<Warning>
    #   resp.data.warnings[0] #=> Types::Warning
    #   resp.data.warnings[0].error_code #=> String
    #   resp.data.warnings[0].pages #=> Array<Integer>
    #   resp.data.warnings[0].pages[0] #=> Integer
    #   resp.data.status_message #=> String
    #   resp.data.detect_document_text_model_version #=> String
    #
    def get_document_text_detection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDocumentTextDetectionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDocumentTextDetectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDocumentTextDetection
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InvalidJobIdException, Errors::ThrottlingException, Errors::ProvisionedThroughputExceededException, Errors::InvalidKMSKeyException, Errors::InvalidS3ObjectException, Errors::InvalidParameterException, Errors::InternalServerError]),
        data_parser: Parsers::GetDocumentTextDetection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDocumentTextDetection,
        stubs: @stubs,
        params_class: Params::GetDocumentTextDetectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_document_text_detection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the results for an Amazon Textract asynchronous operation that analyzes invoices and
    #    receipts. Amazon Textract finds contact information, items purchased, and vendor name, from input
    #    invoices and receipts.</p>
    #          <p>You start asynchronous invoice/receipt analysis by calling <a>StartExpenseAnalysis</a>, which returns a job identifier (<code>JobId</code>). Upon
    #    completion of the invoice/receipt analysis, Amazon Textract publishes the completion status to the
    #    Amazon Simple Notification Service (Amazon SNS) topic. This topic must be registered in the initial call to
    #     <code>StartExpenseAnalysis</code>. To get the results of the invoice/receipt analysis operation,
    #    first ensure that the status value published to the Amazon SNS topic is <code>SUCCEEDED</code>. If so,
    #    call <code>GetExpenseAnalysis</code>, and pass the job identifier (<code>JobId</code>) from the
    #    initial call to <code>StartExpenseAnalysis</code>.</p>
    #          <p>Use the MaxResults parameter to limit the number of blocks that are returned. If there are
    #    more results than specified in <code>MaxResults</code>, the value of <code>NextToken</code> in
    #    the operation response contains a pagination token for getting the next set of results. To get
    #    the next page of results, call <code>GetExpenseAnalysis</code>, and populate the
    #     <code>NextToken</code> request parameter with the token value that's returned from the previous
    #    call to <code>GetExpenseAnalysis</code>.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/textract/latest/dg/invoices-receipts.html">Analyzing Invoices and Receipts</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetExpenseAnalysisInput}.
    #
    # @option params [String] :job_id
    #   <p>A unique identifier for the text detection job. The <code>JobId</code> is returned from
    #       <code>StartExpenseAnalysis</code>. A <code>JobId</code> value is only valid for 7 days.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per paginated call. The largest value you can
    #      specify is 20. If you specify a value greater than 20, a maximum of 20 results is
    #      returned. The default value is 20.</p>
    #
    # @option params [String] :next_token
    #   <p>If the previous response was incomplete (because there are more blocks to retrieve), Amazon Textract returns a pagination
    #      token in the response. You can use this pagination token to retrieve the next set of blocks.</p>
    #
    # @return [Types::GetExpenseAnalysisOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_expense_analysis(
    #     job_id: 'JobId', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetExpenseAnalysisOutput
    #   resp.data.document_metadata #=> Types::DocumentMetadata
    #   resp.data.document_metadata.pages #=> Integer
    #   resp.data.job_status #=> String, one of ["IN_PROGRESS", "SUCCEEDED", "FAILED", "PARTIAL_SUCCESS"]
    #   resp.data.next_token #=> String
    #   resp.data.expense_documents #=> Array<ExpenseDocument>
    #   resp.data.expense_documents[0] #=> Types::ExpenseDocument
    #   resp.data.expense_documents[0].expense_index #=> Integer
    #   resp.data.expense_documents[0].summary_fields #=> Array<ExpenseField>
    #   resp.data.expense_documents[0].summary_fields[0] #=> Types::ExpenseField
    #   resp.data.expense_documents[0].summary_fields[0].type #=> Types::ExpenseType
    #   resp.data.expense_documents[0].summary_fields[0].type.text #=> String
    #   resp.data.expense_documents[0].summary_fields[0].type.confidence #=> Float
    #   resp.data.expense_documents[0].summary_fields[0].label_detection #=> Types::ExpenseDetection
    #   resp.data.expense_documents[0].summary_fields[0].label_detection.text #=> String
    #   resp.data.expense_documents[0].summary_fields[0].label_detection.geometry #=> Types::Geometry
    #   resp.data.expense_documents[0].summary_fields[0].label_detection.geometry.bounding_box #=> Types::BoundingBox
    #   resp.data.expense_documents[0].summary_fields[0].label_detection.geometry.bounding_box.width #=> Float
    #   resp.data.expense_documents[0].summary_fields[0].label_detection.geometry.bounding_box.height #=> Float
    #   resp.data.expense_documents[0].summary_fields[0].label_detection.geometry.bounding_box.left #=> Float
    #   resp.data.expense_documents[0].summary_fields[0].label_detection.geometry.bounding_box.top #=> Float
    #   resp.data.expense_documents[0].summary_fields[0].label_detection.geometry.polygon #=> Array<Point>
    #   resp.data.expense_documents[0].summary_fields[0].label_detection.geometry.polygon[0] #=> Types::Point
    #   resp.data.expense_documents[0].summary_fields[0].label_detection.geometry.polygon[0].x #=> Float
    #   resp.data.expense_documents[0].summary_fields[0].label_detection.geometry.polygon[0].y #=> Float
    #   resp.data.expense_documents[0].summary_fields[0].label_detection.confidence #=> Float
    #   resp.data.expense_documents[0].summary_fields[0].value_detection #=> Types::ExpenseDetection
    #   resp.data.expense_documents[0].summary_fields[0].page_number #=> Integer
    #   resp.data.expense_documents[0].line_item_groups #=> Array<LineItemGroup>
    #   resp.data.expense_documents[0].line_item_groups[0] #=> Types::LineItemGroup
    #   resp.data.expense_documents[0].line_item_groups[0].line_item_group_index #=> Integer
    #   resp.data.expense_documents[0].line_item_groups[0].line_items #=> Array<LineItemFields>
    #   resp.data.expense_documents[0].line_item_groups[0].line_items[0] #=> Types::LineItemFields
    #   resp.data.expense_documents[0].line_item_groups[0].line_items[0].line_item_expense_fields #=> Array<ExpenseField>
    #   resp.data.warnings #=> Array<Warning>
    #   resp.data.warnings[0] #=> Types::Warning
    #   resp.data.warnings[0].error_code #=> String
    #   resp.data.warnings[0].pages #=> Array<Integer>
    #   resp.data.warnings[0].pages[0] #=> Integer
    #   resp.data.status_message #=> String
    #   resp.data.analyze_expense_model_version #=> String
    #
    def get_expense_analysis(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetExpenseAnalysisInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetExpenseAnalysisInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetExpenseAnalysis
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InvalidJobIdException, Errors::ThrottlingException, Errors::ProvisionedThroughputExceededException, Errors::InvalidKMSKeyException, Errors::InvalidS3ObjectException, Errors::InvalidParameterException, Errors::InternalServerError]),
        data_parser: Parsers::GetExpenseAnalysis
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetExpenseAnalysis,
        stubs: @stubs,
        params_class: Params::GetExpenseAnalysisOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_expense_analysis
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts the asynchronous analysis of an input document for relationships between detected
    #          items such as key-value pairs, tables, and selection elements.</p>
    #
    #          <p>
    #             <code>StartDocumentAnalysis</code> can analyze text in documents that are in JPEG, PNG, TIFF, and PDF format. The
    #          documents are stored in an Amazon S3 bucket. Use <a>DocumentLocation</a> to specify the bucket name and file name
    #          of the document.
    #          </p>
    #          <p>
    #             <code>StartDocumentAnalysis</code> returns a job identifier
    #             (<code>JobId</code>) that you use to get the results of the operation. When text
    #          analysis is finished, Amazon Textract publishes a completion status to the Amazon Simple Notification Service (Amazon SNS)
    #          topic that you specify in <code>NotificationChannel</code>. To get the results of the text
    #          analysis operation, first check that the status value published to the Amazon SNS topic is
    #             <code>SUCCEEDED</code>. If so, call <a>GetDocumentAnalysis</a>, and pass
    #          the job identifier (<code>JobId</code>) from the initial call to
    #             <code>StartDocumentAnalysis</code>.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/textract/latest/dg/how-it-works-analyzing.html">Document Text Analysis</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::StartDocumentAnalysisInput}.
    #
    # @option params [DocumentLocation] :document_location
    #   <p>The location of the document to be processed.</p>
    #
    # @option params [Array<String>] :feature_types
    #   <p>A list of the types of analysis to perform. Add TABLES to the list to return information
    #            about the tables that are detected in the input document. Add FORMS to return detected
    #            form data. To perform both types of analysis, add TABLES
    #            and FORMS to <code>FeatureTypes</code>. All lines and words detected in the document are
    #            included in the response (including text that isn't related to the value of
    #               <code>FeatureTypes</code>). </p>
    #
    # @option params [String] :client_request_token
    #   <p>The idempotent token that you use to identify the start request. If you use the same
    #            token with multiple <code>StartDocumentAnalysis</code> requests, the same
    #               <code>JobId</code> is returned. Use <code>ClientRequestToken</code> to prevent the same
    #            job from being accidentally started more than once. For more information, see
    #            <a href="https://docs.aws.amazon.com/textract/latest/dg/api-async.html">Calling Amazon Textract Asynchronous Operations</a>.</p>
    #
    # @option params [String] :job_tag
    #   <p>An identifier that you specify that's included in the completion notification published
    #            to the Amazon SNS topic. For example, you can use <code>JobTag</code> to identify the type of
    #            document that the completion notification corresponds to (such as a tax form or a
    #            receipt).</p>
    #
    # @option params [NotificationChannel] :notification_channel
    #   <p>The Amazon SNS topic ARN that you want Amazon Textract to publish the completion status of the
    #            operation to. </p>
    #
    # @option params [OutputConfig] :output_config
    #   <p>Sets if the output will go to a customer defined bucket. By default, Amazon Textract will save
    #            the results internally to be accessed by the GetDocumentAnalysis operation.</p>
    #
    # @option params [String] :kms_key_id
    #   <p>The KMS key used to encrypt the inference results. This can be
    #            in either Key ID or Key Alias format. When a KMS key is provided, the
    #            KMS key will be used for server-side encryption of the objects in the
    #            customer bucket. When this parameter is not enabled, the result will
    #            be encrypted server side,using SSE-S3.</p>
    #
    # @option params [QueriesConfig] :queries_config
    #   <p></p>
    #
    # @return [Types::StartDocumentAnalysisOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_document_analysis(
    #     document_location: {
    #       s3_object: {
    #         bucket: 'Bucket',
    #         name: 'Name',
    #         version: 'Version'
    #       }
    #     }, # required
    #     feature_types: [
    #       'TABLES' # accepts ["TABLES", "FORMS", "QUERIES"]
    #     ], # required
    #     client_request_token: 'ClientRequestToken',
    #     job_tag: 'JobTag',
    #     notification_channel: {
    #       sns_topic_arn: 'SNSTopicArn', # required
    #       role_arn: 'RoleArn' # required
    #     },
    #     output_config: {
    #       s3_bucket: 'S3Bucket', # required
    #       s3_prefix: 'S3Prefix'
    #     },
    #     kms_key_id: 'KMSKeyId',
    #     queries_config: {
    #       queries: [
    #         {
    #           text: 'Text', # required
    #           alias: 'Alias',
    #           pages: [
    #             'member'
    #           ]
    #         }
    #       ] # required
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartDocumentAnalysisOutput
    #   resp.data.job_id #=> String
    #
    def start_document_analysis(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartDocumentAnalysisInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartDocumentAnalysisInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartDocumentAnalysis
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::IdempotentParameterMismatchException, Errors::BadDocumentException, Errors::ThrottlingException, Errors::InvalidKMSKeyException, Errors::InvalidS3ObjectException, Errors::InvalidParameterException, Errors::InternalServerError, Errors::LimitExceededException, Errors::ProvisionedThroughputExceededException, Errors::DocumentTooLargeException, Errors::UnsupportedDocumentException]),
        data_parser: Parsers::StartDocumentAnalysis
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartDocumentAnalysis,
        stubs: @stubs,
        params_class: Params::StartDocumentAnalysisOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_document_analysis
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts the asynchronous detection of text in a document. Amazon Textract can detect lines of
    #          text and the words that make up a line of text.</p>
    #          <p>
    #             <code>StartDocumentTextDetection</code> can analyze text in documents that are in JPEG, PNG, TIFF, and PDF format. The
    #         documents are stored in an Amazon S3 bucket. Use <a>DocumentLocation</a> to specify the bucket name and file name
    #         of the document.
    #      </p>
    #          <p>
    #             <code>StartTextDetection</code> returns a job identifier
    #             (<code>JobId</code>) that you use to get the results of the operation. When text
    #          detection is finished, Amazon Textract publishes a completion status to the Amazon Simple Notification Service (Amazon SNS)
    #          topic that you specify in <code>NotificationChannel</code>. To get the results of the text
    #          detection operation, first check that the status value published to the Amazon SNS topic is
    #             <code>SUCCEEDED</code>. If so, call <a>GetDocumentTextDetection</a>, and
    #          pass the job identifier (<code>JobId</code>) from the initial call to
    #             <code>StartDocumentTextDetection</code>.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/textract/latest/dg/how-it-works-detecting.html">Document Text Detection</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::StartDocumentTextDetectionInput}.
    #
    # @option params [DocumentLocation] :document_location
    #   <p>The location of the document to be processed.</p>
    #
    # @option params [String] :client_request_token
    #   <p>The idempotent token that's used to identify the start request. If you use the same
    #            token with multiple <code>StartDocumentTextDetection</code> requests, the same
    #               <code>JobId</code> is returned. Use <code>ClientRequestToken</code> to prevent the same
    #            job from being accidentally started more than once. For more information, see
    #            <a href="https://docs.aws.amazon.com/textract/latest/dg/api-async.html">Calling Amazon Textract Asynchronous Operations</a>.</p>
    #
    # @option params [String] :job_tag
    #   <p>An identifier that you specify that's included in the completion notification published
    #            to the Amazon SNS topic. For example, you can use <code>JobTag</code> to identify the type of
    #            document that the completion notification corresponds to (such as a tax form or a
    #            receipt).</p>
    #
    # @option params [NotificationChannel] :notification_channel
    #   <p>The Amazon SNS topic ARN that you want Amazon Textract to publish the completion status of the
    #            operation to. </p>
    #
    # @option params [OutputConfig] :output_config
    #   <p>Sets if the output will go to a customer defined bucket. By default Amazon Textract will
    #            save the results internally to be accessed with the GetDocumentTextDetection operation.</p>
    #
    # @option params [String] :kms_key_id
    #   <p>The KMS key used to encrypt the inference results. This can be
    #            in either Key ID or Key Alias format. When a KMS key is provided, the
    #            KMS key will be used for server-side encryption of the objects in the
    #            customer bucket. When this parameter is not enabled, the result will
    #            be encrypted server side,using SSE-S3.</p>
    #
    # @return [Types::StartDocumentTextDetectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_document_text_detection(
    #     document_location: {
    #       s3_object: {
    #         bucket: 'Bucket',
    #         name: 'Name',
    #         version: 'Version'
    #       }
    #     }, # required
    #     client_request_token: 'ClientRequestToken',
    #     job_tag: 'JobTag',
    #     notification_channel: {
    #       sns_topic_arn: 'SNSTopicArn', # required
    #       role_arn: 'RoleArn' # required
    #     },
    #     output_config: {
    #       s3_bucket: 'S3Bucket', # required
    #       s3_prefix: 'S3Prefix'
    #     },
    #     kms_key_id: 'KMSKeyId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartDocumentTextDetectionOutput
    #   resp.data.job_id #=> String
    #
    def start_document_text_detection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartDocumentTextDetectionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartDocumentTextDetectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartDocumentTextDetection
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::IdempotentParameterMismatchException, Errors::BadDocumentException, Errors::ThrottlingException, Errors::InvalidKMSKeyException, Errors::InvalidS3ObjectException, Errors::InvalidParameterException, Errors::InternalServerError, Errors::LimitExceededException, Errors::ProvisionedThroughputExceededException, Errors::DocumentTooLargeException, Errors::UnsupportedDocumentException]),
        data_parser: Parsers::StartDocumentTextDetection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartDocumentTextDetection,
        stubs: @stubs,
        params_class: Params::StartDocumentTextDetectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_document_text_detection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts the asynchronous analysis of invoices or receipts for data like contact information,
    #    items purchased, and vendor names.</p>
    #
    #          <p>
    #             <code>StartExpenseAnalysis</code> can analyze text in documents that are in JPEG, PNG, and
    #    PDF format. The documents must be stored in an Amazon S3 bucket. Use the <a>DocumentLocation</a> parameter to specify the name of your S3 bucket and the name of the
    #    document in that bucket. </p>
    #          <p>
    #             <code>StartExpenseAnalysis</code> returns a job identifier (<code>JobId</code>) that you
    #    will provide to <code>GetExpenseAnalysis</code> to retrieve the results of the operation. When
    #    the analysis of the input invoices/receipts is finished, Amazon Textract publishes a completion
    #    status to the Amazon Simple Notification Service (Amazon SNS) topic that you provide to the <code>NotificationChannel</code>.
    #    To obtain the results of the invoice and receipt analysis operation, ensure that the status value
    #    published to the Amazon SNS topic is <code>SUCCEEDED</code>. If so, call <a>GetExpenseAnalysis</a>, and pass the job identifier (<code>JobId</code>) that was
    #    returned by your call to <code>StartExpenseAnalysis</code>.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/textract/latest/dg/invoice-receipts.html">Analyzing Invoices and Receipts</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::StartExpenseAnalysisInput}.
    #
    # @option params [DocumentLocation] :document_location
    #   <p>The location of the document to be processed.</p>
    #
    # @option params [String] :client_request_token
    #   <p>The idempotent token that's used to identify the start request. If you use the same token with multiple <code>StartDocumentTextDetection</code> requests, the same <code>JobId</code> is returned.
    #      Use <code>ClientRequestToken</code> to prevent the same job from being accidentally started more than once.
    #      For more information, see <a href="https://docs.aws.amazon.com/textract/latest/dg/api-async.html">Calling Amazon Textract Asynchronous Operations</a>
    #            </p>
    #
    # @option params [String] :job_tag
    #   <p>An identifier you specify that's included in the completion notification published
    #      to the Amazon SNS topic. For example, you can use <code>JobTag</code> to identify the type of
    #      document that the completion notification corresponds to (such as a tax form or a
    #      receipt).</p>
    #
    # @option params [NotificationChannel] :notification_channel
    #   <p>The Amazon SNS topic ARN that you want Amazon Textract to publish the completion status of the
    #      operation to. </p>
    #
    # @option params [OutputConfig] :output_config
    #   <p>Sets if the output will go to a customer defined bucket. By default, Amazon Textract will
    #      save the results internally to be accessed by the <code>GetExpenseAnalysis</code>
    #      operation.</p>
    #
    # @option params [String] :kms_key_id
    #   <p>The KMS key used to encrypt the inference results. This can be
    #      in either Key ID or Key Alias format. When a KMS key is provided, the
    #      KMS key will be used for server-side encryption of the objects in the
    #      customer bucket. When this parameter is not enabled, the result will
    #      be encrypted server side,using SSE-S3.</p>
    #
    # @return [Types::StartExpenseAnalysisOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_expense_analysis(
    #     document_location: {
    #       s3_object: {
    #         bucket: 'Bucket',
    #         name: 'Name',
    #         version: 'Version'
    #       }
    #     }, # required
    #     client_request_token: 'ClientRequestToken',
    #     job_tag: 'JobTag',
    #     notification_channel: {
    #       sns_topic_arn: 'SNSTopicArn', # required
    #       role_arn: 'RoleArn' # required
    #     },
    #     output_config: {
    #       s3_bucket: 'S3Bucket', # required
    #       s3_prefix: 'S3Prefix'
    #     },
    #     kms_key_id: 'KMSKeyId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartExpenseAnalysisOutput
    #   resp.data.job_id #=> String
    #
    def start_expense_analysis(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartExpenseAnalysisInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartExpenseAnalysisInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartExpenseAnalysis
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::IdempotentParameterMismatchException, Errors::BadDocumentException, Errors::ThrottlingException, Errors::InvalidKMSKeyException, Errors::InvalidS3ObjectException, Errors::InvalidParameterException, Errors::InternalServerError, Errors::LimitExceededException, Errors::ProvisionedThroughputExceededException, Errors::DocumentTooLargeException, Errors::UnsupportedDocumentException]),
        data_parser: Parsers::StartExpenseAnalysis
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartExpenseAnalysis,
        stubs: @stubs,
        params_class: Params::StartExpenseAnalysisOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_expense_analysis
        )
      )
      raise resp.error if resp.error
      resp
    end

    private

    def apply_middleware(middleware_stack, middleware)
      Client.middleware.apply(middleware_stack)
      @middleware.apply(middleware_stack)
      Hearth::MiddlewareBuilder.new(middleware).apply(middleware_stack)
    end
  end
end
