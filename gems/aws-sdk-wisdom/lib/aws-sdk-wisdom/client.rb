# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::Wisdom
  # An API client for WisdomService
  # See {#initialize} for a full list of supported configuration options
  # <p>Amazon Connect Wisdom delivers agents the information they need to solve customer issues as they're actively
  #         speaking with customers. Agents can search across connected repositories from within their agent desktop
  #         to find answers quickly. Use the Amazon Connect Wisdom APIs to create an assistant and a knowledge base, for example, or manage content by uploading custom files.</p>
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
    def initialize(config = AWS::SDK::Wisdom::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Creates an Amazon Connect Wisdom assistant.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateAssistantInput}.
    #
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #      request.</p>
    #
    # @option params [String] :name
    #   <p>The name of the assistant.</p>
    #
    # @option params [String] :type
    #   <p>The type of assistant.</p>
    #
    # @option params [String] :description
    #   <p>The description of the assistant.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    # @option params [ServerSideEncryptionConfiguration] :server_side_encryption_configuration
    #   <p>The KMS key used for encryption.</p>
    #
    # @return [Types::CreateAssistantOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_assistant(
    #     client_token: 'clientToken',
    #     name: 'name', # required
    #     type: 'AGENT', # required - accepts ["AGENT"]
    #     description: 'description',
    #     tags: {
    #       'key' => 'value'
    #     },
    #     server_side_encryption_configuration: {
    #       kms_key_id: 'kmsKeyId'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateAssistantOutput
    #   resp.data.assistant #=> Types::AssistantData
    #   resp.data.assistant.assistant_id #=> String
    #   resp.data.assistant.assistant_arn #=> String
    #   resp.data.assistant.name #=> String
    #   resp.data.assistant.type #=> String, one of ["AGENT"]
    #   resp.data.assistant.status #=> String, one of ["CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED"]
    #   resp.data.assistant.description #=> String
    #   resp.data.assistant.tags #=> Hash<String, String>
    #   resp.data.assistant.tags['key'] #=> String
    #   resp.data.assistant.server_side_encryption_configuration #=> Types::ServerSideEncryptionConfiguration
    #   resp.data.assistant.server_side_encryption_configuration.kms_key_id #=> String
    #
    def create_assistant(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateAssistantInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateAssistantInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateAssistant
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::ConflictException, Errors::ValidationException, Errors::AccessDeniedException]),
        data_parser: Parsers::CreateAssistant
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateAssistant,
        stubs: @stubs,
        params_class: Params::CreateAssistantOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_assistant
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an association between an Amazon Connect Wisdom assistant and another resource. Currently, the
    #       only supported association is with a knowledge base. An assistant can have only a single
    #       association.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateAssistantAssociationInput}.
    #
    # @option params [String] :assistant_id
    #   <p>The identifier of the Wisdom assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #
    # @option params [String] :association_type
    #   <p>The type of association.</p>
    #
    # @option params [AssistantAssociationInputData] :association
    #   <p>The identifier of the associated resource.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #      request.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    # @return [Types::CreateAssistantAssociationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_assistant_association(
    #     assistant_id: 'assistantId', # required
    #     association_type: 'KNOWLEDGE_BASE', # required - accepts ["KNOWLEDGE_BASE"]
    #     association: {
    #       # One of:
    #       knowledge_base_id: 'knowledgeBaseId'
    #     }, # required
    #     client_token: 'clientToken',
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateAssistantAssociationOutput
    #   resp.data.assistant_association #=> Types::AssistantAssociationData
    #   resp.data.assistant_association.assistant_association_id #=> String
    #   resp.data.assistant_association.assistant_association_arn #=> String
    #   resp.data.assistant_association.assistant_id #=> String
    #   resp.data.assistant_association.assistant_arn #=> String
    #   resp.data.assistant_association.association_type #=> String, one of ["KNOWLEDGE_BASE"]
    #   resp.data.assistant_association.association_data #=> Types::AssistantAssociationOutputData, one of [KnowledgeBaseAssociation]
    #   resp.data.assistant_association.association_data.knowledge_base_association #=> Types::KnowledgeBaseAssociationData
    #   resp.data.assistant_association.association_data.knowledge_base_association.knowledge_base_id #=> String
    #   resp.data.assistant_association.association_data.knowledge_base_association.knowledge_base_arn #=> String
    #   resp.data.assistant_association.tags #=> Hash<String, String>
    #   resp.data.assistant_association.tags['key'] #=> String
    #
    def create_assistant_association(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateAssistantAssociationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateAssistantAssociationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateAssistantAssociation
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::ConflictException, Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::CreateAssistantAssociation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateAssistantAssociation,
        stubs: @stubs,
        params_class: Params::CreateAssistantAssociationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_assistant_association
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates Wisdom content. Before to calling this API, use <a href="https://docs.aws.amazon.com/wisdom/latest/APIReference/API_StartContentUpload.html">StartContentUpload</a> to
    #       upload an asset.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateContentInput}.
    #
    # @option params [String] :knowledge_base_id
    #   <p>The identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #
    # @option params [String] :name
    #   <p>The name of the content. Each piece of content in a knowledge base must have a unique
    #         name. You can retrieve a piece of content using only its knowledge base and its name with the
    #           <a href="https://docs.aws.amazon.com/wisdom/latest/APIReference/API_SearchContent.html">SearchContent</a> API.</p>
    #
    # @option params [String] :title
    #   <p>The title of the content. If not set, the title is equal to the name.</p>
    #
    # @option params [String] :override_link_out_uri
    #   <p>The URI you want to use for the article. If the knowledge base has a templateUri, setting
    #         this argument overrides it for this piece of content.</p>
    #
    # @option params [Hash<String, String>] :metadata
    #   <p>A key/value map to store attributes without affecting tagging or recommendations.
    #   For example, when synchronizing data between an external system and Wisdom, you can store an external version identifier as metadata to utilize for determining drift.</p>
    #
    # @option params [String] :upload_id
    #   <p>A pointer to the uploaded asset. This value is returned by <a href="https://docs.aws.amazon.com/wisdom/latest/APIReference/API_StartContentUpload.html">StartContentUpload</a>.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #      request.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    # @return [Types::CreateContentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_content(
    #     knowledge_base_id: 'knowledgeBaseId', # required
    #     name: 'name', # required
    #     title: 'title',
    #     override_link_out_uri: 'overrideLinkOutUri',
    #     metadata: {
    #       'key' => 'value'
    #     },
    #     upload_id: 'uploadId', # required
    #     client_token: 'clientToken',
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateContentOutput
    #   resp.data.content #=> Types::ContentData
    #   resp.data.content.content_arn #=> String
    #   resp.data.content.content_id #=> String
    #   resp.data.content.knowledge_base_arn #=> String
    #   resp.data.content.knowledge_base_id #=> String
    #   resp.data.content.name #=> String
    #   resp.data.content.revision_id #=> String
    #   resp.data.content.title #=> String
    #   resp.data.content.content_type #=> String
    #   resp.data.content.status #=> String, one of ["CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED", "UPDATE_FAILED"]
    #   resp.data.content.metadata #=> Hash<String, String>
    #   resp.data.content.metadata['key'] #=> String
    #   resp.data.content.tags #=> Hash<String, String>
    #   resp.data.content.tags['key'] #=> String
    #   resp.data.content.link_out_uri #=> String
    #   resp.data.content.url #=> String
    #   resp.data.content.url_expiry #=> Time
    #
    def create_content(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateContentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateContentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateContent
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::ConflictException, Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::CreateContent
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateContent,
        stubs: @stubs,
        params_class: Params::CreateContentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_content
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a knowledge base.</p>
    #          <note>
    #             <p>When using this API, you cannot reuse <a href="https://docs.aws.amazon.com/appintegrations/latest/APIReference/Welcome.html">Amazon AppIntegrations</a>
    #         DataIntegrations with external knowledge bases such as Salesforce and ServiceNow. If you do,
    #         you'll get an <code>InvalidRequestException</code> error. </p>
    #
    #             <p>For example, you're programmatically managing your external knowledge base, and you want
    #         to add or remove one of the fields that is being ingested from Salesforce. Do the
    #         following:</p>
    #             <ol>
    #                <li>
    #                   <p>Call <a href="https://docs.aws.amazon.com/wisdom/latest/APIReference/API_DeleteKnowledgeBase.html">DeleteKnowledgeBase</a>.</p>
    #                </li>
    #                <li>
    #                   <p>Call <a href="https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_DeleteDataIntegration.html">DeleteDataIntegration</a>.</p>
    #                </li>
    #                <li>
    #                   <p>Call <a href="https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html">CreateDataIntegration</a> to recreate the DataIntegration or a create different
    #             one.</p>
    #                </li>
    #                <li>
    #                   <p>Call CreateKnowledgeBase.</p>
    #                </li>
    #             </ol>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::CreateKnowledgeBaseInput}.
    #
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #      request.</p>
    #
    # @option params [String] :name
    #   <p>The name of the knowledge base.</p>
    #
    # @option params [String] :knowledge_base_type
    #   <p>The type of knowledge base. Only CUSTOM knowledge bases allow you to upload your own content.
    #         EXTERNAL knowledge bases support integrations with third-party systems whose content is
    #         synchronized automatically. </p>
    #
    # @option params [SourceConfiguration] :source_configuration
    #   <p>The source of the knowledge base content. Only set this argument for EXTERNAL knowledge
    #         bases.</p>
    #
    # @option params [RenderingConfiguration] :rendering_configuration
    #   <p>Information about how to render the content.</p>
    #
    # @option params [ServerSideEncryptionConfiguration] :server_side_encryption_configuration
    #   <p>The KMS key used for encryption.</p>
    #
    # @option params [String] :description
    #   <p>The description.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    # @return [Types::CreateKnowledgeBaseOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_knowledge_base(
    #     client_token: 'clientToken',
    #     name: 'name', # required
    #     knowledge_base_type: 'EXTERNAL', # required - accepts ["EXTERNAL", "CUSTOM"]
    #     source_configuration: {
    #       # One of:
    #       app_integrations: {
    #         app_integration_arn: 'appIntegrationArn', # required
    #         object_fields: [
    #           'member'
    #         ] # required
    #       }
    #     },
    #     rendering_configuration: {
    #       template_uri: 'templateUri'
    #     },
    #     server_side_encryption_configuration: {
    #       kms_key_id: 'kmsKeyId'
    #     },
    #     description: 'description',
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateKnowledgeBaseOutput
    #   resp.data.knowledge_base #=> Types::KnowledgeBaseData
    #   resp.data.knowledge_base.knowledge_base_id #=> String
    #   resp.data.knowledge_base.knowledge_base_arn #=> String
    #   resp.data.knowledge_base.name #=> String
    #   resp.data.knowledge_base.knowledge_base_type #=> String, one of ["EXTERNAL", "CUSTOM"]
    #   resp.data.knowledge_base.status #=> String, one of ["CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED"]
    #   resp.data.knowledge_base.last_content_modification_time #=> Time
    #   resp.data.knowledge_base.source_configuration #=> Types::SourceConfiguration, one of [AppIntegrations]
    #   resp.data.knowledge_base.source_configuration.app_integrations #=> Types::AppIntegrationsConfiguration
    #   resp.data.knowledge_base.source_configuration.app_integrations.app_integration_arn #=> String
    #   resp.data.knowledge_base.source_configuration.app_integrations.object_fields #=> Array<String>
    #   resp.data.knowledge_base.source_configuration.app_integrations.object_fields[0] #=> String
    #   resp.data.knowledge_base.rendering_configuration #=> Types::RenderingConfiguration
    #   resp.data.knowledge_base.rendering_configuration.template_uri #=> String
    #   resp.data.knowledge_base.server_side_encryption_configuration #=> Types::ServerSideEncryptionConfiguration
    #   resp.data.knowledge_base.server_side_encryption_configuration.kms_key_id #=> String
    #   resp.data.knowledge_base.description #=> String
    #   resp.data.knowledge_base.tags #=> Hash<String, String>
    #   resp.data.knowledge_base.tags['key'] #=> String
    #
    def create_knowledge_base(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateKnowledgeBaseInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateKnowledgeBaseInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateKnowledgeBase
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::ConflictException, Errors::ValidationException, Errors::AccessDeniedException]),
        data_parser: Parsers::CreateKnowledgeBase
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateKnowledgeBase,
        stubs: @stubs,
        params_class: Params::CreateKnowledgeBaseOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_knowledge_base
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a session. A session is a contextual container used for generating
    #       recommendations. Amazon Connect creates a new Wisdom session for each contact on which Wisdom is
    #       enabled.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateSessionInput}.
    #
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #      request.</p>
    #
    # @option params [String] :assistant_id
    #   <p>The identifier of the Wisdom assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #
    # @option params [String] :name
    #   <p>The name of the session.</p>
    #
    # @option params [String] :description
    #   <p>The description.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    # @return [Types::CreateSessionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_session(
    #     client_token: 'clientToken',
    #     assistant_id: 'assistantId', # required
    #     name: 'name', # required
    #     description: 'description',
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateSessionOutput
    #   resp.data.session #=> Types::SessionData
    #   resp.data.session.session_arn #=> String
    #   resp.data.session.session_id #=> String
    #   resp.data.session.name #=> String
    #   resp.data.session.description #=> String
    #   resp.data.session.tags #=> Hash<String, String>
    #   resp.data.session.tags['key'] #=> String
    #
    def create_session(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateSessionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateSessionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateSession
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::CreateSession
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateSession,
        stubs: @stubs,
        params_class: Params::CreateSessionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_session
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an assistant.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteAssistantInput}.
    #
    # @option params [String] :assistant_id
    #   <p>The identifier of the Wisdom assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #
    # @return [Types::DeleteAssistantOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_assistant(
    #     assistant_id: 'assistantId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAssistantOutput
    #
    def delete_assistant(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAssistantInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAssistantInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAssistant
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeleteAssistant
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAssistant,
        stubs: @stubs,
        params_class: Params::DeleteAssistantOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_assistant
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an assistant association.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteAssistantAssociationInput}.
    #
    # @option params [String] :assistant_association_id
    #   <p>The identifier of the assistant association. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #
    # @option params [String] :assistant_id
    #   <p>The identifier of the Wisdom assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #
    # @return [Types::DeleteAssistantAssociationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_assistant_association(
    #     assistant_association_id: 'assistantAssociationId', # required
    #     assistant_id: 'assistantId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAssistantAssociationOutput
    #
    def delete_assistant_association(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAssistantAssociationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAssistantAssociationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAssistantAssociation
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeleteAssistantAssociation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAssistantAssociation,
        stubs: @stubs,
        params_class: Params::DeleteAssistantAssociationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_assistant_association
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the content.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteContentInput}.
    #
    # @option params [String] :knowledge_base_id
    #   <p>The identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #
    # @option params [String] :content_id
    #   <p>The identifier of the content. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #
    # @return [Types::DeleteContentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_content(
    #     knowledge_base_id: 'knowledgeBaseId', # required
    #     content_id: 'contentId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteContentOutput
    #
    def delete_content(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteContentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteContentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteContent
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeleteContent
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteContent,
        stubs: @stubs,
        params_class: Params::DeleteContentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_content
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the knowledge base.</p>
    #          <note>
    #             <p>When you use this API to delete an external knowledge base such as Salesforce or
    #         ServiceNow, you must also delete the <a href="https://docs.aws.amazon.com/appintegrations/latest/APIReference/Welcome.html">Amazon AppIntegrations</a> DataIntegration.
    #         This is because you can't reuse the DataIntegration after it's been associated with an
    #         external knowledge base. However, you can delete and recreate it. See <a href="https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_DeleteDataIntegration.html">DeleteDataIntegration</a> and <a href="https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html">CreateDataIntegration</a> in the <i>Amazon AppIntegrations API
    #         Reference</i>.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DeleteKnowledgeBaseInput}.
    #
    # @option params [String] :knowledge_base_id
    #   <p>The knowledge base to delete content from. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #
    # @return [Types::DeleteKnowledgeBaseOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_knowledge_base(
    #     knowledge_base_id: 'knowledgeBaseId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteKnowledgeBaseOutput
    #
    def delete_knowledge_base(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteKnowledgeBaseInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteKnowledgeBaseInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteKnowledgeBase
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ConflictException, Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeleteKnowledgeBase
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteKnowledgeBase,
        stubs: @stubs,
        params_class: Params::DeleteKnowledgeBaseOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_knowledge_base
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about an assistant.</p>
    #
    # @param [Hash] params
    #   See {Types::GetAssistantInput}.
    #
    # @option params [String] :assistant_id
    #   <p>The identifier of the Wisdom assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #
    # @return [Types::GetAssistantOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_assistant(
    #     assistant_id: 'assistantId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAssistantOutput
    #   resp.data.assistant #=> Types::AssistantData
    #   resp.data.assistant.assistant_id #=> String
    #   resp.data.assistant.assistant_arn #=> String
    #   resp.data.assistant.name #=> String
    #   resp.data.assistant.type #=> String, one of ["AGENT"]
    #   resp.data.assistant.status #=> String, one of ["CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED"]
    #   resp.data.assistant.description #=> String
    #   resp.data.assistant.tags #=> Hash<String, String>
    #   resp.data.assistant.tags['key'] #=> String
    #   resp.data.assistant.server_side_encryption_configuration #=> Types::ServerSideEncryptionConfiguration
    #   resp.data.assistant.server_side_encryption_configuration.kms_key_id #=> String
    #
    def get_assistant(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAssistantInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAssistantInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAssistant
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetAssistant
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAssistant,
        stubs: @stubs,
        params_class: Params::GetAssistantOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_assistant
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about an assistant association.</p>
    #
    # @param [Hash] params
    #   See {Types::GetAssistantAssociationInput}.
    #
    # @option params [String] :assistant_association_id
    #   <p>The identifier of the assistant association. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #
    # @option params [String] :assistant_id
    #   <p>The identifier of the Wisdom assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #
    # @return [Types::GetAssistantAssociationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_assistant_association(
    #     assistant_association_id: 'assistantAssociationId', # required
    #     assistant_id: 'assistantId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAssistantAssociationOutput
    #   resp.data.assistant_association #=> Types::AssistantAssociationData
    #   resp.data.assistant_association.assistant_association_id #=> String
    #   resp.data.assistant_association.assistant_association_arn #=> String
    #   resp.data.assistant_association.assistant_id #=> String
    #   resp.data.assistant_association.assistant_arn #=> String
    #   resp.data.assistant_association.association_type #=> String, one of ["KNOWLEDGE_BASE"]
    #   resp.data.assistant_association.association_data #=> Types::AssistantAssociationOutputData, one of [KnowledgeBaseAssociation]
    #   resp.data.assistant_association.association_data.knowledge_base_association #=> Types::KnowledgeBaseAssociationData
    #   resp.data.assistant_association.association_data.knowledge_base_association.knowledge_base_id #=> String
    #   resp.data.assistant_association.association_data.knowledge_base_association.knowledge_base_arn #=> String
    #   resp.data.assistant_association.tags #=> Hash<String, String>
    #   resp.data.assistant_association.tags['key'] #=> String
    #
    def get_assistant_association(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAssistantAssociationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAssistantAssociationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAssistantAssociation
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetAssistantAssociation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAssistantAssociation,
        stubs: @stubs,
        params_class: Params::GetAssistantAssociationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_assistant_association
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves content, including a pre-signed URL to download the content.</p>
    #
    # @param [Hash] params
    #   See {Types::GetContentInput}.
    #
    # @option params [String] :content_id
    #   <p>The identifier of the content. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #
    # @option params [String] :knowledge_base_id
    #   <p>The identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #
    # @return [Types::GetContentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_content(
    #     content_id: 'contentId', # required
    #     knowledge_base_id: 'knowledgeBaseId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetContentOutput
    #   resp.data.content #=> Types::ContentData
    #   resp.data.content.content_arn #=> String
    #   resp.data.content.content_id #=> String
    #   resp.data.content.knowledge_base_arn #=> String
    #   resp.data.content.knowledge_base_id #=> String
    #   resp.data.content.name #=> String
    #   resp.data.content.revision_id #=> String
    #   resp.data.content.title #=> String
    #   resp.data.content.content_type #=> String
    #   resp.data.content.status #=> String, one of ["CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED", "UPDATE_FAILED"]
    #   resp.data.content.metadata #=> Hash<String, String>
    #   resp.data.content.metadata['key'] #=> String
    #   resp.data.content.tags #=> Hash<String, String>
    #   resp.data.content.tags['key'] #=> String
    #   resp.data.content.link_out_uri #=> String
    #   resp.data.content.url #=> String
    #   resp.data.content.url_expiry #=> Time
    #
    def get_content(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetContentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetContentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetContent
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetContent
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetContent,
        stubs: @stubs,
        params_class: Params::GetContentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_content
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves summary information about the content.</p>
    #
    # @param [Hash] params
    #   See {Types::GetContentSummaryInput}.
    #
    # @option params [String] :content_id
    #   <p>The identifier of the content. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #
    # @option params [String] :knowledge_base_id
    #   <p>The identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #
    # @return [Types::GetContentSummaryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_content_summary(
    #     content_id: 'contentId', # required
    #     knowledge_base_id: 'knowledgeBaseId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetContentSummaryOutput
    #   resp.data.content_summary #=> Types::ContentSummary
    #   resp.data.content_summary.content_arn #=> String
    #   resp.data.content_summary.content_id #=> String
    #   resp.data.content_summary.knowledge_base_arn #=> String
    #   resp.data.content_summary.knowledge_base_id #=> String
    #   resp.data.content_summary.name #=> String
    #   resp.data.content_summary.revision_id #=> String
    #   resp.data.content_summary.title #=> String
    #   resp.data.content_summary.content_type #=> String
    #   resp.data.content_summary.status #=> String, one of ["CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED", "UPDATE_FAILED"]
    #   resp.data.content_summary.metadata #=> Hash<String, String>
    #   resp.data.content_summary.metadata['key'] #=> String
    #   resp.data.content_summary.tags #=> Hash<String, String>
    #   resp.data.content_summary.tags['key'] #=> String
    #
    def get_content_summary(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetContentSummaryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetContentSummaryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetContentSummary
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetContentSummary
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetContentSummary,
        stubs: @stubs,
        params_class: Params::GetContentSummaryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_content_summary
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about the knowledge base.</p>
    #
    # @param [Hash] params
    #   See {Types::GetKnowledgeBaseInput}.
    #
    # @option params [String] :knowledge_base_id
    #   <p>The identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #
    # @return [Types::GetKnowledgeBaseOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_knowledge_base(
    #     knowledge_base_id: 'knowledgeBaseId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetKnowledgeBaseOutput
    #   resp.data.knowledge_base #=> Types::KnowledgeBaseData
    #   resp.data.knowledge_base.knowledge_base_id #=> String
    #   resp.data.knowledge_base.knowledge_base_arn #=> String
    #   resp.data.knowledge_base.name #=> String
    #   resp.data.knowledge_base.knowledge_base_type #=> String, one of ["EXTERNAL", "CUSTOM"]
    #   resp.data.knowledge_base.status #=> String, one of ["CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED"]
    #   resp.data.knowledge_base.last_content_modification_time #=> Time
    #   resp.data.knowledge_base.source_configuration #=> Types::SourceConfiguration, one of [AppIntegrations]
    #   resp.data.knowledge_base.source_configuration.app_integrations #=> Types::AppIntegrationsConfiguration
    #   resp.data.knowledge_base.source_configuration.app_integrations.app_integration_arn #=> String
    #   resp.data.knowledge_base.source_configuration.app_integrations.object_fields #=> Array<String>
    #   resp.data.knowledge_base.source_configuration.app_integrations.object_fields[0] #=> String
    #   resp.data.knowledge_base.rendering_configuration #=> Types::RenderingConfiguration
    #   resp.data.knowledge_base.rendering_configuration.template_uri #=> String
    #   resp.data.knowledge_base.server_side_encryption_configuration #=> Types::ServerSideEncryptionConfiguration
    #   resp.data.knowledge_base.server_side_encryption_configuration.kms_key_id #=> String
    #   resp.data.knowledge_base.description #=> String
    #   resp.data.knowledge_base.tags #=> Hash<String, String>
    #   resp.data.knowledge_base.tags['key'] #=> String
    #
    def get_knowledge_base(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetKnowledgeBaseInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetKnowledgeBaseInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetKnowledgeBase
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetKnowledgeBase
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetKnowledgeBase,
        stubs: @stubs,
        params_class: Params::GetKnowledgeBaseOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_knowledge_base
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves recommendations for the specified session. To avoid retrieving the same
    #       recommendations in subsequent calls, use <a href="https://docs.aws.amazon.com/wisdom/latest/APIReference/API_NotifyRecommendationsReceived.html">NotifyRecommendationsReceived</a>. This API supports long-polling behavior with the
    #         <code>waitTimeSeconds</code> parameter. Short poll is the default behavior and only returns
    #       recommendations already available. To perform a manual query against an assistant, use <a href="https://docs.aws.amazon.com/wisdom/latest/APIReference/API_QueryAssistant.html">QueryAssistant</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetRecommendationsInput}.
    #
    # @option params [String] :assistant_id
    #   <p>The identifier of the Wisdom assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #
    # @option params [String] :session_id
    #   <p>The identifier of the session. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    # @option params [Integer] :wait_time_seconds
    #   <p>The duration (in seconds) for which the call waits for a recommendation to be made
    #         available before returning. If a recommendation is available, the call returns sooner than
    #           <code>WaitTimeSeconds</code>. If no messages are available and the wait time expires, the
    #         call returns successfully with an empty list.</p>
    #
    # @return [Types::GetRecommendationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_recommendations(
    #     assistant_id: 'assistantId', # required
    #     session_id: 'sessionId', # required
    #     max_results: 1,
    #     wait_time_seconds: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetRecommendationsOutput
    #   resp.data.recommendations #=> Array<RecommendationData>
    #   resp.data.recommendations[0] #=> Types::RecommendationData
    #   resp.data.recommendations[0].recommendation_id #=> String
    #   resp.data.recommendations[0].document #=> Types::Document
    #   resp.data.recommendations[0].document.content_reference #=> Types::ContentReference
    #   resp.data.recommendations[0].document.content_reference.knowledge_base_arn #=> String
    #   resp.data.recommendations[0].document.content_reference.knowledge_base_id #=> String
    #   resp.data.recommendations[0].document.content_reference.content_arn #=> String
    #   resp.data.recommendations[0].document.content_reference.content_id #=> String
    #   resp.data.recommendations[0].document.title #=> Types::DocumentText
    #   resp.data.recommendations[0].document.title.text #=> String
    #   resp.data.recommendations[0].document.title.highlights #=> Array<Highlight>
    #   resp.data.recommendations[0].document.title.highlights[0] #=> Types::Highlight
    #   resp.data.recommendations[0].document.title.highlights[0].begin_offset_inclusive #=> Integer
    #   resp.data.recommendations[0].document.title.highlights[0].end_offset_exclusive #=> Integer
    #   resp.data.recommendations[0].document.excerpt #=> Types::DocumentText
    #   resp.data.recommendations[0].relevance_score #=> Float
    #   resp.data.recommendations[0].relevance_level #=> String, one of ["HIGH", "MEDIUM", "LOW"]
    #   resp.data.recommendations[0].type #=> String, one of ["KNOWLEDGE_CONTENT"]
    #   resp.data.triggers #=> Array<RecommendationTrigger>
    #   resp.data.triggers[0] #=> Types::RecommendationTrigger
    #   resp.data.triggers[0].id #=> String
    #   resp.data.triggers[0].type #=> String, one of ["QUERY"]
    #   resp.data.triggers[0].source #=> String, one of ["ISSUE_DETECTION", "RULE_EVALUATION", "OTHER"]
    #   resp.data.triggers[0].data #=> Types::RecommendationTriggerData, one of [Query]
    #   resp.data.triggers[0].data.query #=> Types::QueryRecommendationTriggerData
    #   resp.data.triggers[0].data.query.text #=> String
    #   resp.data.triggers[0].recommendation_ids #=> Array<String>
    #   resp.data.triggers[0].recommendation_ids[0] #=> String
    #
    def get_recommendations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetRecommendationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetRecommendationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetRecommendations
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetRecommendations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetRecommendations,
        stubs: @stubs,
        params_class: Params::GetRecommendationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_recommendations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information for a specified session.</p>
    #
    # @param [Hash] params
    #   See {Types::GetSessionInput}.
    #
    # @option params [String] :assistant_id
    #   <p>The identifier of the Wisdom assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #
    # @option params [String] :session_id
    #   <p>The identifier of the session. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #
    # @return [Types::GetSessionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_session(
    #     assistant_id: 'assistantId', # required
    #     session_id: 'sessionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSessionOutput
    #   resp.data.session #=> Types::SessionData
    #   resp.data.session.session_arn #=> String
    #   resp.data.session.session_id #=> String
    #   resp.data.session.name #=> String
    #   resp.data.session.description #=> String
    #   resp.data.session.tags #=> Hash<String, String>
    #   resp.data.session.tags['key'] #=> String
    #
    def get_session(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSessionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSessionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetSession
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetSession
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetSession,
        stubs: @stubs,
        params_class: Params::GetSessionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_session
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists information about assistant associations.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAssistantAssociationsInput}.
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    # @option params [String] :assistant_id
    #   <p>The identifier of the Wisdom assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #
    # @return [Types::ListAssistantAssociationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_assistant_associations(
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     assistant_id: 'assistantId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAssistantAssociationsOutput
    #   resp.data.assistant_association_summaries #=> Array<AssistantAssociationSummary>
    #   resp.data.assistant_association_summaries[0] #=> Types::AssistantAssociationSummary
    #   resp.data.assistant_association_summaries[0].assistant_association_id #=> String
    #   resp.data.assistant_association_summaries[0].assistant_association_arn #=> String
    #   resp.data.assistant_association_summaries[0].assistant_id #=> String
    #   resp.data.assistant_association_summaries[0].assistant_arn #=> String
    #   resp.data.assistant_association_summaries[0].association_type #=> String, one of ["KNOWLEDGE_BASE"]
    #   resp.data.assistant_association_summaries[0].association_data #=> Types::AssistantAssociationOutputData, one of [KnowledgeBaseAssociation]
    #   resp.data.assistant_association_summaries[0].association_data.knowledge_base_association #=> Types::KnowledgeBaseAssociationData
    #   resp.data.assistant_association_summaries[0].association_data.knowledge_base_association.knowledge_base_id #=> String
    #   resp.data.assistant_association_summaries[0].association_data.knowledge_base_association.knowledge_base_arn #=> String
    #   resp.data.assistant_association_summaries[0].tags #=> Hash<String, String>
    #   resp.data.assistant_association_summaries[0].tags['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def list_assistant_associations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAssistantAssociationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAssistantAssociationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAssistantAssociations
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListAssistantAssociations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAssistantAssociations,
        stubs: @stubs,
        params_class: Params::ListAssistantAssociationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_assistant_associations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists information about assistants.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAssistantsInput}.
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    # @return [Types::ListAssistantsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_assistants(
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAssistantsOutput
    #   resp.data.assistant_summaries #=> Array<AssistantSummary>
    #   resp.data.assistant_summaries[0] #=> Types::AssistantSummary
    #   resp.data.assistant_summaries[0].assistant_id #=> String
    #   resp.data.assistant_summaries[0].assistant_arn #=> String
    #   resp.data.assistant_summaries[0].name #=> String
    #   resp.data.assistant_summaries[0].type #=> String, one of ["AGENT"]
    #   resp.data.assistant_summaries[0].status #=> String, one of ["CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED"]
    #   resp.data.assistant_summaries[0].description #=> String
    #   resp.data.assistant_summaries[0].tags #=> Hash<String, String>
    #   resp.data.assistant_summaries[0].tags['key'] #=> String
    #   resp.data.assistant_summaries[0].server_side_encryption_configuration #=> Types::ServerSideEncryptionConfiguration
    #   resp.data.assistant_summaries[0].server_side_encryption_configuration.kms_key_id #=> String
    #   resp.data.next_token #=> String
    #
    def list_assistants(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAssistantsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAssistantsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAssistants
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListAssistants
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAssistants,
        stubs: @stubs,
        params_class: Params::ListAssistantsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_assistants
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the content.</p>
    #
    # @param [Hash] params
    #   See {Types::ListContentsInput}.
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    # @option params [String] :knowledge_base_id
    #   <p>The identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #
    # @return [Types::ListContentsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_contents(
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     knowledge_base_id: 'knowledgeBaseId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListContentsOutput
    #   resp.data.content_summaries #=> Array<ContentSummary>
    #   resp.data.content_summaries[0] #=> Types::ContentSummary
    #   resp.data.content_summaries[0].content_arn #=> String
    #   resp.data.content_summaries[0].content_id #=> String
    #   resp.data.content_summaries[0].knowledge_base_arn #=> String
    #   resp.data.content_summaries[0].knowledge_base_id #=> String
    #   resp.data.content_summaries[0].name #=> String
    #   resp.data.content_summaries[0].revision_id #=> String
    #   resp.data.content_summaries[0].title #=> String
    #   resp.data.content_summaries[0].content_type #=> String
    #   resp.data.content_summaries[0].status #=> String, one of ["CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED", "UPDATE_FAILED"]
    #   resp.data.content_summaries[0].metadata #=> Hash<String, String>
    #   resp.data.content_summaries[0].metadata['key'] #=> String
    #   resp.data.content_summaries[0].tags #=> Hash<String, String>
    #   resp.data.content_summaries[0].tags['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def list_contents(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListContentsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListContentsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListContents
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListContents
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListContents,
        stubs: @stubs,
        params_class: Params::ListContentsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_contents
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the knowledge bases.</p>
    #
    # @param [Hash] params
    #   See {Types::ListKnowledgeBasesInput}.
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    # @return [Types::ListKnowledgeBasesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_knowledge_bases(
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListKnowledgeBasesOutput
    #   resp.data.knowledge_base_summaries #=> Array<KnowledgeBaseSummary>
    #   resp.data.knowledge_base_summaries[0] #=> Types::KnowledgeBaseSummary
    #   resp.data.knowledge_base_summaries[0].knowledge_base_id #=> String
    #   resp.data.knowledge_base_summaries[0].knowledge_base_arn #=> String
    #   resp.data.knowledge_base_summaries[0].name #=> String
    #   resp.data.knowledge_base_summaries[0].knowledge_base_type #=> String, one of ["EXTERNAL", "CUSTOM"]
    #   resp.data.knowledge_base_summaries[0].status #=> String, one of ["CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED"]
    #   resp.data.knowledge_base_summaries[0].source_configuration #=> Types::SourceConfiguration, one of [AppIntegrations]
    #   resp.data.knowledge_base_summaries[0].source_configuration.app_integrations #=> Types::AppIntegrationsConfiguration
    #   resp.data.knowledge_base_summaries[0].source_configuration.app_integrations.app_integration_arn #=> String
    #   resp.data.knowledge_base_summaries[0].source_configuration.app_integrations.object_fields #=> Array<String>
    #   resp.data.knowledge_base_summaries[0].source_configuration.app_integrations.object_fields[0] #=> String
    #   resp.data.knowledge_base_summaries[0].rendering_configuration #=> Types::RenderingConfiguration
    #   resp.data.knowledge_base_summaries[0].rendering_configuration.template_uri #=> String
    #   resp.data.knowledge_base_summaries[0].server_side_encryption_configuration #=> Types::ServerSideEncryptionConfiguration
    #   resp.data.knowledge_base_summaries[0].server_side_encryption_configuration.kms_key_id #=> String
    #   resp.data.knowledge_base_summaries[0].description #=> String
    #   resp.data.knowledge_base_summaries[0].tags #=> Hash<String, String>
    #   resp.data.knowledge_base_summaries[0].tags['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def list_knowledge_bases(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListKnowledgeBasesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListKnowledgeBasesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListKnowledgeBases
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListKnowledgeBases
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListKnowledgeBases,
        stubs: @stubs,
        params_class: Params::ListKnowledgeBasesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_knowledge_bases
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the tags for the specified resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     resource_arn: 'resourceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsForResourceOutput
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
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
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException]),
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

    # <p>Removes the specified recommendations from the specified assistant's queue of newly
    #       available recommendations. You can use this API in conjunction with <a href="https://docs.aws.amazon.com/wisdom/latest/APIReference/API_GetRecommendations.html">GetRecommendations</a> and a <code>waitTimeSeconds</code> input for long-polling
    #       behavior and avoiding duplicate recommendations.</p>
    #
    # @param [Hash] params
    #   See {Types::NotifyRecommendationsReceivedInput}.
    #
    # @option params [String] :assistant_id
    #   <p>The identifier of the Wisdom assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #
    # @option params [String] :session_id
    #   <p>The identifier of the session. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #
    # @option params [Array<String>] :recommendation_ids
    #   <p>The identifiers of the recommendations.</p>
    #
    # @return [Types::NotifyRecommendationsReceivedOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.notify_recommendations_received(
    #     assistant_id: 'assistantId', # required
    #     session_id: 'sessionId', # required
    #     recommendation_ids: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::NotifyRecommendationsReceivedOutput
    #   resp.data.recommendation_ids #=> Array<String>
    #   resp.data.recommendation_ids[0] #=> String
    #   resp.data.errors #=> Array<NotifyRecommendationsReceivedError>
    #   resp.data.errors[0] #=> Types::NotifyRecommendationsReceivedError
    #   resp.data.errors[0].recommendation_id #=> String
    #   resp.data.errors[0].message #=> String
    #
    def notify_recommendations_received(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::NotifyRecommendationsReceivedInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::NotifyRecommendationsReceivedInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::NotifyRecommendationsReceived
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::NotifyRecommendationsReceived
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::NotifyRecommendationsReceived,
        stubs: @stubs,
        params_class: Params::NotifyRecommendationsReceivedOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :notify_recommendations_received
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Performs a manual search against the specified assistant. To retrieve recommendations for
    #       an assistant, use <a href="https://docs.aws.amazon.com/wisdom/latest/APIReference/API_GetRecommendations.html">GetRecommendations</a>.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::QueryAssistantInput}.
    #
    # @option params [String] :assistant_id
    #   <p>The identifier of the Wisdom assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #
    # @option params [String] :query_text
    #   <p>The text to search for.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    # @return [Types::QueryAssistantOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.query_assistant(
    #     assistant_id: 'assistantId', # required
    #     query_text: 'queryText', # required
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::QueryAssistantOutput
    #   resp.data.results #=> Array<ResultData>
    #   resp.data.results[0] #=> Types::ResultData
    #   resp.data.results[0].result_id #=> String
    #   resp.data.results[0].document #=> Types::Document
    #   resp.data.results[0].document.content_reference #=> Types::ContentReference
    #   resp.data.results[0].document.content_reference.knowledge_base_arn #=> String
    #   resp.data.results[0].document.content_reference.knowledge_base_id #=> String
    #   resp.data.results[0].document.content_reference.content_arn #=> String
    #   resp.data.results[0].document.content_reference.content_id #=> String
    #   resp.data.results[0].document.title #=> Types::DocumentText
    #   resp.data.results[0].document.title.text #=> String
    #   resp.data.results[0].document.title.highlights #=> Array<Highlight>
    #   resp.data.results[0].document.title.highlights[0] #=> Types::Highlight
    #   resp.data.results[0].document.title.highlights[0].begin_offset_inclusive #=> Integer
    #   resp.data.results[0].document.title.highlights[0].end_offset_exclusive #=> Integer
    #   resp.data.results[0].document.excerpt #=> Types::DocumentText
    #   resp.data.results[0].relevance_score #=> Float
    #   resp.data.next_token #=> String
    #
    def query_assistant(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::QueryAssistantInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::QueryAssistantInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::QueryAssistant
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::QueryAssistant
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::QueryAssistant,
        stubs: @stubs,
        params_class: Params::QueryAssistantOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :query_assistant
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes a URI template from a knowledge base.</p>
    #
    # @param [Hash] params
    #   See {Types::RemoveKnowledgeBaseTemplateUriInput}.
    #
    # @option params [String] :knowledge_base_id
    #   <p>The identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #
    # @return [Types::RemoveKnowledgeBaseTemplateUriOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_knowledge_base_template_uri(
    #     knowledge_base_id: 'knowledgeBaseId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RemoveKnowledgeBaseTemplateUriOutput
    #
    def remove_knowledge_base_template_uri(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RemoveKnowledgeBaseTemplateUriInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RemoveKnowledgeBaseTemplateUriInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RemoveKnowledgeBaseTemplateUri
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::RemoveKnowledgeBaseTemplateUri
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RemoveKnowledgeBaseTemplateUri,
        stubs: @stubs,
        params_class: Params::RemoveKnowledgeBaseTemplateUriOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :remove_knowledge_base_template_uri
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Searches for content in a specified knowledge base. Can be used to get a specific content
    #       resource by its name.</p>
    #
    # @param [Hash] params
    #   See {Types::SearchContentInput}.
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    # @option params [String] :knowledge_base_id
    #   <p>The identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #
    # @option params [SearchExpression] :search_expression
    #   <p>The search expression to filter results.</p>
    #
    # @return [Types::SearchContentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_content(
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     knowledge_base_id: 'knowledgeBaseId', # required
    #     search_expression: {
    #       filters: [
    #         {
    #           field: 'NAME', # required - accepts ["NAME"]
    #           operator: 'EQUALS', # required - accepts ["EQUALS"]
    #           value: 'value' # required
    #         }
    #       ] # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SearchContentOutput
    #   resp.data.content_summaries #=> Array<ContentSummary>
    #   resp.data.content_summaries[0] #=> Types::ContentSummary
    #   resp.data.content_summaries[0].content_arn #=> String
    #   resp.data.content_summaries[0].content_id #=> String
    #   resp.data.content_summaries[0].knowledge_base_arn #=> String
    #   resp.data.content_summaries[0].knowledge_base_id #=> String
    #   resp.data.content_summaries[0].name #=> String
    #   resp.data.content_summaries[0].revision_id #=> String
    #   resp.data.content_summaries[0].title #=> String
    #   resp.data.content_summaries[0].content_type #=> String
    #   resp.data.content_summaries[0].status #=> String, one of ["CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED", "UPDATE_FAILED"]
    #   resp.data.content_summaries[0].metadata #=> Hash<String, String>
    #   resp.data.content_summaries[0].metadata['key'] #=> String
    #   resp.data.content_summaries[0].tags #=> Hash<String, String>
    #   resp.data.content_summaries[0].tags['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def search_content(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SearchContentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SearchContentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SearchContent
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::SearchContent
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SearchContent,
        stubs: @stubs,
        params_class: Params::SearchContentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :search_content
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Searches for sessions.</p>
    #
    # @param [Hash] params
    #   See {Types::SearchSessionsInput}.
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    # @option params [String] :assistant_id
    #   <p>The identifier of the Wisdom assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #
    # @option params [SearchExpression] :search_expression
    #   <p>The search expression to filter results.</p>
    #
    # @return [Types::SearchSessionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_sessions(
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     assistant_id: 'assistantId', # required
    #     search_expression: {
    #       filters: [
    #         {
    #           field: 'NAME', # required - accepts ["NAME"]
    #           operator: 'EQUALS', # required - accepts ["EQUALS"]
    #           value: 'value' # required
    #         }
    #       ] # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SearchSessionsOutput
    #   resp.data.session_summaries #=> Array<SessionSummary>
    #   resp.data.session_summaries[0] #=> Types::SessionSummary
    #   resp.data.session_summaries[0].session_id #=> String
    #   resp.data.session_summaries[0].session_arn #=> String
    #   resp.data.session_summaries[0].assistant_id #=> String
    #   resp.data.session_summaries[0].assistant_arn #=> String
    #   resp.data.next_token #=> String
    #
    def search_sessions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SearchSessionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SearchSessionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SearchSessions
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::SearchSessions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SearchSessions,
        stubs: @stubs,
        params_class: Params::SearchSessionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :search_sessions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Get a URL to upload content to a knowledge base. To upload content, first make a PUT
    #       request to the returned URL with your file, making sure to include the required headers. Then
    #       use <a href="https://docs.aws.amazon.com/wisdom/latest/APIReference/API_CreateContent.html">CreateContent</a> to finalize the content creation process or <a href="https://docs.aws.amazon.com/wisdom/latest/APIReference/API_UpdateContent.html">UpdateContent</a> to modify an existing resource. You can only upload content to a
    #       knowledge base of type CUSTOM.</p>
    #
    # @param [Hash] params
    #   See {Types::StartContentUploadInput}.
    #
    # @option params [String] :knowledge_base_id
    #   <p>The identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #
    # @option params [String] :content_type
    #   <p>The type of content to upload.</p>
    #
    # @return [Types::StartContentUploadOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_content_upload(
    #     knowledge_base_id: 'knowledgeBaseId', # required
    #     content_type: 'contentType' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartContentUploadOutput
    #   resp.data.upload_id #=> String
    #   resp.data.url #=> String
    #   resp.data.url_expiry #=> Time
    #   resp.data.headers_to_include #=> Hash<String, String>
    #   resp.data.headers_to_include['key'] #=> String
    #
    def start_content_upload(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartContentUploadInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartContentUploadInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartContentUpload
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::StartContentUpload
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartContentUpload,
        stubs: @stubs,
        params_class: Params::StartContentUploadOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_content_upload
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds the specified tags to the specified resource.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'resourceArn', # required
    #     tags: {
    #       'key' => 'value'
    #     } # required
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyTagsException, Errors::ResourceNotFoundException]),
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

    # <p>Removes the specified tags from the specified resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The tag keys.</p>
    #
    # @return [Types::UntagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource(
    #     resource_arn: 'resourceArn', # required
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
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException]),
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

    # <p>Updates information about the content.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateContentInput}.
    #
    # @option params [String] :knowledge_base_id
    #   <p>The identifier of the knowledge base. Can be either the ID or the ARN</p>
    #
    # @option params [String] :content_id
    #   <p>The identifier of the content. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #
    # @option params [String] :revision_id
    #   <p>The <code>revisionId</code> of the content resource to update, taken from an earlier call
    #         to <code>GetContent</code>, <code>GetContentSummary</code>, <code>SearchContent</code>, or
    #           <code>ListContents</code>. If included, this argument acts as an optimistic lock to ensure
    #         content was not modified since it was last read. If it has been modified, this API throws a
    #           <code>PreconditionFailedException</code>.</p>
    #
    # @option params [String] :title
    #   <p>The title of the content.</p>
    #
    # @option params [String] :override_link_out_uri
    #   <p>The URI for the article. If the knowledge base has a templateUri, setting this argument
    #         overrides it for this piece of content. To remove an existing <code>overrideLinkOurUri</code>,
    #         exclude this argument and set <code>removeOverrideLinkOutUri</code> to true.</p>
    #
    # @option params [Boolean] :remove_override_link_out_uri
    #   <p>Unset the existing <code>overrideLinkOutUri</code> if it exists.</p>
    #
    # @option params [Hash<String, String>] :metadata
    #   <p>A key/value map to store attributes without affecting tagging or recommendations. For
    #         example, when synchronizing data between an external system and Wisdom, you can store an
    #         external version identifier as metadata to utilize for determining drift.</p>
    #
    # @option params [String] :upload_id
    #   <p>A pointer to the uploaded asset. This value is returned by <a href="https://docs.aws.amazon.com/wisdom/latest/APIReference/API_StartContentUpload.html">StartContentUpload</a>.
    #       </p>
    #
    # @return [Types::UpdateContentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_content(
    #     knowledge_base_id: 'knowledgeBaseId', # required
    #     content_id: 'contentId', # required
    #     revision_id: 'revisionId',
    #     title: 'title',
    #     override_link_out_uri: 'overrideLinkOutUri',
    #     remove_override_link_out_uri: false,
    #     metadata: {
    #       'key' => 'value'
    #     },
    #     upload_id: 'uploadId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateContentOutput
    #   resp.data.content #=> Types::ContentData
    #   resp.data.content.content_arn #=> String
    #   resp.data.content.content_id #=> String
    #   resp.data.content.knowledge_base_arn #=> String
    #   resp.data.content.knowledge_base_id #=> String
    #   resp.data.content.name #=> String
    #   resp.data.content.revision_id #=> String
    #   resp.data.content.title #=> String
    #   resp.data.content.content_type #=> String
    #   resp.data.content.status #=> String, one of ["CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED", "UPDATE_FAILED"]
    #   resp.data.content.metadata #=> Hash<String, String>
    #   resp.data.content.metadata['key'] #=> String
    #   resp.data.content.tags #=> Hash<String, String>
    #   resp.data.content.tags['key'] #=> String
    #   resp.data.content.link_out_uri #=> String
    #   resp.data.content.url #=> String
    #   resp.data.content.url_expiry #=> Time
    #
    def update_content(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateContentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateContentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateContent
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::PreconditionFailedException, Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::UpdateContent
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateContent,
        stubs: @stubs,
        params_class: Params::UpdateContentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_content
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the template URI of a knowledge base. This is only supported for knowledge bases
    #       of type EXTERNAL. Include a single variable in <code>${variable}</code> format; this
    #       interpolated by Wisdom using ingested content. For example, if you ingest a Salesforce
    #       article, it has an <code>Id</code> value, and you can set the template URI to
    #         <code>https://myInstanceName.lightning.force.com/lightning/r/Knowledge__kav/*${Id}*/view</code>.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateKnowledgeBaseTemplateUriInput}.
    #
    # @option params [String] :knowledge_base_id
    #   <p>The identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #
    # @option params [String] :template_uri
    #   <p>The template URI to update.</p>
    #
    # @return [Types::UpdateKnowledgeBaseTemplateUriOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_knowledge_base_template_uri(
    #     knowledge_base_id: 'knowledgeBaseId', # required
    #     template_uri: 'templateUri' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateKnowledgeBaseTemplateUriOutput
    #   resp.data.knowledge_base #=> Types::KnowledgeBaseData
    #   resp.data.knowledge_base.knowledge_base_id #=> String
    #   resp.data.knowledge_base.knowledge_base_arn #=> String
    #   resp.data.knowledge_base.name #=> String
    #   resp.data.knowledge_base.knowledge_base_type #=> String, one of ["EXTERNAL", "CUSTOM"]
    #   resp.data.knowledge_base.status #=> String, one of ["CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED"]
    #   resp.data.knowledge_base.last_content_modification_time #=> Time
    #   resp.data.knowledge_base.source_configuration #=> Types::SourceConfiguration, one of [AppIntegrations]
    #   resp.data.knowledge_base.source_configuration.app_integrations #=> Types::AppIntegrationsConfiguration
    #   resp.data.knowledge_base.source_configuration.app_integrations.app_integration_arn #=> String
    #   resp.data.knowledge_base.source_configuration.app_integrations.object_fields #=> Array<String>
    #   resp.data.knowledge_base.source_configuration.app_integrations.object_fields[0] #=> String
    #   resp.data.knowledge_base.rendering_configuration #=> Types::RenderingConfiguration
    #   resp.data.knowledge_base.rendering_configuration.template_uri #=> String
    #   resp.data.knowledge_base.server_side_encryption_configuration #=> Types::ServerSideEncryptionConfiguration
    #   resp.data.knowledge_base.server_side_encryption_configuration.kms_key_id #=> String
    #   resp.data.knowledge_base.description #=> String
    #   resp.data.knowledge_base.tags #=> Hash<String, String>
    #   resp.data.knowledge_base.tags['key'] #=> String
    #
    def update_knowledge_base_template_uri(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateKnowledgeBaseTemplateUriInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateKnowledgeBaseTemplateUriInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateKnowledgeBaseTemplateUri
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::UpdateKnowledgeBaseTemplateUri
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateKnowledgeBaseTemplateUri,
        stubs: @stubs,
        params_class: Params::UpdateKnowledgeBaseTemplateUriOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_knowledge_base_template_uri
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
