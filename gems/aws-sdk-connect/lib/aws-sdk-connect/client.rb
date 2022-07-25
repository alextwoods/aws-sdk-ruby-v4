# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::Connect
  # An API client for AmazonConnectService
  # See {#initialize} for a full list of supported configuration options
  # <p>Amazon Connect is a cloud-based contact center solution that you use to set up and manage a customer
  #    contact center and provide reliable customer engagement at any scale.</p>
  #          <p>Amazon Connect provides metrics and real-time reporting that enable you to optimize contact routing.
  #    You can also resolve customer issues more efficiently by getting customers in touch with the
  #    appropriate agents.</p>
  #          <p>There are limits to the number of Amazon Connect resources that you can create. There are also limits
  #    to the number of requests that you can make per second. For more information, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html">Amazon Connect
  #     Service Quotas</a> in the <i>Amazon Connect Administrator Guide</i>.</p>
  #          <p>You can connect programmatically to an Amazon Web Services service by using an endpoint. For
  #    a list of Amazon Connect endpoints, see <a href="https://docs.aws.amazon.com/general/latest/gr/connect_region.html">Amazon Connect Endpoints</a>.</p>
  #          <note>
  #             <p>Working with contact flows? Check out the <a href="https://docs.aws.amazon.com/connect/latest/adminguide/flow-language.html">Amazon Connect Flow language</a>.</p>
  #          </note>
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
    def initialize(config = AWS::SDK::Connect::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Associates an approved origin to an Amazon Connect instance.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateApprovedOriginInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :origin
    #   <p>The domain to add to your allow list.</p>
    #
    # @return [Types::AssociateApprovedOriginOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_approved_origin(
    #     instance_id: 'InstanceId', # required
    #     origin: 'Origin' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateApprovedOriginOutput
    #
    def associate_approved_origin(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateApprovedOriginInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateApprovedOriginInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateApprovedOrigin
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException, Errors::ServiceQuotaExceededException, Errors::ResourceConflictException]),
        data_parser: Parsers::AssociateApprovedOrigin
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateApprovedOrigin,
        stubs: @stubs,
        params_class: Params::AssociateApprovedOriginOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_approved_origin
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Allows the specified Amazon Connect instance to access the specified Amazon Lex or Amazon Lex V2 bot.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateBotInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [LexBot] :lex_bot
    #   <p>Configuration information of an Amazon Lex bot.</p>
    #
    # @option params [LexV2Bot] :lex_v2_bot
    #   <p>The Amazon Lex V2 bot to associate with the instance.</p>
    #
    # @return [Types::AssociateBotOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_bot(
    #     instance_id: 'InstanceId', # required
    #     lex_bot: {
    #       name: 'Name',
    #       lex_region: 'LexRegion'
    #     },
    #     lex_v2_bot: {
    #       alias_arn: 'AliasArn'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateBotOutput
    #
    def associate_bot(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateBotInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateBotInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateBot
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidRequestException, Errors::LimitExceededException, Errors::ServiceQuotaExceededException, Errors::ResourceConflictException]),
        data_parser: Parsers::AssociateBot
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateBot,
        stubs: @stubs,
        params_class: Params::AssociateBotOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_bot
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associates an existing vocabulary as the default. Contact Lens for Amazon Connect uses the vocabulary in post-call
    #    and real-time analysis sessions for the given language.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateDefaultVocabularyInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :language_code
    #   <p>The language code of the vocabulary entries. For a list of languages and their corresponding language codes, see
    #   <a href="https://docs.aws.amazon.com/transcribe/latest/dg/transcribe-whatis.html">What is Amazon Transcribe?</a>
    #            </p>
    #
    # @option params [String] :vocabulary_id
    #   <p>The identifier of the custom vocabulary. If this is empty, the default is set to none.</p>
    #
    # @return [Types::AssociateDefaultVocabularyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_default_vocabulary(
    #     instance_id: 'InstanceId', # required
    #     language_code: 'ar-AE', # required - accepts ["ar-AE", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fr-CA", "fr-FR", "hi-IN", "it-IT", "ja-JP", "ko-KR", "pt-BR", "pt-PT", "zh-CN"]
    #     vocabulary_id: 'VocabularyId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateDefaultVocabularyOutput
    #
    def associate_default_vocabulary(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateDefaultVocabularyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateDefaultVocabularyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateDefaultVocabulary
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::AssociateDefaultVocabulary
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateDefaultVocabulary,
        stubs: @stubs,
        params_class: Params::AssociateDefaultVocabularyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_default_vocabulary
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Associates a storage resource type for the first time. You can only associate one type of
    #    storage configuration in a single call. This means, for example, that you can't define an
    #    instance with multiple S3 buckets for storing chat transcripts.</p>
    #          <p>This API does not create a resource that doesn't exist. It only associates it to the
    #    instance. Ensure that the resource being specified in the storage configuration, like an S3
    #    bucket, exists when being used for association.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateInstanceStorageConfigInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :resource_type
    #   <p>A valid resource type.</p>
    #
    # @option params [InstanceStorageConfig] :storage_config
    #   <p>A valid storage type.</p>
    #
    # @return [Types::AssociateInstanceStorageConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_instance_storage_config(
    #     instance_id: 'InstanceId', # required
    #     resource_type: 'CHAT_TRANSCRIPTS', # required - accepts ["CHAT_TRANSCRIPTS", "CALL_RECORDINGS", "SCHEDULED_REPORTS", "MEDIA_STREAMS", "CONTACT_TRACE_RECORDS", "AGENT_EVENTS", "REAL_TIME_CONTACT_ANALYSIS_SEGMENTS"]
    #     storage_config: {
    #       association_id: 'AssociationId',
    #       storage_type: 'S3', # required - accepts ["S3", "KINESIS_VIDEO_STREAM", "KINESIS_STREAM", "KINESIS_FIREHOSE"]
    #       s3_config: {
    #         bucket_name: 'BucketName', # required
    #         bucket_prefix: 'BucketPrefix', # required
    #         encryption_config: {
    #           encryption_type: 'KMS', # required - accepts ["KMS"]
    #           key_id: 'KeyId' # required
    #         }
    #       },
    #       kinesis_video_stream_config: {
    #         prefix: 'Prefix', # required
    #         retention_period_hours: 1, # required
    #       },
    #       kinesis_stream_config: {
    #         stream_arn: 'StreamArn' # required
    #       },
    #       kinesis_firehose_config: {
    #         firehose_arn: 'FirehoseArn' # required
    #       }
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateInstanceStorageConfigOutput
    #   resp.data.association_id #=> String
    #
    def associate_instance_storage_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateInstanceStorageConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateInstanceStorageConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateInstanceStorageConfig
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException, Errors::ResourceConflictException]),
        data_parser: Parsers::AssociateInstanceStorageConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateInstanceStorageConfig,
        stubs: @stubs,
        params_class: Params::AssociateInstanceStorageConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_instance_storage_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Allows the specified Amazon Connect instance to access the specified Lambda function.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateLambdaFunctionInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :function_arn
    #   <p>The Amazon Resource Name (ARN) for the Lambda function being associated. Maximum number of characters allowed is
    #      140.</p>
    #
    # @return [Types::AssociateLambdaFunctionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_lambda_function(
    #     instance_id: 'InstanceId', # required
    #     function_arn: 'FunctionArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateLambdaFunctionOutput
    #
    def associate_lambda_function(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateLambdaFunctionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateLambdaFunctionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateLambdaFunction
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException, Errors::ServiceQuotaExceededException, Errors::ResourceConflictException]),
        data_parser: Parsers::AssociateLambdaFunction
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateLambdaFunction,
        stubs: @stubs,
        params_class: Params::AssociateLambdaFunctionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_lambda_function
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Allows the specified Amazon Connect instance to access the specified Amazon Lex bot.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateLexBotInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [LexBot] :lex_bot
    #   <p>The Amazon Lex bot to associate with the instance.</p>
    #
    # @return [Types::AssociateLexBotOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_lex_bot(
    #     instance_id: 'InstanceId', # required
    #     lex_bot: {
    #       name: 'Name',
    #       lex_region: 'LexRegion'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateLexBotOutput
    #
    def associate_lex_bot(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateLexBotInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateLexBotInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateLexBot
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException, Errors::ServiceQuotaExceededException, Errors::ResourceConflictException]),
        data_parser: Parsers::AssociateLexBot
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateLexBot,
        stubs: @stubs,
        params_class: Params::AssociateLexBotOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_lex_bot
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associates a contact flow with a phone number claimed to your Amazon Connect instance.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociatePhoneNumberContactFlowInput}.
    #
    # @option params [String] :phone_number_id
    #   <p>A unique identifier for the phone number.</p>
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :contact_flow_id
    #   <p>The identifier of the contact flow.</p>
    #
    # @return [Types::AssociatePhoneNumberContactFlowOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_phone_number_contact_flow(
    #     phone_number_id: 'PhoneNumberId', # required
    #     instance_id: 'InstanceId', # required
    #     contact_flow_id: 'ContactFlowId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociatePhoneNumberContactFlowOutput
    #
    def associate_phone_number_contact_flow(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociatePhoneNumberContactFlowInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociatePhoneNumberContactFlowInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociatePhoneNumberContactFlow
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException]),
        data_parser: Parsers::AssociatePhoneNumberContactFlow
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociatePhoneNumberContactFlow,
        stubs: @stubs,
        params_class: Params::AssociatePhoneNumberContactFlowOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_phone_number_contact_flow
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Associates a set of quick connects with a queue.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateQueueQuickConnectsInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :queue_id
    #   <p>The identifier for the queue.</p>
    #
    # @option params [Array<String>] :quick_connect_ids
    #   <p>The quick connects to associate with this queue.</p>
    #
    # @return [Types::AssociateQueueQuickConnectsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_queue_quick_connects(
    #     instance_id: 'InstanceId', # required
    #     queue_id: 'QueueId', # required
    #     quick_connect_ids: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateQueueQuickConnectsOutput
    #
    def associate_queue_quick_connects(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateQueueQuickConnectsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateQueueQuickConnectsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateQueueQuickConnects
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException, Errors::LimitExceededException]),
        data_parser: Parsers::AssociateQueueQuickConnects
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateQueueQuickConnects,
        stubs: @stubs,
        params_class: Params::AssociateQueueQuickConnectsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_queue_quick_connects
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associates a set of queues with a routing profile.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateRoutingProfileQueuesInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :routing_profile_id
    #   <p>The identifier of the routing profile.</p>
    #
    # @option params [Array<RoutingProfileQueueConfig>] :queue_configs
    #   <p>The queues to associate with this routing profile.</p>
    #
    # @return [Types::AssociateRoutingProfileQueuesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_routing_profile_queues(
    #     instance_id: 'InstanceId', # required
    #     routing_profile_id: 'RoutingProfileId', # required
    #     queue_configs: [
    #       {
    #         queue_reference: {
    #           queue_id: 'QueueId', # required
    #           channel: 'VOICE' # required - accepts ["VOICE", "CHAT", "TASK"]
    #         }, # required
    #         priority: 1, # required
    #         delay: 1 # required
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateRoutingProfileQueuesOutput
    #
    def associate_routing_profile_queues(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateRoutingProfileQueuesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateRoutingProfileQueuesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateRoutingProfileQueues
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::AssociateRoutingProfileQueues
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateRoutingProfileQueues,
        stubs: @stubs,
        params_class: Params::AssociateRoutingProfileQueuesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_routing_profile_queues
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Associates a security key to the instance.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateSecurityKeyInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :key
    #   <p>A valid security key in PEM format.</p>
    #
    # @return [Types::AssociateSecurityKeyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_security_key(
    #     instance_id: 'InstanceId', # required
    #     key: 'Key' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateSecurityKeyOutput
    #   resp.data.association_id #=> String
    #
    def associate_security_key(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateSecurityKeyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateSecurityKeyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateSecurityKey
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException, Errors::ServiceQuotaExceededException, Errors::ResourceConflictException]),
        data_parser: Parsers::AssociateSecurityKey
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateSecurityKey,
        stubs: @stubs,
        params_class: Params::AssociateSecurityKeyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_security_key
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Claims an available phone number to your Amazon Connect instance.</p>
    #
    # @param [Hash] params
    #   See {Types::ClaimPhoneNumberInput}.
    #
    # @option params [String] :target_arn
    #   <p>The Amazon Resource Name (ARN) for Amazon Connect instances that phone numbers are claimed to.</p>
    #
    # @option params [String] :phone_number
    #   <p>The phone number you want to claim. Phone numbers are formatted <code>[+] [country code]
    #       [subscriber number including area code]</code>.</p>
    #
    # @option params [String] :phone_number_description
    #   <p>The description of the phone number.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request.</p>
    #
    # @return [Types::ClaimPhoneNumberOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.claim_phone_number(
    #     target_arn: 'TargetArn', # required
    #     phone_number: 'PhoneNumber', # required
    #     phone_number_description: 'PhoneNumberDescription',
    #     tags: {
    #       'key' => 'value'
    #     },
    #     client_token: 'ClientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ClaimPhoneNumberOutput
    #   resp.data.phone_number_id #=> String
    #   resp.data.phone_number_arn #=> String
    #
    def claim_phone_number(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ClaimPhoneNumberInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ClaimPhoneNumberInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ClaimPhoneNumber
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::IdempotencyException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException]),
        data_parser: Parsers::ClaimPhoneNumber
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ClaimPhoneNumber,
        stubs: @stubs,
        params_class: Params::ClaimPhoneNumberOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :claim_phone_number
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Creates an agent status for the specified Amazon Connect instance.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateAgentStatusInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :name
    #   <p>The name of the status.</p>
    #
    # @option params [String] :description
    #   <p>The description of the status.</p>
    #
    # @option params [String] :state
    #   <p>The state of the status.</p>
    #
    # @option params [Integer] :display_order
    #   <p>The display order of the status.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    # @return [Types::CreateAgentStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_agent_status(
    #     instance_id: 'InstanceId', # required
    #     name: 'Name', # required
    #     description: 'Description',
    #     state: 'ENABLED', # required - accepts ["ENABLED", "DISABLED"]
    #     display_order: 1,
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateAgentStatusOutput
    #   resp.data.agent_status_arn #=> String
    #   resp.data.agent_status_id #=> String
    #
    def create_agent_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateAgentStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateAgentStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateAgentStatus
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException, Errors::LimitExceededException, Errors::DuplicateResourceException]),
        data_parser: Parsers::CreateAgentStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateAgentStatus,
        stubs: @stubs,
        params_class: Params::CreateAgentStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_agent_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a contact flow for the specified Amazon Connect instance.</p>
    #          <p>You can also create and update contact flows using the <a href="https://docs.aws.amazon.com/connect/latest/adminguide/flow-language.html">Amazon Connect
    #    Flow language</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateContactFlowInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance.</p>
    #
    # @option params [String] :name
    #   <p>The name of the contact flow.</p>
    #
    # @option params [String] :type
    #   <p>The type of the contact flow. For descriptions of the available types, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/create-contact-flow.html#contact-flow-types">Choose a Contact Flow Type</a> in the <i>Amazon Connect Administrator
    #      Guide</i>.</p>
    #
    # @option params [String] :description
    #   <p>The description of the contact flow. </p>
    #
    # @option params [String] :content
    #   <p>The content of the contact flow. </p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>One or more tags.</p>
    #
    # @return [Types::CreateContactFlowOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_contact_flow(
    #     instance_id: 'InstanceId', # required
    #     name: 'Name', # required
    #     type: 'CONTACT_FLOW', # required - accepts ["CONTACT_FLOW", "CUSTOMER_QUEUE", "CUSTOMER_HOLD", "CUSTOMER_WHISPER", "AGENT_HOLD", "AGENT_WHISPER", "OUTBOUND_WHISPER", "AGENT_TRANSFER", "QUEUE_TRANSFER"]
    #     description: 'Description',
    #     content: 'Content', # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateContactFlowOutput
    #   resp.data.contact_flow_id #=> String
    #   resp.data.contact_flow_arn #=> String
    #
    def create_contact_flow(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateContactFlowInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateContactFlowInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateContactFlow
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException, Errors::LimitExceededException, Errors::InvalidContactFlowException, Errors::DuplicateResourceException]),
        data_parser: Parsers::CreateContactFlow
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateContactFlow,
        stubs: @stubs,
        params_class: Params::CreateContactFlowOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_contact_flow
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a contact flow module for the specified Amazon Connect instance. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateContactFlowModuleInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :name
    #   <p>The name of the contact flow module.</p>
    #
    # @option params [String] :description
    #   <p>The description of the contact flow module. </p>
    #
    # @option params [String] :content
    #   <p>The content of the contact flow module.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request.</p>
    #
    # @return [Types::CreateContactFlowModuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_contact_flow_module(
    #     instance_id: 'InstanceId', # required
    #     name: 'Name', # required
    #     description: 'Description',
    #     content: 'Content', # required
    #     tags: {
    #       'key' => 'value'
    #     },
    #     client_token: 'ClientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateContactFlowModuleOutput
    #   resp.data.id #=> String
    #   resp.data.arn #=> String
    #
    def create_contact_flow_module(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateContactFlowModuleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateContactFlowModuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateContactFlowModule
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::IdempotencyException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException, Errors::LimitExceededException, Errors::DuplicateResourceException, Errors::InvalidContactFlowModuleException]),
        data_parser: Parsers::CreateContactFlowModule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateContactFlowModule,
        stubs: @stubs,
        params_class: Params::CreateContactFlowModuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_contact_flow_module
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Creates hours of operation. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateHoursOfOperationInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :name
    #   <p>The name of the hours of operation.</p>
    #
    # @option params [String] :description
    #   <p>The description of the hours of operation.</p>
    #
    # @option params [String] :time_zone
    #   <p>The time zone of the hours of operation.</p>
    #
    # @option params [Array<HoursOfOperationConfig>] :config
    #   <p>Configuration information for the hours of operation: day, start time, and end time.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    # @return [Types::CreateHoursOfOperationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_hours_of_operation(
    #     instance_id: 'InstanceId', # required
    #     name: 'Name', # required
    #     description: 'Description',
    #     time_zone: 'TimeZone', # required
    #     config: [
    #       {
    #         day: 'SUNDAY', # required - accepts ["SUNDAY", "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY"]
    #         start_time: {
    #           hours: 1, # required
    #           minutes: 1 # required
    #         }, # required
    #       }
    #     ], # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateHoursOfOperationOutput
    #   resp.data.hours_of_operation_id #=> String
    #   resp.data.hours_of_operation_arn #=> String
    #
    def create_hours_of_operation(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateHoursOfOperationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateHoursOfOperationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateHoursOfOperation
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException, Errors::LimitExceededException, Errors::DuplicateResourceException]),
        data_parser: Parsers::CreateHoursOfOperation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateHoursOfOperation,
        stubs: @stubs,
        params_class: Params::CreateHoursOfOperationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_hours_of_operation
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Initiates an Amazon Connect instance with all the supported channels enabled. It does not attach any
    #    storage, such as Amazon Simple Storage Service (Amazon S3) or Amazon Kinesis. It also does not
    #    allow for any configurations on features, such as Contact Lens for Amazon Connect. </p>
    #          <p>Amazon Connect enforces a limit on the total number of instances that you can create or delete in 30 days.
    # If you exceed this limit, you will get an error message indicating there has been an excessive number of attempts at creating or deleting instances.
    # You must wait 30 days before you can restart creating and deleting instances in your account.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateInstanceInput}.
    #
    # @option params [String] :client_token
    #   <p>The idempotency token.</p>
    #
    # @option params [String] :identity_management_type
    #   <p>The type of identity management for your Amazon Connect users.</p>
    #
    # @option params [String] :instance_alias
    #   <p>The name for your instance.</p>
    #
    # @option params [String] :directory_id
    #   <p>The identifier for the directory.</p>
    #
    # @option params [Boolean] :inbound_calls_enabled
    #   <p>Your contact center handles incoming contacts.</p>
    #
    # @option params [Boolean] :outbound_calls_enabled
    #   <p>Your contact center allows outbound calls.</p>
    #
    # @return [Types::CreateInstanceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_instance(
    #     client_token: 'ClientToken',
    #     identity_management_type: 'SAML', # required - accepts ["SAML", "CONNECT_MANAGED", "EXISTING_DIRECTORY"]
    #     instance_alias: 'InstanceAlias',
    #     directory_id: 'DirectoryId',
    #     inbound_calls_enabled: false, # required
    #     outbound_calls_enabled: false # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateInstanceOutput
    #   resp.data.id #=> String
    #   resp.data.arn #=> String
    #
    def create_instance(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateInstanceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateInstanceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateInstance
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidRequestException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::CreateInstance
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateInstance,
        stubs: @stubs,
        params_class: Params::CreateInstanceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_instance
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an Amazon Web Services resource association with an Amazon Connect instance.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateIntegrationAssociationInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :integration_type
    #   <p>The type of information to be ingested.</p>
    #
    # @option params [String] :integration_arn
    #   <p>The Amazon Resource Name (ARN) of the integration.</p>
    #
    # @option params [String] :source_application_url
    #   <p>The URL for the external application. This field is only required for the EVENT integration type.</p>
    #
    # @option params [String] :source_application_name
    #   <p>The name of the external application. This field is only required for the EVENT integration type.</p>
    #
    # @option params [String] :source_type
    #   <p>The type of the data source. This field is only required for the EVENT integration type.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    # @return [Types::CreateIntegrationAssociationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_integration_association(
    #     instance_id: 'InstanceId', # required
    #     integration_type: 'EVENT', # required - accepts ["EVENT", "VOICE_ID", "PINPOINT_APP", "WISDOM_ASSISTANT", "WISDOM_KNOWLEDGE_BASE"]
    #     integration_arn: 'IntegrationArn', # required
    #     source_application_url: 'SourceApplicationUrl',
    #     source_application_name: 'SourceApplicationName',
    #     source_type: 'SALESFORCE', # accepts ["SALESFORCE", "ZENDESK"]
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateIntegrationAssociationOutput
    #   resp.data.integration_association_id #=> String
    #   resp.data.integration_association_arn #=> String
    #
    def create_integration_association(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateIntegrationAssociationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateIntegrationAssociationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateIntegrationAssociation
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidRequestException, Errors::DuplicateResourceException]),
        data_parser: Parsers::CreateIntegrationAssociation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateIntegrationAssociation,
        stubs: @stubs,
        params_class: Params::CreateIntegrationAssociationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_integration_association
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Creates a new queue for the specified Amazon Connect instance.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateQueueInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :name
    #   <p>The name of the queue.</p>
    #
    # @option params [String] :description
    #   <p>The description of the queue.</p>
    #
    # @option params [OutboundCallerConfig] :outbound_caller_config
    #   <p>The outbound caller ID name, number, and outbound whisper flow.</p>
    #
    # @option params [String] :hours_of_operation_id
    #   <p>The identifier for the hours of operation.</p>
    #
    # @option params [Integer] :max_contacts
    #   <p>The maximum number of contacts that can be in the queue before it is considered full.</p>
    #
    # @option params [Array<String>] :quick_connect_ids
    #   <p>The quick connects available to agents who are working the queue.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    # @return [Types::CreateQueueOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_queue(
    #     instance_id: 'InstanceId', # required
    #     name: 'Name', # required
    #     description: 'Description',
    #     outbound_caller_config: {
    #       outbound_caller_id_name: 'OutboundCallerIdName',
    #       outbound_caller_id_number_id: 'OutboundCallerIdNumberId',
    #       outbound_flow_id: 'OutboundFlowId'
    #     },
    #     hours_of_operation_id: 'HoursOfOperationId', # required
    #     max_contacts: 1,
    #     quick_connect_ids: [
    #       'member'
    #     ],
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateQueueOutput
    #   resp.data.queue_arn #=> String
    #   resp.data.queue_id #=> String
    #
    def create_queue(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateQueueInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateQueueInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateQueue
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException, Errors::LimitExceededException, Errors::DuplicateResourceException]),
        data_parser: Parsers::CreateQueue
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateQueue,
        stubs: @stubs,
        params_class: Params::CreateQueueOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_queue
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a quick connect for the specified Amazon Connect instance.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateQuickConnectInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :name
    #   <p>The name of the quick connect.</p>
    #
    # @option params [String] :description
    #   <p>The description of the quick connect.</p>
    #
    # @option params [QuickConnectConfig] :quick_connect_config
    #   <p>Configuration settings for the quick connect.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    # @return [Types::CreateQuickConnectOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_quick_connect(
    #     instance_id: 'InstanceId', # required
    #     name: 'Name', # required
    #     description: 'Description',
    #     quick_connect_config: {
    #       quick_connect_type: 'USER', # required - accepts ["USER", "QUEUE", "PHONE_NUMBER"]
    #       user_config: {
    #         user_id: 'UserId', # required
    #         contact_flow_id: 'ContactFlowId' # required
    #       },
    #       queue_config: {
    #         queue_id: 'QueueId', # required
    #         contact_flow_id: 'ContactFlowId' # required
    #       },
    #       phone_config: {
    #         phone_number: 'PhoneNumber' # required
    #       }
    #     }, # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateQuickConnectOutput
    #   resp.data.quick_connect_arn #=> String
    #   resp.data.quick_connect_id #=> String
    #
    def create_quick_connect(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateQuickConnectInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateQuickConnectInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateQuickConnect
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException, Errors::LimitExceededException, Errors::DuplicateResourceException]),
        data_parser: Parsers::CreateQuickConnect
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateQuickConnect,
        stubs: @stubs,
        params_class: Params::CreateQuickConnectOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_quick_connect
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new routing profile.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateRoutingProfileInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :name
    #   <p>The name of the routing profile. Must not be more than 127 characters.</p>
    #
    # @option params [String] :description
    #   <p>Description of the routing profile. Must not be more than 250 characters.</p>
    #
    # @option params [String] :default_outbound_queue_id
    #   <p>The default outbound queue for the routing profile.</p>
    #
    # @option params [Array<RoutingProfileQueueConfig>] :queue_configs
    #   <p>The inbound queues associated with the routing profile. If no queue is added, the agent can
    #      make only outbound calls.</p>
    #
    # @option params [Array<MediaConcurrency>] :media_concurrencies
    #   <p>The channels that agents can handle in the Contact Control Panel (CCP) for this routing
    #      profile.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>One or more tags.</p>
    #
    # @return [Types::CreateRoutingProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_routing_profile(
    #     instance_id: 'InstanceId', # required
    #     name: 'Name', # required
    #     description: 'Description', # required
    #     default_outbound_queue_id: 'DefaultOutboundQueueId', # required
    #     queue_configs: [
    #       {
    #         queue_reference: {
    #           queue_id: 'QueueId', # required
    #           channel: 'VOICE' # required - accepts ["VOICE", "CHAT", "TASK"]
    #         }, # required
    #         priority: 1, # required
    #         delay: 1 # required
    #       }
    #     ],
    #     media_concurrencies: [
    #       {
    #         channel: 'VOICE', # required - accepts ["VOICE", "CHAT", "TASK"]
    #         concurrency: 1 # required
    #       }
    #     ], # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateRoutingProfileOutput
    #   resp.data.routing_profile_arn #=> String
    #   resp.data.routing_profile_id #=> String
    #
    def create_routing_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateRoutingProfileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateRoutingProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateRoutingProfile
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException, Errors::LimitExceededException, Errors::DuplicateResourceException]),
        data_parser: Parsers::CreateRoutingProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateRoutingProfile,
        stubs: @stubs,
        params_class: Params::CreateRoutingProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_routing_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Creates a security profile.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateSecurityProfileInput}.
    #
    # @option params [String] :security_profile_name
    #   <p>The name of the security profile.</p>
    #
    # @option params [String] :description
    #   <p>The description of the security profile.</p>
    #
    # @option params [Array<String>] :permissions
    #   <p>Permissions assigned to the security profile.</p>
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    # @return [Types::CreateSecurityProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_security_profile(
    #     security_profile_name: 'SecurityProfileName', # required
    #     description: 'Description',
    #     permissions: [
    #       'member'
    #     ],
    #     instance_id: 'InstanceId', # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateSecurityProfileOutput
    #   resp.data.security_profile_id #=> String
    #   resp.data.security_profile_arn #=> String
    #
    def create_security_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateSecurityProfileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateSecurityProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateSecurityProfile
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException, Errors::LimitExceededException, Errors::DuplicateResourceException]),
        data_parser: Parsers::CreateSecurityProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateSecurityProfile,
        stubs: @stubs,
        params_class: Params::CreateSecurityProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_security_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new task template in the specified Amazon Connect instance.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateTaskTemplateInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :name
    #   <p>The name of the task template.</p>
    #
    # @option params [String] :description
    #   <p>The description of the task template.</p>
    #
    # @option params [String] :contact_flow_id
    #   <p>The identifier of the flow that runs by default when a task is created by referencing this template.</p>
    #
    # @option params [TaskTemplateConstraints] :constraints
    #   <p>Constraints that are applicable to the fields listed.</p>
    #
    # @option params [TaskTemplateDefaults] :defaults
    #   <p>The default values for fields when a task is created by referencing this template.</p>
    #
    # @option params [String] :status
    #   <p>Marks a template as <code>ACTIVE</code> or <code>INACTIVE</code> for a task to refer to it.
    #   Tasks can only be created from <code>ACTIVE</code> templates.
    #   If a template is marked as <code>INACTIVE</code>, then a task that refers to this template cannot be created. </p>
    #
    # @option params [Array<TaskTemplateField>] :fields
    #   <p>Fields that are part of the template.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request.</p>
    #
    # @return [Types::CreateTaskTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_task_template(
    #     instance_id: 'InstanceId', # required
    #     name: 'Name', # required
    #     description: 'Description',
    #     contact_flow_id: 'ContactFlowId',
    #     constraints: {
    #       required_fields: [
    #         {
    #           id: {
    #             name: 'Name'
    #           }
    #         }
    #       ],
    #       read_only_fields: [
    #         {
    #         }
    #       ],
    #       invisible_fields: [
    #         {
    #         }
    #       ]
    #     },
    #     defaults: {
    #       default_field_values: [
    #         {
    #           default_value: 'DefaultValue'
    #         }
    #       ]
    #     },
    #     status: 'ACTIVE', # accepts ["ACTIVE", "INACTIVE"]
    #     fields: [
    #       {
    #         description: 'Description',
    #         type: 'NAME', # accepts ["NAME", "DESCRIPTION", "SCHEDULED_TIME", "QUICK_CONNECT", "URL", "NUMBER", "TEXT", "TEXT_AREA", "DATE_TIME", "BOOLEAN", "SINGLE_SELECT", "EMAIL"]
    #         single_select_options: [
    #           'member'
    #         ]
    #       }
    #     ], # required
    #     client_token: 'ClientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateTaskTemplateOutput
    #   resp.data.id #=> String
    #   resp.data.arn #=> String
    #
    def create_task_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateTaskTemplateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateTaskTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateTaskTemplate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::PropertyValidationException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::CreateTaskTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateTaskTemplate,
        stubs: @stubs,
        params_class: Params::CreateTaskTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_task_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a use case for an integration association.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateUseCaseInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :integration_association_id
    #   <p>The identifier for the integration association.</p>
    #
    # @option params [String] :use_case_type
    #   <p>The type of use case to associate to the integration association. Each integration
    #      association can have only one of each use case type.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    # @return [Types::CreateUseCaseOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_use_case(
    #     instance_id: 'InstanceId', # required
    #     integration_association_id: 'IntegrationAssociationId', # required
    #     use_case_type: 'RULES_EVALUATION', # required - accepts ["RULES_EVALUATION", "CONNECT_CAMPAIGNS"]
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateUseCaseOutput
    #   resp.data.use_case_id #=> String
    #   resp.data.use_case_arn #=> String
    #
    def create_use_case(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateUseCaseInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateUseCaseInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateUseCase
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidRequestException, Errors::DuplicateResourceException]),
        data_parser: Parsers::CreateUseCase
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateUseCase,
        stubs: @stubs,
        params_class: Params::CreateUseCaseOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_use_case
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a user account for the specified Amazon Connect instance.</p>
    #          <p>For information about how to create user accounts using the Amazon Connect console, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/user-management.html">Add Users</a> in
    #    the <i>Amazon Connect Administrator Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateUserInput}.
    #
    # @option params [String] :username
    #   <p>The user name for the account. For instances not using SAML for identity management, the
    #      user name can include up to 20 characters. If you are using SAML for identity management, the
    #      user name can include up to 64 characters from [a-zA-Z0-9_-.\@]+.</p>
    #
    # @option params [String] :password
    #   <p>The password for the user account. A password is required if you are using Amazon Connect for
    #      identity management. Otherwise, it is an error to include a password.</p>
    #
    # @option params [UserIdentityInfo] :identity_info
    #   <p>The information about the identity of the user.</p>
    #
    # @option params [UserPhoneConfig] :phone_config
    #   <p>The phone settings for the user.</p>
    #
    # @option params [String] :directory_user_id
    #   <p>The identifier of the user account in the directory used for identity management. If Amazon Connect
    #      cannot access the directory, you can specify this identifier to authenticate users. If you
    #      include the identifier, we assume that Amazon Connect cannot access the directory. Otherwise, the identity
    #      information is used to authenticate users from your directory.</p>
    #            <p>This parameter is required if you are using an existing directory for identity management in
    #      Amazon Connect when Amazon Connect cannot access your directory to authenticate users. If you are using SAML for
    #      identity management and include this parameter, an error is returned.</p>
    #
    # @option params [Array<String>] :security_profile_ids
    #   <p>The identifier of the security profile for the user.</p>
    #
    # @option params [String] :routing_profile_id
    #   <p>The identifier of the routing profile for the user.</p>
    #
    # @option params [String] :hierarchy_group_id
    #   <p>The identifier of the hierarchy group for the user.</p>
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>One or more tags.</p>
    #
    # @return [Types::CreateUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_user(
    #     username: 'Username', # required
    #     password: 'Password',
    #     identity_info: {
    #       first_name: 'FirstName',
    #       last_name: 'LastName',
    #       email: 'Email'
    #     },
    #     phone_config: {
    #       phone_type: 'SOFT_PHONE', # required - accepts ["SOFT_PHONE", "DESK_PHONE"]
    #       auto_accept: false,
    #       after_contact_work_time_limit: 1,
    #       desk_phone_number: 'DeskPhoneNumber'
    #     }, # required
    #     directory_user_id: 'DirectoryUserId',
    #     security_profile_ids: [
    #       'member'
    #     ], # required
    #     routing_profile_id: 'RoutingProfileId', # required
    #     hierarchy_group_id: 'HierarchyGroupId',
    #     instance_id: 'InstanceId', # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateUserOutput
    #   resp.data.user_id #=> String
    #   resp.data.user_arn #=> String
    #
    def create_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateUserInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateUser
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException, Errors::LimitExceededException, Errors::DuplicateResourceException]),
        data_parser: Parsers::CreateUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateUser,
        stubs: @stubs,
        params_class: Params::CreateUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new user hierarchy group.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateUserHierarchyGroupInput}.
    #
    # @option params [String] :name
    #   <p>The name of the user hierarchy group. Must not be more than 100 characters.</p>
    #
    # @option params [String] :parent_group_id
    #   <p>The identifier for the parent hierarchy group. The user hierarchy is created at level one if
    #      the parent group ID is null.</p>
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    # @return [Types::CreateUserHierarchyGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_user_hierarchy_group(
    #     name: 'Name', # required
    #     parent_group_id: 'ParentGroupId',
    #     instance_id: 'InstanceId', # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateUserHierarchyGroupOutput
    #   resp.data.hierarchy_group_id #=> String
    #   resp.data.hierarchy_group_arn #=> String
    #
    def create_user_hierarchy_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateUserHierarchyGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateUserHierarchyGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateUserHierarchyGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException, Errors::LimitExceededException, Errors::DuplicateResourceException]),
        data_parser: Parsers::CreateUserHierarchyGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateUserHierarchyGroup,
        stubs: @stubs,
        params_class: Params::CreateUserHierarchyGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_user_hierarchy_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a custom vocabulary associated with your Amazon Connect instance. You can set a custom
    #    vocabulary to be your default vocabulary for a given language. Contact Lens for Amazon Connect uses the default
    #    vocabulary in post-call and real-time contact analysis sessions for that language.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateVocabularyInput}.
    #
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If a create request is received more than once with same client token,
    #      subsequent requests return the previous response without creating a vocabulary again.</p>
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :vocabulary_name
    #   <p>A unique name of the custom vocabulary.</p>
    #
    # @option params [String] :language_code
    #   <p>The language code of the vocabulary entries. For a list of languages and their corresponding language codes, see
    #   <a href="https://docs.aws.amazon.com/transcribe/latest/dg/transcribe-whatis.html">What is Amazon Transcribe?</a>
    #            </p>
    #
    # @option params [String] :content
    #   <p>The content of the custom vocabulary in plain-text format with a table of values. Each row
    #      in the table represents a word or a phrase, described with <code>Phrase</code>, <code>IPA</code>,
    #       <code>SoundsLike</code>, and <code>DisplayAs</code> fields. Separate the fields with TAB
    #      characters. The size limit is 50KB. For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/custom-vocabulary.html#create-vocabulary-table">Create a custom
    #       vocabulary using a table</a>.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    # @return [Types::CreateVocabularyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_vocabulary(
    #     client_token: 'ClientToken',
    #     instance_id: 'InstanceId', # required
    #     vocabulary_name: 'VocabularyName', # required
    #     language_code: 'ar-AE', # required - accepts ["ar-AE", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fr-CA", "fr-FR", "hi-IN", "it-IT", "ja-JP", "ko-KR", "pt-BR", "pt-PT", "zh-CN"]
    #     content: 'Content', # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateVocabularyOutput
    #   resp.data.vocabulary_arn #=> String
    #   resp.data.vocabulary_id #=> String
    #   resp.data.state #=> String, one of ["CREATION_IN_PROGRESS", "ACTIVE", "CREATION_FAILED", "DELETE_IN_PROGRESS"]
    #
    def create_vocabulary(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateVocabularyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateVocabularyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateVocabulary
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidRequestException, Errors::ServiceQuotaExceededException, Errors::ResourceConflictException]),
        data_parser: Parsers::CreateVocabulary
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateVocabulary,
        stubs: @stubs,
        params_class: Params::CreateVocabularyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_vocabulary
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a contact flow for the specified Amazon Connect instance.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteContactFlowInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :contact_flow_id
    #   <p>The identifier of the contact flow.</p>
    #
    # @return [Types::DeleteContactFlowOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_contact_flow(
    #     instance_id: 'InstanceId', # required
    #     contact_flow_id: 'ContactFlowId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteContactFlowOutput
    #
    def delete_contact_flow(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteContactFlowInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteContactFlowInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteContactFlow
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::DeleteContactFlow
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteContactFlow,
        stubs: @stubs,
        params_class: Params::DeleteContactFlowOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_contact_flow
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified contact flow module.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteContactFlowModuleInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :contact_flow_module_id
    #   <p>The identifier of the contact flow module.</p>
    #
    # @return [Types::DeleteContactFlowModuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_contact_flow_module(
    #     instance_id: 'InstanceId', # required
    #     contact_flow_module_id: 'ContactFlowModuleId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteContactFlowModuleOutput
    #
    def delete_contact_flow_module(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteContactFlowModuleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteContactFlowModuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteContactFlowModule
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::DeleteContactFlowModule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteContactFlowModule,
        stubs: @stubs,
        params_class: Params::DeleteContactFlowModuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_contact_flow_module
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Deletes an hours of operation.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteHoursOfOperationInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :hours_of_operation_id
    #   <p>The identifier for the hours of operation.</p>
    #
    # @return [Types::DeleteHoursOfOperationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_hours_of_operation(
    #     instance_id: 'InstanceId', # required
    #     hours_of_operation_id: 'HoursOfOperationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteHoursOfOperationOutput
    #
    def delete_hours_of_operation(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteHoursOfOperationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteHoursOfOperationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteHoursOfOperation
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::DeleteHoursOfOperation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteHoursOfOperation,
        stubs: @stubs,
        params_class: Params::DeleteHoursOfOperationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_hours_of_operation
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Deletes the Amazon Connect instance.</p>
    #          <p>Amazon Connect enforces a limit on the total number of instances that you can create or delete in 30 days.
    # If you exceed this limit, you will get an error message indicating there has been an excessive number of attempts at creating or deleting instances.
    # You must wait 30 days before you can restart creating and deleting instances in your account.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteInstanceInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @return [Types::DeleteInstanceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_instance(
    #     instance_id: 'InstanceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteInstanceOutput
    #
    def delete_instance(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteInstanceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteInstanceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteInstance
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::DeleteInstance
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteInstance,
        stubs: @stubs,
        params_class: Params::DeleteInstanceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_instance
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an Amazon Web Services resource association from an Amazon Connect instance. The association
    #    must not have any use cases associated with it.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteIntegrationAssociationInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :integration_association_id
    #   <p>The identifier for the integration association.</p>
    #
    # @return [Types::DeleteIntegrationAssociationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_integration_association(
    #     instance_id: 'InstanceId', # required
    #     integration_association_id: 'IntegrationAssociationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteIntegrationAssociationOutput
    #
    def delete_integration_association(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteIntegrationAssociationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteIntegrationAssociationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteIntegrationAssociation
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::DeleteIntegrationAssociation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteIntegrationAssociation,
        stubs: @stubs,
        params_class: Params::DeleteIntegrationAssociationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_integration_association
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a quick connect.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteQuickConnectInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :quick_connect_id
    #   <p>The identifier for the quick connect.</p>
    #
    # @return [Types::DeleteQuickConnectOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_quick_connect(
    #     instance_id: 'InstanceId', # required
    #     quick_connect_id: 'QuickConnectId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteQuickConnectOutput
    #
    def delete_quick_connect(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteQuickConnectInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteQuickConnectInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteQuickConnect
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::DeleteQuickConnect
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteQuickConnect,
        stubs: @stubs,
        params_class: Params::DeleteQuickConnectOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_quick_connect
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Deletes a security profile.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteSecurityProfileInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :security_profile_id
    #   <p>The identifier for the security profle.</p>
    #
    # @return [Types::DeleteSecurityProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_security_profile(
    #     instance_id: 'InstanceId', # required
    #     security_profile_id: 'SecurityProfileId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteSecurityProfileOutput
    #
    def delete_security_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteSecurityProfileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteSecurityProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteSecurityProfile
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException, Errors::ResourceInUseException]),
        data_parser: Parsers::DeleteSecurityProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteSecurityProfile,
        stubs: @stubs,
        params_class: Params::DeleteSecurityProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_security_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the task template.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteTaskTemplateInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :task_template_id
    #   <p>A unique identifier for the task template.</p>
    #
    # @return [Types::DeleteTaskTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_task_template(
    #     instance_id: 'InstanceId', # required
    #     task_template_id: 'TaskTemplateId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteTaskTemplateOutput
    #
    def delete_task_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteTaskTemplateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteTaskTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteTaskTemplate
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::DeleteTaskTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteTaskTemplate,
        stubs: @stubs,
        params_class: Params::DeleteTaskTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_task_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a use case from an integration association.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteUseCaseInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :integration_association_id
    #   <p>The identifier for the integration association.</p>
    #
    # @option params [String] :use_case_id
    #   <p>The identifier for the use case.</p>
    #
    # @return [Types::DeleteUseCaseOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_use_case(
    #     instance_id: 'InstanceId', # required
    #     integration_association_id: 'IntegrationAssociationId', # required
    #     use_case_id: 'UseCaseId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteUseCaseOutput
    #
    def delete_use_case(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteUseCaseInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteUseCaseInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteUseCase
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::DeleteUseCase
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteUseCase,
        stubs: @stubs,
        params_class: Params::DeleteUseCaseOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_use_case
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a user account from the specified Amazon Connect instance.</p>
    #          <p>For information about what happens to a user's data when their account is deleted, see
    #     <a href="https://docs.aws.amazon.com/connect/latest/adminguide/delete-users.html">Delete Users from
    #     Your Amazon Connect Instance</a> in the <i>Amazon Connect Administrator Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteUserInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :user_id
    #   <p>The identifier of the user.</p>
    #
    # @return [Types::DeleteUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user(
    #     instance_id: 'InstanceId', # required
    #     user_id: 'UserId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteUserOutput
    #
    def delete_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteUserInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteUser
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::DeleteUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteUser,
        stubs: @stubs,
        params_class: Params::DeleteUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an existing user hierarchy group. It must not be associated with any agents or have
    #    any active child groups.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteUserHierarchyGroupInput}.
    #
    # @option params [String] :hierarchy_group_id
    #   <p>The identifier of the hierarchy group.</p>
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @return [Types::DeleteUserHierarchyGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user_hierarchy_group(
    #     hierarchy_group_id: 'HierarchyGroupId', # required
    #     instance_id: 'InstanceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteUserHierarchyGroupOutput
    #
    def delete_user_hierarchy_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteUserHierarchyGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteUserHierarchyGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteUserHierarchyGroup
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException, Errors::ResourceInUseException]),
        data_parser: Parsers::DeleteUserHierarchyGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteUserHierarchyGroup,
        stubs: @stubs,
        params_class: Params::DeleteUserHierarchyGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_user_hierarchy_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the vocabulary that has the given identifier.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteVocabularyInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :vocabulary_id
    #   <p>The identifier of the custom vocabulary.</p>
    #
    # @return [Types::DeleteVocabularyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_vocabulary(
    #     instance_id: 'InstanceId', # required
    #     vocabulary_id: 'VocabularyId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteVocabularyOutput
    #   resp.data.vocabulary_arn #=> String
    #   resp.data.vocabulary_id #=> String
    #   resp.data.state #=> String, one of ["CREATION_IN_PROGRESS", "ACTIVE", "CREATION_FAILED", "DELETE_IN_PROGRESS"]
    #
    def delete_vocabulary(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteVocabularyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteVocabularyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteVocabulary
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidRequestException, Errors::ResourceInUseException]),
        data_parser: Parsers::DeleteVocabulary
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteVocabulary,
        stubs: @stubs,
        params_class: Params::DeleteVocabularyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_vocabulary
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Describes an agent status.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAgentStatusInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :agent_status_id
    #   <p>The identifier for the agent status.</p>
    #
    # @return [Types::DescribeAgentStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_agent_status(
    #     instance_id: 'InstanceId', # required
    #     agent_status_id: 'AgentStatusId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAgentStatusOutput
    #   resp.data.agent_status #=> Types::AgentStatus
    #   resp.data.agent_status.agent_status_arn #=> String
    #   resp.data.agent_status.agent_status_id #=> String
    #   resp.data.agent_status.name #=> String
    #   resp.data.agent_status.description #=> String
    #   resp.data.agent_status.type #=> String, one of ["ROUTABLE", "CUSTOM", "OFFLINE"]
    #   resp.data.agent_status.display_order #=> Integer
    #   resp.data.agent_status.state #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.agent_status.tags #=> Hash<String, String>
    #   resp.data.agent_status.tags['key'] #=> String
    #
    def describe_agent_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAgentStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAgentStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAgentStatus
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribeAgentStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAgentStatus,
        stubs: @stubs,
        params_class: Params::DescribeAgentStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_agent_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Describes the specified contact. </p>
    #          <important>
    #             <p>Contact information remains available in Amazon Connect for 24 months, and then it is
    #     deleted.</p>
    #          </important>
    #
    # @param [Hash] params
    #   See {Types::DescribeContactInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :contact_id
    #   <p>The identifier of the contact.</p>
    #
    # @return [Types::DescribeContactOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_contact(
    #     instance_id: 'InstanceId', # required
    #     contact_id: 'ContactId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeContactOutput
    #   resp.data.contact #=> Types::Contact
    #   resp.data.contact.arn #=> String
    #   resp.data.contact.id #=> String
    #   resp.data.contact.initial_contact_id #=> String
    #   resp.data.contact.previous_contact_id #=> String
    #   resp.data.contact.initiation_method #=> String, one of ["INBOUND", "OUTBOUND", "TRANSFER", "QUEUE_TRANSFER", "CALLBACK", "API"]
    #   resp.data.contact.name #=> String
    #   resp.data.contact.description #=> String
    #   resp.data.contact.channel #=> String, one of ["VOICE", "CHAT", "TASK"]
    #   resp.data.contact.queue_info #=> Types::QueueInfo
    #   resp.data.contact.queue_info.id #=> String
    #   resp.data.contact.queue_info.enqueue_timestamp #=> Time
    #   resp.data.contact.agent_info #=> Types::AgentInfo
    #   resp.data.contact.agent_info.id #=> String
    #   resp.data.contact.agent_info.connected_to_agent_timestamp #=> Time
    #   resp.data.contact.initiation_timestamp #=> Time
    #   resp.data.contact.disconnect_timestamp #=> Time
    #   resp.data.contact.last_update_timestamp #=> Time
    #   resp.data.contact.scheduled_timestamp #=> Time
    #
    def describe_contact(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeContactInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeContactInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeContact
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribeContact
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeContact,
        stubs: @stubs,
        params_class: Params::DescribeContactOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_contact
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the specified contact flow.</p>
    #          <p>You can also create and update contact flows using the <a href="https://docs.aws.amazon.com/connect/latest/adminguide/flow-language.html">Amazon Connect
    #    Flow language</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeContactFlowInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance.</p>
    #
    # @option params [String] :contact_flow_id
    #   <p>The identifier of the contact flow.</p>
    #
    # @return [Types::DescribeContactFlowOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_contact_flow(
    #     instance_id: 'InstanceId', # required
    #     contact_flow_id: 'ContactFlowId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeContactFlowOutput
    #   resp.data.contact_flow #=> Types::ContactFlow
    #   resp.data.contact_flow.arn #=> String
    #   resp.data.contact_flow.id #=> String
    #   resp.data.contact_flow.name #=> String
    #   resp.data.contact_flow.type #=> String, one of ["CONTACT_FLOW", "CUSTOMER_QUEUE", "CUSTOMER_HOLD", "CUSTOMER_WHISPER", "AGENT_HOLD", "AGENT_WHISPER", "OUTBOUND_WHISPER", "AGENT_TRANSFER", "QUEUE_TRANSFER"]
    #   resp.data.contact_flow.state #=> String, one of ["ACTIVE", "ARCHIVED"]
    #   resp.data.contact_flow.description #=> String
    #   resp.data.contact_flow.content #=> String
    #   resp.data.contact_flow.tags #=> Hash<String, String>
    #   resp.data.contact_flow.tags['key'] #=> String
    #
    def describe_contact_flow(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeContactFlowInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeContactFlowInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeContactFlow
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException, Errors::ContactFlowNotPublishedException]),
        data_parser: Parsers::DescribeContactFlow
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeContactFlow,
        stubs: @stubs,
        params_class: Params::DescribeContactFlowOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_contact_flow
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the specified contact flow module.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeContactFlowModuleInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :contact_flow_module_id
    #   <p>The identifier of the contact flow module.</p>
    #
    # @return [Types::DescribeContactFlowModuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_contact_flow_module(
    #     instance_id: 'InstanceId', # required
    #     contact_flow_module_id: 'ContactFlowModuleId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeContactFlowModuleOutput
    #   resp.data.contact_flow_module #=> Types::ContactFlowModule
    #   resp.data.contact_flow_module.arn #=> String
    #   resp.data.contact_flow_module.id #=> String
    #   resp.data.contact_flow_module.name #=> String
    #   resp.data.contact_flow_module.content #=> String
    #   resp.data.contact_flow_module.description #=> String
    #   resp.data.contact_flow_module.state #=> String, one of ["ACTIVE", "ARCHIVED"]
    #   resp.data.contact_flow_module.status #=> String, one of ["PUBLISHED", "SAVED"]
    #   resp.data.contact_flow_module.tags #=> Hash<String, String>
    #   resp.data.contact_flow_module.tags['key'] #=> String
    #
    def describe_contact_flow_module(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeContactFlowModuleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeContactFlowModuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeContactFlowModule
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribeContactFlowModule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeContactFlowModule,
        stubs: @stubs,
        params_class: Params::DescribeContactFlowModuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_contact_flow_module
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Describes the hours of operation.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeHoursOfOperationInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :hours_of_operation_id
    #   <p>The identifier for the hours of operation.</p>
    #
    # @return [Types::DescribeHoursOfOperationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_hours_of_operation(
    #     instance_id: 'InstanceId', # required
    #     hours_of_operation_id: 'HoursOfOperationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeHoursOfOperationOutput
    #   resp.data.hours_of_operation #=> Types::HoursOfOperation
    #   resp.data.hours_of_operation.hours_of_operation_id #=> String
    #   resp.data.hours_of_operation.hours_of_operation_arn #=> String
    #   resp.data.hours_of_operation.name #=> String
    #   resp.data.hours_of_operation.description #=> String
    #   resp.data.hours_of_operation.time_zone #=> String
    #   resp.data.hours_of_operation.config #=> Array<HoursOfOperationConfig>
    #   resp.data.hours_of_operation.config[0] #=> Types::HoursOfOperationConfig
    #   resp.data.hours_of_operation.config[0].day #=> String, one of ["SUNDAY", "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY"]
    #   resp.data.hours_of_operation.config[0].start_time #=> Types::HoursOfOperationTimeSlice
    #   resp.data.hours_of_operation.config[0].start_time.hours #=> Integer
    #   resp.data.hours_of_operation.config[0].start_time.minutes #=> Integer
    #   resp.data.hours_of_operation.config[0].end_time #=> Types::HoursOfOperationTimeSlice
    #   resp.data.hours_of_operation.tags #=> Hash<String, String>
    #   resp.data.hours_of_operation.tags['key'] #=> String
    #
    def describe_hours_of_operation(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeHoursOfOperationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeHoursOfOperationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeHoursOfOperation
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribeHoursOfOperation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeHoursOfOperation,
        stubs: @stubs,
        params_class: Params::DescribeHoursOfOperationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_hours_of_operation
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Returns the current state of the specified instance identifier. It tracks the instance while
    #    it is being created and returns an error status, if applicable. </p>
    #          <p>If an instance is not created successfully, the instance status reason field returns details
    #    relevant to the reason. The instance in a failed state is returned only for 24 hours after the
    #    CreateInstance API was invoked.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeInstanceInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @return [Types::DescribeInstanceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_instance(
    #     instance_id: 'InstanceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeInstanceOutput
    #   resp.data.instance #=> Types::Instance
    #   resp.data.instance.id #=> String
    #   resp.data.instance.arn #=> String
    #   resp.data.instance.identity_management_type #=> String, one of ["SAML", "CONNECT_MANAGED", "EXISTING_DIRECTORY"]
    #   resp.data.instance.instance_alias #=> String
    #   resp.data.instance.created_time #=> Time
    #   resp.data.instance.service_role #=> String
    #   resp.data.instance.instance_status #=> String, one of ["CREATION_IN_PROGRESS", "ACTIVE", "CREATION_FAILED"]
    #   resp.data.instance.status_reason #=> Types::InstanceStatusReason
    #   resp.data.instance.status_reason.message #=> String
    #   resp.data.instance.inbound_calls_enabled #=> Boolean
    #   resp.data.instance.outbound_calls_enabled #=> Boolean
    #
    def describe_instance(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeInstanceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeInstanceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeInstance
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribeInstance
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeInstance,
        stubs: @stubs,
        params_class: Params::DescribeInstanceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_instance
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Describes the specified instance attribute.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeInstanceAttributeInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :attribute_type
    #   <p>The type of attribute.</p>
    #
    # @return [Types::DescribeInstanceAttributeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_instance_attribute(
    #     instance_id: 'InstanceId', # required
    #     attribute_type: 'INBOUND_CALLS' # required - accepts ["INBOUND_CALLS", "OUTBOUND_CALLS", "CONTACTFLOW_LOGS", "CONTACT_LENS", "AUTO_RESOLVE_BEST_VOICES", "USE_CUSTOM_TTS_VOICES", "EARLY_MEDIA", "MULTI_PARTY_CONFERENCE"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeInstanceAttributeOutput
    #   resp.data.attribute #=> Types::Attribute
    #   resp.data.attribute.attribute_type #=> String, one of ["INBOUND_CALLS", "OUTBOUND_CALLS", "CONTACTFLOW_LOGS", "CONTACT_LENS", "AUTO_RESOLVE_BEST_VOICES", "USE_CUSTOM_TTS_VOICES", "EARLY_MEDIA", "MULTI_PARTY_CONFERENCE"]
    #   resp.data.attribute.value #=> String
    #
    def describe_instance_attribute(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeInstanceAttributeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeInstanceAttributeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeInstanceAttribute
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribeInstanceAttribute
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeInstanceAttribute,
        stubs: @stubs,
        params_class: Params::DescribeInstanceAttributeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_instance_attribute
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Retrieves the current storage configurations for the specified resource type, association
    #    ID, and instance ID.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeInstanceStorageConfigInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :association_id
    #   <p>The existing association identifier that uniquely identifies the resource type and storage config for the given instance ID.</p>
    #
    # @option params [String] :resource_type
    #   <p>A valid resource type.</p>
    #
    # @return [Types::DescribeInstanceStorageConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_instance_storage_config(
    #     instance_id: 'InstanceId', # required
    #     association_id: 'AssociationId', # required
    #     resource_type: 'CHAT_TRANSCRIPTS' # required - accepts ["CHAT_TRANSCRIPTS", "CALL_RECORDINGS", "SCHEDULED_REPORTS", "MEDIA_STREAMS", "CONTACT_TRACE_RECORDS", "AGENT_EVENTS", "REAL_TIME_CONTACT_ANALYSIS_SEGMENTS"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeInstanceStorageConfigOutput
    #   resp.data.storage_config #=> Types::InstanceStorageConfig
    #   resp.data.storage_config.association_id #=> String
    #   resp.data.storage_config.storage_type #=> String, one of ["S3", "KINESIS_VIDEO_STREAM", "KINESIS_STREAM", "KINESIS_FIREHOSE"]
    #   resp.data.storage_config.s3_config #=> Types::S3Config
    #   resp.data.storage_config.s3_config.bucket_name #=> String
    #   resp.data.storage_config.s3_config.bucket_prefix #=> String
    #   resp.data.storage_config.s3_config.encryption_config #=> Types::EncryptionConfig
    #   resp.data.storage_config.s3_config.encryption_config.encryption_type #=> String, one of ["KMS"]
    #   resp.data.storage_config.s3_config.encryption_config.key_id #=> String
    #   resp.data.storage_config.kinesis_video_stream_config #=> Types::KinesisVideoStreamConfig
    #   resp.data.storage_config.kinesis_video_stream_config.prefix #=> String
    #   resp.data.storage_config.kinesis_video_stream_config.retention_period_hours #=> Integer
    #   resp.data.storage_config.kinesis_video_stream_config.encryption_config #=> Types::EncryptionConfig
    #   resp.data.storage_config.kinesis_stream_config #=> Types::KinesisStreamConfig
    #   resp.data.storage_config.kinesis_stream_config.stream_arn #=> String
    #   resp.data.storage_config.kinesis_firehose_config #=> Types::KinesisFirehoseConfig
    #   resp.data.storage_config.kinesis_firehose_config.firehose_arn #=> String
    #
    def describe_instance_storage_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeInstanceStorageConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeInstanceStorageConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeInstanceStorageConfig
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribeInstanceStorageConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeInstanceStorageConfig,
        stubs: @stubs,
        params_class: Params::DescribeInstanceStorageConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_instance_storage_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets details and status of a phone number that’s claimed to your Amazon Connect instance</p>
    #
    # @param [Hash] params
    #   See {Types::DescribePhoneNumberInput}.
    #
    # @option params [String] :phone_number_id
    #   <p>A unique identifier for the phone number.</p>
    #
    # @return [Types::DescribePhoneNumberOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_phone_number(
    #     phone_number_id: 'PhoneNumberId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribePhoneNumberOutput
    #   resp.data.claimed_phone_number_summary #=> Types::ClaimedPhoneNumberSummary
    #   resp.data.claimed_phone_number_summary.phone_number_id #=> String
    #   resp.data.claimed_phone_number_summary.phone_number_arn #=> String
    #   resp.data.claimed_phone_number_summary.phone_number #=> String
    #   resp.data.claimed_phone_number_summary.phone_number_country_code #=> String, one of ["AF", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BA", "BW", "BR", "IO", "VG", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CK", "CR", "HR", "CU", "CW", "CY", "CZ", "CD", "DK", "DJ", "DM", "DO", "TL", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "PF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "CI", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "AN", "NC", "NZ", "NI", "NE", "NG", "NU", "KP", "MP", "NO", "OM", "PK", "PW", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "CG", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "KR", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "VI", "UG", "UA", "AE", "GB", "US", "UY", "UZ", "VU", "VA", "VE", "VN", "WF", "EH", "YE", "ZM", "ZW"]
    #   resp.data.claimed_phone_number_summary.phone_number_type #=> String, one of ["TOLL_FREE", "DID"]
    #   resp.data.claimed_phone_number_summary.phone_number_description #=> String
    #   resp.data.claimed_phone_number_summary.target_arn #=> String
    #   resp.data.claimed_phone_number_summary.tags #=> Hash<String, String>
    #   resp.data.claimed_phone_number_summary.tags['key'] #=> String
    #   resp.data.claimed_phone_number_summary.phone_number_status #=> Types::PhoneNumberStatus
    #   resp.data.claimed_phone_number_summary.phone_number_status.status #=> String, one of ["CLAIMED", "IN_PROGRESS", "FAILED"]
    #   resp.data.claimed_phone_number_summary.phone_number_status.message #=> String
    #
    def describe_phone_number(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribePhoneNumberInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribePhoneNumberInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribePhoneNumber
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException]),
        data_parser: Parsers::DescribePhoneNumber
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribePhoneNumber,
        stubs: @stubs,
        params_class: Params::DescribePhoneNumberOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_phone_number
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Describes the specified queue.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeQueueInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :queue_id
    #   <p>The identifier for the queue.</p>
    #
    # @return [Types::DescribeQueueOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_queue(
    #     instance_id: 'InstanceId', # required
    #     queue_id: 'QueueId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeQueueOutput
    #   resp.data.queue #=> Types::Queue
    #   resp.data.queue.name #=> String
    #   resp.data.queue.queue_arn #=> String
    #   resp.data.queue.queue_id #=> String
    #   resp.data.queue.description #=> String
    #   resp.data.queue.outbound_caller_config #=> Types::OutboundCallerConfig
    #   resp.data.queue.outbound_caller_config.outbound_caller_id_name #=> String
    #   resp.data.queue.outbound_caller_config.outbound_caller_id_number_id #=> String
    #   resp.data.queue.outbound_caller_config.outbound_flow_id #=> String
    #   resp.data.queue.hours_of_operation_id #=> String
    #   resp.data.queue.max_contacts #=> Integer
    #   resp.data.queue.status #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.queue.tags #=> Hash<String, String>
    #   resp.data.queue.tags['key'] #=> String
    #
    def describe_queue(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeQueueInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeQueueInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeQueue
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribeQueue
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeQueue,
        stubs: @stubs,
        params_class: Params::DescribeQueueOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_queue
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the quick connect.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeQuickConnectInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :quick_connect_id
    #   <p>The identifier for the quick connect.</p>
    #
    # @return [Types::DescribeQuickConnectOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_quick_connect(
    #     instance_id: 'InstanceId', # required
    #     quick_connect_id: 'QuickConnectId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeQuickConnectOutput
    #   resp.data.quick_connect #=> Types::QuickConnect
    #   resp.data.quick_connect.quick_connect_arn #=> String
    #   resp.data.quick_connect.quick_connect_id #=> String
    #   resp.data.quick_connect.name #=> String
    #   resp.data.quick_connect.description #=> String
    #   resp.data.quick_connect.quick_connect_config #=> Types::QuickConnectConfig
    #   resp.data.quick_connect.quick_connect_config.quick_connect_type #=> String, one of ["USER", "QUEUE", "PHONE_NUMBER"]
    #   resp.data.quick_connect.quick_connect_config.user_config #=> Types::UserQuickConnectConfig
    #   resp.data.quick_connect.quick_connect_config.user_config.user_id #=> String
    #   resp.data.quick_connect.quick_connect_config.user_config.contact_flow_id #=> String
    #   resp.data.quick_connect.quick_connect_config.queue_config #=> Types::QueueQuickConnectConfig
    #   resp.data.quick_connect.quick_connect_config.queue_config.queue_id #=> String
    #   resp.data.quick_connect.quick_connect_config.queue_config.contact_flow_id #=> String
    #   resp.data.quick_connect.quick_connect_config.phone_config #=> Types::PhoneNumberQuickConnectConfig
    #   resp.data.quick_connect.quick_connect_config.phone_config.phone_number #=> String
    #   resp.data.quick_connect.tags #=> Hash<String, String>
    #   resp.data.quick_connect.tags['key'] #=> String
    #
    def describe_quick_connect(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeQuickConnectInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeQuickConnectInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeQuickConnect
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribeQuickConnect
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeQuickConnect,
        stubs: @stubs,
        params_class: Params::DescribeQuickConnectOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_quick_connect
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the specified routing profile.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeRoutingProfileInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :routing_profile_id
    #   <p>The identifier of the routing profile.</p>
    #
    # @return [Types::DescribeRoutingProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_routing_profile(
    #     instance_id: 'InstanceId', # required
    #     routing_profile_id: 'RoutingProfileId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeRoutingProfileOutput
    #   resp.data.routing_profile #=> Types::RoutingProfile
    #   resp.data.routing_profile.instance_id #=> String
    #   resp.data.routing_profile.name #=> String
    #   resp.data.routing_profile.routing_profile_arn #=> String
    #   resp.data.routing_profile.routing_profile_id #=> String
    #   resp.data.routing_profile.description #=> String
    #   resp.data.routing_profile.media_concurrencies #=> Array<MediaConcurrency>
    #   resp.data.routing_profile.media_concurrencies[0] #=> Types::MediaConcurrency
    #   resp.data.routing_profile.media_concurrencies[0].channel #=> String, one of ["VOICE", "CHAT", "TASK"]
    #   resp.data.routing_profile.media_concurrencies[0].concurrency #=> Integer
    #   resp.data.routing_profile.default_outbound_queue_id #=> String
    #   resp.data.routing_profile.tags #=> Hash<String, String>
    #   resp.data.routing_profile.tags['key'] #=> String
    #
    def describe_routing_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeRoutingProfileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeRoutingProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeRoutingProfile
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribeRoutingProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeRoutingProfile,
        stubs: @stubs,
        params_class: Params::DescribeRoutingProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_routing_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Gets basic information about the security profle.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeSecurityProfileInput}.
    #
    # @option params [String] :security_profile_id
    #   <p>The identifier for the security profle.</p>
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @return [Types::DescribeSecurityProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_security_profile(
    #     security_profile_id: 'SecurityProfileId', # required
    #     instance_id: 'InstanceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeSecurityProfileOutput
    #   resp.data.security_profile #=> Types::SecurityProfile
    #   resp.data.security_profile.id #=> String
    #   resp.data.security_profile.organization_resource_id #=> String
    #   resp.data.security_profile.arn #=> String
    #   resp.data.security_profile.security_profile_name #=> String
    #   resp.data.security_profile.description #=> String
    #   resp.data.security_profile.tags #=> Hash<String, String>
    #   resp.data.security_profile.tags['key'] #=> String
    #
    def describe_security_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeSecurityProfileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeSecurityProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeSecurityProfile
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribeSecurityProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeSecurityProfile,
        stubs: @stubs,
        params_class: Params::DescribeSecurityProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_security_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the specified user account. You can find the instance ID in the console (it’s the
    #    final part of the ARN). The console does not display the user IDs. Instead, list the users and
    #    note the IDs provided in the output.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeUserInput}.
    #
    # @option params [String] :user_id
    #   <p>The identifier of the user account.</p>
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @return [Types::DescribeUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_user(
    #     user_id: 'UserId', # required
    #     instance_id: 'InstanceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeUserOutput
    #   resp.data.user #=> Types::User
    #   resp.data.user.id #=> String
    #   resp.data.user.arn #=> String
    #   resp.data.user.username #=> String
    #   resp.data.user.identity_info #=> Types::UserIdentityInfo
    #   resp.data.user.identity_info.first_name #=> String
    #   resp.data.user.identity_info.last_name #=> String
    #   resp.data.user.identity_info.email #=> String
    #   resp.data.user.phone_config #=> Types::UserPhoneConfig
    #   resp.data.user.phone_config.phone_type #=> String, one of ["SOFT_PHONE", "DESK_PHONE"]
    #   resp.data.user.phone_config.auto_accept #=> Boolean
    #   resp.data.user.phone_config.after_contact_work_time_limit #=> Integer
    #   resp.data.user.phone_config.desk_phone_number #=> String
    #   resp.data.user.directory_user_id #=> String
    #   resp.data.user.security_profile_ids #=> Array<String>
    #   resp.data.user.security_profile_ids[0] #=> String
    #   resp.data.user.routing_profile_id #=> String
    #   resp.data.user.hierarchy_group_id #=> String
    #   resp.data.user.tags #=> Hash<String, String>
    #   resp.data.user.tags['key'] #=> String
    #
    def describe_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeUserInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeUser
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribeUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeUser,
        stubs: @stubs,
        params_class: Params::DescribeUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the specified hierarchy group.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeUserHierarchyGroupInput}.
    #
    # @option params [String] :hierarchy_group_id
    #   <p>The identifier of the hierarchy group.</p>
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @return [Types::DescribeUserHierarchyGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_user_hierarchy_group(
    #     hierarchy_group_id: 'HierarchyGroupId', # required
    #     instance_id: 'InstanceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeUserHierarchyGroupOutput
    #   resp.data.hierarchy_group #=> Types::HierarchyGroup
    #   resp.data.hierarchy_group.id #=> String
    #   resp.data.hierarchy_group.arn #=> String
    #   resp.data.hierarchy_group.name #=> String
    #   resp.data.hierarchy_group.level_id #=> String
    #   resp.data.hierarchy_group.hierarchy_path #=> Types::HierarchyPath
    #   resp.data.hierarchy_group.hierarchy_path.level_one #=> Types::HierarchyGroupSummary
    #   resp.data.hierarchy_group.hierarchy_path.level_one.id #=> String
    #   resp.data.hierarchy_group.hierarchy_path.level_one.arn #=> String
    #   resp.data.hierarchy_group.hierarchy_path.level_one.name #=> String
    #   resp.data.hierarchy_group.hierarchy_path.level_two #=> Types::HierarchyGroupSummary
    #   resp.data.hierarchy_group.hierarchy_path.level_three #=> Types::HierarchyGroupSummary
    #   resp.data.hierarchy_group.hierarchy_path.level_four #=> Types::HierarchyGroupSummary
    #   resp.data.hierarchy_group.hierarchy_path.level_five #=> Types::HierarchyGroupSummary
    #   resp.data.hierarchy_group.tags #=> Hash<String, String>
    #   resp.data.hierarchy_group.tags['key'] #=> String
    #
    def describe_user_hierarchy_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeUserHierarchyGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeUserHierarchyGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeUserHierarchyGroup
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribeUserHierarchyGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeUserHierarchyGroup,
        stubs: @stubs,
        params_class: Params::DescribeUserHierarchyGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_user_hierarchy_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the hierarchy structure of the specified Amazon Connect instance.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeUserHierarchyStructureInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @return [Types::DescribeUserHierarchyStructureOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_user_hierarchy_structure(
    #     instance_id: 'InstanceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeUserHierarchyStructureOutput
    #   resp.data.hierarchy_structure #=> Types::HierarchyStructure
    #   resp.data.hierarchy_structure.level_one #=> Types::HierarchyLevel
    #   resp.data.hierarchy_structure.level_one.id #=> String
    #   resp.data.hierarchy_structure.level_one.arn #=> String
    #   resp.data.hierarchy_structure.level_one.name #=> String
    #   resp.data.hierarchy_structure.level_two #=> Types::HierarchyLevel
    #   resp.data.hierarchy_structure.level_three #=> Types::HierarchyLevel
    #   resp.data.hierarchy_structure.level_four #=> Types::HierarchyLevel
    #   resp.data.hierarchy_structure.level_five #=> Types::HierarchyLevel
    #
    def describe_user_hierarchy_structure(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeUserHierarchyStructureInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeUserHierarchyStructureInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeUserHierarchyStructure
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribeUserHierarchyStructure
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeUserHierarchyStructure,
        stubs: @stubs,
        params_class: Params::DescribeUserHierarchyStructureOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_user_hierarchy_structure
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the specified vocabulary.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeVocabularyInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :vocabulary_id
    #   <p>The identifier of the custom vocabulary.</p>
    #
    # @return [Types::DescribeVocabularyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_vocabulary(
    #     instance_id: 'InstanceId', # required
    #     vocabulary_id: 'VocabularyId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeVocabularyOutput
    #   resp.data.vocabulary #=> Types::Vocabulary
    #   resp.data.vocabulary.name #=> String
    #   resp.data.vocabulary.id #=> String
    #   resp.data.vocabulary.arn #=> String
    #   resp.data.vocabulary.language_code #=> String, one of ["ar-AE", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fr-CA", "fr-FR", "hi-IN", "it-IT", "ja-JP", "ko-KR", "pt-BR", "pt-PT", "zh-CN"]
    #   resp.data.vocabulary.state #=> String, one of ["CREATION_IN_PROGRESS", "ACTIVE", "CREATION_FAILED", "DELETE_IN_PROGRESS"]
    #   resp.data.vocabulary.last_modified_time #=> Time
    #   resp.data.vocabulary.failure_reason #=> String
    #   resp.data.vocabulary.content #=> String
    #   resp.data.vocabulary.tags #=> Hash<String, String>
    #   resp.data.vocabulary.tags['key'] #=> String
    #
    def describe_vocabulary(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeVocabularyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeVocabularyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeVocabulary
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribeVocabulary
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeVocabulary,
        stubs: @stubs,
        params_class: Params::DescribeVocabularyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_vocabulary
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Revokes access to integrated applications from Amazon Connect.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateApprovedOriginInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :origin
    #   <p>The domain URL of the integrated application.</p>
    #
    # @return [Types::DisassociateApprovedOriginOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_approved_origin(
    #     instance_id: 'InstanceId', # required
    #     origin: 'Origin' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateApprovedOriginOutput
    #
    def disassociate_approved_origin(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateApprovedOriginInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateApprovedOriginInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateApprovedOrigin
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::DisassociateApprovedOrigin
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateApprovedOrigin,
        stubs: @stubs,
        params_class: Params::DisassociateApprovedOriginOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_approved_origin
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Revokes authorization from the specified instance to access the specified Amazon Lex or Amazon Lex V2
    #    bot. </p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateBotInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [LexBot] :lex_bot
    #   <p>Configuration information of an Amazon Lex bot.</p>
    #
    # @option params [LexV2Bot] :lex_v2_bot
    #   <p>The Amazon Lex V2 bot to disassociate from the instance.</p>
    #
    # @return [Types::DisassociateBotOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_bot(
    #     instance_id: 'InstanceId', # required
    #     lex_bot: {
    #       name: 'Name',
    #       lex_region: 'LexRegion'
    #     },
    #     lex_v2_bot: {
    #       alias_arn: 'AliasArn'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateBotOutput
    #
    def disassociate_bot(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateBotInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateBotInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateBot
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::DisassociateBot
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateBot,
        stubs: @stubs,
        params_class: Params::DisassociateBotOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_bot
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Removes the storage type configurations for the specified resource type and association
    #    ID.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateInstanceStorageConfigInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :association_id
    #   <p>The existing association identifier that uniquely identifies the resource type and storage config for the given instance ID.</p>
    #
    # @option params [String] :resource_type
    #   <p>A valid resource type.</p>
    #
    # @return [Types::DisassociateInstanceStorageConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_instance_storage_config(
    #     instance_id: 'InstanceId', # required
    #     association_id: 'AssociationId', # required
    #     resource_type: 'CHAT_TRANSCRIPTS' # required - accepts ["CHAT_TRANSCRIPTS", "CALL_RECORDINGS", "SCHEDULED_REPORTS", "MEDIA_STREAMS", "CONTACT_TRACE_RECORDS", "AGENT_EVENTS", "REAL_TIME_CONTACT_ANALYSIS_SEGMENTS"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateInstanceStorageConfigOutput
    #
    def disassociate_instance_storage_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateInstanceStorageConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateInstanceStorageConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateInstanceStorageConfig
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::DisassociateInstanceStorageConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateInstanceStorageConfig,
        stubs: @stubs,
        params_class: Params::DisassociateInstanceStorageConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_instance_storage_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Remove the Lambda function from the dropdown options available in the relevant contact flow
    #    blocks.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateLambdaFunctionInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance..</p>
    #
    # @option params [String] :function_arn
    #   <p>The Amazon Resource Name (ARN) of the Lambda function being disassociated.</p>
    #
    # @return [Types::DisassociateLambdaFunctionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_lambda_function(
    #     instance_id: 'InstanceId', # required
    #     function_arn: 'FunctionArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateLambdaFunctionOutput
    #
    def disassociate_lambda_function(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateLambdaFunctionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateLambdaFunctionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateLambdaFunction
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::DisassociateLambdaFunction
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateLambdaFunction,
        stubs: @stubs,
        params_class: Params::DisassociateLambdaFunctionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_lambda_function
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Revokes authorization from the specified instance to access the specified Amazon Lex bot.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateLexBotInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :bot_name
    #   <p>The name of the Amazon Lex bot. Maximum character limit of 50.</p>
    #
    # @option params [String] :lex_region
    #   <p>The Region in which the Amazon Lex bot has been created.</p>
    #
    # @return [Types::DisassociateLexBotOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_lex_bot(
    #     instance_id: 'InstanceId', # required
    #     bot_name: 'BotName', # required
    #     lex_region: 'LexRegion' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateLexBotOutput
    #
    def disassociate_lex_bot(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateLexBotInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateLexBotInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateLexBot
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::DisassociateLexBot
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateLexBot,
        stubs: @stubs,
        params_class: Params::DisassociateLexBotOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_lex_bot
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the contact flow association from a phone number claimed to your Amazon Connect instance, if
    #    a contact flow association exists.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociatePhoneNumberContactFlowInput}.
    #
    # @option params [String] :phone_number_id
    #   <p>A unique identifier for the phone number.</p>
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @return [Types::DisassociatePhoneNumberContactFlowOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_phone_number_contact_flow(
    #     phone_number_id: 'PhoneNumberId', # required
    #     instance_id: 'InstanceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociatePhoneNumberContactFlowOutput
    #
    def disassociate_phone_number_contact_flow(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociatePhoneNumberContactFlowInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociatePhoneNumberContactFlowInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociatePhoneNumberContactFlow
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException]),
        data_parser: Parsers::DisassociatePhoneNumberContactFlow
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociatePhoneNumberContactFlow,
        stubs: @stubs,
        params_class: Params::DisassociatePhoneNumberContactFlowOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_phone_number_contact_flow
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Disassociates a set of quick connects from a queue.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateQueueQuickConnectsInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :queue_id
    #   <p>The identifier for the queue.</p>
    #
    # @option params [Array<String>] :quick_connect_ids
    #   <p>The quick connects to disassociate from the queue.</p>
    #
    # @return [Types::DisassociateQueueQuickConnectsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_queue_quick_connects(
    #     instance_id: 'InstanceId', # required
    #     queue_id: 'QueueId', # required
    #     quick_connect_ids: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateQueueQuickConnectsOutput
    #
    def disassociate_queue_quick_connects(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateQueueQuickConnectsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateQueueQuickConnectsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateQueueQuickConnects
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::DisassociateQueueQuickConnects
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateQueueQuickConnects,
        stubs: @stubs,
        params_class: Params::DisassociateQueueQuickConnectsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_queue_quick_connects
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociates a set of queues from a routing profile.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateRoutingProfileQueuesInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :routing_profile_id
    #   <p>The identifier of the routing profile.</p>
    #
    # @option params [Array<RoutingProfileQueueReference>] :queue_references
    #   <p>The queues to disassociate from this routing profile.</p>
    #
    # @return [Types::DisassociateRoutingProfileQueuesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_routing_profile_queues(
    #     instance_id: 'InstanceId', # required
    #     routing_profile_id: 'RoutingProfileId', # required
    #     queue_references: [
    #       {
    #         queue_id: 'QueueId', # required
    #         channel: 'VOICE' # required - accepts ["VOICE", "CHAT", "TASK"]
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateRoutingProfileQueuesOutput
    #
    def disassociate_routing_profile_queues(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateRoutingProfileQueuesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateRoutingProfileQueuesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateRoutingProfileQueues
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::DisassociateRoutingProfileQueues
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateRoutingProfileQueues,
        stubs: @stubs,
        params_class: Params::DisassociateRoutingProfileQueuesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_routing_profile_queues
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Deletes the specified security key.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateSecurityKeyInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :association_id
    #   <p>The existing association identifier that uniquely identifies the resource type and storage config for the given instance ID.</p>
    #
    # @return [Types::DisassociateSecurityKeyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_security_key(
    #     instance_id: 'InstanceId', # required
    #     association_id: 'AssociationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateSecurityKeyOutput
    #
    def disassociate_security_key(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateSecurityKeyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateSecurityKeyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateSecurityKey
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::DisassociateSecurityKey
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateSecurityKey,
        stubs: @stubs,
        params_class: Params::DisassociateSecurityKeyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_security_key
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the contact attributes for the specified contact.</p>
    #
    # @param [Hash] params
    #   See {Types::GetContactAttributesInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance.</p>
    #
    # @option params [String] :initial_contact_id
    #   <p>The identifier of the initial contact.</p>
    #
    # @return [Types::GetContactAttributesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_contact_attributes(
    #     instance_id: 'InstanceId', # required
    #     initial_contact_id: 'InitialContactId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetContactAttributesOutput
    #   resp.data.attributes #=> Hash<String, String>
    #   resp.data.attributes['key'] #=> String
    #
    def get_contact_attributes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetContactAttributesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetContactAttributesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetContactAttributes
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::GetContactAttributes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetContactAttributes,
        stubs: @stubs,
        params_class: Params::GetContactAttributesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_contact_attributes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the real-time metric data from the specified Amazon Connect instance.</p>
    #          <p>For a description of each metric, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html">Real-time Metrics
    #     Definitions</a> in the <i>Amazon Connect Administrator Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetCurrentMetricDataInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [Filters] :filters
    #   <p>The queues, up to 100, or channels, to use to filter the metrics returned. Metric data is
    #      retrieved only for the resources associated with the queues or channels included in the filter.
    #      You can include both queue IDs and queue ARNs in the same request. VOICE, CHAT, and TASK channels are supported.</p>
    #
    # @option params [Array<String>] :groupings
    #   <p>The grouping applied to the metrics returned. For example, when grouped by
    #       <code>QUEUE</code>, the metrics returned apply to each queue rather than aggregated for all
    #      queues. If you group by <code>CHANNEL</code>, you should include a Channels filter.
    #      VOICE, CHAT, and TASK channels are supported.</p>
    #            <p>If no <code>Grouping</code> is included in the request, a summary of metrics is
    #      returned.</p>
    #
    # @option params [Array<CurrentMetric>] :current_metrics
    #   <p>The metrics to retrieve. Specify the name and unit for each metric. The following metrics
    #      are available. For a description of all the metrics, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html">Real-time Metrics
    #       Definitions</a> in the <i>Amazon Connect Administrator Guide</i>.</p>
    #            <dl>
    #               <dt>AGENTS_AFTER_CONTACT_WORK</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Name in real-time metrics report: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#aftercallwork-real-time">ACW</a>
    #                  </p>
    #
    #               </dd>
    #               <dt>AGENTS_AVAILABLE</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Name in real-time metrics report: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#available-real-time">Available</a>
    #                  </p>
    #               </dd>
    #               <dt>AGENTS_ERROR</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Name in real-time metrics report: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#error-real-time">Error</a>
    #                  </p>
    #               </dd>
    #               <dt>AGENTS_NON_PRODUCTIVE</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Name in real-time metrics report: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#non-productive-time-real-time">NPT (Non-Productive Time)</a>
    #                  </p>
    #               </dd>
    #               <dt>AGENTS_ON_CALL</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Name in real-time metrics report: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#on-call-real-time">On
    #          contact</a>
    #                  </p>
    #               </dd>
    #               <dt>AGENTS_ON_CONTACT</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Name in real-time metrics report: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#on-call-real-time">On
    #          contact</a>
    #                  </p>
    #               </dd>
    #               <dt>AGENTS_ONLINE</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Name in real-time metrics report: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#online-real-time">Online</a>
    #                  </p>
    #               </dd>
    #               <dt>AGENTS_STAFFED</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Name in real-time metrics report: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#staffed-real-time">Staffed</a>
    #                  </p>
    #               </dd>
    #               <dt>CONTACTS_IN_QUEUE</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Name in real-time metrics report: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#in-queue-real-time">In
    #          queue</a>
    #                  </p>
    #               </dd>
    #               <dt>CONTACTS_SCHEDULED</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Name in real-time metrics report: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#scheduled-real-time">Scheduled</a>
    #                  </p>
    #               </dd>
    #               <dt>OLDEST_CONTACT_AGE</dt>
    #               <dd>
    #                  <p>Unit: SECONDS</p>
    #                  <p>When you use groupings, Unit says SECONDS and the Value is returned in SECONDS. </p>
    #                  <p>When you do not use groupings, Unit says SECONDS but the Value is returned in
    #         MILLISECONDS. For example, if you get a response like this:</p>
    #                  <p>
    #                     <code>{ "Metric": { "Name": "OLDEST_CONTACT_AGE", "Unit": "SECONDS" }, "Value": 24113.0
    #         </code>}</p>
    #                  <p>The actual OLDEST_CONTACT_AGE is 24 seconds.</p>
    #
    #                  <p>Name in real-time metrics report: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#oldest-real-time">Oldest</a>
    #                  </p>
    #               </dd>
    #               <dt>SLOTS_ACTIVE</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Name in real-time metrics report: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#active-real-time">Active</a>
    #                  </p>
    #               </dd>
    #               <dt>SLOTS_AVAILABLE</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Name in real-time metrics report: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#availability-real-time">Availability</a>
    #                  </p>
    #               </dd>
    #            </dl>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #            <p>The token expires after 5 minutes from the time it is created. Subsequent requests that use
    #      the token must use the same request parameters as the request that generated the token.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    # @return [Types::GetCurrentMetricDataOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_current_metric_data(
    #     instance_id: 'InstanceId', # required
    #     filters: {
    #       queues: [
    #         'member'
    #       ],
    #       channels: [
    #         'VOICE' # accepts ["VOICE", "CHAT", "TASK"]
    #       ]
    #     }, # required
    #     groupings: [
    #       'QUEUE' # accepts ["QUEUE", "CHANNEL"]
    #     ],
    #     current_metrics: [
    #       {
    #         name: 'AGENTS_ONLINE', # accepts ["AGENTS_ONLINE", "AGENTS_AVAILABLE", "AGENTS_ON_CALL", "AGENTS_NON_PRODUCTIVE", "AGENTS_AFTER_CONTACT_WORK", "AGENTS_ERROR", "AGENTS_STAFFED", "CONTACTS_IN_QUEUE", "OLDEST_CONTACT_AGE", "CONTACTS_SCHEDULED", "AGENTS_ON_CONTACT", "SLOTS_ACTIVE", "SLOTS_AVAILABLE"]
    #         unit: 'SECONDS' # accepts ["SECONDS", "COUNT", "PERCENT"]
    #       }
    #     ], # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetCurrentMetricDataOutput
    #   resp.data.next_token #=> String
    #   resp.data.metric_results #=> Array<CurrentMetricResult>
    #   resp.data.metric_results[0] #=> Types::CurrentMetricResult
    #   resp.data.metric_results[0].dimensions #=> Types::Dimensions
    #   resp.data.metric_results[0].dimensions.queue #=> Types::QueueReference
    #   resp.data.metric_results[0].dimensions.queue.id #=> String
    #   resp.data.metric_results[0].dimensions.queue.arn #=> String
    #   resp.data.metric_results[0].dimensions.channel #=> String, one of ["VOICE", "CHAT", "TASK"]
    #   resp.data.metric_results[0].collections #=> Array<CurrentMetricData>
    #   resp.data.metric_results[0].collections[0] #=> Types::CurrentMetricData
    #   resp.data.metric_results[0].collections[0].metric #=> Types::CurrentMetric
    #   resp.data.metric_results[0].collections[0].metric.name #=> String, one of ["AGENTS_ONLINE", "AGENTS_AVAILABLE", "AGENTS_ON_CALL", "AGENTS_NON_PRODUCTIVE", "AGENTS_AFTER_CONTACT_WORK", "AGENTS_ERROR", "AGENTS_STAFFED", "CONTACTS_IN_QUEUE", "OLDEST_CONTACT_AGE", "CONTACTS_SCHEDULED", "AGENTS_ON_CONTACT", "SLOTS_ACTIVE", "SLOTS_AVAILABLE"]
    #   resp.data.metric_results[0].collections[0].metric.unit #=> String, one of ["SECONDS", "COUNT", "PERCENT"]
    #   resp.data.metric_results[0].collections[0].value #=> Float
    #   resp.data.data_snapshot_time #=> Time
    #
    def get_current_metric_data(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetCurrentMetricDataInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetCurrentMetricDataInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetCurrentMetricData
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::GetCurrentMetricData
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetCurrentMetricData,
        stubs: @stubs,
        params_class: Params::GetCurrentMetricDataOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_current_metric_data
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the real-time active user data from the specified Amazon Connect instance. </p>
    #
    # @param [Hash] params
    #   See {Types::GetCurrentUserDataInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [UserDataFilters] :filters
    #   <p>Filters up to 100 <code>Queues</code>, or up to 9 <code>ContactStates</code>. The user data is retrieved only for those users who are associated with
    #      the queues and have contacts that are in the specified <code>ContactState</code>. </p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    # @return [Types::GetCurrentUserDataOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_current_user_data(
    #     instance_id: 'InstanceId', # required
    #     filters: {
    #       queues: [
    #         'member'
    #       ],
    #       contact_filter: {
    #         contact_states: [
    #           'INCOMING' # accepts ["INCOMING", "PENDING", "CONNECTING", "CONNECTED", "CONNECTED_ONHOLD", "MISSED", "ERROR", "ENDED", "REJECTED"]
    #         ]
    #       }
    #     }, # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetCurrentUserDataOutput
    #   resp.data.next_token #=> String
    #   resp.data.user_data_list #=> Array<UserData>
    #   resp.data.user_data_list[0] #=> Types::UserData
    #   resp.data.user_data_list[0].user #=> Types::UserReference
    #   resp.data.user_data_list[0].user.id #=> String
    #   resp.data.user_data_list[0].user.arn #=> String
    #   resp.data.user_data_list[0].routing_profile #=> Types::RoutingProfileReference
    #   resp.data.user_data_list[0].routing_profile.id #=> String
    #   resp.data.user_data_list[0].routing_profile.arn #=> String
    #   resp.data.user_data_list[0].hierarchy_path #=> Types::HierarchyPathReference
    #   resp.data.user_data_list[0].hierarchy_path.level_one #=> Types::HierarchyGroupSummaryReference
    #   resp.data.user_data_list[0].hierarchy_path.level_one.id #=> String
    #   resp.data.user_data_list[0].hierarchy_path.level_one.arn #=> String
    #   resp.data.user_data_list[0].hierarchy_path.level_two #=> Types::HierarchyGroupSummaryReference
    #   resp.data.user_data_list[0].hierarchy_path.level_three #=> Types::HierarchyGroupSummaryReference
    #   resp.data.user_data_list[0].hierarchy_path.level_four #=> Types::HierarchyGroupSummaryReference
    #   resp.data.user_data_list[0].hierarchy_path.level_five #=> Types::HierarchyGroupSummaryReference
    #   resp.data.user_data_list[0].status #=> Types::AgentStatusReference
    #   resp.data.user_data_list[0].status.status_start_timestamp #=> Time
    #   resp.data.user_data_list[0].status.status_arn #=> String
    #   resp.data.user_data_list[0].available_slots_by_channel #=> Hash<String, Integer>
    #   resp.data.user_data_list[0].available_slots_by_channel['key'] #=> Integer
    #   resp.data.user_data_list[0].max_slots_by_channel #=> Hash<String, Integer>
    #   resp.data.user_data_list[0].active_slots_by_channel #=> Hash<String, Integer>
    #   resp.data.user_data_list[0].contacts #=> Array<AgentContactReference>
    #   resp.data.user_data_list[0].contacts[0] #=> Types::AgentContactReference
    #   resp.data.user_data_list[0].contacts[0].contact_id #=> String
    #   resp.data.user_data_list[0].contacts[0].channel #=> String, one of ["VOICE", "CHAT", "TASK"]
    #   resp.data.user_data_list[0].contacts[0].initiation_method #=> String, one of ["INBOUND", "OUTBOUND", "TRANSFER", "QUEUE_TRANSFER", "CALLBACK", "API"]
    #   resp.data.user_data_list[0].contacts[0].agent_contact_state #=> String, one of ["INCOMING", "PENDING", "CONNECTING", "CONNECTED", "CONNECTED_ONHOLD", "MISSED", "ERROR", "ENDED", "REJECTED"]
    #   resp.data.user_data_list[0].contacts[0].state_start_timestamp #=> Time
    #   resp.data.user_data_list[0].contacts[0].connected_to_agent_timestamp #=> Time
    #   resp.data.user_data_list[0].contacts[0].queue #=> Types::QueueReference
    #   resp.data.user_data_list[0].contacts[0].queue.id #=> String
    #   resp.data.user_data_list[0].contacts[0].queue.arn #=> String
    #
    def get_current_user_data(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetCurrentUserDataInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetCurrentUserDataInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetCurrentUserData
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::GetCurrentUserData
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetCurrentUserData,
        stubs: @stubs,
        params_class: Params::GetCurrentUserDataOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_current_user_data
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a token for federation.</p>
    #          <note>
    #             <p>This API doesn't support root users. If you try to invoke GetFederationToken with root
    #     credentials, an error message similar to the following one appears: </p>
    #             <p>
    #                <code>Provided identity: Principal: .... User: .... cannot be used for federation with
    #      Amazon Connect</code>
    #             </p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::GetFederationTokenInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @return [Types::GetFederationTokenOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_federation_token(
    #     instance_id: 'InstanceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetFederationTokenOutput
    #   resp.data.credentials #=> Types::Credentials
    #   resp.data.credentials.access_token #=> String
    #   resp.data.credentials.access_token_expiration #=> Time
    #   resp.data.credentials.refresh_token #=> String
    #   resp.data.credentials.refresh_token_expiration #=> Time
    #
    def get_federation_token(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetFederationTokenInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetFederationTokenInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetFederationToken
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::UserNotFoundException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException, Errors::DuplicateResourceException]),
        data_parser: Parsers::GetFederationToken
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetFederationToken,
        stubs: @stubs,
        params_class: Params::GetFederationTokenOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_federation_token
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets historical metric data from the specified Amazon Connect instance.</p>
    #
    #          <p>For a description of each historical metric, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/historical-metrics-definitions.html">Historical Metrics
    #     Definitions</a> in the <i>Amazon Connect Administrator Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetMetricDataInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [Time] :start_time
    #   <p>The timestamp, in UNIX Epoch time format, at which to start the reporting interval for the
    #      retrieval of historical metrics data. The time must be specified using a multiple of 5 minutes,
    #      such as 10:05, 10:10, 10:15.</p>
    #            <p>The start time cannot be earlier than 24 hours before the time of the request. Historical
    #      metrics are available only for 24 hours.</p>
    #
    # @option params [Time] :end_time
    #   <p>The timestamp, in UNIX Epoch time format, at which to end the reporting interval for the
    #      retrieval of historical metrics data. The time must be specified using an interval of 5 minutes,
    #      such as 11:00, 11:05, 11:10, and must be later than the start time timestamp.</p>
    #            <p>The time range between the start and end time must be less than 24 hours.</p>
    #
    # @option params [Filters] :filters
    #   <p>The queues, up to 100, or channels, to use to filter the metrics returned. Metric data is
    #      retrieved only for the resources associated with the queues or channels included in the filter.
    #      You can include both queue IDs and queue ARNs in the same request. VOICE, CHAT, and TASK channels are supported.</p>
    #            <note>
    #               <p>To filter by <code>Queues</code>, enter the queue
    #       ID/ARN, not the name of the queue.</p>
    #            </note>
    #
    # @option params [Array<String>] :groupings
    #   <p>The grouping applied to the metrics returned. For example, when results are grouped by
    #      queue, the metrics returned are grouped by queue. The values returned apply to the metrics for
    #      each queue rather than aggregated for all queues.</p>
    #
    #            <p>If no grouping is specified, a summary of metrics for all queues is returned.</p>
    #
    # @option params [Array<HistoricalMetric>] :historical_metrics
    #   <p>The metrics to retrieve. Specify the name, unit, and statistic for each metric. The
    #      following historical metrics are available. For a description of each metric, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/historical-metrics-definitions.html">Historical Metrics Definitions</a> in the <i>Amazon Connect Administrator
    #      Guide</i>.</p>
    #            <note>
    #               <p>This API does not support a contacts
    #       incoming metric (there's no CONTACTS_INCOMING metric missing from the documented list). </p>
    #            </note>
    #
    #            <dl>
    #               <dt>ABANDON_TIME</dt>
    #               <dd>
    #                  <p>Unit: SECONDS</p>
    #                  <p>Statistic: AVG</p>
    #               </dd>
    #               <dt>AFTER_CONTACT_WORK_TIME</dt>
    #               <dd>
    #                  <p>Unit: SECONDS</p>
    #                  <p>Statistic: AVG</p>
    #               </dd>
    #               <dt>API_CONTACTS_HANDLED</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #               </dd>
    #               <dt>CALLBACK_CONTACTS_HANDLED</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #               </dd>
    #               <dt>CONTACTS_ABANDONED</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #               </dd>
    #               <dt>CONTACTS_AGENT_HUNG_UP_FIRST</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #               </dd>
    #               <dt>CONTACTS_CONSULTED</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #               </dd>
    #               <dt>CONTACTS_HANDLED</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #               </dd>
    #               <dt>CONTACTS_HANDLED_INCOMING</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #               </dd>
    #               <dt>CONTACTS_HANDLED_OUTBOUND</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #               </dd>
    #               <dt>CONTACTS_HOLD_ABANDONS</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #               </dd>
    #               <dt>CONTACTS_MISSED</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #               </dd>
    #               <dt>CONTACTS_QUEUED</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #               </dd>
    #               <dt>CONTACTS_TRANSFERRED_IN</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #               </dd>
    #               <dt>CONTACTS_TRANSFERRED_IN_FROM_QUEUE</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #               </dd>
    #               <dt>CONTACTS_TRANSFERRED_OUT</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #               </dd>
    #               <dt>CONTACTS_TRANSFERRED_OUT_FROM_QUEUE</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #               </dd>
    #               <dt>HANDLE_TIME</dt>
    #               <dd>
    #                  <p>Unit: SECONDS</p>
    #                  <p>Statistic: AVG</p>
    #               </dd>
    #               <dt>HOLD_TIME</dt>
    #               <dd>
    #                  <p>Unit: SECONDS</p>
    #                  <p>Statistic: AVG</p>
    #               </dd>
    #               <dt>INTERACTION_AND_HOLD_TIME</dt>
    #               <dd>
    #                  <p>Unit: SECONDS</p>
    #                  <p>Statistic: AVG</p>
    #               </dd>
    #               <dt>INTERACTION_TIME</dt>
    #               <dd>
    #                  <p>Unit: SECONDS</p>
    #                  <p>Statistic: AVG</p>
    #               </dd>
    #               <dt>OCCUPANCY</dt>
    #               <dd>
    #                  <p>Unit: PERCENT</p>
    #                  <p>Statistic: AVG</p>
    #               </dd>
    #               <dt>QUEUE_ANSWER_TIME</dt>
    #               <dd>
    #                  <p>Unit: SECONDS</p>
    #                  <p>Statistic: AVG</p>
    #               </dd>
    #               <dt>QUEUED_TIME</dt>
    #               <dd>
    #                  <p>Unit: SECONDS</p>
    #                  <p>Statistic: MAX</p>
    #               </dd>
    #               <dt>SERVICE_LEVEL</dt>
    #               <dd>
    #                  <p>You can include up to 20 SERVICE_LEVEL metrics in a request.</p>
    #                  <p>Unit: PERCENT</p>
    #                  <p>Statistic: AVG</p>
    #                  <p>Threshold: For <code>ThresholdValue</code>, enter any whole number from 1 to 604800
    #         (inclusive), in seconds. For <code>Comparison</code>, you must enter <code>LT</code> (for
    #         "Less than"). </p>
    #               </dd>
    #            </dl>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    # @return [Types::GetMetricDataOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_metric_data(
    #     instance_id: 'InstanceId', # required
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     filters: {
    #       queues: [
    #         'member'
    #       ],
    #       channels: [
    #         'VOICE' # accepts ["VOICE", "CHAT", "TASK"]
    #       ]
    #     }, # required
    #     groupings: [
    #       'QUEUE' # accepts ["QUEUE", "CHANNEL"]
    #     ],
    #     historical_metrics: [
    #       {
    #         name: 'CONTACTS_QUEUED', # accepts ["CONTACTS_QUEUED", "CONTACTS_HANDLED", "CONTACTS_ABANDONED", "CONTACTS_CONSULTED", "CONTACTS_AGENT_HUNG_UP_FIRST", "CONTACTS_HANDLED_INCOMING", "CONTACTS_HANDLED_OUTBOUND", "CONTACTS_HOLD_ABANDONS", "CONTACTS_TRANSFERRED_IN", "CONTACTS_TRANSFERRED_OUT", "CONTACTS_TRANSFERRED_IN_FROM_QUEUE", "CONTACTS_TRANSFERRED_OUT_FROM_QUEUE", "CONTACTS_MISSED", "CALLBACK_CONTACTS_HANDLED", "API_CONTACTS_HANDLED", "OCCUPANCY", "HANDLE_TIME", "AFTER_CONTACT_WORK_TIME", "QUEUED_TIME", "ABANDON_TIME", "QUEUE_ANSWER_TIME", "HOLD_TIME", "INTERACTION_TIME", "INTERACTION_AND_HOLD_TIME", "SERVICE_LEVEL"]
    #         threshold: {
    #           comparison: 'LT', # accepts ["LT"]
    #           threshold_value: 1.0
    #         },
    #         statistic: 'SUM', # accepts ["SUM", "MAX", "AVG"]
    #         unit: 'SECONDS' # accepts ["SECONDS", "COUNT", "PERCENT"]
    #       }
    #     ], # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetMetricDataOutput
    #   resp.data.next_token #=> String
    #   resp.data.metric_results #=> Array<HistoricalMetricResult>
    #   resp.data.metric_results[0] #=> Types::HistoricalMetricResult
    #   resp.data.metric_results[0].dimensions #=> Types::Dimensions
    #   resp.data.metric_results[0].dimensions.queue #=> Types::QueueReference
    #   resp.data.metric_results[0].dimensions.queue.id #=> String
    #   resp.data.metric_results[0].dimensions.queue.arn #=> String
    #   resp.data.metric_results[0].dimensions.channel #=> String, one of ["VOICE", "CHAT", "TASK"]
    #   resp.data.metric_results[0].collections #=> Array<HistoricalMetricData>
    #   resp.data.metric_results[0].collections[0] #=> Types::HistoricalMetricData
    #   resp.data.metric_results[0].collections[0].metric #=> Types::HistoricalMetric
    #   resp.data.metric_results[0].collections[0].metric.name #=> String, one of ["CONTACTS_QUEUED", "CONTACTS_HANDLED", "CONTACTS_ABANDONED", "CONTACTS_CONSULTED", "CONTACTS_AGENT_HUNG_UP_FIRST", "CONTACTS_HANDLED_INCOMING", "CONTACTS_HANDLED_OUTBOUND", "CONTACTS_HOLD_ABANDONS", "CONTACTS_TRANSFERRED_IN", "CONTACTS_TRANSFERRED_OUT", "CONTACTS_TRANSFERRED_IN_FROM_QUEUE", "CONTACTS_TRANSFERRED_OUT_FROM_QUEUE", "CONTACTS_MISSED", "CALLBACK_CONTACTS_HANDLED", "API_CONTACTS_HANDLED", "OCCUPANCY", "HANDLE_TIME", "AFTER_CONTACT_WORK_TIME", "QUEUED_TIME", "ABANDON_TIME", "QUEUE_ANSWER_TIME", "HOLD_TIME", "INTERACTION_TIME", "INTERACTION_AND_HOLD_TIME", "SERVICE_LEVEL"]
    #   resp.data.metric_results[0].collections[0].metric.threshold #=> Types::Threshold
    #   resp.data.metric_results[0].collections[0].metric.threshold.comparison #=> String, one of ["LT"]
    #   resp.data.metric_results[0].collections[0].metric.threshold.threshold_value #=> Float
    #   resp.data.metric_results[0].collections[0].metric.statistic #=> String, one of ["SUM", "MAX", "AVG"]
    #   resp.data.metric_results[0].collections[0].metric.unit #=> String, one of ["SECONDS", "COUNT", "PERCENT"]
    #   resp.data.metric_results[0].collections[0].value #=> Float
    #
    def get_metric_data(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetMetricDataInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetMetricDataInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetMetricData
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::GetMetricData
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetMetricData,
        stubs: @stubs,
        params_class: Params::GetMetricDataOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_metric_data
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets details about a specific task template in the specified Amazon Connect instance.</p>
    #
    # @param [Hash] params
    #   See {Types::GetTaskTemplateInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :task_template_id
    #   <p>A unique identifier for the task template.</p>
    #
    # @option params [String] :snapshot_version
    #   <p>The system generated version of a task template that is associated with a task, when the
    #      task is created.</p>
    #
    # @return [Types::GetTaskTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_task_template(
    #     instance_id: 'InstanceId', # required
    #     task_template_id: 'TaskTemplateId', # required
    #     snapshot_version: 'SnapshotVersion'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetTaskTemplateOutput
    #   resp.data.instance_id #=> String
    #   resp.data.id #=> String
    #   resp.data.arn #=> String
    #   resp.data.name #=> String
    #   resp.data.description #=> String
    #   resp.data.contact_flow_id #=> String
    #   resp.data.constraints #=> Types::TaskTemplateConstraints
    #   resp.data.constraints.required_fields #=> Array<RequiredFieldInfo>
    #   resp.data.constraints.required_fields[0] #=> Types::RequiredFieldInfo
    #   resp.data.constraints.required_fields[0].id #=> Types::TaskTemplateFieldIdentifier
    #   resp.data.constraints.required_fields[0].id.name #=> String
    #   resp.data.constraints.read_only_fields #=> Array<ReadOnlyFieldInfo>
    #   resp.data.constraints.read_only_fields[0] #=> Types::ReadOnlyFieldInfo
    #   resp.data.constraints.read_only_fields[0].id #=> Types::TaskTemplateFieldIdentifier
    #   resp.data.constraints.invisible_fields #=> Array<InvisibleFieldInfo>
    #   resp.data.constraints.invisible_fields[0] #=> Types::InvisibleFieldInfo
    #   resp.data.constraints.invisible_fields[0].id #=> Types::TaskTemplateFieldIdentifier
    #   resp.data.defaults #=> Types::TaskTemplateDefaults
    #   resp.data.defaults.default_field_values #=> Array<TaskTemplateDefaultFieldValue>
    #   resp.data.defaults.default_field_values[0] #=> Types::TaskTemplateDefaultFieldValue
    #   resp.data.defaults.default_field_values[0].id #=> Types::TaskTemplateFieldIdentifier
    #   resp.data.defaults.default_field_values[0].default_value #=> String
    #   resp.data.fields #=> Array<TaskTemplateField>
    #   resp.data.fields[0] #=> Types::TaskTemplateField
    #   resp.data.fields[0].id #=> Types::TaskTemplateFieldIdentifier
    #   resp.data.fields[0].description #=> String
    #   resp.data.fields[0].type #=> String, one of ["NAME", "DESCRIPTION", "SCHEDULED_TIME", "QUICK_CONNECT", "URL", "NUMBER", "TEXT", "TEXT_AREA", "DATE_TIME", "BOOLEAN", "SINGLE_SELECT", "EMAIL"]
    #   resp.data.fields[0].single_select_options #=> Array<String>
    #   resp.data.fields[0].single_select_options[0] #=> String
    #   resp.data.status #=> String, one of ["ACTIVE", "INACTIVE"]
    #   resp.data.last_modified_time #=> Time
    #   resp.data.created_time #=> Time
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def get_task_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetTaskTemplateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetTaskTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetTaskTemplate
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::GetTaskTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetTaskTemplate,
        stubs: @stubs,
        params_class: Params::GetTaskTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_task_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Lists agent statuses.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAgentStatusesInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    # @option params [Array<String>] :agent_status_types
    #   <p>Available agent status types.</p>
    #
    # @return [Types::ListAgentStatusesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_agent_statuses(
    #     instance_id: 'InstanceId', # required
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     agent_status_types: [
    #       'ROUTABLE' # accepts ["ROUTABLE", "CUSTOM", "OFFLINE"]
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAgentStatusesOutput
    #   resp.data.next_token #=> String
    #   resp.data.agent_status_summary_list #=> Array<AgentStatusSummary>
    #   resp.data.agent_status_summary_list[0] #=> Types::AgentStatusSummary
    #   resp.data.agent_status_summary_list[0].id #=> String
    #   resp.data.agent_status_summary_list[0].arn #=> String
    #   resp.data.agent_status_summary_list[0].name #=> String
    #   resp.data.agent_status_summary_list[0].type #=> String, one of ["ROUTABLE", "CUSTOM", "OFFLINE"]
    #
    def list_agent_statuses(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAgentStatusesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAgentStatusesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAgentStatuses
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListAgentStatuses
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAgentStatuses,
        stubs: @stubs,
        params_class: Params::ListAgentStatusesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_agent_statuses
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Returns a paginated list of all approved origins associated with the instance.</p>
    #
    # @param [Hash] params
    #   See {Types::ListApprovedOriginsInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    # @return [Types::ListApprovedOriginsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_approved_origins(
    #     instance_id: 'InstanceId', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListApprovedOriginsOutput
    #   resp.data.origins #=> Array<String>
    #   resp.data.origins[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_approved_origins(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListApprovedOriginsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListApprovedOriginsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListApprovedOrigins
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListApprovedOrigins
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListApprovedOrigins,
        stubs: @stubs,
        params_class: Params::ListApprovedOriginsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_approved_origins
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>For the specified version of Amazon Lex, returns a paginated list of all the Amazon Lex bots currently
    #    associated with the instance. </p>
    #
    # @param [Hash] params
    #   See {Types::ListBotsInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    # @option params [String] :lex_version
    #   <p>The version of Amazon Lex or Amazon Lex V2.</p>
    #
    # @return [Types::ListBotsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_bots(
    #     instance_id: 'InstanceId', # required
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     lex_version: 'V1' # required - accepts ["V1", "V2"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListBotsOutput
    #   resp.data.lex_bots #=> Array<LexBotConfig>
    #   resp.data.lex_bots[0] #=> Types::LexBotConfig
    #   resp.data.lex_bots[0].lex_bot #=> Types::LexBot
    #   resp.data.lex_bots[0].lex_bot.name #=> String
    #   resp.data.lex_bots[0].lex_bot.lex_region #=> String
    #   resp.data.lex_bots[0].lex_v2_bot #=> Types::LexV2Bot
    #   resp.data.lex_bots[0].lex_v2_bot.alias_arn #=> String
    #   resp.data.next_token #=> String
    #
    def list_bots(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListBotsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListBotsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListBots
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListBots
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListBots,
        stubs: @stubs,
        params_class: Params::ListBotsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_bots
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides information about the contact flow modules for the specified Amazon Connect instance.</p>
    #
    # @param [Hash] params
    #   See {Types::ListContactFlowModulesInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    # @option params [String] :contact_flow_module_state
    #   <p>The state of the contact flow module.</p>
    #
    # @return [Types::ListContactFlowModulesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_contact_flow_modules(
    #     instance_id: 'InstanceId', # required
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     contact_flow_module_state: 'ACTIVE' # accepts ["ACTIVE", "ARCHIVED"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListContactFlowModulesOutput
    #   resp.data.contact_flow_modules_summary_list #=> Array<ContactFlowModuleSummary>
    #   resp.data.contact_flow_modules_summary_list[0] #=> Types::ContactFlowModuleSummary
    #   resp.data.contact_flow_modules_summary_list[0].id #=> String
    #   resp.data.contact_flow_modules_summary_list[0].arn #=> String
    #   resp.data.contact_flow_modules_summary_list[0].name #=> String
    #   resp.data.contact_flow_modules_summary_list[0].state #=> String, one of ["ACTIVE", "ARCHIVED"]
    #   resp.data.next_token #=> String
    #
    def list_contact_flow_modules(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListContactFlowModulesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListContactFlowModulesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListContactFlowModules
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListContactFlowModules
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListContactFlowModules,
        stubs: @stubs,
        params_class: Params::ListContactFlowModulesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_contact_flow_modules
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides information about the contact flows for the specified Amazon Connect instance.</p>
    #          <p>You can also create and update contact flows using the <a href="https://docs.aws.amazon.com/connect/latest/adminguide/flow-language.html">Amazon Connect
    #    Flow language</a>.</p>
    #          <p>For more information about contact flows, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/concepts-contact-flows.html">Contact Flows</a> in the
    #     <i>Amazon Connect Administrator Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListContactFlowsInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [Array<String>] :contact_flow_types
    #   <p>The type of contact flow.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    # @return [Types::ListContactFlowsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_contact_flows(
    #     instance_id: 'InstanceId', # required
    #     contact_flow_types: [
    #       'CONTACT_FLOW' # accepts ["CONTACT_FLOW", "CUSTOMER_QUEUE", "CUSTOMER_HOLD", "CUSTOMER_WHISPER", "AGENT_HOLD", "AGENT_WHISPER", "OUTBOUND_WHISPER", "AGENT_TRANSFER", "QUEUE_TRANSFER"]
    #     ],
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListContactFlowsOutput
    #   resp.data.contact_flow_summary_list #=> Array<ContactFlowSummary>
    #   resp.data.contact_flow_summary_list[0] #=> Types::ContactFlowSummary
    #   resp.data.contact_flow_summary_list[0].id #=> String
    #   resp.data.contact_flow_summary_list[0].arn #=> String
    #   resp.data.contact_flow_summary_list[0].name #=> String
    #   resp.data.contact_flow_summary_list[0].contact_flow_type #=> String, one of ["CONTACT_FLOW", "CUSTOMER_QUEUE", "CUSTOMER_HOLD", "CUSTOMER_WHISPER", "AGENT_HOLD", "AGENT_WHISPER", "OUTBOUND_WHISPER", "AGENT_TRANSFER", "QUEUE_TRANSFER"]
    #   resp.data.contact_flow_summary_list[0].contact_flow_state #=> String, one of ["ACTIVE", "ARCHIVED"]
    #   resp.data.next_token #=> String
    #
    def list_contact_flows(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListContactFlowsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListContactFlowsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListContactFlows
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListContactFlows
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListContactFlows,
        stubs: @stubs,
        params_class: Params::ListContactFlowsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_contact_flows
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>For the specified <code>referenceTypes</code>, returns a list of references associated with
    #    the contact. </p>
    #
    # @param [Hash] params
    #   See {Types::ListContactReferencesInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :contact_id
    #   <p>The identifier of the initial contact.</p>
    #
    # @option params [Array<String>] :reference_types
    #   <p>The type of reference.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #            <important>
    #               <p>This is not expected to be set, because the value returned in the previous response is
    #       always null.</p>
    #            </important>
    #
    # @return [Types::ListContactReferencesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_contact_references(
    #     instance_id: 'InstanceId', # required
    #     contact_id: 'ContactId', # required
    #     reference_types: [
    #       'URL' # accepts ["URL", "ATTACHMENT", "NUMBER", "STRING", "DATE", "EMAIL"]
    #     ], # required
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListContactReferencesOutput
    #   resp.data.reference_summary_list #=> Array<ReferenceSummary>
    #   resp.data.reference_summary_list[0] #=> Types::ReferenceSummary, one of [Url, Attachment, String, Number, Date, Email]
    #   resp.data.reference_summary_list[0].url #=> Types::UrlReference
    #   resp.data.reference_summary_list[0].url.name #=> String
    #   resp.data.reference_summary_list[0].url.value #=> String
    #   resp.data.reference_summary_list[0].attachment #=> Types::AttachmentReference
    #   resp.data.reference_summary_list[0].attachment.name #=> String
    #   resp.data.reference_summary_list[0].attachment.value #=> String
    #   resp.data.reference_summary_list[0].attachment.status #=> String, one of ["APPROVED", "REJECTED"]
    #   resp.data.reference_summary_list[0].string #=> Types::StringReference
    #   resp.data.reference_summary_list[0].string.name #=> String
    #   resp.data.reference_summary_list[0].string.value #=> String
    #   resp.data.reference_summary_list[0].number #=> Types::NumberReference
    #   resp.data.reference_summary_list[0].number.name #=> String
    #   resp.data.reference_summary_list[0].number.value #=> String
    #   resp.data.reference_summary_list[0].date #=> Types::DateReference
    #   resp.data.reference_summary_list[0].date.name #=> String
    #   resp.data.reference_summary_list[0].date.value #=> String
    #   resp.data.reference_summary_list[0].email #=> Types::EmailReference
    #   resp.data.reference_summary_list[0].email.name #=> String
    #   resp.data.reference_summary_list[0].email.value #=> String
    #   resp.data.next_token #=> String
    #
    def list_contact_references(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListContactReferencesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListContactReferencesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListContactReferences
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListContactReferences
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListContactReferences,
        stubs: @stubs,
        params_class: Params::ListContactReferencesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_contact_references
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the default vocabularies for the specified Amazon Connect instance.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDefaultVocabulariesInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :language_code
    #   <p>The language code of the vocabulary entries. For a list of languages and their corresponding language codes, see
    #   <a href="https://docs.aws.amazon.com/transcribe/latest/dg/transcribe-whatis.html">What is Amazon Transcribe?</a>
    #            </p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    # @return [Types::ListDefaultVocabulariesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_default_vocabularies(
    #     instance_id: 'InstanceId', # required
    #     language_code: 'ar-AE', # accepts ["ar-AE", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fr-CA", "fr-FR", "hi-IN", "it-IT", "ja-JP", "ko-KR", "pt-BR", "pt-PT", "zh-CN"]
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDefaultVocabulariesOutput
    #   resp.data.default_vocabulary_list #=> Array<DefaultVocabulary>
    #   resp.data.default_vocabulary_list[0] #=> Types::DefaultVocabulary
    #   resp.data.default_vocabulary_list[0].instance_id #=> String
    #   resp.data.default_vocabulary_list[0].language_code #=> String, one of ["ar-AE", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fr-CA", "fr-FR", "hi-IN", "it-IT", "ja-JP", "ko-KR", "pt-BR", "pt-PT", "zh-CN"]
    #   resp.data.default_vocabulary_list[0].vocabulary_id #=> String
    #   resp.data.default_vocabulary_list[0].vocabulary_name #=> String
    #   resp.data.next_token #=> String
    #
    def list_default_vocabularies(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDefaultVocabulariesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDefaultVocabulariesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDefaultVocabularies
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListDefaultVocabularies
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDefaultVocabularies,
        stubs: @stubs,
        params_class: Params::ListDefaultVocabulariesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_default_vocabularies
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides information about the hours of operation for the specified Amazon Connect instance.</p>
    #          <p>For more information about hours of operation, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/set-hours-operation.html">Set the Hours of Operation for a
    #     Queue</a> in the <i>Amazon Connect Administrator Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListHoursOfOperationsInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    # @return [Types::ListHoursOfOperationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_hours_of_operations(
    #     instance_id: 'InstanceId', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListHoursOfOperationsOutput
    #   resp.data.hours_of_operation_summary_list #=> Array<HoursOfOperationSummary>
    #   resp.data.hours_of_operation_summary_list[0] #=> Types::HoursOfOperationSummary
    #   resp.data.hours_of_operation_summary_list[0].id #=> String
    #   resp.data.hours_of_operation_summary_list[0].arn #=> String
    #   resp.data.hours_of_operation_summary_list[0].name #=> String
    #   resp.data.next_token #=> String
    #
    def list_hours_of_operations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListHoursOfOperationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListHoursOfOperationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListHoursOfOperations
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListHoursOfOperations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListHoursOfOperations,
        stubs: @stubs,
        params_class: Params::ListHoursOfOperationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_hours_of_operations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Returns a paginated list of all attribute types for the given instance.</p>
    #
    # @param [Hash] params
    #   See {Types::ListInstanceAttributesInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    # @return [Types::ListInstanceAttributesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_instance_attributes(
    #     instance_id: 'InstanceId', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListInstanceAttributesOutput
    #   resp.data.attributes #=> Array<Attribute>
    #   resp.data.attributes[0] #=> Types::Attribute
    #   resp.data.attributes[0].attribute_type #=> String, one of ["INBOUND_CALLS", "OUTBOUND_CALLS", "CONTACTFLOW_LOGS", "CONTACT_LENS", "AUTO_RESOLVE_BEST_VOICES", "USE_CUSTOM_TTS_VOICES", "EARLY_MEDIA", "MULTI_PARTY_CONFERENCE"]
    #   resp.data.attributes[0].value #=> String
    #   resp.data.next_token #=> String
    #
    def list_instance_attributes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListInstanceAttributesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListInstanceAttributesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListInstanceAttributes
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListInstanceAttributes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListInstanceAttributes,
        stubs: @stubs,
        params_class: Params::ListInstanceAttributesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_instance_attributes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #
    #          <p>Returns a paginated list of storage configs for the identified instance and resource
    #    type.</p>
    #
    # @param [Hash] params
    #   See {Types::ListInstanceStorageConfigsInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :resource_type
    #   <p>A valid resource type.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    # @return [Types::ListInstanceStorageConfigsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_instance_storage_configs(
    #     instance_id: 'InstanceId', # required
    #     resource_type: 'CHAT_TRANSCRIPTS', # required - accepts ["CHAT_TRANSCRIPTS", "CALL_RECORDINGS", "SCHEDULED_REPORTS", "MEDIA_STREAMS", "CONTACT_TRACE_RECORDS", "AGENT_EVENTS", "REAL_TIME_CONTACT_ANALYSIS_SEGMENTS"]
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListInstanceStorageConfigsOutput
    #   resp.data.storage_configs #=> Array<InstanceStorageConfig>
    #   resp.data.storage_configs[0] #=> Types::InstanceStorageConfig
    #   resp.data.storage_configs[0].association_id #=> String
    #   resp.data.storage_configs[0].storage_type #=> String, one of ["S3", "KINESIS_VIDEO_STREAM", "KINESIS_STREAM", "KINESIS_FIREHOSE"]
    #   resp.data.storage_configs[0].s3_config #=> Types::S3Config
    #   resp.data.storage_configs[0].s3_config.bucket_name #=> String
    #   resp.data.storage_configs[0].s3_config.bucket_prefix #=> String
    #   resp.data.storage_configs[0].s3_config.encryption_config #=> Types::EncryptionConfig
    #   resp.data.storage_configs[0].s3_config.encryption_config.encryption_type #=> String, one of ["KMS"]
    #   resp.data.storage_configs[0].s3_config.encryption_config.key_id #=> String
    #   resp.data.storage_configs[0].kinesis_video_stream_config #=> Types::KinesisVideoStreamConfig
    #   resp.data.storage_configs[0].kinesis_video_stream_config.prefix #=> String
    #   resp.data.storage_configs[0].kinesis_video_stream_config.retention_period_hours #=> Integer
    #   resp.data.storage_configs[0].kinesis_video_stream_config.encryption_config #=> Types::EncryptionConfig
    #   resp.data.storage_configs[0].kinesis_stream_config #=> Types::KinesisStreamConfig
    #   resp.data.storage_configs[0].kinesis_stream_config.stream_arn #=> String
    #   resp.data.storage_configs[0].kinesis_firehose_config #=> Types::KinesisFirehoseConfig
    #   resp.data.storage_configs[0].kinesis_firehose_config.firehose_arn #=> String
    #   resp.data.next_token #=> String
    #
    def list_instance_storage_configs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListInstanceStorageConfigsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListInstanceStorageConfigsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListInstanceStorageConfigs
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListInstanceStorageConfigs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListInstanceStorageConfigs,
        stubs: @stubs,
        params_class: Params::ListInstanceStorageConfigsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_instance_storage_configs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Return a list of instances which are in active state, creation-in-progress state, and failed
    #    state. Instances that aren't successfully created (they are in a failed state) are returned only
    #    for 24 hours after the CreateInstance API was invoked.</p>
    #
    # @param [Hash] params
    #   See {Types::ListInstancesInput}.
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    # @return [Types::ListInstancesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_instances(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListInstancesOutput
    #   resp.data.instance_summary_list #=> Array<InstanceSummary>
    #   resp.data.instance_summary_list[0] #=> Types::InstanceSummary
    #   resp.data.instance_summary_list[0].id #=> String
    #   resp.data.instance_summary_list[0].arn #=> String
    #   resp.data.instance_summary_list[0].identity_management_type #=> String, one of ["SAML", "CONNECT_MANAGED", "EXISTING_DIRECTORY"]
    #   resp.data.instance_summary_list[0].instance_alias #=> String
    #   resp.data.instance_summary_list[0].created_time #=> Time
    #   resp.data.instance_summary_list[0].service_role #=> String
    #   resp.data.instance_summary_list[0].instance_status #=> String, one of ["CREATION_IN_PROGRESS", "ACTIVE", "CREATION_FAILED"]
    #   resp.data.instance_summary_list[0].inbound_calls_enabled #=> Boolean
    #   resp.data.instance_summary_list[0].outbound_calls_enabled #=> Boolean
    #   resp.data.next_token #=> String
    #
    def list_instances(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListInstancesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListInstancesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListInstances
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListInstances
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListInstances,
        stubs: @stubs,
        params_class: Params::ListInstancesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_instances
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides summary information about the Amazon Web Services resource associations for the
    #    specified Amazon Connect instance.</p>
    #
    # @param [Hash] params
    #   See {Types::ListIntegrationAssociationsInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :integration_type
    #   <p>The integration type.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    # @return [Types::ListIntegrationAssociationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_integration_associations(
    #     instance_id: 'InstanceId', # required
    #     integration_type: 'EVENT', # accepts ["EVENT", "VOICE_ID", "PINPOINT_APP", "WISDOM_ASSISTANT", "WISDOM_KNOWLEDGE_BASE"]
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListIntegrationAssociationsOutput
    #   resp.data.integration_association_summary_list #=> Array<IntegrationAssociationSummary>
    #   resp.data.integration_association_summary_list[0] #=> Types::IntegrationAssociationSummary
    #   resp.data.integration_association_summary_list[0].integration_association_id #=> String
    #   resp.data.integration_association_summary_list[0].integration_association_arn #=> String
    #   resp.data.integration_association_summary_list[0].instance_id #=> String
    #   resp.data.integration_association_summary_list[0].integration_type #=> String, one of ["EVENT", "VOICE_ID", "PINPOINT_APP", "WISDOM_ASSISTANT", "WISDOM_KNOWLEDGE_BASE"]
    #   resp.data.integration_association_summary_list[0].integration_arn #=> String
    #   resp.data.integration_association_summary_list[0].source_application_url #=> String
    #   resp.data.integration_association_summary_list[0].source_application_name #=> String
    #   resp.data.integration_association_summary_list[0].source_type #=> String, one of ["SALESFORCE", "ZENDESK"]
    #   resp.data.next_token #=> String
    #
    def list_integration_associations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListIntegrationAssociationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListIntegrationAssociationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListIntegrationAssociations
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListIntegrationAssociations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListIntegrationAssociations,
        stubs: @stubs,
        params_class: Params::ListIntegrationAssociationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_integration_associations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Returns a paginated list of all Lambda functions that display in the dropdown options in the
    #    relevant contact flow blocks.</p>
    #
    # @param [Hash] params
    #   See {Types::ListLambdaFunctionsInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    # @return [Types::ListLambdaFunctionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_lambda_functions(
    #     instance_id: 'InstanceId', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListLambdaFunctionsOutput
    #   resp.data.lambda_functions #=> Array<String>
    #   resp.data.lambda_functions[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_lambda_functions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListLambdaFunctionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListLambdaFunctionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListLambdaFunctions
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListLambdaFunctions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListLambdaFunctions,
        stubs: @stubs,
        params_class: Params::ListLambdaFunctionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_lambda_functions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Returns a paginated list of all the Amazon Lex bots currently associated with the
    #    instance.</p>
    #
    # @param [Hash] params
    #   See {Types::ListLexBotsInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page. If no value is specified, the default is 10.
    #      </p>
    #
    # @return [Types::ListLexBotsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_lex_bots(
    #     instance_id: 'InstanceId', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListLexBotsOutput
    #   resp.data.lex_bots #=> Array<LexBot>
    #   resp.data.lex_bots[0] #=> Types::LexBot
    #   resp.data.lex_bots[0].name #=> String
    #   resp.data.lex_bots[0].lex_region #=> String
    #   resp.data.next_token #=> String
    #
    def list_lex_bots(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListLexBotsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListLexBotsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListLexBots
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListLexBots
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListLexBots,
        stubs: @stubs,
        params_class: Params::ListLexBotsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_lex_bots
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides information about the phone numbers for the specified Amazon Connect instance. </p>
    #          <p>For more information about phone numbers, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/contact-center-phone-number.html">Set Up Phone Numbers for Your
    #     Contact Center</a> in the <i>Amazon Connect Administrator Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListPhoneNumbersInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [Array<String>] :phone_number_types
    #   <p>The type of phone number.</p>
    #
    # @option params [Array<String>] :phone_number_country_codes
    #   <p>The ISO country code.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    # @return [Types::ListPhoneNumbersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_phone_numbers(
    #     instance_id: 'InstanceId', # required
    #     phone_number_types: [
    #       'TOLL_FREE' # accepts ["TOLL_FREE", "DID"]
    #     ],
    #     phone_number_country_codes: [
    #       'AF' # accepts ["AF", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BA", "BW", "BR", "IO", "VG", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CK", "CR", "HR", "CU", "CW", "CY", "CZ", "CD", "DK", "DJ", "DM", "DO", "TL", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "PF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "CI", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "AN", "NC", "NZ", "NI", "NE", "NG", "NU", "KP", "MP", "NO", "OM", "PK", "PW", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "CG", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "KR", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "VI", "UG", "UA", "AE", "GB", "US", "UY", "UZ", "VU", "VA", "VE", "VN", "WF", "EH", "YE", "ZM", "ZW"]
    #     ],
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPhoneNumbersOutput
    #   resp.data.phone_number_summary_list #=> Array<PhoneNumberSummary>
    #   resp.data.phone_number_summary_list[0] #=> Types::PhoneNumberSummary
    #   resp.data.phone_number_summary_list[0].id #=> String
    #   resp.data.phone_number_summary_list[0].arn #=> String
    #   resp.data.phone_number_summary_list[0].phone_number #=> String
    #   resp.data.phone_number_summary_list[0].phone_number_type #=> String, one of ["TOLL_FREE", "DID"]
    #   resp.data.phone_number_summary_list[0].phone_number_country_code #=> String, one of ["AF", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BA", "BW", "BR", "IO", "VG", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CK", "CR", "HR", "CU", "CW", "CY", "CZ", "CD", "DK", "DJ", "DM", "DO", "TL", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "PF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "CI", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "AN", "NC", "NZ", "NI", "NE", "NG", "NU", "KP", "MP", "NO", "OM", "PK", "PW", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "CG", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "KR", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "VI", "UG", "UA", "AE", "GB", "US", "UY", "UZ", "VU", "VA", "VE", "VN", "WF", "EH", "YE", "ZM", "ZW"]
    #   resp.data.next_token #=> String
    #
    def list_phone_numbers(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPhoneNumbersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPhoneNumbersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPhoneNumbers
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListPhoneNumbers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPhoneNumbers,
        stubs: @stubs,
        params_class: Params::ListPhoneNumbersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_phone_numbers
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists phone numbers claimed to your Amazon Connect instance. </p>
    #          <p>For more information about phone numbers, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/contact-center-phone-number.html">Set Up Phone Numbers for Your
    #     Contact Center</a> in the <i>Amazon Connect Administrator Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListPhoneNumbersV2Input}.
    #
    # @option params [String] :target_arn
    #   <p>The Amazon Resource Name (ARN) for Amazon Connect instances that phone numbers are claimed to. If <code>TargetArn</code> input is not provided, this API lists numbers claimed
    #      to all the Amazon Connect instances belonging to your account.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    # @option params [Array<String>] :phone_number_country_codes
    #   <p>The ISO country code.</p>
    #
    # @option params [Array<String>] :phone_number_types
    #   <p>The type of phone number.</p>
    #
    # @option params [String] :phone_number_prefix
    #   <p>The prefix of the phone number. If provided, it must contain <code>+</code> as part of the country code.</p>
    #
    # @return [Types::ListPhoneNumbersV2Output]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_phone_numbers_v2(
    #     target_arn: 'TargetArn',
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     phone_number_country_codes: [
    #       'AF' # accepts ["AF", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BA", "BW", "BR", "IO", "VG", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CK", "CR", "HR", "CU", "CW", "CY", "CZ", "CD", "DK", "DJ", "DM", "DO", "TL", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "PF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "CI", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "AN", "NC", "NZ", "NI", "NE", "NG", "NU", "KP", "MP", "NO", "OM", "PK", "PW", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "CG", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "KR", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "VI", "UG", "UA", "AE", "GB", "US", "UY", "UZ", "VU", "VA", "VE", "VN", "WF", "EH", "YE", "ZM", "ZW"]
    #     ],
    #     phone_number_types: [
    #       'TOLL_FREE' # accepts ["TOLL_FREE", "DID"]
    #     ],
    #     phone_number_prefix: 'PhoneNumberPrefix'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPhoneNumbersV2Output
    #   resp.data.next_token #=> String
    #   resp.data.list_phone_numbers_summary_list #=> Array<ListPhoneNumbersSummary>
    #   resp.data.list_phone_numbers_summary_list[0] #=> Types::ListPhoneNumbersSummary
    #   resp.data.list_phone_numbers_summary_list[0].phone_number_id #=> String
    #   resp.data.list_phone_numbers_summary_list[0].phone_number_arn #=> String
    #   resp.data.list_phone_numbers_summary_list[0].phone_number #=> String
    #   resp.data.list_phone_numbers_summary_list[0].phone_number_country_code #=> String, one of ["AF", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BA", "BW", "BR", "IO", "VG", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CK", "CR", "HR", "CU", "CW", "CY", "CZ", "CD", "DK", "DJ", "DM", "DO", "TL", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "PF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "CI", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "AN", "NC", "NZ", "NI", "NE", "NG", "NU", "KP", "MP", "NO", "OM", "PK", "PW", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "CG", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "KR", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "VI", "UG", "UA", "AE", "GB", "US", "UY", "UZ", "VU", "VA", "VE", "VN", "WF", "EH", "YE", "ZM", "ZW"]
    #   resp.data.list_phone_numbers_summary_list[0].phone_number_type #=> String, one of ["TOLL_FREE", "DID"]
    #   resp.data.list_phone_numbers_summary_list[0].target_arn #=> String
    #
    def list_phone_numbers_v2(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPhoneNumbersV2Input.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPhoneNumbersV2Input,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPhoneNumbersV2
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException]),
        data_parser: Parsers::ListPhoneNumbersV2
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPhoneNumbersV2,
        stubs: @stubs,
        params_class: Params::ListPhoneNumbersV2Output
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_phone_numbers_v2
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides information about the prompts for the specified Amazon Connect instance.</p>
    #
    # @param [Hash] params
    #   See {Types::ListPromptsInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in
    #      the next request to retrieve the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    # @return [Types::ListPromptsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_prompts(
    #     instance_id: 'InstanceId', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPromptsOutput
    #   resp.data.prompt_summary_list #=> Array<PromptSummary>
    #   resp.data.prompt_summary_list[0] #=> Types::PromptSummary
    #   resp.data.prompt_summary_list[0].id #=> String
    #   resp.data.prompt_summary_list[0].arn #=> String
    #   resp.data.prompt_summary_list[0].name #=> String
    #   resp.data.next_token #=> String
    #
    def list_prompts(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPromptsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPromptsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPrompts
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListPrompts
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPrompts,
        stubs: @stubs,
        params_class: Params::ListPromptsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_prompts
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Lists the quick connects associated with a queue.</p>
    #
    # @param [Hash] params
    #   See {Types::ListQueueQuickConnectsInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :queue_id
    #   <p>The identifier for the queue.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    # @return [Types::ListQueueQuickConnectsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_queue_quick_connects(
    #     instance_id: 'InstanceId', # required
    #     queue_id: 'QueueId', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListQueueQuickConnectsOutput
    #   resp.data.next_token #=> String
    #   resp.data.quick_connect_summary_list #=> Array<QuickConnectSummary>
    #   resp.data.quick_connect_summary_list[0] #=> Types::QuickConnectSummary
    #   resp.data.quick_connect_summary_list[0].id #=> String
    #   resp.data.quick_connect_summary_list[0].arn #=> String
    #   resp.data.quick_connect_summary_list[0].name #=> String
    #   resp.data.quick_connect_summary_list[0].quick_connect_type #=> String, one of ["USER", "QUEUE", "PHONE_NUMBER"]
    #
    def list_queue_quick_connects(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListQueueQuickConnectsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListQueueQuickConnectsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListQueueQuickConnects
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListQueueQuickConnects
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListQueueQuickConnects,
        stubs: @stubs,
        params_class: Params::ListQueueQuickConnectsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_queue_quick_connects
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides information about the queues for the specified Amazon Connect instance.</p>
    #          <p>If you do not specify a <code>QueueTypes</code>
    #    parameter, both standard and agent queues are returned. This might cause an unexpected truncation
    #    of results if you have more than 1000 agents and you limit the number of results of the API call
    #    in code.</p>
    #          <p>For more information about queues, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/concepts-queues-standard-and-agent.html">Queues: Standard and
    #     Agent</a> in the <i>Amazon Connect Administrator Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListQueuesInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [Array<String>] :queue_types
    #   <p>The type of queue.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    # @return [Types::ListQueuesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_queues(
    #     instance_id: 'InstanceId', # required
    #     queue_types: [
    #       'STANDARD' # accepts ["STANDARD", "AGENT"]
    #     ],
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListQueuesOutput
    #   resp.data.queue_summary_list #=> Array<QueueSummary>
    #   resp.data.queue_summary_list[0] #=> Types::QueueSummary
    #   resp.data.queue_summary_list[0].id #=> String
    #   resp.data.queue_summary_list[0].arn #=> String
    #   resp.data.queue_summary_list[0].name #=> String
    #   resp.data.queue_summary_list[0].queue_type #=> String, one of ["STANDARD", "AGENT"]
    #   resp.data.next_token #=> String
    #
    def list_queues(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListQueuesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListQueuesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListQueues
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListQueues
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListQueues,
        stubs: @stubs,
        params_class: Params::ListQueuesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_queues
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides information about the quick connects for the specified Amazon Connect instance. </p>
    #
    # @param [Hash] params
    #   See {Types::ListQuickConnectsInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    # @option params [Array<String>] :quick_connect_types
    #   <p>The type of quick connect. In the Amazon Connect console, when you create a quick connect, you are
    #      prompted to assign one of the following types: Agent (USER), External (PHONE_NUMBER), or Queue (QUEUE).</p>
    #
    # @return [Types::ListQuickConnectsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_quick_connects(
    #     instance_id: 'InstanceId', # required
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     quick_connect_types: [
    #       'USER' # accepts ["USER", "QUEUE", "PHONE_NUMBER"]
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListQuickConnectsOutput
    #   resp.data.quick_connect_summary_list #=> Array<QuickConnectSummary>
    #   resp.data.quick_connect_summary_list[0] #=> Types::QuickConnectSummary
    #   resp.data.quick_connect_summary_list[0].id #=> String
    #   resp.data.quick_connect_summary_list[0].arn #=> String
    #   resp.data.quick_connect_summary_list[0].name #=> String
    #   resp.data.quick_connect_summary_list[0].quick_connect_type #=> String, one of ["USER", "QUEUE", "PHONE_NUMBER"]
    #   resp.data.next_token #=> String
    #
    def list_quick_connects(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListQuickConnectsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListQuickConnectsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListQuickConnects
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListQuickConnects
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListQuickConnects,
        stubs: @stubs,
        params_class: Params::ListQuickConnectsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_quick_connects
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the queues associated with a routing profile.</p>
    #
    # @param [Hash] params
    #   See {Types::ListRoutingProfileQueuesInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :routing_profile_id
    #   <p>The identifier of the routing profile.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    # @return [Types::ListRoutingProfileQueuesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_routing_profile_queues(
    #     instance_id: 'InstanceId', # required
    #     routing_profile_id: 'RoutingProfileId', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListRoutingProfileQueuesOutput
    #   resp.data.next_token #=> String
    #   resp.data.routing_profile_queue_config_summary_list #=> Array<RoutingProfileQueueConfigSummary>
    #   resp.data.routing_profile_queue_config_summary_list[0] #=> Types::RoutingProfileQueueConfigSummary
    #   resp.data.routing_profile_queue_config_summary_list[0].queue_id #=> String
    #   resp.data.routing_profile_queue_config_summary_list[0].queue_arn #=> String
    #   resp.data.routing_profile_queue_config_summary_list[0].queue_name #=> String
    #   resp.data.routing_profile_queue_config_summary_list[0].priority #=> Integer
    #   resp.data.routing_profile_queue_config_summary_list[0].delay #=> Integer
    #   resp.data.routing_profile_queue_config_summary_list[0].channel #=> String, one of ["VOICE", "CHAT", "TASK"]
    #
    def list_routing_profile_queues(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListRoutingProfileQueuesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListRoutingProfileQueuesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListRoutingProfileQueues
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListRoutingProfileQueues
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListRoutingProfileQueues,
        stubs: @stubs,
        params_class: Params::ListRoutingProfileQueuesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_routing_profile_queues
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides summary information about the routing profiles for the specified Amazon Connect
    #    instance.</p>
    #          <p>For more information about routing profiles, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/concepts-routing.html">Routing Profiles</a> and <a href="https://docs.aws.amazon.com/connect/latest/adminguide/routing-profiles.html">Create a Routing
    #     Profile</a> in the <i>Amazon Connect Administrator Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListRoutingProfilesInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    # @return [Types::ListRoutingProfilesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_routing_profiles(
    #     instance_id: 'InstanceId', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListRoutingProfilesOutput
    #   resp.data.routing_profile_summary_list #=> Array<RoutingProfileSummary>
    #   resp.data.routing_profile_summary_list[0] #=> Types::RoutingProfileSummary
    #   resp.data.routing_profile_summary_list[0].id #=> String
    #   resp.data.routing_profile_summary_list[0].arn #=> String
    #   resp.data.routing_profile_summary_list[0].name #=> String
    #   resp.data.next_token #=> String
    #
    def list_routing_profiles(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListRoutingProfilesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListRoutingProfilesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListRoutingProfiles
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListRoutingProfiles
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListRoutingProfiles,
        stubs: @stubs,
        params_class: Params::ListRoutingProfilesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_routing_profiles
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Returns a paginated list of all security keys associated with the instance.</p>
    #
    # @param [Hash] params
    #   See {Types::ListSecurityKeysInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    # @return [Types::ListSecurityKeysOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_security_keys(
    #     instance_id: 'InstanceId', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListSecurityKeysOutput
    #   resp.data.security_keys #=> Array<SecurityKey>
    #   resp.data.security_keys[0] #=> Types::SecurityKey
    #   resp.data.security_keys[0].association_id #=> String
    #   resp.data.security_keys[0].key #=> String
    #   resp.data.security_keys[0].creation_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_security_keys(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListSecurityKeysInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListSecurityKeysInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListSecurityKeys
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListSecurityKeys
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListSecurityKeys,
        stubs: @stubs,
        params_class: Params::ListSecurityKeysOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_security_keys
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Lists the permissions granted to a security profile.</p>
    #
    # @param [Hash] params
    #   See {Types::ListSecurityProfilePermissionsInput}.
    #
    # @option params [String] :security_profile_id
    #   <p>The identifier for the security profle.</p>
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    # @return [Types::ListSecurityProfilePermissionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_security_profile_permissions(
    #     security_profile_id: 'SecurityProfileId', # required
    #     instance_id: 'InstanceId', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListSecurityProfilePermissionsOutput
    #   resp.data.permissions #=> Array<String>
    #   resp.data.permissions[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_security_profile_permissions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListSecurityProfilePermissionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListSecurityProfilePermissionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListSecurityProfilePermissions
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListSecurityProfilePermissions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListSecurityProfilePermissions,
        stubs: @stubs,
        params_class: Params::ListSecurityProfilePermissionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_security_profile_permissions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides summary information about the security profiles for the specified Amazon Connect
    #    instance.</p>
    #          <p>For more information about security profiles, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/connect-security-profiles.html">Security Profiles</a> in the
    #     <i>Amazon Connect Administrator Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListSecurityProfilesInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    # @return [Types::ListSecurityProfilesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_security_profiles(
    #     instance_id: 'InstanceId', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListSecurityProfilesOutput
    #   resp.data.security_profile_summary_list #=> Array<SecurityProfileSummary>
    #   resp.data.security_profile_summary_list[0] #=> Types::SecurityProfileSummary
    #   resp.data.security_profile_summary_list[0].id #=> String
    #   resp.data.security_profile_summary_list[0].arn #=> String
    #   resp.data.security_profile_summary_list[0].name #=> String
    #   resp.data.next_token #=> String
    #
    def list_security_profiles(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListSecurityProfilesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListSecurityProfilesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListSecurityProfiles
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListSecurityProfiles
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListSecurityProfiles,
        stubs: @stubs,
        params_class: Params::ListSecurityProfilesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_security_profiles
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the tags for the specified resource.</p>
    #          <p>For sample policies that use tags, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/security_iam_id-based-policy-examples.html">Amazon Connect Identity-Based
    #     Policy Examples</a> in the <i>Amazon Connect Administrator Guide</i>.</p>
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
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

    # <p>Lists task templates for the specified Amazon Connect instance.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTaskTemplatesInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #            <important>
    #               <p>It is not expected that you set this because the value returned in the previous response is
    #       always null.</p>
    #            </important>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    #            <important>
    #               <p>It is not expected that you set this.</p>
    #            </important>
    #
    # @option params [String] :status
    #   <p>Marks a template as <code>ACTIVE</code> or <code>INACTIVE</code> for a task to refer to it.
    #   Tasks can only be created from <code>ACTIVE</code> templates.
    #   If a template is marked as <code>INACTIVE</code>, then a task that refers to this template cannot be created.</p>
    #
    # @option params [String] :name
    #   <p>The name of the task template.</p>
    #
    # @return [Types::ListTaskTemplatesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_task_templates(
    #     instance_id: 'InstanceId', # required
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     status: 'ACTIVE', # accepts ["ACTIVE", "INACTIVE"]
    #     name: 'Name'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTaskTemplatesOutput
    #   resp.data.task_templates #=> Array<TaskTemplateMetadata>
    #   resp.data.task_templates[0] #=> Types::TaskTemplateMetadata
    #   resp.data.task_templates[0].id #=> String
    #   resp.data.task_templates[0].arn #=> String
    #   resp.data.task_templates[0].name #=> String
    #   resp.data.task_templates[0].description #=> String
    #   resp.data.task_templates[0].status #=> String, one of ["ACTIVE", "INACTIVE"]
    #   resp.data.task_templates[0].last_modified_time #=> Time
    #   resp.data.task_templates[0].created_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_task_templates(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTaskTemplatesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTaskTemplatesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTaskTemplates
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListTaskTemplates
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTaskTemplates,
        stubs: @stubs,
        params_class: Params::ListTaskTemplatesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_task_templates
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the use cases for the integration association. </p>
    #
    # @param [Hash] params
    #   See {Types::ListUseCasesInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :integration_association_id
    #   <p>The identifier for the integration association.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    # @return [Types::ListUseCasesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_use_cases(
    #     instance_id: 'InstanceId', # required
    #     integration_association_id: 'IntegrationAssociationId', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListUseCasesOutput
    #   resp.data.use_case_summary_list #=> Array<UseCase>
    #   resp.data.use_case_summary_list[0] #=> Types::UseCase
    #   resp.data.use_case_summary_list[0].use_case_id #=> String
    #   resp.data.use_case_summary_list[0].use_case_arn #=> String
    #   resp.data.use_case_summary_list[0].use_case_type #=> String, one of ["RULES_EVALUATION", "CONNECT_CAMPAIGNS"]
    #   resp.data.next_token #=> String
    #
    def list_use_cases(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListUseCasesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListUseCasesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListUseCases
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListUseCases
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListUseCases,
        stubs: @stubs,
        params_class: Params::ListUseCasesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_use_cases
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides summary information about the hierarchy groups for the specified Amazon Connect
    #    instance.</p>
    #          <p>For more information about agent hierarchies, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/agent-hierarchy.html">Set Up Agent Hierarchies</a> in the
    #     <i>Amazon Connect Administrator Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListUserHierarchyGroupsInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    # @return [Types::ListUserHierarchyGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_user_hierarchy_groups(
    #     instance_id: 'InstanceId', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListUserHierarchyGroupsOutput
    #   resp.data.user_hierarchy_group_summary_list #=> Array<HierarchyGroupSummary>
    #   resp.data.user_hierarchy_group_summary_list[0] #=> Types::HierarchyGroupSummary
    #   resp.data.user_hierarchy_group_summary_list[0].id #=> String
    #   resp.data.user_hierarchy_group_summary_list[0].arn #=> String
    #   resp.data.user_hierarchy_group_summary_list[0].name #=> String
    #   resp.data.next_token #=> String
    #
    def list_user_hierarchy_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListUserHierarchyGroupsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListUserHierarchyGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListUserHierarchyGroups
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListUserHierarchyGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListUserHierarchyGroups,
        stubs: @stubs,
        params_class: Params::ListUserHierarchyGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_user_hierarchy_groups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides summary information about the users for the specified Amazon Connect instance.</p>
    #
    # @param [Hash] params
    #   See {Types::ListUsersInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    # @return [Types::ListUsersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_users(
    #     instance_id: 'InstanceId', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListUsersOutput
    #   resp.data.user_summary_list #=> Array<UserSummary>
    #   resp.data.user_summary_list[0] #=> Types::UserSummary
    #   resp.data.user_summary_list[0].id #=> String
    #   resp.data.user_summary_list[0].arn #=> String
    #   resp.data.user_summary_list[0].username #=> String
    #   resp.data.next_token #=> String
    #
    def list_users(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListUsersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListUsersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListUsers
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListUsers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListUsers,
        stubs: @stubs,
        params_class: Params::ListUsersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_users
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Changes the current status of a user or agent in Amazon Connect. If the agent is currently handling a
    #    contact, this sets the agent's next status.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-agent-status.html">Agent status</a> and <a href="https://docs.aws.amazon.com/connect/latest/adminguide/set-next-status.html">Set your next
    #     status</a> in the <i>Amazon Connect Administrator Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::PutUserStatusInput}.
    #
    # @option params [String] :user_id
    #   <p>The identifier of the user.</p>
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :agent_status_id
    #   <p>The identifier of the agent status.</p>
    #
    # @return [Types::PutUserStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_user_status(
    #     user_id: 'UserId', # required
    #     instance_id: 'InstanceId', # required
    #     agent_status_id: 'AgentStatusId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutUserStatusOutput
    #
    def put_user_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutUserStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutUserStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutUserStatus
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::PutUserStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutUserStatus,
        stubs: @stubs,
        params_class: Params::PutUserStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_user_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Releases a phone number previously claimed to an Amazon Connect instance.</p>
    #
    # @param [Hash] params
    #   See {Types::ReleasePhoneNumberInput}.
    #
    # @option params [String] :phone_number_id
    #   <p>A unique identifier for the phone number.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request.</p>
    #
    # @return [Types::ReleasePhoneNumberOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.release_phone_number(
    #     phone_number_id: 'PhoneNumberId', # required
    #     client_token: 'ClientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ReleasePhoneNumberOutput
    #
    def release_phone_number(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ReleasePhoneNumberInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ReleasePhoneNumberInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ReleasePhoneNumber
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::IdempotencyException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::ResourceInUseException]),
        data_parser: Parsers::ReleasePhoneNumber
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ReleasePhoneNumber,
        stubs: @stubs,
        params_class: Params::ReleasePhoneNumberOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :release_phone_number
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>When a contact is being recorded, and the recording has been suspended using
    #    SuspendContactRecording, this API resumes recording the call.</p>
    #
    #          <p>Only voice recordings are supported at this time.</p>
    #
    # @param [Hash] params
    #   See {Types::ResumeContactRecordingInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :contact_id
    #   <p>The identifier of the contact.</p>
    #
    # @option params [String] :initial_contact_id
    #   <p>The identifier of the contact. This is the identifier of the contact associated with the
    #      first interaction with the contact center.</p>
    #
    # @return [Types::ResumeContactRecordingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.resume_contact_recording(
    #     instance_id: 'InstanceId', # required
    #     contact_id: 'ContactId', # required
    #     initial_contact_id: 'InitialContactId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ResumeContactRecordingOutput
    #
    def resume_contact_recording(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ResumeContactRecordingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ResumeContactRecordingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ResumeContactRecording
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::ResumeContactRecording
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ResumeContactRecording,
        stubs: @stubs,
        params_class: Params::ResumeContactRecordingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :resume_contact_recording
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Searches for available phone numbers that you can claim to your Amazon Connect instance.</p>
    #
    # @param [Hash] params
    #   See {Types::SearchAvailablePhoneNumbersInput}.
    #
    # @option params [String] :target_arn
    #   <p>The Amazon Resource Name (ARN) for Amazon Connect instances that phone numbers are claimed to.</p>
    #
    # @option params [String] :phone_number_country_code
    #   <p>The ISO country code.</p>
    #
    # @option params [String] :phone_number_type
    #   <p>The type of phone number.</p>
    #
    # @option params [String] :phone_number_prefix
    #   <p>The prefix of the phone number. If provided, it must contain <code>+</code> as part of the country code.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    # @return [Types::SearchAvailablePhoneNumbersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_available_phone_numbers(
    #     target_arn: 'TargetArn', # required
    #     phone_number_country_code: 'AF', # required - accepts ["AF", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BA", "BW", "BR", "IO", "VG", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CK", "CR", "HR", "CU", "CW", "CY", "CZ", "CD", "DK", "DJ", "DM", "DO", "TL", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "PF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "CI", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "AN", "NC", "NZ", "NI", "NE", "NG", "NU", "KP", "MP", "NO", "OM", "PK", "PW", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "CG", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "KR", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "VI", "UG", "UA", "AE", "GB", "US", "UY", "UZ", "VU", "VA", "VE", "VN", "WF", "EH", "YE", "ZM", "ZW"]
    #     phone_number_type: 'TOLL_FREE', # required - accepts ["TOLL_FREE", "DID"]
    #     phone_number_prefix: 'PhoneNumberPrefix',
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SearchAvailablePhoneNumbersOutput
    #   resp.data.next_token #=> String
    #   resp.data.available_numbers_list #=> Array<AvailableNumberSummary>
    #   resp.data.available_numbers_list[0] #=> Types::AvailableNumberSummary
    #   resp.data.available_numbers_list[0].phone_number #=> String
    #   resp.data.available_numbers_list[0].phone_number_country_code #=> String, one of ["AF", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BA", "BW", "BR", "IO", "VG", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CK", "CR", "HR", "CU", "CW", "CY", "CZ", "CD", "DK", "DJ", "DM", "DO", "TL", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "PF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "CI", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "AN", "NC", "NZ", "NI", "NE", "NG", "NU", "KP", "MP", "NO", "OM", "PK", "PW", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "CG", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "KR", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "VI", "UG", "UA", "AE", "GB", "US", "UY", "UZ", "VU", "VA", "VE", "VN", "WF", "EH", "YE", "ZM", "ZW"]
    #   resp.data.available_numbers_list[0].phone_number_type #=> String, one of ["TOLL_FREE", "DID"]
    #
    def search_available_phone_numbers(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SearchAvailablePhoneNumbersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SearchAvailablePhoneNumbersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SearchAvailablePhoneNumbers
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException]),
        data_parser: Parsers::SearchAvailablePhoneNumbers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SearchAvailablePhoneNumbers,
        stubs: @stubs,
        params_class: Params::SearchAvailablePhoneNumbersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :search_available_phone_numbers
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Searches users in an Amazon Connect instance, with optional filtering.</p>
    #
    # @param [Hash] params
    #   See {Types::SearchUsersInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    # @option params [UserSearchFilter] :search_filter
    #   <p>Filters to be applied to search results.</p>
    #
    # @option params [UserSearchCriteria] :search_criteria
    #   <p>The search criteria to be used to return users.</p>
    #
    # @return [Types::SearchUsersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_users(
    #     instance_id: 'InstanceId',
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     search_filter: {
    #       tag_filter: {
    #         or_conditions: [
    #           [
    #             {
    #               tag_key: 'TagKey',
    #               tag_value: 'TagValue'
    #             }
    #           ]
    #         ],
    #       }
    #     },
    #     search_criteria: {
    #       string_condition: {
    #         field_name: 'FieldName',
    #         value: 'Value',
    #         comparison_type: 'STARTS_WITH' # accepts ["STARTS_WITH", "CONTAINS", "EXACT"]
    #       },
    #       hierarchy_group_condition: {
    #         value: 'Value',
    #         hierarchy_group_match_type: 'EXACT' # accepts ["EXACT", "WITH_CHILD_GROUPS"]
    #       }
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SearchUsersOutput
    #   resp.data.users #=> Array<UserSearchSummary>
    #   resp.data.users[0] #=> Types::UserSearchSummary
    #   resp.data.users[0].arn #=> String
    #   resp.data.users[0].directory_user_id #=> String
    #   resp.data.users[0].hierarchy_group_id #=> String
    #   resp.data.users[0].id #=> String
    #   resp.data.users[0].identity_info #=> Types::UserIdentityInfoLite
    #   resp.data.users[0].identity_info.first_name #=> String
    #   resp.data.users[0].identity_info.last_name #=> String
    #   resp.data.users[0].phone_config #=> Types::UserPhoneConfig
    #   resp.data.users[0].phone_config.phone_type #=> String, one of ["SOFT_PHONE", "DESK_PHONE"]
    #   resp.data.users[0].phone_config.auto_accept #=> Boolean
    #   resp.data.users[0].phone_config.after_contact_work_time_limit #=> Integer
    #   resp.data.users[0].phone_config.desk_phone_number #=> String
    #   resp.data.users[0].routing_profile_id #=> String
    #   resp.data.users[0].security_profile_ids #=> Array<String>
    #   resp.data.users[0].security_profile_ids[0] #=> String
    #   resp.data.users[0].tags #=> Hash<String, String>
    #   resp.data.users[0].tags['key'] #=> String
    #   resp.data.users[0].username #=> String
    #   resp.data.next_token #=> String
    #   resp.data.approximate_total_count #=> Integer
    #
    def search_users(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SearchUsersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SearchUsersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SearchUsers
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::SearchUsers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SearchUsers,
        stubs: @stubs,
        params_class: Params::SearchUsersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :search_users
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Searches for vocabularies within a specific Amazon Connect instance using <code>State</code>,
    #     <code>NameStartsWith</code>, and <code>LanguageCode</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::SearchVocabulariesInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    # @option params [String] :state
    #   <p>The current state of the custom vocabulary.</p>
    #
    # @option params [String] :name_starts_with
    #   <p>The starting pattern of the name of the vocabulary.</p>
    #
    # @option params [String] :language_code
    #   <p>The language code of the vocabulary entries. For a list of languages and their corresponding language codes, see
    #   <a href="https://docs.aws.amazon.com/transcribe/latest/dg/transcribe-whatis.html">What is Amazon Transcribe?</a>
    #            </p>
    #
    # @return [Types::SearchVocabulariesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_vocabularies(
    #     instance_id: 'InstanceId', # required
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     state: 'CREATION_IN_PROGRESS', # accepts ["CREATION_IN_PROGRESS", "ACTIVE", "CREATION_FAILED", "DELETE_IN_PROGRESS"]
    #     name_starts_with: 'NameStartsWith',
    #     language_code: 'ar-AE' # accepts ["ar-AE", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fr-CA", "fr-FR", "hi-IN", "it-IT", "ja-JP", "ko-KR", "pt-BR", "pt-PT", "zh-CN"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SearchVocabulariesOutput
    #   resp.data.vocabulary_summary_list #=> Array<VocabularySummary>
    #   resp.data.vocabulary_summary_list[0] #=> Types::VocabularySummary
    #   resp.data.vocabulary_summary_list[0].name #=> String
    #   resp.data.vocabulary_summary_list[0].id #=> String
    #   resp.data.vocabulary_summary_list[0].arn #=> String
    #   resp.data.vocabulary_summary_list[0].language_code #=> String, one of ["ar-AE", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fr-CA", "fr-FR", "hi-IN", "it-IT", "ja-JP", "ko-KR", "pt-BR", "pt-PT", "zh-CN"]
    #   resp.data.vocabulary_summary_list[0].state #=> String, one of ["CREATION_IN_PROGRESS", "ACTIVE", "CREATION_FAILED", "DELETE_IN_PROGRESS"]
    #   resp.data.vocabulary_summary_list[0].last_modified_time #=> Time
    #   resp.data.vocabulary_summary_list[0].failure_reason #=> String
    #   resp.data.next_token #=> String
    #
    def search_vocabularies(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SearchVocabulariesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SearchVocabulariesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SearchVocabularies
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::SearchVocabularies
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SearchVocabularies,
        stubs: @stubs,
        params_class: Params::SearchVocabulariesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :search_vocabularies
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Initiates a contact flow to start a new chat for the customer. Response of this API provides
    #    a token required to obtain credentials from the <a href="https://docs.aws.amazon.com/connect-participant/latest/APIReference/API_CreateParticipantConnection.html">CreateParticipantConnection</a> API in the Amazon Connect Participant Service.</p>
    #
    #          <p>When a new chat contact is successfully created, clients must subscribe to the participant’s
    #    connection for the created chat within 5 minutes. This is achieved by invoking <a href="https://docs.aws.amazon.com/connect-participant/latest/APIReference/API_CreateParticipantConnection.html">CreateParticipantConnection</a> with WEBSOCKET and CONNECTION_CREDENTIALS. </p>
    #
    #          <p>A 429 error occurs in the following situations:</p>
    #          <ul>
    #             <li>
    #                <p>API rate limit is exceeded. API TPS throttling returns a <code>TooManyRequests</code>
    #      exception.</p>
    #             </li>
    #             <li>
    #                <p>The <a href="https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html">quota for concurrent active
    #       chats</a> is exceeded. Active chat throttling returns a
    #       <code>LimitExceededException</code>.</p>
    #             </li>
    #          </ul>
    #          <p>If you use the <code>ChatDurationInMinutes</code> parameter and receive a 400 error, your
    #    account may not support the ability to configure custom chat durations. For more information,
    #    contact Amazon Web Services Support. </p>
    #
    #          <p>For more information about chat, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/chat.html">Chat</a> in the <i>Amazon Connect Administrator
    #     Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::StartChatContactInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :contact_flow_id
    #   <p>The identifier of the contact flow for initiating the chat.
    #      To
    #      see the ContactFlowId in the Amazon Connect console user interface, on the navigation menu go to <b>Routing</b>, <b>Contact Flows</b>. Choose the
    #      contact flow. On the contact flow page, under the name of the contact flow, choose <b>Show additional flow information</b>. The ContactFlowId is the last part of
    #      the ARN, shown here in bold: </p>
    #            <p>arn:aws:connect:us-west-2:xxxxxxxxxxxx:instance/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/contact-flow/<b>846ec553-a005-41c0-8341-xxxxxxxxxxxx</b>
    #            </p>
    #
    # @option params [Hash<String, String>] :attributes
    #   <p>A custom key-value pair using an attribute map. The attributes are standard Amazon Connect
    #      attributes. They can be accessed in contact flows just like any other contact attributes. </p>
    #            <p>There can be up to 32,768 UTF-8 bytes across all key-value pairs per contact. Attribute keys
    #      can include only alphanumeric, dash, and underscore characters.</p>
    #
    # @option params [ParticipantDetails] :participant_details
    #   <p>Information identifying the participant.</p>
    #
    # @option params [ChatMessage] :initial_message
    #   <p>The initial message to be sent to the newly created chat.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #      request.</p>
    #
    # @option params [Integer] :chat_duration_in_minutes
    #   <p>The total duration of the newly started chat session. If not specified, the chat session
    #      duration defaults to 25 hour. The minumum configurable time is 60 minutes. The maximum
    #      configurable time is 10,080 minutes (7 days).</p>
    #
    # @option params [Array<String>] :supported_messaging_content_types
    #   <p>The supported chat message content types. Content types can be text/plain or both text/plain
    #      and text/markdown.</p>
    #
    # @return [Types::StartChatContactOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_chat_contact(
    #     instance_id: 'InstanceId', # required
    #     contact_flow_id: 'ContactFlowId', # required
    #     attributes: {
    #       'key' => 'value'
    #     },
    #     participant_details: {
    #       display_name: 'DisplayName' # required
    #     }, # required
    #     initial_message: {
    #       content_type: 'ContentType', # required
    #       content: 'Content' # required
    #     },
    #     client_token: 'ClientToken',
    #     chat_duration_in_minutes: 1,
    #     supported_messaging_content_types: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartChatContactOutput
    #   resp.data.contact_id #=> String
    #   resp.data.participant_id #=> String
    #   resp.data.participant_token #=> String
    #
    def start_chat_contact(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartChatContactInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartChatContactInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartChatContact
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException, Errors::LimitExceededException]),
        data_parser: Parsers::StartChatContact
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartChatContact,
        stubs: @stubs,
        params_class: Params::StartChatContactOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_chat_contact
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts recording the contact: </p>
    #          <ul>
    #             <li>
    #                <p>If the API is called <i>before</i> the agent joins the call, recording
    #      starts when the agent joins the call.</p>
    #             </li>
    #             <li>
    #                <p>If the API is called <i>after</i> the agent joins the call, recording starts
    #      at the time of the API call.</p>
    #             </li>
    #          </ul>
    #
    #          <p>StartContactRecording is a one-time action. For example, if you use StopContactRecording to
    #    stop recording an ongoing call, you can't use StartContactRecording to restart it. For scenarios
    #    where the recording has started and you want to suspend and resume it, such as when collecting
    #    sensitive information (for example, a credit card number), use SuspendContactRecording and
    #    ResumeContactRecording.</p>
    #          <p>You can use this API to override the recording behavior configured in the <a href="https://docs.aws.amazon.com/connect/latest/adminguide/set-recording-behavior.html">Set recording
    #     behavior</a> block.</p>
    #          <p>Only voice recordings are supported at this time.</p>
    #
    # @param [Hash] params
    #   See {Types::StartContactRecordingInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :contact_id
    #   <p>The identifier of the contact.</p>
    #
    # @option params [String] :initial_contact_id
    #   <p>The identifier of the contact. This is the identifier of the contact associated with the
    #      first interaction with the contact center.</p>
    #
    # @option params [VoiceRecordingConfiguration] :voice_recording_configuration
    #   <p>The person being recorded.</p>
    #
    # @return [Types::StartContactRecordingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_contact_recording(
    #     instance_id: 'InstanceId', # required
    #     contact_id: 'ContactId', # required
    #     initial_contact_id: 'InitialContactId', # required
    #     voice_recording_configuration: {
    #       voice_recording_track: 'FROM_AGENT' # accepts ["FROM_AGENT", "TO_AGENT", "ALL"]
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartContactRecordingOutput
    #
    def start_contact_recording(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartContactRecordingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartContactRecordingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartContactRecording
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::StartContactRecording
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartContactRecording,
        stubs: @stubs,
        params_class: Params::StartContactRecordingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_contact_recording
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Initiates real-time message streaming for a new chat contact.</p>
    #          <p> For more information about message streaming, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/chat-message-streaming.html">Enable real-time chat message
    #     streaming</a> in the <i>Amazon Connect Administrator Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::StartContactStreamingInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :contact_id
    #   <p>The identifier of the contact. This is the identifier of the contact associated with the
    #      first interaction with the contact center.</p>
    #
    # @option params [ChatStreamingConfiguration] :chat_streaming_configuration
    #   <p>The streaming configuration, such as the Amazon SNS streaming endpoint.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request.</p>
    #
    # @return [Types::StartContactStreamingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_contact_streaming(
    #     instance_id: 'InstanceId', # required
    #     contact_id: 'ContactId', # required
    #     chat_streaming_configuration: {
    #       streaming_endpoint_arn: 'StreamingEndpointArn' # required
    #     }, # required
    #     client_token: 'ClientToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartContactStreamingOutput
    #   resp.data.streaming_id #=> String
    #
    def start_contact_streaming(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartContactStreamingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartContactStreamingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartContactStreaming
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException, Errors::LimitExceededException]),
        data_parser: Parsers::StartContactStreaming
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartContactStreaming,
        stubs: @stubs,
        params_class: Params::StartContactStreamingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_contact_streaming
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Places an outbound call to a contact, and then initiates the contact flow. It performs the
    #    actions in the contact flow that's specified (in <code>ContactFlowId</code>).</p>
    #
    #          <p>Agents do not initiate the outbound API, which means that they do not dial the contact. If
    #    the contact flow places an outbound call to a contact, and then puts the contact in queue, the
    #    call is then routed to the agent, like any other inbound case.</p>
    #
    #          <p>There is a 60-second dialing timeout for this operation. If the call is not connected after
    #    60 seconds, it fails.</p>
    #          <note>
    #             <p>UK numbers with a 447 prefix are not allowed by default. Before you can dial these UK
    #     mobile numbers, you must submit a service quota increase request. For more information, see
    #      <a href="https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html">Amazon Connect Service Quotas</a> in the <i>Amazon Connect Administrator Guide</i>. </p>
    #          </note>
    #          <note>
    #             <p>Campaign calls are not allowed by default. Before you can make a call with
    #      <code>TrafficType</code> = <code>CAMPAIGN</code>, you must submit a service quota increase
    #     request. For more information, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html">Amazon Connect Service Quotas</a>
    #     in the <i>Amazon Connect Administrator Guide</i>. </p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::StartOutboundVoiceContactInput}.
    #
    # @option params [String] :destination_phone_number
    #   <p>The phone number of the customer, in E.164 format.</p>
    #
    # @option params [String] :contact_flow_id
    #   <p>The
    #      identifier of the contact flow for the outbound call. To see the ContactFlowId in the Amazon Connect
    #      console user interface, on the navigation menu go to <b>Routing</b>,
    #       <b>Contact Flows</b>. Choose the contact flow. On the contact flow
    #      page, under the name of the contact flow, choose <b>Show additional flow
    #       information</b>. The ContactFlowId is the last part of the ARN, shown here in bold: </p>
    #            <p>arn:aws:connect:us-west-2:xxxxxxxxxxxx:instance/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/contact-flow/<b>846ec553-a005-41c0-8341-xxxxxxxxxxxx</b>
    #            </p>
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #      request. The token is valid for 7 days after creation. If a contact is already started, the
    #      contact ID is returned.
    #      </p>
    #
    # @option params [String] :source_phone_number
    #   <p>The phone number associated with the Amazon Connect instance, in E.164 format. If you do not specify
    #      a source phone number, you must specify a queue.</p>
    #
    # @option params [String] :queue_id
    #   <p>The queue for the call. If you specify a queue, the phone displayed for caller ID is the
    #      phone number specified in the queue. If you do not specify a queue, the queue defined in the
    #      contact flow is used. If you do not specify a queue, you must specify a source phone
    #      number.</p>
    #
    # @option params [Hash<String, String>] :attributes
    #   <p>A custom key-value pair using an attribute map. The attributes are standard Amazon Connect
    #      attributes, and can be accessed in contact flows just like any other contact attributes.</p>
    #            <p>There can be up to 32,768 UTF-8 bytes across all key-value pairs per contact. Attribute keys
    #      can include only alphanumeric, dash, and underscore characters.</p>
    #
    # @option params [AnswerMachineDetectionConfig] :answer_machine_detection_config
    #   <p>Configuration of the answering machine detection for this outbound call. </p>
    #
    # @option params [String] :campaign_id
    #   <p>The campaign identifier of the outbound communication.</p>
    #
    # @option params [String] :traffic_type
    #   <p>Denotes the class of traffic. Calls with different traffic types are handled differently by
    #      Amazon Connect. The default value is <code>GENERAL</code>. Use <code>CAMPAIGN</code> if
    #       <code>EnableAnswerMachineDetection</code> is set to <code>true</code>. For all other cases, use
    #       <code>GENERAL</code>. </p>
    #
    # @return [Types::StartOutboundVoiceContactOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_outbound_voice_contact(
    #     destination_phone_number: 'DestinationPhoneNumber', # required
    #     contact_flow_id: 'ContactFlowId', # required
    #     instance_id: 'InstanceId', # required
    #     client_token: 'ClientToken',
    #     source_phone_number: 'SourcePhoneNumber',
    #     queue_id: 'QueueId',
    #     attributes: {
    #       'key' => 'value'
    #     },
    #     answer_machine_detection_config: {
    #       enable_answer_machine_detection: false,
    #       await_answer_machine_prompt: false
    #     },
    #     campaign_id: 'CampaignId',
    #     traffic_type: 'GENERAL' # accepts ["GENERAL", "CAMPAIGN"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartOutboundVoiceContactOutput
    #   resp.data.contact_id #=> String
    #
    def start_outbound_voice_contact(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartOutboundVoiceContactInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartOutboundVoiceContactInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartOutboundVoiceContact
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::DestinationNotAllowedException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException, Errors::LimitExceededException, Errors::OutboundContactNotPermittedException]),
        data_parser: Parsers::StartOutboundVoiceContact
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartOutboundVoiceContact,
        stubs: @stubs,
        params_class: Params::StartOutboundVoiceContactOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_outbound_voice_contact
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Initiates a contact flow to start a new task.</p>
    #
    # @param [Hash] params
    #   See {Types::StartTaskContactInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :previous_contact_id
    #   <p>The identifier of the previous chat, voice, or task contact. </p>
    #
    # @option params [String] :contact_flow_id
    #   <p>The identifier of the contact flow for initiating the tasks. To see the ContactFlowId in the
    #      Amazon Connect console user interface, on the navigation menu go to <b>Routing</b>, <b>Contact Flows</b>. Choose the contact flow. On
    #      the contact flow page, under the name of the contact flow, choose <b>Show
    #       additional flow information</b>. The ContactFlowId is the last part of the ARN, shown
    #      here in bold: </p>
    #            <p>arn:aws:connect:us-west-2:xxxxxxxxxxxx:instance/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/contact-flow/<b>846ec553-a005-41c0-8341-xxxxxxxxxxxx</b>
    #            </p>
    #
    # @option params [Hash<String, String>] :attributes
    #   <p>A custom key-value pair using an attribute map. The attributes are standard Amazon Connect
    #      attributes, and can be accessed in contact flows just like any other contact attributes.</p>
    #            <p>There can be up to 32,768 UTF-8 bytes across all key-value pairs per contact. Attribute keys
    #      can include only alphanumeric, dash, and underscore characters.</p>
    #
    # @option params [String] :name
    #   <p>The name of a task that is shown to an agent in the Contact Control Panel (CCP).</p>
    #
    # @option params [Hash<String, Reference>] :references
    #   <p>A formatted URL that is shown to an agent in the Contact Control Panel (CCP).</p>
    #
    # @option params [String] :description
    #   <p>A description of the task that is shown to an agent in the Contact Control Panel
    #      (CCP).</p>
    #
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #      request.</p>
    #
    # @option params [Time] :scheduled_time
    #   <p>The timestamp, in Unix Epoch seconds format, at which to start running the inbound contact flow. The scheduled time cannot be in the past. It must be within up to 6 days in future. </p>
    #
    # @option params [String] :task_template_id
    #   <p>A unique identifier for the task template.</p>
    #
    # @option params [String] :quick_connect_id
    #   <p>The identifier for the quick connect.</p>
    #
    # @return [Types::StartTaskContactOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_task_contact(
    #     instance_id: 'InstanceId', # required
    #     previous_contact_id: 'PreviousContactId',
    #     contact_flow_id: 'ContactFlowId',
    #     attributes: {
    #       'key' => 'value'
    #     },
    #     name: 'Name', # required
    #     references: {
    #       'key' => {
    #         value: 'Value', # required
    #         type: 'URL' # required - accepts ["URL", "ATTACHMENT", "NUMBER", "STRING", "DATE", "EMAIL"]
    #       }
    #     },
    #     description: 'Description',
    #     client_token: 'ClientToken',
    #     scheduled_time: Time.now,
    #     task_template_id: 'TaskTemplateId',
    #     quick_connect_id: 'QuickConnectId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartTaskContactOutput
    #   resp.data.contact_id #=> String
    #
    def start_task_contact(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartTaskContactInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartTaskContactInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartTaskContact
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::StartTaskContact
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartTaskContact,
        stubs: @stubs,
        params_class: Params::StartTaskContactOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_task_contact
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Ends the specified contact. This call does not work for the following initiation
    #    methods:</p>
    #
    #          <ul>
    #             <li>
    #                <p>DISCONNECT</p>
    #             </li>
    #             <li>
    #                <p>TRANSFER</p>
    #             </li>
    #             <li>
    #                <p>QUEUE_TRANSFER</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::StopContactInput}.
    #
    # @option params [String] :contact_id
    #   <p>The ID of the contact.</p>
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @return [Types::StopContactOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_contact(
    #     contact_id: 'ContactId', # required
    #     instance_id: 'InstanceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopContactOutput
    #
    def stop_contact(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopContactInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopContactInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopContact
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ContactNotFoundException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::StopContact
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopContact,
        stubs: @stubs,
        params_class: Params::StopContactOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_contact
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Stops recording a call when a contact is being recorded. StopContactRecording is a one-time
    #    action. If you use StopContactRecording to stop recording an ongoing call, you can't use
    #    StartContactRecording to restart it. For scenarios where the recording has started and you want
    #    to suspend it for sensitive information (for example, to collect a credit card number), and then
    #    restart it, use SuspendContactRecording and ResumeContactRecording.</p>
    #
    #          <p>Only voice recordings are supported at this time.</p>
    #
    # @param [Hash] params
    #   See {Types::StopContactRecordingInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :contact_id
    #   <p>The identifier of the contact.</p>
    #
    # @option params [String] :initial_contact_id
    #   <p>The identifier of the contact. This is the identifier of the contact associated with the
    #      first interaction with the contact center.</p>
    #
    # @return [Types::StopContactRecordingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_contact_recording(
    #     instance_id: 'InstanceId', # required
    #     contact_id: 'ContactId', # required
    #     initial_contact_id: 'InitialContactId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopContactRecordingOutput
    #
    def stop_contact_recording(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopContactRecordingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopContactRecordingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopContactRecording
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::StopContactRecording
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopContactRecording,
        stubs: @stubs,
        params_class: Params::StopContactRecordingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_contact_recording
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Ends message streaming on a specified contact. To restart message streaming on that
    #    contact, call the <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_StartContactStreaming.html">StartContactStreaming</a>
    #    API. </p>
    #
    # @param [Hash] params
    #   See {Types::StopContactStreamingInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :contact_id
    #   <p>The identifier of the contact. This is the identifier of the contact that is associated with
    #      the first interaction with the contact center.</p>
    #
    # @option params [String] :streaming_id
    #   <p>The identifier of the streaming configuration enabled. </p>
    #
    # @return [Types::StopContactStreamingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_contact_streaming(
    #     instance_id: 'InstanceId', # required
    #     contact_id: 'ContactId', # required
    #     streaming_id: 'StreamingId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopContactStreamingOutput
    #
    def stop_contact_streaming(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopContactStreamingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopContactStreamingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopContactStreaming
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::StopContactStreaming
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopContactStreaming,
        stubs: @stubs,
        params_class: Params::StopContactStreamingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_contact_streaming
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>When a contact is being recorded, this API suspends recording the call. For example, you
    #    might suspend the call recording while collecting sensitive information, such as a credit card
    #    number. Then use ResumeContactRecording to restart recording. </p>
    #          <p>The period of time that the recording is suspended is filled with silence in the final
    #    recording. </p>
    #          <p>Only voice recordings are supported at this time.</p>
    #
    # @param [Hash] params
    #   See {Types::SuspendContactRecordingInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :contact_id
    #   <p>The identifier of the contact.</p>
    #
    # @option params [String] :initial_contact_id
    #   <p>The identifier of the contact. This is the identifier of the contact associated with the
    #      first interaction with the contact center.</p>
    #
    # @return [Types::SuspendContactRecordingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.suspend_contact_recording(
    #     instance_id: 'InstanceId', # required
    #     contact_id: 'ContactId', # required
    #     initial_contact_id: 'InitialContactId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SuspendContactRecordingOutput
    #
    def suspend_contact_recording(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SuspendContactRecordingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SuspendContactRecordingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SuspendContactRecording
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::SuspendContactRecording
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SuspendContactRecording,
        stubs: @stubs,
        params_class: Params::SuspendContactRecordingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :suspend_contact_recording
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds the specified tags to the specified resource.</p>
    #          <p>The supported resource types are users, routing profiles, queues, quick connects, contact
    #    flows, agent status, hours of operation, phone number, security profiles, and task
    #    templates.</p>
    #          <p>For sample policies that use tags, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/security_iam_id-based-policy-examples.html">Amazon Connect Identity-Based
    #     Policy Examples</a> in the <i>Amazon Connect Administrator Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>One or more tags. For example, { "tags": {"key1":"value1", "key2":"value2"} }.</p>
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
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

    # <p>Transfers contacts from one agent or queue to another agent or queue at any point after a
    #    contact is created. You can transfer a contact to another queue by providing the contact flow
    #    which orchestrates the contact to the destination queue. This gives you more control over contact
    #    handling and helps you adhere to the service level agreement (SLA) guaranteed to your
    #    customers.</p>
    #          <p>Note the following requirements:</p>
    #          <ul>
    #             <li>
    #                <p>Transfer is supported for only <code>TASK</code> contacts.</p>
    #             </li>
    #             <li>
    #                <p>Do not use both <code>QueueId</code> and <code>UserId</code> in the same call.</p>
    #             </li>
    #             <li>
    #                <p>The following contact flow types are supported: Inbound contact flow, Transfer to agent
    #      flow, and Transfer to queue flow.</p>
    #             </li>
    #             <li>
    #                <p>The <code>TransferContact</code> API can be called only on active contacts.</p>
    #             </li>
    #             <li>
    #                <p>A contact cannot be transferred more than 11 times.</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::TransferContactInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :contact_id
    #   <p>The identifier of the contact in this instance of Amazon Connect. </p>
    #
    # @option params [String] :queue_id
    #   <p>The identifier for the queue.</p>
    #
    # @option params [String] :user_id
    #   <p>The identifier for the user.</p>
    #
    # @option params [String] :contact_flow_id
    #   <p>The identifier of the contact flow.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request.</p>
    #
    # @return [Types::TransferContactOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.transfer_contact(
    #     instance_id: 'InstanceId', # required
    #     contact_id: 'ContactId', # required
    #     queue_id: 'QueueId',
    #     user_id: 'UserId',
    #     contact_flow_id: 'ContactFlowId', # required
    #     client_token: 'ClientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::TransferContactOutput
    #   resp.data.contact_id #=> String
    #   resp.data.contact_arn #=> String
    #
    def transfer_contact(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TransferContactInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TransferContactInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TransferContact
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::IdempotencyException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidRequestException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::TransferContact
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::TransferContact,
        stubs: @stubs,
        params_class: Params::TransferContactOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :transfer_contact
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
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

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Updates agent status.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateAgentStatusInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :agent_status_id
    #   <p>The identifier of the agent status.</p>
    #
    # @option params [String] :name
    #   <p>The name of the agent status.</p>
    #
    # @option params [String] :description
    #   <p>The description of the agent status.</p>
    #
    # @option params [String] :state
    #   <p>The state of the agent status.</p>
    #
    # @option params [Integer] :display_order
    #   <p>The display order of the agent status.</p>
    #
    # @option params [Boolean] :reset_order_number
    #   <p>A number indicating the reset order of the agent status.</p>
    #
    # @return [Types::UpdateAgentStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_agent_status(
    #     instance_id: 'InstanceId', # required
    #     agent_status_id: 'AgentStatusId', # required
    #     name: 'Name',
    #     description: 'Description',
    #     state: 'ENABLED', # accepts ["ENABLED", "DISABLED"]
    #     display_order: 1,
    #     reset_order_number: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateAgentStatusOutput
    #
    def update_agent_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateAgentStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateAgentStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateAgentStatus
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException, Errors::LimitExceededException, Errors::DuplicateResourceException]),
        data_parser: Parsers::UpdateAgentStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateAgentStatus,
        stubs: @stubs,
        params_class: Params::UpdateAgentStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_agent_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Adds or updates user-defined contact information associated with the specified contact. At
    #    least one field to be updated must be present in the request.</p>
    #          <important>
    #             <p>You can add or update user-defined contact information for both ongoing and completed
    #     contacts.</p>
    #          </important>
    #
    # @param [Hash] params
    #   See {Types::UpdateContactInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :contact_id
    #   <p>The identifier of the contact. This is the identifier of the contact associated with the
    #      first interaction with your contact center.</p>
    #
    # @option params [String] :name
    #   <p>The name of the contact.</p>
    #
    # @option params [String] :description
    #   <p>The description of the contact.</p>
    #
    # @option params [Hash<String, Reference>] :references
    #   <p>Well-formed data on contact, shown to agents on Contact Control Panel (CCP).</p>
    #
    # @return [Types::UpdateContactOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_contact(
    #     instance_id: 'InstanceId', # required
    #     contact_id: 'ContactId', # required
    #     name: 'Name',
    #     description: 'Description',
    #     references: {
    #       'key' => {
    #         value: 'Value', # required
    #         type: 'URL' # required - accepts ["URL", "ATTACHMENT", "NUMBER", "STRING", "DATE", "EMAIL"]
    #       }
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateContactOutput
    #
    def update_contact(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateContactInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateContactInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateContact
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::UpdateContact
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateContact,
        stubs: @stubs,
        params_class: Params::UpdateContactOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_contact
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates or updates
    #    user-defined contact attributes
    #    associated with the specified contact.</p>
    #          <p>You can create or update user-defined attributes for both ongoing and completed contacts.
    #    For example, while the call is active, you can update the customer's name or the reason the
    #    customer called. You can add notes about steps that the agent took during the call that display
    #    to the next agent that takes the call. You can also update attributes for a contact using data
    #    from your CRM application and save the data with the contact in Amazon Connect. You could also flag calls
    #    for additional analysis, such as legal review or to identify abusive callers.</p>
    #          <p>Contact attributes are available in Amazon Connect for 24 months, and are then deleted. For
    #    information about CTR retention and the maximum size of the CTR attributes section, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html#feature-limits">Feature
    #     specifications</a> in the <i>Amazon Connect Administrator Guide</i>. </p>
    #
    #          <p>
    #             <b>Important:</b> You cannot use the operation to update
    #    attributes for contacts that occurred prior to the release of the API, which was September 12,
    #    2018. You can update attributes only for contacts that started after the release of the API. If
    #    you attempt to update attributes for a contact that occurred prior to the release of the API, a
    #    400 error is returned. This applies also to queued callbacks that were initiated prior to the
    #    release of the API but are still active in your instance.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateContactAttributesInput}.
    #
    # @option params [String] :initial_contact_id
    #   <p>The identifier of the contact. This is the identifier of the contact associated with the
    #      first interaction with the contact center.</p>
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [Hash<String, String>] :attributes
    #   <p>The Amazon Connect attributes. These attributes can be accessed in contact flows just like any other
    #      contact attributes.</p>
    #            <p>You can have up to 32,768 UTF-8 bytes across all attributes for a contact. Attribute keys
    #      can include only alphanumeric, dash, and underscore characters.</p>
    #
    # @return [Types::UpdateContactAttributesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_contact_attributes(
    #     initial_contact_id: 'InitialContactId', # required
    #     instance_id: 'InstanceId', # required
    #     attributes: {
    #       'key' => 'value'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateContactAttributesOutput
    #
    def update_contact_attributes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateContactAttributesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateContactAttributesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateContactAttributes
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::UpdateContactAttributes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateContactAttributes,
        stubs: @stubs,
        params_class: Params::UpdateContactAttributesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_contact_attributes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the specified contact flow.</p>
    #          <p>You can also create and update contact flows using the <a href="https://docs.aws.amazon.com/connect/latest/adminguide/flow-language.html">Amazon Connect
    #    Flow language</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateContactFlowContentInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance.</p>
    #
    # @option params [String] :contact_flow_id
    #   <p>The identifier of the contact flow.</p>
    #
    # @option params [String] :content
    #   <p>The JSON string that represents contact flow’s content. For an example, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/flow-language-example.html">Example contact
    #       flow in Amazon Connect Flow language</a> in the <i>Amazon Connect Administrator Guide</i>.
    #     </p>
    #
    # @return [Types::UpdateContactFlowContentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_contact_flow_content(
    #     instance_id: 'InstanceId', # required
    #     contact_flow_id: 'ContactFlowId', # required
    #     content: 'Content' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateContactFlowContentOutput
    #
    def update_contact_flow_content(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateContactFlowContentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateContactFlowContentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateContactFlowContent
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException, Errors::InvalidContactFlowException]),
        data_parser: Parsers::UpdateContactFlowContent
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateContactFlowContent,
        stubs: @stubs,
        params_class: Params::UpdateContactFlowContentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_contact_flow_content
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates metadata about specified contact flow.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateContactFlowMetadataInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :contact_flow_id
    #   <p>The identifier of the contact flow.</p>
    #
    # @option params [String] :name
    #   <p>TThe name of the contact flow.</p>
    #
    # @option params [String] :description
    #   <p>The description of the contact flow.</p>
    #
    # @option params [String] :contact_flow_state
    #   <p>The state of contact flow.</p>
    #
    # @return [Types::UpdateContactFlowMetadataOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_contact_flow_metadata(
    #     instance_id: 'InstanceId', # required
    #     contact_flow_id: 'ContactFlowId', # required
    #     name: 'Name',
    #     description: 'Description',
    #     contact_flow_state: 'ACTIVE' # accepts ["ACTIVE", "ARCHIVED"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateContactFlowMetadataOutput
    #
    def update_contact_flow_metadata(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateContactFlowMetadataInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateContactFlowMetadataInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateContactFlowMetadata
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException, Errors::DuplicateResourceException]),
        data_parser: Parsers::UpdateContactFlowMetadata
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateContactFlowMetadata,
        stubs: @stubs,
        params_class: Params::UpdateContactFlowMetadataOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_contact_flow_metadata
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates specified contact flow module for the specified Amazon Connect instance. </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateContactFlowModuleContentInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :contact_flow_module_id
    #   <p>The identifier of the contact flow module.</p>
    #
    # @option params [String] :content
    #   <p>The content of the contact flow module.</p>
    #
    # @return [Types::UpdateContactFlowModuleContentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_contact_flow_module_content(
    #     instance_id: 'InstanceId', # required
    #     contact_flow_module_id: 'ContactFlowModuleId', # required
    #     content: 'Content' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateContactFlowModuleContentOutput
    #
    def update_contact_flow_module_content(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateContactFlowModuleContentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateContactFlowModuleContentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateContactFlowModuleContent
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidRequestException, Errors::InvalidContactFlowModuleException]),
        data_parser: Parsers::UpdateContactFlowModuleContent
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateContactFlowModuleContent,
        stubs: @stubs,
        params_class: Params::UpdateContactFlowModuleContentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_contact_flow_module_content
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates metadata about specified contact flow module.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateContactFlowModuleMetadataInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :contact_flow_module_id
    #   <p>The identifier of the contact flow module.</p>
    #
    # @option params [String] :name
    #   <p>The name of the contact flow module.</p>
    #
    # @option params [String] :description
    #   <p>The description of the contact flow module.</p>
    #
    # @option params [String] :state
    #   <p>The state of contact flow module.</p>
    #
    # @return [Types::UpdateContactFlowModuleMetadataOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_contact_flow_module_metadata(
    #     instance_id: 'InstanceId', # required
    #     contact_flow_module_id: 'ContactFlowModuleId', # required
    #     name: 'Name',
    #     description: 'Description',
    #     state: 'ACTIVE' # accepts ["ACTIVE", "ARCHIVED"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateContactFlowModuleMetadataOutput
    #
    def update_contact_flow_module_metadata(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateContactFlowModuleMetadataInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateContactFlowModuleMetadataInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateContactFlowModuleMetadata
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException, Errors::DuplicateResourceException]),
        data_parser: Parsers::UpdateContactFlowModuleMetadata
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateContactFlowModuleMetadata,
        stubs: @stubs,
        params_class: Params::UpdateContactFlowModuleMetadataOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_contact_flow_module_metadata
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>The name of the contact flow.</p>
    #          <p>You can also create and update contact flows using the <a href="https://docs.aws.amazon.com/connect/latest/adminguide/flow-language.html">Amazon Connect
    #    Flow language</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateContactFlowNameInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance.</p>
    #
    # @option params [String] :contact_flow_id
    #   <p>The identifier of the contact flow.</p>
    #
    # @option params [String] :name
    #   <p>The name of the contact flow.</p>
    #
    # @option params [String] :description
    #   <p>The description of the contact flow.</p>
    #
    # @return [Types::UpdateContactFlowNameOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_contact_flow_name(
    #     instance_id: 'InstanceId', # required
    #     contact_flow_id: 'ContactFlowId', # required
    #     name: 'Name',
    #     description: 'Description'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateContactFlowNameOutput
    #
    def update_contact_flow_name(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateContactFlowNameInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateContactFlowNameInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateContactFlowName
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException, Errors::DuplicateResourceException]),
        data_parser: Parsers::UpdateContactFlowName
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateContactFlowName,
        stubs: @stubs,
        params_class: Params::UpdateContactFlowNameOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_contact_flow_name
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the scheduled time of a task contact that is already scheduled.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateContactScheduleInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :contact_id
    #   <p>The identifier of the contact.</p>
    #
    # @option params [Time] :scheduled_time
    #   <p>The timestamp, in Unix Epoch seconds format, at which to start running the inbound contact flow. The scheduled time cannot be in the past. It must be within up to 6 days in future. </p>
    #
    # @return [Types::UpdateContactScheduleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_contact_schedule(
    #     instance_id: 'InstanceId', # required
    #     contact_id: 'ContactId', # required
    #     scheduled_time: Time.now # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateContactScheduleOutput
    #
    def update_contact_schedule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateContactScheduleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateContactScheduleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateContactSchedule
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException, Errors::LimitExceededException]),
        data_parser: Parsers::UpdateContactSchedule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateContactSchedule,
        stubs: @stubs,
        params_class: Params::UpdateContactScheduleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_contact_schedule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Updates the hours of operation.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateHoursOfOperationInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :hours_of_operation_id
    #   <p>The identifier of the hours of operation.</p>
    #
    # @option params [String] :name
    #   <p>The name of the hours of operation.</p>
    #
    # @option params [String] :description
    #   <p>The description of the hours of operation.</p>
    #
    # @option params [String] :time_zone
    #   <p>The time zone of the hours of operation.</p>
    #
    # @option params [Array<HoursOfOperationConfig>] :config
    #   <p>Configuration information of the hours of operation.</p>
    #
    # @return [Types::UpdateHoursOfOperationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_hours_of_operation(
    #     instance_id: 'InstanceId', # required
    #     hours_of_operation_id: 'HoursOfOperationId', # required
    #     name: 'Name',
    #     description: 'Description',
    #     time_zone: 'TimeZone',
    #     config: [
    #       {
    #         day: 'SUNDAY', # required - accepts ["SUNDAY", "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY"]
    #         start_time: {
    #           hours: 1, # required
    #           minutes: 1 # required
    #         }, # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateHoursOfOperationOutput
    #
    def update_hours_of_operation(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateHoursOfOperationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateHoursOfOperationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateHoursOfOperation
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException, Errors::DuplicateResourceException]),
        data_parser: Parsers::UpdateHoursOfOperation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateHoursOfOperation,
        stubs: @stubs,
        params_class: Params::UpdateHoursOfOperationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_hours_of_operation
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Updates the value for the specified attribute type.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateInstanceAttributeInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :attribute_type
    #   <p>The type of attribute.</p>
    #            <note>
    #               <p>Only allowlisted customers can consume USE_CUSTOM_TTS_VOICES. To access this feature,
    #       contact Amazon Web Services Support for allowlisting.</p>
    #            </note>
    #
    # @option params [String] :value
    #   <p>The value for the attribute. Maximum character limit is 100. </p>
    #
    # @return [Types::UpdateInstanceAttributeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_instance_attribute(
    #     instance_id: 'InstanceId', # required
    #     attribute_type: 'INBOUND_CALLS', # required - accepts ["INBOUND_CALLS", "OUTBOUND_CALLS", "CONTACTFLOW_LOGS", "CONTACT_LENS", "AUTO_RESOLVE_BEST_VOICES", "USE_CUSTOM_TTS_VOICES", "EARLY_MEDIA", "MULTI_PARTY_CONFERENCE"]
    #     value: 'Value' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateInstanceAttributeOutput
    #
    def update_instance_attribute(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateInstanceAttributeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateInstanceAttributeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateInstanceAttribute
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::UpdateInstanceAttribute
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateInstanceAttribute,
        stubs: @stubs,
        params_class: Params::UpdateInstanceAttributeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_instance_attribute
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Updates an existing configuration for a resource type. This API is idempotent.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateInstanceStorageConfigInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :association_id
    #   <p>The existing association identifier that uniquely identifies the resource type and storage config for the given instance ID.</p>
    #
    # @option params [String] :resource_type
    #   <p>A valid resource type.</p>
    #
    # @option params [InstanceStorageConfig] :storage_config
    #   <p>The storage configuration for the instance.</p>
    #
    # @return [Types::UpdateInstanceStorageConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_instance_storage_config(
    #     instance_id: 'InstanceId', # required
    #     association_id: 'AssociationId', # required
    #     resource_type: 'CHAT_TRANSCRIPTS', # required - accepts ["CHAT_TRANSCRIPTS", "CALL_RECORDINGS", "SCHEDULED_REPORTS", "MEDIA_STREAMS", "CONTACT_TRACE_RECORDS", "AGENT_EVENTS", "REAL_TIME_CONTACT_ANALYSIS_SEGMENTS"]
    #     storage_config: {
    #       association_id: 'AssociationId',
    #       storage_type: 'S3', # required - accepts ["S3", "KINESIS_VIDEO_STREAM", "KINESIS_STREAM", "KINESIS_FIREHOSE"]
    #       s3_config: {
    #         bucket_name: 'BucketName', # required
    #         bucket_prefix: 'BucketPrefix', # required
    #         encryption_config: {
    #           encryption_type: 'KMS', # required - accepts ["KMS"]
    #           key_id: 'KeyId' # required
    #         }
    #       },
    #       kinesis_video_stream_config: {
    #         prefix: 'Prefix', # required
    #         retention_period_hours: 1, # required
    #       },
    #       kinesis_stream_config: {
    #         stream_arn: 'StreamArn' # required
    #       },
    #       kinesis_firehose_config: {
    #         firehose_arn: 'FirehoseArn' # required
    #       }
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateInstanceStorageConfigOutput
    #
    def update_instance_storage_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateInstanceStorageConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateInstanceStorageConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateInstanceStorageConfig
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::UpdateInstanceStorageConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateInstanceStorageConfig,
        stubs: @stubs,
        params_class: Params::UpdateInstanceStorageConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_instance_storage_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates your claimed phone number from its current Amazon Connect instance to another Amazon Connect instance
    #    in the same Region.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdatePhoneNumberInput}.
    #
    # @option params [String] :phone_number_id
    #   <p>A unique identifier for the phone number.</p>
    #
    # @option params [String] :target_arn
    #   <p>The Amazon Resource Name (ARN) for Amazon Connect instances that phone numbers are claimed to.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request.</p>
    #
    # @return [Types::UpdatePhoneNumberOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_phone_number(
    #     phone_number_id: 'PhoneNumberId', # required
    #     target_arn: 'TargetArn', # required
    #     client_token: 'ClientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdatePhoneNumberOutput
    #   resp.data.phone_number_id #=> String
    #   resp.data.phone_number_arn #=> String
    #
    def update_phone_number(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdatePhoneNumberInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdatePhoneNumberInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdatePhoneNumber
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::IdempotencyException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::ResourceInUseException]),
        data_parser: Parsers::UpdatePhoneNumber
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdatePhoneNumber,
        stubs: @stubs,
        params_class: Params::UpdatePhoneNumberOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_phone_number
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Updates the hours of operation for the specified queue.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateQueueHoursOfOperationInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :queue_id
    #   <p>The identifier for the queue.</p>
    #
    # @option params [String] :hours_of_operation_id
    #   <p>The identifier for the hours of operation.</p>
    #
    # @return [Types::UpdateQueueHoursOfOperationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_queue_hours_of_operation(
    #     instance_id: 'InstanceId', # required
    #     queue_id: 'QueueId', # required
    #     hours_of_operation_id: 'HoursOfOperationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateQueueHoursOfOperationOutput
    #
    def update_queue_hours_of_operation(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateQueueHoursOfOperationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateQueueHoursOfOperationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateQueueHoursOfOperation
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::UpdateQueueHoursOfOperation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateQueueHoursOfOperation,
        stubs: @stubs,
        params_class: Params::UpdateQueueHoursOfOperationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_queue_hours_of_operation
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Updates the maximum number of contacts allowed in a queue before it is considered
    #    full.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateQueueMaxContactsInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :queue_id
    #   <p>The identifier for the queue.</p>
    #
    # @option params [Integer] :max_contacts
    #   <p>The maximum number of contacts that can be in the queue before it is considered full.</p>
    #
    # @return [Types::UpdateQueueMaxContactsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_queue_max_contacts(
    #     instance_id: 'InstanceId', # required
    #     queue_id: 'QueueId', # required
    #     max_contacts: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateQueueMaxContactsOutput
    #
    def update_queue_max_contacts(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateQueueMaxContactsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateQueueMaxContactsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateQueueMaxContacts
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::UpdateQueueMaxContacts
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateQueueMaxContacts,
        stubs: @stubs,
        params_class: Params::UpdateQueueMaxContactsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_queue_max_contacts
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Updates the name and description of a queue. At least <code>Name</code> or <code>Description</code> must be provided.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateQueueNameInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :queue_id
    #   <p>The identifier for the queue.</p>
    #
    # @option params [String] :name
    #   <p>The name of the queue.</p>
    #
    # @option params [String] :description
    #   <p>The description of the queue.</p>
    #
    # @return [Types::UpdateQueueNameOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_queue_name(
    #     instance_id: 'InstanceId', # required
    #     queue_id: 'QueueId', # required
    #     name: 'Name',
    #     description: 'Description'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateQueueNameOutput
    #
    def update_queue_name(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateQueueNameInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateQueueNameInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateQueueName
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException, Errors::DuplicateResourceException]),
        data_parser: Parsers::UpdateQueueName
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateQueueName,
        stubs: @stubs,
        params_class: Params::UpdateQueueNameOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_queue_name
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Updates the outbound caller ID name, number, and outbound whisper flow for a specified
    #    queue.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateQueueOutboundCallerConfigInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :queue_id
    #   <p>The identifier for the queue.</p>
    #
    # @option params [OutboundCallerConfig] :outbound_caller_config
    #   <p>The outbound caller ID name, number, and outbound whisper flow.</p>
    #
    # @return [Types::UpdateQueueOutboundCallerConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_queue_outbound_caller_config(
    #     instance_id: 'InstanceId', # required
    #     queue_id: 'QueueId', # required
    #     outbound_caller_config: {
    #       outbound_caller_id_name: 'OutboundCallerIdName',
    #       outbound_caller_id_number_id: 'OutboundCallerIdNumberId',
    #       outbound_flow_id: 'OutboundFlowId'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateQueueOutboundCallerConfigOutput
    #
    def update_queue_outbound_caller_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateQueueOutboundCallerConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateQueueOutboundCallerConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateQueueOutboundCallerConfig
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::UpdateQueueOutboundCallerConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateQueueOutboundCallerConfig,
        stubs: @stubs,
        params_class: Params::UpdateQueueOutboundCallerConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_queue_outbound_caller_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Updates the status of the queue.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateQueueStatusInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :queue_id
    #   <p>The identifier for the queue.</p>
    #
    # @option params [String] :status
    #   <p>The status of the queue.</p>
    #
    # @return [Types::UpdateQueueStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_queue_status(
    #     instance_id: 'InstanceId', # required
    #     queue_id: 'QueueId', # required
    #     status: 'ENABLED' # required - accepts ["ENABLED", "DISABLED"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateQueueStatusOutput
    #
    def update_queue_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateQueueStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateQueueStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateQueueStatus
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::UpdateQueueStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateQueueStatus,
        stubs: @stubs,
        params_class: Params::UpdateQueueStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_queue_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the configuration settings for the specified quick connect.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateQuickConnectConfigInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :quick_connect_id
    #   <p>The identifier for the quick connect.</p>
    #
    # @option params [QuickConnectConfig] :quick_connect_config
    #   <p>Information about the configuration settings for the quick connect.</p>
    #
    # @return [Types::UpdateQuickConnectConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_quick_connect_config(
    #     instance_id: 'InstanceId', # required
    #     quick_connect_id: 'QuickConnectId', # required
    #     quick_connect_config: {
    #       quick_connect_type: 'USER', # required - accepts ["USER", "QUEUE", "PHONE_NUMBER"]
    #       user_config: {
    #         user_id: 'UserId', # required
    #         contact_flow_id: 'ContactFlowId' # required
    #       },
    #       queue_config: {
    #         queue_id: 'QueueId', # required
    #         contact_flow_id: 'ContactFlowId' # required
    #       },
    #       phone_config: {
    #         phone_number: 'PhoneNumber' # required
    #       }
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateQuickConnectConfigOutput
    #
    def update_quick_connect_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateQuickConnectConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateQuickConnectConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateQuickConnectConfig
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::UpdateQuickConnectConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateQuickConnectConfig,
        stubs: @stubs,
        params_class: Params::UpdateQuickConnectConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_quick_connect_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the name and description of a quick connect. The request accepts the following data in JSON format. At least <code>Name</code> or <code>Description</code> must be provided.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateQuickConnectNameInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :quick_connect_id
    #   <p>The identifier for the quick connect.</p>
    #
    # @option params [String] :name
    #   <p>The name of the quick connect.</p>
    #
    # @option params [String] :description
    #   <p>The description of the quick connect.</p>
    #
    # @return [Types::UpdateQuickConnectNameOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_quick_connect_name(
    #     instance_id: 'InstanceId', # required
    #     quick_connect_id: 'QuickConnectId', # required
    #     name: 'Name',
    #     description: 'Description'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateQuickConnectNameOutput
    #
    def update_quick_connect_name(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateQuickConnectNameInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateQuickConnectNameInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateQuickConnectName
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::UpdateQuickConnectName
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateQuickConnectName,
        stubs: @stubs,
        params_class: Params::UpdateQuickConnectNameOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_quick_connect_name
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the channels that agents can handle in the Contact Control Panel (CCP) for a routing
    #    profile.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateRoutingProfileConcurrencyInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :routing_profile_id
    #   <p>The identifier of the routing profile.</p>
    #
    # @option params [Array<MediaConcurrency>] :media_concurrencies
    #   <p>The channels that agents can handle in the Contact Control Panel (CCP).</p>
    #
    # @return [Types::UpdateRoutingProfileConcurrencyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_routing_profile_concurrency(
    #     instance_id: 'InstanceId', # required
    #     routing_profile_id: 'RoutingProfileId', # required
    #     media_concurrencies: [
    #       {
    #         channel: 'VOICE', # required - accepts ["VOICE", "CHAT", "TASK"]
    #         concurrency: 1 # required
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateRoutingProfileConcurrencyOutput
    #
    def update_routing_profile_concurrency(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateRoutingProfileConcurrencyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateRoutingProfileConcurrencyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateRoutingProfileConcurrency
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::UpdateRoutingProfileConcurrency
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateRoutingProfileConcurrency,
        stubs: @stubs,
        params_class: Params::UpdateRoutingProfileConcurrencyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_routing_profile_concurrency
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the default outbound queue of a routing profile.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateRoutingProfileDefaultOutboundQueueInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :routing_profile_id
    #   <p>The identifier of the routing profile.</p>
    #
    # @option params [String] :default_outbound_queue_id
    #   <p>The identifier for the default outbound queue.</p>
    #
    # @return [Types::UpdateRoutingProfileDefaultOutboundQueueOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_routing_profile_default_outbound_queue(
    #     instance_id: 'InstanceId', # required
    #     routing_profile_id: 'RoutingProfileId', # required
    #     default_outbound_queue_id: 'DefaultOutboundQueueId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateRoutingProfileDefaultOutboundQueueOutput
    #
    def update_routing_profile_default_outbound_queue(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateRoutingProfileDefaultOutboundQueueInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateRoutingProfileDefaultOutboundQueueInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateRoutingProfileDefaultOutboundQueue
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::UpdateRoutingProfileDefaultOutboundQueue
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateRoutingProfileDefaultOutboundQueue,
        stubs: @stubs,
        params_class: Params::UpdateRoutingProfileDefaultOutboundQueueOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_routing_profile_default_outbound_queue
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the name and description of a routing profile. The request accepts the following data in JSON format.
    #    At least <code>Name</code> or <code>Description</code> must be provided.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateRoutingProfileNameInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :routing_profile_id
    #   <p>The identifier of the routing profile.</p>
    #
    # @option params [String] :name
    #   <p>The name of the routing profile. Must not be more than 127 characters.</p>
    #
    # @option params [String] :description
    #   <p>The description of the routing profile. Must not be more than 250 characters.</p>
    #
    # @return [Types::UpdateRoutingProfileNameOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_routing_profile_name(
    #     instance_id: 'InstanceId', # required
    #     routing_profile_id: 'RoutingProfileId', # required
    #     name: 'Name',
    #     description: 'Description'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateRoutingProfileNameOutput
    #
    def update_routing_profile_name(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateRoutingProfileNameInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateRoutingProfileNameInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateRoutingProfileName
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException, Errors::DuplicateResourceException]),
        data_parser: Parsers::UpdateRoutingProfileName
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateRoutingProfileName,
        stubs: @stubs,
        params_class: Params::UpdateRoutingProfileNameOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_routing_profile_name
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the properties associated with a set of queues for a routing profile.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateRoutingProfileQueuesInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :routing_profile_id
    #   <p>The identifier of the routing profile.</p>
    #
    # @option params [Array<RoutingProfileQueueConfig>] :queue_configs
    #   <p>The queues to be updated for this routing profile.
    #      Queues must first be associated to the routing
    #      profile. You can do this using AssociateRoutingProfileQueues.</p>
    #
    # @return [Types::UpdateRoutingProfileQueuesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_routing_profile_queues(
    #     instance_id: 'InstanceId', # required
    #     routing_profile_id: 'RoutingProfileId', # required
    #     queue_configs: [
    #       {
    #         queue_reference: {
    #           queue_id: 'QueueId', # required
    #           channel: 'VOICE' # required - accepts ["VOICE", "CHAT", "TASK"]
    #         }, # required
    #         priority: 1, # required
    #         delay: 1 # required
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateRoutingProfileQueuesOutput
    #
    def update_routing_profile_queues(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateRoutingProfileQueuesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateRoutingProfileQueuesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateRoutingProfileQueues
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::UpdateRoutingProfileQueues
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateRoutingProfileQueues,
        stubs: @stubs,
        params_class: Params::UpdateRoutingProfileQueuesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_routing_profile_queues
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Updates a security profile.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateSecurityProfileInput}.
    #
    # @option params [String] :description
    #   <p>The description of the security profile.</p>
    #
    # @option params [Array<String>] :permissions
    #   <p>The permissions granted to a security profile.</p>
    #
    # @option params [String] :security_profile_id
    #   <p>The identifier for the security profle.</p>
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @return [Types::UpdateSecurityProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_security_profile(
    #     description: 'Description',
    #     permissions: [
    #       'member'
    #     ],
    #     security_profile_id: 'SecurityProfileId', # required
    #     instance_id: 'InstanceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateSecurityProfileOutput
    #
    def update_security_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateSecurityProfileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateSecurityProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateSecurityProfile
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::UpdateSecurityProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateSecurityProfile,
        stubs: @stubs,
        params_class: Params::UpdateSecurityProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_security_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates details about a specific task template in the specified Amazon Connect instance. This
    #    operation does not support partial updates. Instead it does a full update of template
    #    content.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateTaskTemplateInput}.
    #
    # @option params [String] :task_template_id
    #   <p>A unique identifier for the task template.</p>
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @option params [String] :name
    #   <p>The name of the task template.</p>
    #
    # @option params [String] :description
    #   <p>The description of the task template.</p>
    #
    # @option params [String] :contact_flow_id
    #   <p>The identifier of the flow that runs by default when a task is created by referencing this template.</p>
    #
    # @option params [TaskTemplateConstraints] :constraints
    #   <p>Constraints that are applicable to the fields listed.</p>
    #
    # @option params [TaskTemplateDefaults] :defaults
    #   <p>The default values for fields when a task is created by referencing this template.</p>
    #
    # @option params [String] :status
    #   <p>Marks a template as <code>ACTIVE</code> or <code>INACTIVE</code> for a task to refer to it.
    #   Tasks can only be created from <code>ACTIVE</code> templates.
    #   If a template is marked as <code>INACTIVE</code>, then a task that refers to this template cannot be created.</p>
    #
    # @option params [Array<TaskTemplateField>] :fields
    #   <p>Fields that are part of the template.</p>
    #
    # @return [Types::UpdateTaskTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_task_template(
    #     task_template_id: 'TaskTemplateId', # required
    #     instance_id: 'InstanceId', # required
    #     name: 'Name',
    #     description: 'Description',
    #     contact_flow_id: 'ContactFlowId',
    #     constraints: {
    #       required_fields: [
    #         {
    #           id: {
    #             name: 'Name'
    #           }
    #         }
    #       ],
    #       read_only_fields: [
    #         {
    #         }
    #       ],
    #       invisible_fields: [
    #         {
    #         }
    #       ]
    #     },
    #     defaults: {
    #       default_field_values: [
    #         {
    #           default_value: 'DefaultValue'
    #         }
    #       ]
    #     },
    #     status: 'ACTIVE', # accepts ["ACTIVE", "INACTIVE"]
    #     fields: [
    #       {
    #         description: 'Description',
    #         type: 'NAME', # accepts ["NAME", "DESCRIPTION", "SCHEDULED_TIME", "QUICK_CONNECT", "URL", "NUMBER", "TEXT", "TEXT_AREA", "DATE_TIME", "BOOLEAN", "SINGLE_SELECT", "EMAIL"]
    #         single_select_options: [
    #           'member'
    #         ]
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateTaskTemplateOutput
    #   resp.data.instance_id #=> String
    #   resp.data.id #=> String
    #   resp.data.arn #=> String
    #   resp.data.name #=> String
    #   resp.data.description #=> String
    #   resp.data.contact_flow_id #=> String
    #   resp.data.constraints #=> Types::TaskTemplateConstraints
    #   resp.data.constraints.required_fields #=> Array<RequiredFieldInfo>
    #   resp.data.constraints.required_fields[0] #=> Types::RequiredFieldInfo
    #   resp.data.constraints.required_fields[0].id #=> Types::TaskTemplateFieldIdentifier
    #   resp.data.constraints.required_fields[0].id.name #=> String
    #   resp.data.constraints.read_only_fields #=> Array<ReadOnlyFieldInfo>
    #   resp.data.constraints.read_only_fields[0] #=> Types::ReadOnlyFieldInfo
    #   resp.data.constraints.read_only_fields[0].id #=> Types::TaskTemplateFieldIdentifier
    #   resp.data.constraints.invisible_fields #=> Array<InvisibleFieldInfo>
    #   resp.data.constraints.invisible_fields[0] #=> Types::InvisibleFieldInfo
    #   resp.data.constraints.invisible_fields[0].id #=> Types::TaskTemplateFieldIdentifier
    #   resp.data.defaults #=> Types::TaskTemplateDefaults
    #   resp.data.defaults.default_field_values #=> Array<TaskTemplateDefaultFieldValue>
    #   resp.data.defaults.default_field_values[0] #=> Types::TaskTemplateDefaultFieldValue
    #   resp.data.defaults.default_field_values[0].id #=> Types::TaskTemplateFieldIdentifier
    #   resp.data.defaults.default_field_values[0].default_value #=> String
    #   resp.data.fields #=> Array<TaskTemplateField>
    #   resp.data.fields[0] #=> Types::TaskTemplateField
    #   resp.data.fields[0].id #=> Types::TaskTemplateFieldIdentifier
    #   resp.data.fields[0].description #=> String
    #   resp.data.fields[0].type #=> String, one of ["NAME", "DESCRIPTION", "SCHEDULED_TIME", "QUICK_CONNECT", "URL", "NUMBER", "TEXT", "TEXT_AREA", "DATE_TIME", "BOOLEAN", "SINGLE_SELECT", "EMAIL"]
    #   resp.data.fields[0].single_select_options #=> Array<String>
    #   resp.data.fields[0].single_select_options[0] #=> String
    #   resp.data.status #=> String, one of ["ACTIVE", "INACTIVE"]
    #   resp.data.last_modified_time #=> Time
    #   resp.data.created_time #=> Time
    #
    def update_task_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateTaskTemplateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateTaskTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateTaskTemplate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::PropertyValidationException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::UpdateTaskTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateTaskTemplate,
        stubs: @stubs,
        params_class: Params::UpdateTaskTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_task_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Assigns the specified hierarchy group to the specified user.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateUserHierarchyInput}.
    #
    # @option params [String] :hierarchy_group_id
    #   <p>The identifier of the hierarchy group.</p>
    #
    # @option params [String] :user_id
    #   <p>The identifier of the user account.</p>
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @return [Types::UpdateUserHierarchyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user_hierarchy(
    #     hierarchy_group_id: 'HierarchyGroupId',
    #     user_id: 'UserId', # required
    #     instance_id: 'InstanceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateUserHierarchyOutput
    #
    def update_user_hierarchy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateUserHierarchyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateUserHierarchyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateUserHierarchy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::UpdateUserHierarchy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateUserHierarchy,
        stubs: @stubs,
        params_class: Params::UpdateUserHierarchyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_user_hierarchy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the name of the user hierarchy group. </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateUserHierarchyGroupNameInput}.
    #
    # @option params [String] :name
    #   <p>The name of the hierarchy group. Must not be more than 100 characters.</p>
    #
    # @option params [String] :hierarchy_group_id
    #   <p>The identifier of the hierarchy group.</p>
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @return [Types::UpdateUserHierarchyGroupNameOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user_hierarchy_group_name(
    #     name: 'Name', # required
    #     hierarchy_group_id: 'HierarchyGroupId', # required
    #     instance_id: 'InstanceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateUserHierarchyGroupNameOutput
    #
    def update_user_hierarchy_group_name(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateUserHierarchyGroupNameInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateUserHierarchyGroupNameInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateUserHierarchyGroupName
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException, Errors::DuplicateResourceException]),
        data_parser: Parsers::UpdateUserHierarchyGroupName
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateUserHierarchyGroupName,
        stubs: @stubs,
        params_class: Params::UpdateUserHierarchyGroupNameOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_user_hierarchy_group_name
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the user hierarchy structure: add, remove, and rename user hierarchy levels.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateUserHierarchyStructureInput}.
    #
    # @option params [HierarchyStructureUpdate] :hierarchy_structure
    #   <p>The hierarchy levels to update.</p>
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @return [Types::UpdateUserHierarchyStructureOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user_hierarchy_structure(
    #     hierarchy_structure: {
    #       level_one: {
    #         name: 'Name' # required
    #       },
    #     }, # required
    #     instance_id: 'InstanceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateUserHierarchyStructureOutput
    #
    def update_user_hierarchy_structure(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateUserHierarchyStructureInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateUserHierarchyStructureInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateUserHierarchyStructure
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException, Errors::ResourceInUseException]),
        data_parser: Parsers::UpdateUserHierarchyStructure
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateUserHierarchyStructure,
        stubs: @stubs,
        params_class: Params::UpdateUserHierarchyStructureOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_user_hierarchy_structure
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the identity information for the specified user.</p>
    #          <important>
    #             <p>We strongly recommend limiting who has the ability to invoke
    #      <code>UpdateUserIdentityInfo</code>. Someone with that ability can change the login credentials
    #     of other users by changing their email address. This poses a security risk to your organization.
    #     They can change the email address of a user to the attacker's email address, and then reset the
    #     password through email. For more information, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/security-profile-best-practices.html">Best Practices for
    #      Security Profiles</a> in the <i>Amazon Connect Administrator Guide</i>.</p>
    #          </important>
    #
    # @param [Hash] params
    #   See {Types::UpdateUserIdentityInfoInput}.
    #
    # @option params [UserIdentityInfo] :identity_info
    #   <p>The identity information for the user.</p>
    #
    # @option params [String] :user_id
    #   <p>The identifier of the user account.</p>
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @return [Types::UpdateUserIdentityInfoOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user_identity_info(
    #     identity_info: {
    #       first_name: 'FirstName',
    #       last_name: 'LastName',
    #       email: 'Email'
    #     }, # required
    #     user_id: 'UserId', # required
    #     instance_id: 'InstanceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateUserIdentityInfoOutput
    #
    def update_user_identity_info(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateUserIdentityInfoInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateUserIdentityInfoInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateUserIdentityInfo
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::UpdateUserIdentityInfo
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateUserIdentityInfo,
        stubs: @stubs,
        params_class: Params::UpdateUserIdentityInfoOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_user_identity_info
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the phone configuration settings for the specified user.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateUserPhoneConfigInput}.
    #
    # @option params [UserPhoneConfig] :phone_config
    #   <p>Information about phone configuration settings for the user.</p>
    #
    # @option params [String] :user_id
    #   <p>The identifier of the user account.</p>
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @return [Types::UpdateUserPhoneConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user_phone_config(
    #     phone_config: {
    #       phone_type: 'SOFT_PHONE', # required - accepts ["SOFT_PHONE", "DESK_PHONE"]
    #       auto_accept: false,
    #       after_contact_work_time_limit: 1,
    #       desk_phone_number: 'DeskPhoneNumber'
    #     }, # required
    #     user_id: 'UserId', # required
    #     instance_id: 'InstanceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateUserPhoneConfigOutput
    #
    def update_user_phone_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateUserPhoneConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateUserPhoneConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateUserPhoneConfig
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::UpdateUserPhoneConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateUserPhoneConfig,
        stubs: @stubs,
        params_class: Params::UpdateUserPhoneConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_user_phone_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Assigns the specified routing profile to the specified user.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateUserRoutingProfileInput}.
    #
    # @option params [String] :routing_profile_id
    #   <p>The identifier of the routing profile for the user.</p>
    #
    # @option params [String] :user_id
    #   <p>The identifier of the user account.</p>
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @return [Types::UpdateUserRoutingProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user_routing_profile(
    #     routing_profile_id: 'RoutingProfileId', # required
    #     user_id: 'UserId', # required
    #     instance_id: 'InstanceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateUserRoutingProfileOutput
    #
    def update_user_routing_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateUserRoutingProfileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateUserRoutingProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateUserRoutingProfile
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::UpdateUserRoutingProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateUserRoutingProfile,
        stubs: @stubs,
        params_class: Params::UpdateUserRoutingProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_user_routing_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Assigns the specified security profiles to the specified user.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateUserSecurityProfilesInput}.
    #
    # @option params [Array<String>] :security_profile_ids
    #   <p>The identifiers of the security profiles for the user.</p>
    #
    # @option params [String] :user_id
    #   <p>The identifier of the user account.</p>
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.</p>
    #
    # @return [Types::UpdateUserSecurityProfilesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user_security_profiles(
    #     security_profile_ids: [
    #       'member'
    #     ], # required
    #     user_id: 'UserId', # required
    #     instance_id: 'InstanceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateUserSecurityProfilesOutput
    #
    def update_user_security_profiles(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateUserSecurityProfilesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateUserSecurityProfilesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateUserSecurityProfiles
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServiceException, Errors::InvalidParameterException, Errors::InvalidRequestException]),
        data_parser: Parsers::UpdateUserSecurityProfiles
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateUserSecurityProfiles,
        stubs: @stubs,
        params_class: Params::UpdateUserSecurityProfilesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_user_security_profiles
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
