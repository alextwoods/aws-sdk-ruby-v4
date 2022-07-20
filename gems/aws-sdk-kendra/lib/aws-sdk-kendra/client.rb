# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::Kendra
  # An API client for AWSKendraFrontendService
  # See {#initialize} for a full list of supported configuration options
  # <p>Amazon Kendra is a service for indexing large document sets.</p>
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
    def initialize(config = AWS::SDK::Kendra::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Grants users or groups in your Amazon Web Services SSO identity source access
    #             to your Amazon Kendra experience. You can create an Amazon Kendra experience such as a
    #             search application. For more information on creating a search application
    #             experience, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html">Building
    #                 a search experience with no code</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateEntitiesToExperienceInput}.
    #
    # @option params [String] :id
    #   <p>The identifier of your Amazon Kendra experience.</p>
    #
    # @option params [String] :index_id
    #   <p>The identifier of the index for your Amazon Kendra experience.</p>
    #
    # @option params [Array<EntityConfiguration>] :entity_list
    #   <p>Lists users or groups in your Amazon Web Services SSO identity source.</p>
    #
    # @return [Types::AssociateEntitiesToExperienceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_entities_to_experience(
    #     id: 'Id', # required
    #     index_id: 'IndexId', # required
    #     entity_list: [
    #       {
    #         entity_id: 'EntityId', # required
    #         entity_type: 'USER' # required - accepts ["USER", "GROUP"]
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateEntitiesToExperienceOutput
    #   resp.data.failed_entity_list #=> Array<FailedEntity>
    #   resp.data.failed_entity_list[0] #=> Types::FailedEntity
    #   resp.data.failed_entity_list[0].entity_id #=> String
    #   resp.data.failed_entity_list[0].error_message #=> String
    #
    def associate_entities_to_experience(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateEntitiesToExperienceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateEntitiesToExperienceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateEntitiesToExperience
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ResourceAlreadyExistException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::AssociateEntitiesToExperience
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateEntitiesToExperience,
        stubs: @stubs,
        params_class: Params::AssociateEntitiesToExperienceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_entities_to_experience
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Defines the specific permissions of users or groups in your Amazon Web Services SSO
    #             identity source with access to your Amazon Kendra experience. You can create an Amazon Kendra
    #             experience such as a search application. For more information on creating a
    #             search application experience, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html">Building
    #                 a search experience with no code</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociatePersonasToEntitiesInput}.
    #
    # @option params [String] :id
    #   <p>The identifier of your Amazon Kendra experience.</p>
    #
    # @option params [String] :index_id
    #   <p>The identifier of the index for your Amazon Kendra experience.</p>
    #
    # @option params [Array<EntityPersonaConfiguration>] :personas
    #   <p>The personas that define the specific permissions of users or groups in
    #               your Amazon Web Services SSO identity source. The available personas or access
    #               roles are <code>Owner</code> and <code>Viewer</code>. For more information
    #               on these personas, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html#access-search-experience">Providing
    #                   access to your search page</a>.</p>
    #
    # @return [Types::AssociatePersonasToEntitiesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_personas_to_entities(
    #     id: 'Id', # required
    #     index_id: 'IndexId', # required
    #     personas: [
    #       {
    #         entity_id: 'EntityId', # required
    #         persona: 'OWNER' # required - accepts ["OWNER", "VIEWER"]
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociatePersonasToEntitiesOutput
    #   resp.data.failed_entity_list #=> Array<FailedEntity>
    #   resp.data.failed_entity_list[0] #=> Types::FailedEntity
    #   resp.data.failed_entity_list[0].entity_id #=> String
    #   resp.data.failed_entity_list[0].error_message #=> String
    #
    def associate_personas_to_entities(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociatePersonasToEntitiesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociatePersonasToEntitiesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociatePersonasToEntities
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ResourceAlreadyExistException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::AssociatePersonasToEntities
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociatePersonasToEntities,
        stubs: @stubs,
        params_class: Params::AssociatePersonasToEntitiesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_personas_to_entities
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes one or more documents from an index. The documents must have
    #       been added with the <code>BatchPutDocument</code> API.</p>
    #          <p>The documents are deleted asynchronously. You can see the progress of
    #       the deletion by using Amazon Web Services CloudWatch. Any error messages related to the
    #       processing of the batch are sent to you CloudWatch log.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchDeleteDocumentInput}.
    #
    # @option params [String] :index_id
    #   <p>The identifier of the index that contains the documents to
    #         delete.</p>
    #
    # @option params [Array<String>] :document_id_list
    #   <p>One or more identifiers for documents to delete from the index.</p>
    #
    # @option params [DataSourceSyncJobMetricTarget] :data_source_sync_job_metric_target
    #   <p>Maps a particular data source sync job to a particular data
    #               source.</p>
    #
    # @return [Types::BatchDeleteDocumentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_delete_document(
    #     index_id: 'IndexId', # required
    #     document_id_list: [
    #       'member'
    #     ], # required
    #     data_source_sync_job_metric_target: {
    #       data_source_id: 'DataSourceId', # required
    #       data_source_sync_job_id: 'DataSourceSyncJobId'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchDeleteDocumentOutput
    #   resp.data.failed_documents #=> Array<BatchDeleteDocumentResponseFailedDocument>
    #   resp.data.failed_documents[0] #=> Types::BatchDeleteDocumentResponseFailedDocument
    #   resp.data.failed_documents[0].id #=> String
    #   resp.data.failed_documents[0].error_code #=> String, one of ["InternalError", "InvalidRequest"]
    #   resp.data.failed_documents[0].error_message #=> String
    #
    def batch_delete_document(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchDeleteDocumentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchDeleteDocumentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchDeleteDocument
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::BatchDeleteDocument
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchDeleteDocument,
        stubs: @stubs,
        params_class: Params::BatchDeleteDocumentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_delete_document
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the indexing status for one or more documents submitted
    #             with the <a href="https://docs.aws.amazon.com/kendra/latest/dg/API_BatchPutDocument.html">
    #                 BatchPutDocument</a> API.</p>
    #         <p>When you use the <code>BatchPutDocument</code> API,
    #             documents are indexed asynchronously. You can use the
    #                 <code>BatchGetDocumentStatus</code> API to get the current
    #             status of a list of documents so that you can determine if they have
    #             been successfully indexed.</p>
    #         <p>You can also use the <code>BatchGetDocumentStatus</code> API
    #             to check the status of the <a href="https://docs.aws.amazon.com/kendra/latest/dg/API_BatchDeleteDocument.html">
    #                 BatchDeleteDocument</a> API. When a document is
    #             deleted from the index, Amazon Kendra returns <code>NOT_FOUND</code> as the
    #             status.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchGetDocumentStatusInput}.
    #
    # @option params [String] :index_id
    #   <p>The identifier of the index to add documents to. The index ID is
    #               returned by the <a href="https://docs.aws.amazon.com/kendra/latest/dg/API_CreateIndex.html">CreateIndex
    #               </a> API.</p>
    #
    # @option params [Array<DocumentInfo>] :document_info_list
    #   <p>A list of <code>DocumentInfo</code> objects that identify the
    #               documents for which to get the status. You identify the documents by
    #               their document ID and optional attributes.</p>
    #
    # @return [Types::BatchGetDocumentStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_document_status(
    #     index_id: 'IndexId', # required
    #     document_info_list: [
    #       {
    #         document_id: 'DocumentId', # required
    #         attributes: [
    #           {
    #             key: 'Key', # required
    #             value: {
    #               string_value: 'StringValue',
    #               string_list_value: [
    #                 'member'
    #               ],
    #               long_value: 1,
    #               date_value: Time.now
    #             } # required
    #           }
    #         ]
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchGetDocumentStatusOutput
    #   resp.data.errors #=> Array<BatchGetDocumentStatusResponseError>
    #   resp.data.errors[0] #=> Types::BatchGetDocumentStatusResponseError
    #   resp.data.errors[0].document_id #=> String
    #   resp.data.errors[0].error_code #=> String, one of ["InternalError", "InvalidRequest"]
    #   resp.data.errors[0].error_message #=> String
    #   resp.data.document_status_list #=> Array<Status>
    #   resp.data.document_status_list[0] #=> Types::Status
    #   resp.data.document_status_list[0].document_id #=> String
    #   resp.data.document_status_list[0].document_status #=> String, one of ["NOT_FOUND", "PROCESSING", "INDEXED", "UPDATED", "FAILED", "UPDATE_FAILED"]
    #   resp.data.document_status_list[0].failure_code #=> String
    #   resp.data.document_status_list[0].failure_reason #=> String
    #
    def batch_get_document_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchGetDocumentStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchGetDocumentStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchGetDocumentStatus
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::BatchGetDocumentStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchGetDocumentStatus,
        stubs: @stubs,
        params_class: Params::BatchGetDocumentStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_get_document_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds one or more documents to an index.</p>
    #          <p>The <code>BatchPutDocument</code> API enables you to ingest
    #       inline documents or a set of documents stored in an Amazon S3 bucket. Use
    #       this API to ingest your text and unstructured text into an index,
    #       add custom attributes to the documents, and to attach an access control
    #       list to the documents added to the index.</p>
    #          <p>The documents are indexed asynchronously. You can see the progress of
    #       the batch using Amazon Web Services CloudWatch. Any error messages related to processing
    #       the batch are sent to your Amazon Web Services CloudWatch log.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchPutDocumentInput}.
    #
    # @option params [String] :index_id
    #   <p>The identifier of the index to add the documents to. You need to
    #         create the index first using the <code>CreateIndex</code>
    #         API.</p>
    #
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of a role that is allowed to run the
    #           <code>BatchPutDocument</code> API. For more information, see
    #           <a href="https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html">IAM
    #             Roles for Amazon Kendra</a>.</p>
    #
    # @option params [Array<Document>] :documents
    #   <p>One or more documents to add to the index.</p>
    #            <p>Documents have the following file size limits.</p>
    #            <ul>
    #               <li>
    #                  <p>5 MB total size for inline documents</p>
    #               </li>
    #               <li>
    #                  <p>50 MB total size for files from an S3 bucket</p>
    #               </li>
    #               <li>
    #                  <p>5 MB extracted text for any file</p>
    #               </li>
    #            </ul>
    #            <p>For more information about file size and transaction per second
    #         quotas, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/quotas.html">Quotas</a>.</p>
    #
    # @option params [CustomDocumentEnrichmentConfiguration] :custom_document_enrichment_configuration
    #   <p>Configuration information for altering your document metadata and content during
    #               the document ingestion process when you use the <code>BatchPutDocument</code>
    #               API.</p>
    #           <p>For more information on how to create, modify and delete document metadata,
    #               or make other content alterations when you ingest documents into Amazon Kendra, see
    #               <a href="https://docs.aws.amazon.com/kendra/latest/dg/custom-document-enrichment.html">Customizing
    #                   document metadata during the ingestion process</a>.</p>
    #
    # @return [Types::BatchPutDocumentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_put_document(
    #     index_id: 'IndexId', # required
    #     role_arn: 'RoleArn',
    #     documents: [
    #       {
    #         id: 'Id', # required
    #         title: 'Title',
    #         blob: 'Blob',
    #         s3_path: {
    #           bucket: 'Bucket', # required
    #           key: 'Key' # required
    #         },
    #         attributes: [
    #           {
    #             key: 'Key', # required
    #             value: {
    #               string_value: 'StringValue',
    #               string_list_value: [
    #                 'member'
    #               ],
    #               long_value: 1,
    #               date_value: Time.now
    #             } # required
    #           }
    #         ],
    #         access_control_list: [
    #           {
    #             name: 'Name', # required
    #             type: 'USER', # required - accepts ["USER", "GROUP"]
    #             access: 'ALLOW', # required - accepts ["ALLOW", "DENY"]
    #             data_source_id: 'DataSourceId'
    #           }
    #         ],
    #         hierarchical_access_control_list: [
    #           {
    #           }
    #         ],
    #         content_type: 'PDF' # accepts ["PDF", "HTML", "MS_WORD", "PLAIN_TEXT", "PPT"]
    #       }
    #     ], # required
    #     custom_document_enrichment_configuration: {
    #       inline_configurations: [
    #         {
    #           condition: {
    #             condition_document_attribute_key: 'ConditionDocumentAttributeKey', # required
    #             operator: 'GreaterThan', # required - accepts ["GreaterThan", "GreaterThanOrEquals", "LessThan", "LessThanOrEquals", "Equals", "NotEquals", "Contains", "NotContains", "Exists", "NotExists", "BeginsWith"]
    #           },
    #           target: {
    #             target_document_attribute_key: 'TargetDocumentAttributeKey',
    #             target_document_attribute_value_deletion: false,
    #           },
    #           document_content_deletion: false
    #         }
    #       ],
    #       pre_extraction_hook_configuration: {
    #         lambda_arn: 'LambdaArn', # required
    #         s3_bucket: 'S3Bucket' # required
    #       },
    #       role_arn: 'RoleArn'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchPutDocumentOutput
    #   resp.data.failed_documents #=> Array<BatchPutDocumentResponseFailedDocument>
    #   resp.data.failed_documents[0] #=> Types::BatchPutDocumentResponseFailedDocument
    #   resp.data.failed_documents[0].id #=> String
    #   resp.data.failed_documents[0].error_code #=> String, one of ["InternalError", "InvalidRequest"]
    #   resp.data.failed_documents[0].error_message #=> String
    #
    def batch_put_document(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchPutDocumentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchPutDocumentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchPutDocument
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::ConflictException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::BatchPutDocument
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchPutDocument,
        stubs: @stubs,
        params_class: Params::BatchPutDocumentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_put_document
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Clears existing query suggestions from an index.</p>
    #         <p>This deletes existing suggestions only, not the queries
    #             in the query log. After you clear suggestions, Amazon Kendra learns
    #             new suggestions based on new queries added to the query log
    #             from the time you cleared suggestions. If you do not see any
    #             new suggestions, then please allow Amazon Kendra to collect
    #             enough queries to learn new suggestions.</p>
    #         <p>
    #             <code>ClearQuerySuggestions</code> is currently not supported in the
    #             Amazon Web Services GovCloud (US-West) region.</p>
    #
    # @param [Hash] params
    #   See {Types::ClearQuerySuggestionsInput}.
    #
    # @option params [String] :index_id
    #   <p>The identifier of the index you want to clear query suggestions from.</p>
    #
    # @return [Types::ClearQuerySuggestionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.clear_query_suggestions(
    #     index_id: 'IndexId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ClearQuerySuggestionsOutput
    #
    def clear_query_suggestions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ClearQuerySuggestionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ClearQuerySuggestionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ClearQuerySuggestions
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::ClearQuerySuggestions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ClearQuerySuggestions,
        stubs: @stubs,
        params_class: Params::ClearQuerySuggestionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :clear_query_suggestions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a data source that you want to use with an Amazon Kendra index. </p>
    #          <p>You specify a name, data source connector type and description for
    #       your data source. You also specify configuration information for the
    #       data source connector.</p>
    #          <p>
    #             <code>CreateDataSource</code> is a synchronous operation. The
    #       operation returns 200 if the data source was successfully created.
    #       Otherwise, an exception is raised.</p>
    #          <p>Amazon S3 and <a href="https://docs.aws.amazon.com/kendra/latest/dg/data-source-custom.html">custom</a> data sources are
    #       the only supported data sources in the Amazon Web Services GovCloud (US-West) region.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateDataSourceInput}.
    #
    # @option params [String] :name
    #   <p>A unique name for the data source. A data source name can't be changed
    #         without deleting and recreating the data source.</p>
    #
    # @option params [String] :index_id
    #   <p>The identifier of the index that should be associated with this data
    #         source.</p>
    #
    # @option params [String] :type
    #   <p>The type of repository that contains the data source.</p>
    #
    # @option params [DataSourceConfiguration] :configuration
    #   <p>Configuration information that is required to access the data source
    #         repository.</p>
    #            <p>You can't specify the <code>Configuration</code> parameter when the
    #           <code>Type</code> parameter is set to <code>CUSTOM</code>. If you do,
    #         you receive a <code>ValidationException</code> exception.</p>
    #            <p>The <code>Configuration</code> parameter is required for all other
    #         data sources.</p>
    #
    # @option params [String] :description
    #   <p>A description for the data source.</p>
    #
    # @option params [String] :schedule
    #   <p>Sets the frequency for Amazon Kendra to check the documents in your
    #         repository and update the index. If you don't set a schedule Amazon Kendra
    #         will not periodically update the index. You can call the
    #           <code>StartDataSourceSyncJob</code> API to update the
    #         index.</p>
    #            <p>You can't specify the <code>Schedule</code> parameter when the
    #           <code>Type</code> parameter is set to <code>CUSTOM</code>. If you do,
    #         you receive a <code>ValidationException</code> exception.</p>
    #
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of a role with permission to access the
    #         data source. For more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html">IAM Roles for
    #           Amazon Kendra</a>.</p>
    #            <p>You can't specify the <code>RoleArn</code> parameter when the
    #           <code>Type</code> parameter is set to <code>CUSTOM</code>. If you do,
    #         you receive a <code>ValidationException</code> exception.</p>
    #            <p>The <code>RoleArn</code> parameter is required for all other data
    #         sources.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of key-value pairs that identify the data source. You can use
    #         the tags to identify and organize your resources and to control access to
    #         resources.</p>
    #
    # @option params [String] :client_token
    #   <p>A token that you provide to identify the request to create a data
    #         source. Multiple calls to the <code>CreateDataSource</code> API with
    #         the same client token will create only one data source.</p>
    #
    # @option params [String] :language_code
    #   <p>The code for a language. This allows you to support a language for all
    #               documents when creating the data source. English is supported
    #               by default. For more information on supported languages, including their codes,
    #               see <a href="https://docs.aws.amazon.com/kendra/latest/dg/in-adding-languages.html">Adding
    #                   documents in languages other than English</a>.</p>
    #
    # @option params [CustomDocumentEnrichmentConfiguration] :custom_document_enrichment_configuration
    #   <p>Configuration information for altering document metadata and content during the
    #               document ingestion process when you create a data source.</p>
    #           <p>For more information on how to create, modify and delete document metadata, or make
    #               other content alterations when you ingest documents into Amazon Kendra, see
    #               <a href="https://docs.aws.amazon.com/kendra/latest/dg/custom-document-enrichment.html">Customizing
    #                   document metadata during the ingestion process</a>.</p>
    #
    # @return [Types::CreateDataSourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_data_source(
    #     name: 'Name', # required
    #     index_id: 'IndexId', # required
    #     type: 'S3', # required - accepts ["S3", "SHAREPOINT", "DATABASE", "SALESFORCE", "ONEDRIVE", "SERVICENOW", "CUSTOM", "CONFLUENCE", "GOOGLEDRIVE", "WEBCRAWLER", "WORKDOCS", "FSX", "SLACK", "BOX", "QUIP", "JIRA", "GITHUB"]
    #     configuration: {
    #       s3_configuration: {
    #         bucket_name: 'BucketName', # required
    #         inclusion_prefixes: [
    #           'member'
    #         ],
    #         documents_metadata_configuration: {
    #           s3_prefix: 'S3Prefix'
    #         },
    #         access_control_list_configuration: {
    #           key_path: 'KeyPath'
    #         }
    #       },
    #       share_point_configuration: {
    #         share_point_version: 'SHAREPOINT_2013', # required - accepts ["SHAREPOINT_2013", "SHAREPOINT_2016", "SHAREPOINT_ONLINE"]
    #         urls: [
    #           'member'
    #         ], # required
    #         secret_arn: 'SecretArn', # required
    #         crawl_attachments: false,
    #         use_change_log: false,
    #         vpc_configuration: {
    #           subnet_ids: [
    #             'member'
    #           ], # required
    #           security_group_ids: [
    #             'member'
    #           ] # required
    #         },
    #         field_mappings: [
    #           {
    #             data_source_field_name: 'DataSourceFieldName', # required
    #             date_field_format: 'DateFieldFormat',
    #             index_field_name: 'IndexFieldName' # required
    #           }
    #         ],
    #         document_title_field_name: 'DocumentTitleFieldName',
    #         disable_local_groups: false,
    #         ssl_certificate_s3_path: {
    #           bucket: 'Bucket', # required
    #           key: 'Key' # required
    #         }
    #       },
    #       database_configuration: {
    #         database_engine_type: 'RDS_AURORA_MYSQL', # required - accepts ["RDS_AURORA_MYSQL", "RDS_AURORA_POSTGRESQL", "RDS_MYSQL", "RDS_POSTGRESQL"]
    #         connection_configuration: {
    #           database_host: 'DatabaseHost', # required
    #           database_port: 1, # required
    #           database_name: 'DatabaseName', # required
    #           table_name: 'TableName', # required
    #           secret_arn: 'SecretArn' # required
    #         }, # required
    #         column_configuration: {
    #           document_id_column_name: 'DocumentIdColumnName', # required
    #           document_data_column_name: 'DocumentDataColumnName', # required
    #           document_title_column_name: 'DocumentTitleColumnName',
    #           change_detecting_columns: [
    #             'member'
    #           ] # required
    #         }, # required
    #         acl_configuration: {
    #           allowed_groups_column_name: 'AllowedGroupsColumnName' # required
    #         },
    #         sql_configuration: {
    #           query_identifiers_enclosing_option: 'DOUBLE_QUOTES' # accepts ["DOUBLE_QUOTES", "NONE"]
    #         }
    #       },
    #       salesforce_configuration: {
    #         server_url: 'ServerUrl', # required
    #         secret_arn: 'SecretArn', # required
    #         standard_object_configurations: [
    #           {
    #             name: 'ACCOUNT', # required - accepts ["ACCOUNT", "CAMPAIGN", "CASE", "CONTACT", "CONTRACT", "DOCUMENT", "GROUP", "IDEA", "LEAD", "OPPORTUNITY", "PARTNER", "PRICEBOOK", "PRODUCT", "PROFILE", "SOLUTION", "TASK", "USER"]
    #             document_data_field_name: 'DocumentDataFieldName', # required
    #             document_title_field_name: 'DocumentTitleFieldName',
    #           }
    #         ],
    #         knowledge_article_configuration: {
    #           included_states: [
    #             'DRAFT' # accepts ["DRAFT", "PUBLISHED", "ARCHIVED"]
    #           ], # required
    #           standard_knowledge_article_type_configuration: {
    #             document_data_field_name: 'DocumentDataFieldName', # required
    #             document_title_field_name: 'DocumentTitleFieldName',
    #           },
    #           custom_knowledge_article_type_configurations: [
    #             {
    #               name: 'Name', # required
    #               document_data_field_name: 'DocumentDataFieldName', # required
    #               document_title_field_name: 'DocumentTitleFieldName',
    #             }
    #           ]
    #         },
    #         chatter_feed_configuration: {
    #           document_data_field_name: 'DocumentDataFieldName', # required
    #           document_title_field_name: 'DocumentTitleFieldName',
    #           include_filter_types: [
    #             'ACTIVE_USER' # accepts ["ACTIVE_USER", "STANDARD_USER"]
    #           ]
    #         },
    #         crawl_attachments: false,
    #         standard_object_attachment_configuration: {
    #           document_title_field_name: 'DocumentTitleFieldName',
    #         },
    #       },
    #       one_drive_configuration: {
    #         tenant_domain: 'TenantDomain', # required
    #         secret_arn: 'SecretArn', # required
    #         one_drive_users: {
    #           one_drive_user_list: [
    #             'member'
    #           ],
    #         }, # required
    #         disable_local_groups: false
    #       },
    #       service_now_configuration: {
    #         host_url: 'HostUrl', # required
    #         secret_arn: 'SecretArn', # required
    #         service_now_build_version: 'LONDON', # required - accepts ["LONDON", "OTHERS"]
    #         knowledge_article_configuration: {
    #           crawl_attachments: false,
    #           document_data_field_name: 'DocumentDataFieldName', # required
    #           document_title_field_name: 'DocumentTitleFieldName',
    #           filter_query: 'FilterQuery'
    #         },
    #         service_catalog_configuration: {
    #           crawl_attachments: false,
    #           document_data_field_name: 'DocumentDataFieldName', # required
    #           document_title_field_name: 'DocumentTitleFieldName',
    #         },
    #         authentication_type: 'HTTP_BASIC' # accepts ["HTTP_BASIC", "OAUTH2"]
    #       },
    #       confluence_configuration: {
    #         server_url: 'ServerUrl', # required
    #         secret_arn: 'SecretArn', # required
    #         version: 'CLOUD', # required - accepts ["CLOUD", "SERVER"]
    #         space_configuration: {
    #           crawl_personal_spaces: false,
    #           crawl_archived_spaces: false,
    #           include_spaces: [
    #             'member'
    #           ],
    #           space_field_mappings: [
    #             {
    #               data_source_field_name: 'DISPLAY_URL', # accepts ["DISPLAY_URL", "ITEM_TYPE", "SPACE_KEY", "URL"]
    #               date_field_format: 'DateFieldFormat',
    #               index_field_name: 'IndexFieldName'
    #             }
    #           ]
    #         },
    #         page_configuration: {
    #           page_field_mappings: [
    #             {
    #               data_source_field_name: 'AUTHOR', # accepts ["AUTHOR", "CONTENT_STATUS", "CREATED_DATE", "DISPLAY_URL", "ITEM_TYPE", "LABELS", "MODIFIED_DATE", "PARENT_ID", "SPACE_KEY", "SPACE_NAME", "URL", "VERSION"]
    #               date_field_format: 'DateFieldFormat',
    #               index_field_name: 'IndexFieldName'
    #             }
    #           ]
    #         },
    #         blog_configuration: {
    #           blog_field_mappings: [
    #             {
    #               data_source_field_name: 'AUTHOR', # accepts ["AUTHOR", "DISPLAY_URL", "ITEM_TYPE", "LABELS", "PUBLISH_DATE", "SPACE_KEY", "SPACE_NAME", "URL", "VERSION"]
    #               date_field_format: 'DateFieldFormat',
    #               index_field_name: 'IndexFieldName'
    #             }
    #           ]
    #         },
    #         attachment_configuration: {
    #           crawl_attachments: false,
    #           attachment_field_mappings: [
    #             {
    #               data_source_field_name: 'AUTHOR', # accepts ["AUTHOR", "CONTENT_TYPE", "CREATED_DATE", "DISPLAY_URL", "FILE_SIZE", "ITEM_TYPE", "PARENT_ID", "SPACE_KEY", "SPACE_NAME", "URL", "VERSION"]
    #               date_field_format: 'DateFieldFormat',
    #               index_field_name: 'IndexFieldName'
    #             }
    #           ]
    #         },
    #       },
    #       google_drive_configuration: {
    #         secret_arn: 'SecretArn', # required
    #         exclude_mime_types: [
    #           'member'
    #         ],
    #         exclude_user_accounts: [
    #           'member'
    #         ],
    #         exclude_shared_drives: [
    #           'member'
    #         ]
    #       },
    #       web_crawler_configuration: {
    #         urls: {
    #           seed_url_configuration: {
    #             seed_urls: [
    #               'member'
    #             ], # required
    #             web_crawler_mode: 'HOST_ONLY' # accepts ["HOST_ONLY", "SUBDOMAINS", "EVERYTHING"]
    #           },
    #           site_maps_configuration: {
    #             site_maps: [
    #               'member'
    #             ] # required
    #           }
    #         }, # required
    #         crawl_depth: 1,
    #         max_links_per_page: 1,
    #         max_content_size_per_page_in_mega_bytes: 1.0,
    #         max_urls_per_minute_crawl_rate: 1,
    #         proxy_configuration: {
    #           host: 'Host', # required
    #           port: 1, # required
    #           credentials: 'Credentials'
    #         },
    #         authentication_configuration: {
    #           basic_authentication: [
    #             {
    #               host: 'Host', # required
    #               port: 1, # required
    #               credentials: 'Credentials' # required
    #             }
    #           ]
    #         }
    #       },
    #       work_docs_configuration: {
    #         organization_id: 'OrganizationId', # required
    #         crawl_comments: false,
    #         use_change_log: false,
    #       },
    #       fsx_configuration: {
    #         file_system_id: 'FileSystemId', # required
    #         file_system_type: 'WINDOWS', # required - accepts ["WINDOWS"]
    #         secret_arn: 'SecretArn',
    #       },
    #       slack_configuration: {
    #         team_id: 'TeamId', # required
    #         secret_arn: 'SecretArn', # required
    #         slack_entity_list: [
    #           'PUBLIC_CHANNEL' # accepts ["PUBLIC_CHANNEL", "PRIVATE_CHANNEL", "GROUP_MESSAGE", "DIRECT_MESSAGE"]
    #         ], # required
    #         use_change_log: false,
    #         crawl_bot_message: false,
    #         exclude_archived: false,
    #         since_crawl_date: 'SinceCrawlDate', # required
    #         look_back_period: 1,
    #         private_channel_filter: [
    #           'member'
    #         ],
    #         public_channel_filter: [
    #           'member'
    #         ],
    #       },
    #       box_configuration: {
    #         enterprise_id: 'EnterpriseId', # required
    #         secret_arn: 'SecretArn', # required
    #         use_change_log: false,
    #         crawl_comments: false,
    #         crawl_tasks: false,
    #         crawl_web_links: false,
    #       },
    #       quip_configuration: {
    #         domain: 'Domain', # required
    #         secret_arn: 'SecretArn', # required
    #         crawl_file_comments: false,
    #         crawl_chat_rooms: false,
    #         crawl_attachments: false,
    #         folder_ids: [
    #           'member'
    #         ],
    #       },
    #       jira_configuration: {
    #         jira_account_url: 'JiraAccountUrl', # required
    #         secret_arn: 'SecretArn', # required
    #         use_change_log: false,
    #         project: [
    #           'member'
    #         ],
    #         issue_type: [
    #           'member'
    #         ],
    #         status: [
    #           'member'
    #         ],
    #         issue_sub_entity_filter: [
    #           'COMMENTS' # accepts ["COMMENTS", "ATTACHMENTS", "WORKLOGS"]
    #         ],
    #       },
    #       git_hub_configuration: {
    #         saa_s_configuration: {
    #           organization_name: 'OrganizationName', # required
    #           host_url: 'HostUrl' # required
    #         },
    #         on_premise_configuration: {
    #           host_url: 'HostUrl', # required
    #           organization_name: 'OrganizationName', # required
    #         },
    #         type: 'SAAS', # accepts ["SAAS", "ON_PREMISE"]
    #         secret_arn: 'SecretArn', # required
    #         use_change_log: false,
    #         git_hub_document_crawl_properties: {
    #           crawl_repository_documents: false,
    #           crawl_issue: false,
    #           crawl_issue_comment: false,
    #           crawl_issue_comment_attachment: false,
    #           crawl_pull_request: false,
    #           crawl_pull_request_comment: false,
    #           crawl_pull_request_comment_attachment: false
    #         },
    #         repository_filter: [
    #           'member'
    #         ],
    #         inclusion_folder_name_patterns: [
    #           'member'
    #         ],
    #       }
    #     },
    #     description: 'Description',
    #     schedule: 'Schedule',
    #     role_arn: 'RoleArn',
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     client_token: 'ClientToken',
    #     language_code: 'LanguageCode',
    #     custom_document_enrichment_configuration: {
    #       inline_configurations: [
    #         {
    #           condition: {
    #             condition_document_attribute_key: 'ConditionDocumentAttributeKey', # required
    #             operator: 'GreaterThan', # required - accepts ["GreaterThan", "GreaterThanOrEquals", "LessThan", "LessThanOrEquals", "Equals", "NotEquals", "Contains", "NotContains", "Exists", "NotExists", "BeginsWith"]
    #             condition_on_value: {
    #               string_value: 'StringValue',
    #               string_list_value: [
    #                 'member'
    #               ],
    #               long_value: 1,
    #               date_value: Time.now
    #             }
    #           },
    #           target: {
    #             target_document_attribute_key: 'TargetDocumentAttributeKey',
    #             target_document_attribute_value_deletion: false,
    #           },
    #           document_content_deletion: false
    #         }
    #       ],
    #       pre_extraction_hook_configuration: {
    #         lambda_arn: 'LambdaArn', # required
    #         s3_bucket: 'S3Bucket' # required
    #       },
    #       role_arn: 'RoleArn'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateDataSourceOutput
    #   resp.data.id #=> String
    #
    def create_data_source(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDataSourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDataSourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDataSource
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::ConflictException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ResourceAlreadyExistException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::CreateDataSource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDataSource,
        stubs: @stubs,
        params_class: Params::CreateDataSourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_data_source
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an Amazon Kendra experience such as a search application. For more information
    #             on creating a search application experience, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html">Building a
    #                 search experience with no code</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateExperienceInput}.
    #
    # @option params [String] :name
    #   <p>A name for your Amazon Kendra experience.</p>
    #
    # @option params [String] :index_id
    #   <p>The identifier of the index for your Amazon Kendra experience.</p>
    #
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of a role with permission to access <code>Query</code>
    #               API, <code>QuerySuggestions</code> API, <code>SubmitFeedback</code>
    #               API, and Amazon Web Services SSO that stores your user and group information.
    #               For more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html">IAM roles for Amazon Kendra</a>.</p>
    #
    # @option params [ExperienceConfiguration] :configuration
    #   <p>Configuration information for your Amazon Kendra experience. This includes
    #               <code>ContentSourceConfiguration</code>, which specifies the data source IDs
    #               and/or FAQ IDs, and <code>UserIdentityConfiguration</code>, which specifies the
    #               user or group information to grant access to your Amazon Kendra experience.</p>
    #
    # @option params [String] :description
    #   <p>A description for your Amazon Kendra experience.</p>
    #
    # @option params [String] :client_token
    #   <p>A token that you provide to identify the request to create your Amazon Kendra experience.
    #               Multiple calls to the <code>CreateExperience</code> API with the same client
    #               token creates only one Amazon Kendra experience.</p>
    #
    # @return [Types::CreateExperienceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_experience(
    #     name: 'Name', # required
    #     index_id: 'IndexId', # required
    #     role_arn: 'RoleArn',
    #     configuration: {
    #       content_source_configuration: {
    #         data_source_ids: [
    #           'member'
    #         ],
    #         faq_ids: [
    #           'member'
    #         ],
    #         direct_put_content: false
    #       },
    #       user_identity_configuration: {
    #         identity_attribute_name: 'IdentityAttributeName'
    #       }
    #     },
    #     description: 'Description',
    #     client_token: 'ClientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateExperienceOutput
    #   resp.data.id #=> String
    #
    def create_experience(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateExperienceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateExperienceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateExperience
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::ConflictException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::CreateExperience
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateExperience,
        stubs: @stubs,
        params_class: Params::CreateExperienceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_experience
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an new set of frequently asked question (FAQ) questions and answers.</p>
    #         <p>Adding FAQs to an index is an asynchronous operation.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateFaqInput}.
    #
    # @option params [String] :index_id
    #   <p>The identifier of the index that contains the FAQ.</p>
    #
    # @option params [String] :name
    #   <p>The name that should be associated with the FAQ.</p>
    #
    # @option params [String] :description
    #   <p>A description of the FAQ.</p>
    #
    # @option params [S3Path] :s3_path
    #   <p>The S3 location of the FAQ input data.</p>
    #
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of a role with permission to access the S3 bucket that
    #               contains the FAQs. For more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html">IAM Roles for Amazon Kendra</a>.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of key-value pairs that identify the FAQ. You can use the tags to identify and
    #               organize your resources and to control access to resources.</p>
    #
    # @option params [String] :file_format
    #   <p>The format of the input file. You can choose between a basic CSV format, a CSV format
    #               that includes customs attributes in a header, and a JSON format that includes custom
    #               attributes.</p>
    #           <p>The format must match the format of the file stored in the S3 bucket identified in the
    #                   <code>S3Path</code> parameter.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/in-creating-faq.html">Adding questions and
    #               answers</a>.</p>
    #
    # @option params [String] :client_token
    #   <p>A token that you provide to identify the request to create a FAQ. Multiple calls to
    #               the <code>CreateFaqRequest</code> API with the same client token will create only
    #               one FAQ. </p>
    #
    # @option params [String] :language_code
    #   <p>The code for a language. This allows you to support a language
    #               for the FAQ document. English is supported by default.
    #               For more information on supported languages, including their codes,
    #               see <a href="https://docs.aws.amazon.com/kendra/latest/dg/in-adding-languages.html">Adding
    #                   documents in languages other than English</a>.</p>
    #
    # @return [Types::CreateFaqOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_faq(
    #     index_id: 'IndexId', # required
    #     name: 'Name', # required
    #     description: 'Description',
    #     s3_path: {
    #       bucket: 'Bucket', # required
    #       key: 'Key' # required
    #     }, # required
    #     role_arn: 'RoleArn', # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     file_format: 'CSV', # accepts ["CSV", "CSV_WITH_HEADER", "JSON"]
    #     client_token: 'ClientToken',
    #     language_code: 'LanguageCode'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateFaqOutput
    #   resp.data.id #=> String
    #
    def create_faq(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateFaqInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateFaqInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateFaq
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::ConflictException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::CreateFaq
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateFaq,
        stubs: @stubs,
        params_class: Params::CreateFaqOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_faq
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new Amazon Kendra index. Index creation is an asynchronous
    #       API. To determine if index creation has completed, check the
    #         <code>Status</code> field returned from a call to
    #         <code>DescribeIndex</code>. The <code>Status</code> field is set to
    #         <code>ACTIVE</code> when the index is ready to use.</p>
    #          <p>Once the index is active you can index your documents using the
    #         <code>BatchPutDocument</code> API or using one of the supported
    #       data sources. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateIndexInput}.
    #
    # @option params [String] :name
    #   <p>The name for the new index.</p>
    #
    # @option params [String] :edition
    #   <p>The Amazon Kendra edition to use for the index. Choose
    #           <code>DEVELOPER_EDITION</code> for indexes intended for development,
    #         testing, or proof of concept. Use <code>ENTERPRISE_EDITION</code> for your
    #         production databases. Once you set the edition for an index, it can't be
    #         changed.</p>
    #            <p>The <code>Edition</code> parameter is optional. If you don't supply a
    #         value, the default is <code>ENTERPRISE_EDITION</code>.</p>
    #            <p>For more information on quota limits for enterprise and developer editions,
    #         see <a href="https://docs.aws.amazon.com/kendra/latest/dg/quotas.html">Quotas</a>.</p>
    #
    # @option params [String] :role_arn
    #   <p>An Identity and Access Management (IAM) role that gives
    #         Amazon Kendra permissions to access your Amazon CloudWatch logs and
    #         metrics. This is also the role you use when you call the
    #           <code>BatchPutDocument</code> API to index documents from an
    #         Amazon S3 bucket.</p>
    #
    # @option params [ServerSideEncryptionConfiguration] :server_side_encryption_configuration
    #   <p>The identifier of the KMS customer managed key (CMK) that's
    #         used to encrypt data indexed by Amazon Kendra. Amazon Kendra doesn't support
    #         asymmetric CMKs.</p>
    #
    # @option params [String] :description
    #   <p>A description for the index.</p>
    #
    # @option params [String] :client_token
    #   <p>A token that you provide to identify the request to create an index.
    #         Multiple calls to the <code>CreateIndex</code> API with the same
    #         client token will create only one index.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of key-value pairs that identify the index. You can use the
    #         tags to identify and organize your resources and to control access to
    #         resources.</p>
    #
    # @option params [Array<UserTokenConfiguration>] :user_token_configurations
    #   <p>The user token configuration.</p>
    #
    # @option params [String] :user_context_policy
    #   <p>The user context policy.</p>
    #            <dl>
    #               <dt>ATTRIBUTE_FILTER</dt>
    #               <dd>
    #                  <p>All indexed content is searchable and displayable
    #                     for all users. If you want to filter search results on
    #                     user context, you can use the attribute filters of
    #                     <code>_user_id</code> and <code>_group_ids</code> or
    #                     you can provide user and group information in <code>UserContext</code>.
    #                  </p>
    #               </dd>
    #               <dt>USER_TOKEN</dt>
    #               <dd>
    #                  <p>Enables token-based user access control to filter
    #                     search results on user context. All documents with no
    #                     access control and all documents accessible to the user
    #                     will be searchable and displayable.
    #                  </p>
    #               </dd>
    #            </dl>
    #
    # @option params [UserGroupResolutionConfiguration] :user_group_resolution_configuration
    #   <p>Enables fetching access levels of groups and users from an Amazon Web Services Single Sign On
    #            identity source. To configure this, see
    #            <a href="https://docs.aws.amazon.com/kendra/latest/dg/API_UserGroupResolutionConfiguration.html">UserGroupResolutionConfiguration</a>.</p>
    #
    # @return [Types::CreateIndexOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_index(
    #     name: 'Name', # required
    #     edition: 'DEVELOPER_EDITION', # accepts ["DEVELOPER_EDITION", "ENTERPRISE_EDITION"]
    #     role_arn: 'RoleArn', # required
    #     server_side_encryption_configuration: {
    #       kms_key_id: 'KmsKeyId'
    #     },
    #     description: 'Description',
    #     client_token: 'ClientToken',
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     user_token_configurations: [
    #       {
    #         jwt_token_type_configuration: {
    #           key_location: 'URL', # required - accepts ["URL", "SECRET_MANAGER"]
    #           url: 'URL',
    #           secret_manager_arn: 'SecretManagerArn',
    #           user_name_attribute_field: 'UserNameAttributeField',
    #           group_attribute_field: 'GroupAttributeField',
    #           issuer: 'Issuer',
    #           claim_regex: 'ClaimRegex'
    #         },
    #         json_token_type_configuration: {
    #           user_name_attribute_field: 'UserNameAttributeField', # required
    #           group_attribute_field: 'GroupAttributeField' # required
    #         }
    #       }
    #     ],
    #     user_context_policy: 'ATTRIBUTE_FILTER', # accepts ["ATTRIBUTE_FILTER", "USER_TOKEN"]
    #     user_group_resolution_configuration: {
    #       user_group_resolution_mode: 'AWS_SSO' # required - accepts ["AWS_SSO", "NONE"]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateIndexOutput
    #   resp.data.id #=> String
    #
    def create_index(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateIndexInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateIndexInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateIndex
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::ConflictException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ResourceAlreadyExistException, Errors::ValidationException, Errors::ThrottlingException]),
        data_parser: Parsers::CreateIndex
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateIndex,
        stubs: @stubs,
        params_class: Params::CreateIndexOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_index
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a block list to exlcude certain queries from suggestions.</p>
    #         <p>Any query that contains words or phrases specified in the block
    #             list is blocked or filtered out from being shown as a suggestion.</p>
    #         <p>You need to provide the file location of your block list text file
    #             in your S3 bucket. In your text file, enter each block word or phrase
    #             on a separate line.</p>
    #         <p>For information on the current quota limits for block lists, see
    #             <a href="https://docs.aws.amazon.com/kendra/latest/dg/quotas.html">Quotas
    #                 for Amazon Kendra</a>.</p>
    #         <p>
    #             <code>CreateQuerySuggestionsBlockList</code> is currently not supported in the
    #             Amazon Web Services GovCloud (US-West) region.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateQuerySuggestionsBlockListInput}.
    #
    # @option params [String] :index_id
    #   <p>The identifier of the index you want to create a query suggestions block list for.</p>
    #
    # @option params [String] :name
    #   <p>A user friendly name for the block list.</p>
    #           <p>For example, the block list named 'offensive-words' includes all
    #               offensive words that could appear in user queries and need to be
    #               blocked from suggestions.</p>
    #
    # @option params [String] :description
    #   <p>A user-friendly description for the block list.</p>
    #           <p>For example, the description "List of all offensive words that can
    #               appear in user queries and need to be blocked from suggestions."</p>
    #
    # @option params [S3Path] :source_s3_path
    #   <p>The S3 path to your block list text file in your S3 bucket.</p>
    #           <p>Each block word or phrase should be on a separate line in a text file.</p>
    #               <p>For information on the current quota limits for block lists, see
    #                   <a href="https://docs.aws.amazon.com/kendra/latest/dg/quotas.html">Quotas
    #                       for Amazon Kendra</a>.</p>
    #
    # @option params [String] :client_token
    #   <p>A token that you provide to identify the request to create a
    #               query suggestions block list.</p>
    #
    # @option params [String] :role_arn
    #   <p>The IAM (Identity and Access Management) role used by Amazon Kendra to
    #               access the block list text file in your S3 bucket.</p>
    #           <p>You need permissions to the role ARN (Amazon Web Services Resource Name).
    #               The role needs S3 read permissions to your file in S3 and needs
    #               to give STS (Security Token Service) assume role permissions
    #               to Amazon Kendra.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A tag that you can assign to a block list that categorizes
    #               the block list.</p>
    #
    # @return [Types::CreateQuerySuggestionsBlockListOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_query_suggestions_block_list(
    #     index_id: 'IndexId', # required
    #     name: 'Name', # required
    #     description: 'Description',
    #     source_s3_path: {
    #       bucket: 'Bucket', # required
    #       key: 'Key' # required
    #     }, # required
    #     client_token: 'ClientToken',
    #     role_arn: 'RoleArn', # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateQuerySuggestionsBlockListOutput
    #   resp.data.id #=> String
    #
    def create_query_suggestions_block_list(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateQuerySuggestionsBlockListInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateQuerySuggestionsBlockListInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateQuerySuggestionsBlockList
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::ConflictException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::CreateQuerySuggestionsBlockList
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateQuerySuggestionsBlockList,
        stubs: @stubs,
        params_class: Params::CreateQuerySuggestionsBlockListOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_query_suggestions_block_list
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a thesaurus for an index. The thesaurus
    #       contains a list of synonyms in Solr format.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateThesaurusInput}.
    #
    # @option params [String] :index_id
    #   <p>The unique identifier of the index for the new thesaurus.
    #         </p>
    #
    # @option params [String] :name
    #   <p>The name for the new thesaurus.</p>
    #
    # @option params [String] :description
    #   <p>The description for the new thesaurus.</p>
    #
    # @option params [String] :role_arn
    #   <p>An IAM role that gives Amazon Kendra permissions
    #            to access thesaurus file specified in <code>SourceS3Path</code>.
    #         </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of key-value pairs that identify the thesaurus. You can use
    #            the tags to identify and organize your resources and to control
    #            access to resources.
    #         </p>
    #
    # @option params [S3Path] :source_s3_path
    #   <p>The thesaurus file Amazon S3 source path.
    #         </p>
    #
    # @option params [String] :client_token
    #   <p>A token that you provide to identify the request to create a
    #            thesaurus. Multiple calls to the <code>CreateThesaurus</code> API
    #            with the same client token will create only one thesaurus.
    #         </p>
    #
    # @return [Types::CreateThesaurusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_thesaurus(
    #     index_id: 'IndexId', # required
    #     name: 'Name', # required
    #     description: 'Description',
    #     role_arn: 'RoleArn', # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     source_s3_path: {
    #       bucket: 'Bucket', # required
    #       key: 'Key' # required
    #     }, # required
    #     client_token: 'ClientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateThesaurusOutput
    #   resp.data.id #=> String
    #
    def create_thesaurus(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateThesaurusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateThesaurusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateThesaurus
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::ConflictException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::CreateThesaurus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateThesaurus,
        stubs: @stubs,
        params_class: Params::CreateThesaurusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_thesaurus
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an Amazon Kendra data source. An exception is not thrown if the
    #       data source is already being deleted. While the data source is being
    #       deleted, the <code>Status</code> field returned by a call to the
    #         <code>DescribeDataSource</code> API is set to
    #         <code>DELETING</code>. For more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/delete-data-source.html">Deleting Data Sources</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDataSourceInput}.
    #
    # @option params [String] :id
    #   <p>The unique identifier of the data source to delete.</p>
    #
    # @option params [String] :index_id
    #   <p>The unique identifier of the index associated with the data
    #         source.</p>
    #
    # @return [Types::DeleteDataSourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_data_source(
    #     id: 'Id', # required
    #     index_id: 'IndexId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDataSourceOutput
    #
    def delete_data_source(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDataSourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDataSourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDataSource
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DeleteDataSource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDataSource,
        stubs: @stubs,
        params_class: Params::DeleteDataSourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_data_source
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes your Amazon Kendra experience such as a search application. For more information on
    #             creating a search application experience, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html">Building a search
    #                 experience with no code</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteExperienceInput}.
    #
    # @option params [String] :id
    #   <p>The identifier of your Amazon Kendra experience you want to delete.</p>
    #
    # @option params [String] :index_id
    #   <p>The identifier of the index for your Amazon Kendra experience you want to delete.</p>
    #
    # @return [Types::DeleteExperienceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_experience(
    #     id: 'Id', # required
    #     index_id: 'IndexId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteExperienceOutput
    #
    def delete_experience(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteExperienceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteExperienceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteExperience
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DeleteExperience
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteExperience,
        stubs: @stubs,
        params_class: Params::DeleteExperienceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_experience
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes an FAQ from an index.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteFaqInput}.
    #
    # @option params [String] :id
    #   <p>The identifier of the FAQ to remove.</p>
    #
    # @option params [String] :index_id
    #   <p>The index to remove the FAQ from.</p>
    #
    # @return [Types::DeleteFaqOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_faq(
    #     id: 'Id', # required
    #     index_id: 'IndexId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteFaqOutput
    #
    def delete_faq(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteFaqInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteFaqInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteFaq
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DeleteFaq
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteFaq,
        stubs: @stubs,
        params_class: Params::DeleteFaqOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_faq
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an existing Amazon Kendra index. An exception is not thrown if
    #       the index is already being deleted. While the index is being deleted, the
    #         <code>Status</code> field returned by a call to the
    #         <code>DescribeIndex</code> API is set to
    #       <code>DELETING</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteIndexInput}.
    #
    # @option params [String] :id
    #   <p>The identifier of the index to delete.</p>
    #
    # @return [Types::DeleteIndexOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_index(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteIndexOutput
    #
    def delete_index(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteIndexInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteIndexInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteIndex
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DeleteIndex
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteIndex,
        stubs: @stubs,
        params_class: Params::DeleteIndexOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_index
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a group so that all users and sub groups that belong to the group can
    #             no longer access documents only available to that group.</p>
    #         <p>For example, after deleting the group "Summer Interns", all interns who
    #             belonged to that group no longer see intern-only documents in their search
    #             results.</p>
    #         <p>If you want to delete or replace users or sub groups of a group, you need to
    #             use the <code>PutPrincipalMapping</code> operation. For example, if a user in
    #             the group "Engineering" leaves the engineering team and another user takes
    #             their place, you provide an updated list of users or sub groups that belong
    #             to the "Engineering" group when calling <code>PutPrincipalMapping</code>. You
    #             can update your internal list of users or sub groups and input this list
    #             when calling <code>PutPrincipalMapping</code>.</p>
    #         <p>
    #             <code>DeletePrincipalMapping</code> is currently not supported in the
    #             Amazon Web Services GovCloud (US-West) region.</p>
    #
    # @param [Hash] params
    #   See {Types::DeletePrincipalMappingInput}.
    #
    # @option params [String] :index_id
    #   <p>The identifier of the index you want to delete a group from.</p>
    #
    # @option params [String] :data_source_id
    #   <p>The identifier of the data source you want to delete a group from.</p>
    #           <p>This is useful if a group is tied to multiple data sources and you want
    #               to delete a group from accessing documents in a certain data source. For example,
    #               the groups "Research", "Engineering", and "Sales and Marketing" are all tied to
    #               the company's documents stored in the data sources Confluence and Salesforce.
    #               You want to delete "Research" and "Engineering" groups from Salesforce, so that
    #               these groups cannot access customer-related documents stored in Salesforce.
    #               Only "Sales and Marketing" should access documents in the Salesforce data source.</p>
    #
    # @option params [String] :group_id
    #   <p>The identifier of the group you want to delete.</p>
    #
    # @option params [Integer] :ordering_id
    #   <p>The timestamp identifier you specify to ensure Amazon Kendra does not
    #               override the latest <code>DELETE</code> action with previous actions.
    #               The highest number ID, which is the ordering ID, is the latest action
    #               you want to process and apply on top of other actions with lower number
    #               IDs. This prevents previous actions with lower number IDs from possibly
    #               overriding the latest action.</p>
    #           <p>The ordering ID can be the UNIX time of the last update you made to a group
    #               members list. You would then provide this list when calling
    #               <code>PutPrincipalMapping</code>. This ensures your <code>DELETE</code> action
    #               for that updated group with the latest members list doesn't get overwritten
    #               by earlier <code>DELETE</code> actions for the same group which are yet to
    #               be processed.</p>
    #           <p>The default ordering ID is the current UNIX time in milliseconds that the
    #               action was received by Amazon Kendra.
    #           </p>
    #
    # @return [Types::DeletePrincipalMappingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_principal_mapping(
    #     index_id: 'IndexId', # required
    #     data_source_id: 'DataSourceId',
    #     group_id: 'GroupId', # required
    #     ordering_id: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeletePrincipalMappingOutput
    #
    def delete_principal_mapping(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeletePrincipalMappingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeletePrincipalMappingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeletePrincipalMapping
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DeletePrincipalMapping
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeletePrincipalMapping,
        stubs: @stubs,
        params_class: Params::DeletePrincipalMappingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_principal_mapping
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a block list used for query suggestions for an index.</p>
    #         <p>A deleted block list might not take effect right away. Amazon Kendra
    #             needs to refresh the entire suggestions list to add back the
    #             queries that were previously blocked.</p>
    #         <p>
    #             <code>DeleteQuerySuggestionsBlockList</code> is currently not supported in the
    #             Amazon Web Services GovCloud (US-West) region.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteQuerySuggestionsBlockListInput}.
    #
    # @option params [String] :index_id
    #   <p>The identifier of the you want to delete a block list from.</p>
    #
    # @option params [String] :id
    #   <p>The unique identifier of the block list that needs to be deleted.</p>
    #
    # @return [Types::DeleteQuerySuggestionsBlockListOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_query_suggestions_block_list(
    #     index_id: 'IndexId', # required
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteQuerySuggestionsBlockListOutput
    #
    def delete_query_suggestions_block_list(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteQuerySuggestionsBlockListInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteQuerySuggestionsBlockListInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteQuerySuggestionsBlockList
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DeleteQuerySuggestionsBlockList
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteQuerySuggestionsBlockList,
        stubs: @stubs,
        params_class: Params::DeleteQuerySuggestionsBlockListOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_query_suggestions_block_list
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an existing Amazon Kendra thesaurus.
    #       </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteThesaurusInput}.
    #
    # @option params [String] :id
    #   <p>The identifier of the thesaurus to delete.</p>
    #
    # @option params [String] :index_id
    #   <p>The identifier of the index associated with the thesaurus to delete.</p>
    #
    # @return [Types::DeleteThesaurusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_thesaurus(
    #     id: 'Id', # required
    #     index_id: 'IndexId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteThesaurusOutput
    #
    def delete_thesaurus(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteThesaurusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteThesaurusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteThesaurus
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DeleteThesaurus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteThesaurus,
        stubs: @stubs,
        params_class: Params::DeleteThesaurusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_thesaurus
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about an Amazon Kendra data source.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDataSourceInput}.
    #
    # @option params [String] :id
    #   <p>The unique identifier of the data source to describe.</p>
    #
    # @option params [String] :index_id
    #   <p>The identifier of the index that contains the data source.</p>
    #
    # @return [Types::DescribeDataSourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_data_source(
    #     id: 'Id', # required
    #     index_id: 'IndexId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDataSourceOutput
    #   resp.data.id #=> String
    #   resp.data.index_id #=> String
    #   resp.data.name #=> String
    #   resp.data.type #=> String, one of ["S3", "SHAREPOINT", "DATABASE", "SALESFORCE", "ONEDRIVE", "SERVICENOW", "CUSTOM", "CONFLUENCE", "GOOGLEDRIVE", "WEBCRAWLER", "WORKDOCS", "FSX", "SLACK", "BOX", "QUIP", "JIRA", "GITHUB"]
    #   resp.data.configuration #=> Types::DataSourceConfiguration
    #   resp.data.configuration.s3_configuration #=> Types::S3DataSourceConfiguration
    #   resp.data.configuration.s3_configuration.bucket_name #=> String
    #   resp.data.configuration.s3_configuration.inclusion_prefixes #=> Array<String>
    #   resp.data.configuration.s3_configuration.inclusion_prefixes[0] #=> String
    #   resp.data.configuration.s3_configuration.inclusion_patterns #=> Array<String>
    #   resp.data.configuration.s3_configuration.exclusion_patterns #=> Array<String>
    #   resp.data.configuration.s3_configuration.documents_metadata_configuration #=> Types::DocumentsMetadataConfiguration
    #   resp.data.configuration.s3_configuration.documents_metadata_configuration.s3_prefix #=> String
    #   resp.data.configuration.s3_configuration.access_control_list_configuration #=> Types::AccessControlListConfiguration
    #   resp.data.configuration.s3_configuration.access_control_list_configuration.key_path #=> String
    #   resp.data.configuration.share_point_configuration #=> Types::SharePointConfiguration
    #   resp.data.configuration.share_point_configuration.share_point_version #=> String, one of ["SHAREPOINT_2013", "SHAREPOINT_2016", "SHAREPOINT_ONLINE"]
    #   resp.data.configuration.share_point_configuration.urls #=> Array<String>
    #   resp.data.configuration.share_point_configuration.urls[0] #=> String
    #   resp.data.configuration.share_point_configuration.secret_arn #=> String
    #   resp.data.configuration.share_point_configuration.crawl_attachments #=> Boolean
    #   resp.data.configuration.share_point_configuration.use_change_log #=> Boolean
    #   resp.data.configuration.share_point_configuration.inclusion_patterns #=> Array<String>
    #   resp.data.configuration.share_point_configuration.exclusion_patterns #=> Array<String>
    #   resp.data.configuration.share_point_configuration.vpc_configuration #=> Types::DataSourceVpcConfiguration
    #   resp.data.configuration.share_point_configuration.vpc_configuration.subnet_ids #=> Array<String>
    #   resp.data.configuration.share_point_configuration.vpc_configuration.subnet_ids[0] #=> String
    #   resp.data.configuration.share_point_configuration.vpc_configuration.security_group_ids #=> Array<String>
    #   resp.data.configuration.share_point_configuration.vpc_configuration.security_group_ids[0] #=> String
    #   resp.data.configuration.share_point_configuration.field_mappings #=> Array<DataSourceToIndexFieldMapping>
    #   resp.data.configuration.share_point_configuration.field_mappings[0] #=> Types::DataSourceToIndexFieldMapping
    #   resp.data.configuration.share_point_configuration.field_mappings[0].data_source_field_name #=> String
    #   resp.data.configuration.share_point_configuration.field_mappings[0].date_field_format #=> String
    #   resp.data.configuration.share_point_configuration.field_mappings[0].index_field_name #=> String
    #   resp.data.configuration.share_point_configuration.document_title_field_name #=> String
    #   resp.data.configuration.share_point_configuration.disable_local_groups #=> Boolean
    #   resp.data.configuration.share_point_configuration.ssl_certificate_s3_path #=> Types::S3Path
    #   resp.data.configuration.share_point_configuration.ssl_certificate_s3_path.bucket #=> String
    #   resp.data.configuration.share_point_configuration.ssl_certificate_s3_path.key #=> String
    #   resp.data.configuration.database_configuration #=> Types::DatabaseConfiguration
    #   resp.data.configuration.database_configuration.database_engine_type #=> String, one of ["RDS_AURORA_MYSQL", "RDS_AURORA_POSTGRESQL", "RDS_MYSQL", "RDS_POSTGRESQL"]
    #   resp.data.configuration.database_configuration.connection_configuration #=> Types::ConnectionConfiguration
    #   resp.data.configuration.database_configuration.connection_configuration.database_host #=> String
    #   resp.data.configuration.database_configuration.connection_configuration.database_port #=> Integer
    #   resp.data.configuration.database_configuration.connection_configuration.database_name #=> String
    #   resp.data.configuration.database_configuration.connection_configuration.table_name #=> String
    #   resp.data.configuration.database_configuration.connection_configuration.secret_arn #=> String
    #   resp.data.configuration.database_configuration.vpc_configuration #=> Types::DataSourceVpcConfiguration
    #   resp.data.configuration.database_configuration.column_configuration #=> Types::ColumnConfiguration
    #   resp.data.configuration.database_configuration.column_configuration.document_id_column_name #=> String
    #   resp.data.configuration.database_configuration.column_configuration.document_data_column_name #=> String
    #   resp.data.configuration.database_configuration.column_configuration.document_title_column_name #=> String
    #   resp.data.configuration.database_configuration.column_configuration.field_mappings #=> Array<DataSourceToIndexFieldMapping>
    #   resp.data.configuration.database_configuration.column_configuration.change_detecting_columns #=> Array<String>
    #   resp.data.configuration.database_configuration.column_configuration.change_detecting_columns[0] #=> String
    #   resp.data.configuration.database_configuration.acl_configuration #=> Types::AclConfiguration
    #   resp.data.configuration.database_configuration.acl_configuration.allowed_groups_column_name #=> String
    #   resp.data.configuration.database_configuration.sql_configuration #=> Types::SqlConfiguration
    #   resp.data.configuration.database_configuration.sql_configuration.query_identifiers_enclosing_option #=> String, one of ["DOUBLE_QUOTES", "NONE"]
    #   resp.data.configuration.salesforce_configuration #=> Types::SalesforceConfiguration
    #   resp.data.configuration.salesforce_configuration.server_url #=> String
    #   resp.data.configuration.salesforce_configuration.secret_arn #=> String
    #   resp.data.configuration.salesforce_configuration.standard_object_configurations #=> Array<SalesforceStandardObjectConfiguration>
    #   resp.data.configuration.salesforce_configuration.standard_object_configurations[0] #=> Types::SalesforceStandardObjectConfiguration
    #   resp.data.configuration.salesforce_configuration.standard_object_configurations[0].name #=> String, one of ["ACCOUNT", "CAMPAIGN", "CASE", "CONTACT", "CONTRACT", "DOCUMENT", "GROUP", "IDEA", "LEAD", "OPPORTUNITY", "PARTNER", "PRICEBOOK", "PRODUCT", "PROFILE", "SOLUTION", "TASK", "USER"]
    #   resp.data.configuration.salesforce_configuration.standard_object_configurations[0].document_data_field_name #=> String
    #   resp.data.configuration.salesforce_configuration.standard_object_configurations[0].document_title_field_name #=> String
    #   resp.data.configuration.salesforce_configuration.standard_object_configurations[0].field_mappings #=> Array<DataSourceToIndexFieldMapping>
    #   resp.data.configuration.salesforce_configuration.knowledge_article_configuration #=> Types::SalesforceKnowledgeArticleConfiguration
    #   resp.data.configuration.salesforce_configuration.knowledge_article_configuration.included_states #=> Array<String>
    #   resp.data.configuration.salesforce_configuration.knowledge_article_configuration.included_states[0] #=> String, one of ["DRAFT", "PUBLISHED", "ARCHIVED"]
    #   resp.data.configuration.salesforce_configuration.knowledge_article_configuration.standard_knowledge_article_type_configuration #=> Types::SalesforceStandardKnowledgeArticleTypeConfiguration
    #   resp.data.configuration.salesforce_configuration.knowledge_article_configuration.standard_knowledge_article_type_configuration.document_data_field_name #=> String
    #   resp.data.configuration.salesforce_configuration.knowledge_article_configuration.standard_knowledge_article_type_configuration.document_title_field_name #=> String
    #   resp.data.configuration.salesforce_configuration.knowledge_article_configuration.standard_knowledge_article_type_configuration.field_mappings #=> Array<DataSourceToIndexFieldMapping>
    #   resp.data.configuration.salesforce_configuration.knowledge_article_configuration.custom_knowledge_article_type_configurations #=> Array<SalesforceCustomKnowledgeArticleTypeConfiguration>
    #   resp.data.configuration.salesforce_configuration.knowledge_article_configuration.custom_knowledge_article_type_configurations[0] #=> Types::SalesforceCustomKnowledgeArticleTypeConfiguration
    #   resp.data.configuration.salesforce_configuration.knowledge_article_configuration.custom_knowledge_article_type_configurations[0].name #=> String
    #   resp.data.configuration.salesforce_configuration.knowledge_article_configuration.custom_knowledge_article_type_configurations[0].document_data_field_name #=> String
    #   resp.data.configuration.salesforce_configuration.knowledge_article_configuration.custom_knowledge_article_type_configurations[0].document_title_field_name #=> String
    #   resp.data.configuration.salesforce_configuration.knowledge_article_configuration.custom_knowledge_article_type_configurations[0].field_mappings #=> Array<DataSourceToIndexFieldMapping>
    #   resp.data.configuration.salesforce_configuration.chatter_feed_configuration #=> Types::SalesforceChatterFeedConfiguration
    #   resp.data.configuration.salesforce_configuration.chatter_feed_configuration.document_data_field_name #=> String
    #   resp.data.configuration.salesforce_configuration.chatter_feed_configuration.document_title_field_name #=> String
    #   resp.data.configuration.salesforce_configuration.chatter_feed_configuration.field_mappings #=> Array<DataSourceToIndexFieldMapping>
    #   resp.data.configuration.salesforce_configuration.chatter_feed_configuration.include_filter_types #=> Array<String>
    #   resp.data.configuration.salesforce_configuration.chatter_feed_configuration.include_filter_types[0] #=> String, one of ["ACTIVE_USER", "STANDARD_USER"]
    #   resp.data.configuration.salesforce_configuration.crawl_attachments #=> Boolean
    #   resp.data.configuration.salesforce_configuration.standard_object_attachment_configuration #=> Types::SalesforceStandardObjectAttachmentConfiguration
    #   resp.data.configuration.salesforce_configuration.standard_object_attachment_configuration.document_title_field_name #=> String
    #   resp.data.configuration.salesforce_configuration.standard_object_attachment_configuration.field_mappings #=> Array<DataSourceToIndexFieldMapping>
    #   resp.data.configuration.salesforce_configuration.include_attachment_file_patterns #=> Array<String>
    #   resp.data.configuration.salesforce_configuration.exclude_attachment_file_patterns #=> Array<String>
    #   resp.data.configuration.one_drive_configuration #=> Types::OneDriveConfiguration
    #   resp.data.configuration.one_drive_configuration.tenant_domain #=> String
    #   resp.data.configuration.one_drive_configuration.secret_arn #=> String
    #   resp.data.configuration.one_drive_configuration.one_drive_users #=> Types::OneDriveUsers
    #   resp.data.configuration.one_drive_configuration.one_drive_users.one_drive_user_list #=> Array<String>
    #   resp.data.configuration.one_drive_configuration.one_drive_users.one_drive_user_list[0] #=> String
    #   resp.data.configuration.one_drive_configuration.one_drive_users.one_drive_user_s3_path #=> Types::S3Path
    #   resp.data.configuration.one_drive_configuration.inclusion_patterns #=> Array<String>
    #   resp.data.configuration.one_drive_configuration.exclusion_patterns #=> Array<String>
    #   resp.data.configuration.one_drive_configuration.field_mappings #=> Array<DataSourceToIndexFieldMapping>
    #   resp.data.configuration.one_drive_configuration.disable_local_groups #=> Boolean
    #   resp.data.configuration.service_now_configuration #=> Types::ServiceNowConfiguration
    #   resp.data.configuration.service_now_configuration.host_url #=> String
    #   resp.data.configuration.service_now_configuration.secret_arn #=> String
    #   resp.data.configuration.service_now_configuration.service_now_build_version #=> String, one of ["LONDON", "OTHERS"]
    #   resp.data.configuration.service_now_configuration.knowledge_article_configuration #=> Types::ServiceNowKnowledgeArticleConfiguration
    #   resp.data.configuration.service_now_configuration.knowledge_article_configuration.crawl_attachments #=> Boolean
    #   resp.data.configuration.service_now_configuration.knowledge_article_configuration.include_attachment_file_patterns #=> Array<String>
    #   resp.data.configuration.service_now_configuration.knowledge_article_configuration.exclude_attachment_file_patterns #=> Array<String>
    #   resp.data.configuration.service_now_configuration.knowledge_article_configuration.document_data_field_name #=> String
    #   resp.data.configuration.service_now_configuration.knowledge_article_configuration.document_title_field_name #=> String
    #   resp.data.configuration.service_now_configuration.knowledge_article_configuration.field_mappings #=> Array<DataSourceToIndexFieldMapping>
    #   resp.data.configuration.service_now_configuration.knowledge_article_configuration.filter_query #=> String
    #   resp.data.configuration.service_now_configuration.service_catalog_configuration #=> Types::ServiceNowServiceCatalogConfiguration
    #   resp.data.configuration.service_now_configuration.service_catalog_configuration.crawl_attachments #=> Boolean
    #   resp.data.configuration.service_now_configuration.service_catalog_configuration.include_attachment_file_patterns #=> Array<String>
    #   resp.data.configuration.service_now_configuration.service_catalog_configuration.exclude_attachment_file_patterns #=> Array<String>
    #   resp.data.configuration.service_now_configuration.service_catalog_configuration.document_data_field_name #=> String
    #   resp.data.configuration.service_now_configuration.service_catalog_configuration.document_title_field_name #=> String
    #   resp.data.configuration.service_now_configuration.service_catalog_configuration.field_mappings #=> Array<DataSourceToIndexFieldMapping>
    #   resp.data.configuration.service_now_configuration.authentication_type #=> String, one of ["HTTP_BASIC", "OAUTH2"]
    #   resp.data.configuration.confluence_configuration #=> Types::ConfluenceConfiguration
    #   resp.data.configuration.confluence_configuration.server_url #=> String
    #   resp.data.configuration.confluence_configuration.secret_arn #=> String
    #   resp.data.configuration.confluence_configuration.version #=> String, one of ["CLOUD", "SERVER"]
    #   resp.data.configuration.confluence_configuration.space_configuration #=> Types::ConfluenceSpaceConfiguration
    #   resp.data.configuration.confluence_configuration.space_configuration.crawl_personal_spaces #=> Boolean
    #   resp.data.configuration.confluence_configuration.space_configuration.crawl_archived_spaces #=> Boolean
    #   resp.data.configuration.confluence_configuration.space_configuration.include_spaces #=> Array<String>
    #   resp.data.configuration.confluence_configuration.space_configuration.include_spaces[0] #=> String
    #   resp.data.configuration.confluence_configuration.space_configuration.exclude_spaces #=> Array<String>
    #   resp.data.configuration.confluence_configuration.space_configuration.space_field_mappings #=> Array<ConfluenceSpaceToIndexFieldMapping>
    #   resp.data.configuration.confluence_configuration.space_configuration.space_field_mappings[0] #=> Types::ConfluenceSpaceToIndexFieldMapping
    #   resp.data.configuration.confluence_configuration.space_configuration.space_field_mappings[0].data_source_field_name #=> String, one of ["DISPLAY_URL", "ITEM_TYPE", "SPACE_KEY", "URL"]
    #   resp.data.configuration.confluence_configuration.space_configuration.space_field_mappings[0].date_field_format #=> String
    #   resp.data.configuration.confluence_configuration.space_configuration.space_field_mappings[0].index_field_name #=> String
    #   resp.data.configuration.confluence_configuration.page_configuration #=> Types::ConfluencePageConfiguration
    #   resp.data.configuration.confluence_configuration.page_configuration.page_field_mappings #=> Array<ConfluencePageToIndexFieldMapping>
    #   resp.data.configuration.confluence_configuration.page_configuration.page_field_mappings[0] #=> Types::ConfluencePageToIndexFieldMapping
    #   resp.data.configuration.confluence_configuration.page_configuration.page_field_mappings[0].data_source_field_name #=> String, one of ["AUTHOR", "CONTENT_STATUS", "CREATED_DATE", "DISPLAY_URL", "ITEM_TYPE", "LABELS", "MODIFIED_DATE", "PARENT_ID", "SPACE_KEY", "SPACE_NAME", "URL", "VERSION"]
    #   resp.data.configuration.confluence_configuration.page_configuration.page_field_mappings[0].date_field_format #=> String
    #   resp.data.configuration.confluence_configuration.page_configuration.page_field_mappings[0].index_field_name #=> String
    #   resp.data.configuration.confluence_configuration.blog_configuration #=> Types::ConfluenceBlogConfiguration
    #   resp.data.configuration.confluence_configuration.blog_configuration.blog_field_mappings #=> Array<ConfluenceBlogToIndexFieldMapping>
    #   resp.data.configuration.confluence_configuration.blog_configuration.blog_field_mappings[0] #=> Types::ConfluenceBlogToIndexFieldMapping
    #   resp.data.configuration.confluence_configuration.blog_configuration.blog_field_mappings[0].data_source_field_name #=> String, one of ["AUTHOR", "DISPLAY_URL", "ITEM_TYPE", "LABELS", "PUBLISH_DATE", "SPACE_KEY", "SPACE_NAME", "URL", "VERSION"]
    #   resp.data.configuration.confluence_configuration.blog_configuration.blog_field_mappings[0].date_field_format #=> String
    #   resp.data.configuration.confluence_configuration.blog_configuration.blog_field_mappings[0].index_field_name #=> String
    #   resp.data.configuration.confluence_configuration.attachment_configuration #=> Types::ConfluenceAttachmentConfiguration
    #   resp.data.configuration.confluence_configuration.attachment_configuration.crawl_attachments #=> Boolean
    #   resp.data.configuration.confluence_configuration.attachment_configuration.attachment_field_mappings #=> Array<ConfluenceAttachmentToIndexFieldMapping>
    #   resp.data.configuration.confluence_configuration.attachment_configuration.attachment_field_mappings[0] #=> Types::ConfluenceAttachmentToIndexFieldMapping
    #   resp.data.configuration.confluence_configuration.attachment_configuration.attachment_field_mappings[0].data_source_field_name #=> String, one of ["AUTHOR", "CONTENT_TYPE", "CREATED_DATE", "DISPLAY_URL", "FILE_SIZE", "ITEM_TYPE", "PARENT_ID", "SPACE_KEY", "SPACE_NAME", "URL", "VERSION"]
    #   resp.data.configuration.confluence_configuration.attachment_configuration.attachment_field_mappings[0].date_field_format #=> String
    #   resp.data.configuration.confluence_configuration.attachment_configuration.attachment_field_mappings[0].index_field_name #=> String
    #   resp.data.configuration.confluence_configuration.vpc_configuration #=> Types::DataSourceVpcConfiguration
    #   resp.data.configuration.confluence_configuration.inclusion_patterns #=> Array<String>
    #   resp.data.configuration.confluence_configuration.exclusion_patterns #=> Array<String>
    #   resp.data.configuration.google_drive_configuration #=> Types::GoogleDriveConfiguration
    #   resp.data.configuration.google_drive_configuration.secret_arn #=> String
    #   resp.data.configuration.google_drive_configuration.inclusion_patterns #=> Array<String>
    #   resp.data.configuration.google_drive_configuration.exclusion_patterns #=> Array<String>
    #   resp.data.configuration.google_drive_configuration.field_mappings #=> Array<DataSourceToIndexFieldMapping>
    #   resp.data.configuration.google_drive_configuration.exclude_mime_types #=> Array<String>
    #   resp.data.configuration.google_drive_configuration.exclude_mime_types[0] #=> String
    #   resp.data.configuration.google_drive_configuration.exclude_user_accounts #=> Array<String>
    #   resp.data.configuration.google_drive_configuration.exclude_user_accounts[0] #=> String
    #   resp.data.configuration.google_drive_configuration.exclude_shared_drives #=> Array<String>
    #   resp.data.configuration.google_drive_configuration.exclude_shared_drives[0] #=> String
    #   resp.data.configuration.web_crawler_configuration #=> Types::WebCrawlerConfiguration
    #   resp.data.configuration.web_crawler_configuration.urls #=> Types::Urls
    #   resp.data.configuration.web_crawler_configuration.urls.seed_url_configuration #=> Types::SeedUrlConfiguration
    #   resp.data.configuration.web_crawler_configuration.urls.seed_url_configuration.seed_urls #=> Array<String>
    #   resp.data.configuration.web_crawler_configuration.urls.seed_url_configuration.seed_urls[0] #=> String
    #   resp.data.configuration.web_crawler_configuration.urls.seed_url_configuration.web_crawler_mode #=> String, one of ["HOST_ONLY", "SUBDOMAINS", "EVERYTHING"]
    #   resp.data.configuration.web_crawler_configuration.urls.site_maps_configuration #=> Types::SiteMapsConfiguration
    #   resp.data.configuration.web_crawler_configuration.urls.site_maps_configuration.site_maps #=> Array<String>
    #   resp.data.configuration.web_crawler_configuration.urls.site_maps_configuration.site_maps[0] #=> String
    #   resp.data.configuration.web_crawler_configuration.crawl_depth #=> Integer
    #   resp.data.configuration.web_crawler_configuration.max_links_per_page #=> Integer
    #   resp.data.configuration.web_crawler_configuration.max_content_size_per_page_in_mega_bytes #=> Float
    #   resp.data.configuration.web_crawler_configuration.max_urls_per_minute_crawl_rate #=> Integer
    #   resp.data.configuration.web_crawler_configuration.url_inclusion_patterns #=> Array<String>
    #   resp.data.configuration.web_crawler_configuration.url_exclusion_patterns #=> Array<String>
    #   resp.data.configuration.web_crawler_configuration.proxy_configuration #=> Types::ProxyConfiguration
    #   resp.data.configuration.web_crawler_configuration.proxy_configuration.host #=> String
    #   resp.data.configuration.web_crawler_configuration.proxy_configuration.port #=> Integer
    #   resp.data.configuration.web_crawler_configuration.proxy_configuration.credentials #=> String
    #   resp.data.configuration.web_crawler_configuration.authentication_configuration #=> Types::AuthenticationConfiguration
    #   resp.data.configuration.web_crawler_configuration.authentication_configuration.basic_authentication #=> Array<BasicAuthenticationConfiguration>
    #   resp.data.configuration.web_crawler_configuration.authentication_configuration.basic_authentication[0] #=> Types::BasicAuthenticationConfiguration
    #   resp.data.configuration.web_crawler_configuration.authentication_configuration.basic_authentication[0].host #=> String
    #   resp.data.configuration.web_crawler_configuration.authentication_configuration.basic_authentication[0].port #=> Integer
    #   resp.data.configuration.web_crawler_configuration.authentication_configuration.basic_authentication[0].credentials #=> String
    #   resp.data.configuration.work_docs_configuration #=> Types::WorkDocsConfiguration
    #   resp.data.configuration.work_docs_configuration.organization_id #=> String
    #   resp.data.configuration.work_docs_configuration.crawl_comments #=> Boolean
    #   resp.data.configuration.work_docs_configuration.use_change_log #=> Boolean
    #   resp.data.configuration.work_docs_configuration.inclusion_patterns #=> Array<String>
    #   resp.data.configuration.work_docs_configuration.exclusion_patterns #=> Array<String>
    #   resp.data.configuration.work_docs_configuration.field_mappings #=> Array<DataSourceToIndexFieldMapping>
    #   resp.data.configuration.fsx_configuration #=> Types::FsxConfiguration
    #   resp.data.configuration.fsx_configuration.file_system_id #=> String
    #   resp.data.configuration.fsx_configuration.file_system_type #=> String, one of ["WINDOWS"]
    #   resp.data.configuration.fsx_configuration.vpc_configuration #=> Types::DataSourceVpcConfiguration
    #   resp.data.configuration.fsx_configuration.secret_arn #=> String
    #   resp.data.configuration.fsx_configuration.inclusion_patterns #=> Array<String>
    #   resp.data.configuration.fsx_configuration.exclusion_patterns #=> Array<String>
    #   resp.data.configuration.fsx_configuration.field_mappings #=> Array<DataSourceToIndexFieldMapping>
    #   resp.data.configuration.slack_configuration #=> Types::SlackConfiguration
    #   resp.data.configuration.slack_configuration.team_id #=> String
    #   resp.data.configuration.slack_configuration.secret_arn #=> String
    #   resp.data.configuration.slack_configuration.vpc_configuration #=> Types::DataSourceVpcConfiguration
    #   resp.data.configuration.slack_configuration.slack_entity_list #=> Array<String>
    #   resp.data.configuration.slack_configuration.slack_entity_list[0] #=> String, one of ["PUBLIC_CHANNEL", "PRIVATE_CHANNEL", "GROUP_MESSAGE", "DIRECT_MESSAGE"]
    #   resp.data.configuration.slack_configuration.use_change_log #=> Boolean
    #   resp.data.configuration.slack_configuration.crawl_bot_message #=> Boolean
    #   resp.data.configuration.slack_configuration.exclude_archived #=> Boolean
    #   resp.data.configuration.slack_configuration.since_crawl_date #=> String
    #   resp.data.configuration.slack_configuration.look_back_period #=> Integer
    #   resp.data.configuration.slack_configuration.private_channel_filter #=> Array<String>
    #   resp.data.configuration.slack_configuration.private_channel_filter[0] #=> String
    #   resp.data.configuration.slack_configuration.public_channel_filter #=> Array<String>
    #   resp.data.configuration.slack_configuration.public_channel_filter[0] #=> String
    #   resp.data.configuration.slack_configuration.inclusion_patterns #=> Array<String>
    #   resp.data.configuration.slack_configuration.exclusion_patterns #=> Array<String>
    #   resp.data.configuration.slack_configuration.field_mappings #=> Array<DataSourceToIndexFieldMapping>
    #   resp.data.configuration.box_configuration #=> Types::BoxConfiguration
    #   resp.data.configuration.box_configuration.enterprise_id #=> String
    #   resp.data.configuration.box_configuration.secret_arn #=> String
    #   resp.data.configuration.box_configuration.use_change_log #=> Boolean
    #   resp.data.configuration.box_configuration.crawl_comments #=> Boolean
    #   resp.data.configuration.box_configuration.crawl_tasks #=> Boolean
    #   resp.data.configuration.box_configuration.crawl_web_links #=> Boolean
    #   resp.data.configuration.box_configuration.file_field_mappings #=> Array<DataSourceToIndexFieldMapping>
    #   resp.data.configuration.box_configuration.task_field_mappings #=> Array<DataSourceToIndexFieldMapping>
    #   resp.data.configuration.box_configuration.comment_field_mappings #=> Array<DataSourceToIndexFieldMapping>
    #   resp.data.configuration.box_configuration.web_link_field_mappings #=> Array<DataSourceToIndexFieldMapping>
    #   resp.data.configuration.box_configuration.inclusion_patterns #=> Array<String>
    #   resp.data.configuration.box_configuration.exclusion_patterns #=> Array<String>
    #   resp.data.configuration.box_configuration.vpc_configuration #=> Types::DataSourceVpcConfiguration
    #   resp.data.configuration.quip_configuration #=> Types::QuipConfiguration
    #   resp.data.configuration.quip_configuration.domain #=> String
    #   resp.data.configuration.quip_configuration.secret_arn #=> String
    #   resp.data.configuration.quip_configuration.crawl_file_comments #=> Boolean
    #   resp.data.configuration.quip_configuration.crawl_chat_rooms #=> Boolean
    #   resp.data.configuration.quip_configuration.crawl_attachments #=> Boolean
    #   resp.data.configuration.quip_configuration.folder_ids #=> Array<String>
    #   resp.data.configuration.quip_configuration.folder_ids[0] #=> String
    #   resp.data.configuration.quip_configuration.thread_field_mappings #=> Array<DataSourceToIndexFieldMapping>
    #   resp.data.configuration.quip_configuration.message_field_mappings #=> Array<DataSourceToIndexFieldMapping>
    #   resp.data.configuration.quip_configuration.attachment_field_mappings #=> Array<DataSourceToIndexFieldMapping>
    #   resp.data.configuration.quip_configuration.inclusion_patterns #=> Array<String>
    #   resp.data.configuration.quip_configuration.exclusion_patterns #=> Array<String>
    #   resp.data.configuration.quip_configuration.vpc_configuration #=> Types::DataSourceVpcConfiguration
    #   resp.data.configuration.jira_configuration #=> Types::JiraConfiguration
    #   resp.data.configuration.jira_configuration.jira_account_url #=> String
    #   resp.data.configuration.jira_configuration.secret_arn #=> String
    #   resp.data.configuration.jira_configuration.use_change_log #=> Boolean
    #   resp.data.configuration.jira_configuration.project #=> Array<String>
    #   resp.data.configuration.jira_configuration.project[0] #=> String
    #   resp.data.configuration.jira_configuration.issue_type #=> Array<String>
    #   resp.data.configuration.jira_configuration.issue_type[0] #=> String
    #   resp.data.configuration.jira_configuration.status #=> Array<String>
    #   resp.data.configuration.jira_configuration.status[0] #=> String
    #   resp.data.configuration.jira_configuration.issue_sub_entity_filter #=> Array<String>
    #   resp.data.configuration.jira_configuration.issue_sub_entity_filter[0] #=> String, one of ["COMMENTS", "ATTACHMENTS", "WORKLOGS"]
    #   resp.data.configuration.jira_configuration.attachment_field_mappings #=> Array<DataSourceToIndexFieldMapping>
    #   resp.data.configuration.jira_configuration.comment_field_mappings #=> Array<DataSourceToIndexFieldMapping>
    #   resp.data.configuration.jira_configuration.issue_field_mappings #=> Array<DataSourceToIndexFieldMapping>
    #   resp.data.configuration.jira_configuration.project_field_mappings #=> Array<DataSourceToIndexFieldMapping>
    #   resp.data.configuration.jira_configuration.work_log_field_mappings #=> Array<DataSourceToIndexFieldMapping>
    #   resp.data.configuration.jira_configuration.inclusion_patterns #=> Array<String>
    #   resp.data.configuration.jira_configuration.exclusion_patterns #=> Array<String>
    #   resp.data.configuration.jira_configuration.vpc_configuration #=> Types::DataSourceVpcConfiguration
    #   resp.data.configuration.git_hub_configuration #=> Types::GitHubConfiguration
    #   resp.data.configuration.git_hub_configuration.saa_s_configuration #=> Types::SaaSConfiguration
    #   resp.data.configuration.git_hub_configuration.saa_s_configuration.organization_name #=> String
    #   resp.data.configuration.git_hub_configuration.saa_s_configuration.host_url #=> String
    #   resp.data.configuration.git_hub_configuration.on_premise_configuration #=> Types::OnPremiseConfiguration
    #   resp.data.configuration.git_hub_configuration.on_premise_configuration.host_url #=> String
    #   resp.data.configuration.git_hub_configuration.on_premise_configuration.organization_name #=> String
    #   resp.data.configuration.git_hub_configuration.on_premise_configuration.ssl_certificate_s3_path #=> Types::S3Path
    #   resp.data.configuration.git_hub_configuration.type #=> String, one of ["SAAS", "ON_PREMISE"]
    #   resp.data.configuration.git_hub_configuration.secret_arn #=> String
    #   resp.data.configuration.git_hub_configuration.use_change_log #=> Boolean
    #   resp.data.configuration.git_hub_configuration.git_hub_document_crawl_properties #=> Types::GitHubDocumentCrawlProperties
    #   resp.data.configuration.git_hub_configuration.git_hub_document_crawl_properties.crawl_repository_documents #=> Boolean
    #   resp.data.configuration.git_hub_configuration.git_hub_document_crawl_properties.crawl_issue #=> Boolean
    #   resp.data.configuration.git_hub_configuration.git_hub_document_crawl_properties.crawl_issue_comment #=> Boolean
    #   resp.data.configuration.git_hub_configuration.git_hub_document_crawl_properties.crawl_issue_comment_attachment #=> Boolean
    #   resp.data.configuration.git_hub_configuration.git_hub_document_crawl_properties.crawl_pull_request #=> Boolean
    #   resp.data.configuration.git_hub_configuration.git_hub_document_crawl_properties.crawl_pull_request_comment #=> Boolean
    #   resp.data.configuration.git_hub_configuration.git_hub_document_crawl_properties.crawl_pull_request_comment_attachment #=> Boolean
    #   resp.data.configuration.git_hub_configuration.repository_filter #=> Array<String>
    #   resp.data.configuration.git_hub_configuration.repository_filter[0] #=> String
    #   resp.data.configuration.git_hub_configuration.inclusion_folder_name_patterns #=> Array<String>
    #   resp.data.configuration.git_hub_configuration.inclusion_folder_name_patterns[0] #=> String
    #   resp.data.configuration.git_hub_configuration.inclusion_file_type_patterns #=> Array<String>
    #   resp.data.configuration.git_hub_configuration.inclusion_file_name_patterns #=> Array<String>
    #   resp.data.configuration.git_hub_configuration.exclusion_folder_name_patterns #=> Array<String>
    #   resp.data.configuration.git_hub_configuration.exclusion_file_type_patterns #=> Array<String>
    #   resp.data.configuration.git_hub_configuration.exclusion_file_name_patterns #=> Array<String>
    #   resp.data.configuration.git_hub_configuration.vpc_configuration #=> Types::DataSourceVpcConfiguration
    #   resp.data.configuration.git_hub_configuration.git_hub_repository_configuration_field_mappings #=> Array<DataSourceToIndexFieldMapping>
    #   resp.data.configuration.git_hub_configuration.git_hub_commit_configuration_field_mappings #=> Array<DataSourceToIndexFieldMapping>
    #   resp.data.configuration.git_hub_configuration.git_hub_issue_document_configuration_field_mappings #=> Array<DataSourceToIndexFieldMapping>
    #   resp.data.configuration.git_hub_configuration.git_hub_issue_comment_configuration_field_mappings #=> Array<DataSourceToIndexFieldMapping>
    #   resp.data.configuration.git_hub_configuration.git_hub_issue_attachment_configuration_field_mappings #=> Array<DataSourceToIndexFieldMapping>
    #   resp.data.configuration.git_hub_configuration.git_hub_pull_request_comment_configuration_field_mappings #=> Array<DataSourceToIndexFieldMapping>
    #   resp.data.configuration.git_hub_configuration.git_hub_pull_request_document_configuration_field_mappings #=> Array<DataSourceToIndexFieldMapping>
    #   resp.data.configuration.git_hub_configuration.git_hub_pull_request_document_attachment_configuration_field_mappings #=> Array<DataSourceToIndexFieldMapping>
    #   resp.data.created_at #=> Time
    #   resp.data.updated_at #=> Time
    #   resp.data.description #=> String
    #   resp.data.status #=> String, one of ["CREATING", "DELETING", "FAILED", "UPDATING", "ACTIVE"]
    #   resp.data.schedule #=> String
    #   resp.data.role_arn #=> String
    #   resp.data.error_message #=> String
    #   resp.data.language_code #=> String
    #   resp.data.custom_document_enrichment_configuration #=> Types::CustomDocumentEnrichmentConfiguration
    #   resp.data.custom_document_enrichment_configuration.inline_configurations #=> Array<InlineCustomDocumentEnrichmentConfiguration>
    #   resp.data.custom_document_enrichment_configuration.inline_configurations[0] #=> Types::InlineCustomDocumentEnrichmentConfiguration
    #   resp.data.custom_document_enrichment_configuration.inline_configurations[0].condition #=> Types::DocumentAttributeCondition
    #   resp.data.custom_document_enrichment_configuration.inline_configurations[0].condition.condition_document_attribute_key #=> String
    #   resp.data.custom_document_enrichment_configuration.inline_configurations[0].condition.operator #=> String, one of ["GreaterThan", "GreaterThanOrEquals", "LessThan", "LessThanOrEquals", "Equals", "NotEquals", "Contains", "NotContains", "Exists", "NotExists", "BeginsWith"]
    #   resp.data.custom_document_enrichment_configuration.inline_configurations[0].condition.condition_on_value #=> Types::DocumentAttributeValue
    #   resp.data.custom_document_enrichment_configuration.inline_configurations[0].condition.condition_on_value.string_value #=> String
    #   resp.data.custom_document_enrichment_configuration.inline_configurations[0].condition.condition_on_value.string_list_value #=> Array<String>
    #   resp.data.custom_document_enrichment_configuration.inline_configurations[0].condition.condition_on_value.string_list_value[0] #=> String
    #   resp.data.custom_document_enrichment_configuration.inline_configurations[0].condition.condition_on_value.long_value #=> Integer
    #   resp.data.custom_document_enrichment_configuration.inline_configurations[0].condition.condition_on_value.date_value #=> Time
    #   resp.data.custom_document_enrichment_configuration.inline_configurations[0].target #=> Types::DocumentAttributeTarget
    #   resp.data.custom_document_enrichment_configuration.inline_configurations[0].target.target_document_attribute_key #=> String
    #   resp.data.custom_document_enrichment_configuration.inline_configurations[0].target.target_document_attribute_value_deletion #=> Boolean
    #   resp.data.custom_document_enrichment_configuration.inline_configurations[0].target.target_document_attribute_value #=> Types::DocumentAttributeValue
    #   resp.data.custom_document_enrichment_configuration.inline_configurations[0].document_content_deletion #=> Boolean
    #   resp.data.custom_document_enrichment_configuration.pre_extraction_hook_configuration #=> Types::HookConfiguration
    #   resp.data.custom_document_enrichment_configuration.pre_extraction_hook_configuration.invocation_condition #=> Types::DocumentAttributeCondition
    #   resp.data.custom_document_enrichment_configuration.pre_extraction_hook_configuration.lambda_arn #=> String
    #   resp.data.custom_document_enrichment_configuration.pre_extraction_hook_configuration.s3_bucket #=> String
    #   resp.data.custom_document_enrichment_configuration.post_extraction_hook_configuration #=> Types::HookConfiguration
    #   resp.data.custom_document_enrichment_configuration.role_arn #=> String
    #
    def describe_data_source(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDataSourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDataSourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDataSource
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DescribeDataSource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDataSource,
        stubs: @stubs,
        params_class: Params::DescribeDataSourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_data_source
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about your Amazon Kendra experience such as a search application.
    #             For more information on creating a search application experience,
    #             see <a href="https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html">Building
    #                 a search experience with no code</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeExperienceInput}.
    #
    # @option params [String] :id
    #   <p>The identifier of your Amazon Kendra experience you want to get information on.</p>
    #
    # @option params [String] :index_id
    #   <p>The identifier of the index for your Amazon Kendra experience you want to get
    #               information on.</p>
    #
    # @return [Types::DescribeExperienceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_experience(
    #     id: 'Id', # required
    #     index_id: 'IndexId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeExperienceOutput
    #   resp.data.id #=> String
    #   resp.data.index_id #=> String
    #   resp.data.name #=> String
    #   resp.data.endpoints #=> Array<ExperienceEndpoint>
    #   resp.data.endpoints[0] #=> Types::ExperienceEndpoint
    #   resp.data.endpoints[0].endpoint_type #=> String, one of ["HOME"]
    #   resp.data.endpoints[0].endpoint #=> String
    #   resp.data.configuration #=> Types::ExperienceConfiguration
    #   resp.data.configuration.content_source_configuration #=> Types::ContentSourceConfiguration
    #   resp.data.configuration.content_source_configuration.data_source_ids #=> Array<String>
    #   resp.data.configuration.content_source_configuration.data_source_ids[0] #=> String
    #   resp.data.configuration.content_source_configuration.faq_ids #=> Array<String>
    #   resp.data.configuration.content_source_configuration.faq_ids[0] #=> String
    #   resp.data.configuration.content_source_configuration.direct_put_content #=> Boolean
    #   resp.data.configuration.user_identity_configuration #=> Types::UserIdentityConfiguration
    #   resp.data.configuration.user_identity_configuration.identity_attribute_name #=> String
    #   resp.data.created_at #=> Time
    #   resp.data.updated_at #=> Time
    #   resp.data.description #=> String
    #   resp.data.status #=> String, one of ["CREATING", "ACTIVE", "DELETING", "FAILED"]
    #   resp.data.role_arn #=> String
    #   resp.data.error_message #=> String
    #
    def describe_experience(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeExperienceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeExperienceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeExperience
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DescribeExperience
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeExperience,
        stubs: @stubs,
        params_class: Params::DescribeExperienceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_experience
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about an FAQ list.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeFaqInput}.
    #
    # @option params [String] :id
    #   <p>The unique identifier of the FAQ.</p>
    #
    # @option params [String] :index_id
    #   <p>The identifier of the index that contains the FAQ.</p>
    #
    # @return [Types::DescribeFaqOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_faq(
    #     id: 'Id', # required
    #     index_id: 'IndexId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeFaqOutput
    #   resp.data.id #=> String
    #   resp.data.index_id #=> String
    #   resp.data.name #=> String
    #   resp.data.description #=> String
    #   resp.data.created_at #=> Time
    #   resp.data.updated_at #=> Time
    #   resp.data.s3_path #=> Types::S3Path
    #   resp.data.s3_path.bucket #=> String
    #   resp.data.s3_path.key #=> String
    #   resp.data.status #=> String, one of ["CREATING", "UPDATING", "ACTIVE", "DELETING", "FAILED"]
    #   resp.data.role_arn #=> String
    #   resp.data.error_message #=> String
    #   resp.data.file_format #=> String, one of ["CSV", "CSV_WITH_HEADER", "JSON"]
    #   resp.data.language_code #=> String
    #
    def describe_faq(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeFaqInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeFaqInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeFaq
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DescribeFaq
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeFaq,
        stubs: @stubs,
        params_class: Params::DescribeFaqOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_faq
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes an existing Amazon Kendra index.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeIndexInput}.
    #
    # @option params [String] :id
    #   <p>The identifier of the index to describe.</p>
    #
    # @return [Types::DescribeIndexOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_index(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeIndexOutput
    #   resp.data.name #=> String
    #   resp.data.id #=> String
    #   resp.data.edition #=> String, one of ["DEVELOPER_EDITION", "ENTERPRISE_EDITION"]
    #   resp.data.role_arn #=> String
    #   resp.data.server_side_encryption_configuration #=> Types::ServerSideEncryptionConfiguration
    #   resp.data.server_side_encryption_configuration.kms_key_id #=> String
    #   resp.data.status #=> String, one of ["CREATING", "ACTIVE", "DELETING", "FAILED", "UPDATING", "SYSTEM_UPDATING"]
    #   resp.data.description #=> String
    #   resp.data.created_at #=> Time
    #   resp.data.updated_at #=> Time
    #   resp.data.document_metadata_configurations #=> Array<DocumentMetadataConfiguration>
    #   resp.data.document_metadata_configurations[0] #=> Types::DocumentMetadataConfiguration
    #   resp.data.document_metadata_configurations[0].name #=> String
    #   resp.data.document_metadata_configurations[0].type #=> String, one of ["STRING_VALUE", "STRING_LIST_VALUE", "LONG_VALUE", "DATE_VALUE"]
    #   resp.data.document_metadata_configurations[0].relevance #=> Types::Relevance
    #   resp.data.document_metadata_configurations[0].relevance.freshness #=> Boolean
    #   resp.data.document_metadata_configurations[0].relevance.importance #=> Integer
    #   resp.data.document_metadata_configurations[0].relevance.duration #=> String
    #   resp.data.document_metadata_configurations[0].relevance.rank_order #=> String, one of ["ASCENDING", "DESCENDING"]
    #   resp.data.document_metadata_configurations[0].relevance.value_importance_map #=> Hash<String, Integer>
    #   resp.data.document_metadata_configurations[0].relevance.value_importance_map['key'] #=> Integer
    #   resp.data.document_metadata_configurations[0].search #=> Types::Search
    #   resp.data.document_metadata_configurations[0].search.facetable #=> Boolean
    #   resp.data.document_metadata_configurations[0].search.searchable #=> Boolean
    #   resp.data.document_metadata_configurations[0].search.displayable #=> Boolean
    #   resp.data.document_metadata_configurations[0].search.sortable #=> Boolean
    #   resp.data.index_statistics #=> Types::IndexStatistics
    #   resp.data.index_statistics.faq_statistics #=> Types::FaqStatistics
    #   resp.data.index_statistics.faq_statistics.indexed_question_answers_count #=> Integer
    #   resp.data.index_statistics.text_document_statistics #=> Types::TextDocumentStatistics
    #   resp.data.index_statistics.text_document_statistics.indexed_text_documents_count #=> Integer
    #   resp.data.index_statistics.text_document_statistics.indexed_text_bytes #=> Integer
    #   resp.data.error_message #=> String
    #   resp.data.capacity_units #=> Types::CapacityUnitsConfiguration
    #   resp.data.capacity_units.storage_capacity_units #=> Integer
    #   resp.data.capacity_units.query_capacity_units #=> Integer
    #   resp.data.user_token_configurations #=> Array<UserTokenConfiguration>
    #   resp.data.user_token_configurations[0] #=> Types::UserTokenConfiguration
    #   resp.data.user_token_configurations[0].jwt_token_type_configuration #=> Types::JwtTokenTypeConfiguration
    #   resp.data.user_token_configurations[0].jwt_token_type_configuration.key_location #=> String, one of ["URL", "SECRET_MANAGER"]
    #   resp.data.user_token_configurations[0].jwt_token_type_configuration.url #=> String
    #   resp.data.user_token_configurations[0].jwt_token_type_configuration.secret_manager_arn #=> String
    #   resp.data.user_token_configurations[0].jwt_token_type_configuration.user_name_attribute_field #=> String
    #   resp.data.user_token_configurations[0].jwt_token_type_configuration.group_attribute_field #=> String
    #   resp.data.user_token_configurations[0].jwt_token_type_configuration.issuer #=> String
    #   resp.data.user_token_configurations[0].jwt_token_type_configuration.claim_regex #=> String
    #   resp.data.user_token_configurations[0].json_token_type_configuration #=> Types::JsonTokenTypeConfiguration
    #   resp.data.user_token_configurations[0].json_token_type_configuration.user_name_attribute_field #=> String
    #   resp.data.user_token_configurations[0].json_token_type_configuration.group_attribute_field #=> String
    #   resp.data.user_context_policy #=> String, one of ["ATTRIBUTE_FILTER", "USER_TOKEN"]
    #   resp.data.user_group_resolution_configuration #=> Types::UserGroupResolutionConfiguration
    #   resp.data.user_group_resolution_configuration.user_group_resolution_mode #=> String, one of ["AWS_SSO", "NONE"]
    #
    def describe_index(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeIndexInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeIndexInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeIndex
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DescribeIndex
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeIndex,
        stubs: @stubs,
        params_class: Params::DescribeIndexOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_index
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the processing of <code>PUT</code> and <code>DELETE</code> actions
    #             for mapping users to their groups. This includes information on the status of
    #             actions currently processing or yet to be processed, when actions were last updated,
    #             when actions were received by Amazon Kendra, the latest action that should process
    #             and apply after other actions, and useful error messages if an action could
    #             not be processed.</p>
    #         <p>
    #             <code>DescribePrincipalMapping</code> is currently not supported in the
    #             Amazon Web Services GovCloud (US-West) region.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribePrincipalMappingInput}.
    #
    # @option params [String] :index_id
    #   <p>The identifier of the index required to check the processing of
    #               <code>PUT</code> and <code>DELETE</code> actions for mapping users
    #               to their groups.</p>
    #
    # @option params [String] :data_source_id
    #   <p>The identifier of the data source to check the processing of
    #               <code>PUT</code> and <code>DELETE</code> actions for mapping
    #               users to their groups.</p>
    #
    # @option params [String] :group_id
    #   <p>The identifier of the group required to check the processing of
    #               <code>PUT</code> and <code>DELETE</code> actions for mapping users
    #               to their groups.</p>
    #
    # @return [Types::DescribePrincipalMappingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_principal_mapping(
    #     index_id: 'IndexId', # required
    #     data_source_id: 'DataSourceId',
    #     group_id: 'GroupId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribePrincipalMappingOutput
    #   resp.data.index_id #=> String
    #   resp.data.data_source_id #=> String
    #   resp.data.group_id #=> String
    #   resp.data.group_ordering_id_summaries #=> Array<GroupOrderingIdSummary>
    #   resp.data.group_ordering_id_summaries[0] #=> Types::GroupOrderingIdSummary
    #   resp.data.group_ordering_id_summaries[0].status #=> String, one of ["FAILED", "SUCCEEDED", "PROCESSING", "DELETING", "DELETED"]
    #   resp.data.group_ordering_id_summaries[0].last_updated_at #=> Time
    #   resp.data.group_ordering_id_summaries[0].received_at #=> Time
    #   resp.data.group_ordering_id_summaries[0].ordering_id #=> Integer
    #   resp.data.group_ordering_id_summaries[0].failure_reason #=> String
    #
    def describe_principal_mapping(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribePrincipalMappingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribePrincipalMappingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribePrincipalMapping
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DescribePrincipalMapping
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribePrincipalMapping,
        stubs: @stubs,
        params_class: Params::DescribePrincipalMappingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_principal_mapping
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes a block list used for query suggestions for an index.</p>
    #         <p>This is used to check the current settings that are applied to a
    #             block list.</p>
    #         <p>
    #             <code>DescribeQuerySuggestionsBlockList</code> is currently not supported in the
    #             Amazon Web Services GovCloud (US-West) region.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeQuerySuggestionsBlockListInput}.
    #
    # @option params [String] :index_id
    #   <p>The identifier of the index for the block list.</p>
    #
    # @option params [String] :id
    #   <p>The unique identifier of the block list.</p>
    #
    # @return [Types::DescribeQuerySuggestionsBlockListOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_query_suggestions_block_list(
    #     index_id: 'IndexId', # required
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeQuerySuggestionsBlockListOutput
    #   resp.data.index_id #=> String
    #   resp.data.id #=> String
    #   resp.data.name #=> String
    #   resp.data.description #=> String
    #   resp.data.status #=> String, one of ["ACTIVE", "CREATING", "DELETING", "UPDATING", "ACTIVE_BUT_UPDATE_FAILED", "FAILED"]
    #   resp.data.error_message #=> String
    #   resp.data.created_at #=> Time
    #   resp.data.updated_at #=> Time
    #   resp.data.source_s3_path #=> Types::S3Path
    #   resp.data.source_s3_path.bucket #=> String
    #   resp.data.source_s3_path.key #=> String
    #   resp.data.item_count #=> Integer
    #   resp.data.file_size_bytes #=> Integer
    #   resp.data.role_arn #=> String
    #
    def describe_query_suggestions_block_list(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeQuerySuggestionsBlockListInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeQuerySuggestionsBlockListInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeQuerySuggestionsBlockList
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DescribeQuerySuggestionsBlockList
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeQuerySuggestionsBlockList,
        stubs: @stubs,
        params_class: Params::DescribeQuerySuggestionsBlockListOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_query_suggestions_block_list
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the settings of query suggestions for an index.</p>
    #         <p>This is used to check the current settings applied
    #             to query suggestions.</p>
    #         <p>
    #             <code>DescribeQuerySuggestionsConfig</code> is currently not supported in the
    #             Amazon Web Services GovCloud (US-West) region.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeQuerySuggestionsConfigInput}.
    #
    # @option params [String] :index_id
    #   <p>The identifier of the index you want to describe query suggestions
    #               settings for.</p>
    #
    # @return [Types::DescribeQuerySuggestionsConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_query_suggestions_config(
    #     index_id: 'IndexId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeQuerySuggestionsConfigOutput
    #   resp.data.mode #=> String, one of ["ENABLED", "LEARN_ONLY"]
    #   resp.data.status #=> String, one of ["ACTIVE", "UPDATING"]
    #   resp.data.query_log_look_back_window_in_days #=> Integer
    #   resp.data.include_queries_without_user_information #=> Boolean
    #   resp.data.minimum_number_of_querying_users #=> Integer
    #   resp.data.minimum_query_count #=> Integer
    #   resp.data.last_suggestions_build_time #=> Time
    #   resp.data.last_clear_time #=> Time
    #   resp.data.total_suggestions_count #=> Integer
    #
    def describe_query_suggestions_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeQuerySuggestionsConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeQuerySuggestionsConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeQuerySuggestionsConfig
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DescribeQuerySuggestionsConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeQuerySuggestionsConfig,
        stubs: @stubs,
        params_class: Params::DescribeQuerySuggestionsConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_query_suggestions_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes an existing Amazon Kendra thesaurus.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeThesaurusInput}.
    #
    # @option params [String] :id
    #   <p>The identifier of the thesaurus to describe.</p>
    #
    # @option params [String] :index_id
    #   <p>The identifier of the index associated with the thesaurus to describe.</p>
    #
    # @return [Types::DescribeThesaurusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_thesaurus(
    #     id: 'Id', # required
    #     index_id: 'IndexId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeThesaurusOutput
    #   resp.data.id #=> String
    #   resp.data.index_id #=> String
    #   resp.data.name #=> String
    #   resp.data.description #=> String
    #   resp.data.status #=> String, one of ["CREATING", "ACTIVE", "DELETING", "UPDATING", "ACTIVE_BUT_UPDATE_FAILED", "FAILED"]
    #   resp.data.error_message #=> String
    #   resp.data.created_at #=> Time
    #   resp.data.updated_at #=> Time
    #   resp.data.role_arn #=> String
    #   resp.data.source_s3_path #=> Types::S3Path
    #   resp.data.source_s3_path.bucket #=> String
    #   resp.data.source_s3_path.key #=> String
    #   resp.data.file_size_bytes #=> Integer
    #   resp.data.term_count #=> Integer
    #   resp.data.synonym_rule_count #=> Integer
    #
    def describe_thesaurus(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeThesaurusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeThesaurusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeThesaurus
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DescribeThesaurus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeThesaurus,
        stubs: @stubs,
        params_class: Params::DescribeThesaurusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_thesaurus
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Prevents users or groups in your Amazon Web Services SSO identity source
    #             from accessing your Amazon Kendra experience. You can create an Amazon Kendra experience
    #             such as a search application. For more information on creating a search
    #             application experience, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html">Building
    #                 a search experience with no code</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateEntitiesFromExperienceInput}.
    #
    # @option params [String] :id
    #   <p>The identifier of your Amazon Kendra experience.</p>
    #
    # @option params [String] :index_id
    #   <p>The identifier of the index for your Amazon Kendra experience.</p>
    #
    # @option params [Array<EntityConfiguration>] :entity_list
    #   <p>Lists users or groups in your Amazon Web Services SSO identity source.</p>
    #
    # @return [Types::DisassociateEntitiesFromExperienceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_entities_from_experience(
    #     id: 'Id', # required
    #     index_id: 'IndexId', # required
    #     entity_list: [
    #       {
    #         entity_id: 'EntityId', # required
    #         entity_type: 'USER' # required - accepts ["USER", "GROUP"]
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateEntitiesFromExperienceOutput
    #   resp.data.failed_entity_list #=> Array<FailedEntity>
    #   resp.data.failed_entity_list[0] #=> Types::FailedEntity
    #   resp.data.failed_entity_list[0].entity_id #=> String
    #   resp.data.failed_entity_list[0].error_message #=> String
    #
    def disassociate_entities_from_experience(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateEntitiesFromExperienceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateEntitiesFromExperienceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateEntitiesFromExperience
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DisassociateEntitiesFromExperience
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateEntitiesFromExperience,
        stubs: @stubs,
        params_class: Params::DisassociateEntitiesFromExperienceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_entities_from_experience
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the specific permissions of users or groups in your Amazon Web Services SSO
    #             identity source with access to your Amazon Kendra experience. You can create an Amazon Kendra
    #             experience such as a search application. For more information on creating a
    #             search application experience, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html">Building a
    #                 search experience with no code</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociatePersonasFromEntitiesInput}.
    #
    # @option params [String] :id
    #   <p>The identifier of your Amazon Kendra experience.</p>
    #
    # @option params [String] :index_id
    #   <p>The identifier of the index for your Amazon Kendra experience.</p>
    #
    # @option params [Array<String>] :entity_ids
    #   <p>The identifiers of users or groups in your Amazon Web Services SSO identity
    #               source. For example, user IDs could be user emails.</p>
    #
    # @return [Types::DisassociatePersonasFromEntitiesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_personas_from_entities(
    #     id: 'Id', # required
    #     index_id: 'IndexId', # required
    #     entity_ids: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociatePersonasFromEntitiesOutput
    #   resp.data.failed_entity_list #=> Array<FailedEntity>
    #   resp.data.failed_entity_list[0] #=> Types::FailedEntity
    #   resp.data.failed_entity_list[0].entity_id #=> String
    #   resp.data.failed_entity_list[0].error_message #=> String
    #
    def disassociate_personas_from_entities(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociatePersonasFromEntitiesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociatePersonasFromEntitiesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociatePersonasFromEntities
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DisassociatePersonasFromEntities
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociatePersonasFromEntities,
        stubs: @stubs,
        params_class: Params::DisassociatePersonasFromEntitiesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_personas_from_entities
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Fetches the queries that are suggested to your users.</p>
    #         <p>
    #             <code>GetQuerySuggestions</code> is currently not supported in the
    #             Amazon Web Services GovCloud (US-West) region.</p>
    #
    # @param [Hash] params
    #   See {Types::GetQuerySuggestionsInput}.
    #
    # @option params [String] :index_id
    #   <p>The identifier of the index you want to get query suggestions from.</p>
    #
    # @option params [String] :query_text
    #   <p>The text of a user's query to generate query suggestions.</p>
    #           <p>A query is suggested if the query prefix matches
    #               what a user starts to type as their query.</p>
    #           <p>Amazon Kendra does not show any suggestions if a user
    #               types fewer than two characters or more than 60 characters.
    #               A query must also have at least one search result and contain
    #               at least one word of more than four characters.</p>
    #
    # @option params [Integer] :max_suggestions_count
    #   <p>The maximum number of query suggestions you want to show
    #               to your users.</p>
    #
    # @return [Types::GetQuerySuggestionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_query_suggestions(
    #     index_id: 'IndexId', # required
    #     query_text: 'QueryText', # required
    #     max_suggestions_count: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetQuerySuggestionsOutput
    #   resp.data.query_suggestions_id #=> String
    #   resp.data.suggestions #=> Array<Suggestion>
    #   resp.data.suggestions[0] #=> Types::Suggestion
    #   resp.data.suggestions[0].id #=> String
    #   resp.data.suggestions[0].value #=> Types::SuggestionValue
    #   resp.data.suggestions[0].value.text #=> Types::SuggestionTextWithHighlights
    #   resp.data.suggestions[0].value.text.text #=> String
    #   resp.data.suggestions[0].value.text.highlights #=> Array<SuggestionHighlight>
    #   resp.data.suggestions[0].value.text.highlights[0] #=> Types::SuggestionHighlight
    #   resp.data.suggestions[0].value.text.highlights[0].begin_offset #=> Integer
    #   resp.data.suggestions[0].value.text.highlights[0].end_offset #=> Integer
    #
    def get_query_suggestions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetQuerySuggestionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetQuerySuggestionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetQuerySuggestions
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::ConflictException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::GetQuerySuggestions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetQuerySuggestions,
        stubs: @stubs,
        params_class: Params::GetQuerySuggestionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_query_suggestions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves search metrics data. The data provides a snapshot of how
    #             your users interact with your search application and how effective
    #             the application is.</p>
    #
    # @param [Hash] params
    #   See {Types::GetSnapshotsInput}.
    #
    # @option params [String] :index_id
    #   <p>The identifier of the index to get search metrics data.</p>
    #
    # @option params [String] :interval
    #   <p>The time interval or time window to get search metrics data.
    #               The time interval uses the time zone of your index.
    #               You can view data in the following time windows:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>THIS_WEEK</code>: The current week, starting on
    #                       the Sunday and ending on the day before the current date.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>ONE_WEEK_AGO</code>: The previous week, starting on
    #                       the Sunday and ending on the following Saturday.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>TWO_WEEKS_AGO</code>: The week before the previous week,
    #                       starting on the Sunday and ending on the following Saturday.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>THIS_MONTH</code>: The current month, starting on the
    #                       first day of the month and ending on the day before the current date.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>ONE_MONTH_AGO</code>: The previous month, starting on the
    #                       first day of the month and ending on the last day of the month.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>TWO_MONTHS_AGO</code>: The month before the previous month,
    #                       starting on the first day of the month and ending on last day of the month.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :metric_type
    #   <p>The metric you want to retrieve. You
    #               can specify only one metric per call.</p>
    #           <p>For more information about the metrics you can view, see
    #               <a href="https://docs.aws.amazon.com/kendra/latest/dg/search-analytics.html">Gaining
    #                   insights with search analytics</a>.</p>
    #
    # @option params [String] :next_token
    #   <p>If the previous response was incomplete (because there
    #               is more data to retrieve), Amazon Kendra returns a pagination token in
    #               the response. You can use this pagination token to
    #               retrieve the next set of search metrics data.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of returned data for the metric.</p>
    #
    # @return [Types::GetSnapshotsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_snapshots(
    #     index_id: 'IndexId', # required
    #     interval: 'THIS_MONTH', # required - accepts ["THIS_MONTH", "THIS_WEEK", "ONE_WEEK_AGO", "TWO_WEEKS_AGO", "ONE_MONTH_AGO", "TWO_MONTHS_AGO"]
    #     metric_type: 'QUERIES_BY_COUNT', # required - accepts ["QUERIES_BY_COUNT", "QUERIES_BY_ZERO_CLICK_RATE", "QUERIES_BY_ZERO_RESULT_RATE", "DOCS_BY_CLICK_COUNT", "AGG_QUERY_DOC_METRICS", "TREND_QUERY_DOC_METRICS"]
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSnapshotsOutput
    #   resp.data.snap_shot_time_filter #=> Types::TimeRange
    #   resp.data.snap_shot_time_filter.start_time #=> Time
    #   resp.data.snap_shot_time_filter.end_time #=> Time
    #   resp.data.snapshots_data_header #=> Array<String>
    #   resp.data.snapshots_data_header[0] #=> String
    #   resp.data.snapshots_data #=> Array<Array<String>>
    #   resp.data.snapshots_data[0] #=> Array<String>
    #   resp.data.snapshots_data[0][0] #=> String
    #   resp.data.next_token #=> String
    #
    def get_snapshots(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSnapshotsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSnapshotsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetSnapshots
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::InvalidRequestException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetSnapshots
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetSnapshots,
        stubs: @stubs,
        params_class: Params::GetSnapshotsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_snapshots
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets statistics about synchronizing Amazon Kendra with a data
    #       source.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDataSourceSyncJobsInput}.
    #
    # @option params [String] :id
    #   <p>The identifier of the data source.</p>
    #
    # @option params [String] :index_id
    #   <p>The identifier of the index that contains the data source.</p>
    #
    # @option params [String] :next_token
    #   <p>If the previous response was incomplete (because there is more data to retrieve),
    #         Amazon Kendra returns a pagination token in the response. You can use this pagination token
    #         to retrieve the next set of jobs.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of synchronization jobs to return in the response.
    #         If there are fewer results in the list, this response contains only the
    #         actual results.</p>
    #
    # @option params [TimeRange] :start_time_filter
    #   <p>When specified, the synchronization jobs returned in the list are
    #         limited to jobs between the specified dates. </p>
    #
    # @option params [String] :status_filter
    #   <p>When specified, only returns synchronization jobs with the
    #           <code>Status</code> field equal to the specified status.</p>
    #
    # @return [Types::ListDataSourceSyncJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_data_source_sync_jobs(
    #     id: 'Id', # required
    #     index_id: 'IndexId', # required
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     start_time_filter: {
    #       start_time: Time.now,
    #       end_time: Time.now
    #     },
    #     status_filter: 'FAILED' # accepts ["FAILED", "SUCCEEDED", "SYNCING", "INCOMPLETE", "STOPPING", "ABORTED", "SYNCING_INDEXING"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDataSourceSyncJobsOutput
    #   resp.data.history #=> Array<DataSourceSyncJob>
    #   resp.data.history[0] #=> Types::DataSourceSyncJob
    #   resp.data.history[0].execution_id #=> String
    #   resp.data.history[0].start_time #=> Time
    #   resp.data.history[0].end_time #=> Time
    #   resp.data.history[0].status #=> String, one of ["FAILED", "SUCCEEDED", "SYNCING", "INCOMPLETE", "STOPPING", "ABORTED", "SYNCING_INDEXING"]
    #   resp.data.history[0].error_message #=> String
    #   resp.data.history[0].error_code #=> String, one of ["InternalError", "InvalidRequest"]
    #   resp.data.history[0].data_source_error_code #=> String
    #   resp.data.history[0].metrics #=> Types::DataSourceSyncJobMetrics
    #   resp.data.history[0].metrics.documents_added #=> String
    #   resp.data.history[0].metrics.documents_modified #=> String
    #   resp.data.history[0].metrics.documents_deleted #=> String
    #   resp.data.history[0].metrics.documents_failed #=> String
    #   resp.data.history[0].metrics.documents_scanned #=> String
    #   resp.data.next_token #=> String
    #
    def list_data_source_sync_jobs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDataSourceSyncJobsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDataSourceSyncJobsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDataSourceSyncJobs
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::ListDataSourceSyncJobs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDataSourceSyncJobs,
        stubs: @stubs,
        params_class: Params::ListDataSourceSyncJobsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_data_source_sync_jobs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the data sources that you have created.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDataSourcesInput}.
    #
    # @option params [String] :index_id
    #   <p>The identifier of the index that contains the data source.</p>
    #
    # @option params [String] :next_token
    #   <p>If the previous response was incomplete (because there is more data to
    #         retrieve), Amazon Kendra returns a pagination token in the response. You
    #         can use this pagination token to retrieve the next set of data sources
    #           (<code>DataSourceSummaryItems</code>). </p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of data sources to return.</p>
    #
    # @return [Types::ListDataSourcesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_data_sources(
    #     index_id: 'IndexId', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDataSourcesOutput
    #   resp.data.summary_items #=> Array<DataSourceSummary>
    #   resp.data.summary_items[0] #=> Types::DataSourceSummary
    #   resp.data.summary_items[0].name #=> String
    #   resp.data.summary_items[0].id #=> String
    #   resp.data.summary_items[0].type #=> String, one of ["S3", "SHAREPOINT", "DATABASE", "SALESFORCE", "ONEDRIVE", "SERVICENOW", "CUSTOM", "CONFLUENCE", "GOOGLEDRIVE", "WEBCRAWLER", "WORKDOCS", "FSX", "SLACK", "BOX", "QUIP", "JIRA", "GITHUB"]
    #   resp.data.summary_items[0].created_at #=> Time
    #   resp.data.summary_items[0].updated_at #=> Time
    #   resp.data.summary_items[0].status #=> String, one of ["CREATING", "DELETING", "FAILED", "UPDATING", "ACTIVE"]
    #   resp.data.summary_items[0].language_code #=> String
    #   resp.data.next_token #=> String
    #
    def list_data_sources(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDataSourcesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDataSourcesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDataSources
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::ListDataSources
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDataSources,
        stubs: @stubs,
        params_class: Params::ListDataSourcesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_data_sources
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists specific permissions of users and groups with access to your
    #             Amazon Kendra experience.</p>
    #
    # @param [Hash] params
    #   See {Types::ListEntityPersonasInput}.
    #
    # @option params [String] :id
    #   <p>The identifier of your Amazon Kendra experience.</p>
    #
    # @option params [String] :index_id
    #   <p>The identifier of the index for your Amazon Kendra experience.</p>
    #
    # @option params [String] :next_token
    #   <p>If the previous response was incomplete (because there is more data to retrieve),
    #               Amazon Kendra returns a pagination token in the response. You can use this pagination
    #               token to retrieve the next set of users or groups.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of returned users or groups.</p>
    #
    # @return [Types::ListEntityPersonasOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_entity_personas(
    #     id: 'Id', # required
    #     index_id: 'IndexId', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListEntityPersonasOutput
    #   resp.data.summary_items #=> Array<PersonasSummary>
    #   resp.data.summary_items[0] #=> Types::PersonasSummary
    #   resp.data.summary_items[0].entity_id #=> String
    #   resp.data.summary_items[0].persona #=> String, one of ["OWNER", "VIEWER"]
    #   resp.data.summary_items[0].created_at #=> Time
    #   resp.data.summary_items[0].updated_at #=> Time
    #   resp.data.next_token #=> String
    #
    def list_entity_personas(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListEntityPersonasInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListEntityPersonasInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListEntityPersonas
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::ListEntityPersonas
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListEntityPersonas,
        stubs: @stubs,
        params_class: Params::ListEntityPersonasOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_entity_personas
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists users or groups in your Amazon Web Services SSO identity source that are
    #             granted access to your Amazon Kendra experience. You can create an Amazon Kendra experience
    #             such as a search application. For more information on creating a search
    #             application experience, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html">Building
    #                 a search experience with no code</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListExperienceEntitiesInput}.
    #
    # @option params [String] :id
    #   <p>The identifier of your Amazon Kendra experience.</p>
    #
    # @option params [String] :index_id
    #   <p>The identifier of the index for your Amazon Kendra experience.</p>
    #
    # @option params [String] :next_token
    #   <p>If the previous response was incomplete (because there is more data to retrieve),
    #               Amazon Kendra returns a pagination token in the response. You can use this pagination
    #               token to retrieve the next set of users or groups.</p>
    #
    # @return [Types::ListExperienceEntitiesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_experience_entities(
    #     id: 'Id', # required
    #     index_id: 'IndexId', # required
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListExperienceEntitiesOutput
    #   resp.data.summary_items #=> Array<ExperienceEntitiesSummary>
    #   resp.data.summary_items[0] #=> Types::ExperienceEntitiesSummary
    #   resp.data.summary_items[0].entity_id #=> String
    #   resp.data.summary_items[0].entity_type #=> String, one of ["USER", "GROUP"]
    #   resp.data.summary_items[0].display_data #=> Types::EntityDisplayData
    #   resp.data.summary_items[0].display_data.user_name #=> String
    #   resp.data.summary_items[0].display_data.group_name #=> String
    #   resp.data.summary_items[0].display_data.identified_user_name #=> String
    #   resp.data.summary_items[0].display_data.first_name #=> String
    #   resp.data.summary_items[0].display_data.last_name #=> String
    #   resp.data.next_token #=> String
    #
    def list_experience_entities(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListExperienceEntitiesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListExperienceEntitiesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListExperienceEntities
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::ListExperienceEntities
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListExperienceEntities,
        stubs: @stubs,
        params_class: Params::ListExperienceEntitiesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_experience_entities
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists one or more Amazon Kendra experiences. You can create an Amazon Kendra experience such
    #             as a search application. For more information on creating a search application
    #             experience, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html">Building a
    #                 search experience with no code</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListExperiencesInput}.
    #
    # @option params [String] :index_id
    #   <p>The identifier of the index for your Amazon Kendra experience.</p>
    #
    # @option params [String] :next_token
    #   <p>If the previous response was incomplete (because there is more data
    #               to retrieve), Amazon Kendra returns a pagination token in the response. You can use this
    #               pagination token to retrieve the next set of Amazon Kendra experiences.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of returned Amazon Kendra experiences.</p>
    #
    # @return [Types::ListExperiencesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_experiences(
    #     index_id: 'IndexId', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListExperiencesOutput
    #   resp.data.summary_items #=> Array<ExperiencesSummary>
    #   resp.data.summary_items[0] #=> Types::ExperiencesSummary
    #   resp.data.summary_items[0].name #=> String
    #   resp.data.summary_items[0].id #=> String
    #   resp.data.summary_items[0].created_at #=> Time
    #   resp.data.summary_items[0].status #=> String, one of ["CREATING", "ACTIVE", "DELETING", "FAILED"]
    #   resp.data.summary_items[0].endpoints #=> Array<ExperienceEndpoint>
    #   resp.data.summary_items[0].endpoints[0] #=> Types::ExperienceEndpoint
    #   resp.data.summary_items[0].endpoints[0].endpoint_type #=> String, one of ["HOME"]
    #   resp.data.summary_items[0].endpoints[0].endpoint #=> String
    #   resp.data.next_token #=> String
    #
    def list_experiences(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListExperiencesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListExperiencesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListExperiences
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::ListExperiences
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListExperiences,
        stubs: @stubs,
        params_class: Params::ListExperiencesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_experiences
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a list of FAQ lists associated with an index.</p>
    #
    # @param [Hash] params
    #   See {Types::ListFaqsInput}.
    #
    # @option params [String] :index_id
    #   <p>The index that contains the FAQ lists.</p>
    #
    # @option params [String] :next_token
    #   <p>If the previous response was incomplete (because there is more data to retrieve),
    #               Amazon Kendra returns a pagination token in the response. You can use this pagination token
    #               to retrieve the next set of FAQs.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of FAQs to return in the response. If there are fewer results in
    #               the list, this response contains only the actual results.</p>
    #
    # @return [Types::ListFaqsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_faqs(
    #     index_id: 'IndexId', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListFaqsOutput
    #   resp.data.next_token #=> String
    #   resp.data.faq_summary_items #=> Array<FaqSummary>
    #   resp.data.faq_summary_items[0] #=> Types::FaqSummary
    #   resp.data.faq_summary_items[0].id #=> String
    #   resp.data.faq_summary_items[0].name #=> String
    #   resp.data.faq_summary_items[0].status #=> String, one of ["CREATING", "UPDATING", "ACTIVE", "DELETING", "FAILED"]
    #   resp.data.faq_summary_items[0].created_at #=> Time
    #   resp.data.faq_summary_items[0].updated_at #=> Time
    #   resp.data.faq_summary_items[0].file_format #=> String, one of ["CSV", "CSV_WITH_HEADER", "JSON"]
    #   resp.data.faq_summary_items[0].language_code #=> String
    #
    def list_faqs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListFaqsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListFaqsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListFaqs
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::ListFaqs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListFaqs,
        stubs: @stubs,
        params_class: Params::ListFaqsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_faqs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides a list of groups that are mapped to users before a
    #             given ordering or timestamp identifier.</p>
    #         <p>
    #             <code>ListGroupsOlderThanOrderingId</code> is currently not supported in the
    #             Amazon Web Services GovCloud (US-West) region.</p>
    #
    # @param [Hash] params
    #   See {Types::ListGroupsOlderThanOrderingIdInput}.
    #
    # @option params [String] :index_id
    #   <p>The identifier of the index for getting a list of groups mapped
    #               to users before a given ordering or timestamp identifier.</p>
    #
    # @option params [String] :data_source_id
    #   <p>The identifier of the data source for getting a list of groups mapped
    #               to users before a given ordering timestamp identifier.</p>
    #
    # @option params [Integer] :ordering_id
    #   <p>The timestamp identifier used for the latest <code>PUT</code> or
    #               <code>DELETE</code> action for mapping users to their groups.</p>
    #
    # @option params [String] :next_token
    #   <p>
    #               If the previous response was incomplete (because there is more data to retrieve),
    #               Amazon Kendra returns a pagination token in the response. You can use this pagination
    #               token to retrieve the next set of groups that are mapped to users before a
    #               given ordering or timestamp identifier.
    #           </p>
    #
    # @option params [Integer] :max_results
    #   <p>
    #               The maximum number of returned groups that are mapped to users before a
    #               given ordering or timestamp identifier.
    #           </p>
    #
    # @return [Types::ListGroupsOlderThanOrderingIdOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_groups_older_than_ordering_id(
    #     index_id: 'IndexId', # required
    #     data_source_id: 'DataSourceId',
    #     ordering_id: 1, # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListGroupsOlderThanOrderingIdOutput
    #   resp.data.groups_summaries #=> Array<GroupSummary>
    #   resp.data.groups_summaries[0] #=> Types::GroupSummary
    #   resp.data.groups_summaries[0].group_id #=> String
    #   resp.data.groups_summaries[0].ordering_id #=> Integer
    #   resp.data.next_token #=> String
    #
    def list_groups_older_than_ordering_id(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListGroupsOlderThanOrderingIdInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListGroupsOlderThanOrderingIdInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListGroupsOlderThanOrderingId
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::ListGroupsOlderThanOrderingId
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListGroupsOlderThanOrderingId,
        stubs: @stubs,
        params_class: Params::ListGroupsOlderThanOrderingIdOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_groups_older_than_ordering_id
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the Amazon Kendra indexes that you created.</p>
    #
    # @param [Hash] params
    #   See {Types::ListIndicesInput}.
    #
    # @option params [String] :next_token
    #   <p>If the previous response was incomplete (because there is more data to
    #         retrieve), Amazon Kendra returns a pagination token in the response. You
    #         can use this pagination token to retrieve the next set of indexes
    #           (<code>DataSourceSummaryItems</code>). </p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of data sources to return.</p>
    #
    # @return [Types::ListIndicesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_indices(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListIndicesOutput
    #   resp.data.index_configuration_summary_items #=> Array<IndexConfigurationSummary>
    #   resp.data.index_configuration_summary_items[0] #=> Types::IndexConfigurationSummary
    #   resp.data.index_configuration_summary_items[0].name #=> String
    #   resp.data.index_configuration_summary_items[0].id #=> String
    #   resp.data.index_configuration_summary_items[0].edition #=> String, one of ["DEVELOPER_EDITION", "ENTERPRISE_EDITION"]
    #   resp.data.index_configuration_summary_items[0].created_at #=> Time
    #   resp.data.index_configuration_summary_items[0].updated_at #=> Time
    #   resp.data.index_configuration_summary_items[0].status #=> String, one of ["CREATING", "ACTIVE", "DELETING", "FAILED", "UPDATING", "SYSTEM_UPDATING"]
    #   resp.data.next_token #=> String
    #
    def list_indices(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListIndicesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListIndicesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListIndices
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ThrottlingException]),
        data_parser: Parsers::ListIndices
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListIndices,
        stubs: @stubs,
        params_class: Params::ListIndicesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_indices
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the block lists used for query suggestions for an index.</p>
    #         <p>For information on the current quota limits for block lists, see
    #             <a href="https://docs.aws.amazon.com/kendra/latest/dg/quotas.html">Quotas
    #                 for Amazon Kendra</a>.</p>
    #         <p>
    #             <code>ListQuerySuggestionsBlockLists</code> is currently not supported in the
    #             Amazon Web Services GovCloud (US-West) region.</p>
    #
    # @param [Hash] params
    #   See {Types::ListQuerySuggestionsBlockListsInput}.
    #
    # @option params [String] :index_id
    #   <p>The identifier of the index for a list of all block lists that exist for
    #               that index.</p>
    #           <p>For information on the current quota limits for block lists, see
    #               <a href="https://docs.aws.amazon.com/kendra/latest/dg/quotas.html">Quotas
    #                   for Amazon Kendra</a>.</p>
    #
    # @option params [String] :next_token
    #   <p>If the previous response was incomplete (because there is more data to retrieve),
    #               Amazon Kendra returns a pagination token in the response. You can use this pagination
    #               token to retrieve the next set of block lists (<code>BlockListSummaryItems</code>).</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of block lists to return.</p>
    #
    # @return [Types::ListQuerySuggestionsBlockListsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_query_suggestions_block_lists(
    #     index_id: 'IndexId', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListQuerySuggestionsBlockListsOutput
    #   resp.data.block_list_summary_items #=> Array<QuerySuggestionsBlockListSummary>
    #   resp.data.block_list_summary_items[0] #=> Types::QuerySuggestionsBlockListSummary
    #   resp.data.block_list_summary_items[0].id #=> String
    #   resp.data.block_list_summary_items[0].name #=> String
    #   resp.data.block_list_summary_items[0].status #=> String, one of ["ACTIVE", "CREATING", "DELETING", "UPDATING", "ACTIVE_BUT_UPDATE_FAILED", "FAILED"]
    #   resp.data.block_list_summary_items[0].created_at #=> Time
    #   resp.data.block_list_summary_items[0].updated_at #=> Time
    #   resp.data.block_list_summary_items[0].item_count #=> Integer
    #   resp.data.next_token #=> String
    #
    def list_query_suggestions_block_lists(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListQuerySuggestionsBlockListsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListQuerySuggestionsBlockListsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListQuerySuggestionsBlockLists
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::ListQuerySuggestionsBlockLists
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListQuerySuggestionsBlockLists,
        stubs: @stubs,
        params_class: Params::ListQuerySuggestionsBlockListsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_query_suggestions_block_lists
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a list of tags associated with a specified resource. Indexes,
    #       FAQs, and data sources can have tags associated with them.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the index, FAQ, or data source to
    #         get a list of tags for.</p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     resource_arn: 'ResourceARN' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsForResourceOutput
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #
    def list_tags_for_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTagsForResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTagsForResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTagsForResource
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceUnavailableException, Errors::ThrottlingException]),
        data_parser: Parsers::ListTagsForResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTagsForResource,
        stubs: @stubs,
        params_class: Params::ListTagsForResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_tags_for_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the Amazon Kendra thesauri associated with an index.</p>
    #
    # @param [Hash] params
    #   See {Types::ListThesauriInput}.
    #
    # @option params [String] :index_id
    #   <p>The identifier of the index associated with the thesaurus to list.</p>
    #
    # @option params [String] :next_token
    #   <p>If the previous response was incomplete (because there is more data to retrieve),
    #            Amazon Kendra returns a pagination token in the response. You can use this pagination token to
    #            retrieve the next set of thesauri (<code>ThesaurusSummaryItems</code>).
    #         </p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of thesauri to return.</p>
    #
    # @return [Types::ListThesauriOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_thesauri(
    #     index_id: 'IndexId', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListThesauriOutput
    #   resp.data.next_token #=> String
    #   resp.data.thesaurus_summary_items #=> Array<ThesaurusSummary>
    #   resp.data.thesaurus_summary_items[0] #=> Types::ThesaurusSummary
    #   resp.data.thesaurus_summary_items[0].id #=> String
    #   resp.data.thesaurus_summary_items[0].name #=> String
    #   resp.data.thesaurus_summary_items[0].status #=> String, one of ["CREATING", "ACTIVE", "DELETING", "UPDATING", "ACTIVE_BUT_UPDATE_FAILED", "FAILED"]
    #   resp.data.thesaurus_summary_items[0].created_at #=> Time
    #   resp.data.thesaurus_summary_items[0].updated_at #=> Time
    #
    def list_thesauri(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListThesauriInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListThesauriInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListThesauri
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::ListThesauri
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListThesauri,
        stubs: @stubs,
        params_class: Params::ListThesauriOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_thesauri
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Maps users to their groups so that you only need to provide
    #             the user ID when you issue the query.</p>
    #         <p>You can also map sub groups to groups.
    #             For example, the group "Company Intellectual Property Teams" includes
    #             sub groups "Research" and "Engineering". These sub groups include their
    #             own list of users or people who work in these teams. Only users who work
    #             in research and engineering, and therefore belong in the intellectual
    #             property group, can see top-secret company documents in their search
    #             results.</p>
    #         <p>You map users to their groups when you want to filter search results
    #             for different users based on their group’s access to documents. For more
    #             information on filtering search results for different users, see
    #             <a href="https://docs.aws.amazon.com/kendra/latest/dg/user-context-filter.html">Filtering
    #                 on user context</a>.</p>
    #         <p>If more than five <code>PUT</code> actions for a group are currently
    #             processing, a validation exception is thrown.</p>
    #         <p>
    #             <code>PutPrincipalMapping</code> is currently not supported in the
    #             Amazon Web Services GovCloud (US-West) region.</p>
    #
    # @param [Hash] params
    #   See {Types::PutPrincipalMappingInput}.
    #
    # @option params [String] :index_id
    #   <p>The identifier of the index you want to map users to their groups.</p>
    #
    # @option params [String] :data_source_id
    #   <p>The identifier of the data source you want to map users to their groups.</p>
    #           <p>This is useful if a group is tied to multiple data sources, but you only want
    #               the group to access documents of a certain data source. For example, the groups
    #               "Research", "Engineering", and "Sales and Marketing" are all tied to the company's
    #               documents stored in the data sources Confluence and Salesforce. However,
    #               "Sales and Marketing" team only needs access to customer-related documents
    #               stored in Salesforce.</p>
    #
    # @option params [String] :group_id
    #   <p>The identifier of the group you want to map its users to.</p>
    #
    # @option params [GroupMembers] :group_members
    #   <p>The list that contains your users or sub groups that belong
    #               the same group.</p>
    #           <p>For example, the group "Company" includes the user "CEO" and the
    #               sub groups "Research", "Engineering", and "Sales and Marketing".</p>
    #           <p>If you have more than 1000 users and/or sub groups for a single group,
    #               you need to provide the path to the S3 file that lists your users and
    #               sub groups for a group. Your sub groups can contain more than 1000 users,
    #               but the list of sub groups that belong to a group (and/or users) must be
    #               no more than 1000.</p>
    #
    # @option params [Integer] :ordering_id
    #   <p>The timestamp identifier you specify to ensure Amazon Kendra does not override
    #               the latest <code>PUT</code> action with previous actions. The highest number
    #               ID, which is the ordering ID, is the latest action you want to process and
    #               apply on top of other actions with lower number IDs. This prevents previous
    #               actions with lower number IDs from possibly overriding the latest action.</p>
    #           <p>The ordering ID can be the UNIX time of the last update you made to a
    #               group members list. You would then provide this list when calling
    #               <code>PutPrincipalMapping</code>. This ensures your <code>PUT</code> action
    #               for that updated group with the latest members list doesn't get overwritten
    #               by earlier <code>PUT</code> actions for the same group which are yet to
    #               be processed.</p>
    #           <p>The default ordering ID is the current UNIX time in milliseconds that the
    #               action was received by Amazon Kendra.</p>
    #
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of a role that has access to the S3 file
    #               that contains your list of users or sub groups that belong to a group.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html#iam-roles-ds">IAM roles for Amazon Kendra</a>.</p>
    #
    # @return [Types::PutPrincipalMappingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_principal_mapping(
    #     index_id: 'IndexId', # required
    #     data_source_id: 'DataSourceId',
    #     group_id: 'GroupId', # required
    #     group_members: {
    #       member_groups: [
    #         {
    #           group_id: 'GroupId', # required
    #           data_source_id: 'DataSourceId'
    #         }
    #       ],
    #       member_users: [
    #         {
    #           user_id: 'UserId' # required
    #         }
    #       ],
    #       s3_pathfor_group_members: {
    #         bucket: 'Bucket', # required
    #         key: 'Key' # required
    #       }
    #     }, # required
    #     ordering_id: 1,
    #     role_arn: 'RoleArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutPrincipalMappingOutput
    #
    def put_principal_mapping(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutPrincipalMappingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutPrincipalMappingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutPrincipalMapping
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::ConflictException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::PutPrincipalMapping
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutPrincipalMapping,
        stubs: @stubs,
        params_class: Params::PutPrincipalMappingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_principal_mapping
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Searches an active index. Use this API to search your documents
    #          using query. The <code>Query</code> API enables to do faceted
    #          search and to filter results based on document attributes.</p>
    #          <p>It also enables you to provide user context that Amazon Kendra uses
    #          to enforce document access control in the search results.</p>
    #          <p>Amazon Kendra searches your index for text content and question and
    #          answer (FAQ) content. By default the response contains three types of
    #          results.</p>
    #          <ul>
    #             <li>
    #                <p>Relevant passages</p>
    #             </li>
    #             <li>
    #                <p>Matching FAQs</p>
    #             </li>
    #             <li>
    #                <p>Relevant documents</p>
    #             </li>
    #          </ul>
    #          <p>You can specify that the query return only one type of result using
    #          the <code>QueryResultTypeConfig</code> parameter.</p>
    #          <p>Each query returns the 100 most relevant results. </p>
    #
    # @param [Hash] params
    #   See {Types::QueryInput}.
    #
    # @option params [String] :index_id
    #   <p>The unique identifier of the index to search. The identifier is
    #            returned in the response from the <code>CreateIndex</code>
    #            API.</p>
    #
    # @option params [String] :query_text
    #   <p>The text to search for.</p>
    #
    # @option params [AttributeFilter] :attribute_filter
    #   <p>Enables filtered searches based on document attributes. You can only
    #            provide one attribute filter; however, the <code>AndAllFilters</code>,
    #               <code>NotFilter</code>, and <code>OrAllFilters</code> parameters
    #            contain a list of other filters.</p>
    #            <p>The <code>AttributeFilter</code> parameter enables you to create a
    #            set of filtering rules that a document must satisfy to be included in
    #            the query results.</p>
    #
    # @option params [Array<Facet>] :facets
    #   <p>An array of documents attributes. Amazon Kendra returns a count for
    #            each attribute key specified. This helps your users narrow their search.</p>
    #
    # @option params [Array<String>] :requested_document_attributes
    #   <p>An array of document attributes to include in the response.
    #            You can limit the response to include certain document attributes.
    #            By default all document attributes are included in the response.</p>
    #
    # @option params [String] :query_result_type_filter
    #   <p>Sets the type of query. Only results for the specified query type
    #            are returned.</p>
    #
    # @option params [Array<DocumentRelevanceConfiguration>] :document_relevance_override_configurations
    #   <p>Overrides relevance tuning configurations of fields or attributes set at the index level.</p>
    #            <p>If you use this API to override the relevance tuning configured at the index
    #            level, but there is no relevance tuning configured at the index level, then Amazon Kendra does not apply any relevance tuning.</p>
    #            <p>If there is relevance tuning configured at the index level, but you do not use this API
    #            to override any relevance tuning in the index, then Amazon Kendra uses the relevance tuning that is configured at the index level.</p>
    #            <p>If there is relevance tuning configured for fields at the index level,
    #            but you use this API to override only some of these fields, then for the fields you did not override,
    #            the importance is set to 1.</p>
    #
    # @option params [Integer] :page_number
    #   <p>Query results are returned in pages the size of the
    #            <code>PageSize</code> parameter. By default, Amazon Kendra returns
    #            the first page of results. Use this parameter to get result pages after
    #            the first one.</p>
    #
    # @option params [Integer] :page_size
    #   <p>Sets the number of results that are returned in each page of
    #            results. The default page size is 10. The maximum number of results
    #            returned is 100. If you ask for more than 100 results, only 100 are
    #            returned.</p>
    #
    # @option params [SortingConfiguration] :sorting_configuration
    #   <p>Provides information that determines how the results of the query
    #            are sorted. You can set the field that Amazon Kendra should sort the results
    #            on, and specify whether the results should be sorted in ascending or
    #            descending order. In the case of ties in sorting the results, the
    #            results are sorted by relevance.</p>
    #            <p>If you don't provide sorting configuration, the results are sorted
    #            by the relevance that Amazon Kendra determines for the result.</p>
    #
    # @option params [UserContext] :user_context
    #   <p>The user context token or user and group information.</p>
    #
    # @option params [String] :visitor_id
    #   <p>Provides an identifier for a specific user. The
    #               <code>VisitorId</code> should be a unique identifier, such as a
    #            GUID. Don't use personally identifiable information, such as the user's
    #            email address, as the <code>VisitorId</code>.</p>
    #
    # @option params [SpellCorrectionConfiguration] :spell_correction_configuration
    #   <p>Enables suggested spell corrections for queries.</p>
    #
    # @return [Types::QueryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.query(
    #     index_id: 'IndexId', # required
    #     query_text: 'QueryText',
    #     attribute_filter: {
    #       equals_to: {
    #         key: 'Key', # required
    #         value: {
    #           string_value: 'StringValue',
    #           string_list_value: [
    #             'member'
    #           ],
    #           long_value: 1,
    #           date_value: Time.now
    #         } # required
    #       },
    #     },
    #     facets: [
    #       {
    #         document_attribute_key: 'DocumentAttributeKey',
    #         max_results: 1
    #       }
    #     ],
    #     requested_document_attributes: [
    #       'member'
    #     ],
    #     query_result_type_filter: 'DOCUMENT', # accepts ["DOCUMENT", "QUESTION_ANSWER", "ANSWER"]
    #     document_relevance_override_configurations: [
    #       {
    #         name: 'Name', # required
    #         relevance: {
    #           freshness: false,
    #           importance: 1,
    #           duration: 'Duration',
    #           rank_order: 'ASCENDING', # accepts ["ASCENDING", "DESCENDING"]
    #           value_importance_map: {
    #             'key' => 1
    #           }
    #         } # required
    #       }
    #     ],
    #     page_number: 1,
    #     page_size: 1,
    #     sorting_configuration: {
    #       document_attribute_key: 'DocumentAttributeKey', # required
    #       sort_order: 'DESC' # required - accepts ["DESC", "ASC"]
    #     },
    #     user_context: {
    #       token: 'Token',
    #       user_id: 'UserId',
    #       groups: [
    #         'member'
    #       ],
    #       data_source_groups: [
    #         {
    #           group_id: 'GroupId', # required
    #           data_source_id: 'DataSourceId' # required
    #         }
    #       ]
    #     },
    #     visitor_id: 'VisitorId',
    #     spell_correction_configuration: {
    #       include_query_spell_check_suggestions: false # required
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::QueryOutput
    #   resp.data.query_id #=> String
    #   resp.data.result_items #=> Array<QueryResultItem>
    #   resp.data.result_items[0] #=> Types::QueryResultItem
    #   resp.data.result_items[0].id #=> String
    #   resp.data.result_items[0].type #=> String, one of ["DOCUMENT", "QUESTION_ANSWER", "ANSWER"]
    #   resp.data.result_items[0].additional_attributes #=> Array<AdditionalResultAttribute>
    #   resp.data.result_items[0].additional_attributes[0] #=> Types::AdditionalResultAttribute
    #   resp.data.result_items[0].additional_attributes[0].key #=> String
    #   resp.data.result_items[0].additional_attributes[0].value_type #=> String, one of ["TEXT_WITH_HIGHLIGHTS_VALUE"]
    #   resp.data.result_items[0].additional_attributes[0].value #=> Types::AdditionalResultAttributeValue
    #   resp.data.result_items[0].additional_attributes[0].value.text_with_highlights_value #=> Types::TextWithHighlights
    #   resp.data.result_items[0].additional_attributes[0].value.text_with_highlights_value.text #=> String
    #   resp.data.result_items[0].additional_attributes[0].value.text_with_highlights_value.highlights #=> Array<Highlight>
    #   resp.data.result_items[0].additional_attributes[0].value.text_with_highlights_value.highlights[0] #=> Types::Highlight
    #   resp.data.result_items[0].additional_attributes[0].value.text_with_highlights_value.highlights[0].begin_offset #=> Integer
    #   resp.data.result_items[0].additional_attributes[0].value.text_with_highlights_value.highlights[0].end_offset #=> Integer
    #   resp.data.result_items[0].additional_attributes[0].value.text_with_highlights_value.highlights[0].top_answer #=> Boolean
    #   resp.data.result_items[0].additional_attributes[0].value.text_with_highlights_value.highlights[0].type #=> String, one of ["STANDARD", "THESAURUS_SYNONYM"]
    #   resp.data.result_items[0].document_id #=> String
    #   resp.data.result_items[0].document_title #=> Types::TextWithHighlights
    #   resp.data.result_items[0].document_excerpt #=> Types::TextWithHighlights
    #   resp.data.result_items[0].document_uri #=> String
    #   resp.data.result_items[0].document_attributes #=> Array<DocumentAttribute>
    #   resp.data.result_items[0].document_attributes[0] #=> Types::DocumentAttribute
    #   resp.data.result_items[0].document_attributes[0].key #=> String
    #   resp.data.result_items[0].document_attributes[0].value #=> Types::DocumentAttributeValue
    #   resp.data.result_items[0].document_attributes[0].value.string_value #=> String
    #   resp.data.result_items[0].document_attributes[0].value.string_list_value #=> Array<String>
    #   resp.data.result_items[0].document_attributes[0].value.string_list_value[0] #=> String
    #   resp.data.result_items[0].document_attributes[0].value.long_value #=> Integer
    #   resp.data.result_items[0].document_attributes[0].value.date_value #=> Time
    #   resp.data.result_items[0].score_attributes #=> Types::ScoreAttributes
    #   resp.data.result_items[0].score_attributes.score_confidence #=> String, one of ["VERY_HIGH", "HIGH", "MEDIUM", "LOW", "NOT_AVAILABLE"]
    #   resp.data.result_items[0].feedback_token #=> String
    #   resp.data.facet_results #=> Array<FacetResult>
    #   resp.data.facet_results[0] #=> Types::FacetResult
    #   resp.data.facet_results[0].document_attribute_key #=> String
    #   resp.data.facet_results[0].document_attribute_value_type #=> String, one of ["STRING_VALUE", "STRING_LIST_VALUE", "LONG_VALUE", "DATE_VALUE"]
    #   resp.data.facet_results[0].document_attribute_value_count_pairs #=> Array<DocumentAttributeValueCountPair>
    #   resp.data.facet_results[0].document_attribute_value_count_pairs[0] #=> Types::DocumentAttributeValueCountPair
    #   resp.data.facet_results[0].document_attribute_value_count_pairs[0].document_attribute_value #=> Types::DocumentAttributeValue
    #   resp.data.facet_results[0].document_attribute_value_count_pairs[0].count #=> Integer
    #   resp.data.facet_results[0].document_attribute_value_count_pairs[0].facet_results #=> Array<FacetResult>
    #   resp.data.total_number_of_results #=> Integer
    #   resp.data.warnings #=> Array<Warning>
    #   resp.data.warnings[0] #=> Types::Warning
    #   resp.data.warnings[0].message #=> String
    #   resp.data.warnings[0].code #=> String, one of ["QUERY_LANGUAGE_INVALID_SYNTAX"]
    #   resp.data.spell_corrected_queries #=> Array<SpellCorrectedQuery>
    #   resp.data.spell_corrected_queries[0] #=> Types::SpellCorrectedQuery
    #   resp.data.spell_corrected_queries[0].suggested_query_text #=> String
    #   resp.data.spell_corrected_queries[0].corrections #=> Array<Correction>
    #   resp.data.spell_corrected_queries[0].corrections[0] #=> Types::Correction
    #   resp.data.spell_corrected_queries[0].corrections[0].begin_offset #=> Integer
    #   resp.data.spell_corrected_queries[0].corrections[0].end_offset #=> Integer
    #   resp.data.spell_corrected_queries[0].corrections[0].term #=> String
    #   resp.data.spell_corrected_queries[0].corrections[0].corrected_term #=> String
    #
    def query(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::QueryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::QueryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::Query
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::ConflictException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::Query
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::Query,
        stubs: @stubs,
        params_class: Params::QueryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :query
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts a synchronization job for a data source. If a synchronization
    #       job is already in progress, Amazon Kendra returns a
    #         <code>ResourceInUseException</code> exception.</p>
    #
    # @param [Hash] params
    #   See {Types::StartDataSourceSyncJobInput}.
    #
    # @option params [String] :id
    #   <p>The identifier of the data source to synchronize.</p>
    #
    # @option params [String] :index_id
    #   <p>The identifier of the index that contains the data source.</p>
    #
    # @return [Types::StartDataSourceSyncJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_data_source_sync_job(
    #     id: 'Id', # required
    #     index_id: 'IndexId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartDataSourceSyncJobOutput
    #   resp.data.execution_id #=> String
    #
    def start_data_source_sync_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartDataSourceSyncJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartDataSourceSyncJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartDataSourceSyncJob
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceInUseException, Errors::ConflictException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::StartDataSourceSyncJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartDataSourceSyncJob,
        stubs: @stubs,
        params_class: Params::StartDataSourceSyncJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_data_source_sync_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Stops a synchronization job that is currently running.
    #       You can't stop a scheduled synchronization job.</p>
    #
    # @param [Hash] params
    #   See {Types::StopDataSourceSyncJobInput}.
    #
    # @option params [String] :id
    #   <p>The identifier of the data source for which to stop the
    #         synchronization jobs.</p>
    #
    # @option params [String] :index_id
    #   <p>The identifier of the index that contains the data source.</p>
    #
    # @return [Types::StopDataSourceSyncJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_data_source_sync_job(
    #     id: 'Id', # required
    #     index_id: 'IndexId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopDataSourceSyncJobOutput
    #
    def stop_data_source_sync_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopDataSourceSyncJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopDataSourceSyncJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopDataSourceSyncJob
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::StopDataSourceSyncJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopDataSourceSyncJob,
        stubs: @stubs,
        params_class: Params::StopDataSourceSyncJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_data_source_sync_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Enables you to provide feedback to Amazon Kendra to improve the
    #             performance of your index.</p>
    #         <p>
    #             <code>SubmitFeedback</code> is currently not supported in the
    #             Amazon Web Services GovCloud (US-West) region.</p>
    #
    # @param [Hash] params
    #   See {Types::SubmitFeedbackInput}.
    #
    # @option params [String] :index_id
    #   <p>The identifier of the index that was queried.</p>
    #
    # @option params [String] :query_id
    #   <p>The identifier of the specific query for which you are submitting
    #               feedback. The query ID is returned in the response to the
    #                   <code>Query</code> API.</p>
    #
    # @option params [Array<ClickFeedback>] :click_feedback_items
    #   <p>Tells Amazon Kendra that a particular search result link was chosen
    #               by the user. </p>
    #
    # @option params [Array<RelevanceFeedback>] :relevance_feedback_items
    #   <p>Provides Amazon Kendra with relevant or not relevant feedback for
    #               whether a particular item was relevant to the search.</p>
    #
    # @return [Types::SubmitFeedbackOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.submit_feedback(
    #     index_id: 'IndexId', # required
    #     query_id: 'QueryId', # required
    #     click_feedback_items: [
    #       {
    #         result_id: 'ResultId', # required
    #         click_time: Time.now # required
    #       }
    #     ],
    #     relevance_feedback_items: [
    #       {
    #         result_id: 'ResultId', # required
    #         relevance_value: 'RELEVANT' # required - accepts ["RELEVANT", "NOT_RELEVANT"]
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SubmitFeedbackOutput
    #
    def submit_feedback(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SubmitFeedbackInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SubmitFeedbackInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SubmitFeedback
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceUnavailableException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::SubmitFeedback
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SubmitFeedback,
        stubs: @stubs,
        params_class: Params::SubmitFeedbackOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :submit_feedback
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds the specified tag to the specified index, FAQ, or data source
    #       resource. If the tag already exists, the existing value is replaced with
    #       the new value.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the index, FAQ, or data source to
    #         tag.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of tag keys to add to the index, FAQ, or data source. If a tag
    #         already exists, the existing value is replaced with the new value.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'ResourceARN', # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::TagResourceOutput
    #
    def tag_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TagResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TagResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TagResource
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceUnavailableException, Errors::ThrottlingException]),
        data_parser: Parsers::TagResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::TagResource,
        stubs: @stubs,
        params_class: Params::TagResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :tag_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes a tag from an index, FAQ, or a data source.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the index, FAQ, or data source to
    #         remove the tag from.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>A list of tag keys to remove from the index, FAQ, or data source. If a
    #         tag key does not exist on the resource, it is ignored.</p>
    #
    # @return [Types::UntagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource(
    #     resource_arn: 'ResourceARN', # required
    #     tag_keys: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UntagResourceOutput
    #
    def untag_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UntagResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UntagResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UntagResource
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceUnavailableException, Errors::ThrottlingException]),
        data_parser: Parsers::UntagResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UntagResource,
        stubs: @stubs,
        params_class: Params::UntagResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :untag_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an existing Amazon Kendra data source.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateDataSourceInput}.
    #
    # @option params [String] :id
    #   <p>The unique identifier of the data source to update.</p>
    #
    # @option params [String] :name
    #   <p>The name of the data source to update. The name of the data source
    #         can't be updated. To rename a data source you must delete the data source
    #         and re-create it.</p>
    #
    # @option params [String] :index_id
    #   <p>The identifier of the index that contains the data source to
    #         update.</p>
    #
    # @option params [DataSourceConfiguration] :configuration
    #   <p>Configuration information for an Amazon Kendra data source you want to update.</p>
    #
    # @option params [String] :description
    #   <p>The new description for the data source.</p>
    #
    # @option params [String] :schedule
    #   <p>The new update schedule for the data source.</p>
    #
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the new role to use when the data
    #         source is accessing resources on your behalf.</p>
    #
    # @option params [String] :language_code
    #   <p>The code for a language. This allows you to support a language for all
    #               documents when updating the data source. English is supported
    #               by default. For more information on supported languages, including their codes,
    #               see <a href="https://docs.aws.amazon.com/kendra/latest/dg/in-adding-languages.html">Adding
    #                   documents in languages other than English</a>.</p>
    #
    # @option params [CustomDocumentEnrichmentConfiguration] :custom_document_enrichment_configuration
    #   <p>Configuration information for altering document metadata and content during the
    #               document ingestion process when you update a data source.</p>
    #           <p>For more information on how to create, modify and delete document metadata, or make
    #               other content alterations when you ingest documents into Amazon Kendra, see
    #               <a href="https://docs.aws.amazon.com/kendra/latest/dg/custom-document-enrichment.html">Customizing
    #                   document metadata during the ingestion process</a>.</p>
    #
    # @return [Types::UpdateDataSourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_data_source(
    #     id: 'Id', # required
    #     name: 'Name',
    #     index_id: 'IndexId', # required
    #     configuration: {
    #       s3_configuration: {
    #         bucket_name: 'BucketName', # required
    #         inclusion_prefixes: [
    #           'member'
    #         ],
    #         documents_metadata_configuration: {
    #           s3_prefix: 'S3Prefix'
    #         },
    #         access_control_list_configuration: {
    #           key_path: 'KeyPath'
    #         }
    #       },
    #       share_point_configuration: {
    #         share_point_version: 'SHAREPOINT_2013', # required - accepts ["SHAREPOINT_2013", "SHAREPOINT_2016", "SHAREPOINT_ONLINE"]
    #         urls: [
    #           'member'
    #         ], # required
    #         secret_arn: 'SecretArn', # required
    #         crawl_attachments: false,
    #         use_change_log: false,
    #         vpc_configuration: {
    #           subnet_ids: [
    #             'member'
    #           ], # required
    #           security_group_ids: [
    #             'member'
    #           ] # required
    #         },
    #         field_mappings: [
    #           {
    #             data_source_field_name: 'DataSourceFieldName', # required
    #             date_field_format: 'DateFieldFormat',
    #             index_field_name: 'IndexFieldName' # required
    #           }
    #         ],
    #         document_title_field_name: 'DocumentTitleFieldName',
    #         disable_local_groups: false,
    #         ssl_certificate_s3_path: {
    #           bucket: 'Bucket', # required
    #           key: 'Key' # required
    #         }
    #       },
    #       database_configuration: {
    #         database_engine_type: 'RDS_AURORA_MYSQL', # required - accepts ["RDS_AURORA_MYSQL", "RDS_AURORA_POSTGRESQL", "RDS_MYSQL", "RDS_POSTGRESQL"]
    #         connection_configuration: {
    #           database_host: 'DatabaseHost', # required
    #           database_port: 1, # required
    #           database_name: 'DatabaseName', # required
    #           table_name: 'TableName', # required
    #           secret_arn: 'SecretArn' # required
    #         }, # required
    #         column_configuration: {
    #           document_id_column_name: 'DocumentIdColumnName', # required
    #           document_data_column_name: 'DocumentDataColumnName', # required
    #           document_title_column_name: 'DocumentTitleColumnName',
    #           change_detecting_columns: [
    #             'member'
    #           ] # required
    #         }, # required
    #         acl_configuration: {
    #           allowed_groups_column_name: 'AllowedGroupsColumnName' # required
    #         },
    #         sql_configuration: {
    #           query_identifiers_enclosing_option: 'DOUBLE_QUOTES' # accepts ["DOUBLE_QUOTES", "NONE"]
    #         }
    #       },
    #       salesforce_configuration: {
    #         server_url: 'ServerUrl', # required
    #         secret_arn: 'SecretArn', # required
    #         standard_object_configurations: [
    #           {
    #             name: 'ACCOUNT', # required - accepts ["ACCOUNT", "CAMPAIGN", "CASE", "CONTACT", "CONTRACT", "DOCUMENT", "GROUP", "IDEA", "LEAD", "OPPORTUNITY", "PARTNER", "PRICEBOOK", "PRODUCT", "PROFILE", "SOLUTION", "TASK", "USER"]
    #             document_data_field_name: 'DocumentDataFieldName', # required
    #             document_title_field_name: 'DocumentTitleFieldName',
    #           }
    #         ],
    #         knowledge_article_configuration: {
    #           included_states: [
    #             'DRAFT' # accepts ["DRAFT", "PUBLISHED", "ARCHIVED"]
    #           ], # required
    #           standard_knowledge_article_type_configuration: {
    #             document_data_field_name: 'DocumentDataFieldName', # required
    #             document_title_field_name: 'DocumentTitleFieldName',
    #           },
    #           custom_knowledge_article_type_configurations: [
    #             {
    #               name: 'Name', # required
    #               document_data_field_name: 'DocumentDataFieldName', # required
    #               document_title_field_name: 'DocumentTitleFieldName',
    #             }
    #           ]
    #         },
    #         chatter_feed_configuration: {
    #           document_data_field_name: 'DocumentDataFieldName', # required
    #           document_title_field_name: 'DocumentTitleFieldName',
    #           include_filter_types: [
    #             'ACTIVE_USER' # accepts ["ACTIVE_USER", "STANDARD_USER"]
    #           ]
    #         },
    #         crawl_attachments: false,
    #         standard_object_attachment_configuration: {
    #           document_title_field_name: 'DocumentTitleFieldName',
    #         },
    #       },
    #       one_drive_configuration: {
    #         tenant_domain: 'TenantDomain', # required
    #         secret_arn: 'SecretArn', # required
    #         one_drive_users: {
    #           one_drive_user_list: [
    #             'member'
    #           ],
    #         }, # required
    #         disable_local_groups: false
    #       },
    #       service_now_configuration: {
    #         host_url: 'HostUrl', # required
    #         secret_arn: 'SecretArn', # required
    #         service_now_build_version: 'LONDON', # required - accepts ["LONDON", "OTHERS"]
    #         knowledge_article_configuration: {
    #           crawl_attachments: false,
    #           document_data_field_name: 'DocumentDataFieldName', # required
    #           document_title_field_name: 'DocumentTitleFieldName',
    #           filter_query: 'FilterQuery'
    #         },
    #         service_catalog_configuration: {
    #           crawl_attachments: false,
    #           document_data_field_name: 'DocumentDataFieldName', # required
    #           document_title_field_name: 'DocumentTitleFieldName',
    #         },
    #         authentication_type: 'HTTP_BASIC' # accepts ["HTTP_BASIC", "OAUTH2"]
    #       },
    #       confluence_configuration: {
    #         server_url: 'ServerUrl', # required
    #         secret_arn: 'SecretArn', # required
    #         version: 'CLOUD', # required - accepts ["CLOUD", "SERVER"]
    #         space_configuration: {
    #           crawl_personal_spaces: false,
    #           crawl_archived_spaces: false,
    #           include_spaces: [
    #             'member'
    #           ],
    #           space_field_mappings: [
    #             {
    #               data_source_field_name: 'DISPLAY_URL', # accepts ["DISPLAY_URL", "ITEM_TYPE", "SPACE_KEY", "URL"]
    #               date_field_format: 'DateFieldFormat',
    #               index_field_name: 'IndexFieldName'
    #             }
    #           ]
    #         },
    #         page_configuration: {
    #           page_field_mappings: [
    #             {
    #               data_source_field_name: 'AUTHOR', # accepts ["AUTHOR", "CONTENT_STATUS", "CREATED_DATE", "DISPLAY_URL", "ITEM_TYPE", "LABELS", "MODIFIED_DATE", "PARENT_ID", "SPACE_KEY", "SPACE_NAME", "URL", "VERSION"]
    #               date_field_format: 'DateFieldFormat',
    #               index_field_name: 'IndexFieldName'
    #             }
    #           ]
    #         },
    #         blog_configuration: {
    #           blog_field_mappings: [
    #             {
    #               data_source_field_name: 'AUTHOR', # accepts ["AUTHOR", "DISPLAY_URL", "ITEM_TYPE", "LABELS", "PUBLISH_DATE", "SPACE_KEY", "SPACE_NAME", "URL", "VERSION"]
    #               date_field_format: 'DateFieldFormat',
    #               index_field_name: 'IndexFieldName'
    #             }
    #           ]
    #         },
    #         attachment_configuration: {
    #           crawl_attachments: false,
    #           attachment_field_mappings: [
    #             {
    #               data_source_field_name: 'AUTHOR', # accepts ["AUTHOR", "CONTENT_TYPE", "CREATED_DATE", "DISPLAY_URL", "FILE_SIZE", "ITEM_TYPE", "PARENT_ID", "SPACE_KEY", "SPACE_NAME", "URL", "VERSION"]
    #               date_field_format: 'DateFieldFormat',
    #               index_field_name: 'IndexFieldName'
    #             }
    #           ]
    #         },
    #       },
    #       google_drive_configuration: {
    #         secret_arn: 'SecretArn', # required
    #         exclude_mime_types: [
    #           'member'
    #         ],
    #         exclude_user_accounts: [
    #           'member'
    #         ],
    #         exclude_shared_drives: [
    #           'member'
    #         ]
    #       },
    #       web_crawler_configuration: {
    #         urls: {
    #           seed_url_configuration: {
    #             seed_urls: [
    #               'member'
    #             ], # required
    #             web_crawler_mode: 'HOST_ONLY' # accepts ["HOST_ONLY", "SUBDOMAINS", "EVERYTHING"]
    #           },
    #           site_maps_configuration: {
    #             site_maps: [
    #               'member'
    #             ] # required
    #           }
    #         }, # required
    #         crawl_depth: 1,
    #         max_links_per_page: 1,
    #         max_content_size_per_page_in_mega_bytes: 1.0,
    #         max_urls_per_minute_crawl_rate: 1,
    #         proxy_configuration: {
    #           host: 'Host', # required
    #           port: 1, # required
    #           credentials: 'Credentials'
    #         },
    #         authentication_configuration: {
    #           basic_authentication: [
    #             {
    #               host: 'Host', # required
    #               port: 1, # required
    #               credentials: 'Credentials' # required
    #             }
    #           ]
    #         }
    #       },
    #       work_docs_configuration: {
    #         organization_id: 'OrganizationId', # required
    #         crawl_comments: false,
    #         use_change_log: false,
    #       },
    #       fsx_configuration: {
    #         file_system_id: 'FileSystemId', # required
    #         file_system_type: 'WINDOWS', # required - accepts ["WINDOWS"]
    #         secret_arn: 'SecretArn',
    #       },
    #       slack_configuration: {
    #         team_id: 'TeamId', # required
    #         secret_arn: 'SecretArn', # required
    #         slack_entity_list: [
    #           'PUBLIC_CHANNEL' # accepts ["PUBLIC_CHANNEL", "PRIVATE_CHANNEL", "GROUP_MESSAGE", "DIRECT_MESSAGE"]
    #         ], # required
    #         use_change_log: false,
    #         crawl_bot_message: false,
    #         exclude_archived: false,
    #         since_crawl_date: 'SinceCrawlDate', # required
    #         look_back_period: 1,
    #         private_channel_filter: [
    #           'member'
    #         ],
    #         public_channel_filter: [
    #           'member'
    #         ],
    #       },
    #       box_configuration: {
    #         enterprise_id: 'EnterpriseId', # required
    #         secret_arn: 'SecretArn', # required
    #         use_change_log: false,
    #         crawl_comments: false,
    #         crawl_tasks: false,
    #         crawl_web_links: false,
    #       },
    #       quip_configuration: {
    #         domain: 'Domain', # required
    #         secret_arn: 'SecretArn', # required
    #         crawl_file_comments: false,
    #         crawl_chat_rooms: false,
    #         crawl_attachments: false,
    #         folder_ids: [
    #           'member'
    #         ],
    #       },
    #       jira_configuration: {
    #         jira_account_url: 'JiraAccountUrl', # required
    #         secret_arn: 'SecretArn', # required
    #         use_change_log: false,
    #         project: [
    #           'member'
    #         ],
    #         issue_type: [
    #           'member'
    #         ],
    #         status: [
    #           'member'
    #         ],
    #         issue_sub_entity_filter: [
    #           'COMMENTS' # accepts ["COMMENTS", "ATTACHMENTS", "WORKLOGS"]
    #         ],
    #       },
    #       git_hub_configuration: {
    #         saa_s_configuration: {
    #           organization_name: 'OrganizationName', # required
    #           host_url: 'HostUrl' # required
    #         },
    #         on_premise_configuration: {
    #           host_url: 'HostUrl', # required
    #           organization_name: 'OrganizationName', # required
    #         },
    #         type: 'SAAS', # accepts ["SAAS", "ON_PREMISE"]
    #         secret_arn: 'SecretArn', # required
    #         use_change_log: false,
    #         git_hub_document_crawl_properties: {
    #           crawl_repository_documents: false,
    #           crawl_issue: false,
    #           crawl_issue_comment: false,
    #           crawl_issue_comment_attachment: false,
    #           crawl_pull_request: false,
    #           crawl_pull_request_comment: false,
    #           crawl_pull_request_comment_attachment: false
    #         },
    #         repository_filter: [
    #           'member'
    #         ],
    #         inclusion_folder_name_patterns: [
    #           'member'
    #         ],
    #       }
    #     },
    #     description: 'Description',
    #     schedule: 'Schedule',
    #     role_arn: 'RoleArn',
    #     language_code: 'LanguageCode',
    #     custom_document_enrichment_configuration: {
    #       inline_configurations: [
    #         {
    #           condition: {
    #             condition_document_attribute_key: 'ConditionDocumentAttributeKey', # required
    #             operator: 'GreaterThan', # required - accepts ["GreaterThan", "GreaterThanOrEquals", "LessThan", "LessThanOrEquals", "Equals", "NotEquals", "Contains", "NotContains", "Exists", "NotExists", "BeginsWith"]
    #             condition_on_value: {
    #               string_value: 'StringValue',
    #               string_list_value: [
    #                 'member'
    #               ],
    #               long_value: 1,
    #               date_value: Time.now
    #             }
    #           },
    #           target: {
    #             target_document_attribute_key: 'TargetDocumentAttributeKey',
    #             target_document_attribute_value_deletion: false,
    #           },
    #           document_content_deletion: false
    #         }
    #       ],
    #       pre_extraction_hook_configuration: {
    #         lambda_arn: 'LambdaArn', # required
    #         s3_bucket: 'S3Bucket' # required
    #       },
    #       role_arn: 'RoleArn'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateDataSourceOutput
    #
    def update_data_source(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateDataSourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateDataSourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateDataSource
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::UpdateDataSource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateDataSource,
        stubs: @stubs,
        params_class: Params::UpdateDataSourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_data_source
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates your Amazon Kendra experience such as a search application. For more information on
    #             creating a search application experience, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html">Building a
    #                 search experience with no code</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateExperienceInput}.
    #
    # @option params [String] :id
    #   <p>The identifier of your Amazon Kendra experience you want to update.</p>
    #
    # @option params [String] :name
    #   <p>The name of your Amazon Kendra experience you want to update.</p>
    #
    # @option params [String] :index_id
    #   <p>The identifier of the index for your Amazon Kendra experience you want to update.</p>
    #
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of a role with permission to access <code>Query</code>
    #               API, <code>QuerySuggestions</code> API, <code>SubmitFeedback</code>
    #               API, and Amazon Web Services SSO that stores your user and group information.
    #               For more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html">IAM roles for Amazon Kendra</a>.</p>
    #
    # @option params [ExperienceConfiguration] :configuration
    #   <p>Configuration information for your Amazon Kendra you want to update.</p>
    #
    # @option params [String] :description
    #   <p>The description of your Amazon Kendra experience you want to update.</p>
    #
    # @return [Types::UpdateExperienceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_experience(
    #     id: 'Id', # required
    #     name: 'Name',
    #     index_id: 'IndexId', # required
    #     role_arn: 'RoleArn',
    #     configuration: {
    #       content_source_configuration: {
    #         data_source_ids: [
    #           'member'
    #         ],
    #         faq_ids: [
    #           'member'
    #         ],
    #         direct_put_content: false
    #       },
    #       user_identity_configuration: {
    #         identity_attribute_name: 'IdentityAttributeName'
    #       }
    #     },
    #     description: 'Description'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateExperienceOutput
    #
    def update_experience(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateExperienceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateExperienceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateExperience
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::UpdateExperience
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateExperience,
        stubs: @stubs,
        params_class: Params::UpdateExperienceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_experience
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an existing Amazon Kendra index.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateIndexInput}.
    #
    # @option params [String] :id
    #   <p>The identifier of the index to update.</p>
    #
    # @option params [String] :name
    #   <p>The name of the index to update.</p>
    #
    # @option params [String] :role_arn
    #   <p>A new IAM role that gives Amazon Kendra permission to access your
    #         Amazon CloudWatch logs.</p>
    #
    # @option params [String] :description
    #   <p>A new description for the index.</p>
    #
    # @option params [Array<DocumentMetadataConfiguration>] :document_metadata_configuration_updates
    #   <p>The document metadata you want to update.</p>
    #
    # @option params [CapacityUnitsConfiguration] :capacity_units
    #   <p>Sets the number of additional document storage and query capacity
    #         units that should be used by the index. You can change the capacity of
    #         the index up to 5 times per day, or make 5 API calls.</p>
    #            <p>If you are using extra storage units, you can't reduce the storage
    #         capacity below what is required to meet the storage needs for your
    #         index.</p>
    #
    # @option params [Array<UserTokenConfiguration>] :user_token_configurations
    #   <p>The user token configuration.</p>
    #
    # @option params [String] :user_context_policy
    #   <p>The user context policy.</p>
    #
    # @option params [UserGroupResolutionConfiguration] :user_group_resolution_configuration
    #   <p>Enables fetching access levels of groups and users from an Amazon Web Services Single Sign On
    #            identity source. To configure this, see
    #            <a href="https://docs.aws.amazon.com/kendra/latest/dg/API_UserGroupResolutionConfiguration.html">UserGroupResolutionConfiguration</a>.</p>
    #
    # @return [Types::UpdateIndexOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_index(
    #     id: 'Id', # required
    #     name: 'Name',
    #     role_arn: 'RoleArn',
    #     description: 'Description',
    #     document_metadata_configuration_updates: [
    #       {
    #         name: 'Name', # required
    #         type: 'STRING_VALUE', # required - accepts ["STRING_VALUE", "STRING_LIST_VALUE", "LONG_VALUE", "DATE_VALUE"]
    #         relevance: {
    #           freshness: false,
    #           importance: 1,
    #           duration: 'Duration',
    #           rank_order: 'ASCENDING', # accepts ["ASCENDING", "DESCENDING"]
    #           value_importance_map: {
    #             'key' => 1
    #           }
    #         },
    #         search: {
    #           facetable: false,
    #           searchable: false,
    #           displayable: false,
    #           sortable: false
    #         }
    #       }
    #     ],
    #     capacity_units: {
    #       storage_capacity_units: 1, # required
    #       query_capacity_units: 1 # required
    #     },
    #     user_token_configurations: [
    #       {
    #         jwt_token_type_configuration: {
    #           key_location: 'URL', # required - accepts ["URL", "SECRET_MANAGER"]
    #           url: 'URL',
    #           secret_manager_arn: 'SecretManagerArn',
    #           user_name_attribute_field: 'UserNameAttributeField',
    #           group_attribute_field: 'GroupAttributeField',
    #           issuer: 'Issuer',
    #           claim_regex: 'ClaimRegex'
    #         },
    #         json_token_type_configuration: {
    #           user_name_attribute_field: 'UserNameAttributeField', # required
    #           group_attribute_field: 'GroupAttributeField' # required
    #         }
    #       }
    #     ],
    #     user_context_policy: 'ATTRIBUTE_FILTER', # accepts ["ATTRIBUTE_FILTER", "USER_TOKEN"]
    #     user_group_resolution_configuration: {
    #       user_group_resolution_mode: 'AWS_SSO' # required - accepts ["AWS_SSO", "NONE"]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateIndexOutput
    #
    def update_index(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateIndexInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateIndexInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateIndex
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::ConflictException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::UpdateIndex
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateIndex,
        stubs: @stubs,
        params_class: Params::UpdateIndexOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_index
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a block list used for query suggestions for an index.</p>
    #         <p>Updates to a block list might not take effect right away. Amazon Kendra
    #             needs to refresh the entire suggestions list to apply any updates to the
    #             block list. Other changes not related to the block list apply immediately.</p>
    #         <p>If a block list is updating, then you need to wait for the first update to
    #             finish before submitting another update.</p>
    #         <p>Amazon Kendra supports partial updates, so you only need to provide the fields
    #             you want to update.</p>
    #         <p>
    #             <code>UpdateQuerySuggestionsBlockList</code> is currently not supported in the
    #             Amazon Web Services GovCloud (US-West) region.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateQuerySuggestionsBlockListInput}.
    #
    # @option params [String] :index_id
    #   <p>The identifier of the index for a block list.</p>
    #
    # @option params [String] :id
    #   <p>The unique identifier of a block list.</p>
    #
    # @option params [String] :name
    #   <p>The name of a block list.</p>
    #
    # @option params [String] :description
    #   <p>The description for a block list.</p>
    #
    # @option params [S3Path] :source_s3_path
    #   <p>The S3 path where your block list text file sits in S3.</p>
    #           <p>If you update your block list and provide the same path to the
    #               block list text file in S3, then Amazon Kendra reloads the file to refresh
    #               the block list. Amazon Kendra does not automatically refresh your block list.
    #               You need to call the <code>UpdateQuerySuggestionsBlockList</code> API
    #               to refresh you block list.</p>
    #           <p>If you update your block list, then Amazon Kendra asynchronously refreshes
    #               all query suggestions with the latest content in the S3 file. This
    #               means changes might not take effect immediately.</p>
    #
    # @option params [String] :role_arn
    #   <p>The IAM (Identity and Access Management) role used to access the
    #               block list text file in S3.</p>
    #
    # @return [Types::UpdateQuerySuggestionsBlockListOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_query_suggestions_block_list(
    #     index_id: 'IndexId', # required
    #     id: 'Id', # required
    #     name: 'Name',
    #     description: 'Description',
    #     source_s3_path: {
    #       bucket: 'Bucket', # required
    #       key: 'Key' # required
    #     },
    #     role_arn: 'RoleArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateQuerySuggestionsBlockListOutput
    #
    def update_query_suggestions_block_list(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateQuerySuggestionsBlockListInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateQuerySuggestionsBlockListInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateQuerySuggestionsBlockList
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::UpdateQuerySuggestionsBlockList
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateQuerySuggestionsBlockList,
        stubs: @stubs,
        params_class: Params::UpdateQuerySuggestionsBlockListOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_query_suggestions_block_list
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the settings of query suggestions for an index.</p>
    #         <p>Amazon Kendra supports partial updates, so you only need to provide
    #             the fields you want to update.</p>
    #         <p>If an update is currently processing (i.e. 'happening'), you
    #             need to wait for the update to finish before making another update.</p>
    #         <p>Updates to query suggestions settings might not take effect right away.
    #             The time for your updated settings to take effect depends on the updates
    #             made and the number of search queries in your index.</p>
    #         <p>You can still enable/disable query suggestions at any time.</p>
    #         <p>
    #             <code>UpdateQuerySuggestionsConfig</code> is currently not supported in the
    #             Amazon Web Services GovCloud (US-West) region.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateQuerySuggestionsConfigInput}.
    #
    # @option params [String] :index_id
    #   <p>The identifier of the index you want to update query suggestions settings for.</p>
    #
    # @option params [String] :mode
    #   <p>Set the mode to <code>ENABLED</code> or <code>LEARN_ONLY</code>.</p>
    #           <p>By default, Amazon Kendra enables query suggestions.
    #               <code>LEARN_ONLY</code> mode allows you to turn off query suggestions.
    #               You can to update this at any time.</p>
    #           <p>In <code>LEARN_ONLY</code> mode, Amazon Kendra continues to learn from new
    #               queries to keep suggestions up to date for when you are ready to
    #               switch to ENABLED mode again.</p>
    #
    # @option params [Integer] :query_log_look_back_window_in_days
    #   <p>How recent your queries are in your query log time window.</p>
    #           <p>The time window is the number of days from current day to past days.</p>
    #           <p>By default, Amazon Kendra sets this to 180.</p>
    #
    # @option params [Boolean] :include_queries_without_user_information
    #   <p>
    #               <code>TRUE</code> to include queries without user information (i.e. all queries,
    #               irrespective of the user), otherwise <code>FALSE</code> to only include queries
    #               with user information.</p>
    #           <p>If you pass user information to Amazon Kendra along with the queries, you can set this
    #               flag to <code>FALSE</code> and instruct Amazon Kendra to only consider queries with user
    #               information.</p>
    #           <p>If you set to <code>FALSE</code>, Amazon Kendra only considers queries searched at least
    #               <code>MinimumQueryCount</code> times across <code>MinimumNumberOfQueryingUsers</code>
    #               unique users for suggestions.</p>
    #           <p>If you set to <code>TRUE</code>, Amazon Kendra ignores all user information and learns
    #               from all queries.</p>
    #
    # @option params [Integer] :minimum_number_of_querying_users
    #   <p>The minimum number of unique users who must search a query in order for the query
    #               to be eligible to suggest to your users.</p>
    #           <p>Increasing this number might decrease the number of suggestions. However, this
    #               ensures a query is searched by many users and is truly popular to suggest to users.</p>
    #           <p>How you tune this setting depends on your specific needs.</p>
    #
    # @option params [Integer] :minimum_query_count
    #   <p>The the minimum number of times a query must be searched in order to be
    #               eligible to suggest to your users.</p>
    #           <p>Decreasing this number increases the number of suggestions. However, this
    #               affects the quality of suggestions as it sets a low bar for a query to be
    #               considered popular to suggest to users.</p>
    #           <p>How you tune this setting depends on your specific needs.</p>
    #
    # @return [Types::UpdateQuerySuggestionsConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_query_suggestions_config(
    #     index_id: 'IndexId', # required
    #     mode: 'ENABLED', # accepts ["ENABLED", "LEARN_ONLY"]
    #     query_log_look_back_window_in_days: 1,
    #     include_queries_without_user_information: false,
    #     minimum_number_of_querying_users: 1,
    #     minimum_query_count: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateQuerySuggestionsConfigOutput
    #
    def update_query_suggestions_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateQuerySuggestionsConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateQuerySuggestionsConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateQuerySuggestionsConfig
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::UpdateQuerySuggestionsConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateQuerySuggestionsConfig,
        stubs: @stubs,
        params_class: Params::UpdateQuerySuggestionsConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_query_suggestions_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a thesaurus file associated with an index.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateThesaurusInput}.
    #
    # @option params [String] :id
    #   <p>The identifier of the thesaurus to update.</p>
    #
    # @option params [String] :name
    #   <p>The updated name of the thesaurus.</p>
    #
    # @option params [String] :index_id
    #   <p>The identifier of the index associated with the thesaurus to update.</p>
    #
    # @option params [String] :description
    #   <p>The updated description of the thesaurus.</p>
    #
    # @option params [String] :role_arn
    #   <p>The updated role ARN of the thesaurus.</p>
    #
    # @option params [S3Path] :source_s3_path
    #   <p>Information required to find a specific file in an Amazon S3
    #               bucket.</p>
    #
    # @return [Types::UpdateThesaurusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_thesaurus(
    #     id: 'Id', # required
    #     name: 'Name',
    #     index_id: 'IndexId', # required
    #     description: 'Description',
    #     role_arn: 'RoleArn',
    #     source_s3_path: {
    #       bucket: 'Bucket', # required
    #       key: 'Key' # required
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateThesaurusOutput
    #
    def update_thesaurus(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateThesaurusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateThesaurusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateThesaurus
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::UpdateThesaurus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateThesaurus,
        stubs: @stubs,
        params_class: Params::UpdateThesaurusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_thesaurus
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
