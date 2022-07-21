# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::Comprehend
  # An API client for Comprehend_20171127
  # See {#initialize} for a full list of supported configuration options
  # <p>Amazon Comprehend is an AWS service for gaining insight into the content of documents.
  #       Use these actions to determine the topics contained in your documents, the topics they
  #       discuss, the predominant sentiment expressed in them, the predominant language used, and
  #       more.</p>
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
    def initialize(config = AWS::SDK::Comprehend::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Determines the dominant language of the input text for a batch of documents. For a list
    #       of languages that Amazon Comprehend can detect, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/how-languages.html">Amazon Comprehend Supported Languages</a>.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::BatchDetectDominantLanguageInput}.
    #
    # @option params [Array<String>] :text_list
    #   <p>A list containing the text of the input documents. The list can contain a maximum of 25
    #         documents. Each document should contain at least 20 characters and must contain fewer than
    #         5,000 bytes of UTF-8 encoded characters.</p>
    #
    # @return [Types::BatchDetectDominantLanguageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_detect_dominant_language(
    #     text_list: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchDetectDominantLanguageOutput
    #   resp.data.result_list #=> Array<BatchDetectDominantLanguageItemResult>
    #   resp.data.result_list[0] #=> Types::BatchDetectDominantLanguageItemResult
    #   resp.data.result_list[0].index #=> Integer
    #   resp.data.result_list[0].languages #=> Array<DominantLanguage>
    #   resp.data.result_list[0].languages[0] #=> Types::DominantLanguage
    #   resp.data.result_list[0].languages[0].language_code #=> String
    #   resp.data.result_list[0].languages[0].score #=> Float
    #   resp.data.error_list #=> Array<BatchItemError>
    #   resp.data.error_list[0] #=> Types::BatchItemError
    #   resp.data.error_list[0].index #=> Integer
    #   resp.data.error_list[0].error_code #=> String
    #   resp.data.error_list[0].error_message #=> String
    #
    def batch_detect_dominant_language(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchDetectDominantLanguageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchDetectDominantLanguageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchDetectDominantLanguage
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::BatchSizeLimitExceededException, Errors::TextSizeLimitExceededException, Errors::InvalidRequestException]),
        data_parser: Parsers::BatchDetectDominantLanguage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchDetectDominantLanguage,
        stubs: @stubs,
        params_class: Params::BatchDetectDominantLanguageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_detect_dominant_language
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Inspects the text of a batch of documents for named entities and returns information
    #       about them. For more information about named entities, see <a>how-entities</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::BatchDetectEntitiesInput}.
    #
    # @option params [Array<String>] :text_list
    #   <p>A list containing the text of the input documents. The list can contain a maximum of 25
    #         documents. Each document must contain fewer than 5,000 bytes of UTF-8 encoded
    #         characters.</p>
    #
    # @option params [String] :language_code
    #   <p>The language of the input documents. You can specify any of the primary languages
    #         supported by Amazon Comprehend. All documents must be in the same language.</p>
    #
    # @return [Types::BatchDetectEntitiesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_detect_entities(
    #     text_list: [
    #       'member'
    #     ], # required
    #     language_code: 'en' # required - accepts ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchDetectEntitiesOutput
    #   resp.data.result_list #=> Array<BatchDetectEntitiesItemResult>
    #   resp.data.result_list[0] #=> Types::BatchDetectEntitiesItemResult
    #   resp.data.result_list[0].index #=> Integer
    #   resp.data.result_list[0].entities #=> Array<Entity>
    #   resp.data.result_list[0].entities[0] #=> Types::Entity
    #   resp.data.result_list[0].entities[0].score #=> Float
    #   resp.data.result_list[0].entities[0].type #=> String, one of ["PERSON", "LOCATION", "ORGANIZATION", "COMMERCIAL_ITEM", "EVENT", "DATE", "QUANTITY", "TITLE", "OTHER"]
    #   resp.data.result_list[0].entities[0].text #=> String
    #   resp.data.result_list[0].entities[0].begin_offset #=> Integer
    #   resp.data.result_list[0].entities[0].end_offset #=> Integer
    #   resp.data.error_list #=> Array<BatchItemError>
    #   resp.data.error_list[0] #=> Types::BatchItemError
    #   resp.data.error_list[0].index #=> Integer
    #   resp.data.error_list[0].error_code #=> String
    #   resp.data.error_list[0].error_message #=> String
    #
    def batch_detect_entities(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchDetectEntitiesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchDetectEntitiesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchDetectEntities
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::BatchSizeLimitExceededException, Errors::UnsupportedLanguageException, Errors::TextSizeLimitExceededException, Errors::InvalidRequestException]),
        data_parser: Parsers::BatchDetectEntities
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchDetectEntities,
        stubs: @stubs,
        params_class: Params::BatchDetectEntitiesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_detect_entities
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Detects the key noun phrases found in a batch of documents.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchDetectKeyPhrasesInput}.
    #
    # @option params [Array<String>] :text_list
    #   <p>A list containing the text of the input documents. The list can contain a maximum of 25
    #         documents. Each document must contain fewer than 5,000 bytes of UTF-8 encoded
    #         characters.</p>
    #
    # @option params [String] :language_code
    #   <p>The language of the input documents. You can specify any of the primary languages
    #         supported by Amazon Comprehend. All documents must be in the same language.</p>
    #
    # @return [Types::BatchDetectKeyPhrasesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_detect_key_phrases(
    #     text_list: [
    #       'member'
    #     ], # required
    #     language_code: 'en' # required - accepts ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchDetectKeyPhrasesOutput
    #   resp.data.result_list #=> Array<BatchDetectKeyPhrasesItemResult>
    #   resp.data.result_list[0] #=> Types::BatchDetectKeyPhrasesItemResult
    #   resp.data.result_list[0].index #=> Integer
    #   resp.data.result_list[0].key_phrases #=> Array<KeyPhrase>
    #   resp.data.result_list[0].key_phrases[0] #=> Types::KeyPhrase
    #   resp.data.result_list[0].key_phrases[0].score #=> Float
    #   resp.data.result_list[0].key_phrases[0].text #=> String
    #   resp.data.result_list[0].key_phrases[0].begin_offset #=> Integer
    #   resp.data.result_list[0].key_phrases[0].end_offset #=> Integer
    #   resp.data.error_list #=> Array<BatchItemError>
    #   resp.data.error_list[0] #=> Types::BatchItemError
    #   resp.data.error_list[0].index #=> Integer
    #   resp.data.error_list[0].error_code #=> String
    #   resp.data.error_list[0].error_message #=> String
    #
    def batch_detect_key_phrases(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchDetectKeyPhrasesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchDetectKeyPhrasesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchDetectKeyPhrases
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::BatchSizeLimitExceededException, Errors::UnsupportedLanguageException, Errors::TextSizeLimitExceededException, Errors::InvalidRequestException]),
        data_parser: Parsers::BatchDetectKeyPhrases
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchDetectKeyPhrases,
        stubs: @stubs,
        params_class: Params::BatchDetectKeyPhrasesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_detect_key_phrases
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Inspects a batch of documents and returns an inference of the prevailing sentiment,
    #         <code>POSITIVE</code>, <code>NEUTRAL</code>, <code>MIXED</code>, or <code>NEGATIVE</code>,
    #       in each one.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchDetectSentimentInput}.
    #
    # @option params [Array<String>] :text_list
    #   <p>A list containing the text of the input documents. The list can contain a maximum of 25
    #         documents. Each document must contain fewer that 5,000 bytes of UTF-8 encoded
    #         characters.</p>
    #
    # @option params [String] :language_code
    #   <p>The language of the input documents. You can specify any of the primary languages
    #         supported by Amazon Comprehend. All documents must be in the same language.</p>
    #
    # @return [Types::BatchDetectSentimentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_detect_sentiment(
    #     text_list: [
    #       'member'
    #     ], # required
    #     language_code: 'en' # required - accepts ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchDetectSentimentOutput
    #   resp.data.result_list #=> Array<BatchDetectSentimentItemResult>
    #   resp.data.result_list[0] #=> Types::BatchDetectSentimentItemResult
    #   resp.data.result_list[0].index #=> Integer
    #   resp.data.result_list[0].sentiment #=> String, one of ["POSITIVE", "NEGATIVE", "NEUTRAL", "MIXED"]
    #   resp.data.result_list[0].sentiment_score #=> Types::SentimentScore
    #   resp.data.result_list[0].sentiment_score.positive #=> Float
    #   resp.data.result_list[0].sentiment_score.negative #=> Float
    #   resp.data.result_list[0].sentiment_score.neutral #=> Float
    #   resp.data.result_list[0].sentiment_score.mixed #=> Float
    #   resp.data.error_list #=> Array<BatchItemError>
    #   resp.data.error_list[0] #=> Types::BatchItemError
    #   resp.data.error_list[0].index #=> Integer
    #   resp.data.error_list[0].error_code #=> String
    #   resp.data.error_list[0].error_message #=> String
    #
    def batch_detect_sentiment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchDetectSentimentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchDetectSentimentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchDetectSentiment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::BatchSizeLimitExceededException, Errors::UnsupportedLanguageException, Errors::TextSizeLimitExceededException, Errors::InvalidRequestException]),
        data_parser: Parsers::BatchDetectSentiment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchDetectSentiment,
        stubs: @stubs,
        params_class: Params::BatchDetectSentimentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_detect_sentiment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Inspects the text of a batch of documents for the syntax and part of speech of the words
    #       in the document and returns information about them. For more information, see <a>how-syntax</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchDetectSyntaxInput}.
    #
    # @option params [Array<String>] :text_list
    #   <p>A list containing the text of the input documents. The list can contain a maximum of 25
    #         documents. Each document must contain fewer that 5,000 bytes of UTF-8 encoded
    #         characters.</p>
    #
    # @option params [String] :language_code
    #   <p>The language of the input documents. You can specify any of the following languages
    #         supported by Amazon Comprehend: German ("de"), English ("en"), Spanish ("es"), French ("fr"),
    #         Italian ("it"), or Portuguese ("pt"). All documents must be in the same language.</p>
    #
    # @return [Types::BatchDetectSyntaxOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_detect_syntax(
    #     text_list: [
    #       'member'
    #     ], # required
    #     language_code: 'en' # required - accepts ["en", "es", "fr", "de", "it", "pt"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchDetectSyntaxOutput
    #   resp.data.result_list #=> Array<BatchDetectSyntaxItemResult>
    #   resp.data.result_list[0] #=> Types::BatchDetectSyntaxItemResult
    #   resp.data.result_list[0].index #=> Integer
    #   resp.data.result_list[0].syntax_tokens #=> Array<SyntaxToken>
    #   resp.data.result_list[0].syntax_tokens[0] #=> Types::SyntaxToken
    #   resp.data.result_list[0].syntax_tokens[0].token_id #=> Integer
    #   resp.data.result_list[0].syntax_tokens[0].text #=> String
    #   resp.data.result_list[0].syntax_tokens[0].begin_offset #=> Integer
    #   resp.data.result_list[0].syntax_tokens[0].end_offset #=> Integer
    #   resp.data.result_list[0].syntax_tokens[0].part_of_speech #=> Types::PartOfSpeechTag
    #   resp.data.result_list[0].syntax_tokens[0].part_of_speech.tag #=> String, one of ["ADJ", "ADP", "ADV", "AUX", "CONJ", "CCONJ", "DET", "INTJ", "NOUN", "NUM", "O", "PART", "PRON", "PROPN", "PUNCT", "SCONJ", "SYM", "VERB"]
    #   resp.data.result_list[0].syntax_tokens[0].part_of_speech.score #=> Float
    #   resp.data.error_list #=> Array<BatchItemError>
    #   resp.data.error_list[0] #=> Types::BatchItemError
    #   resp.data.error_list[0].index #=> Integer
    #   resp.data.error_list[0].error_code #=> String
    #   resp.data.error_list[0].error_message #=> String
    #
    def batch_detect_syntax(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchDetectSyntaxInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchDetectSyntaxInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchDetectSyntax
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::BatchSizeLimitExceededException, Errors::UnsupportedLanguageException, Errors::TextSizeLimitExceededException, Errors::InvalidRequestException]),
        data_parser: Parsers::BatchDetectSyntax
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchDetectSyntax,
        stubs: @stubs,
        params_class: Params::BatchDetectSyntaxOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_detect_syntax
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new document classification request to analyze a single document in real-time,
    #       using a previously created and trained custom model and an endpoint.</p>
    #
    # @param [Hash] params
    #   See {Types::ClassifyDocumentInput}.
    #
    # @option params [String] :text
    #   <p>The document text to be analyzed.</p>
    #
    # @option params [String] :endpoint_arn
    #   <p>The Amazon Resource Number (ARN) of the endpoint. For information about endpoints, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/manage-endpoints.html">Managing endpoints</a>.</p>
    #
    # @return [Types::ClassifyDocumentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.classify_document(
    #     text: 'Text', # required
    #     endpoint_arn: 'EndpointArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ClassifyDocumentOutput
    #   resp.data.classes #=> Array<DocumentClass>
    #   resp.data.classes[0] #=> Types::DocumentClass
    #   resp.data.classes[0].name #=> String
    #   resp.data.classes[0].score #=> Float
    #   resp.data.labels #=> Array<DocumentLabel>
    #   resp.data.labels[0] #=> Types::DocumentLabel
    #   resp.data.labels[0].name #=> String
    #   resp.data.labels[0].score #=> Float
    #
    def classify_document(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ClassifyDocumentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ClassifyDocumentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ClassifyDocument
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceUnavailableException, Errors::TextSizeLimitExceededException, Errors::InvalidRequestException]),
        data_parser: Parsers::ClassifyDocument
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ClassifyDocument,
        stubs: @stubs,
        params_class: Params::ClassifyDocumentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :classify_document
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Analyzes input text for the presence of personally identifiable information (PII) and
    #       returns the labels of identified PII entity types such as name, address, bank account number,
    #       or phone number.</p>
    #
    # @param [Hash] params
    #   See {Types::ContainsPiiEntitiesInput}.
    #
    # @option params [String] :text
    #   <p>Creates a new document classification request to analyze a single document in real-time,
    #         returning personally identifiable information (PII) entity labels.</p>
    #
    # @option params [String] :language_code
    #   <p>The language of the input documents. Currently, English is the only valid language.</p>
    #
    # @return [Types::ContainsPiiEntitiesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.contains_pii_entities(
    #     text: 'Text', # required
    #     language_code: 'en' # required - accepts ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ContainsPiiEntitiesOutput
    #   resp.data.labels #=> Array<EntityLabel>
    #   resp.data.labels[0] #=> Types::EntityLabel
    #   resp.data.labels[0].name #=> String, one of ["BANK_ACCOUNT_NUMBER", "BANK_ROUTING", "CREDIT_DEBIT_NUMBER", "CREDIT_DEBIT_CVV", "CREDIT_DEBIT_EXPIRY", "PIN", "EMAIL", "ADDRESS", "NAME", "PHONE", "SSN", "DATE_TIME", "PASSPORT_NUMBER", "DRIVER_ID", "URL", "AGE", "USERNAME", "PASSWORD", "AWS_ACCESS_KEY", "AWS_SECRET_KEY", "IP_ADDRESS", "MAC_ADDRESS", "ALL", "LICENSE_PLATE", "VEHICLE_IDENTIFICATION_NUMBER", "UK_NATIONAL_INSURANCE_NUMBER", "CA_SOCIAL_INSURANCE_NUMBER", "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER", "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER", "IN_PERMANENT_ACCOUNT_NUMBER", "IN_NREGA", "INTERNATIONAL_BANK_ACCOUNT_NUMBER", "SWIFT_CODE", "UK_NATIONAL_HEALTH_SERVICE_NUMBER", "CA_HEALTH_NUMBER", "IN_AADHAAR", "IN_VOTER_NUMBER"]
    #   resp.data.labels[0].score #=> Float
    #
    def contains_pii_entities(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ContainsPiiEntitiesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ContainsPiiEntitiesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ContainsPiiEntities
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::UnsupportedLanguageException, Errors::TextSizeLimitExceededException, Errors::InvalidRequestException]),
        data_parser: Parsers::ContainsPiiEntities
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ContainsPiiEntities,
        stubs: @stubs,
        params_class: Params::ContainsPiiEntitiesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :contains_pii_entities
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new document classifier that you can use to categorize documents. To create a
    #       classifier, you provide a set of training documents that labeled with the categories that you
    #       want to use. After the classifier is trained you can use it to categorize a set of labeled
    #       documents into the categories. For more information, see <a>how-document-classification</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateDocumentClassifierInput}.
    #
    # @option params [String] :document_classifier_name
    #   <p>The name of the document classifier.</p>
    #
    # @option params [String] :version_name
    #   <p>The version name given to the newly created classifier. Version names can have a maximum
    #         of 256 characters. Alphanumeric characters, hyphens (-) and underscores (_) are allowed. The
    #         version name must be unique among all models with the same classifier name in the account/AWS
    #         Region.</p>
    #
    # @option params [String] :data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS Identity and Management (IAM) role that grants
    #         Amazon Comprehend read access to your input data.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Tags to be associated with the document classifier being created. A tag is a key-value
    #         pair that adds as a metadata to a resource used by Amazon Comprehend. For example, a tag with
    #         "Sales" as the key might be added to a resource to indicate its use by the sales department.
    #       </p>
    #
    # @option params [DocumentClassifierInputDataConfig] :input_data_config
    #   <p>Specifies the format and location of the input data for the job.</p>
    #
    # @option params [DocumentClassifierOutputDataConfig] :output_data_config
    #   <p>Enables the addition of output results configuration parameters for custom classifier
    #         jobs.</p>
    #
    # @option params [String] :client_request_token
    #   <p>A unique identifier for the request. If you don't set the client request token, Amazon
    #         Comprehend generates one.</p>
    #
    # @option params [String] :language_code
    #   <p>The language of the input documents. You can specify any of the following languages
    #         supported by Amazon Comprehend: German ("de"), English ("en"), Spanish ("es"), French ("fr"),
    #         Italian ("it"), or Portuguese ("pt"). All documents must be in the same language.</p>
    #
    # @option params [String] :volume_kms_key_id
    #   <p>ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
    #         data on the storage volume attached to the ML compute instance(s) that process the analysis
    #         job. The VolumeKmsKeyId can be either of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #               <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [VpcConfig] :vpc_config
    #   <p>Configuration parameters for an optional private Virtual Private Cloud (VPC) containing
    #         the resources you are using for your custom classifier. For more information, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html">Amazon
    #           VPC</a>. </p>
    #
    # @option params [String] :mode
    #   <p>Indicates the mode in which the classifier will be trained. The classifier can be trained
    #         in multi-class mode, which identifies one and only one class for each document, or multi-label
    #         mode, which identifies one or more labels for each document. In multi-label mode, multiple
    #         labels for an individual document are separated by a delimiter. The default delimiter between
    #         labels is a pipe (|).</p>
    #
    # @option params [String] :model_kms_key_id
    #   <p>ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
    #         trained custom models. The ModelKmsKeyId can be either of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #               <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :model_policy
    #   <p>The resource-based policy to attach to your custom document classifier model. You can use
    #         this policy to allow another AWS account to import your custom model.</p>
    #            <p>Provide your policy as a JSON body that you enter as a UTF-8 encoded string without line
    #         breaks. To provide valid JSON, enclose the attribute names and values in double quotes. If the
    #         JSON body is also enclosed in double quotes, then you must escape the double quotes that are
    #         inside the policy:</p>
    #            <p>
    #               <code>"{\"attribute\": \"value\", \"attribute\": [\"value\"]}"</code>
    #            </p>
    #            <p>To avoid escaping quotes, you can use single quotes to enclose the policy and double
    #         quotes to enclose the JSON names and values:</p>
    #            <p>
    #               <code>'{"attribute": "value", "attribute": ["value"]}'</code>
    #            </p>
    #
    # @return [Types::CreateDocumentClassifierOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_document_classifier(
    #     document_classifier_name: 'DocumentClassifierName', # required
    #     version_name: 'VersionName',
    #     data_access_role_arn: 'DataAccessRoleArn', # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value'
    #       }
    #     ],
    #     input_data_config: {
    #       data_format: 'COMPREHEND_CSV', # accepts ["COMPREHEND_CSV", "AUGMENTED_MANIFEST"]
    #       s3_uri: 'S3Uri',
    #       test_s3_uri: 'TestS3Uri',
    #       label_delimiter: 'LabelDelimiter',
    #       augmented_manifests: [
    #         {
    #           s3_uri: 'S3Uri', # required
    #           split: 'TRAIN', # accepts ["TRAIN", "TEST"]
    #           attribute_names: [
    #             'member'
    #           ], # required
    #           annotation_data_s3_uri: 'AnnotationDataS3Uri',
    #           source_documents_s3_uri: 'SourceDocumentsS3Uri',
    #           document_type: 'PLAIN_TEXT_DOCUMENT' # accepts ["PLAIN_TEXT_DOCUMENT", "SEMI_STRUCTURED_DOCUMENT"]
    #         }
    #       ]
    #     }, # required
    #     output_data_config: {
    #       s3_uri: 'S3Uri',
    #       kms_key_id: 'KmsKeyId'
    #     },
    #     client_request_token: 'ClientRequestToken',
    #     language_code: 'en', # required - accepts ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"]
    #     volume_kms_key_id: 'VolumeKmsKeyId',
    #     vpc_config: {
    #       security_group_ids: [
    #         'member'
    #       ], # required
    #       subnets: [
    #         'member'
    #       ] # required
    #     },
    #     mode: 'MULTI_CLASS', # accepts ["MULTI_CLASS", "MULTI_LABEL"]
    #     model_kms_key_id: 'ModelKmsKeyId',
    #     model_policy: 'ModelPolicy'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateDocumentClassifierOutput
    #   resp.data.document_classifier_arn #=> String
    #
    def create_document_classifier(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDocumentClassifierInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDocumentClassifierInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDocumentClassifier
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceLimitExceededException, Errors::InternalServerException, Errors::TooManyTagsException, Errors::UnsupportedLanguageException, Errors::KmsKeyValidationException, Errors::ResourceInUseException, Errors::TooManyRequestsException, Errors::InvalidRequestException]),
        data_parser: Parsers::CreateDocumentClassifier
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDocumentClassifier,
        stubs: @stubs,
        params_class: Params::CreateDocumentClassifierOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_document_classifier
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a model-specific endpoint for synchronous inference for a previously trained
    #       custom model
    #       For information about endpoints, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/manage-endpoints.html">Managing endpoints</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateEndpointInput}.
    #
    # @option params [String] :endpoint_name
    #   <p>This is the descriptive suffix that becomes part of the <code>EndpointArn</code> used for
    #         all subsequent requests to this resource. </p>
    #
    # @option params [String] :model_arn
    #   <p>The Amazon Resource Number (ARN) of the model to which the endpoint will be
    #         attached.</p>
    #
    # @option params [Integer] :desired_inference_units
    #   <p> The desired number of inference units to be used by the model using this endpoint.
    #
    #         Each inference unit represents of a throughput of 100 characters per second.</p>
    #
    # @option params [String] :client_request_token
    #   <p>An idempotency token provided by the customer. If this token matches a previous endpoint
    #         creation request, Amazon Comprehend will not return a <code>ResourceInUseException</code>.
    #       </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Tags associated with the endpoint being created. A tag is a key-value pair that adds
    #         metadata to the endpoint. For example, a tag with "Sales" as the key might be added to an
    #         endpoint to indicate its use by the sales department. </p>
    #
    # @option params [String] :data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS identity and Access Management (IAM) role that
    #         grants Amazon Comprehend read access to trained custom models encrypted with a customer
    #         managed key (ModelKmsKeyId).</p>
    #
    # @return [Types::CreateEndpointOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_endpoint(
    #     endpoint_name: 'EndpointName', # required
    #     model_arn: 'ModelArn', # required
    #     desired_inference_units: 1, # required
    #     client_request_token: 'ClientRequestToken',
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value'
    #       }
    #     ],
    #     data_access_role_arn: 'DataAccessRoleArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateEndpointOutput
    #   resp.data.endpoint_arn #=> String
    #
    def create_endpoint(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateEndpointInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateEndpointInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateEndpoint
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceLimitExceededException, Errors::InternalServerException, Errors::TooManyTagsException, Errors::ResourceUnavailableException, Errors::ResourceInUseException, Errors::TooManyRequestsException, Errors::InvalidRequestException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::CreateEndpoint
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateEndpoint,
        stubs: @stubs,
        params_class: Params::CreateEndpointOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_endpoint
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an entity recognizer using submitted files. After your
    #         <code>CreateEntityRecognizer</code> request is submitted, you can check job status using the
    #          API. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateEntityRecognizerInput}.
    #
    # @option params [String] :recognizer_name
    #   <p>The name given to the newly created recognizer. Recognizer names can be a maximum of 256
    #         characters. Alphanumeric characters, hyphens (-) and underscores (_) are allowed. The name
    #         must be unique in the account/region.</p>
    #
    # @option params [String] :version_name
    #   <p>The version name given to the newly created recognizer. Version names can be a maximum of
    #         256 characters. Alphanumeric characters, hyphens (-) and underscores (_) are allowed. The
    #         version name must be unique among all models with the same recognizer name in the account/ AWS
    #         Region.</p>
    #
    # @option params [String] :data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS Identity and Management (IAM) role that grants
    #         Amazon Comprehend read access to your input data.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Tags to be associated with the entity recognizer being created. A tag is a key-value pair
    #         that adds as a metadata to a resource used by Amazon Comprehend. For example, a tag with
    #         "Sales" as the key might be added to a resource to indicate its use by the sales department.
    #       </p>
    #
    # @option params [EntityRecognizerInputDataConfig] :input_data_config
    #   <p>Specifies the format and location of the input data. The S3 bucket containing the input
    #         data must be located in the same region as the entity recognizer being created. </p>
    #
    # @option params [String] :client_request_token
    #   <p> A unique identifier for the request. If you don't set the client request token, Amazon
    #         Comprehend generates one.</p>
    #
    # @option params [String] :language_code
    #   <p> You can specify any of the following languages supported by Amazon Comprehend: English
    #         ("en"), Spanish ("es"), French ("fr"), Italian ("it"), German ("de"), or Portuguese ("pt").
    #         All documents must be in the same language.</p>
    #
    # @option params [String] :volume_kms_key_id
    #   <p>ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
    #         data on the storage volume attached to the ML compute instance(s) that process the analysis
    #         job. The VolumeKmsKeyId can be either of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #               <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [VpcConfig] :vpc_config
    #   <p>Configuration parameters for an optional private Virtual Private Cloud (VPC) containing
    #         the resources you are using for your custom entity recognizer. For more information, see
    #         <a href="https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html">Amazon
    #           VPC</a>. </p>
    #
    # @option params [String] :model_kms_key_id
    #   <p>ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
    #         trained custom models. The ModelKmsKeyId can be either of the following formats</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #               <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :model_policy
    #   <p>The JSON resource-based policy to attach to your custom entity recognizer model. You can
    #         use this policy to allow another AWS account to import your custom model.</p>
    #            <p>Provide your JSON as a UTF-8 encoded string without line breaks. To provide valid JSON for
    #         your policy, enclose the attribute names and values in double quotes. If the JSON body is also
    #         enclosed in double quotes, then you must escape the double quotes that are inside the
    #         policy:</p>
    #            <p>
    #               <code>"{\"attribute\": \"value\", \"attribute\": [\"value\"]}"</code>
    #            </p>
    #            <p>To avoid escaping quotes, you can use single quotes to enclose the policy and double
    #         quotes to enclose the JSON names and values:</p>
    #            <p>
    #               <code>'{"attribute": "value", "attribute": ["value"]}'</code>
    #            </p>
    #
    # @return [Types::CreateEntityRecognizerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_entity_recognizer(
    #     recognizer_name: 'RecognizerName', # required
    #     version_name: 'VersionName',
    #     data_access_role_arn: 'DataAccessRoleArn', # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value'
    #       }
    #     ],
    #     input_data_config: {
    #       data_format: 'COMPREHEND_CSV', # accepts ["COMPREHEND_CSV", "AUGMENTED_MANIFEST"]
    #       entity_types: [
    #         {
    #           type: 'Type' # required
    #         }
    #       ], # required
    #       documents: {
    #         s3_uri: 'S3Uri', # required
    #         test_s3_uri: 'TestS3Uri',
    #         input_format: 'ONE_DOC_PER_FILE' # accepts ["ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"]
    #       },
    #       annotations: {
    #         s3_uri: 'S3Uri', # required
    #         test_s3_uri: 'TestS3Uri'
    #       },
    #       entity_list: {
    #         s3_uri: 'S3Uri' # required
    #       },
    #       augmented_manifests: [
    #         {
    #           s3_uri: 'S3Uri', # required
    #           split: 'TRAIN', # accepts ["TRAIN", "TEST"]
    #           attribute_names: [
    #             'member'
    #           ], # required
    #           annotation_data_s3_uri: 'AnnotationDataS3Uri',
    #           source_documents_s3_uri: 'SourceDocumentsS3Uri',
    #           document_type: 'PLAIN_TEXT_DOCUMENT' # accepts ["PLAIN_TEXT_DOCUMENT", "SEMI_STRUCTURED_DOCUMENT"]
    #         }
    #       ]
    #     }, # required
    #     client_request_token: 'ClientRequestToken',
    #     language_code: 'en', # required - accepts ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"]
    #     volume_kms_key_id: 'VolumeKmsKeyId',
    #     vpc_config: {
    #       security_group_ids: [
    #         'member'
    #       ], # required
    #       subnets: [
    #         'member'
    #       ] # required
    #     },
    #     model_kms_key_id: 'ModelKmsKeyId',
    #     model_policy: 'ModelPolicy'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateEntityRecognizerOutput
    #   resp.data.entity_recognizer_arn #=> String
    #
    def create_entity_recognizer(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateEntityRecognizerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateEntityRecognizerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateEntityRecognizer
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceLimitExceededException, Errors::InternalServerException, Errors::TooManyTagsException, Errors::UnsupportedLanguageException, Errors::KmsKeyValidationException, Errors::ResourceInUseException, Errors::TooManyRequestsException, Errors::InvalidRequestException]),
        data_parser: Parsers::CreateEntityRecognizer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateEntityRecognizer,
        stubs: @stubs,
        params_class: Params::CreateEntityRecognizerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_entity_recognizer
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a previously created document classifier</p>
    #          <p>Only those classifiers that are in terminated states (IN_ERROR, TRAINED) will be deleted.
    #       If an active inference job is using the model, a <code>ResourceInUseException</code> will be
    #       returned.</p>
    #          <p>This is an asynchronous action that puts the classifier into a DELETING state, and it is
    #       then removed by a background job. Once removed, the classifier disappears from your account
    #       and is no longer available for use. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDocumentClassifierInput}.
    #
    # @option params [String] :document_classifier_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the document classifier. </p>
    #
    # @return [Types::DeleteDocumentClassifierOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_document_classifier(
    #     document_classifier_arn: 'DocumentClassifierArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDocumentClassifierOutput
    #
    def delete_document_classifier(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDocumentClassifierInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDocumentClassifierInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDocumentClassifier
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceUnavailableException, Errors::ResourceInUseException, Errors::TooManyRequestsException, Errors::InvalidRequestException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeleteDocumentClassifier
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDocumentClassifier,
        stubs: @stubs,
        params_class: Params::DeleteDocumentClassifierOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_document_classifier
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a model-specific endpoint for a previously-trained custom model. All endpoints
    #       must be deleted in order for the model to be deleted.
    #       For information about endpoints, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/manage-endpoints.html">Managing endpoints</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteEndpointInput}.
    #
    # @option params [String] :endpoint_arn
    #   <p>The Amazon Resource Number (ARN) of the endpoint being deleted.</p>
    #
    # @return [Types::DeleteEndpointOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_endpoint(
    #     endpoint_arn: 'EndpointArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteEndpointOutput
    #
    def delete_endpoint(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteEndpointInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteEndpointInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteEndpoint
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceInUseException, Errors::TooManyRequestsException, Errors::InvalidRequestException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeleteEndpoint
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteEndpoint,
        stubs: @stubs,
        params_class: Params::DeleteEndpointOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_endpoint
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an entity recognizer.</p>
    #          <p>Only those recognizers that are in terminated states (IN_ERROR, TRAINED) will be deleted.
    #       If an active inference job is using the model, a <code>ResourceInUseException</code> will be
    #       returned.</p>
    #          <p>This is an asynchronous action that puts the recognizer into a DELETING state, and it is
    #       then removed by a background job. Once removed, the recognizer disappears from your account
    #       and is no longer available for use. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteEntityRecognizerInput}.
    #
    # @option params [String] :entity_recognizer_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the entity recognizer.</p>
    #
    # @return [Types::DeleteEntityRecognizerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_entity_recognizer(
    #     entity_recognizer_arn: 'EntityRecognizerArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteEntityRecognizerOutput
    #
    def delete_entity_recognizer(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteEntityRecognizerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteEntityRecognizerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteEntityRecognizer
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceUnavailableException, Errors::ResourceInUseException, Errors::TooManyRequestsException, Errors::InvalidRequestException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeleteEntityRecognizer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteEntityRecognizer,
        stubs: @stubs,
        params_class: Params::DeleteEntityRecognizerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_entity_recognizer
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a resource-based policy that is attached to a custom model.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteResourcePolicyInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the custom model version that has the policy to delete.</p>
    #
    # @option params [String] :policy_revision_id
    #   <p>The revision ID of the policy to delete.</p>
    #
    # @return [Types::DeleteResourcePolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resource_policy(
    #     resource_arn: 'ResourceArn', # required
    #     policy_revision_id: 'PolicyRevisionId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteResourcePolicyOutput
    #
    def delete_resource_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteResourcePolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteResourcePolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteResourcePolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidRequestException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeleteResourcePolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteResourcePolicy,
        stubs: @stubs,
        params_class: Params::DeleteResourcePolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_resource_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the properties associated with a document classification job. Use this operation to
    #       get the status of a classification job.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDocumentClassificationJobInput}.
    #
    # @option params [String] :job_id
    #   <p>The identifier that Amazon Comprehend generated for the job. The  operation returns this identifier in its
    #         response.</p>
    #
    # @return [Types::DescribeDocumentClassificationJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_document_classification_job(
    #     job_id: 'JobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDocumentClassificationJobOutput
    #   resp.data.document_classification_job_properties #=> Types::DocumentClassificationJobProperties
    #   resp.data.document_classification_job_properties.job_id #=> String
    #   resp.data.document_classification_job_properties.job_arn #=> String
    #   resp.data.document_classification_job_properties.job_name #=> String
    #   resp.data.document_classification_job_properties.job_status #=> String, one of ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #   resp.data.document_classification_job_properties.message #=> String
    #   resp.data.document_classification_job_properties.submit_time #=> Time
    #   resp.data.document_classification_job_properties.end_time #=> Time
    #   resp.data.document_classification_job_properties.document_classifier_arn #=> String
    #   resp.data.document_classification_job_properties.input_data_config #=> Types::InputDataConfig
    #   resp.data.document_classification_job_properties.input_data_config.s3_uri #=> String
    #   resp.data.document_classification_job_properties.input_data_config.input_format #=> String, one of ["ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"]
    #   resp.data.document_classification_job_properties.input_data_config.document_reader_config #=> Types::DocumentReaderConfig
    #   resp.data.document_classification_job_properties.input_data_config.document_reader_config.document_read_action #=> String, one of ["TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"]
    #   resp.data.document_classification_job_properties.input_data_config.document_reader_config.document_read_mode #=> String, one of ["SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"]
    #   resp.data.document_classification_job_properties.input_data_config.document_reader_config.feature_types #=> Array<String>
    #   resp.data.document_classification_job_properties.input_data_config.document_reader_config.feature_types[0] #=> String, one of ["TABLES", "FORMS"]
    #   resp.data.document_classification_job_properties.output_data_config #=> Types::OutputDataConfig
    #   resp.data.document_classification_job_properties.output_data_config.s3_uri #=> String
    #   resp.data.document_classification_job_properties.output_data_config.kms_key_id #=> String
    #   resp.data.document_classification_job_properties.data_access_role_arn #=> String
    #   resp.data.document_classification_job_properties.volume_kms_key_id #=> String
    #   resp.data.document_classification_job_properties.vpc_config #=> Types::VpcConfig
    #   resp.data.document_classification_job_properties.vpc_config.security_group_ids #=> Array<String>
    #   resp.data.document_classification_job_properties.vpc_config.security_group_ids[0] #=> String
    #   resp.data.document_classification_job_properties.vpc_config.subnets #=> Array<String>
    #   resp.data.document_classification_job_properties.vpc_config.subnets[0] #=> String
    #
    def describe_document_classification_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDocumentClassificationJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDocumentClassificationJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDocumentClassificationJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::JobNotFoundException, Errors::InternalServerException, Errors::TooManyRequestsException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribeDocumentClassificationJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDocumentClassificationJob,
        stubs: @stubs,
        params_class: Params::DescribeDocumentClassificationJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_document_classification_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the properties associated with a document classifier.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDocumentClassifierInput}.
    #
    # @option params [String] :document_classifier_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the document classifier. The  operation returns this identifier in its
    #         response.</p>
    #
    # @return [Types::DescribeDocumentClassifierOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_document_classifier(
    #     document_classifier_arn: 'DocumentClassifierArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDocumentClassifierOutput
    #   resp.data.document_classifier_properties #=> Types::DocumentClassifierProperties
    #   resp.data.document_classifier_properties.document_classifier_arn #=> String
    #   resp.data.document_classifier_properties.language_code #=> String, one of ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"]
    #   resp.data.document_classifier_properties.status #=> String, one of ["SUBMITTED", "TRAINING", "DELETING", "STOP_REQUESTED", "STOPPED", "IN_ERROR", "TRAINED"]
    #   resp.data.document_classifier_properties.message #=> String
    #   resp.data.document_classifier_properties.submit_time #=> Time
    #   resp.data.document_classifier_properties.end_time #=> Time
    #   resp.data.document_classifier_properties.training_start_time #=> Time
    #   resp.data.document_classifier_properties.training_end_time #=> Time
    #   resp.data.document_classifier_properties.input_data_config #=> Types::DocumentClassifierInputDataConfig
    #   resp.data.document_classifier_properties.input_data_config.data_format #=> String, one of ["COMPREHEND_CSV", "AUGMENTED_MANIFEST"]
    #   resp.data.document_classifier_properties.input_data_config.s3_uri #=> String
    #   resp.data.document_classifier_properties.input_data_config.test_s3_uri #=> String
    #   resp.data.document_classifier_properties.input_data_config.label_delimiter #=> String
    #   resp.data.document_classifier_properties.input_data_config.augmented_manifests #=> Array<AugmentedManifestsListItem>
    #   resp.data.document_classifier_properties.input_data_config.augmented_manifests[0] #=> Types::AugmentedManifestsListItem
    #   resp.data.document_classifier_properties.input_data_config.augmented_manifests[0].s3_uri #=> String
    #   resp.data.document_classifier_properties.input_data_config.augmented_manifests[0].split #=> String, one of ["TRAIN", "TEST"]
    #   resp.data.document_classifier_properties.input_data_config.augmented_manifests[0].attribute_names #=> Array<String>
    #   resp.data.document_classifier_properties.input_data_config.augmented_manifests[0].attribute_names[0] #=> String
    #   resp.data.document_classifier_properties.input_data_config.augmented_manifests[0].annotation_data_s3_uri #=> String
    #   resp.data.document_classifier_properties.input_data_config.augmented_manifests[0].source_documents_s3_uri #=> String
    #   resp.data.document_classifier_properties.input_data_config.augmented_manifests[0].document_type #=> String, one of ["PLAIN_TEXT_DOCUMENT", "SEMI_STRUCTURED_DOCUMENT"]
    #   resp.data.document_classifier_properties.output_data_config #=> Types::DocumentClassifierOutputDataConfig
    #   resp.data.document_classifier_properties.output_data_config.s3_uri #=> String
    #   resp.data.document_classifier_properties.output_data_config.kms_key_id #=> String
    #   resp.data.document_classifier_properties.classifier_metadata #=> Types::ClassifierMetadata
    #   resp.data.document_classifier_properties.classifier_metadata.number_of_labels #=> Integer
    #   resp.data.document_classifier_properties.classifier_metadata.number_of_trained_documents #=> Integer
    #   resp.data.document_classifier_properties.classifier_metadata.number_of_test_documents #=> Integer
    #   resp.data.document_classifier_properties.classifier_metadata.evaluation_metrics #=> Types::ClassifierEvaluationMetrics
    #   resp.data.document_classifier_properties.classifier_metadata.evaluation_metrics.accuracy #=> Float
    #   resp.data.document_classifier_properties.classifier_metadata.evaluation_metrics.precision #=> Float
    #   resp.data.document_classifier_properties.classifier_metadata.evaluation_metrics.recall #=> Float
    #   resp.data.document_classifier_properties.classifier_metadata.evaluation_metrics.f1_score #=> Float
    #   resp.data.document_classifier_properties.classifier_metadata.evaluation_metrics.micro_precision #=> Float
    #   resp.data.document_classifier_properties.classifier_metadata.evaluation_metrics.micro_recall #=> Float
    #   resp.data.document_classifier_properties.classifier_metadata.evaluation_metrics.micro_f1_score #=> Float
    #   resp.data.document_classifier_properties.classifier_metadata.evaluation_metrics.hamming_loss #=> Float
    #   resp.data.document_classifier_properties.data_access_role_arn #=> String
    #   resp.data.document_classifier_properties.volume_kms_key_id #=> String
    #   resp.data.document_classifier_properties.vpc_config #=> Types::VpcConfig
    #   resp.data.document_classifier_properties.vpc_config.security_group_ids #=> Array<String>
    #   resp.data.document_classifier_properties.vpc_config.security_group_ids[0] #=> String
    #   resp.data.document_classifier_properties.vpc_config.subnets #=> Array<String>
    #   resp.data.document_classifier_properties.vpc_config.subnets[0] #=> String
    #   resp.data.document_classifier_properties.mode #=> String, one of ["MULTI_CLASS", "MULTI_LABEL"]
    #   resp.data.document_classifier_properties.model_kms_key_id #=> String
    #   resp.data.document_classifier_properties.version_name #=> String
    #   resp.data.document_classifier_properties.source_model_arn #=> String
    #
    def describe_document_classifier(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDocumentClassifierInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDocumentClassifierInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDocumentClassifier
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::TooManyRequestsException, Errors::InvalidRequestException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeDocumentClassifier
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDocumentClassifier,
        stubs: @stubs,
        params_class: Params::DescribeDocumentClassifierOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_document_classifier
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the properties associated with a dominant language detection job. Use this operation
    #       to get the status of a detection job.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDominantLanguageDetectionJobInput}.
    #
    # @option params [String] :job_id
    #   <p>The identifier that Amazon Comprehend generated for the job. The  operation returns this identifier in its
    #         response.</p>
    #
    # @return [Types::DescribeDominantLanguageDetectionJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_dominant_language_detection_job(
    #     job_id: 'JobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDominantLanguageDetectionJobOutput
    #   resp.data.dominant_language_detection_job_properties #=> Types::DominantLanguageDetectionJobProperties
    #   resp.data.dominant_language_detection_job_properties.job_id #=> String
    #   resp.data.dominant_language_detection_job_properties.job_arn #=> String
    #   resp.data.dominant_language_detection_job_properties.job_name #=> String
    #   resp.data.dominant_language_detection_job_properties.job_status #=> String, one of ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #   resp.data.dominant_language_detection_job_properties.message #=> String
    #   resp.data.dominant_language_detection_job_properties.submit_time #=> Time
    #   resp.data.dominant_language_detection_job_properties.end_time #=> Time
    #   resp.data.dominant_language_detection_job_properties.input_data_config #=> Types::InputDataConfig
    #   resp.data.dominant_language_detection_job_properties.input_data_config.s3_uri #=> String
    #   resp.data.dominant_language_detection_job_properties.input_data_config.input_format #=> String, one of ["ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"]
    #   resp.data.dominant_language_detection_job_properties.input_data_config.document_reader_config #=> Types::DocumentReaderConfig
    #   resp.data.dominant_language_detection_job_properties.input_data_config.document_reader_config.document_read_action #=> String, one of ["TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"]
    #   resp.data.dominant_language_detection_job_properties.input_data_config.document_reader_config.document_read_mode #=> String, one of ["SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"]
    #   resp.data.dominant_language_detection_job_properties.input_data_config.document_reader_config.feature_types #=> Array<String>
    #   resp.data.dominant_language_detection_job_properties.input_data_config.document_reader_config.feature_types[0] #=> String, one of ["TABLES", "FORMS"]
    #   resp.data.dominant_language_detection_job_properties.output_data_config #=> Types::OutputDataConfig
    #   resp.data.dominant_language_detection_job_properties.output_data_config.s3_uri #=> String
    #   resp.data.dominant_language_detection_job_properties.output_data_config.kms_key_id #=> String
    #   resp.data.dominant_language_detection_job_properties.data_access_role_arn #=> String
    #   resp.data.dominant_language_detection_job_properties.volume_kms_key_id #=> String
    #   resp.data.dominant_language_detection_job_properties.vpc_config #=> Types::VpcConfig
    #   resp.data.dominant_language_detection_job_properties.vpc_config.security_group_ids #=> Array<String>
    #   resp.data.dominant_language_detection_job_properties.vpc_config.security_group_ids[0] #=> String
    #   resp.data.dominant_language_detection_job_properties.vpc_config.subnets #=> Array<String>
    #   resp.data.dominant_language_detection_job_properties.vpc_config.subnets[0] #=> String
    #
    def describe_dominant_language_detection_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDominantLanguageDetectionJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDominantLanguageDetectionJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDominantLanguageDetectionJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::JobNotFoundException, Errors::InternalServerException, Errors::TooManyRequestsException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribeDominantLanguageDetectionJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDominantLanguageDetectionJob,
        stubs: @stubs,
        params_class: Params::DescribeDominantLanguageDetectionJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_dominant_language_detection_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the properties associated with a specific endpoint. Use this operation to get the
    #       status of an endpoint.
    #       For information about endpoints, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/manage-endpoints.html">Managing endpoints</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeEndpointInput}.
    #
    # @option params [String] :endpoint_arn
    #   <p>The Amazon Resource Number (ARN) of the endpoint being described.</p>
    #
    # @return [Types::DescribeEndpointOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_endpoint(
    #     endpoint_arn: 'EndpointArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeEndpointOutput
    #   resp.data.endpoint_properties #=> Types::EndpointProperties
    #   resp.data.endpoint_properties.endpoint_arn #=> String
    #   resp.data.endpoint_properties.status #=> String, one of ["CREATING", "DELETING", "FAILED", "IN_SERVICE", "UPDATING"]
    #   resp.data.endpoint_properties.message #=> String
    #   resp.data.endpoint_properties.model_arn #=> String
    #   resp.data.endpoint_properties.desired_model_arn #=> String
    #   resp.data.endpoint_properties.desired_inference_units #=> Integer
    #   resp.data.endpoint_properties.current_inference_units #=> Integer
    #   resp.data.endpoint_properties.creation_time #=> Time
    #   resp.data.endpoint_properties.last_modified_time #=> Time
    #   resp.data.endpoint_properties.data_access_role_arn #=> String
    #   resp.data.endpoint_properties.desired_data_access_role_arn #=> String
    #
    def describe_endpoint(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeEndpointInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeEndpointInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeEndpoint
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::TooManyRequestsException, Errors::InvalidRequestException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeEndpoint
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeEndpoint,
        stubs: @stubs,
        params_class: Params::DescribeEndpointOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_endpoint
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the properties associated with an entities detection job. Use this operation to get
    #       the status of a detection job.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeEntitiesDetectionJobInput}.
    #
    # @option params [String] :job_id
    #   <p>The identifier that Amazon Comprehend generated for the job. The  operation returns this identifier in its
    #         response.</p>
    #
    # @return [Types::DescribeEntitiesDetectionJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_entities_detection_job(
    #     job_id: 'JobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeEntitiesDetectionJobOutput
    #   resp.data.entities_detection_job_properties #=> Types::EntitiesDetectionJobProperties
    #   resp.data.entities_detection_job_properties.job_id #=> String
    #   resp.data.entities_detection_job_properties.job_arn #=> String
    #   resp.data.entities_detection_job_properties.job_name #=> String
    #   resp.data.entities_detection_job_properties.job_status #=> String, one of ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #   resp.data.entities_detection_job_properties.message #=> String
    #   resp.data.entities_detection_job_properties.submit_time #=> Time
    #   resp.data.entities_detection_job_properties.end_time #=> Time
    #   resp.data.entities_detection_job_properties.entity_recognizer_arn #=> String
    #   resp.data.entities_detection_job_properties.input_data_config #=> Types::InputDataConfig
    #   resp.data.entities_detection_job_properties.input_data_config.s3_uri #=> String
    #   resp.data.entities_detection_job_properties.input_data_config.input_format #=> String, one of ["ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"]
    #   resp.data.entities_detection_job_properties.input_data_config.document_reader_config #=> Types::DocumentReaderConfig
    #   resp.data.entities_detection_job_properties.input_data_config.document_reader_config.document_read_action #=> String, one of ["TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"]
    #   resp.data.entities_detection_job_properties.input_data_config.document_reader_config.document_read_mode #=> String, one of ["SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"]
    #   resp.data.entities_detection_job_properties.input_data_config.document_reader_config.feature_types #=> Array<String>
    #   resp.data.entities_detection_job_properties.input_data_config.document_reader_config.feature_types[0] #=> String, one of ["TABLES", "FORMS"]
    #   resp.data.entities_detection_job_properties.output_data_config #=> Types::OutputDataConfig
    #   resp.data.entities_detection_job_properties.output_data_config.s3_uri #=> String
    #   resp.data.entities_detection_job_properties.output_data_config.kms_key_id #=> String
    #   resp.data.entities_detection_job_properties.language_code #=> String, one of ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"]
    #   resp.data.entities_detection_job_properties.data_access_role_arn #=> String
    #   resp.data.entities_detection_job_properties.volume_kms_key_id #=> String
    #   resp.data.entities_detection_job_properties.vpc_config #=> Types::VpcConfig
    #   resp.data.entities_detection_job_properties.vpc_config.security_group_ids #=> Array<String>
    #   resp.data.entities_detection_job_properties.vpc_config.security_group_ids[0] #=> String
    #   resp.data.entities_detection_job_properties.vpc_config.subnets #=> Array<String>
    #   resp.data.entities_detection_job_properties.vpc_config.subnets[0] #=> String
    #
    def describe_entities_detection_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeEntitiesDetectionJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeEntitiesDetectionJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeEntitiesDetectionJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::JobNotFoundException, Errors::InternalServerException, Errors::TooManyRequestsException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribeEntitiesDetectionJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeEntitiesDetectionJob,
        stubs: @stubs,
        params_class: Params::DescribeEntitiesDetectionJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_entities_detection_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides details about an entity recognizer including status, S3 buckets containing
    #       training data, recognizer metadata, metrics, and so on.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeEntityRecognizerInput}.
    #
    # @option params [String] :entity_recognizer_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the entity recognizer.</p>
    #
    # @return [Types::DescribeEntityRecognizerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_entity_recognizer(
    #     entity_recognizer_arn: 'EntityRecognizerArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeEntityRecognizerOutput
    #   resp.data.entity_recognizer_properties #=> Types::EntityRecognizerProperties
    #   resp.data.entity_recognizer_properties.entity_recognizer_arn #=> String
    #   resp.data.entity_recognizer_properties.language_code #=> String, one of ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"]
    #   resp.data.entity_recognizer_properties.status #=> String, one of ["SUBMITTED", "TRAINING", "DELETING", "STOP_REQUESTED", "STOPPED", "IN_ERROR", "TRAINED"]
    #   resp.data.entity_recognizer_properties.message #=> String
    #   resp.data.entity_recognizer_properties.submit_time #=> Time
    #   resp.data.entity_recognizer_properties.end_time #=> Time
    #   resp.data.entity_recognizer_properties.training_start_time #=> Time
    #   resp.data.entity_recognizer_properties.training_end_time #=> Time
    #   resp.data.entity_recognizer_properties.input_data_config #=> Types::EntityRecognizerInputDataConfig
    #   resp.data.entity_recognizer_properties.input_data_config.data_format #=> String, one of ["COMPREHEND_CSV", "AUGMENTED_MANIFEST"]
    #   resp.data.entity_recognizer_properties.input_data_config.entity_types #=> Array<EntityTypesListItem>
    #   resp.data.entity_recognizer_properties.input_data_config.entity_types[0] #=> Types::EntityTypesListItem
    #   resp.data.entity_recognizer_properties.input_data_config.entity_types[0].type #=> String
    #   resp.data.entity_recognizer_properties.input_data_config.documents #=> Types::EntityRecognizerDocuments
    #   resp.data.entity_recognizer_properties.input_data_config.documents.s3_uri #=> String
    #   resp.data.entity_recognizer_properties.input_data_config.documents.test_s3_uri #=> String
    #   resp.data.entity_recognizer_properties.input_data_config.documents.input_format #=> String, one of ["ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"]
    #   resp.data.entity_recognizer_properties.input_data_config.annotations #=> Types::EntityRecognizerAnnotations
    #   resp.data.entity_recognizer_properties.input_data_config.annotations.s3_uri #=> String
    #   resp.data.entity_recognizer_properties.input_data_config.annotations.test_s3_uri #=> String
    #   resp.data.entity_recognizer_properties.input_data_config.entity_list #=> Types::EntityRecognizerEntityList
    #   resp.data.entity_recognizer_properties.input_data_config.entity_list.s3_uri #=> String
    #   resp.data.entity_recognizer_properties.input_data_config.augmented_manifests #=> Array<AugmentedManifestsListItem>
    #   resp.data.entity_recognizer_properties.input_data_config.augmented_manifests[0] #=> Types::AugmentedManifestsListItem
    #   resp.data.entity_recognizer_properties.input_data_config.augmented_manifests[0].s3_uri #=> String
    #   resp.data.entity_recognizer_properties.input_data_config.augmented_manifests[0].split #=> String, one of ["TRAIN", "TEST"]
    #   resp.data.entity_recognizer_properties.input_data_config.augmented_manifests[0].attribute_names #=> Array<String>
    #   resp.data.entity_recognizer_properties.input_data_config.augmented_manifests[0].attribute_names[0] #=> String
    #   resp.data.entity_recognizer_properties.input_data_config.augmented_manifests[0].annotation_data_s3_uri #=> String
    #   resp.data.entity_recognizer_properties.input_data_config.augmented_manifests[0].source_documents_s3_uri #=> String
    #   resp.data.entity_recognizer_properties.input_data_config.augmented_manifests[0].document_type #=> String, one of ["PLAIN_TEXT_DOCUMENT", "SEMI_STRUCTURED_DOCUMENT"]
    #   resp.data.entity_recognizer_properties.recognizer_metadata #=> Types::EntityRecognizerMetadata
    #   resp.data.entity_recognizer_properties.recognizer_metadata.number_of_trained_documents #=> Integer
    #   resp.data.entity_recognizer_properties.recognizer_metadata.number_of_test_documents #=> Integer
    #   resp.data.entity_recognizer_properties.recognizer_metadata.evaluation_metrics #=> Types::EntityRecognizerEvaluationMetrics
    #   resp.data.entity_recognizer_properties.recognizer_metadata.evaluation_metrics.precision #=> Float
    #   resp.data.entity_recognizer_properties.recognizer_metadata.evaluation_metrics.recall #=> Float
    #   resp.data.entity_recognizer_properties.recognizer_metadata.evaluation_metrics.f1_score #=> Float
    #   resp.data.entity_recognizer_properties.recognizer_metadata.entity_types #=> Array<EntityRecognizerMetadataEntityTypesListItem>
    #   resp.data.entity_recognizer_properties.recognizer_metadata.entity_types[0] #=> Types::EntityRecognizerMetadataEntityTypesListItem
    #   resp.data.entity_recognizer_properties.recognizer_metadata.entity_types[0].type #=> String
    #   resp.data.entity_recognizer_properties.recognizer_metadata.entity_types[0].evaluation_metrics #=> Types::EntityTypesEvaluationMetrics
    #   resp.data.entity_recognizer_properties.recognizer_metadata.entity_types[0].evaluation_metrics.precision #=> Float
    #   resp.data.entity_recognizer_properties.recognizer_metadata.entity_types[0].evaluation_metrics.recall #=> Float
    #   resp.data.entity_recognizer_properties.recognizer_metadata.entity_types[0].evaluation_metrics.f1_score #=> Float
    #   resp.data.entity_recognizer_properties.recognizer_metadata.entity_types[0].number_of_train_mentions #=> Integer
    #   resp.data.entity_recognizer_properties.data_access_role_arn #=> String
    #   resp.data.entity_recognizer_properties.volume_kms_key_id #=> String
    #   resp.data.entity_recognizer_properties.vpc_config #=> Types::VpcConfig
    #   resp.data.entity_recognizer_properties.vpc_config.security_group_ids #=> Array<String>
    #   resp.data.entity_recognizer_properties.vpc_config.security_group_ids[0] #=> String
    #   resp.data.entity_recognizer_properties.vpc_config.subnets #=> Array<String>
    #   resp.data.entity_recognizer_properties.vpc_config.subnets[0] #=> String
    #   resp.data.entity_recognizer_properties.model_kms_key_id #=> String
    #   resp.data.entity_recognizer_properties.version_name #=> String
    #   resp.data.entity_recognizer_properties.source_model_arn #=> String
    #
    def describe_entity_recognizer(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeEntityRecognizerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeEntityRecognizerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeEntityRecognizer
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::TooManyRequestsException, Errors::InvalidRequestException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeEntityRecognizer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeEntityRecognizer,
        stubs: @stubs,
        params_class: Params::DescribeEntityRecognizerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_entity_recognizer
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the status and details of an events detection job.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeEventsDetectionJobInput}.
    #
    # @option params [String] :job_id
    #   <p>The identifier of the events detection job.</p>
    #
    # @return [Types::DescribeEventsDetectionJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_events_detection_job(
    #     job_id: 'JobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeEventsDetectionJobOutput
    #   resp.data.events_detection_job_properties #=> Types::EventsDetectionJobProperties
    #   resp.data.events_detection_job_properties.job_id #=> String
    #   resp.data.events_detection_job_properties.job_arn #=> String
    #   resp.data.events_detection_job_properties.job_name #=> String
    #   resp.data.events_detection_job_properties.job_status #=> String, one of ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #   resp.data.events_detection_job_properties.message #=> String
    #   resp.data.events_detection_job_properties.submit_time #=> Time
    #   resp.data.events_detection_job_properties.end_time #=> Time
    #   resp.data.events_detection_job_properties.input_data_config #=> Types::InputDataConfig
    #   resp.data.events_detection_job_properties.input_data_config.s3_uri #=> String
    #   resp.data.events_detection_job_properties.input_data_config.input_format #=> String, one of ["ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"]
    #   resp.data.events_detection_job_properties.input_data_config.document_reader_config #=> Types::DocumentReaderConfig
    #   resp.data.events_detection_job_properties.input_data_config.document_reader_config.document_read_action #=> String, one of ["TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"]
    #   resp.data.events_detection_job_properties.input_data_config.document_reader_config.document_read_mode #=> String, one of ["SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"]
    #   resp.data.events_detection_job_properties.input_data_config.document_reader_config.feature_types #=> Array<String>
    #   resp.data.events_detection_job_properties.input_data_config.document_reader_config.feature_types[0] #=> String, one of ["TABLES", "FORMS"]
    #   resp.data.events_detection_job_properties.output_data_config #=> Types::OutputDataConfig
    #   resp.data.events_detection_job_properties.output_data_config.s3_uri #=> String
    #   resp.data.events_detection_job_properties.output_data_config.kms_key_id #=> String
    #   resp.data.events_detection_job_properties.language_code #=> String, one of ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"]
    #   resp.data.events_detection_job_properties.data_access_role_arn #=> String
    #   resp.data.events_detection_job_properties.target_event_types #=> Array<String>
    #   resp.data.events_detection_job_properties.target_event_types[0] #=> String
    #
    def describe_events_detection_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeEventsDetectionJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeEventsDetectionJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeEventsDetectionJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::JobNotFoundException, Errors::InternalServerException, Errors::TooManyRequestsException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribeEventsDetectionJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeEventsDetectionJob,
        stubs: @stubs,
        params_class: Params::DescribeEventsDetectionJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_events_detection_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the properties associated with a key phrases detection job. Use this operation to get
    #       the status of a detection job.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeKeyPhrasesDetectionJobInput}.
    #
    # @option params [String] :job_id
    #   <p>The identifier that Amazon Comprehend generated for the job. The  operation returns this identifier in its
    #         response.</p>
    #
    # @return [Types::DescribeKeyPhrasesDetectionJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_key_phrases_detection_job(
    #     job_id: 'JobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeKeyPhrasesDetectionJobOutput
    #   resp.data.key_phrases_detection_job_properties #=> Types::KeyPhrasesDetectionJobProperties
    #   resp.data.key_phrases_detection_job_properties.job_id #=> String
    #   resp.data.key_phrases_detection_job_properties.job_arn #=> String
    #   resp.data.key_phrases_detection_job_properties.job_name #=> String
    #   resp.data.key_phrases_detection_job_properties.job_status #=> String, one of ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #   resp.data.key_phrases_detection_job_properties.message #=> String
    #   resp.data.key_phrases_detection_job_properties.submit_time #=> Time
    #   resp.data.key_phrases_detection_job_properties.end_time #=> Time
    #   resp.data.key_phrases_detection_job_properties.input_data_config #=> Types::InputDataConfig
    #   resp.data.key_phrases_detection_job_properties.input_data_config.s3_uri #=> String
    #   resp.data.key_phrases_detection_job_properties.input_data_config.input_format #=> String, one of ["ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"]
    #   resp.data.key_phrases_detection_job_properties.input_data_config.document_reader_config #=> Types::DocumentReaderConfig
    #   resp.data.key_phrases_detection_job_properties.input_data_config.document_reader_config.document_read_action #=> String, one of ["TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"]
    #   resp.data.key_phrases_detection_job_properties.input_data_config.document_reader_config.document_read_mode #=> String, one of ["SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"]
    #   resp.data.key_phrases_detection_job_properties.input_data_config.document_reader_config.feature_types #=> Array<String>
    #   resp.data.key_phrases_detection_job_properties.input_data_config.document_reader_config.feature_types[0] #=> String, one of ["TABLES", "FORMS"]
    #   resp.data.key_phrases_detection_job_properties.output_data_config #=> Types::OutputDataConfig
    #   resp.data.key_phrases_detection_job_properties.output_data_config.s3_uri #=> String
    #   resp.data.key_phrases_detection_job_properties.output_data_config.kms_key_id #=> String
    #   resp.data.key_phrases_detection_job_properties.language_code #=> String, one of ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"]
    #   resp.data.key_phrases_detection_job_properties.data_access_role_arn #=> String
    #   resp.data.key_phrases_detection_job_properties.volume_kms_key_id #=> String
    #   resp.data.key_phrases_detection_job_properties.vpc_config #=> Types::VpcConfig
    #   resp.data.key_phrases_detection_job_properties.vpc_config.security_group_ids #=> Array<String>
    #   resp.data.key_phrases_detection_job_properties.vpc_config.security_group_ids[0] #=> String
    #   resp.data.key_phrases_detection_job_properties.vpc_config.subnets #=> Array<String>
    #   resp.data.key_phrases_detection_job_properties.vpc_config.subnets[0] #=> String
    #
    def describe_key_phrases_detection_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeKeyPhrasesDetectionJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeKeyPhrasesDetectionJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeKeyPhrasesDetectionJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::JobNotFoundException, Errors::InternalServerException, Errors::TooManyRequestsException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribeKeyPhrasesDetectionJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeKeyPhrasesDetectionJob,
        stubs: @stubs,
        params_class: Params::DescribeKeyPhrasesDetectionJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_key_phrases_detection_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the properties associated with a PII entities detection job. For example, you can use
    #       this operation to get the job status.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribePiiEntitiesDetectionJobInput}.
    #
    # @option params [String] :job_id
    #   <p>The identifier that Amazon Comprehend generated for the job. The  operation returns this identifier in its
    #         response.</p>
    #
    # @return [Types::DescribePiiEntitiesDetectionJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_pii_entities_detection_job(
    #     job_id: 'JobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribePiiEntitiesDetectionJobOutput
    #   resp.data.pii_entities_detection_job_properties #=> Types::PiiEntitiesDetectionJobProperties
    #   resp.data.pii_entities_detection_job_properties.job_id #=> String
    #   resp.data.pii_entities_detection_job_properties.job_arn #=> String
    #   resp.data.pii_entities_detection_job_properties.job_name #=> String
    #   resp.data.pii_entities_detection_job_properties.job_status #=> String, one of ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #   resp.data.pii_entities_detection_job_properties.message #=> String
    #   resp.data.pii_entities_detection_job_properties.submit_time #=> Time
    #   resp.data.pii_entities_detection_job_properties.end_time #=> Time
    #   resp.data.pii_entities_detection_job_properties.input_data_config #=> Types::InputDataConfig
    #   resp.data.pii_entities_detection_job_properties.input_data_config.s3_uri #=> String
    #   resp.data.pii_entities_detection_job_properties.input_data_config.input_format #=> String, one of ["ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"]
    #   resp.data.pii_entities_detection_job_properties.input_data_config.document_reader_config #=> Types::DocumentReaderConfig
    #   resp.data.pii_entities_detection_job_properties.input_data_config.document_reader_config.document_read_action #=> String, one of ["TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"]
    #   resp.data.pii_entities_detection_job_properties.input_data_config.document_reader_config.document_read_mode #=> String, one of ["SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"]
    #   resp.data.pii_entities_detection_job_properties.input_data_config.document_reader_config.feature_types #=> Array<String>
    #   resp.data.pii_entities_detection_job_properties.input_data_config.document_reader_config.feature_types[0] #=> String, one of ["TABLES", "FORMS"]
    #   resp.data.pii_entities_detection_job_properties.output_data_config #=> Types::PiiOutputDataConfig
    #   resp.data.pii_entities_detection_job_properties.output_data_config.s3_uri #=> String
    #   resp.data.pii_entities_detection_job_properties.output_data_config.kms_key_id #=> String
    #   resp.data.pii_entities_detection_job_properties.redaction_config #=> Types::RedactionConfig
    #   resp.data.pii_entities_detection_job_properties.redaction_config.pii_entity_types #=> Array<String>
    #   resp.data.pii_entities_detection_job_properties.redaction_config.pii_entity_types[0] #=> String, one of ["BANK_ACCOUNT_NUMBER", "BANK_ROUTING", "CREDIT_DEBIT_NUMBER", "CREDIT_DEBIT_CVV", "CREDIT_DEBIT_EXPIRY", "PIN", "EMAIL", "ADDRESS", "NAME", "PHONE", "SSN", "DATE_TIME", "PASSPORT_NUMBER", "DRIVER_ID", "URL", "AGE", "USERNAME", "PASSWORD", "AWS_ACCESS_KEY", "AWS_SECRET_KEY", "IP_ADDRESS", "MAC_ADDRESS", "ALL", "LICENSE_PLATE", "VEHICLE_IDENTIFICATION_NUMBER", "UK_NATIONAL_INSURANCE_NUMBER", "CA_SOCIAL_INSURANCE_NUMBER", "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER", "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER", "IN_PERMANENT_ACCOUNT_NUMBER", "IN_NREGA", "INTERNATIONAL_BANK_ACCOUNT_NUMBER", "SWIFT_CODE", "UK_NATIONAL_HEALTH_SERVICE_NUMBER", "CA_HEALTH_NUMBER", "IN_AADHAAR", "IN_VOTER_NUMBER"]
    #   resp.data.pii_entities_detection_job_properties.redaction_config.mask_mode #=> String, one of ["MASK", "REPLACE_WITH_PII_ENTITY_TYPE"]
    #   resp.data.pii_entities_detection_job_properties.redaction_config.mask_character #=> String
    #   resp.data.pii_entities_detection_job_properties.language_code #=> String, one of ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"]
    #   resp.data.pii_entities_detection_job_properties.data_access_role_arn #=> String
    #   resp.data.pii_entities_detection_job_properties.mode #=> String, one of ["ONLY_REDACTION", "ONLY_OFFSETS"]
    #
    def describe_pii_entities_detection_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribePiiEntitiesDetectionJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribePiiEntitiesDetectionJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribePiiEntitiesDetectionJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::JobNotFoundException, Errors::InternalServerException, Errors::TooManyRequestsException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribePiiEntitiesDetectionJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribePiiEntitiesDetectionJob,
        stubs: @stubs,
        params_class: Params::DescribePiiEntitiesDetectionJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_pii_entities_detection_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the details of a resource-based policy that is attached to a custom model, including
    #       the JSON body of the policy.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeResourcePolicyInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the policy to describe.</p>
    #
    # @return [Types::DescribeResourcePolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_resource_policy(
    #     resource_arn: 'ResourceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeResourcePolicyOutput
    #   resp.data.resource_policy #=> String
    #   resp.data.creation_time #=> Time
    #   resp.data.last_modified_time #=> Time
    #   resp.data.policy_revision_id #=> String
    #
    def describe_resource_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeResourcePolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeResourcePolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeResourcePolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidRequestException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeResourcePolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeResourcePolicy,
        stubs: @stubs,
        params_class: Params::DescribeResourcePolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_resource_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the properties associated with a sentiment detection job. Use this operation to get
    #       the status of a detection job.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeSentimentDetectionJobInput}.
    #
    # @option params [String] :job_id
    #   <p>The identifier that Amazon Comprehend generated for the job. The  operation returns this identifier in its
    #         response.</p>
    #
    # @return [Types::DescribeSentimentDetectionJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_sentiment_detection_job(
    #     job_id: 'JobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeSentimentDetectionJobOutput
    #   resp.data.sentiment_detection_job_properties #=> Types::SentimentDetectionJobProperties
    #   resp.data.sentiment_detection_job_properties.job_id #=> String
    #   resp.data.sentiment_detection_job_properties.job_arn #=> String
    #   resp.data.sentiment_detection_job_properties.job_name #=> String
    #   resp.data.sentiment_detection_job_properties.job_status #=> String, one of ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #   resp.data.sentiment_detection_job_properties.message #=> String
    #   resp.data.sentiment_detection_job_properties.submit_time #=> Time
    #   resp.data.sentiment_detection_job_properties.end_time #=> Time
    #   resp.data.sentiment_detection_job_properties.input_data_config #=> Types::InputDataConfig
    #   resp.data.sentiment_detection_job_properties.input_data_config.s3_uri #=> String
    #   resp.data.sentiment_detection_job_properties.input_data_config.input_format #=> String, one of ["ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"]
    #   resp.data.sentiment_detection_job_properties.input_data_config.document_reader_config #=> Types::DocumentReaderConfig
    #   resp.data.sentiment_detection_job_properties.input_data_config.document_reader_config.document_read_action #=> String, one of ["TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"]
    #   resp.data.sentiment_detection_job_properties.input_data_config.document_reader_config.document_read_mode #=> String, one of ["SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"]
    #   resp.data.sentiment_detection_job_properties.input_data_config.document_reader_config.feature_types #=> Array<String>
    #   resp.data.sentiment_detection_job_properties.input_data_config.document_reader_config.feature_types[0] #=> String, one of ["TABLES", "FORMS"]
    #   resp.data.sentiment_detection_job_properties.output_data_config #=> Types::OutputDataConfig
    #   resp.data.sentiment_detection_job_properties.output_data_config.s3_uri #=> String
    #   resp.data.sentiment_detection_job_properties.output_data_config.kms_key_id #=> String
    #   resp.data.sentiment_detection_job_properties.language_code #=> String, one of ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"]
    #   resp.data.sentiment_detection_job_properties.data_access_role_arn #=> String
    #   resp.data.sentiment_detection_job_properties.volume_kms_key_id #=> String
    #   resp.data.sentiment_detection_job_properties.vpc_config #=> Types::VpcConfig
    #   resp.data.sentiment_detection_job_properties.vpc_config.security_group_ids #=> Array<String>
    #   resp.data.sentiment_detection_job_properties.vpc_config.security_group_ids[0] #=> String
    #   resp.data.sentiment_detection_job_properties.vpc_config.subnets #=> Array<String>
    #   resp.data.sentiment_detection_job_properties.vpc_config.subnets[0] #=> String
    #
    def describe_sentiment_detection_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeSentimentDetectionJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeSentimentDetectionJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeSentimentDetectionJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::JobNotFoundException, Errors::InternalServerException, Errors::TooManyRequestsException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribeSentimentDetectionJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeSentimentDetectionJob,
        stubs: @stubs,
        params_class: Params::DescribeSentimentDetectionJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_sentiment_detection_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the properties associated with a targeted sentiment detection job. Use this operation
    #       to get the status of the job.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeTargetedSentimentDetectionJobInput}.
    #
    # @option params [String] :job_id
    #   <p>The identifier that Amazon Comprehend generated for the job. The  operation returns this identifier in its
    #         response.</p>
    #
    # @return [Types::DescribeTargetedSentimentDetectionJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_targeted_sentiment_detection_job(
    #     job_id: 'JobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeTargetedSentimentDetectionJobOutput
    #   resp.data.targeted_sentiment_detection_job_properties #=> Types::TargetedSentimentDetectionJobProperties
    #   resp.data.targeted_sentiment_detection_job_properties.job_id #=> String
    #   resp.data.targeted_sentiment_detection_job_properties.job_arn #=> String
    #   resp.data.targeted_sentiment_detection_job_properties.job_name #=> String
    #   resp.data.targeted_sentiment_detection_job_properties.job_status #=> String, one of ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #   resp.data.targeted_sentiment_detection_job_properties.message #=> String
    #   resp.data.targeted_sentiment_detection_job_properties.submit_time #=> Time
    #   resp.data.targeted_sentiment_detection_job_properties.end_time #=> Time
    #   resp.data.targeted_sentiment_detection_job_properties.input_data_config #=> Types::InputDataConfig
    #   resp.data.targeted_sentiment_detection_job_properties.input_data_config.s3_uri #=> String
    #   resp.data.targeted_sentiment_detection_job_properties.input_data_config.input_format #=> String, one of ["ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"]
    #   resp.data.targeted_sentiment_detection_job_properties.input_data_config.document_reader_config #=> Types::DocumentReaderConfig
    #   resp.data.targeted_sentiment_detection_job_properties.input_data_config.document_reader_config.document_read_action #=> String, one of ["TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"]
    #   resp.data.targeted_sentiment_detection_job_properties.input_data_config.document_reader_config.document_read_mode #=> String, one of ["SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"]
    #   resp.data.targeted_sentiment_detection_job_properties.input_data_config.document_reader_config.feature_types #=> Array<String>
    #   resp.data.targeted_sentiment_detection_job_properties.input_data_config.document_reader_config.feature_types[0] #=> String, one of ["TABLES", "FORMS"]
    #   resp.data.targeted_sentiment_detection_job_properties.output_data_config #=> Types::OutputDataConfig
    #   resp.data.targeted_sentiment_detection_job_properties.output_data_config.s3_uri #=> String
    #   resp.data.targeted_sentiment_detection_job_properties.output_data_config.kms_key_id #=> String
    #   resp.data.targeted_sentiment_detection_job_properties.language_code #=> String, one of ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"]
    #   resp.data.targeted_sentiment_detection_job_properties.data_access_role_arn #=> String
    #   resp.data.targeted_sentiment_detection_job_properties.volume_kms_key_id #=> String
    #   resp.data.targeted_sentiment_detection_job_properties.vpc_config #=> Types::VpcConfig
    #   resp.data.targeted_sentiment_detection_job_properties.vpc_config.security_group_ids #=> Array<String>
    #   resp.data.targeted_sentiment_detection_job_properties.vpc_config.security_group_ids[0] #=> String
    #   resp.data.targeted_sentiment_detection_job_properties.vpc_config.subnets #=> Array<String>
    #   resp.data.targeted_sentiment_detection_job_properties.vpc_config.subnets[0] #=> String
    #
    def describe_targeted_sentiment_detection_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeTargetedSentimentDetectionJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeTargetedSentimentDetectionJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeTargetedSentimentDetectionJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::JobNotFoundException, Errors::InternalServerException, Errors::TooManyRequestsException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribeTargetedSentimentDetectionJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeTargetedSentimentDetectionJob,
        stubs: @stubs,
        params_class: Params::DescribeTargetedSentimentDetectionJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_targeted_sentiment_detection_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the properties associated with a topic detection job. Use this operation to get
    #       the status of a detection job.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeTopicsDetectionJobInput}.
    #
    # @option params [String] :job_id
    #   <p>The identifier assigned by the user to the detection job.</p>
    #
    # @return [Types::DescribeTopicsDetectionJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_topics_detection_job(
    #     job_id: 'JobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeTopicsDetectionJobOutput
    #   resp.data.topics_detection_job_properties #=> Types::TopicsDetectionJobProperties
    #   resp.data.topics_detection_job_properties.job_id #=> String
    #   resp.data.topics_detection_job_properties.job_arn #=> String
    #   resp.data.topics_detection_job_properties.job_name #=> String
    #   resp.data.topics_detection_job_properties.job_status #=> String, one of ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #   resp.data.topics_detection_job_properties.message #=> String
    #   resp.data.topics_detection_job_properties.submit_time #=> Time
    #   resp.data.topics_detection_job_properties.end_time #=> Time
    #   resp.data.topics_detection_job_properties.input_data_config #=> Types::InputDataConfig
    #   resp.data.topics_detection_job_properties.input_data_config.s3_uri #=> String
    #   resp.data.topics_detection_job_properties.input_data_config.input_format #=> String, one of ["ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"]
    #   resp.data.topics_detection_job_properties.input_data_config.document_reader_config #=> Types::DocumentReaderConfig
    #   resp.data.topics_detection_job_properties.input_data_config.document_reader_config.document_read_action #=> String, one of ["TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"]
    #   resp.data.topics_detection_job_properties.input_data_config.document_reader_config.document_read_mode #=> String, one of ["SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"]
    #   resp.data.topics_detection_job_properties.input_data_config.document_reader_config.feature_types #=> Array<String>
    #   resp.data.topics_detection_job_properties.input_data_config.document_reader_config.feature_types[0] #=> String, one of ["TABLES", "FORMS"]
    #   resp.data.topics_detection_job_properties.output_data_config #=> Types::OutputDataConfig
    #   resp.data.topics_detection_job_properties.output_data_config.s3_uri #=> String
    #   resp.data.topics_detection_job_properties.output_data_config.kms_key_id #=> String
    #   resp.data.topics_detection_job_properties.number_of_topics #=> Integer
    #   resp.data.topics_detection_job_properties.data_access_role_arn #=> String
    #   resp.data.topics_detection_job_properties.volume_kms_key_id #=> String
    #   resp.data.topics_detection_job_properties.vpc_config #=> Types::VpcConfig
    #   resp.data.topics_detection_job_properties.vpc_config.security_group_ids #=> Array<String>
    #   resp.data.topics_detection_job_properties.vpc_config.security_group_ids[0] #=> String
    #   resp.data.topics_detection_job_properties.vpc_config.subnets #=> Array<String>
    #   resp.data.topics_detection_job_properties.vpc_config.subnets[0] #=> String
    #
    def describe_topics_detection_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeTopicsDetectionJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeTopicsDetectionJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeTopicsDetectionJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::JobNotFoundException, Errors::InternalServerException, Errors::TooManyRequestsException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribeTopicsDetectionJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeTopicsDetectionJob,
        stubs: @stubs,
        params_class: Params::DescribeTopicsDetectionJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_topics_detection_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Determines the dominant language of the input text. For a list of languages that Amazon
    #       Comprehend can detect, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/how-languages.html">Amazon Comprehend Supported Languages</a>. </p>
    #
    # @param [Hash] params
    #   See {Types::DetectDominantLanguageInput}.
    #
    # @option params [String] :text
    #   <p>A UTF-8 text string. Each string should contain at least 20 characters and must contain
    #         fewer that 5,000 bytes of UTF-8 encoded characters.</p>
    #
    # @return [Types::DetectDominantLanguageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detect_dominant_language(
    #     text: 'Text' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DetectDominantLanguageOutput
    #   resp.data.languages #=> Array<DominantLanguage>
    #   resp.data.languages[0] #=> Types::DominantLanguage
    #   resp.data.languages[0].language_code #=> String
    #   resp.data.languages[0].score #=> Float
    #
    def detect_dominant_language(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DetectDominantLanguageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DetectDominantLanguageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DetectDominantLanguage
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::TextSizeLimitExceededException, Errors::InvalidRequestException]),
        data_parser: Parsers::DetectDominantLanguage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DetectDominantLanguage,
        stubs: @stubs,
        params_class: Params::DetectDominantLanguageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :detect_dominant_language
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Inspects text for named entities, and returns information about them. For more
    #       information, about named entities, see <a>how-entities</a>. </p>
    #
    # @param [Hash] params
    #   See {Types::DetectEntitiesInput}.
    #
    # @option params [String] :text
    #   <p>A UTF-8 text string. Each string must contain fewer that 5,000 bytes of UTF-8 encoded
    #         characters.</p>
    #
    # @option params [String] :language_code
    #   <p>The language of the input documents. You can specify any of the primary languages
    #         supported by Amazon Comprehend. All documents must be in the same language.</p>
    #            <p>If your request includes the endpoint for a custom entity recognition model, Amazon
    #         Comprehend uses the language of your custom model, and it ignores any language code that you
    #         specify here.</p>
    #
    # @option params [String] :endpoint_arn
    #   <p>The Amazon Resource Name of an endpoint that is associated with a custom entity
    #         recognition model. Provide an endpoint if you want to detect entities by using your own custom
    #         model instead of the default model that is used by Amazon Comprehend.</p>
    #            <p>If you specify an endpoint, Amazon Comprehend uses the language of your custom model, and
    #         it ignores any language code that you provide in your request.</p>
    #            <p>For information about endpoints, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/manage-endpoints.html">Managing endpoints</a>.</p>
    #
    # @return [Types::DetectEntitiesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detect_entities(
    #     text: 'Text', # required
    #     language_code: 'en', # accepts ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"]
    #     endpoint_arn: 'EndpointArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DetectEntitiesOutput
    #   resp.data.entities #=> Array<Entity>
    #   resp.data.entities[0] #=> Types::Entity
    #   resp.data.entities[0].score #=> Float
    #   resp.data.entities[0].type #=> String, one of ["PERSON", "LOCATION", "ORGANIZATION", "COMMERCIAL_ITEM", "EVENT", "DATE", "QUANTITY", "TITLE", "OTHER"]
    #   resp.data.entities[0].text #=> String
    #   resp.data.entities[0].begin_offset #=> Integer
    #   resp.data.entities[0].end_offset #=> Integer
    #
    def detect_entities(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DetectEntitiesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DetectEntitiesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DetectEntities
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::UnsupportedLanguageException, Errors::ResourceUnavailableException, Errors::TextSizeLimitExceededException, Errors::InvalidRequestException]),
        data_parser: Parsers::DetectEntities
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DetectEntities,
        stubs: @stubs,
        params_class: Params::DetectEntitiesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :detect_entities
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Detects the key noun phrases found in the text. </p>
    #
    # @param [Hash] params
    #   See {Types::DetectKeyPhrasesInput}.
    #
    # @option params [String] :text
    #   <p>A UTF-8 text string. Each string must contain fewer that 5,000 bytes of UTF-8 encoded
    #         characters.</p>
    #
    # @option params [String] :language_code
    #   <p>The language of the input documents. You can specify any of the primary languages
    #         supported by Amazon Comprehend. All documents must be in the same language.</p>
    #
    # @return [Types::DetectKeyPhrasesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detect_key_phrases(
    #     text: 'Text', # required
    #     language_code: 'en' # required - accepts ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DetectKeyPhrasesOutput
    #   resp.data.key_phrases #=> Array<KeyPhrase>
    #   resp.data.key_phrases[0] #=> Types::KeyPhrase
    #   resp.data.key_phrases[0].score #=> Float
    #   resp.data.key_phrases[0].text #=> String
    #   resp.data.key_phrases[0].begin_offset #=> Integer
    #   resp.data.key_phrases[0].end_offset #=> Integer
    #
    def detect_key_phrases(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DetectKeyPhrasesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DetectKeyPhrasesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DetectKeyPhrases
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::UnsupportedLanguageException, Errors::TextSizeLimitExceededException, Errors::InvalidRequestException]),
        data_parser: Parsers::DetectKeyPhrases
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DetectKeyPhrases,
        stubs: @stubs,
        params_class: Params::DetectKeyPhrasesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :detect_key_phrases
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Inspects the input text for entities that contain personally identifiable information
    #       (PII) and returns information about them.</p>
    #
    # @param [Hash] params
    #   See {Types::DetectPiiEntitiesInput}.
    #
    # @option params [String] :text
    #   <p>A UTF-8 text string. Each string must contain fewer that 5,000 bytes of UTF-8 encoded
    #         characters.</p>
    #
    # @option params [String] :language_code
    #   <p>The language of the input documents. Currently, English is the only valid language.</p>
    #
    # @return [Types::DetectPiiEntitiesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detect_pii_entities(
    #     text: 'Text', # required
    #     language_code: 'en' # required - accepts ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DetectPiiEntitiesOutput
    #   resp.data.entities #=> Array<PiiEntity>
    #   resp.data.entities[0] #=> Types::PiiEntity
    #   resp.data.entities[0].score #=> Float
    #   resp.data.entities[0].type #=> String, one of ["BANK_ACCOUNT_NUMBER", "BANK_ROUTING", "CREDIT_DEBIT_NUMBER", "CREDIT_DEBIT_CVV", "CREDIT_DEBIT_EXPIRY", "PIN", "EMAIL", "ADDRESS", "NAME", "PHONE", "SSN", "DATE_TIME", "PASSPORT_NUMBER", "DRIVER_ID", "URL", "AGE", "USERNAME", "PASSWORD", "AWS_ACCESS_KEY", "AWS_SECRET_KEY", "IP_ADDRESS", "MAC_ADDRESS", "ALL", "LICENSE_PLATE", "VEHICLE_IDENTIFICATION_NUMBER", "UK_NATIONAL_INSURANCE_NUMBER", "CA_SOCIAL_INSURANCE_NUMBER", "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER", "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER", "IN_PERMANENT_ACCOUNT_NUMBER", "IN_NREGA", "INTERNATIONAL_BANK_ACCOUNT_NUMBER", "SWIFT_CODE", "UK_NATIONAL_HEALTH_SERVICE_NUMBER", "CA_HEALTH_NUMBER", "IN_AADHAAR", "IN_VOTER_NUMBER"]
    #   resp.data.entities[0].begin_offset #=> Integer
    #   resp.data.entities[0].end_offset #=> Integer
    #
    def detect_pii_entities(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DetectPiiEntitiesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DetectPiiEntitiesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DetectPiiEntities
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::UnsupportedLanguageException, Errors::TextSizeLimitExceededException, Errors::InvalidRequestException]),
        data_parser: Parsers::DetectPiiEntities
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DetectPiiEntities,
        stubs: @stubs,
        params_class: Params::DetectPiiEntitiesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :detect_pii_entities
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Inspects text and returns an inference of the prevailing sentiment
    #         (<code>POSITIVE</code>, <code>NEUTRAL</code>, <code>MIXED</code>, or <code>NEGATIVE</code>). </p>
    #
    # @param [Hash] params
    #   See {Types::DetectSentimentInput}.
    #
    # @option params [String] :text
    #   <p>A UTF-8 text string. Each string must contain fewer that 5,000 bytes of UTF-8 encoded
    #         characters.</p>
    #
    # @option params [String] :language_code
    #   <p>The language of the input documents. You can specify any of the primary languages
    #         supported by Amazon Comprehend. All documents must be in the same language.</p>
    #
    # @return [Types::DetectSentimentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detect_sentiment(
    #     text: 'Text', # required
    #     language_code: 'en' # required - accepts ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DetectSentimentOutput
    #   resp.data.sentiment #=> String, one of ["POSITIVE", "NEGATIVE", "NEUTRAL", "MIXED"]
    #   resp.data.sentiment_score #=> Types::SentimentScore
    #   resp.data.sentiment_score.positive #=> Float
    #   resp.data.sentiment_score.negative #=> Float
    #   resp.data.sentiment_score.neutral #=> Float
    #   resp.data.sentiment_score.mixed #=> Float
    #
    def detect_sentiment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DetectSentimentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DetectSentimentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DetectSentiment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::UnsupportedLanguageException, Errors::TextSizeLimitExceededException, Errors::InvalidRequestException]),
        data_parser: Parsers::DetectSentiment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DetectSentiment,
        stubs: @stubs,
        params_class: Params::DetectSentimentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :detect_sentiment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Inspects text for syntax and the part of speech of words in the document. For more
    #       information, <a>how-syntax</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DetectSyntaxInput}.
    #
    # @option params [String] :text
    #   <p>A UTF-8 string. Each string must contain fewer that 5,000 bytes of UTF encoded
    #         characters.</p>
    #
    # @option params [String] :language_code
    #   <p>The language code of the input documents. You can specify any of the following languages
    #         supported by Amazon Comprehend: German ("de"), English ("en"), Spanish ("es"), French ("fr"),
    #         Italian ("it"), or Portuguese ("pt").</p>
    #
    # @return [Types::DetectSyntaxOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detect_syntax(
    #     text: 'Text', # required
    #     language_code: 'en' # required - accepts ["en", "es", "fr", "de", "it", "pt"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DetectSyntaxOutput
    #   resp.data.syntax_tokens #=> Array<SyntaxToken>
    #   resp.data.syntax_tokens[0] #=> Types::SyntaxToken
    #   resp.data.syntax_tokens[0].token_id #=> Integer
    #   resp.data.syntax_tokens[0].text #=> String
    #   resp.data.syntax_tokens[0].begin_offset #=> Integer
    #   resp.data.syntax_tokens[0].end_offset #=> Integer
    #   resp.data.syntax_tokens[0].part_of_speech #=> Types::PartOfSpeechTag
    #   resp.data.syntax_tokens[0].part_of_speech.tag #=> String, one of ["ADJ", "ADP", "ADV", "AUX", "CONJ", "CCONJ", "DET", "INTJ", "NOUN", "NUM", "O", "PART", "PRON", "PROPN", "PUNCT", "SCONJ", "SYM", "VERB"]
    #   resp.data.syntax_tokens[0].part_of_speech.score #=> Float
    #
    def detect_syntax(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DetectSyntaxInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DetectSyntaxInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DetectSyntax
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::UnsupportedLanguageException, Errors::TextSizeLimitExceededException, Errors::InvalidRequestException]),
        data_parser: Parsers::DetectSyntax
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DetectSyntax,
        stubs: @stubs,
        params_class: Params::DetectSyntaxOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :detect_syntax
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new custom model that replicates a source custom model that you import. The
    #       source model can be in your AWS account or another one.</p>
    #          <p>If the source model is in another AWS account, then it must have a resource-based policy
    #       that authorizes you to import it.</p>
    #          <p>The source model must be in the same AWS region that you're using when you import. You
    #       can't import a model that's in a different region.</p>
    #
    # @param [Hash] params
    #   See {Types::ImportModelInput}.
    #
    # @option params [String] :source_model_arn
    #   <p>The Amazon Resource Name (ARN) of the custom model to import.</p>
    #
    # @option params [String] :model_name
    #   <p>The name to assign to the custom model that is created in Amazon Comprehend by this
    #         import.</p>
    #
    # @option params [String] :version_name
    #   <p>The version name given to the custom model that is created by this import. Version names
    #         can have a maximum of 256 characters. Alphanumeric characters, hyphens (-) and underscores (_)
    #         are allowed. The version name must be unique among all models with the same classifier name in
    #         the account/AWS Region.</p>
    #
    # @option params [String] :model_kms_key_id
    #   <p>ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
    #         trained custom models. The ModelKmsKeyId can be either of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #               <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS Identity and Management (IAM) role that allows
    #         Amazon Comprehend to use Amazon Key Management Service (KMS) to encrypt or decrypt the custom
    #         model.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Tags to be associated with the custom model that is created by this import. A tag is a
    #         key-value pair that adds as a metadata to a resource used by Amazon Comprehend. For example, a
    #         tag with "Sales" as the key might be added to a resource to indicate its use by the sales
    #         department.</p>
    #
    # @return [Types::ImportModelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_model(
    #     source_model_arn: 'SourceModelArn', # required
    #     model_name: 'ModelName',
    #     version_name: 'VersionName',
    #     model_kms_key_id: 'ModelKmsKeyId',
    #     data_access_role_arn: 'DataAccessRoleArn',
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ImportModelOutput
    #   resp.data.model_arn #=> String
    #
    def import_model(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ImportModelInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ImportModelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ImportModel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceLimitExceededException, Errors::InternalServerException, Errors::TooManyTagsException, Errors::ResourceUnavailableException, Errors::KmsKeyValidationException, Errors::ResourceInUseException, Errors::TooManyRequestsException, Errors::InvalidRequestException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ImportModel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ImportModel,
        stubs: @stubs,
        params_class: Params::ImportModelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :import_model
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a list of the documentation classification jobs that you have submitted.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDocumentClassificationJobsInput}.
    #
    # @option params [DocumentClassificationJobFilter] :filter
    #   <p>Filters the jobs that are returned. You can filter jobs on their names, status, or the
    #         date and time that they were submitted. You can only set one filter at a time.</p>
    #
    # @option params [String] :next_token
    #   <p>Identifies the next page of results to return.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in each page. The default is 100.</p>
    #
    # @return [Types::ListDocumentClassificationJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_document_classification_jobs(
    #     filter: {
    #       job_name: 'JobName',
    #       job_status: 'SUBMITTED', # accepts ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #       submit_time_before: Time.now,
    #       submit_time_after: Time.now
    #     },
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDocumentClassificationJobsOutput
    #   resp.data.document_classification_job_properties_list #=> Array<DocumentClassificationJobProperties>
    #   resp.data.document_classification_job_properties_list[0] #=> Types::DocumentClassificationJobProperties
    #   resp.data.document_classification_job_properties_list[0].job_id #=> String
    #   resp.data.document_classification_job_properties_list[0].job_arn #=> String
    #   resp.data.document_classification_job_properties_list[0].job_name #=> String
    #   resp.data.document_classification_job_properties_list[0].job_status #=> String, one of ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #   resp.data.document_classification_job_properties_list[0].message #=> String
    #   resp.data.document_classification_job_properties_list[0].submit_time #=> Time
    #   resp.data.document_classification_job_properties_list[0].end_time #=> Time
    #   resp.data.document_classification_job_properties_list[0].document_classifier_arn #=> String
    #   resp.data.document_classification_job_properties_list[0].input_data_config #=> Types::InputDataConfig
    #   resp.data.document_classification_job_properties_list[0].input_data_config.s3_uri #=> String
    #   resp.data.document_classification_job_properties_list[0].input_data_config.input_format #=> String, one of ["ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"]
    #   resp.data.document_classification_job_properties_list[0].input_data_config.document_reader_config #=> Types::DocumentReaderConfig
    #   resp.data.document_classification_job_properties_list[0].input_data_config.document_reader_config.document_read_action #=> String, one of ["TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"]
    #   resp.data.document_classification_job_properties_list[0].input_data_config.document_reader_config.document_read_mode #=> String, one of ["SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"]
    #   resp.data.document_classification_job_properties_list[0].input_data_config.document_reader_config.feature_types #=> Array<String>
    #   resp.data.document_classification_job_properties_list[0].input_data_config.document_reader_config.feature_types[0] #=> String, one of ["TABLES", "FORMS"]
    #   resp.data.document_classification_job_properties_list[0].output_data_config #=> Types::OutputDataConfig
    #   resp.data.document_classification_job_properties_list[0].output_data_config.s3_uri #=> String
    #   resp.data.document_classification_job_properties_list[0].output_data_config.kms_key_id #=> String
    #   resp.data.document_classification_job_properties_list[0].data_access_role_arn #=> String
    #   resp.data.document_classification_job_properties_list[0].volume_kms_key_id #=> String
    #   resp.data.document_classification_job_properties_list[0].vpc_config #=> Types::VpcConfig
    #   resp.data.document_classification_job_properties_list[0].vpc_config.security_group_ids #=> Array<String>
    #   resp.data.document_classification_job_properties_list[0].vpc_config.security_group_ids[0] #=> String
    #   resp.data.document_classification_job_properties_list[0].vpc_config.subnets #=> Array<String>
    #   resp.data.document_classification_job_properties_list[0].vpc_config.subnets[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_document_classification_jobs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDocumentClassificationJobsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDocumentClassificationJobsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDocumentClassificationJobs
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidFilterException, Errors::InternalServerException, Errors::TooManyRequestsException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListDocumentClassificationJobs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDocumentClassificationJobs,
        stubs: @stubs,
        params_class: Params::ListDocumentClassificationJobsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_document_classification_jobs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a list of summaries of the document classifiers that you have created</p>
    #
    # @param [Hash] params
    #   See {Types::ListDocumentClassifierSummariesInput}.
    #
    # @option params [String] :next_token
    #   <p>Identifies the next page of results to return.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return on each page. The default is 100.</p>
    #
    # @return [Types::ListDocumentClassifierSummariesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_document_classifier_summaries(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDocumentClassifierSummariesOutput
    #   resp.data.document_classifier_summaries_list #=> Array<DocumentClassifierSummary>
    #   resp.data.document_classifier_summaries_list[0] #=> Types::DocumentClassifierSummary
    #   resp.data.document_classifier_summaries_list[0].document_classifier_name #=> String
    #   resp.data.document_classifier_summaries_list[0].number_of_versions #=> Integer
    #   resp.data.document_classifier_summaries_list[0].latest_version_created_at #=> Time
    #   resp.data.document_classifier_summaries_list[0].latest_version_name #=> String
    #   resp.data.document_classifier_summaries_list[0].latest_version_status #=> String, one of ["SUBMITTED", "TRAINING", "DELETING", "STOP_REQUESTED", "STOPPED", "IN_ERROR", "TRAINED"]
    #   resp.data.next_token #=> String
    #
    def list_document_classifier_summaries(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDocumentClassifierSummariesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDocumentClassifierSummariesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDocumentClassifierSummaries
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::TooManyRequestsException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListDocumentClassifierSummaries
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDocumentClassifierSummaries,
        stubs: @stubs,
        params_class: Params::ListDocumentClassifierSummariesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_document_classifier_summaries
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a list of the document classifiers that you have created.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDocumentClassifiersInput}.
    #
    # @option params [DocumentClassifierFilter] :filter
    #   <p>Filters the jobs that are returned. You can filter jobs on their name, status, or the date
    #         and time that they were submitted. You can only set one filter at a time.</p>
    #
    # @option params [String] :next_token
    #   <p>Identifies the next page of results to return.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in each page. The default is 100.</p>
    #
    # @return [Types::ListDocumentClassifiersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_document_classifiers(
    #     filter: {
    #       status: 'SUBMITTED', # accepts ["SUBMITTED", "TRAINING", "DELETING", "STOP_REQUESTED", "STOPPED", "IN_ERROR", "TRAINED"]
    #       document_classifier_name: 'DocumentClassifierName',
    #       submit_time_before: Time.now,
    #       submit_time_after: Time.now
    #     },
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDocumentClassifiersOutput
    #   resp.data.document_classifier_properties_list #=> Array<DocumentClassifierProperties>
    #   resp.data.document_classifier_properties_list[0] #=> Types::DocumentClassifierProperties
    #   resp.data.document_classifier_properties_list[0].document_classifier_arn #=> String
    #   resp.data.document_classifier_properties_list[0].language_code #=> String, one of ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"]
    #   resp.data.document_classifier_properties_list[0].status #=> String, one of ["SUBMITTED", "TRAINING", "DELETING", "STOP_REQUESTED", "STOPPED", "IN_ERROR", "TRAINED"]
    #   resp.data.document_classifier_properties_list[0].message #=> String
    #   resp.data.document_classifier_properties_list[0].submit_time #=> Time
    #   resp.data.document_classifier_properties_list[0].end_time #=> Time
    #   resp.data.document_classifier_properties_list[0].training_start_time #=> Time
    #   resp.data.document_classifier_properties_list[0].training_end_time #=> Time
    #   resp.data.document_classifier_properties_list[0].input_data_config #=> Types::DocumentClassifierInputDataConfig
    #   resp.data.document_classifier_properties_list[0].input_data_config.data_format #=> String, one of ["COMPREHEND_CSV", "AUGMENTED_MANIFEST"]
    #   resp.data.document_classifier_properties_list[0].input_data_config.s3_uri #=> String
    #   resp.data.document_classifier_properties_list[0].input_data_config.test_s3_uri #=> String
    #   resp.data.document_classifier_properties_list[0].input_data_config.label_delimiter #=> String
    #   resp.data.document_classifier_properties_list[0].input_data_config.augmented_manifests #=> Array<AugmentedManifestsListItem>
    #   resp.data.document_classifier_properties_list[0].input_data_config.augmented_manifests[0] #=> Types::AugmentedManifestsListItem
    #   resp.data.document_classifier_properties_list[0].input_data_config.augmented_manifests[0].s3_uri #=> String
    #   resp.data.document_classifier_properties_list[0].input_data_config.augmented_manifests[0].split #=> String, one of ["TRAIN", "TEST"]
    #   resp.data.document_classifier_properties_list[0].input_data_config.augmented_manifests[0].attribute_names #=> Array<String>
    #   resp.data.document_classifier_properties_list[0].input_data_config.augmented_manifests[0].attribute_names[0] #=> String
    #   resp.data.document_classifier_properties_list[0].input_data_config.augmented_manifests[0].annotation_data_s3_uri #=> String
    #   resp.data.document_classifier_properties_list[0].input_data_config.augmented_manifests[0].source_documents_s3_uri #=> String
    #   resp.data.document_classifier_properties_list[0].input_data_config.augmented_manifests[0].document_type #=> String, one of ["PLAIN_TEXT_DOCUMENT", "SEMI_STRUCTURED_DOCUMENT"]
    #   resp.data.document_classifier_properties_list[0].output_data_config #=> Types::DocumentClassifierOutputDataConfig
    #   resp.data.document_classifier_properties_list[0].output_data_config.s3_uri #=> String
    #   resp.data.document_classifier_properties_list[0].output_data_config.kms_key_id #=> String
    #   resp.data.document_classifier_properties_list[0].classifier_metadata #=> Types::ClassifierMetadata
    #   resp.data.document_classifier_properties_list[0].classifier_metadata.number_of_labels #=> Integer
    #   resp.data.document_classifier_properties_list[0].classifier_metadata.number_of_trained_documents #=> Integer
    #   resp.data.document_classifier_properties_list[0].classifier_metadata.number_of_test_documents #=> Integer
    #   resp.data.document_classifier_properties_list[0].classifier_metadata.evaluation_metrics #=> Types::ClassifierEvaluationMetrics
    #   resp.data.document_classifier_properties_list[0].classifier_metadata.evaluation_metrics.accuracy #=> Float
    #   resp.data.document_classifier_properties_list[0].classifier_metadata.evaluation_metrics.precision #=> Float
    #   resp.data.document_classifier_properties_list[0].classifier_metadata.evaluation_metrics.recall #=> Float
    #   resp.data.document_classifier_properties_list[0].classifier_metadata.evaluation_metrics.f1_score #=> Float
    #   resp.data.document_classifier_properties_list[0].classifier_metadata.evaluation_metrics.micro_precision #=> Float
    #   resp.data.document_classifier_properties_list[0].classifier_metadata.evaluation_metrics.micro_recall #=> Float
    #   resp.data.document_classifier_properties_list[0].classifier_metadata.evaluation_metrics.micro_f1_score #=> Float
    #   resp.data.document_classifier_properties_list[0].classifier_metadata.evaluation_metrics.hamming_loss #=> Float
    #   resp.data.document_classifier_properties_list[0].data_access_role_arn #=> String
    #   resp.data.document_classifier_properties_list[0].volume_kms_key_id #=> String
    #   resp.data.document_classifier_properties_list[0].vpc_config #=> Types::VpcConfig
    #   resp.data.document_classifier_properties_list[0].vpc_config.security_group_ids #=> Array<String>
    #   resp.data.document_classifier_properties_list[0].vpc_config.security_group_ids[0] #=> String
    #   resp.data.document_classifier_properties_list[0].vpc_config.subnets #=> Array<String>
    #   resp.data.document_classifier_properties_list[0].vpc_config.subnets[0] #=> String
    #   resp.data.document_classifier_properties_list[0].mode #=> String, one of ["MULTI_CLASS", "MULTI_LABEL"]
    #   resp.data.document_classifier_properties_list[0].model_kms_key_id #=> String
    #   resp.data.document_classifier_properties_list[0].version_name #=> String
    #   resp.data.document_classifier_properties_list[0].source_model_arn #=> String
    #   resp.data.next_token #=> String
    #
    def list_document_classifiers(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDocumentClassifiersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDocumentClassifiersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDocumentClassifiers
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidFilterException, Errors::InternalServerException, Errors::TooManyRequestsException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListDocumentClassifiers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDocumentClassifiers,
        stubs: @stubs,
        params_class: Params::ListDocumentClassifiersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_document_classifiers
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a list of the dominant language detection jobs that you have submitted.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDominantLanguageDetectionJobsInput}.
    #
    # @option params [DominantLanguageDetectionJobFilter] :filter
    #   <p>Filters that jobs that are returned. You can filter jobs on their name, status, or the
    #         date and time that they were submitted. You can only set one filter at a time.</p>
    #
    # @option params [String] :next_token
    #   <p>Identifies the next page of results to return.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in each page. The default is 100.</p>
    #
    # @return [Types::ListDominantLanguageDetectionJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_dominant_language_detection_jobs(
    #     filter: {
    #       job_name: 'JobName',
    #       job_status: 'SUBMITTED', # accepts ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #       submit_time_before: Time.now,
    #       submit_time_after: Time.now
    #     },
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDominantLanguageDetectionJobsOutput
    #   resp.data.dominant_language_detection_job_properties_list #=> Array<DominantLanguageDetectionJobProperties>
    #   resp.data.dominant_language_detection_job_properties_list[0] #=> Types::DominantLanguageDetectionJobProperties
    #   resp.data.dominant_language_detection_job_properties_list[0].job_id #=> String
    #   resp.data.dominant_language_detection_job_properties_list[0].job_arn #=> String
    #   resp.data.dominant_language_detection_job_properties_list[0].job_name #=> String
    #   resp.data.dominant_language_detection_job_properties_list[0].job_status #=> String, one of ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #   resp.data.dominant_language_detection_job_properties_list[0].message #=> String
    #   resp.data.dominant_language_detection_job_properties_list[0].submit_time #=> Time
    #   resp.data.dominant_language_detection_job_properties_list[0].end_time #=> Time
    #   resp.data.dominant_language_detection_job_properties_list[0].input_data_config #=> Types::InputDataConfig
    #   resp.data.dominant_language_detection_job_properties_list[0].input_data_config.s3_uri #=> String
    #   resp.data.dominant_language_detection_job_properties_list[0].input_data_config.input_format #=> String, one of ["ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"]
    #   resp.data.dominant_language_detection_job_properties_list[0].input_data_config.document_reader_config #=> Types::DocumentReaderConfig
    #   resp.data.dominant_language_detection_job_properties_list[0].input_data_config.document_reader_config.document_read_action #=> String, one of ["TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"]
    #   resp.data.dominant_language_detection_job_properties_list[0].input_data_config.document_reader_config.document_read_mode #=> String, one of ["SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"]
    #   resp.data.dominant_language_detection_job_properties_list[0].input_data_config.document_reader_config.feature_types #=> Array<String>
    #   resp.data.dominant_language_detection_job_properties_list[0].input_data_config.document_reader_config.feature_types[0] #=> String, one of ["TABLES", "FORMS"]
    #   resp.data.dominant_language_detection_job_properties_list[0].output_data_config #=> Types::OutputDataConfig
    #   resp.data.dominant_language_detection_job_properties_list[0].output_data_config.s3_uri #=> String
    #   resp.data.dominant_language_detection_job_properties_list[0].output_data_config.kms_key_id #=> String
    #   resp.data.dominant_language_detection_job_properties_list[0].data_access_role_arn #=> String
    #   resp.data.dominant_language_detection_job_properties_list[0].volume_kms_key_id #=> String
    #   resp.data.dominant_language_detection_job_properties_list[0].vpc_config #=> Types::VpcConfig
    #   resp.data.dominant_language_detection_job_properties_list[0].vpc_config.security_group_ids #=> Array<String>
    #   resp.data.dominant_language_detection_job_properties_list[0].vpc_config.security_group_ids[0] #=> String
    #   resp.data.dominant_language_detection_job_properties_list[0].vpc_config.subnets #=> Array<String>
    #   resp.data.dominant_language_detection_job_properties_list[0].vpc_config.subnets[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_dominant_language_detection_jobs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDominantLanguageDetectionJobsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDominantLanguageDetectionJobsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDominantLanguageDetectionJobs
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidFilterException, Errors::InternalServerException, Errors::TooManyRequestsException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListDominantLanguageDetectionJobs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDominantLanguageDetectionJobs,
        stubs: @stubs,
        params_class: Params::ListDominantLanguageDetectionJobsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_dominant_language_detection_jobs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a list of all existing endpoints that you've created.
    #       For information about endpoints, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/manage-endpoints.html">Managing endpoints</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListEndpointsInput}.
    #
    # @option params [EndpointFilter] :filter
    #   <p>Filters the endpoints that are returned. You can filter endpoints on their name, model,
    #         status, or the date and time that they were created. You can only set one filter at a time.
    #       </p>
    #
    # @option params [String] :next_token
    #   <p>Identifies the next page of results to return.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in each page. The default is 100.</p>
    #
    # @return [Types::ListEndpointsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_endpoints(
    #     filter: {
    #       model_arn: 'ModelArn',
    #       status: 'CREATING', # accepts ["CREATING", "DELETING", "FAILED", "IN_SERVICE", "UPDATING"]
    #       creation_time_before: Time.now,
    #       creation_time_after: Time.now
    #     },
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListEndpointsOutput
    #   resp.data.endpoint_properties_list #=> Array<EndpointProperties>
    #   resp.data.endpoint_properties_list[0] #=> Types::EndpointProperties
    #   resp.data.endpoint_properties_list[0].endpoint_arn #=> String
    #   resp.data.endpoint_properties_list[0].status #=> String, one of ["CREATING", "DELETING", "FAILED", "IN_SERVICE", "UPDATING"]
    #   resp.data.endpoint_properties_list[0].message #=> String
    #   resp.data.endpoint_properties_list[0].model_arn #=> String
    #   resp.data.endpoint_properties_list[0].desired_model_arn #=> String
    #   resp.data.endpoint_properties_list[0].desired_inference_units #=> Integer
    #   resp.data.endpoint_properties_list[0].current_inference_units #=> Integer
    #   resp.data.endpoint_properties_list[0].creation_time #=> Time
    #   resp.data.endpoint_properties_list[0].last_modified_time #=> Time
    #   resp.data.endpoint_properties_list[0].data_access_role_arn #=> String
    #   resp.data.endpoint_properties_list[0].desired_data_access_role_arn #=> String
    #   resp.data.next_token #=> String
    #
    def list_endpoints(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListEndpointsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListEndpointsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListEndpoints
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::TooManyRequestsException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListEndpoints
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListEndpoints,
        stubs: @stubs,
        params_class: Params::ListEndpointsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_endpoints
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a list of the entity detection jobs that you have submitted.</p>
    #
    # @param [Hash] params
    #   See {Types::ListEntitiesDetectionJobsInput}.
    #
    # @option params [EntitiesDetectionJobFilter] :filter
    #   <p>Filters the jobs that are returned. You can filter jobs on their name, status, or the date
    #         and time that they were submitted. You can only set one filter at a time.</p>
    #
    # @option params [String] :next_token
    #   <p>Identifies the next page of results to return.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in each page. The default is 100.</p>
    #
    # @return [Types::ListEntitiesDetectionJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_entities_detection_jobs(
    #     filter: {
    #       job_name: 'JobName',
    #       job_status: 'SUBMITTED', # accepts ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #       submit_time_before: Time.now,
    #       submit_time_after: Time.now
    #     },
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListEntitiesDetectionJobsOutput
    #   resp.data.entities_detection_job_properties_list #=> Array<EntitiesDetectionJobProperties>
    #   resp.data.entities_detection_job_properties_list[0] #=> Types::EntitiesDetectionJobProperties
    #   resp.data.entities_detection_job_properties_list[0].job_id #=> String
    #   resp.data.entities_detection_job_properties_list[0].job_arn #=> String
    #   resp.data.entities_detection_job_properties_list[0].job_name #=> String
    #   resp.data.entities_detection_job_properties_list[0].job_status #=> String, one of ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #   resp.data.entities_detection_job_properties_list[0].message #=> String
    #   resp.data.entities_detection_job_properties_list[0].submit_time #=> Time
    #   resp.data.entities_detection_job_properties_list[0].end_time #=> Time
    #   resp.data.entities_detection_job_properties_list[0].entity_recognizer_arn #=> String
    #   resp.data.entities_detection_job_properties_list[0].input_data_config #=> Types::InputDataConfig
    #   resp.data.entities_detection_job_properties_list[0].input_data_config.s3_uri #=> String
    #   resp.data.entities_detection_job_properties_list[0].input_data_config.input_format #=> String, one of ["ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"]
    #   resp.data.entities_detection_job_properties_list[0].input_data_config.document_reader_config #=> Types::DocumentReaderConfig
    #   resp.data.entities_detection_job_properties_list[0].input_data_config.document_reader_config.document_read_action #=> String, one of ["TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"]
    #   resp.data.entities_detection_job_properties_list[0].input_data_config.document_reader_config.document_read_mode #=> String, one of ["SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"]
    #   resp.data.entities_detection_job_properties_list[0].input_data_config.document_reader_config.feature_types #=> Array<String>
    #   resp.data.entities_detection_job_properties_list[0].input_data_config.document_reader_config.feature_types[0] #=> String, one of ["TABLES", "FORMS"]
    #   resp.data.entities_detection_job_properties_list[0].output_data_config #=> Types::OutputDataConfig
    #   resp.data.entities_detection_job_properties_list[0].output_data_config.s3_uri #=> String
    #   resp.data.entities_detection_job_properties_list[0].output_data_config.kms_key_id #=> String
    #   resp.data.entities_detection_job_properties_list[0].language_code #=> String, one of ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"]
    #   resp.data.entities_detection_job_properties_list[0].data_access_role_arn #=> String
    #   resp.data.entities_detection_job_properties_list[0].volume_kms_key_id #=> String
    #   resp.data.entities_detection_job_properties_list[0].vpc_config #=> Types::VpcConfig
    #   resp.data.entities_detection_job_properties_list[0].vpc_config.security_group_ids #=> Array<String>
    #   resp.data.entities_detection_job_properties_list[0].vpc_config.security_group_ids[0] #=> String
    #   resp.data.entities_detection_job_properties_list[0].vpc_config.subnets #=> Array<String>
    #   resp.data.entities_detection_job_properties_list[0].vpc_config.subnets[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_entities_detection_jobs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListEntitiesDetectionJobsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListEntitiesDetectionJobsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListEntitiesDetectionJobs
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidFilterException, Errors::InternalServerException, Errors::TooManyRequestsException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListEntitiesDetectionJobs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListEntitiesDetectionJobs,
        stubs: @stubs,
        params_class: Params::ListEntitiesDetectionJobsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_entities_detection_jobs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a list of summaries for the entity recognizers that you have created.</p>
    #
    # @param [Hash] params
    #   See {Types::ListEntityRecognizerSummariesInput}.
    #
    # @option params [String] :next_token
    #   <p>Identifies the next page of results to return.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return on each page. The default is 100.</p>
    #
    # @return [Types::ListEntityRecognizerSummariesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_entity_recognizer_summaries(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListEntityRecognizerSummariesOutput
    #   resp.data.entity_recognizer_summaries_list #=> Array<EntityRecognizerSummary>
    #   resp.data.entity_recognizer_summaries_list[0] #=> Types::EntityRecognizerSummary
    #   resp.data.entity_recognizer_summaries_list[0].recognizer_name #=> String
    #   resp.data.entity_recognizer_summaries_list[0].number_of_versions #=> Integer
    #   resp.data.entity_recognizer_summaries_list[0].latest_version_created_at #=> Time
    #   resp.data.entity_recognizer_summaries_list[0].latest_version_name #=> String
    #   resp.data.entity_recognizer_summaries_list[0].latest_version_status #=> String, one of ["SUBMITTED", "TRAINING", "DELETING", "STOP_REQUESTED", "STOPPED", "IN_ERROR", "TRAINED"]
    #   resp.data.next_token #=> String
    #
    def list_entity_recognizer_summaries(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListEntityRecognizerSummariesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListEntityRecognizerSummariesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListEntityRecognizerSummaries
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::TooManyRequestsException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListEntityRecognizerSummaries
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListEntityRecognizerSummaries,
        stubs: @stubs,
        params_class: Params::ListEntityRecognizerSummariesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_entity_recognizer_summaries
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a list of the properties of all entity recognizers that you created, including
    #       recognizers currently in training. Allows you to filter the list of recognizers based on
    #       criteria such as status and submission time. This call returns up to 500 entity recognizers in
    #       the list, with a default number of 100 recognizers in the list.</p>
    #          <p>The results of this list are not in any particular order. Please get the list and sort
    #       locally if needed.</p>
    #
    # @param [Hash] params
    #   See {Types::ListEntityRecognizersInput}.
    #
    # @option params [EntityRecognizerFilter] :filter
    #   <p>Filters the list of entities returned. You can filter on <code>Status</code>,
    #           <code>SubmitTimeBefore</code>, or <code>SubmitTimeAfter</code>. You can only set one filter
    #         at a time.</p>
    #
    # @option params [String] :next_token
    #   <p>Identifies the next page of results to return.</p>
    #
    # @option params [Integer] :max_results
    #   <p> The maximum number of results to return on each page. The default is 100.</p>
    #
    # @return [Types::ListEntityRecognizersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_entity_recognizers(
    #     filter: {
    #       status: 'SUBMITTED', # accepts ["SUBMITTED", "TRAINING", "DELETING", "STOP_REQUESTED", "STOPPED", "IN_ERROR", "TRAINED"]
    #       recognizer_name: 'RecognizerName',
    #       submit_time_before: Time.now,
    #       submit_time_after: Time.now
    #     },
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListEntityRecognizersOutput
    #   resp.data.entity_recognizer_properties_list #=> Array<EntityRecognizerProperties>
    #   resp.data.entity_recognizer_properties_list[0] #=> Types::EntityRecognizerProperties
    #   resp.data.entity_recognizer_properties_list[0].entity_recognizer_arn #=> String
    #   resp.data.entity_recognizer_properties_list[0].language_code #=> String, one of ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"]
    #   resp.data.entity_recognizer_properties_list[0].status #=> String, one of ["SUBMITTED", "TRAINING", "DELETING", "STOP_REQUESTED", "STOPPED", "IN_ERROR", "TRAINED"]
    #   resp.data.entity_recognizer_properties_list[0].message #=> String
    #   resp.data.entity_recognizer_properties_list[0].submit_time #=> Time
    #   resp.data.entity_recognizer_properties_list[0].end_time #=> Time
    #   resp.data.entity_recognizer_properties_list[0].training_start_time #=> Time
    #   resp.data.entity_recognizer_properties_list[0].training_end_time #=> Time
    #   resp.data.entity_recognizer_properties_list[0].input_data_config #=> Types::EntityRecognizerInputDataConfig
    #   resp.data.entity_recognizer_properties_list[0].input_data_config.data_format #=> String, one of ["COMPREHEND_CSV", "AUGMENTED_MANIFEST"]
    #   resp.data.entity_recognizer_properties_list[0].input_data_config.entity_types #=> Array<EntityTypesListItem>
    #   resp.data.entity_recognizer_properties_list[0].input_data_config.entity_types[0] #=> Types::EntityTypesListItem
    #   resp.data.entity_recognizer_properties_list[0].input_data_config.entity_types[0].type #=> String
    #   resp.data.entity_recognizer_properties_list[0].input_data_config.documents #=> Types::EntityRecognizerDocuments
    #   resp.data.entity_recognizer_properties_list[0].input_data_config.documents.s3_uri #=> String
    #   resp.data.entity_recognizer_properties_list[0].input_data_config.documents.test_s3_uri #=> String
    #   resp.data.entity_recognizer_properties_list[0].input_data_config.documents.input_format #=> String, one of ["ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"]
    #   resp.data.entity_recognizer_properties_list[0].input_data_config.annotations #=> Types::EntityRecognizerAnnotations
    #   resp.data.entity_recognizer_properties_list[0].input_data_config.annotations.s3_uri #=> String
    #   resp.data.entity_recognizer_properties_list[0].input_data_config.annotations.test_s3_uri #=> String
    #   resp.data.entity_recognizer_properties_list[0].input_data_config.entity_list #=> Types::EntityRecognizerEntityList
    #   resp.data.entity_recognizer_properties_list[0].input_data_config.entity_list.s3_uri #=> String
    #   resp.data.entity_recognizer_properties_list[0].input_data_config.augmented_manifests #=> Array<AugmentedManifestsListItem>
    #   resp.data.entity_recognizer_properties_list[0].input_data_config.augmented_manifests[0] #=> Types::AugmentedManifestsListItem
    #   resp.data.entity_recognizer_properties_list[0].input_data_config.augmented_manifests[0].s3_uri #=> String
    #   resp.data.entity_recognizer_properties_list[0].input_data_config.augmented_manifests[0].split #=> String, one of ["TRAIN", "TEST"]
    #   resp.data.entity_recognizer_properties_list[0].input_data_config.augmented_manifests[0].attribute_names #=> Array<String>
    #   resp.data.entity_recognizer_properties_list[0].input_data_config.augmented_manifests[0].attribute_names[0] #=> String
    #   resp.data.entity_recognizer_properties_list[0].input_data_config.augmented_manifests[0].annotation_data_s3_uri #=> String
    #   resp.data.entity_recognizer_properties_list[0].input_data_config.augmented_manifests[0].source_documents_s3_uri #=> String
    #   resp.data.entity_recognizer_properties_list[0].input_data_config.augmented_manifests[0].document_type #=> String, one of ["PLAIN_TEXT_DOCUMENT", "SEMI_STRUCTURED_DOCUMENT"]
    #   resp.data.entity_recognizer_properties_list[0].recognizer_metadata #=> Types::EntityRecognizerMetadata
    #   resp.data.entity_recognizer_properties_list[0].recognizer_metadata.number_of_trained_documents #=> Integer
    #   resp.data.entity_recognizer_properties_list[0].recognizer_metadata.number_of_test_documents #=> Integer
    #   resp.data.entity_recognizer_properties_list[0].recognizer_metadata.evaluation_metrics #=> Types::EntityRecognizerEvaluationMetrics
    #   resp.data.entity_recognizer_properties_list[0].recognizer_metadata.evaluation_metrics.precision #=> Float
    #   resp.data.entity_recognizer_properties_list[0].recognizer_metadata.evaluation_metrics.recall #=> Float
    #   resp.data.entity_recognizer_properties_list[0].recognizer_metadata.evaluation_metrics.f1_score #=> Float
    #   resp.data.entity_recognizer_properties_list[0].recognizer_metadata.entity_types #=> Array<EntityRecognizerMetadataEntityTypesListItem>
    #   resp.data.entity_recognizer_properties_list[0].recognizer_metadata.entity_types[0] #=> Types::EntityRecognizerMetadataEntityTypesListItem
    #   resp.data.entity_recognizer_properties_list[0].recognizer_metadata.entity_types[0].type #=> String
    #   resp.data.entity_recognizer_properties_list[0].recognizer_metadata.entity_types[0].evaluation_metrics #=> Types::EntityTypesEvaluationMetrics
    #   resp.data.entity_recognizer_properties_list[0].recognizer_metadata.entity_types[0].evaluation_metrics.precision #=> Float
    #   resp.data.entity_recognizer_properties_list[0].recognizer_metadata.entity_types[0].evaluation_metrics.recall #=> Float
    #   resp.data.entity_recognizer_properties_list[0].recognizer_metadata.entity_types[0].evaluation_metrics.f1_score #=> Float
    #   resp.data.entity_recognizer_properties_list[0].recognizer_metadata.entity_types[0].number_of_train_mentions #=> Integer
    #   resp.data.entity_recognizer_properties_list[0].data_access_role_arn #=> String
    #   resp.data.entity_recognizer_properties_list[0].volume_kms_key_id #=> String
    #   resp.data.entity_recognizer_properties_list[0].vpc_config #=> Types::VpcConfig
    #   resp.data.entity_recognizer_properties_list[0].vpc_config.security_group_ids #=> Array<String>
    #   resp.data.entity_recognizer_properties_list[0].vpc_config.security_group_ids[0] #=> String
    #   resp.data.entity_recognizer_properties_list[0].vpc_config.subnets #=> Array<String>
    #   resp.data.entity_recognizer_properties_list[0].vpc_config.subnets[0] #=> String
    #   resp.data.entity_recognizer_properties_list[0].model_kms_key_id #=> String
    #   resp.data.entity_recognizer_properties_list[0].version_name #=> String
    #   resp.data.entity_recognizer_properties_list[0].source_model_arn #=> String
    #   resp.data.next_token #=> String
    #
    def list_entity_recognizers(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListEntityRecognizersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListEntityRecognizersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListEntityRecognizers
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidFilterException, Errors::InternalServerException, Errors::TooManyRequestsException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListEntityRecognizers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListEntityRecognizers,
        stubs: @stubs,
        params_class: Params::ListEntityRecognizersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_entity_recognizers
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a list of the events detection jobs that you have submitted.</p>
    #
    # @param [Hash] params
    #   See {Types::ListEventsDetectionJobsInput}.
    #
    # @option params [EventsDetectionJobFilter] :filter
    #   <p>Filters the jobs that are returned. You can filter jobs on their name, status, or the date
    #         and time that they were submitted. You can only set one filter at a time.</p>
    #
    # @option params [String] :next_token
    #   <p>Identifies the next page of results to return.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in each page.</p>
    #
    # @return [Types::ListEventsDetectionJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_events_detection_jobs(
    #     filter: {
    #       job_name: 'JobName',
    #       job_status: 'SUBMITTED', # accepts ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #       submit_time_before: Time.now,
    #       submit_time_after: Time.now
    #     },
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListEventsDetectionJobsOutput
    #   resp.data.events_detection_job_properties_list #=> Array<EventsDetectionJobProperties>
    #   resp.data.events_detection_job_properties_list[0] #=> Types::EventsDetectionJobProperties
    #   resp.data.events_detection_job_properties_list[0].job_id #=> String
    #   resp.data.events_detection_job_properties_list[0].job_arn #=> String
    #   resp.data.events_detection_job_properties_list[0].job_name #=> String
    #   resp.data.events_detection_job_properties_list[0].job_status #=> String, one of ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #   resp.data.events_detection_job_properties_list[0].message #=> String
    #   resp.data.events_detection_job_properties_list[0].submit_time #=> Time
    #   resp.data.events_detection_job_properties_list[0].end_time #=> Time
    #   resp.data.events_detection_job_properties_list[0].input_data_config #=> Types::InputDataConfig
    #   resp.data.events_detection_job_properties_list[0].input_data_config.s3_uri #=> String
    #   resp.data.events_detection_job_properties_list[0].input_data_config.input_format #=> String, one of ["ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"]
    #   resp.data.events_detection_job_properties_list[0].input_data_config.document_reader_config #=> Types::DocumentReaderConfig
    #   resp.data.events_detection_job_properties_list[0].input_data_config.document_reader_config.document_read_action #=> String, one of ["TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"]
    #   resp.data.events_detection_job_properties_list[0].input_data_config.document_reader_config.document_read_mode #=> String, one of ["SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"]
    #   resp.data.events_detection_job_properties_list[0].input_data_config.document_reader_config.feature_types #=> Array<String>
    #   resp.data.events_detection_job_properties_list[0].input_data_config.document_reader_config.feature_types[0] #=> String, one of ["TABLES", "FORMS"]
    #   resp.data.events_detection_job_properties_list[0].output_data_config #=> Types::OutputDataConfig
    #   resp.data.events_detection_job_properties_list[0].output_data_config.s3_uri #=> String
    #   resp.data.events_detection_job_properties_list[0].output_data_config.kms_key_id #=> String
    #   resp.data.events_detection_job_properties_list[0].language_code #=> String, one of ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"]
    #   resp.data.events_detection_job_properties_list[0].data_access_role_arn #=> String
    #   resp.data.events_detection_job_properties_list[0].target_event_types #=> Array<String>
    #   resp.data.events_detection_job_properties_list[0].target_event_types[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_events_detection_jobs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListEventsDetectionJobsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListEventsDetectionJobsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListEventsDetectionJobs
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidFilterException, Errors::InternalServerException, Errors::TooManyRequestsException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListEventsDetectionJobs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListEventsDetectionJobs,
        stubs: @stubs,
        params_class: Params::ListEventsDetectionJobsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_events_detection_jobs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Get a list of key phrase detection jobs that you have submitted.</p>
    #
    # @param [Hash] params
    #   See {Types::ListKeyPhrasesDetectionJobsInput}.
    #
    # @option params [KeyPhrasesDetectionJobFilter] :filter
    #   <p>Filters the jobs that are returned. You can filter jobs on their name, status, or the date
    #         and time that they were submitted. You can only set one filter at a time.</p>
    #
    # @option params [String] :next_token
    #   <p>Identifies the next page of results to return.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in each page. The default is 100.</p>
    #
    # @return [Types::ListKeyPhrasesDetectionJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_key_phrases_detection_jobs(
    #     filter: {
    #       job_name: 'JobName',
    #       job_status: 'SUBMITTED', # accepts ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #       submit_time_before: Time.now,
    #       submit_time_after: Time.now
    #     },
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListKeyPhrasesDetectionJobsOutput
    #   resp.data.key_phrases_detection_job_properties_list #=> Array<KeyPhrasesDetectionJobProperties>
    #   resp.data.key_phrases_detection_job_properties_list[0] #=> Types::KeyPhrasesDetectionJobProperties
    #   resp.data.key_phrases_detection_job_properties_list[0].job_id #=> String
    #   resp.data.key_phrases_detection_job_properties_list[0].job_arn #=> String
    #   resp.data.key_phrases_detection_job_properties_list[0].job_name #=> String
    #   resp.data.key_phrases_detection_job_properties_list[0].job_status #=> String, one of ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #   resp.data.key_phrases_detection_job_properties_list[0].message #=> String
    #   resp.data.key_phrases_detection_job_properties_list[0].submit_time #=> Time
    #   resp.data.key_phrases_detection_job_properties_list[0].end_time #=> Time
    #   resp.data.key_phrases_detection_job_properties_list[0].input_data_config #=> Types::InputDataConfig
    #   resp.data.key_phrases_detection_job_properties_list[0].input_data_config.s3_uri #=> String
    #   resp.data.key_phrases_detection_job_properties_list[0].input_data_config.input_format #=> String, one of ["ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"]
    #   resp.data.key_phrases_detection_job_properties_list[0].input_data_config.document_reader_config #=> Types::DocumentReaderConfig
    #   resp.data.key_phrases_detection_job_properties_list[0].input_data_config.document_reader_config.document_read_action #=> String, one of ["TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"]
    #   resp.data.key_phrases_detection_job_properties_list[0].input_data_config.document_reader_config.document_read_mode #=> String, one of ["SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"]
    #   resp.data.key_phrases_detection_job_properties_list[0].input_data_config.document_reader_config.feature_types #=> Array<String>
    #   resp.data.key_phrases_detection_job_properties_list[0].input_data_config.document_reader_config.feature_types[0] #=> String, one of ["TABLES", "FORMS"]
    #   resp.data.key_phrases_detection_job_properties_list[0].output_data_config #=> Types::OutputDataConfig
    #   resp.data.key_phrases_detection_job_properties_list[0].output_data_config.s3_uri #=> String
    #   resp.data.key_phrases_detection_job_properties_list[0].output_data_config.kms_key_id #=> String
    #   resp.data.key_phrases_detection_job_properties_list[0].language_code #=> String, one of ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"]
    #   resp.data.key_phrases_detection_job_properties_list[0].data_access_role_arn #=> String
    #   resp.data.key_phrases_detection_job_properties_list[0].volume_kms_key_id #=> String
    #   resp.data.key_phrases_detection_job_properties_list[0].vpc_config #=> Types::VpcConfig
    #   resp.data.key_phrases_detection_job_properties_list[0].vpc_config.security_group_ids #=> Array<String>
    #   resp.data.key_phrases_detection_job_properties_list[0].vpc_config.security_group_ids[0] #=> String
    #   resp.data.key_phrases_detection_job_properties_list[0].vpc_config.subnets #=> Array<String>
    #   resp.data.key_phrases_detection_job_properties_list[0].vpc_config.subnets[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_key_phrases_detection_jobs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListKeyPhrasesDetectionJobsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListKeyPhrasesDetectionJobsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListKeyPhrasesDetectionJobs
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidFilterException, Errors::InternalServerException, Errors::TooManyRequestsException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListKeyPhrasesDetectionJobs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListKeyPhrasesDetectionJobs,
        stubs: @stubs,
        params_class: Params::ListKeyPhrasesDetectionJobsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_key_phrases_detection_jobs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a list of the PII entity detection jobs that you have submitted.</p>
    #
    # @param [Hash] params
    #   See {Types::ListPiiEntitiesDetectionJobsInput}.
    #
    # @option params [PiiEntitiesDetectionJobFilter] :filter
    #   <p>Filters the jobs that are returned. You can filter jobs on their name, status, or the date
    #         and time that they were submitted. You can only set one filter at a time.</p>
    #
    # @option params [String] :next_token
    #   <p>Identifies the next page of results to return.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in each page.</p>
    #
    # @return [Types::ListPiiEntitiesDetectionJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_pii_entities_detection_jobs(
    #     filter: {
    #       job_name: 'JobName',
    #       job_status: 'SUBMITTED', # accepts ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #       submit_time_before: Time.now,
    #       submit_time_after: Time.now
    #     },
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPiiEntitiesDetectionJobsOutput
    #   resp.data.pii_entities_detection_job_properties_list #=> Array<PiiEntitiesDetectionJobProperties>
    #   resp.data.pii_entities_detection_job_properties_list[0] #=> Types::PiiEntitiesDetectionJobProperties
    #   resp.data.pii_entities_detection_job_properties_list[0].job_id #=> String
    #   resp.data.pii_entities_detection_job_properties_list[0].job_arn #=> String
    #   resp.data.pii_entities_detection_job_properties_list[0].job_name #=> String
    #   resp.data.pii_entities_detection_job_properties_list[0].job_status #=> String, one of ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #   resp.data.pii_entities_detection_job_properties_list[0].message #=> String
    #   resp.data.pii_entities_detection_job_properties_list[0].submit_time #=> Time
    #   resp.data.pii_entities_detection_job_properties_list[0].end_time #=> Time
    #   resp.data.pii_entities_detection_job_properties_list[0].input_data_config #=> Types::InputDataConfig
    #   resp.data.pii_entities_detection_job_properties_list[0].input_data_config.s3_uri #=> String
    #   resp.data.pii_entities_detection_job_properties_list[0].input_data_config.input_format #=> String, one of ["ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"]
    #   resp.data.pii_entities_detection_job_properties_list[0].input_data_config.document_reader_config #=> Types::DocumentReaderConfig
    #   resp.data.pii_entities_detection_job_properties_list[0].input_data_config.document_reader_config.document_read_action #=> String, one of ["TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"]
    #   resp.data.pii_entities_detection_job_properties_list[0].input_data_config.document_reader_config.document_read_mode #=> String, one of ["SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"]
    #   resp.data.pii_entities_detection_job_properties_list[0].input_data_config.document_reader_config.feature_types #=> Array<String>
    #   resp.data.pii_entities_detection_job_properties_list[0].input_data_config.document_reader_config.feature_types[0] #=> String, one of ["TABLES", "FORMS"]
    #   resp.data.pii_entities_detection_job_properties_list[0].output_data_config #=> Types::PiiOutputDataConfig
    #   resp.data.pii_entities_detection_job_properties_list[0].output_data_config.s3_uri #=> String
    #   resp.data.pii_entities_detection_job_properties_list[0].output_data_config.kms_key_id #=> String
    #   resp.data.pii_entities_detection_job_properties_list[0].redaction_config #=> Types::RedactionConfig
    #   resp.data.pii_entities_detection_job_properties_list[0].redaction_config.pii_entity_types #=> Array<String>
    #   resp.data.pii_entities_detection_job_properties_list[0].redaction_config.pii_entity_types[0] #=> String, one of ["BANK_ACCOUNT_NUMBER", "BANK_ROUTING", "CREDIT_DEBIT_NUMBER", "CREDIT_DEBIT_CVV", "CREDIT_DEBIT_EXPIRY", "PIN", "EMAIL", "ADDRESS", "NAME", "PHONE", "SSN", "DATE_TIME", "PASSPORT_NUMBER", "DRIVER_ID", "URL", "AGE", "USERNAME", "PASSWORD", "AWS_ACCESS_KEY", "AWS_SECRET_KEY", "IP_ADDRESS", "MAC_ADDRESS", "ALL", "LICENSE_PLATE", "VEHICLE_IDENTIFICATION_NUMBER", "UK_NATIONAL_INSURANCE_NUMBER", "CA_SOCIAL_INSURANCE_NUMBER", "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER", "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER", "IN_PERMANENT_ACCOUNT_NUMBER", "IN_NREGA", "INTERNATIONAL_BANK_ACCOUNT_NUMBER", "SWIFT_CODE", "UK_NATIONAL_HEALTH_SERVICE_NUMBER", "CA_HEALTH_NUMBER", "IN_AADHAAR", "IN_VOTER_NUMBER"]
    #   resp.data.pii_entities_detection_job_properties_list[0].redaction_config.mask_mode #=> String, one of ["MASK", "REPLACE_WITH_PII_ENTITY_TYPE"]
    #   resp.data.pii_entities_detection_job_properties_list[0].redaction_config.mask_character #=> String
    #   resp.data.pii_entities_detection_job_properties_list[0].language_code #=> String, one of ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"]
    #   resp.data.pii_entities_detection_job_properties_list[0].data_access_role_arn #=> String
    #   resp.data.pii_entities_detection_job_properties_list[0].mode #=> String, one of ["ONLY_REDACTION", "ONLY_OFFSETS"]
    #   resp.data.next_token #=> String
    #
    def list_pii_entities_detection_jobs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPiiEntitiesDetectionJobsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPiiEntitiesDetectionJobsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPiiEntitiesDetectionJobs
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidFilterException, Errors::InternalServerException, Errors::TooManyRequestsException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListPiiEntitiesDetectionJobs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPiiEntitiesDetectionJobs,
        stubs: @stubs,
        params_class: Params::ListPiiEntitiesDetectionJobsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_pii_entities_detection_jobs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a list of sentiment detection jobs that you have submitted.</p>
    #
    # @param [Hash] params
    #   See {Types::ListSentimentDetectionJobsInput}.
    #
    # @option params [SentimentDetectionJobFilter] :filter
    #   <p>Filters the jobs that are returned. You can filter jobs on their name, status, or the date
    #         and time that they were submitted. You can only set one filter at a time.</p>
    #
    # @option params [String] :next_token
    #   <p>Identifies the next page of results to return.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in each page. The default is 100.</p>
    #
    # @return [Types::ListSentimentDetectionJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_sentiment_detection_jobs(
    #     filter: {
    #       job_name: 'JobName',
    #       job_status: 'SUBMITTED', # accepts ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #       submit_time_before: Time.now,
    #       submit_time_after: Time.now
    #     },
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListSentimentDetectionJobsOutput
    #   resp.data.sentiment_detection_job_properties_list #=> Array<SentimentDetectionJobProperties>
    #   resp.data.sentiment_detection_job_properties_list[0] #=> Types::SentimentDetectionJobProperties
    #   resp.data.sentiment_detection_job_properties_list[0].job_id #=> String
    #   resp.data.sentiment_detection_job_properties_list[0].job_arn #=> String
    #   resp.data.sentiment_detection_job_properties_list[0].job_name #=> String
    #   resp.data.sentiment_detection_job_properties_list[0].job_status #=> String, one of ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #   resp.data.sentiment_detection_job_properties_list[0].message #=> String
    #   resp.data.sentiment_detection_job_properties_list[0].submit_time #=> Time
    #   resp.data.sentiment_detection_job_properties_list[0].end_time #=> Time
    #   resp.data.sentiment_detection_job_properties_list[0].input_data_config #=> Types::InputDataConfig
    #   resp.data.sentiment_detection_job_properties_list[0].input_data_config.s3_uri #=> String
    #   resp.data.sentiment_detection_job_properties_list[0].input_data_config.input_format #=> String, one of ["ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"]
    #   resp.data.sentiment_detection_job_properties_list[0].input_data_config.document_reader_config #=> Types::DocumentReaderConfig
    #   resp.data.sentiment_detection_job_properties_list[0].input_data_config.document_reader_config.document_read_action #=> String, one of ["TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"]
    #   resp.data.sentiment_detection_job_properties_list[0].input_data_config.document_reader_config.document_read_mode #=> String, one of ["SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"]
    #   resp.data.sentiment_detection_job_properties_list[0].input_data_config.document_reader_config.feature_types #=> Array<String>
    #   resp.data.sentiment_detection_job_properties_list[0].input_data_config.document_reader_config.feature_types[0] #=> String, one of ["TABLES", "FORMS"]
    #   resp.data.sentiment_detection_job_properties_list[0].output_data_config #=> Types::OutputDataConfig
    #   resp.data.sentiment_detection_job_properties_list[0].output_data_config.s3_uri #=> String
    #   resp.data.sentiment_detection_job_properties_list[0].output_data_config.kms_key_id #=> String
    #   resp.data.sentiment_detection_job_properties_list[0].language_code #=> String, one of ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"]
    #   resp.data.sentiment_detection_job_properties_list[0].data_access_role_arn #=> String
    #   resp.data.sentiment_detection_job_properties_list[0].volume_kms_key_id #=> String
    #   resp.data.sentiment_detection_job_properties_list[0].vpc_config #=> Types::VpcConfig
    #   resp.data.sentiment_detection_job_properties_list[0].vpc_config.security_group_ids #=> Array<String>
    #   resp.data.sentiment_detection_job_properties_list[0].vpc_config.security_group_ids[0] #=> String
    #   resp.data.sentiment_detection_job_properties_list[0].vpc_config.subnets #=> Array<String>
    #   resp.data.sentiment_detection_job_properties_list[0].vpc_config.subnets[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_sentiment_detection_jobs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListSentimentDetectionJobsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListSentimentDetectionJobsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListSentimentDetectionJobs
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidFilterException, Errors::InternalServerException, Errors::TooManyRequestsException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListSentimentDetectionJobs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListSentimentDetectionJobs,
        stubs: @stubs,
        params_class: Params::ListSentimentDetectionJobsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_sentiment_detection_jobs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all tags associated with a given Amazon Comprehend resource. </p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the given Amazon Comprehend resource you are querying.
    #       </p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     resource_arn: 'ResourceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsForResourceOutput
    #   resp.data.resource_arn #=> String
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidRequestException, Errors::ResourceNotFoundException]),
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

    # <p>Gets a list of targeted sentiment detection jobs that you have submitted.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTargetedSentimentDetectionJobsInput}.
    #
    # @option params [TargetedSentimentDetectionJobFilter] :filter
    #   <p>Filters the jobs that are returned. You can filter jobs on their name, status, or the date
    #         and time that they were submitted. You can only set one filter at a time.</p>
    #
    # @option params [String] :next_token
    #   <p>Identifies the next page of results to return.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in each page. The default is 100.</p>
    #
    # @return [Types::ListTargetedSentimentDetectionJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_targeted_sentiment_detection_jobs(
    #     filter: {
    #       job_name: 'JobName',
    #       job_status: 'SUBMITTED', # accepts ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #       submit_time_before: Time.now,
    #       submit_time_after: Time.now
    #     },
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTargetedSentimentDetectionJobsOutput
    #   resp.data.targeted_sentiment_detection_job_properties_list #=> Array<TargetedSentimentDetectionJobProperties>
    #   resp.data.targeted_sentiment_detection_job_properties_list[0] #=> Types::TargetedSentimentDetectionJobProperties
    #   resp.data.targeted_sentiment_detection_job_properties_list[0].job_id #=> String
    #   resp.data.targeted_sentiment_detection_job_properties_list[0].job_arn #=> String
    #   resp.data.targeted_sentiment_detection_job_properties_list[0].job_name #=> String
    #   resp.data.targeted_sentiment_detection_job_properties_list[0].job_status #=> String, one of ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #   resp.data.targeted_sentiment_detection_job_properties_list[0].message #=> String
    #   resp.data.targeted_sentiment_detection_job_properties_list[0].submit_time #=> Time
    #   resp.data.targeted_sentiment_detection_job_properties_list[0].end_time #=> Time
    #   resp.data.targeted_sentiment_detection_job_properties_list[0].input_data_config #=> Types::InputDataConfig
    #   resp.data.targeted_sentiment_detection_job_properties_list[0].input_data_config.s3_uri #=> String
    #   resp.data.targeted_sentiment_detection_job_properties_list[0].input_data_config.input_format #=> String, one of ["ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"]
    #   resp.data.targeted_sentiment_detection_job_properties_list[0].input_data_config.document_reader_config #=> Types::DocumentReaderConfig
    #   resp.data.targeted_sentiment_detection_job_properties_list[0].input_data_config.document_reader_config.document_read_action #=> String, one of ["TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"]
    #   resp.data.targeted_sentiment_detection_job_properties_list[0].input_data_config.document_reader_config.document_read_mode #=> String, one of ["SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"]
    #   resp.data.targeted_sentiment_detection_job_properties_list[0].input_data_config.document_reader_config.feature_types #=> Array<String>
    #   resp.data.targeted_sentiment_detection_job_properties_list[0].input_data_config.document_reader_config.feature_types[0] #=> String, one of ["TABLES", "FORMS"]
    #   resp.data.targeted_sentiment_detection_job_properties_list[0].output_data_config #=> Types::OutputDataConfig
    #   resp.data.targeted_sentiment_detection_job_properties_list[0].output_data_config.s3_uri #=> String
    #   resp.data.targeted_sentiment_detection_job_properties_list[0].output_data_config.kms_key_id #=> String
    #   resp.data.targeted_sentiment_detection_job_properties_list[0].language_code #=> String, one of ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"]
    #   resp.data.targeted_sentiment_detection_job_properties_list[0].data_access_role_arn #=> String
    #   resp.data.targeted_sentiment_detection_job_properties_list[0].volume_kms_key_id #=> String
    #   resp.data.targeted_sentiment_detection_job_properties_list[0].vpc_config #=> Types::VpcConfig
    #   resp.data.targeted_sentiment_detection_job_properties_list[0].vpc_config.security_group_ids #=> Array<String>
    #   resp.data.targeted_sentiment_detection_job_properties_list[0].vpc_config.security_group_ids[0] #=> String
    #   resp.data.targeted_sentiment_detection_job_properties_list[0].vpc_config.subnets #=> Array<String>
    #   resp.data.targeted_sentiment_detection_job_properties_list[0].vpc_config.subnets[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_targeted_sentiment_detection_jobs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTargetedSentimentDetectionJobsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTargetedSentimentDetectionJobsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTargetedSentimentDetectionJobs
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidFilterException, Errors::InternalServerException, Errors::TooManyRequestsException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListTargetedSentimentDetectionJobs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTargetedSentimentDetectionJobs,
        stubs: @stubs,
        params_class: Params::ListTargetedSentimentDetectionJobsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_targeted_sentiment_detection_jobs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a list of the topic detection jobs that you have submitted.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTopicsDetectionJobsInput}.
    #
    # @option params [TopicsDetectionJobFilter] :filter
    #   <p>Filters the jobs that are returned. Jobs can be filtered on their name, status, or the
    #         date and time that they were submitted. You can set only one filter at a time.</p>
    #
    # @option params [String] :next_token
    #   <p>Identifies the next page of results to return.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in each page. The default is 100.</p>
    #
    # @return [Types::ListTopicsDetectionJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_topics_detection_jobs(
    #     filter: {
    #       job_name: 'JobName',
    #       job_status: 'SUBMITTED', # accepts ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #       submit_time_before: Time.now,
    #       submit_time_after: Time.now
    #     },
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTopicsDetectionJobsOutput
    #   resp.data.topics_detection_job_properties_list #=> Array<TopicsDetectionJobProperties>
    #   resp.data.topics_detection_job_properties_list[0] #=> Types::TopicsDetectionJobProperties
    #   resp.data.topics_detection_job_properties_list[0].job_id #=> String
    #   resp.data.topics_detection_job_properties_list[0].job_arn #=> String
    #   resp.data.topics_detection_job_properties_list[0].job_name #=> String
    #   resp.data.topics_detection_job_properties_list[0].job_status #=> String, one of ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #   resp.data.topics_detection_job_properties_list[0].message #=> String
    #   resp.data.topics_detection_job_properties_list[0].submit_time #=> Time
    #   resp.data.topics_detection_job_properties_list[0].end_time #=> Time
    #   resp.data.topics_detection_job_properties_list[0].input_data_config #=> Types::InputDataConfig
    #   resp.data.topics_detection_job_properties_list[0].input_data_config.s3_uri #=> String
    #   resp.data.topics_detection_job_properties_list[0].input_data_config.input_format #=> String, one of ["ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"]
    #   resp.data.topics_detection_job_properties_list[0].input_data_config.document_reader_config #=> Types::DocumentReaderConfig
    #   resp.data.topics_detection_job_properties_list[0].input_data_config.document_reader_config.document_read_action #=> String, one of ["TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"]
    #   resp.data.topics_detection_job_properties_list[0].input_data_config.document_reader_config.document_read_mode #=> String, one of ["SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"]
    #   resp.data.topics_detection_job_properties_list[0].input_data_config.document_reader_config.feature_types #=> Array<String>
    #   resp.data.topics_detection_job_properties_list[0].input_data_config.document_reader_config.feature_types[0] #=> String, one of ["TABLES", "FORMS"]
    #   resp.data.topics_detection_job_properties_list[0].output_data_config #=> Types::OutputDataConfig
    #   resp.data.topics_detection_job_properties_list[0].output_data_config.s3_uri #=> String
    #   resp.data.topics_detection_job_properties_list[0].output_data_config.kms_key_id #=> String
    #   resp.data.topics_detection_job_properties_list[0].number_of_topics #=> Integer
    #   resp.data.topics_detection_job_properties_list[0].data_access_role_arn #=> String
    #   resp.data.topics_detection_job_properties_list[0].volume_kms_key_id #=> String
    #   resp.data.topics_detection_job_properties_list[0].vpc_config #=> Types::VpcConfig
    #   resp.data.topics_detection_job_properties_list[0].vpc_config.security_group_ids #=> Array<String>
    #   resp.data.topics_detection_job_properties_list[0].vpc_config.security_group_ids[0] #=> String
    #   resp.data.topics_detection_job_properties_list[0].vpc_config.subnets #=> Array<String>
    #   resp.data.topics_detection_job_properties_list[0].vpc_config.subnets[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_topics_detection_jobs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTopicsDetectionJobsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTopicsDetectionJobsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTopicsDetectionJobs
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidFilterException, Errors::InternalServerException, Errors::TooManyRequestsException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListTopicsDetectionJobs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTopicsDetectionJobs,
        stubs: @stubs,
        params_class: Params::ListTopicsDetectionJobsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_topics_detection_jobs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Attaches a resource-based policy to a custom model. You can use this policy to authorize
    #       an entity in another AWS account to import the custom model, which replicates it in Amazon
    #       Comprehend in their account.</p>
    #
    # @param [Hash] params
    #   See {Types::PutResourcePolicyInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the custom model to attach the policy to.</p>
    #
    # @option params [String] :resource_policy
    #   <p>The JSON resource-based policy to attach to your custom model. Provide your JSON as a
    #         UTF-8 encoded string without line breaks. To provide valid JSON for your policy, enclose the
    #         attribute names and values in double quotes. If the JSON body is also enclosed in double
    #         quotes, then you must escape the double quotes that are inside the policy:</p>
    #            <p>
    #               <code>"{\"attribute\": \"value\", \"attribute\": [\"value\"]}"</code>
    #            </p>
    #            <p>To avoid escaping quotes, you can use single quotes to enclose the policy and double
    #         quotes to enclose the JSON names and values:</p>
    #            <p>
    #               <code>'{"attribute": "value", "attribute": ["value"]}'</code>
    #            </p>
    #
    # @option params [String] :policy_revision_id
    #   <p>The revision ID that Amazon Comprehend assigned to the policy that you are updating. If
    #         you are creating a new policy that has no prior version, don't use this parameter. Amazon
    #         Comprehend creates the revision ID for you.</p>
    #
    # @return [Types::PutResourcePolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_resource_policy(
    #     resource_arn: 'ResourceArn', # required
    #     resource_policy: 'ResourcePolicy', # required
    #     policy_revision_id: 'PolicyRevisionId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutResourcePolicyOutput
    #   resp.data.policy_revision_id #=> String
    #
    def put_resource_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutResourcePolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutResourcePolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutResourcePolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidRequestException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::PutResourcePolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutResourcePolicy,
        stubs: @stubs,
        params_class: Params::PutResourcePolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_resource_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts an asynchronous document classification job. Use the  operation to track the progress of the
    #       job.</p>
    #
    # @param [Hash] params
    #   See {Types::StartDocumentClassificationJobInput}.
    #
    # @option params [String] :job_name
    #   <p>The identifier of the job.</p>
    #
    # @option params [String] :document_classifier_arn
    #   <p>The Amazon Resource Name (ARN) of the document classifier to use to process the
    #         job.</p>
    #
    # @option params [InputDataConfig] :input_data_config
    #   <p>Specifies the format and location of the input data for the job.</p>
    #
    # @option params [OutputDataConfig] :output_data_config
    #   <p>Specifies where to send the output files.</p>
    #
    # @option params [String] :data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that
    #         grants Amazon Comprehend read access to your input data.</p>
    #
    # @option params [String] :client_request_token
    #   <p>A unique identifier for the request. If you do not set the client request token, Amazon
    #         Comprehend generates one.</p>
    #
    # @option params [String] :volume_kms_key_id
    #   <p>ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
    #         data on the storage volume attached to the ML compute instance(s) that process the analysis
    #         job. The VolumeKmsKeyId can be either of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #               <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [VpcConfig] :vpc_config
    #   <p>Configuration parameters for an optional private Virtual Private Cloud (VPC) containing
    #         the resources you are using for your document classification job. For more information, see
    #         <a href="https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html">Amazon
    #           VPC</a>. </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Tags to be associated with the document classification job. A tag is a key-value pair that
    #         adds metadata to a resource used by Amazon Comprehend. For example, a tag with "Sales" as the
    #         key might be added to a resource to indicate its use by the sales department.</p>
    #
    # @return [Types::StartDocumentClassificationJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_document_classification_job(
    #     job_name: 'JobName',
    #     document_classifier_arn: 'DocumentClassifierArn', # required
    #     input_data_config: {
    #       s3_uri: 'S3Uri', # required
    #       input_format: 'ONE_DOC_PER_FILE', # accepts ["ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"]
    #       document_reader_config: {
    #         document_read_action: 'TEXTRACT_DETECT_DOCUMENT_TEXT', # required - accepts ["TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"]
    #         document_read_mode: 'SERVICE_DEFAULT', # accepts ["SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"]
    #         feature_types: [
    #           'TABLES' # accepts ["TABLES", "FORMS"]
    #         ]
    #       }
    #     }, # required
    #     output_data_config: {
    #       s3_uri: 'S3Uri', # required
    #       kms_key_id: 'KmsKeyId'
    #     }, # required
    #     data_access_role_arn: 'DataAccessRoleArn', # required
    #     client_request_token: 'ClientRequestToken',
    #     volume_kms_key_id: 'VolumeKmsKeyId',
    #     vpc_config: {
    #       security_group_ids: [
    #         'member'
    #       ], # required
    #       subnets: [
    #         'member'
    #       ] # required
    #     },
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartDocumentClassificationJobOutput
    #   resp.data.job_id #=> String
    #   resp.data.job_arn #=> String
    #   resp.data.job_status #=> String, one of ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #
    def start_document_classification_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartDocumentClassificationJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartDocumentClassificationJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartDocumentClassificationJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::TooManyTagsException, Errors::ResourceUnavailableException, Errors::KmsKeyValidationException, Errors::TooManyRequestsException, Errors::InvalidRequestException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::StartDocumentClassificationJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartDocumentClassificationJob,
        stubs: @stubs,
        params_class: Params::StartDocumentClassificationJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_document_classification_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts an asynchronous dominant language detection job for a collection of documents. Use
    #       the  operation to track the status
    #       of a job.</p>
    #
    # @param [Hash] params
    #   See {Types::StartDominantLanguageDetectionJobInput}.
    #
    # @option params [InputDataConfig] :input_data_config
    #   <p>Specifies the format and location of the input data for the job.</p>
    #
    # @option params [OutputDataConfig] :output_data_config
    #   <p>Specifies where to send the output files.</p>
    #
    # @option params [String] :data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that
    #         grants Amazon Comprehend read access to your input data. For more information, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions">https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions</a>.</p>
    #
    # @option params [String] :job_name
    #   <p>An identifier for the job.</p>
    #
    # @option params [String] :client_request_token
    #   <p>A unique identifier for the request. If you do not set the client request token, Amazon
    #         Comprehend generates one.</p>
    #
    # @option params [String] :volume_kms_key_id
    #   <p>ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
    #         data on the storage volume attached to the ML compute instance(s) that process the analysis
    #         job. The VolumeKmsKeyId can be either of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #               <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [VpcConfig] :vpc_config
    #   <p>Configuration parameters for an optional private Virtual Private Cloud (VPC) containing
    #         the resources you are using for your dominant language detection job. For more information,
    #         see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html">Amazon VPC</a>. </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Tags to be associated with the dominant language detection job. A tag is a key-value pair
    #         that adds metadata to a resource used by Amazon Comprehend. For example, a tag with "Sales" as
    #         the key might be added to a resource to indicate its use by the sales department.</p>
    #
    # @return [Types::StartDominantLanguageDetectionJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_dominant_language_detection_job(
    #     input_data_config: {
    #       s3_uri: 'S3Uri', # required
    #       input_format: 'ONE_DOC_PER_FILE', # accepts ["ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"]
    #       document_reader_config: {
    #         document_read_action: 'TEXTRACT_DETECT_DOCUMENT_TEXT', # required - accepts ["TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"]
    #         document_read_mode: 'SERVICE_DEFAULT', # accepts ["SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"]
    #         feature_types: [
    #           'TABLES' # accepts ["TABLES", "FORMS"]
    #         ]
    #       }
    #     }, # required
    #     output_data_config: {
    #       s3_uri: 'S3Uri', # required
    #       kms_key_id: 'KmsKeyId'
    #     }, # required
    #     data_access_role_arn: 'DataAccessRoleArn', # required
    #     job_name: 'JobName',
    #     client_request_token: 'ClientRequestToken',
    #     volume_kms_key_id: 'VolumeKmsKeyId',
    #     vpc_config: {
    #       security_group_ids: [
    #         'member'
    #       ], # required
    #       subnets: [
    #         'member'
    #       ] # required
    #     },
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartDominantLanguageDetectionJobOutput
    #   resp.data.job_id #=> String
    #   resp.data.job_arn #=> String
    #   resp.data.job_status #=> String, one of ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #
    def start_dominant_language_detection_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartDominantLanguageDetectionJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartDominantLanguageDetectionJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartDominantLanguageDetectionJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::TooManyTagsException, Errors::KmsKeyValidationException, Errors::TooManyRequestsException, Errors::InvalidRequestException]),
        data_parser: Parsers::StartDominantLanguageDetectionJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartDominantLanguageDetectionJob,
        stubs: @stubs,
        params_class: Params::StartDominantLanguageDetectionJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_dominant_language_detection_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts an asynchronous entity detection job for a collection of documents. Use the  operation to track the status of a job.</p>
    #          <p>This API can be used for either standard entity detection or custom entity recognition. In
    #       order to be used for custom entity recognition, the optional <code>EntityRecognizerArn</code>
    #       must be used in order to provide access to the recognizer being used to detect the custom
    #       entity.</p>
    #
    # @param [Hash] params
    #   See {Types::StartEntitiesDetectionJobInput}.
    #
    # @option params [InputDataConfig] :input_data_config
    #   <p>Specifies the format and location of the input data for the job.</p>
    #
    # @option params [OutputDataConfig] :output_data_config
    #   <p>Specifies where to send the output files.</p>
    #
    # @option params [String] :data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that
    #         grants Amazon Comprehend read access to your input data. For more information, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions">https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions</a>.</p>
    #
    # @option params [String] :job_name
    #   <p>The identifier of the job.</p>
    #
    # @option params [String] :entity_recognizer_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the specific entity recognizer to be used
    #         by the <code>StartEntitiesDetectionJob</code>. This ARN is optional and is only used for a
    #         custom entity recognition job.</p>
    #
    # @option params [String] :language_code
    #   <p>The language of the input documents. All documents must be in the same language. You can
    #         specify any of the languages supported by Amazon Comprehend. If custom entities recognition is
    #         used, this parameter is ignored and the language used for training the model is used
    #         instead.</p>
    #
    # @option params [String] :client_request_token
    #   <p>A unique identifier for the request. If you don't set the client request token, Amazon
    #         Comprehend generates one.</p>
    #
    # @option params [String] :volume_kms_key_id
    #   <p>ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
    #         data on the storage volume attached to the ML compute instance(s) that process the analysis
    #         job. The VolumeKmsKeyId can be either of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #               <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [VpcConfig] :vpc_config
    #   <p>Configuration parameters for an optional private Virtual Private Cloud (VPC) containing
    #         the resources you are using for your entity detection job. For more information, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html">Amazon
    #           VPC</a>. </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Tags to be associated with the entities detection job. A tag is a key-value pair that adds
    #         metadata to a resource used by Amazon Comprehend. For example, a tag with "Sales" as the key
    #         might be added to a resource to indicate its use by the sales department.</p>
    #
    # @return [Types::StartEntitiesDetectionJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_entities_detection_job(
    #     input_data_config: {
    #       s3_uri: 'S3Uri', # required
    #       input_format: 'ONE_DOC_PER_FILE', # accepts ["ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"]
    #       document_reader_config: {
    #         document_read_action: 'TEXTRACT_DETECT_DOCUMENT_TEXT', # required - accepts ["TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"]
    #         document_read_mode: 'SERVICE_DEFAULT', # accepts ["SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"]
    #         feature_types: [
    #           'TABLES' # accepts ["TABLES", "FORMS"]
    #         ]
    #       }
    #     }, # required
    #     output_data_config: {
    #       s3_uri: 'S3Uri', # required
    #       kms_key_id: 'KmsKeyId'
    #     }, # required
    #     data_access_role_arn: 'DataAccessRoleArn', # required
    #     job_name: 'JobName',
    #     entity_recognizer_arn: 'EntityRecognizerArn',
    #     language_code: 'en', # required - accepts ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"]
    #     client_request_token: 'ClientRequestToken',
    #     volume_kms_key_id: 'VolumeKmsKeyId',
    #     vpc_config: {
    #       security_group_ids: [
    #         'member'
    #       ], # required
    #       subnets: [
    #         'member'
    #       ] # required
    #     },
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartEntitiesDetectionJobOutput
    #   resp.data.job_id #=> String
    #   resp.data.job_arn #=> String
    #   resp.data.job_status #=> String, one of ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #
    def start_entities_detection_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartEntitiesDetectionJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartEntitiesDetectionJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartEntitiesDetectionJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::TooManyTagsException, Errors::ResourceUnavailableException, Errors::KmsKeyValidationException, Errors::TooManyRequestsException, Errors::InvalidRequestException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::StartEntitiesDetectionJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartEntitiesDetectionJob,
        stubs: @stubs,
        params_class: Params::StartEntitiesDetectionJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_entities_detection_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts an asynchronous event detection job for a collection of documents.</p>
    #
    # @param [Hash] params
    #   See {Types::StartEventsDetectionJobInput}.
    #
    # @option params [InputDataConfig] :input_data_config
    #   <p>Specifies the format and location of the input data for the job.</p>
    #
    # @option params [OutputDataConfig] :output_data_config
    #   <p>Specifies where to send the output files.</p>
    #
    # @option params [String] :data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that
    #         grants Amazon Comprehend read access to your input data.</p>
    #
    # @option params [String] :job_name
    #   <p>The identifier of the events detection job.</p>
    #
    # @option params [String] :language_code
    #   <p>The language code of the input documents.</p>
    #
    # @option params [String] :client_request_token
    #   <p>An unique identifier for the request. If you don't set the client request token, Amazon
    #         Comprehend generates one.</p>
    #
    # @option params [Array<String>] :target_event_types
    #   <p>The types of events to detect in the input documents.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Tags to be associated with the events detection job. A tag is a key-value pair that adds
    #         metadata to a resource used by Amazon Comprehend. For example, a tag with "Sales" as the key
    #         might be added to a resource to indicate its use by the sales department.</p>
    #
    # @return [Types::StartEventsDetectionJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_events_detection_job(
    #     input_data_config: {
    #       s3_uri: 'S3Uri', # required
    #       input_format: 'ONE_DOC_PER_FILE', # accepts ["ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"]
    #       document_reader_config: {
    #         document_read_action: 'TEXTRACT_DETECT_DOCUMENT_TEXT', # required - accepts ["TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"]
    #         document_read_mode: 'SERVICE_DEFAULT', # accepts ["SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"]
    #         feature_types: [
    #           'TABLES' # accepts ["TABLES", "FORMS"]
    #         ]
    #       }
    #     }, # required
    #     output_data_config: {
    #       s3_uri: 'S3Uri', # required
    #       kms_key_id: 'KmsKeyId'
    #     }, # required
    #     data_access_role_arn: 'DataAccessRoleArn', # required
    #     job_name: 'JobName',
    #     language_code: 'en', # required - accepts ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"]
    #     client_request_token: 'ClientRequestToken',
    #     target_event_types: [
    #       'member'
    #     ], # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartEventsDetectionJobOutput
    #   resp.data.job_id #=> String
    #   resp.data.job_arn #=> String
    #   resp.data.job_status #=> String, one of ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #
    def start_events_detection_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartEventsDetectionJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartEventsDetectionJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartEventsDetectionJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::TooManyTagsException, Errors::KmsKeyValidationException, Errors::TooManyRequestsException, Errors::InvalidRequestException]),
        data_parser: Parsers::StartEventsDetectionJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartEventsDetectionJob,
        stubs: @stubs,
        params_class: Params::StartEventsDetectionJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_events_detection_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts an asynchronous key phrase detection job for a collection of documents. Use the
    #          operation to track the status of a
    #       job.</p>
    #
    # @param [Hash] params
    #   See {Types::StartKeyPhrasesDetectionJobInput}.
    #
    # @option params [InputDataConfig] :input_data_config
    #   <p>Specifies the format and location of the input data for the job.</p>
    #
    # @option params [OutputDataConfig] :output_data_config
    #   <p>Specifies where to send the output files.</p>
    #
    # @option params [String] :data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that
    #         grants Amazon Comprehend read access to your input data. For more information, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions">https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions</a>.</p>
    #
    # @option params [String] :job_name
    #   <p>The identifier of the job.</p>
    #
    # @option params [String] :language_code
    #   <p>The language of the input documents. You can specify any of the primary languages
    #         supported by Amazon Comprehend. All documents must be in the same language.</p>
    #
    # @option params [String] :client_request_token
    #   <p>A unique identifier for the request. If you don't set the client request token, Amazon
    #         Comprehend generates one.</p>
    #
    # @option params [String] :volume_kms_key_id
    #   <p>ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
    #         data on the storage volume attached to the ML compute instance(s) that process the analysis
    #         job. The VolumeKmsKeyId can be either of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #               <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [VpcConfig] :vpc_config
    #   <p> Configuration parameters for an optional private Virtual Private Cloud (VPC) containing
    #         the resources you are using for your key phrases detection job. For more information, see
    #         <a href="https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html">Amazon
    #           VPC</a>. </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Tags to be associated with the key phrases detection job. A tag is a key-value pair that
    #         adds metadata to a resource used by Amazon Comprehend. For example, a tag with "Sales" as the
    #         key might be added to a resource to indicate its use by the sales department.</p>
    #
    # @return [Types::StartKeyPhrasesDetectionJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_key_phrases_detection_job(
    #     input_data_config: {
    #       s3_uri: 'S3Uri', # required
    #       input_format: 'ONE_DOC_PER_FILE', # accepts ["ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"]
    #       document_reader_config: {
    #         document_read_action: 'TEXTRACT_DETECT_DOCUMENT_TEXT', # required - accepts ["TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"]
    #         document_read_mode: 'SERVICE_DEFAULT', # accepts ["SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"]
    #         feature_types: [
    #           'TABLES' # accepts ["TABLES", "FORMS"]
    #         ]
    #       }
    #     }, # required
    #     output_data_config: {
    #       s3_uri: 'S3Uri', # required
    #       kms_key_id: 'KmsKeyId'
    #     }, # required
    #     data_access_role_arn: 'DataAccessRoleArn', # required
    #     job_name: 'JobName',
    #     language_code: 'en', # required - accepts ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"]
    #     client_request_token: 'ClientRequestToken',
    #     volume_kms_key_id: 'VolumeKmsKeyId',
    #     vpc_config: {
    #       security_group_ids: [
    #         'member'
    #       ], # required
    #       subnets: [
    #         'member'
    #       ] # required
    #     },
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartKeyPhrasesDetectionJobOutput
    #   resp.data.job_id #=> String
    #   resp.data.job_arn #=> String
    #   resp.data.job_status #=> String, one of ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #
    def start_key_phrases_detection_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartKeyPhrasesDetectionJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartKeyPhrasesDetectionJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartKeyPhrasesDetectionJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::TooManyTagsException, Errors::KmsKeyValidationException, Errors::TooManyRequestsException, Errors::InvalidRequestException]),
        data_parser: Parsers::StartKeyPhrasesDetectionJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartKeyPhrasesDetectionJob,
        stubs: @stubs,
        params_class: Params::StartKeyPhrasesDetectionJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_key_phrases_detection_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts an asynchronous PII entity detection job for a collection of documents.</p>
    #
    # @param [Hash] params
    #   See {Types::StartPiiEntitiesDetectionJobInput}.
    #
    # @option params [InputDataConfig] :input_data_config
    #   <p>The input properties for a PII entities detection job.</p>
    #
    # @option params [OutputDataConfig] :output_data_config
    #   <p>Provides conﬁguration parameters for the output of PII entity detection jobs.</p>
    #
    # @option params [String] :mode
    #   <p>Specifies whether the output provides the locations (offsets) of PII entities or a file in
    #         which PII entities are redacted.</p>
    #
    # @option params [RedactionConfig] :redaction_config
    #   <p>Provides configuration parameters for PII entity redaction.</p>
    #            <p>This parameter is required if you set the <code>Mode</code> parameter to
    #           <code>ONLY_REDACTION</code>. In that case, you must provide a <code>RedactionConfig</code>
    #         definition that includes the <code>PiiEntityTypes</code> parameter.</p>
    #
    # @option params [String] :data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that
    #         grants Amazon Comprehend read access to your input data.</p>
    #
    # @option params [String] :job_name
    #   <p>The identifier of the job.</p>
    #
    # @option params [String] :language_code
    #   <p>The language of the input documents. Currently, English is the only valid language.</p>
    #
    # @option params [String] :client_request_token
    #   <p>A unique identifier for the request. If you don't set the client request token, Amazon
    #         Comprehend generates one.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Tags to be associated with the PII entities detection job. A tag is a key-value pair that
    #         adds metadata to a resource used by Amazon Comprehend. For example, a tag with "Sales" as the
    #         key might be added to a resource to indicate its use by the sales department.</p>
    #
    # @return [Types::StartPiiEntitiesDetectionJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_pii_entities_detection_job(
    #     input_data_config: {
    #       s3_uri: 'S3Uri', # required
    #       input_format: 'ONE_DOC_PER_FILE', # accepts ["ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"]
    #       document_reader_config: {
    #         document_read_action: 'TEXTRACT_DETECT_DOCUMENT_TEXT', # required - accepts ["TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"]
    #         document_read_mode: 'SERVICE_DEFAULT', # accepts ["SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"]
    #         feature_types: [
    #           'TABLES' # accepts ["TABLES", "FORMS"]
    #         ]
    #       }
    #     }, # required
    #     output_data_config: {
    #       s3_uri: 'S3Uri', # required
    #       kms_key_id: 'KmsKeyId'
    #     }, # required
    #     mode: 'ONLY_REDACTION', # required - accepts ["ONLY_REDACTION", "ONLY_OFFSETS"]
    #     redaction_config: {
    #       pii_entity_types: [
    #         'BANK_ACCOUNT_NUMBER' # accepts ["BANK_ACCOUNT_NUMBER", "BANK_ROUTING", "CREDIT_DEBIT_NUMBER", "CREDIT_DEBIT_CVV", "CREDIT_DEBIT_EXPIRY", "PIN", "EMAIL", "ADDRESS", "NAME", "PHONE", "SSN", "DATE_TIME", "PASSPORT_NUMBER", "DRIVER_ID", "URL", "AGE", "USERNAME", "PASSWORD", "AWS_ACCESS_KEY", "AWS_SECRET_KEY", "IP_ADDRESS", "MAC_ADDRESS", "ALL", "LICENSE_PLATE", "VEHICLE_IDENTIFICATION_NUMBER", "UK_NATIONAL_INSURANCE_NUMBER", "CA_SOCIAL_INSURANCE_NUMBER", "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER", "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER", "IN_PERMANENT_ACCOUNT_NUMBER", "IN_NREGA", "INTERNATIONAL_BANK_ACCOUNT_NUMBER", "SWIFT_CODE", "UK_NATIONAL_HEALTH_SERVICE_NUMBER", "CA_HEALTH_NUMBER", "IN_AADHAAR", "IN_VOTER_NUMBER"]
    #       ],
    #       mask_mode: 'MASK', # accepts ["MASK", "REPLACE_WITH_PII_ENTITY_TYPE"]
    #       mask_character: 'MaskCharacter'
    #     },
    #     data_access_role_arn: 'DataAccessRoleArn', # required
    #     job_name: 'JobName',
    #     language_code: 'en', # required - accepts ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"]
    #     client_request_token: 'ClientRequestToken',
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartPiiEntitiesDetectionJobOutput
    #   resp.data.job_id #=> String
    #   resp.data.job_arn #=> String
    #   resp.data.job_status #=> String, one of ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #
    def start_pii_entities_detection_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartPiiEntitiesDetectionJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartPiiEntitiesDetectionJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartPiiEntitiesDetectionJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::TooManyTagsException, Errors::KmsKeyValidationException, Errors::TooManyRequestsException, Errors::InvalidRequestException]),
        data_parser: Parsers::StartPiiEntitiesDetectionJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartPiiEntitiesDetectionJob,
        stubs: @stubs,
        params_class: Params::StartPiiEntitiesDetectionJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_pii_entities_detection_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts an asynchronous sentiment detection job for a collection of documents. Use the
    #          operation to track the status of a
    #       job.</p>
    #
    # @param [Hash] params
    #   See {Types::StartSentimentDetectionJobInput}.
    #
    # @option params [InputDataConfig] :input_data_config
    #   <p>Specifies the format and location of the input data for the job.</p>
    #
    # @option params [OutputDataConfig] :output_data_config
    #   <p>Specifies where to send the output files. </p>
    #
    # @option params [String] :data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that
    #         grants Amazon Comprehend read access to your input data. For more information, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions">https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions</a>.</p>
    #
    # @option params [String] :job_name
    #   <p>The identifier of the job.</p>
    #
    # @option params [String] :language_code
    #   <p>The language of the input documents. You can specify any of the primary languages
    #         supported by Amazon Comprehend. All documents must be in the same language.</p>
    #
    # @option params [String] :client_request_token
    #   <p>A unique identifier for the request. If you don't set the client request token, Amazon
    #         Comprehend generates one.</p>
    #
    # @option params [String] :volume_kms_key_id
    #   <p>ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
    #         data on the storage volume attached to the ML compute instance(s) that process the analysis
    #         job. The VolumeKmsKeyId can be either of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #               <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [VpcConfig] :vpc_config
    #   <p>Configuration parameters for an optional private Virtual Private Cloud (VPC) containing
    #         the resources you are using for your sentiment detection job. For more information, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html">Amazon
    #           VPC</a>. </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Tags to be associated with the sentiment detection job. A tag is a key-value pair that
    #         adds metadata to a resource used by Amazon Comprehend. For example, a tag with "Sales" as the
    #         key might be added to a resource to indicate its use by the sales department.</p>
    #
    # @return [Types::StartSentimentDetectionJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_sentiment_detection_job(
    #     input_data_config: {
    #       s3_uri: 'S3Uri', # required
    #       input_format: 'ONE_DOC_PER_FILE', # accepts ["ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"]
    #       document_reader_config: {
    #         document_read_action: 'TEXTRACT_DETECT_DOCUMENT_TEXT', # required - accepts ["TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"]
    #         document_read_mode: 'SERVICE_DEFAULT', # accepts ["SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"]
    #         feature_types: [
    #           'TABLES' # accepts ["TABLES", "FORMS"]
    #         ]
    #       }
    #     }, # required
    #     output_data_config: {
    #       s3_uri: 'S3Uri', # required
    #       kms_key_id: 'KmsKeyId'
    #     }, # required
    #     data_access_role_arn: 'DataAccessRoleArn', # required
    #     job_name: 'JobName',
    #     language_code: 'en', # required - accepts ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"]
    #     client_request_token: 'ClientRequestToken',
    #     volume_kms_key_id: 'VolumeKmsKeyId',
    #     vpc_config: {
    #       security_group_ids: [
    #         'member'
    #       ], # required
    #       subnets: [
    #         'member'
    #       ] # required
    #     },
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartSentimentDetectionJobOutput
    #   resp.data.job_id #=> String
    #   resp.data.job_arn #=> String
    #   resp.data.job_status #=> String, one of ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #
    def start_sentiment_detection_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartSentimentDetectionJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartSentimentDetectionJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartSentimentDetectionJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::TooManyTagsException, Errors::KmsKeyValidationException, Errors::TooManyRequestsException, Errors::InvalidRequestException]),
        data_parser: Parsers::StartSentimentDetectionJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartSentimentDetectionJob,
        stubs: @stubs,
        params_class: Params::StartSentimentDetectionJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_sentiment_detection_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts an asynchronous targeted sentiment detection job for a collection of documents. Use the
    #        operation to track the status of a
    #       job.</p>
    #
    # @param [Hash] params
    #   See {Types::StartTargetedSentimentDetectionJobInput}.
    #
    # @option params [InputDataConfig] :input_data_config
    #   <p>The input properties for an inference job.</p>
    #
    # @option params [OutputDataConfig] :output_data_config
    #   <p>Specifies where to send the output files. </p>
    #
    # @option params [String] :data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that
    #         grants Amazon Comprehend read access to your input data. For more information, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions">Role-based permissions</a>.</p>
    #
    # @option params [String] :job_name
    #   <p>The identifier of the job.</p>
    #
    # @option params [String] :language_code
    #   <p>The language of the input documents. Currently, English is the only valid language.</p>
    #
    # @option params [String] :client_request_token
    #   <p>A unique identifier for the request. If you don't set the client request token, Amazon
    #         Comprehend generates one.</p>
    #
    # @option params [String] :volume_kms_key_id
    #   <p>ID for the KMS key that Amazon Comprehend uses to encrypt
    #         data on the storage volume attached to the ML compute instance(s) that process the analysis
    #         job. The VolumeKmsKeyId can be either of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #             <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [VpcConfig] :vpc_config
    #   <p> Configuration parameters for an optional private Virtual Private Cloud (VPC) containing
    #         the resources you are using for the job. For more information, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html">Amazon
    #           VPC</a>. </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Tags to be associated with the targeted sentiment detection job. A tag is a key-value pair that
    #         adds metadata to a resource used by Amazon Comprehend. For example, a tag with "Sales" as the
    #         key might be added to a resource to indicate its use by the sales department.</p>
    #
    # @return [Types::StartTargetedSentimentDetectionJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_targeted_sentiment_detection_job(
    #     input_data_config: {
    #       s3_uri: 'S3Uri', # required
    #       input_format: 'ONE_DOC_PER_FILE', # accepts ["ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"]
    #       document_reader_config: {
    #         document_read_action: 'TEXTRACT_DETECT_DOCUMENT_TEXT', # required - accepts ["TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"]
    #         document_read_mode: 'SERVICE_DEFAULT', # accepts ["SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"]
    #         feature_types: [
    #           'TABLES' # accepts ["TABLES", "FORMS"]
    #         ]
    #       }
    #     }, # required
    #     output_data_config: {
    #       s3_uri: 'S3Uri', # required
    #       kms_key_id: 'KmsKeyId'
    #     }, # required
    #     data_access_role_arn: 'DataAccessRoleArn', # required
    #     job_name: 'JobName',
    #     language_code: 'en', # required - accepts ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"]
    #     client_request_token: 'ClientRequestToken',
    #     volume_kms_key_id: 'VolumeKmsKeyId',
    #     vpc_config: {
    #       security_group_ids: [
    #         'member'
    #       ], # required
    #       subnets: [
    #         'member'
    #       ] # required
    #     },
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartTargetedSentimentDetectionJobOutput
    #   resp.data.job_id #=> String
    #   resp.data.job_arn #=> String
    #   resp.data.job_status #=> String, one of ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #
    def start_targeted_sentiment_detection_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartTargetedSentimentDetectionJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartTargetedSentimentDetectionJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartTargetedSentimentDetectionJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::TooManyTagsException, Errors::KmsKeyValidationException, Errors::TooManyRequestsException, Errors::InvalidRequestException]),
        data_parser: Parsers::StartTargetedSentimentDetectionJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartTargetedSentimentDetectionJob,
        stubs: @stubs,
        params_class: Params::StartTargetedSentimentDetectionJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_targeted_sentiment_detection_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts an asynchronous topic detection job. Use the
    #         <code>DescribeTopicDetectionJob</code> operation to track the status of a job.</p>
    #
    # @param [Hash] params
    #   See {Types::StartTopicsDetectionJobInput}.
    #
    # @option params [InputDataConfig] :input_data_config
    #   <p>Specifies the format and location of the input data for the job.</p>
    #
    # @option params [OutputDataConfig] :output_data_config
    #   <p>Specifies where to send the output files. The output is a compressed archive with two
    #         files, <code>topic-terms.csv</code> that lists the terms associated with each topic, and
    #           <code>doc-topics.csv</code> that lists the documents associated with each topic</p>
    #
    # @option params [String] :data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role
    #         that grants Amazon Comprehend read access to your input data. For more information, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions">https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions</a>.</p>
    #
    # @option params [String] :job_name
    #   <p>The identifier of the job.</p>
    #
    # @option params [Integer] :number_of_topics
    #   <p>The number of topics to detect.</p>
    #
    # @option params [String] :client_request_token
    #   <p>A unique identifier for the request. If you do not set the client request token, Amazon
    #         Comprehend generates one.</p>
    #
    # @option params [String] :volume_kms_key_id
    #   <p>ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
    #         data on the storage volume attached to the ML compute instance(s) that process the analysis
    #         job. The VolumeKmsKeyId can be either of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #               <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [VpcConfig] :vpc_config
    #   <p>Configuration parameters for an optional private Virtual Private Cloud (VPC) containing
    #         the resources you are using for your topic detection job. For more information, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html">Amazon
    #           VPC</a>. </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Tags to be associated with the topics detection job. A tag is a key-value pair that adds
    #         metadata to a resource used by Amazon Comprehend. For example, a tag with "Sales" as the key
    #         might be added to a resource to indicate its use by the sales department.</p>
    #
    # @return [Types::StartTopicsDetectionJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_topics_detection_job(
    #     input_data_config: {
    #       s3_uri: 'S3Uri', # required
    #       input_format: 'ONE_DOC_PER_FILE', # accepts ["ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"]
    #       document_reader_config: {
    #         document_read_action: 'TEXTRACT_DETECT_DOCUMENT_TEXT', # required - accepts ["TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"]
    #         document_read_mode: 'SERVICE_DEFAULT', # accepts ["SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"]
    #         feature_types: [
    #           'TABLES' # accepts ["TABLES", "FORMS"]
    #         ]
    #       }
    #     }, # required
    #     output_data_config: {
    #       s3_uri: 'S3Uri', # required
    #       kms_key_id: 'KmsKeyId'
    #     }, # required
    #     data_access_role_arn: 'DataAccessRoleArn', # required
    #     job_name: 'JobName',
    #     number_of_topics: 1,
    #     client_request_token: 'ClientRequestToken',
    #     volume_kms_key_id: 'VolumeKmsKeyId',
    #     vpc_config: {
    #       security_group_ids: [
    #         'member'
    #       ], # required
    #       subnets: [
    #         'member'
    #       ] # required
    #     },
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartTopicsDetectionJobOutput
    #   resp.data.job_id #=> String
    #   resp.data.job_arn #=> String
    #   resp.data.job_status #=> String, one of ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #
    def start_topics_detection_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartTopicsDetectionJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartTopicsDetectionJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartTopicsDetectionJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::TooManyTagsException, Errors::KmsKeyValidationException, Errors::TooManyRequestsException, Errors::InvalidRequestException]),
        data_parser: Parsers::StartTopicsDetectionJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartTopicsDetectionJob,
        stubs: @stubs,
        params_class: Params::StartTopicsDetectionJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_topics_detection_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Stops a dominant language detection job in progress.</p>
    #          <p>If the job state is <code>IN_PROGRESS</code> the job is marked for termination and put
    #       into the <code>STOP_REQUESTED</code> state. If the job completes before it can be stopped, it
    #       is put into the <code>COMPLETED</code> state; otherwise the job is stopped and put into the
    #         <code>STOPPED</code> state.</p>
    #          <p>If the job is in the <code>COMPLETED</code> or <code>FAILED</code> state when you call the
    #         <code>StopDominantLanguageDetectionJob</code> operation, the operation returns a 400
    #       Internal Request Exception. </p>
    #          <p>When a job is stopped, any documents already processed are written to the output
    #       location.</p>
    #
    # @param [Hash] params
    #   See {Types::StopDominantLanguageDetectionJobInput}.
    #
    # @option params [String] :job_id
    #   <p>The identifier of the dominant language detection job to stop.</p>
    #
    # @return [Types::StopDominantLanguageDetectionJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_dominant_language_detection_job(
    #     job_id: 'JobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopDominantLanguageDetectionJobOutput
    #   resp.data.job_id #=> String
    #   resp.data.job_status #=> String, one of ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #
    def stop_dominant_language_detection_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopDominantLanguageDetectionJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopDominantLanguageDetectionJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopDominantLanguageDetectionJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::JobNotFoundException, Errors::InternalServerException, Errors::InvalidRequestException]),
        data_parser: Parsers::StopDominantLanguageDetectionJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopDominantLanguageDetectionJob,
        stubs: @stubs,
        params_class: Params::StopDominantLanguageDetectionJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_dominant_language_detection_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Stops an entities detection job in progress.</p>
    #          <p>If the job state is <code>IN_PROGRESS</code> the job is marked for termination and put
    #       into the <code>STOP_REQUESTED</code> state. If the job completes before it can be stopped, it
    #       is put into the <code>COMPLETED</code> state; otherwise the job is stopped and put into the
    #         <code>STOPPED</code> state.</p>
    #          <p>If the job is in the <code>COMPLETED</code> or <code>FAILED</code> state when you call the
    #         <code>StopDominantLanguageDetectionJob</code> operation, the operation returns a 400
    #       Internal Request Exception. </p>
    #          <p>When a job is stopped, any documents already processed are written to the output
    #       location.</p>
    #
    # @param [Hash] params
    #   See {Types::StopEntitiesDetectionJobInput}.
    #
    # @option params [String] :job_id
    #   <p>The identifier of the entities detection job to stop.</p>
    #
    # @return [Types::StopEntitiesDetectionJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_entities_detection_job(
    #     job_id: 'JobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopEntitiesDetectionJobOutput
    #   resp.data.job_id #=> String
    #   resp.data.job_status #=> String, one of ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #
    def stop_entities_detection_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopEntitiesDetectionJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopEntitiesDetectionJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopEntitiesDetectionJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::JobNotFoundException, Errors::InternalServerException, Errors::InvalidRequestException]),
        data_parser: Parsers::StopEntitiesDetectionJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopEntitiesDetectionJob,
        stubs: @stubs,
        params_class: Params::StopEntitiesDetectionJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_entities_detection_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Stops an events detection job in progress.</p>
    #
    # @param [Hash] params
    #   See {Types::StopEventsDetectionJobInput}.
    #
    # @option params [String] :job_id
    #   <p>The identifier of the events detection job to stop.</p>
    #
    # @return [Types::StopEventsDetectionJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_events_detection_job(
    #     job_id: 'JobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopEventsDetectionJobOutput
    #   resp.data.job_id #=> String
    #   resp.data.job_status #=> String, one of ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #
    def stop_events_detection_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopEventsDetectionJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopEventsDetectionJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopEventsDetectionJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::JobNotFoundException, Errors::InternalServerException, Errors::InvalidRequestException]),
        data_parser: Parsers::StopEventsDetectionJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopEventsDetectionJob,
        stubs: @stubs,
        params_class: Params::StopEventsDetectionJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_events_detection_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Stops a key phrases detection job in progress.</p>
    #          <p>If the job state is <code>IN_PROGRESS</code> the job is marked for termination and put
    #       into the <code>STOP_REQUESTED</code> state. If the job completes before it can be stopped, it
    #       is put into the <code>COMPLETED</code> state; otherwise the job is stopped and put into the
    #         <code>STOPPED</code> state.</p>
    #          <p>If the job is in the <code>COMPLETED</code> or <code>FAILED</code> state when you call the
    #         <code>StopDominantLanguageDetectionJob</code> operation, the operation returns a 400
    #       Internal Request Exception. </p>
    #          <p>When a job is stopped, any documents already processed are written to the output
    #       location.</p>
    #
    # @param [Hash] params
    #   See {Types::StopKeyPhrasesDetectionJobInput}.
    #
    # @option params [String] :job_id
    #   <p>The identifier of the key phrases detection job to stop.</p>
    #
    # @return [Types::StopKeyPhrasesDetectionJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_key_phrases_detection_job(
    #     job_id: 'JobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopKeyPhrasesDetectionJobOutput
    #   resp.data.job_id #=> String
    #   resp.data.job_status #=> String, one of ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #
    def stop_key_phrases_detection_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopKeyPhrasesDetectionJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopKeyPhrasesDetectionJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopKeyPhrasesDetectionJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::JobNotFoundException, Errors::InternalServerException, Errors::InvalidRequestException]),
        data_parser: Parsers::StopKeyPhrasesDetectionJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopKeyPhrasesDetectionJob,
        stubs: @stubs,
        params_class: Params::StopKeyPhrasesDetectionJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_key_phrases_detection_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Stops a PII entities detection job in progress.</p>
    #
    # @param [Hash] params
    #   See {Types::StopPiiEntitiesDetectionJobInput}.
    #
    # @option params [String] :job_id
    #   <p>The identifier of the PII entities detection job to stop.</p>
    #
    # @return [Types::StopPiiEntitiesDetectionJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_pii_entities_detection_job(
    #     job_id: 'JobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopPiiEntitiesDetectionJobOutput
    #   resp.data.job_id #=> String
    #   resp.data.job_status #=> String, one of ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #
    def stop_pii_entities_detection_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopPiiEntitiesDetectionJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopPiiEntitiesDetectionJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopPiiEntitiesDetectionJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::JobNotFoundException, Errors::InternalServerException, Errors::InvalidRequestException]),
        data_parser: Parsers::StopPiiEntitiesDetectionJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopPiiEntitiesDetectionJob,
        stubs: @stubs,
        params_class: Params::StopPiiEntitiesDetectionJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_pii_entities_detection_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Stops a sentiment detection job in progress.</p>
    #          <p>If the job state is <code>IN_PROGRESS</code>, the job is marked for termination and put
    #       into the <code>STOP_REQUESTED</code> state. If the job completes before it can be stopped, it
    #       is put into the <code>COMPLETED</code> state; otherwise the job is be stopped and put into the
    #         <code>STOPPED</code> state.</p>
    #          <p>If the job is in the <code>COMPLETED</code> or <code>FAILED</code> state when you call the
    #         <code>StopDominantLanguageDetectionJob</code> operation, the operation returns a 400
    #       Internal Request Exception. </p>
    #          <p>When a job is stopped, any documents already processed are written to the output
    #       location.</p>
    #
    # @param [Hash] params
    #   See {Types::StopSentimentDetectionJobInput}.
    #
    # @option params [String] :job_id
    #   <p>The identifier of the sentiment detection job to stop.</p>
    #
    # @return [Types::StopSentimentDetectionJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_sentiment_detection_job(
    #     job_id: 'JobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopSentimentDetectionJobOutput
    #   resp.data.job_id #=> String
    #   resp.data.job_status #=> String, one of ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #
    def stop_sentiment_detection_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopSentimentDetectionJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopSentimentDetectionJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopSentimentDetectionJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::JobNotFoundException, Errors::InternalServerException, Errors::InvalidRequestException]),
        data_parser: Parsers::StopSentimentDetectionJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopSentimentDetectionJob,
        stubs: @stubs,
        params_class: Params::StopSentimentDetectionJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_sentiment_detection_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Stops a targeted sentiment detection job in progress.</p>
    #          <p>If the job state is <code>IN_PROGRESS</code>, the job is marked for termination and put
    #       into the <code>STOP_REQUESTED</code> state. If the job completes before it can be stopped, it
    #       is put into the <code>COMPLETED</code> state; otherwise the job is be stopped and put into the
    #       <code>STOPPED</code> state.</p>
    #          <p>If the job is in the <code>COMPLETED</code> or <code>FAILED</code> state when you call the
    #       <code>StopDominantLanguageDetectionJob</code> operation, the operation returns a 400
    #       Internal Request Exception. </p>
    #          <p>When a job is stopped, any documents already processed are written to the output
    #       location.</p>
    #
    # @param [Hash] params
    #   See {Types::StopTargetedSentimentDetectionJobInput}.
    #
    # @option params [String] :job_id
    #   <p>The identifier of the targeted sentiment detection job to stop.</p>
    #
    # @return [Types::StopTargetedSentimentDetectionJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_targeted_sentiment_detection_job(
    #     job_id: 'JobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopTargetedSentimentDetectionJobOutput
    #   resp.data.job_id #=> String
    #   resp.data.job_status #=> String, one of ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #
    def stop_targeted_sentiment_detection_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopTargetedSentimentDetectionJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopTargetedSentimentDetectionJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopTargetedSentimentDetectionJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::JobNotFoundException, Errors::InternalServerException, Errors::InvalidRequestException]),
        data_parser: Parsers::StopTargetedSentimentDetectionJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopTargetedSentimentDetectionJob,
        stubs: @stubs,
        params_class: Params::StopTargetedSentimentDetectionJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_targeted_sentiment_detection_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Stops a document classifier training job while in progress.</p>
    #          <p>If the training job state is <code>TRAINING</code>, the job is marked for termination and
    #       put into the <code>STOP_REQUESTED</code> state. If the training job completes before it can be
    #       stopped, it is put into the <code>TRAINED</code>; otherwise the training job is stopped and
    #       put into the <code>STOPPED</code> state and the service sends back an HTTP 200 response with
    #       an empty HTTP body. </p>
    #
    # @param [Hash] params
    #   See {Types::StopTrainingDocumentClassifierInput}.
    #
    # @option params [String] :document_classifier_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the document classifier currently being
    #         trained.</p>
    #
    # @return [Types::StopTrainingDocumentClassifierOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_training_document_classifier(
    #     document_classifier_arn: 'DocumentClassifierArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopTrainingDocumentClassifierOutput
    #
    def stop_training_document_classifier(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopTrainingDocumentClassifierInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopTrainingDocumentClassifierInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopTrainingDocumentClassifier
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::TooManyRequestsException, Errors::InvalidRequestException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::StopTrainingDocumentClassifier
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopTrainingDocumentClassifier,
        stubs: @stubs,
        params_class: Params::StopTrainingDocumentClassifierOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_training_document_classifier
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Stops an entity recognizer training job while in progress.</p>
    #          <p>If the training job state is <code>TRAINING</code>, the job is marked for termination and
    #       put into the <code>STOP_REQUESTED</code> state. If the training job completes before it can be
    #       stopped, it is put into the <code>TRAINED</code>; otherwise the training job is stopped and
    #       putted into the <code>STOPPED</code> state and the service sends back an HTTP 200 response
    #       with an empty HTTP body.</p>
    #
    # @param [Hash] params
    #   See {Types::StopTrainingEntityRecognizerInput}.
    #
    # @option params [String] :entity_recognizer_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the entity recognizer currently being
    #         trained.</p>
    #
    # @return [Types::StopTrainingEntityRecognizerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_training_entity_recognizer(
    #     entity_recognizer_arn: 'EntityRecognizerArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopTrainingEntityRecognizerOutput
    #
    def stop_training_entity_recognizer(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopTrainingEntityRecognizerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopTrainingEntityRecognizerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopTrainingEntityRecognizer
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::TooManyRequestsException, Errors::InvalidRequestException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::StopTrainingEntityRecognizer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopTrainingEntityRecognizer,
        stubs: @stubs,
        params_class: Params::StopTrainingEntityRecognizerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_training_entity_recognizer
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associates a specific tag with an Amazon Comprehend resource. A tag is a key-value pair
    #       that adds as a metadata to a resource used by Amazon Comprehend. For example, a tag with
    #       "Sales" as the key might be added to a resource to indicate its use by the sales department.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the given Amazon Comprehend resource to which you want
    #         to associate the tags. </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Tags being associated with a specific Amazon Comprehend resource. There can be a maximum
    #         of 50 tags (both existing and pending) associated with a specific resource. </p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'ResourceArn', # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value'
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::InternalServerException, Errors::TooManyTagsException, Errors::InvalidRequestException, Errors::ResourceNotFoundException]),
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

    # <p>Removes a specific tag associated with an Amazon Comprehend resource. </p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p> The Amazon Resource Name (ARN) of the given Amazon Comprehend resource from which you
    #         want to remove the tags. </p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The initial part of a key-value pair that forms a tag being removed from a given resource.
    #         For example, a tag with "Sales" as the key might be added to a resource to indicate its use by
    #         the sales department. Keys must be unique and cannot be duplicated for a particular resource.
    #       </p>
    #
    # @return [Types::UntagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource(
    #     resource_arn: 'ResourceArn', # required
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyTagKeysException, Errors::ConcurrentModificationException, Errors::InternalServerException, Errors::InvalidRequestException, Errors::ResourceNotFoundException]),
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

    # <p>Updates information about the specified endpoint.
    #       For information about endpoints, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/manage-endpoints.html">Managing endpoints</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateEndpointInput}.
    #
    # @option params [String] :endpoint_arn
    #   <p>The Amazon Resource Number (ARN) of the endpoint being updated.</p>
    #
    # @option params [String] :desired_model_arn
    #   <p>The ARN of the new model to use when updating an existing endpoint.</p>
    #
    # @option params [Integer] :desired_inference_units
    #   <p> The desired number of inference units to be used by the model using this endpoint.
    #
    #         Each inference unit represents of a throughput of 100 characters per second.</p>
    #
    # @option params [String] :desired_data_access_role_arn
    #   <p>Data access role ARN to use in case the new model is encrypted with a customer CMK.</p>
    #
    # @return [Types::UpdateEndpointOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_endpoint(
    #     endpoint_arn: 'EndpointArn', # required
    #     desired_model_arn: 'DesiredModelArn',
    #     desired_inference_units: 1,
    #     desired_data_access_role_arn: 'DesiredDataAccessRoleArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateEndpointOutput
    #
    def update_endpoint(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateEndpointInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateEndpointInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateEndpoint
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceLimitExceededException, Errors::InternalServerException, Errors::ResourceUnavailableException, Errors::ResourceInUseException, Errors::TooManyRequestsException, Errors::InvalidRequestException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::UpdateEndpoint
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateEndpoint,
        stubs: @stubs,
        params_class: Params::UpdateEndpointOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_endpoint
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
