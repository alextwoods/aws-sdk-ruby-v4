# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::Transcribe
  # An API client for Transcribe
  # See {#initialize} for a full list of supported configuration options
  # <p>Amazon Transcribe offers three main types of batch transcription:
  #             <b>Standard</b>, <b>Medical</b>, and
  #             <b>Call Analytics</b>.</p>
  #         <ul>
  #             <li>
  #                 <p>
  #                   <b>Standard transcriptions</b> are the most common
  #                     option. Refer to  for details.</p>
  #             </li>
  #             <li>
  #                 <p>
  #                   <b>Medical transcriptions</b> are tailored to medical
  #                     professionals and incorporate medical terms. A common use case for this service is
  #                     transcribing doctor-patient dialogue into after-visit notes. Refer to
  #                      for details.</p>
  #             </li>
  #             <li>
  #                 <p>
  #                   <b>Call Analytics transcriptions</b> are designed for use
  #                     with call center audio on two different channels; if you're looking for insight into customer
  #                     service calls, use this option. Refer to  for
  #                     details.</p>
  #             </li>
  #          </ul>
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
    def initialize(config = AWS::SDK::Transcribe::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Creates a new Call Analytics category.</p>
    #         <p>All categories are automatically applied to your Call Analytics jobs. Note that in order to apply
    #             your categories to your jobs, you must create them before submitting your job request, as
    #             categories cannot be applied retroactively.</p>
    #         <p>Call Analytics categories are composed of rules. For each category, you must create
    #             between 1 and 20 rules. Rules can include these parameters: ,
    #             , , and
    #             .</p>
    #         <p>To update an existing category, see .</p>
    #         <p>To learn more about:</p>
    #             <ul>
    #             <li>
    #                     <p>Call Analytics categories, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/call-analytics-create-categories.html">Creating categories</a>
    #                </p>
    #                 </li>
    #             <li>
    #                     <p>Using rules, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/call-analytics-create-categories.html#call-analytics-create-categories-rules">Rule
    #             criteria</a> and refer to the  data type</p>
    #                 </li>
    #             <li>
    #                     <p>Call Analytics, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/call-analytics.html">Analyzing call center audio with Call
    #             Analytics</a>
    #                </p>
    #                 </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::CreateCallAnalyticsCategoryInput}.
    #
    # @option params [String] :category_name
    #   <p>A unique name, chosen by you, for your Call Analytics category. It's helpful to use a detailed
    #               naming system that will make sense to you in the future. For example, it's better to use
    #               <code>sentiment-positive-last30seconds</code> for a category over a generic name like
    #               <code>test-category</code>.</p>
    #           <p>Category names are case sensitive.</p>
    #
    # @option params [Array<Rule>] :rules
    #   <p>Rules define a Call Analytics category. When creating a new Call Analytics category, you must
    #               create between 1 and 20 rules for that category. For each rule, you specify a filter you want
    #               applied to the attributes of a call. For example, you can choose a sentiment filter that detects if a
    #               customer's sentiment was positive during the last 30 seconds of the call.</p>
    #
    # @return [Types::CreateCallAnalyticsCategoryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_call_analytics_category(
    #     category_name: 'CategoryName', # required
    #     rules: [
    #       {
    #         # One of:
    #         non_talk_time_filter: {
    #           threshold: 1,
    #           absolute_time_range: {
    #             start_time: 1,
    #             end_time: 1,
    #             first: 1,
    #             last: 1
    #           },
    #           relative_time_range: {
    #             start_percentage: 1,
    #             end_percentage: 1,
    #             first: 1,
    #             last: 1
    #           },
    #           negate: false
    #         },
    #         interruption_filter: {
    #           threshold: 1,
    #           participant_role: 'AGENT', # accepts ["AGENT", "CUSTOMER"]
    #           negate: false
    #         },
    #         transcript_filter: {
    #           transcript_filter_type: 'EXACT', # required - accepts ["EXACT"]
    #           participant_role: 'AGENT', # accepts ["AGENT", "CUSTOMER"]
    #           negate: false,
    #           targets: [
    #             'member'
    #           ] # required
    #         },
    #         sentiment_filter: {
    #           sentiments: [
    #             'POSITIVE' # accepts ["POSITIVE", "NEGATIVE", "NEUTRAL", "MIXED"]
    #           ], # required
    #           participant_role: 'AGENT', # accepts ["AGENT", "CUSTOMER"]
    #           negate: false
    #         }
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateCallAnalyticsCategoryOutput
    #   resp.data.category_properties #=> Types::CategoryProperties
    #   resp.data.category_properties.category_name #=> String
    #   resp.data.category_properties.rules #=> Array<Rule>
    #   resp.data.category_properties.rules[0] #=> Types::Rule, one of [NonTalkTimeFilter, InterruptionFilter, TranscriptFilter, SentimentFilter]
    #   resp.data.category_properties.rules[0].non_talk_time_filter #=> Types::NonTalkTimeFilter
    #   resp.data.category_properties.rules[0].non_talk_time_filter.threshold #=> Integer
    #   resp.data.category_properties.rules[0].non_talk_time_filter.absolute_time_range #=> Types::AbsoluteTimeRange
    #   resp.data.category_properties.rules[0].non_talk_time_filter.absolute_time_range.start_time #=> Integer
    #   resp.data.category_properties.rules[0].non_talk_time_filter.absolute_time_range.end_time #=> Integer
    #   resp.data.category_properties.rules[0].non_talk_time_filter.absolute_time_range.first #=> Integer
    #   resp.data.category_properties.rules[0].non_talk_time_filter.absolute_time_range.last #=> Integer
    #   resp.data.category_properties.rules[0].non_talk_time_filter.relative_time_range #=> Types::RelativeTimeRange
    #   resp.data.category_properties.rules[0].non_talk_time_filter.relative_time_range.start_percentage #=> Integer
    #   resp.data.category_properties.rules[0].non_talk_time_filter.relative_time_range.end_percentage #=> Integer
    #   resp.data.category_properties.rules[0].non_talk_time_filter.relative_time_range.first #=> Integer
    #   resp.data.category_properties.rules[0].non_talk_time_filter.relative_time_range.last #=> Integer
    #   resp.data.category_properties.rules[0].non_talk_time_filter.negate #=> Boolean
    #   resp.data.category_properties.rules[0].interruption_filter #=> Types::InterruptionFilter
    #   resp.data.category_properties.rules[0].interruption_filter.threshold #=> Integer
    #   resp.data.category_properties.rules[0].interruption_filter.participant_role #=> String, one of ["AGENT", "CUSTOMER"]
    #   resp.data.category_properties.rules[0].interruption_filter.absolute_time_range #=> Types::AbsoluteTimeRange
    #   resp.data.category_properties.rules[0].interruption_filter.relative_time_range #=> Types::RelativeTimeRange
    #   resp.data.category_properties.rules[0].interruption_filter.negate #=> Boolean
    #   resp.data.category_properties.rules[0].transcript_filter #=> Types::TranscriptFilter
    #   resp.data.category_properties.rules[0].transcript_filter.transcript_filter_type #=> String, one of ["EXACT"]
    #   resp.data.category_properties.rules[0].transcript_filter.absolute_time_range #=> Types::AbsoluteTimeRange
    #   resp.data.category_properties.rules[0].transcript_filter.relative_time_range #=> Types::RelativeTimeRange
    #   resp.data.category_properties.rules[0].transcript_filter.participant_role #=> String, one of ["AGENT", "CUSTOMER"]
    #   resp.data.category_properties.rules[0].transcript_filter.negate #=> Boolean
    #   resp.data.category_properties.rules[0].transcript_filter.targets #=> Array<String>
    #   resp.data.category_properties.rules[0].transcript_filter.targets[0] #=> String
    #   resp.data.category_properties.rules[0].sentiment_filter #=> Types::SentimentFilter
    #   resp.data.category_properties.rules[0].sentiment_filter.sentiments #=> Array<String>
    #   resp.data.category_properties.rules[0].sentiment_filter.sentiments[0] #=> String, one of ["POSITIVE", "NEGATIVE", "NEUTRAL", "MIXED"]
    #   resp.data.category_properties.rules[0].sentiment_filter.absolute_time_range #=> Types::AbsoluteTimeRange
    #   resp.data.category_properties.rules[0].sentiment_filter.relative_time_range #=> Types::RelativeTimeRange
    #   resp.data.category_properties.rules[0].sentiment_filter.participant_role #=> String, one of ["AGENT", "CUSTOMER"]
    #   resp.data.category_properties.rules[0].sentiment_filter.negate #=> Boolean
    #   resp.data.category_properties.create_time #=> Time
    #   resp.data.category_properties.last_update_time #=> Time
    #
    def create_call_analytics_category(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateCallAnalyticsCategoryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateCallAnalyticsCategoryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateCallAnalyticsCategory
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::InternalFailureException, Errors::BadRequestException, Errors::ConflictException]),
        data_parser: Parsers::CreateCallAnalyticsCategory
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateCallAnalyticsCategory,
        stubs: @stubs,
        params_class: Params::CreateCallAnalyticsCategoryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_call_analytics_category
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new custom language model.</p>
    #         <p>When creating a new language model, you must specify:</p>
    #         <ul>
    #             <li>
    #                 <p>If you want a Wideband (audio sample rates over 16,000 Hz) or Narrowband (audio sample
    #                     rates under 16,000 Hz) base model</p>
    #             </li>
    #             <li>
    #                 <p>The location of your training and tuning files (this must be an Amazon S3 URI)</p>
    #             </li>
    #             <li>
    #                 <p>The language of your model</p>
    #             </li>
    #             <li>
    #                 <p>A unique name for your model</p>
    #             </li>
    #          </ul>
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/custom-language-models.html">Custom language models</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateLanguageModelInput}.
    #
    # @option params [String] :language_code
    #   <p>The language code that represents the language of your model. Each language model must
    #               contain terms in only one language, and the language you select for your model must match the
    #               language of your training and tuning data.</p>
    #           <p>For a list of supported languages and their associated language codes, refer to the
    #               <a href="https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html">Supported
    #                   languages</a> table. Note that U.S. English (<code>en-US</code>) is the only language
    #               supported with Amazon Transcribe Medical.</p>
    #           <p>A custom language model can only be used to transcribe files in the same language as the
    #               model. For example, if you create a language model using US English (<code>en-US</code>), you
    #               can only apply this model to files that contain English audio.</p>
    #
    # @option params [String] :base_model_name
    #   <p>The Amazon Transcribe standard language model, or base model, used to create your custom
    #               language model. Amazon Transcribe offers two options for base models: Wideband and
    #               Narrowband.</p>
    #           <p>If the audio you want to transcribe has a sample rate of 16,000 Hz or greater, choose
    #               <code>WideBand</code>. To transcribe audio with a sample rate less than 16,000 Hz, choose
    #               <code>NarrowBand</code>.</p>
    #
    # @option params [String] :model_name
    #   <p>A unique name, chosen by you, for your custom language model.</p>
    #           <p>This name is case sensitive, cannot contain spaces, and must be unique within an
    #               Amazon Web Services account. If you try to create a new language model with the same name
    #               as an existing language model, you get a <code>ConflictException</code> error.</p>
    #
    # @option params [InputDataConfig] :input_data_config
    #   <p>Contains the Amazon S3 location of the training data you want to use to create a new
    #               custom language model, and permissions to access this location.</p>
    #           <p>When using <code>InputDataConfig</code>, you must include these sub-parameters:
    #               <code>S3Uri</code>, which is the Amazon S3 location of your training data, and
    #               <code>DataAccessRoleArn</code>, which is the Amazon Resource Name (ARN) of the role that
    #               has permission to access your specified Amazon S3 location. You can optionally include
    #               <code>TuningDataS3Uri</code>, which is the Amazon S3 location of your tuning data. If
    #               you specify different Amazon S3 locations for training and tuning data, the ARN you use
    #               must have permissions to access both locations.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Adds one or more custom tags, each in the form of a key:value pair, to a new custom language
    #               model at the time you create this new model.</p>
    #           <p>To learn more about using tags with Amazon Transcribe, refer to <a href="https://docs.aws.amazon.com/transcribe/latest/dg/tagging.html">Tagging resources</a>.</p>
    #
    # @return [Types::CreateLanguageModelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_language_model(
    #     language_code: 'en-US', # required - accepts ["en-US", "hi-IN", "es-US", "en-GB", "en-AU"]
    #     base_model_name: 'NarrowBand', # required - accepts ["NarrowBand", "WideBand"]
    #     model_name: 'ModelName', # required
    #     input_data_config: {
    #       s3_uri: 'S3Uri', # required
    #       tuning_data_s3_uri: 'TuningDataS3Uri',
    #       data_access_role_arn: 'DataAccessRoleArn' # required
    #     }, # required
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
    #   resp.data #=> Types::CreateLanguageModelOutput
    #   resp.data.language_code #=> String, one of ["en-US", "hi-IN", "es-US", "en-GB", "en-AU"]
    #   resp.data.base_model_name #=> String, one of ["NarrowBand", "WideBand"]
    #   resp.data.model_name #=> String
    #   resp.data.input_data_config #=> Types::InputDataConfig
    #   resp.data.input_data_config.s3_uri #=> String
    #   resp.data.input_data_config.tuning_data_s3_uri #=> String
    #   resp.data.input_data_config.data_access_role_arn #=> String
    #   resp.data.model_status #=> String, one of ["IN_PROGRESS", "FAILED", "COMPLETED"]
    #
    def create_language_model(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateLanguageModelInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateLanguageModelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateLanguageModel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::InternalFailureException, Errors::BadRequestException, Errors::ConflictException]),
        data_parser: Parsers::CreateLanguageModel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateLanguageModel,
        stubs: @stubs,
        params_class: Params::CreateLanguageModelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_language_model
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new custom medical vocabulary.</p>
    #         <p>Prior to creating a new medical vocabulary, you must first upload a text file that contains
    #             your new entries, phrases, and terms into an Amazon S3 bucket. Note that this differs from
    #             , where you can include a list of terms within
    #             your request using the <code>Phrases</code> flag; <code>CreateMedicalVocabulary</code>
    #             does not support the <code>Phrases</code> flag.</p>
    #         <p>Each language has a character set that contains all allowed characters for that specific
    #             language. If you use unsupported characters, your vocabulary request fails. Refer to
    #             <a href="https://docs.aws.amazon.com/transcribe/latest/dg/charsets.html">Character Sets for
    #                 Custom Vocabularies</a> to get the character set for your language.</p>
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/custom-vocabulary-create.html">Creating a custom
    #             vocabulary</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateMedicalVocabularyInput}.
    #
    # @option params [String] :vocabulary_name
    #   <p>A unique name, chosen by you, for your new custom medical vocabulary.</p>
    #           <p>This name is case sensitive, cannot contain spaces, and must be unique within an
    #               Amazon Web Services account. If you try to create a new medical vocabulary with the same name
    #               as an existing medical vocabulary, you get a <code>ConflictException</code> error.</p>
    #
    # @option params [String] :language_code
    #   <p>The language code that represents the language of the entries in your custom
    #               vocabulary. US English (<code>en-US</code>) is the only language supported with
    #               Amazon Transcribe Medical.</p>
    #
    # @option params [String] :vocabulary_file_uri
    #   <p>The Amazon S3 location (URI) of the text file that contains your custom medical
    #               vocabulary. The URI must be in the same Amazon Web Services Region as the resource you're
    #               calling.</p>
    #           <p>Here's an example URI path:
    #               <code>s3://DOC-EXAMPLE-BUCKET/my-vocab-file.txt</code>
    #            </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Adds one or more custom tags, each in the form of a key:value pair, to a new medical
    #               vocabulary at the time you create this new vocabulary.</p>
    #           <p>To learn more about using tags with Amazon Transcribe, refer to <a href="https://docs.aws.amazon.com/transcribe/latest/dg/tagging.html">Tagging resources</a>.</p>
    #
    # @return [Types::CreateMedicalVocabularyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_medical_vocabulary(
    #     vocabulary_name: 'VocabularyName', # required
    #     language_code: 'af-ZA', # required - accepts ["af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"]
    #     vocabulary_file_uri: 'VocabularyFileUri', # required
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
    #   resp.data #=> Types::CreateMedicalVocabularyOutput
    #   resp.data.vocabulary_name #=> String
    #   resp.data.language_code #=> String, one of ["af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"]
    #   resp.data.vocabulary_state #=> String, one of ["PENDING", "READY", "FAILED"]
    #   resp.data.last_modified_time #=> Time
    #   resp.data.failure_reason #=> String
    #
    def create_medical_vocabulary(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateMedicalVocabularyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateMedicalVocabularyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateMedicalVocabulary
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::InternalFailureException, Errors::BadRequestException, Errors::ConflictException]),
        data_parser: Parsers::CreateMedicalVocabulary
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateMedicalVocabulary,
        stubs: @stubs,
        params_class: Params::CreateMedicalVocabularyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_medical_vocabulary
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new custom vocabulary.</p>
    #         <p>When creating a new vocabulary, you can either upload a text file that contains your new
    #             entries, phrases, and terms into an Amazon S3 bucket and include the URI in your request, or
    #             you can include a list of terms directly in your request using the <code>Phrases</code> flag.</p>
    #         <p>Each language has a character set that contains all allowed characters for that specific
    #             language. If you use unsupported characters, your vocabulary request fails. Refer to
    #             <a href="https://docs.aws.amazon.com/transcribe/latest/dg/charsets.html">Character Sets for
    #                 Custom Vocabularies</a> to get the character set for your language.</p>
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/custom-vocabulary-create.html">Creating a custom
    #                 vocabulary</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateVocabularyInput}.
    #
    # @option params [String] :vocabulary_name
    #   <p>A unique name, chosen by you, for your new custom vocabulary.</p>
    #           <p>This name is case sensitive, cannot contain spaces, and must be unique within an
    #               Amazon Web Services account. If you try to create a new vocabulary with the same name as an
    #               existing vocabulary, you get a <code>ConflictException</code> error.</p>
    #
    # @option params [String] :language_code
    #   <p>The language code that represents the language of the entries in your custom
    #               vocabulary. Each vocabulary must contain terms in only one language.</p>
    #           <p>A custom vocabulary can only be used to transcribe files in the same language as the
    #               vocabulary. For example, if you create a vocabulary using US English (<code>en-US</code>),
    #               you can only apply this vocabulary to files that contain English audio.</p>
    #           <p>For a list of supported languages and their associated language codes, refer to the
    #               <a href="https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html">Supported
    #                   languages</a> table.</p>
    #
    # @option params [Array<String>] :phrases
    #   <p>Use this parameter if you want to create your vocabulary by including all desired terms, as
    #               comma-separated values, within your request. The other option for creating your vocabulary is to
    #               save your entries in a text file and upload them to an Amazon S3 bucket, then specify
    #               the location of your file using the <code>VocabularyFileUri</code> parameter.</p>
    #           <p>Note that if you include <code>Phrases</code> in your request, you cannot use
    #               <code>VocabularyFileUri</code>; you must choose one or the other.</p>
    #           <p>Each language has a character set that contains all allowed characters for that specific
    #               language. If you use unsupported characters, your vocabulary filter request fails. Refer to
    #               <a href="https://docs.aws.amazon.com/transcribe/latest/dg/charsets.html">Character Sets for
    #                   Custom Vocabularies</a> to get the character set for your language.</p>
    #
    # @option params [String] :vocabulary_file_uri
    #   <p>The Amazon S3 location of the text file that contains your custom vocabulary. The
    #               URI must be located in the same Amazon Web Services Region as the resource you're
    #               calling.</p>
    #           <p>Here's an example URI path:
    #               <code>s3://DOC-EXAMPLE-BUCKET/my-vocab-file.txt</code>
    #            </p>
    #           <p>Note that if you include <code>VocabularyFileUri</code> in your request, you
    #               cannot use the <code>Phrases</code> flag; you must choose one or the other.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Adds one or more custom tags, each in the form of a key:value pair, to a new custom
    #               vocabulary at the time you create this new vocabulary.</p>
    #           <p>To learn more about using tags with Amazon Transcribe, refer to <a href="https://docs.aws.amazon.com/transcribe/latest/dg/tagging.html">Tagging resources</a>.</p>
    #
    # @return [Types::CreateVocabularyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_vocabulary(
    #     vocabulary_name: 'VocabularyName', # required
    #     language_code: 'af-ZA', # required - accepts ["af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"]
    #     phrases: [
    #       'member'
    #     ],
    #     vocabulary_file_uri: 'VocabularyFileUri',
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
    #   resp.data #=> Types::CreateVocabularyOutput
    #   resp.data.vocabulary_name #=> String
    #   resp.data.language_code #=> String, one of ["af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"]
    #   resp.data.vocabulary_state #=> String, one of ["PENDING", "READY", "FAILED"]
    #   resp.data.last_modified_time #=> Time
    #   resp.data.failure_reason #=> String
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::InternalFailureException, Errors::BadRequestException, Errors::ConflictException]),
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

    # <p>Creates a new custom vocabulary filter.</p>
    #         <p>You can use vocabulary filters to mask, delete, or flag specific words from your transcript.
    #             Vocabulary filters are commonly used to mask profanity in transcripts.</p>
    #         <p>Each language has a character set that contains all allowed characters for that specific
    #             language. If you use unsupported characters, your vocabulary filter request fails. Refer to
    #             <a href="https://docs.aws.amazon.com/transcribe/latest/dg/charsets.html">Character Sets for
    #                 Custom Vocabularies</a> to get the character set for your language.</p>
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/vocabulary-filtering.html">Using vocabulary filtering with unwanted
    #             words</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateVocabularyFilterInput}.
    #
    # @option params [String] :vocabulary_filter_name
    #   <p>A unique name, chosen by you, for your new custom vocabulary filter.</p>
    #           <p>This name is case sensitive, cannot contain spaces, and must be unique within an
    #               Amazon Web Services account. If you try to create a new vocabulary filter with the same name
    #               as an existing vocabulary filter, you get a <code>ConflictException</code> error.</p>
    #
    # @option params [String] :language_code
    #   <p>The language code that represents the language of the entries in your vocabulary
    #               filter. Each vocabulary filter must contain terms in only one language.</p>
    #           <p>A vocabulary filter can only be used to transcribe files in the same language as the
    #               filter. For example, if you create a vocabulary filter using US English (<code>en-US</code>), you
    #               can only apply this filter to files that contain English audio.</p>
    #           <p>For a list of supported languages and their associated language codes, refer to the
    #               <a href="https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html">Supported
    #                   languages</a> table.</p>
    #
    # @option params [Array<String>] :words
    #   <p>Use this parameter if you want to create your vocabulary filter by including all desired terms,
    #               as comma-separated values, within your request. The other option for creating your vocabulary
    #               filter is to save your entries in a text file and upload them to an Amazon S3 bucket, then
    #               specify the location of your file using the <code>VocabularyFilterFileUri</code>
    #               parameter.</p>
    #           <p>Note that if you include <code>Words</code> in your request, you cannot use
    #               <code>VocabularyFilterFileUri</code>; you must choose one or the other.</p>
    #           <p>Each language has a character set that contains all allowed characters for that specific
    #               language. If you use unsupported characters, your vocabulary filter request fails. Refer to
    #               <a href="https://docs.aws.amazon.com/transcribe/latest/dg/charsets.html">Character Sets for
    #                   Custom Vocabularies</a> to get the character set for your language.</p>
    #
    # @option params [String] :vocabulary_filter_file_uri
    #   <p>The Amazon S3 location of the text file that contains your custom vocabulary filter
    #               terms. The URI must be located in the same Amazon Web Services Region as the resource you're
    #               calling.</p>
    #           <p>Here's an example URI path:
    #               <code>s3://DOC-EXAMPLE-BUCKET/my-vocab-filter-file.txt</code>
    #            </p>
    #           <p>Note that if you include <code>VocabularyFilterFileUri</code> in your request, you
    #               cannot use <code>Words</code>; you must choose one or the other.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Adds one or more custom tags, each in the form of a key:value pair, to a new custom
    #               vocabulary filter at the time you create this new filter.</p>
    #           <p>To learn more about using tags with Amazon Transcribe, refer to <a href="https://docs.aws.amazon.com/transcribe/latest/dg/tagging.html">Tagging resources</a>.</p>
    #
    # @return [Types::CreateVocabularyFilterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_vocabulary_filter(
    #     vocabulary_filter_name: 'VocabularyFilterName', # required
    #     language_code: 'af-ZA', # required - accepts ["af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"]
    #     words: [
    #       'member'
    #     ],
    #     vocabulary_filter_file_uri: 'VocabularyFilterFileUri',
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
    #   resp.data #=> Types::CreateVocabularyFilterOutput
    #   resp.data.vocabulary_filter_name #=> String
    #   resp.data.language_code #=> String, one of ["af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"]
    #   resp.data.last_modified_time #=> Time
    #
    def create_vocabulary_filter(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateVocabularyFilterInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateVocabularyFilterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateVocabularyFilter
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::LimitExceededException, Errors::InternalFailureException, Errors::BadRequestException, Errors::ConflictException]),
        data_parser: Parsers::CreateVocabularyFilter
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateVocabularyFilter,
        stubs: @stubs,
        params_class: Params::CreateVocabularyFilterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_vocabulary_filter
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a Call Analytics category. To use this operation, specify the name of the category
    #             you want to delete using <code>CategoryName</code>. Category names are case
    #             sensitive.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteCallAnalyticsCategoryInput}.
    #
    # @option params [String] :category_name
    #   <p>The name of the Call Analytics category you want to delete. Category names are
    #               case sensitive.</p>
    #
    # @return [Types::DeleteCallAnalyticsCategoryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_call_analytics_category(
    #     category_name: 'CategoryName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteCallAnalyticsCategoryOutput
    #
    def delete_call_analytics_category(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteCallAnalyticsCategoryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteCallAnalyticsCategoryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteCallAnalyticsCategory
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::LimitExceededException, Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException]),
        data_parser: Parsers::DeleteCallAnalyticsCategory
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteCallAnalyticsCategory,
        stubs: @stubs,
        params_class: Params::DeleteCallAnalyticsCategoryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_call_analytics_category
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a Call Analytics job. To use this operation, specify the name of the job you want to
    #             delete using <code>CallAnalyticsJobName</code>. Job names are case sensitive.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteCallAnalyticsJobInput}.
    #
    # @option params [String] :call_analytics_job_name
    #   <p>The name of the Call Analytics job you want to delete. Job names are case sensitive.</p>
    #
    # @return [Types::DeleteCallAnalyticsJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_call_analytics_job(
    #     call_analytics_job_name: 'CallAnalyticsJobName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteCallAnalyticsJobOutput
    #
    def delete_call_analytics_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteCallAnalyticsJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteCallAnalyticsJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteCallAnalyticsJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::LimitExceededException, Errors::InternalFailureException, Errors::BadRequestException]),
        data_parser: Parsers::DeleteCallAnalyticsJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteCallAnalyticsJob,
        stubs: @stubs,
        params_class: Params::DeleteCallAnalyticsJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_call_analytics_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a custom language model. To use this operation, specify the name of the language
    #             model you want to delete using <code>ModelName</code>. Language model names are case
    #             sensitive.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteLanguageModelInput}.
    #
    # @option params [String] :model_name
    #   <p>The name of the custom language model you want to delete. Model names are
    #               case sensitive.</p>
    #
    # @return [Types::DeleteLanguageModelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_language_model(
    #     model_name: 'ModelName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteLanguageModelOutput
    #
    def delete_language_model(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteLanguageModelInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteLanguageModelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteLanguageModel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::LimitExceededException, Errors::InternalFailureException, Errors::BadRequestException]),
        data_parser: Parsers::DeleteLanguageModel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteLanguageModel,
        stubs: @stubs,
        params_class: Params::DeleteLanguageModelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_language_model
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a medical transcription job. To use this operation, specify the name of the job you
    #             want to delete using <code>MedicalTranscriptionJobName</code>. Job names are case
    #             sensitive.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteMedicalTranscriptionJobInput}.
    #
    # @option params [String] :medical_transcription_job_name
    #   <p>The name of the medical transcription job you want to delete. Job names are case
    #               sensitive.</p>
    #
    # @return [Types::DeleteMedicalTranscriptionJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_medical_transcription_job(
    #     medical_transcription_job_name: 'MedicalTranscriptionJobName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteMedicalTranscriptionJobOutput
    #
    def delete_medical_transcription_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteMedicalTranscriptionJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteMedicalTranscriptionJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteMedicalTranscriptionJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::LimitExceededException, Errors::InternalFailureException, Errors::BadRequestException]),
        data_parser: Parsers::DeleteMedicalTranscriptionJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteMedicalTranscriptionJob,
        stubs: @stubs,
        params_class: Params::DeleteMedicalTranscriptionJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_medical_transcription_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a custom medical vocabulary. To use this operation, specify the name of the
    #             vocabulary you want to delete using <code>VocabularyName</code>. Vocabulary names are
    #             case sensitive.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteMedicalVocabularyInput}.
    #
    # @option params [String] :vocabulary_name
    #   <p>The name of the custom medical vocabulary you want to delete. Vocabulary names are
    #               case sensitive.</p>
    #
    # @return [Types::DeleteMedicalVocabularyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_medical_vocabulary(
    #     vocabulary_name: 'VocabularyName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteMedicalVocabularyOutput
    #
    def delete_medical_vocabulary(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteMedicalVocabularyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteMedicalVocabularyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteMedicalVocabulary
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::LimitExceededException, Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException]),
        data_parser: Parsers::DeleteMedicalVocabulary
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteMedicalVocabulary,
        stubs: @stubs,
        params_class: Params::DeleteMedicalVocabularyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_medical_vocabulary
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a transcription job. To use this operation, specify the name of the job you want to
    #             delete using <code>TranscriptionJobName</code>. Job names are case sensitive.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteTranscriptionJobInput}.
    #
    # @option params [String] :transcription_job_name
    #   <p>The name of the transcription job you want to delete. Job names are case sensitive.</p>
    #
    # @return [Types::DeleteTranscriptionJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_transcription_job(
    #     transcription_job_name: 'TranscriptionJobName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteTranscriptionJobOutput
    #
    def delete_transcription_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteTranscriptionJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteTranscriptionJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteTranscriptionJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::LimitExceededException, Errors::InternalFailureException, Errors::BadRequestException]),
        data_parser: Parsers::DeleteTranscriptionJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteTranscriptionJob,
        stubs: @stubs,
        params_class: Params::DeleteTranscriptionJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_transcription_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a custom vocabulary. To use this operation, specify the name of the vocabulary you
    #             want to delete using <code>VocabularyName</code>. Vocabulary names are case
    #             sensitive.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteVocabularyInput}.
    #
    # @option params [String] :vocabulary_name
    #   <p>The name of the custom vocabulary you want to delete. Vocabulary names are
    #               case sensitive.</p>
    #
    # @return [Types::DeleteVocabularyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_vocabulary(
    #     vocabulary_name: 'VocabularyName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteVocabularyOutput
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::LimitExceededException, Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException]),
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

    # <p>Deletes a vocabulary filter. To use this operation, specify the name of the vocabulary filter
    #             you want to delete using <code>VocabularyFilterName</code>. Vocabulary filter names are
    #             case sensitive.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteVocabularyFilterInput}.
    #
    # @option params [String] :vocabulary_filter_name
    #   <p>The name of the custom vocabulary filter you want to delete. Vocabulary filter names
    #               are case sensitive.</p>
    #
    # @return [Types::DeleteVocabularyFilterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_vocabulary_filter(
    #     vocabulary_filter_name: 'VocabularyFilterName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteVocabularyFilterOutput
    #
    def delete_vocabulary_filter(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteVocabularyFilterInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteVocabularyFilterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteVocabularyFilter
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::LimitExceededException, Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException]),
        data_parser: Parsers::DeleteVocabularyFilter
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteVocabularyFilter,
        stubs: @stubs,
        params_class: Params::DeleteVocabularyFilterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_vocabulary_filter
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides information about the specified custom language model.</p>
    #         <p>This operation also shows if the base language model you used to create your custom
    #             language model has been updated. If Amazon Transcribe has updated the base model, you
    #             can create a new custom language model using the updated base model.</p>
    #         <p>If you tried to create a new custom language model and the request wasn't successful,
    #             you can use <code>DescribeLanguageModel</code> to help identify the reason for this
    #             failure.</p>
    #         <p>To get a list of your custom language models, use the
    #              operation.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeLanguageModelInput}.
    #
    # @option params [String] :model_name
    #   <p>The name of the custom language model you want information about. Model names are
    #               case sensitive.</p>
    #
    # @return [Types::DescribeLanguageModelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_language_model(
    #     model_name: 'ModelName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeLanguageModelOutput
    #   resp.data.language_model #=> Types::LanguageModel
    #   resp.data.language_model.model_name #=> String
    #   resp.data.language_model.create_time #=> Time
    #   resp.data.language_model.last_modified_time #=> Time
    #   resp.data.language_model.language_code #=> String, one of ["en-US", "hi-IN", "es-US", "en-GB", "en-AU"]
    #   resp.data.language_model.base_model_name #=> String, one of ["NarrowBand", "WideBand"]
    #   resp.data.language_model.model_status #=> String, one of ["IN_PROGRESS", "FAILED", "COMPLETED"]
    #   resp.data.language_model.upgrade_availability #=> Boolean
    #   resp.data.language_model.failure_reason #=> String
    #   resp.data.language_model.input_data_config #=> Types::InputDataConfig
    #   resp.data.language_model.input_data_config.s3_uri #=> String
    #   resp.data.language_model.input_data_config.tuning_data_s3_uri #=> String
    #   resp.data.language_model.input_data_config.data_access_role_arn #=> String
    #
    def describe_language_model(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeLanguageModelInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeLanguageModelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeLanguageModel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException]),
        data_parser: Parsers::DescribeLanguageModel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeLanguageModel,
        stubs: @stubs,
        params_class: Params::DescribeLanguageModelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_language_model
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides information about the specified Call Analytics category.</p>
    #         <p>To get a list of your Call Analytics categories, use the
    #              operation.</p>
    #
    # @param [Hash] params
    #   See {Types::GetCallAnalyticsCategoryInput}.
    #
    # @option params [String] :category_name
    #   <p>The name of the Call Analytics category you want information about. Category names are
    #               case sensitive.</p>
    #
    # @return [Types::GetCallAnalyticsCategoryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_call_analytics_category(
    #     category_name: 'CategoryName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetCallAnalyticsCategoryOutput
    #   resp.data.category_properties #=> Types::CategoryProperties
    #   resp.data.category_properties.category_name #=> String
    #   resp.data.category_properties.rules #=> Array<Rule>
    #   resp.data.category_properties.rules[0] #=> Types::Rule, one of [NonTalkTimeFilter, InterruptionFilter, TranscriptFilter, SentimentFilter]
    #   resp.data.category_properties.rules[0].non_talk_time_filter #=> Types::NonTalkTimeFilter
    #   resp.data.category_properties.rules[0].non_talk_time_filter.threshold #=> Integer
    #   resp.data.category_properties.rules[0].non_talk_time_filter.absolute_time_range #=> Types::AbsoluteTimeRange
    #   resp.data.category_properties.rules[0].non_talk_time_filter.absolute_time_range.start_time #=> Integer
    #   resp.data.category_properties.rules[0].non_talk_time_filter.absolute_time_range.end_time #=> Integer
    #   resp.data.category_properties.rules[0].non_talk_time_filter.absolute_time_range.first #=> Integer
    #   resp.data.category_properties.rules[0].non_talk_time_filter.absolute_time_range.last #=> Integer
    #   resp.data.category_properties.rules[0].non_talk_time_filter.relative_time_range #=> Types::RelativeTimeRange
    #   resp.data.category_properties.rules[0].non_talk_time_filter.relative_time_range.start_percentage #=> Integer
    #   resp.data.category_properties.rules[0].non_talk_time_filter.relative_time_range.end_percentage #=> Integer
    #   resp.data.category_properties.rules[0].non_talk_time_filter.relative_time_range.first #=> Integer
    #   resp.data.category_properties.rules[0].non_talk_time_filter.relative_time_range.last #=> Integer
    #   resp.data.category_properties.rules[0].non_talk_time_filter.negate #=> Boolean
    #   resp.data.category_properties.rules[0].interruption_filter #=> Types::InterruptionFilter
    #   resp.data.category_properties.rules[0].interruption_filter.threshold #=> Integer
    #   resp.data.category_properties.rules[0].interruption_filter.participant_role #=> String, one of ["AGENT", "CUSTOMER"]
    #   resp.data.category_properties.rules[0].interruption_filter.absolute_time_range #=> Types::AbsoluteTimeRange
    #   resp.data.category_properties.rules[0].interruption_filter.relative_time_range #=> Types::RelativeTimeRange
    #   resp.data.category_properties.rules[0].interruption_filter.negate #=> Boolean
    #   resp.data.category_properties.rules[0].transcript_filter #=> Types::TranscriptFilter
    #   resp.data.category_properties.rules[0].transcript_filter.transcript_filter_type #=> String, one of ["EXACT"]
    #   resp.data.category_properties.rules[0].transcript_filter.absolute_time_range #=> Types::AbsoluteTimeRange
    #   resp.data.category_properties.rules[0].transcript_filter.relative_time_range #=> Types::RelativeTimeRange
    #   resp.data.category_properties.rules[0].transcript_filter.participant_role #=> String, one of ["AGENT", "CUSTOMER"]
    #   resp.data.category_properties.rules[0].transcript_filter.negate #=> Boolean
    #   resp.data.category_properties.rules[0].transcript_filter.targets #=> Array<String>
    #   resp.data.category_properties.rules[0].transcript_filter.targets[0] #=> String
    #   resp.data.category_properties.rules[0].sentiment_filter #=> Types::SentimentFilter
    #   resp.data.category_properties.rules[0].sentiment_filter.sentiments #=> Array<String>
    #   resp.data.category_properties.rules[0].sentiment_filter.sentiments[0] #=> String, one of ["POSITIVE", "NEGATIVE", "NEUTRAL", "MIXED"]
    #   resp.data.category_properties.rules[0].sentiment_filter.absolute_time_range #=> Types::AbsoluteTimeRange
    #   resp.data.category_properties.rules[0].sentiment_filter.relative_time_range #=> Types::RelativeTimeRange
    #   resp.data.category_properties.rules[0].sentiment_filter.participant_role #=> String, one of ["AGENT", "CUSTOMER"]
    #   resp.data.category_properties.rules[0].sentiment_filter.negate #=> Boolean
    #   resp.data.category_properties.create_time #=> Time
    #   resp.data.category_properties.last_update_time #=> Time
    #
    def get_call_analytics_category(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetCallAnalyticsCategoryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetCallAnalyticsCategoryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetCallAnalyticsCategory
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException]),
        data_parser: Parsers::GetCallAnalyticsCategory
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetCallAnalyticsCategory,
        stubs: @stubs,
        params_class: Params::GetCallAnalyticsCategoryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_call_analytics_category
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides information about the specified Call Analytics job.</p>
    #         <p>To view the job's status, refer to <code>CallAnalyticsJobStatus</code>. If the status is
    #             <code>COMPLETED</code>, the job is finished. You can find your completed transcript at
    #             the URI specified in <code>TranscriptFileUri</code>. If the status is <code>FAILED</code>,
    #             <code>FailureReason</code> provides details on why your transcription job failed.</p>
    #         <p>If you enabled personally identifiable information (PII) redaction, the redacted transcript
    #             appears at the location specified in <code>RedactedTranscriptFileUri</code>.</p>
    #          <p>If you chose to redact the audio in your media file, you can find your redacted media file
    #            at the location specified in <code>RedactedMediaFileUri</code>.</p>
    #         <p>To get a list of your Call Analytics jobs, use the
    #             operation.</p>
    #
    # @param [Hash] params
    #   See {Types::GetCallAnalyticsJobInput}.
    #
    # @option params [String] :call_analytics_job_name
    #   <p>The name of the Call Analytics job you want information about. Job names are case
    #               sensitive.</p>
    #
    # @return [Types::GetCallAnalyticsJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_call_analytics_job(
    #     call_analytics_job_name: 'CallAnalyticsJobName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetCallAnalyticsJobOutput
    #   resp.data.call_analytics_job #=> Types::CallAnalyticsJob
    #   resp.data.call_analytics_job.call_analytics_job_name #=> String
    #   resp.data.call_analytics_job.call_analytics_job_status #=> String, one of ["QUEUED", "IN_PROGRESS", "FAILED", "COMPLETED"]
    #   resp.data.call_analytics_job.language_code #=> String, one of ["af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"]
    #   resp.data.call_analytics_job.media_sample_rate_hertz #=> Integer
    #   resp.data.call_analytics_job.media_format #=> String, one of ["mp3", "mp4", "wav", "flac", "ogg", "amr", "webm"]
    #   resp.data.call_analytics_job.media #=> Types::Media
    #   resp.data.call_analytics_job.media.media_file_uri #=> String
    #   resp.data.call_analytics_job.media.redacted_media_file_uri #=> String
    #   resp.data.call_analytics_job.transcript #=> Types::Transcript
    #   resp.data.call_analytics_job.transcript.transcript_file_uri #=> String
    #   resp.data.call_analytics_job.transcript.redacted_transcript_file_uri #=> String
    #   resp.data.call_analytics_job.start_time #=> Time
    #   resp.data.call_analytics_job.creation_time #=> Time
    #   resp.data.call_analytics_job.completion_time #=> Time
    #   resp.data.call_analytics_job.failure_reason #=> String
    #   resp.data.call_analytics_job.data_access_role_arn #=> String
    #   resp.data.call_analytics_job.identified_language_score #=> Float
    #   resp.data.call_analytics_job.settings #=> Types::CallAnalyticsJobSettings
    #   resp.data.call_analytics_job.settings.vocabulary_name #=> String
    #   resp.data.call_analytics_job.settings.vocabulary_filter_name #=> String
    #   resp.data.call_analytics_job.settings.vocabulary_filter_method #=> String, one of ["remove", "mask", "tag"]
    #   resp.data.call_analytics_job.settings.language_model_name #=> String
    #   resp.data.call_analytics_job.settings.content_redaction #=> Types::ContentRedaction
    #   resp.data.call_analytics_job.settings.content_redaction.redaction_type #=> String, one of ["PII"]
    #   resp.data.call_analytics_job.settings.content_redaction.redaction_output #=> String, one of ["redacted", "redacted_and_unredacted"]
    #   resp.data.call_analytics_job.settings.content_redaction.pii_entity_types #=> Array<String>
    #   resp.data.call_analytics_job.settings.content_redaction.pii_entity_types[0] #=> String, one of ["BANK_ACCOUNT_NUMBER", "BANK_ROUTING", "CREDIT_DEBIT_NUMBER", "CREDIT_DEBIT_CVV", "CREDIT_DEBIT_EXPIRY", "PIN", "EMAIL", "ADDRESS", "NAME", "PHONE", "SSN", "ALL"]
    #   resp.data.call_analytics_job.settings.language_options #=> Array<String>
    #   resp.data.call_analytics_job.settings.language_options[0] #=> String, one of ["af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"]
    #   resp.data.call_analytics_job.settings.language_id_settings #=> Hash<String, LanguageIdSettings>
    #   resp.data.call_analytics_job.settings.language_id_settings['key'] #=> Types::LanguageIdSettings
    #   resp.data.call_analytics_job.settings.language_id_settings['key'].vocabulary_name #=> String
    #   resp.data.call_analytics_job.settings.language_id_settings['key'].vocabulary_filter_name #=> String
    #   resp.data.call_analytics_job.settings.language_id_settings['key'].language_model_name #=> String
    #   resp.data.call_analytics_job.channel_definitions #=> Array<ChannelDefinition>
    #   resp.data.call_analytics_job.channel_definitions[0] #=> Types::ChannelDefinition
    #   resp.data.call_analytics_job.channel_definitions[0].channel_id #=> Integer
    #   resp.data.call_analytics_job.channel_definitions[0].participant_role #=> String, one of ["AGENT", "CUSTOMER"]
    #
    def get_call_analytics_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetCallAnalyticsJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetCallAnalyticsJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetCallAnalyticsJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException]),
        data_parser: Parsers::GetCallAnalyticsJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetCallAnalyticsJob,
        stubs: @stubs,
        params_class: Params::GetCallAnalyticsJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_call_analytics_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides information about the specified medical transcription job.</p>
    #         <p>To view the status of the specified medical transcription job, check the
    #             <code>TranscriptionJobStatus</code> field. If the status is <code>COMPLETED</code>, the
    #             job is finished and you can find the results at the location specified in
    #             <code>TranscriptFileUri</code>. If the status is <code>FAILED</code>,
    #             <code>FailureReason</code> provides details on why your transcription job failed.</p>
    #         <p>To get a list of your medical transcription jobs, use the
    #              operation.</p>
    #
    # @param [Hash] params
    #   See {Types::GetMedicalTranscriptionJobInput}.
    #
    # @option params [String] :medical_transcription_job_name
    #   <p>The name of the medical transcription job you want information about. Job names are case
    #               sensitive.</p>
    #
    # @return [Types::GetMedicalTranscriptionJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_medical_transcription_job(
    #     medical_transcription_job_name: 'MedicalTranscriptionJobName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetMedicalTranscriptionJobOutput
    #   resp.data.medical_transcription_job #=> Types::MedicalTranscriptionJob
    #   resp.data.medical_transcription_job.medical_transcription_job_name #=> String
    #   resp.data.medical_transcription_job.transcription_job_status #=> String, one of ["QUEUED", "IN_PROGRESS", "FAILED", "COMPLETED"]
    #   resp.data.medical_transcription_job.language_code #=> String, one of ["af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"]
    #   resp.data.medical_transcription_job.media_sample_rate_hertz #=> Integer
    #   resp.data.medical_transcription_job.media_format #=> String, one of ["mp3", "mp4", "wav", "flac", "ogg", "amr", "webm"]
    #   resp.data.medical_transcription_job.media #=> Types::Media
    #   resp.data.medical_transcription_job.media.media_file_uri #=> String
    #   resp.data.medical_transcription_job.media.redacted_media_file_uri #=> String
    #   resp.data.medical_transcription_job.transcript #=> Types::MedicalTranscript
    #   resp.data.medical_transcription_job.transcript.transcript_file_uri #=> String
    #   resp.data.medical_transcription_job.start_time #=> Time
    #   resp.data.medical_transcription_job.creation_time #=> Time
    #   resp.data.medical_transcription_job.completion_time #=> Time
    #   resp.data.medical_transcription_job.failure_reason #=> String
    #   resp.data.medical_transcription_job.settings #=> Types::MedicalTranscriptionSetting
    #   resp.data.medical_transcription_job.settings.show_speaker_labels #=> Boolean
    #   resp.data.medical_transcription_job.settings.max_speaker_labels #=> Integer
    #   resp.data.medical_transcription_job.settings.channel_identification #=> Boolean
    #   resp.data.medical_transcription_job.settings.show_alternatives #=> Boolean
    #   resp.data.medical_transcription_job.settings.max_alternatives #=> Integer
    #   resp.data.medical_transcription_job.settings.vocabulary_name #=> String
    #   resp.data.medical_transcription_job.content_identification_type #=> String, one of ["PHI"]
    #   resp.data.medical_transcription_job.specialty #=> String, one of ["PRIMARYCARE"]
    #   resp.data.medical_transcription_job.type #=> String, one of ["CONVERSATION", "DICTATION"]
    #   resp.data.medical_transcription_job.tags #=> Array<Tag>
    #   resp.data.medical_transcription_job.tags[0] #=> Types::Tag
    #   resp.data.medical_transcription_job.tags[0].key #=> String
    #   resp.data.medical_transcription_job.tags[0].value #=> String
    #
    def get_medical_transcription_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetMedicalTranscriptionJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetMedicalTranscriptionJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetMedicalTranscriptionJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException]),
        data_parser: Parsers::GetMedicalTranscriptionJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetMedicalTranscriptionJob,
        stubs: @stubs,
        params_class: Params::GetMedicalTranscriptionJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_medical_transcription_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides information about the specified custom medical vocabulary.</p>
    #         <p>To view the status of the specified medical vocabulary, check the
    #             <code>VocabularyState</code> field. If the status is <code>READY</code>, your vocabulary
    #             is available to use. If the status is <code>FAILED</code>, <code>FailureReason</code> provides
    #             details on why your vocabulary failed.</p>
    #         <p>To get a list of your custom medical vocabularies, use the
    #              operation.</p>
    #
    # @param [Hash] params
    #   See {Types::GetMedicalVocabularyInput}.
    #
    # @option params [String] :vocabulary_name
    #   <p>The name of the custom medical vocabulary you want information about. Vocabulary names
    #               are case sensitive.</p>
    #
    # @return [Types::GetMedicalVocabularyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_medical_vocabulary(
    #     vocabulary_name: 'VocabularyName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetMedicalVocabularyOutput
    #   resp.data.vocabulary_name #=> String
    #   resp.data.language_code #=> String, one of ["af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"]
    #   resp.data.vocabulary_state #=> String, one of ["PENDING", "READY", "FAILED"]
    #   resp.data.last_modified_time #=> Time
    #   resp.data.failure_reason #=> String
    #   resp.data.download_uri #=> String
    #
    def get_medical_vocabulary(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetMedicalVocabularyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetMedicalVocabularyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetMedicalVocabulary
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException]),
        data_parser: Parsers::GetMedicalVocabulary
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetMedicalVocabulary,
        stubs: @stubs,
        params_class: Params::GetMedicalVocabularyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_medical_vocabulary
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides information about the specified transcription job.</p>
    #         <p>To view the status of the specified transcription job, check the
    #             <code>TranscriptionJobStatus</code> field. If the status is <code>COMPLETED</code>, the
    #             job is finished and you can find the results at the location specified in
    #             <code>TranscriptFileUri</code>. If the status is <code>FAILED</code>,
    #             <code>FailureReason</code> provides details on why your transcription job failed.</p>
    #         <p>If you enabled content redaction, the redacted transcript
    #             can be found at the location specified in <code>RedactedTranscriptFileUri</code>.</p>
    #         <p>To get a list of your transcription jobs, use the
    #             operation.</p>
    #
    # @param [Hash] params
    #   See {Types::GetTranscriptionJobInput}.
    #
    # @option params [String] :transcription_job_name
    #   <p>The name of the transcription job you want information about. Job names are case
    #               sensitive.</p>
    #
    # @return [Types::GetTranscriptionJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_transcription_job(
    #     transcription_job_name: 'TranscriptionJobName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetTranscriptionJobOutput
    #   resp.data.transcription_job #=> Types::TranscriptionJob
    #   resp.data.transcription_job.transcription_job_name #=> String
    #   resp.data.transcription_job.transcription_job_status #=> String, one of ["QUEUED", "IN_PROGRESS", "FAILED", "COMPLETED"]
    #   resp.data.transcription_job.language_code #=> String, one of ["af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"]
    #   resp.data.transcription_job.media_sample_rate_hertz #=> Integer
    #   resp.data.transcription_job.media_format #=> String, one of ["mp3", "mp4", "wav", "flac", "ogg", "amr", "webm"]
    #   resp.data.transcription_job.media #=> Types::Media
    #   resp.data.transcription_job.media.media_file_uri #=> String
    #   resp.data.transcription_job.media.redacted_media_file_uri #=> String
    #   resp.data.transcription_job.transcript #=> Types::Transcript
    #   resp.data.transcription_job.transcript.transcript_file_uri #=> String
    #   resp.data.transcription_job.transcript.redacted_transcript_file_uri #=> String
    #   resp.data.transcription_job.start_time #=> Time
    #   resp.data.transcription_job.creation_time #=> Time
    #   resp.data.transcription_job.completion_time #=> Time
    #   resp.data.transcription_job.failure_reason #=> String
    #   resp.data.transcription_job.settings #=> Types::Settings
    #   resp.data.transcription_job.settings.vocabulary_name #=> String
    #   resp.data.transcription_job.settings.show_speaker_labels #=> Boolean
    #   resp.data.transcription_job.settings.max_speaker_labels #=> Integer
    #   resp.data.transcription_job.settings.channel_identification #=> Boolean
    #   resp.data.transcription_job.settings.show_alternatives #=> Boolean
    #   resp.data.transcription_job.settings.max_alternatives #=> Integer
    #   resp.data.transcription_job.settings.vocabulary_filter_name #=> String
    #   resp.data.transcription_job.settings.vocabulary_filter_method #=> String, one of ["remove", "mask", "tag"]
    #   resp.data.transcription_job.model_settings #=> Types::ModelSettings
    #   resp.data.transcription_job.model_settings.language_model_name #=> String
    #   resp.data.transcription_job.job_execution_settings #=> Types::JobExecutionSettings
    #   resp.data.transcription_job.job_execution_settings.allow_deferred_execution #=> Boolean
    #   resp.data.transcription_job.job_execution_settings.data_access_role_arn #=> String
    #   resp.data.transcription_job.content_redaction #=> Types::ContentRedaction
    #   resp.data.transcription_job.content_redaction.redaction_type #=> String, one of ["PII"]
    #   resp.data.transcription_job.content_redaction.redaction_output #=> String, one of ["redacted", "redacted_and_unredacted"]
    #   resp.data.transcription_job.content_redaction.pii_entity_types #=> Array<String>
    #   resp.data.transcription_job.content_redaction.pii_entity_types[0] #=> String, one of ["BANK_ACCOUNT_NUMBER", "BANK_ROUTING", "CREDIT_DEBIT_NUMBER", "CREDIT_DEBIT_CVV", "CREDIT_DEBIT_EXPIRY", "PIN", "EMAIL", "ADDRESS", "NAME", "PHONE", "SSN", "ALL"]
    #   resp.data.transcription_job.identify_language #=> Boolean
    #   resp.data.transcription_job.identify_multiple_languages #=> Boolean
    #   resp.data.transcription_job.language_options #=> Array<String>
    #   resp.data.transcription_job.language_options[0] #=> String, one of ["af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"]
    #   resp.data.transcription_job.identified_language_score #=> Float
    #   resp.data.transcription_job.language_codes #=> Array<LanguageCodeItem>
    #   resp.data.transcription_job.language_codes[0] #=> Types::LanguageCodeItem
    #   resp.data.transcription_job.language_codes[0].language_code #=> String, one of ["af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"]
    #   resp.data.transcription_job.language_codes[0].duration_in_seconds #=> Float
    #   resp.data.transcription_job.tags #=> Array<Tag>
    #   resp.data.transcription_job.tags[0] #=> Types::Tag
    #   resp.data.transcription_job.tags[0].key #=> String
    #   resp.data.transcription_job.tags[0].value #=> String
    #   resp.data.transcription_job.subtitles #=> Types::SubtitlesOutput
    #   resp.data.transcription_job.subtitles.formats #=> Array<String>
    #   resp.data.transcription_job.subtitles.formats[0] #=> String, one of ["vtt", "srt"]
    #   resp.data.transcription_job.subtitles.subtitle_file_uris #=> Array<String>
    #   resp.data.transcription_job.subtitles.subtitle_file_uris[0] #=> String
    #   resp.data.transcription_job.subtitles.output_start_index #=> Integer
    #   resp.data.transcription_job.language_id_settings #=> Hash<String, LanguageIdSettings>
    #   resp.data.transcription_job.language_id_settings['key'] #=> Types::LanguageIdSettings
    #   resp.data.transcription_job.language_id_settings['key'].vocabulary_name #=> String
    #   resp.data.transcription_job.language_id_settings['key'].vocabulary_filter_name #=> String
    #   resp.data.transcription_job.language_id_settings['key'].language_model_name #=> String
    #
    def get_transcription_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetTranscriptionJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetTranscriptionJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetTranscriptionJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException]),
        data_parser: Parsers::GetTranscriptionJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetTranscriptionJob,
        stubs: @stubs,
        params_class: Params::GetTranscriptionJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_transcription_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides information about the specified custom vocabulary.</p>
    #         <p>To view the status of the specified vocabulary, check the <code>VocabularyState</code>
    #             field. If the status is <code>READY</code>, your vocabulary is available to use. If the status
    #             is <code>FAILED</code>, <code>FailureReason</code> provides details on why your
    #             vocabulary failed.</p>
    #         <p>To get a list of your custom vocabularies, use the
    #             operation.</p>
    #
    # @param [Hash] params
    #   See {Types::GetVocabularyInput}.
    #
    # @option params [String] :vocabulary_name
    #   <p>The name of the custom vocabulary you want information about. Vocabulary names are
    #               case sensitive.</p>
    #
    # @return [Types::GetVocabularyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_vocabulary(
    #     vocabulary_name: 'VocabularyName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetVocabularyOutput
    #   resp.data.vocabulary_name #=> String
    #   resp.data.language_code #=> String, one of ["af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"]
    #   resp.data.vocabulary_state #=> String, one of ["PENDING", "READY", "FAILED"]
    #   resp.data.last_modified_time #=> Time
    #   resp.data.failure_reason #=> String
    #   resp.data.download_uri #=> String
    #
    def get_vocabulary(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetVocabularyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetVocabularyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetVocabulary
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException]),
        data_parser: Parsers::GetVocabulary
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetVocabulary,
        stubs: @stubs,
        params_class: Params::GetVocabularyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_vocabulary
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides information about the specified custom vocabulary filter.</p>
    #         <p>To view the status of the specified vocabulary filter, check the <code>VocabularyState</code>
    #             field. If the status is <code>READY</code>, your vocabulary is available to use. If the status is
    #             <code>FAILED</code>, <code>FailureReason</code> provides details on why your vocabulary
    #             filter failed.</p>
    #         <p>To get a list of your custom vocabulary filters, use the
    #              operation.</p>
    #
    # @param [Hash] params
    #   See {Types::GetVocabularyFilterInput}.
    #
    # @option params [String] :vocabulary_filter_name
    #   <p>The name of the custom vocabulary filter you want information about. Vocabulary filter
    #               names are case sensitive.</p>
    #
    # @return [Types::GetVocabularyFilterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_vocabulary_filter(
    #     vocabulary_filter_name: 'VocabularyFilterName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetVocabularyFilterOutput
    #   resp.data.vocabulary_filter_name #=> String
    #   resp.data.language_code #=> String, one of ["af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"]
    #   resp.data.last_modified_time #=> Time
    #   resp.data.download_uri #=> String
    #
    def get_vocabulary_filter(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetVocabularyFilterInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetVocabularyFilterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetVocabularyFilter
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException]),
        data_parser: Parsers::GetVocabularyFilter
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetVocabularyFilter,
        stubs: @stubs,
        params_class: Params::GetVocabularyFilterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_vocabulary_filter
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides a list of Call Analytics categories, including all rules that make up each category.</p>
    #         <p>To get detailed information about a specific Call Analytics category, use the
    #              operation.</p>
    #
    # @param [Hash] params
    #   See {Types::ListCallAnalyticsCategoriesInput}.
    #
    # @option params [String] :next_token
    #   <p>If your <code>ListCallAnalyticsCategories</code> request returns more results than can
    #               be displayed, <code>NextToken</code> is displayed in the response with an associated string.
    #               To get the next page of results, copy this string and repeat your request, including
    #               <code>NextToken</code> with the value of the copied string. Repeat as needed to view all your
    #               results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of Call Analytics categories to return in each page of results. If there
    #               are fewer results than the value you specify, only the actual results are returned. If you don't
    #               specify a value, a default of 5 is used.</p>
    #
    # @return [Types::ListCallAnalyticsCategoriesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_call_analytics_categories(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListCallAnalyticsCategoriesOutput
    #   resp.data.next_token #=> String
    #   resp.data.categories #=> Array<CategoryProperties>
    #   resp.data.categories[0] #=> Types::CategoryProperties
    #   resp.data.categories[0].category_name #=> String
    #   resp.data.categories[0].rules #=> Array<Rule>
    #   resp.data.categories[0].rules[0] #=> Types::Rule, one of [NonTalkTimeFilter, InterruptionFilter, TranscriptFilter, SentimentFilter]
    #   resp.data.categories[0].rules[0].non_talk_time_filter #=> Types::NonTalkTimeFilter
    #   resp.data.categories[0].rules[0].non_talk_time_filter.threshold #=> Integer
    #   resp.data.categories[0].rules[0].non_talk_time_filter.absolute_time_range #=> Types::AbsoluteTimeRange
    #   resp.data.categories[0].rules[0].non_talk_time_filter.absolute_time_range.start_time #=> Integer
    #   resp.data.categories[0].rules[0].non_talk_time_filter.absolute_time_range.end_time #=> Integer
    #   resp.data.categories[0].rules[0].non_talk_time_filter.absolute_time_range.first #=> Integer
    #   resp.data.categories[0].rules[0].non_talk_time_filter.absolute_time_range.last #=> Integer
    #   resp.data.categories[0].rules[0].non_talk_time_filter.relative_time_range #=> Types::RelativeTimeRange
    #   resp.data.categories[0].rules[0].non_talk_time_filter.relative_time_range.start_percentage #=> Integer
    #   resp.data.categories[0].rules[0].non_talk_time_filter.relative_time_range.end_percentage #=> Integer
    #   resp.data.categories[0].rules[0].non_talk_time_filter.relative_time_range.first #=> Integer
    #   resp.data.categories[0].rules[0].non_talk_time_filter.relative_time_range.last #=> Integer
    #   resp.data.categories[0].rules[0].non_talk_time_filter.negate #=> Boolean
    #   resp.data.categories[0].rules[0].interruption_filter #=> Types::InterruptionFilter
    #   resp.data.categories[0].rules[0].interruption_filter.threshold #=> Integer
    #   resp.data.categories[0].rules[0].interruption_filter.participant_role #=> String, one of ["AGENT", "CUSTOMER"]
    #   resp.data.categories[0].rules[0].interruption_filter.absolute_time_range #=> Types::AbsoluteTimeRange
    #   resp.data.categories[0].rules[0].interruption_filter.relative_time_range #=> Types::RelativeTimeRange
    #   resp.data.categories[0].rules[0].interruption_filter.negate #=> Boolean
    #   resp.data.categories[0].rules[0].transcript_filter #=> Types::TranscriptFilter
    #   resp.data.categories[0].rules[0].transcript_filter.transcript_filter_type #=> String, one of ["EXACT"]
    #   resp.data.categories[0].rules[0].transcript_filter.absolute_time_range #=> Types::AbsoluteTimeRange
    #   resp.data.categories[0].rules[0].transcript_filter.relative_time_range #=> Types::RelativeTimeRange
    #   resp.data.categories[0].rules[0].transcript_filter.participant_role #=> String, one of ["AGENT", "CUSTOMER"]
    #   resp.data.categories[0].rules[0].transcript_filter.negate #=> Boolean
    #   resp.data.categories[0].rules[0].transcript_filter.targets #=> Array<String>
    #   resp.data.categories[0].rules[0].transcript_filter.targets[0] #=> String
    #   resp.data.categories[0].rules[0].sentiment_filter #=> Types::SentimentFilter
    #   resp.data.categories[0].rules[0].sentiment_filter.sentiments #=> Array<String>
    #   resp.data.categories[0].rules[0].sentiment_filter.sentiments[0] #=> String, one of ["POSITIVE", "NEGATIVE", "NEUTRAL", "MIXED"]
    #   resp.data.categories[0].rules[0].sentiment_filter.absolute_time_range #=> Types::AbsoluteTimeRange
    #   resp.data.categories[0].rules[0].sentiment_filter.relative_time_range #=> Types::RelativeTimeRange
    #   resp.data.categories[0].rules[0].sentiment_filter.participant_role #=> String, one of ["AGENT", "CUSTOMER"]
    #   resp.data.categories[0].rules[0].sentiment_filter.negate #=> Boolean
    #   resp.data.categories[0].create_time #=> Time
    #   resp.data.categories[0].last_update_time #=> Time
    #
    def list_call_analytics_categories(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListCallAnalyticsCategoriesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListCallAnalyticsCategoriesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListCallAnalyticsCategories
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::InternalFailureException, Errors::BadRequestException]),
        data_parser: Parsers::ListCallAnalyticsCategories
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListCallAnalyticsCategories,
        stubs: @stubs,
        params_class: Params::ListCallAnalyticsCategoriesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_call_analytics_categories
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides a list of Call Analytics jobs that match the specified criteria. If no criteria are
    #             specified, all Call Analytics jobs are returned.</p>
    #         <p>To get detailed information about a specific Call Analytics job, use the
    #              operation.</p>
    #
    # @param [Hash] params
    #   See {Types::ListCallAnalyticsJobsInput}.
    #
    # @option params [String] :status
    #   <p>Returns only Call Analytics jobs with the specified status. Jobs are ordered by creation
    #               date, with the newest job first. If you don't include <code>Status</code>, all Call Analytics
    #               jobs are returned.</p>
    #
    # @option params [String] :job_name_contains
    #   <p>Returns only the Call Analytics jobs that contain the specified string. The search is not
    #               case sensitive.</p>
    #
    # @option params [String] :next_token
    #   <p>If your <code>ListCallAnalyticsJobs</code> request returns more results than can be
    #               displayed, <code>NextToken</code> is displayed in the response with an associated string. To
    #               get the next page of results, copy this string and repeat your request, including
    #               <code>NextToken</code> with the value of the copied string. Repeat as needed to view all your
    #               results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of Call Analytics jobs to return in each page of results. If there are
    #               fewer results than the value you specify, only the actual results are returned. If you don't
    #               specify a value, a default of 5 is used.</p>
    #
    # @return [Types::ListCallAnalyticsJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_call_analytics_jobs(
    #     status: 'QUEUED', # accepts ["QUEUED", "IN_PROGRESS", "FAILED", "COMPLETED"]
    #     job_name_contains: 'JobNameContains',
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListCallAnalyticsJobsOutput
    #   resp.data.status #=> String, one of ["QUEUED", "IN_PROGRESS", "FAILED", "COMPLETED"]
    #   resp.data.next_token #=> String
    #   resp.data.call_analytics_job_summaries #=> Array<CallAnalyticsJobSummary>
    #   resp.data.call_analytics_job_summaries[0] #=> Types::CallAnalyticsJobSummary
    #   resp.data.call_analytics_job_summaries[0].call_analytics_job_name #=> String
    #   resp.data.call_analytics_job_summaries[0].creation_time #=> Time
    #   resp.data.call_analytics_job_summaries[0].start_time #=> Time
    #   resp.data.call_analytics_job_summaries[0].completion_time #=> Time
    #   resp.data.call_analytics_job_summaries[0].language_code #=> String, one of ["af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"]
    #   resp.data.call_analytics_job_summaries[0].call_analytics_job_status #=> String, one of ["QUEUED", "IN_PROGRESS", "FAILED", "COMPLETED"]
    #   resp.data.call_analytics_job_summaries[0].failure_reason #=> String
    #
    def list_call_analytics_jobs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListCallAnalyticsJobsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListCallAnalyticsJobsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListCallAnalyticsJobs
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::InternalFailureException, Errors::BadRequestException]),
        data_parser: Parsers::ListCallAnalyticsJobs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListCallAnalyticsJobs,
        stubs: @stubs,
        params_class: Params::ListCallAnalyticsJobsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_call_analytics_jobs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides a list of custom language models that match the specified criteria. If no criteria
    #             are specified, all language models are returned.</p>
    #         <p>To get detailed information about a specific custom language model, use the
    #              operation.</p>
    #
    # @param [Hash] params
    #   See {Types::ListLanguageModelsInput}.
    #
    # @option params [String] :status_equals
    #   <p>Returns only custom language models with the specified status. Language
    #               models are ordered by creation date, with the newest model first. If you don't include
    #               <code>StatusEquals</code>, all custom language models are returned.</p>
    #
    # @option params [String] :name_contains
    #   <p>Returns only the custom language models that contain the specified string. The search
    #               is not case sensitive.</p>
    #
    # @option params [String] :next_token
    #   <p>If your <code>ListLanguageModels</code> request returns more results than can be
    #               displayed, <code>NextToken</code> is displayed in the response with an associated string. To
    #               get the next page of results, copy this string and repeat your request, including
    #               <code>NextToken</code> with the value of the copied string. Repeat as needed to view all your
    #               results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of custom language models to return in each page of results. If there
    #               are fewer results than the value you specify, only the actual results are returned. If you don't
    #               specify a value, a default of 5 is used.</p>
    #
    # @return [Types::ListLanguageModelsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_language_models(
    #     status_equals: 'IN_PROGRESS', # accepts ["IN_PROGRESS", "FAILED", "COMPLETED"]
    #     name_contains: 'NameContains',
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListLanguageModelsOutput
    #   resp.data.next_token #=> String
    #   resp.data.models #=> Array<LanguageModel>
    #   resp.data.models[0] #=> Types::LanguageModel
    #   resp.data.models[0].model_name #=> String
    #   resp.data.models[0].create_time #=> Time
    #   resp.data.models[0].last_modified_time #=> Time
    #   resp.data.models[0].language_code #=> String, one of ["en-US", "hi-IN", "es-US", "en-GB", "en-AU"]
    #   resp.data.models[0].base_model_name #=> String, one of ["NarrowBand", "WideBand"]
    #   resp.data.models[0].model_status #=> String, one of ["IN_PROGRESS", "FAILED", "COMPLETED"]
    #   resp.data.models[0].upgrade_availability #=> Boolean
    #   resp.data.models[0].failure_reason #=> String
    #   resp.data.models[0].input_data_config #=> Types::InputDataConfig
    #   resp.data.models[0].input_data_config.s3_uri #=> String
    #   resp.data.models[0].input_data_config.tuning_data_s3_uri #=> String
    #   resp.data.models[0].input_data_config.data_access_role_arn #=> String
    #
    def list_language_models(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListLanguageModelsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListLanguageModelsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListLanguageModels
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::InternalFailureException, Errors::BadRequestException]),
        data_parser: Parsers::ListLanguageModels
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListLanguageModels,
        stubs: @stubs,
        params_class: Params::ListLanguageModelsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_language_models
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides a list of medical transcription jobs that match the specified criteria. If no criteria are
    #             specified, all medical transcription jobs are returned.</p>
    #         <p>To get detailed information about a specific medical transcription job, use the
    #              operation.</p>
    #
    # @param [Hash] params
    #   See {Types::ListMedicalTranscriptionJobsInput}.
    #
    # @option params [String] :status
    #   <p>Returns only medical transcription jobs with the specified status. Jobs are ordered by
    #               creation date, with the newest job first. If you don't include <code>Status</code>, all
    #               medical transcription jobs are returned.</p>
    #
    # @option params [String] :job_name_contains
    #   <p>Returns only the medical transcription jobs that contain the specified string. The search
    #               is not case sensitive.</p>
    #
    # @option params [String] :next_token
    #   <p>If your <code>ListMedicalTranscriptionJobs</code> request returns more results than can
    #               be displayed, <code>NextToken</code> is displayed in the response with an associated string.
    #               To get the next page of results, copy this string and repeat your request, including
    #               <code>NextToken</code> with the value of the copied string. Repeat as needed to view all your
    #               results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of medical transcription jobs to return in each page of results. If there
    #               are fewer results than the value you specify, only the actual results are returned. If you don't
    #               specify a value, a default of 5 is used.</p>
    #
    # @return [Types::ListMedicalTranscriptionJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_medical_transcription_jobs(
    #     status: 'QUEUED', # accepts ["QUEUED", "IN_PROGRESS", "FAILED", "COMPLETED"]
    #     job_name_contains: 'JobNameContains',
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListMedicalTranscriptionJobsOutput
    #   resp.data.status #=> String, one of ["QUEUED", "IN_PROGRESS", "FAILED", "COMPLETED"]
    #   resp.data.next_token #=> String
    #   resp.data.medical_transcription_job_summaries #=> Array<MedicalTranscriptionJobSummary>
    #   resp.data.medical_transcription_job_summaries[0] #=> Types::MedicalTranscriptionJobSummary
    #   resp.data.medical_transcription_job_summaries[0].medical_transcription_job_name #=> String
    #   resp.data.medical_transcription_job_summaries[0].creation_time #=> Time
    #   resp.data.medical_transcription_job_summaries[0].start_time #=> Time
    #   resp.data.medical_transcription_job_summaries[0].completion_time #=> Time
    #   resp.data.medical_transcription_job_summaries[0].language_code #=> String, one of ["af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"]
    #   resp.data.medical_transcription_job_summaries[0].transcription_job_status #=> String, one of ["QUEUED", "IN_PROGRESS", "FAILED", "COMPLETED"]
    #   resp.data.medical_transcription_job_summaries[0].failure_reason #=> String
    #   resp.data.medical_transcription_job_summaries[0].output_location_type #=> String, one of ["CUSTOMER_BUCKET", "SERVICE_BUCKET"]
    #   resp.data.medical_transcription_job_summaries[0].specialty #=> String, one of ["PRIMARYCARE"]
    #   resp.data.medical_transcription_job_summaries[0].content_identification_type #=> String, one of ["PHI"]
    #   resp.data.medical_transcription_job_summaries[0].type #=> String, one of ["CONVERSATION", "DICTATION"]
    #
    def list_medical_transcription_jobs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListMedicalTranscriptionJobsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListMedicalTranscriptionJobsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListMedicalTranscriptionJobs
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::InternalFailureException, Errors::BadRequestException]),
        data_parser: Parsers::ListMedicalTranscriptionJobs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListMedicalTranscriptionJobs,
        stubs: @stubs,
        params_class: Params::ListMedicalTranscriptionJobsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_medical_transcription_jobs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides a list of custom medical vocabularies that match the specified criteria. If no
    #             criteria are specified, all custom medical vocabularies are returned.</p>
    #         <p>To get detailed information about a specific custom medical vocabulary, use the
    #              operation.</p>
    #
    # @param [Hash] params
    #   See {Types::ListMedicalVocabulariesInput}.
    #
    # @option params [String] :next_token
    #   <p>If your <code>ListMedicalVocabularies</code> request returns more results than can be
    #               displayed, <code>NextToken</code> is displayed in the response with an associated string. To
    #               get the next page of results, copy this string and repeat your request, including
    #               <code>NextToken</code> with the value of the copied string. Repeat as needed to view all your
    #               results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of custom medical vocabularies to return in each page of results. If
    #               there are fewer results than the value you specify, only the actual results are returned. If you
    #               don't specify a value, a default of 5 is used.</p>
    #
    # @option params [String] :state_equals
    #   <p>Returns only custom medical vocabularies with the specified state. Vocabularies are
    #               ordered by creation date, with the newest vocabulary first. If you don't include
    #               <code>StateEquals</code>, all custom medical vocabularies are returned.</p>
    #
    # @option params [String] :name_contains
    #   <p>Returns only the custom medical vocabularies that contain the specified string. The search
    #               is not case sensitive.</p>
    #
    # @return [Types::ListMedicalVocabulariesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_medical_vocabularies(
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     state_equals: 'PENDING', # accepts ["PENDING", "READY", "FAILED"]
    #     name_contains: 'NameContains'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListMedicalVocabulariesOutput
    #   resp.data.status #=> String, one of ["PENDING", "READY", "FAILED"]
    #   resp.data.next_token #=> String
    #   resp.data.vocabularies #=> Array<VocabularyInfo>
    #   resp.data.vocabularies[0] #=> Types::VocabularyInfo
    #   resp.data.vocabularies[0].vocabulary_name #=> String
    #   resp.data.vocabularies[0].language_code #=> String, one of ["af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"]
    #   resp.data.vocabularies[0].last_modified_time #=> Time
    #   resp.data.vocabularies[0].vocabulary_state #=> String, one of ["PENDING", "READY", "FAILED"]
    #
    def list_medical_vocabularies(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListMedicalVocabulariesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListMedicalVocabulariesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListMedicalVocabularies
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::InternalFailureException, Errors::BadRequestException]),
        data_parser: Parsers::ListMedicalVocabularies
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListMedicalVocabularies,
        stubs: @stubs,
        params_class: Params::ListMedicalVocabulariesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_medical_vocabularies
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all tags associated with the specified transcription job, vocabulary, model, or
    #             resource.</p>
    #         <p>To learn more about using tags with Amazon Transcribe, refer to <a href="https://docs.aws.amazon.com/transcribe/latest/dg/tagging.html">Tagging resources</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>Returns a list of all tags associated with the specified Amazon Resource Name (ARN). ARNs
    #               have the format <code>arn:partition:service:region:account-id:resource-type/resource-id</code>.</p>
    #           <p>For example,
    #               <code>arn:aws:transcribe:us-west-2:account-id:transcription-job/transcription-job-name</code>.</p>
    #           <p>Valid values for <code>resource-type</code> are: <code>transcription-job</code>,
    #               <code>medical-transcription-job</code>, <code>vocabulary</code>,
    #               <code>medical-vocabulary</code>, <code>vocabulary-filter</code>, and
    #               <code>language-model</code>.</p>
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException]),
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

    # <p>Provides a list of transcription jobs that match the specified criteria. If no criteria are
    #             specified, all transcription jobs are returned.</p>
    #         <p>To get detailed information about a specific transcription job, use the
    #              operation.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTranscriptionJobsInput}.
    #
    # @option params [String] :status
    #   <p>Returns only transcription jobs with the specified status. Jobs are ordered by creation
    #               date, with the newest job first. If you don't include <code>Status</code>, all transcription
    #               jobs are returned.</p>
    #
    # @option params [String] :job_name_contains
    #   <p>Returns only the transcription jobs that contain the specified string. The search is not
    #               case sensitive.</p>
    #
    # @option params [String] :next_token
    #   <p>If your <code>ListTranscriptionJobs</code> request returns more results than can be
    #               displayed, <code>NextToken</code> is displayed in the response with an associated string. To
    #               get the next page of results, copy this string and repeat your request, including
    #               <code>NextToken</code> with the value of the copied string. Repeat as needed to view all your
    #               results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of transcription jobs to return in each page of results. If there are
    #               fewer results than the value you specify, only the actual results are returned. If you don't
    #               specify a value, a default of 5 is used.</p>
    #
    # @return [Types::ListTranscriptionJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_transcription_jobs(
    #     status: 'QUEUED', # accepts ["QUEUED", "IN_PROGRESS", "FAILED", "COMPLETED"]
    #     job_name_contains: 'JobNameContains',
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTranscriptionJobsOutput
    #   resp.data.status #=> String, one of ["QUEUED", "IN_PROGRESS", "FAILED", "COMPLETED"]
    #   resp.data.next_token #=> String
    #   resp.data.transcription_job_summaries #=> Array<TranscriptionJobSummary>
    #   resp.data.transcription_job_summaries[0] #=> Types::TranscriptionJobSummary
    #   resp.data.transcription_job_summaries[0].transcription_job_name #=> String
    #   resp.data.transcription_job_summaries[0].creation_time #=> Time
    #   resp.data.transcription_job_summaries[0].start_time #=> Time
    #   resp.data.transcription_job_summaries[0].completion_time #=> Time
    #   resp.data.transcription_job_summaries[0].language_code #=> String, one of ["af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"]
    #   resp.data.transcription_job_summaries[0].transcription_job_status #=> String, one of ["QUEUED", "IN_PROGRESS", "FAILED", "COMPLETED"]
    #   resp.data.transcription_job_summaries[0].failure_reason #=> String
    #   resp.data.transcription_job_summaries[0].output_location_type #=> String, one of ["CUSTOMER_BUCKET", "SERVICE_BUCKET"]
    #   resp.data.transcription_job_summaries[0].content_redaction #=> Types::ContentRedaction
    #   resp.data.transcription_job_summaries[0].content_redaction.redaction_type #=> String, one of ["PII"]
    #   resp.data.transcription_job_summaries[0].content_redaction.redaction_output #=> String, one of ["redacted", "redacted_and_unredacted"]
    #   resp.data.transcription_job_summaries[0].content_redaction.pii_entity_types #=> Array<String>
    #   resp.data.transcription_job_summaries[0].content_redaction.pii_entity_types[0] #=> String, one of ["BANK_ACCOUNT_NUMBER", "BANK_ROUTING", "CREDIT_DEBIT_NUMBER", "CREDIT_DEBIT_CVV", "CREDIT_DEBIT_EXPIRY", "PIN", "EMAIL", "ADDRESS", "NAME", "PHONE", "SSN", "ALL"]
    #   resp.data.transcription_job_summaries[0].model_settings #=> Types::ModelSettings
    #   resp.data.transcription_job_summaries[0].model_settings.language_model_name #=> String
    #   resp.data.transcription_job_summaries[0].identify_language #=> Boolean
    #   resp.data.transcription_job_summaries[0].identify_multiple_languages #=> Boolean
    #   resp.data.transcription_job_summaries[0].identified_language_score #=> Float
    #   resp.data.transcription_job_summaries[0].language_codes #=> Array<LanguageCodeItem>
    #   resp.data.transcription_job_summaries[0].language_codes[0] #=> Types::LanguageCodeItem
    #   resp.data.transcription_job_summaries[0].language_codes[0].language_code #=> String, one of ["af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"]
    #   resp.data.transcription_job_summaries[0].language_codes[0].duration_in_seconds #=> Float
    #
    def list_transcription_jobs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTranscriptionJobsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTranscriptionJobsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTranscriptionJobs
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::InternalFailureException, Errors::BadRequestException]),
        data_parser: Parsers::ListTranscriptionJobs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTranscriptionJobs,
        stubs: @stubs,
        params_class: Params::ListTranscriptionJobsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_transcription_jobs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides a list of custom vocabularies that match the specified criteria. If no criteria are
    #             specified, all custom vocabularies are returned.</p>
    #         <p>To get detailed information about a specific custom vocabulary, use the
    #              operation.</p>
    #
    # @param [Hash] params
    #   See {Types::ListVocabulariesInput}.
    #
    # @option params [String] :next_token
    #   <p>If your <code>ListVocabularies</code> request returns more results than can be displayed,
    #               <code>NextToken</code> is displayed in the response with an associated string. To get the
    #               next page of results, copy this string and repeat your request, including
    #               <code>NextToken</code> with the value of the copied string. Repeat as needed to view all your
    #               results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of custom vocabularies to return in each page of results. If there
    #               are fewer results than the value you specify, only the actual results are returned. If you
    #               don't specify a value, a default of 5 is used.</p>
    #
    # @option params [String] :state_equals
    #   <p>Returns only custom vocabularies with the specified state. Vocabularies are ordered by
    #               creation date, with the newest vocabulary first. If you don't include
    #               <code>StateEquals</code>, all custom medical vocabularies are returned.</p>
    #
    # @option params [String] :name_contains
    #   <p>Returns only the custom vocabularies that contain the specified string. The search is not
    #               case sensitive.</p>
    #
    # @return [Types::ListVocabulariesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_vocabularies(
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     state_equals: 'PENDING', # accepts ["PENDING", "READY", "FAILED"]
    #     name_contains: 'NameContains'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListVocabulariesOutput
    #   resp.data.status #=> String, one of ["PENDING", "READY", "FAILED"]
    #   resp.data.next_token #=> String
    #   resp.data.vocabularies #=> Array<VocabularyInfo>
    #   resp.data.vocabularies[0] #=> Types::VocabularyInfo
    #   resp.data.vocabularies[0].vocabulary_name #=> String
    #   resp.data.vocabularies[0].language_code #=> String, one of ["af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"]
    #   resp.data.vocabularies[0].last_modified_time #=> Time
    #   resp.data.vocabularies[0].vocabulary_state #=> String, one of ["PENDING", "READY", "FAILED"]
    #
    def list_vocabularies(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListVocabulariesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListVocabulariesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListVocabularies
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::InternalFailureException, Errors::BadRequestException]),
        data_parser: Parsers::ListVocabularies
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListVocabularies,
        stubs: @stubs,
        params_class: Params::ListVocabulariesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_vocabularies
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides a list of custom vocabulary filters that match the specified criteria. If no
    #             criteria are specified, all custom vocabularies are returned.</p>
    #         <p>To get detailed information about a specific custom vocabulary filter, use the
    #              operation.</p>
    #
    # @param [Hash] params
    #   See {Types::ListVocabularyFiltersInput}.
    #
    # @option params [String] :next_token
    #   <p>If your <code>ListVocabularyFilters</code> request returns more results than can
    #               be displayed, <code>NextToken</code> is displayed in the response with an associated string.
    #               To get the next page of results, copy this string and repeat your request, including
    #               <code>NextToken</code> with the value of the copied string. Repeat as needed to view all your
    #               results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of custom vocabulary filters to return in each page of results. If
    #               there are fewer results than the value you specify, only the actual results are returned. If you
    #               don't specify a value, a default of 5 is used.</p>
    #
    # @option params [String] :name_contains
    #   <p>Returns only the custom vocabulary filters that contain the specified string. The search
    #               is not case sensitive.</p>
    #
    # @return [Types::ListVocabularyFiltersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_vocabulary_filters(
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     name_contains: 'NameContains'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListVocabularyFiltersOutput
    #   resp.data.next_token #=> String
    #   resp.data.vocabulary_filters #=> Array<VocabularyFilterInfo>
    #   resp.data.vocabulary_filters[0] #=> Types::VocabularyFilterInfo
    #   resp.data.vocabulary_filters[0].vocabulary_filter_name #=> String
    #   resp.data.vocabulary_filters[0].language_code #=> String, one of ["af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"]
    #   resp.data.vocabulary_filters[0].last_modified_time #=> Time
    #
    def list_vocabulary_filters(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListVocabularyFiltersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListVocabularyFiltersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListVocabularyFilters
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::InternalFailureException, Errors::BadRequestException]),
        data_parser: Parsers::ListVocabularyFilters
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListVocabularyFilters,
        stubs: @stubs,
        params_class: Params::ListVocabularyFiltersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_vocabulary_filters
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Transcribes the audio from a customer service call and applies any additional Request
    #             Parameters you choose to include in your request.</p>
    #         <p>In addition to many of the standard transcription features, Call Analytics provides you with
    #             call characteristics, call summarization, speaker sentiment, and optional redaction of your text
    #             transcript and your audio file. You can also apply custom categories to flag specified conditions. To
    #             learn more about these features and insights, refer to <a href="https://docs.aws.amazon.com/transcribe/latest/dg/call-analytics.html">Analyzing call center audio with Call
    #                 Analytics</a>.</p>
    #         <p>If you want to apply categories to your Call Analytics job, you must create them
    #             before submitting your job request. Categories cannot be retroactively applied to a job. To
    #             create a new category, use the  operation.
    #             To learn more about Call Analytics categories, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/call-analytics-create-categories.html">Creating
    #                 categories</a>.</p>
    #         <p>To make a <code>StartCallAnalyticsJob</code> request, you must first upload your media file
    #             into an Amazon S3 bucket; you can then specify the Amazon S3 location of the file
    #             using the <code>Media</code> parameter.</p>
    #         <p>You must include the following parameters in your <code>StartCallAnalyticsJob</code>
    #             request:</p>
    #         <ul>
    #             <li>
    #                 <p>
    #                   <code>region</code>: The Amazon Web Services Region where you are making your
    #                     request. For a list of Amazon Web Services Regions supported with Amazon Transcribe, refer
    #                     to <a href="https://docs.aws.amazon.com/general/latest/gr/transcribe.html">Amazon Transcribe
    #                         endpoints and quotas</a>.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>CallAnalyticsJobName</code>: A custom name you create for your transcription job
    #                     that is unique within your Amazon Web Services account.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>DataAccessRoleArn</code>: The Amazon Resource Name (ARN) of an IAM role that
    #                     has permissions to access the Amazon S3 bucket that contains your input files.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>Media</code> (<code>MediaFileUri</code> or <code>RedactedMediaFileUri</code>):
    #                     The Amazon S3 location of your media file.</p>
    #             </li>
    #          </ul>
    #         <note>
    #             <p>With Call Analytics, you can redact the audio contained in your media file by including
    #                 <code>RedactedMediaFileUri</code>, instead of <code>MediaFileUri</code>, to specify the
    #                 location of your input audio. If you choose to redact your audio, you can find your redacted
    #                 media at the location specified in the <code>RedactedMediaFileUri</code> field of your
    #                 response.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::StartCallAnalyticsJobInput}.
    #
    # @option params [String] :call_analytics_job_name
    #   <p>A unique name, chosen by you, for your Call Analytics job.</p>
    #           <p>This name is case sensitive, cannot contain spaces, and must be unique within an
    #               Amazon Web Services account. If you try to create a new job with the same name as an
    #               existing job, you get a <code>ConflictException</code> error.</p>
    #
    # @option params [Media] :media
    #   <p>Describes the Amazon S3 location of the media file you want to use in your
    #               request.</p>
    #
    # @option params [String] :output_location
    #   <p>The Amazon S3 location where you want your Call Analytics transcription output
    #               stored. You can use any of the following formats to specify the output location:</p>
    #           <ol>
    #               <li>
    #                   <p>s3://DOC-EXAMPLE-BUCKET</p>
    #               </li>
    #               <li>
    #                   <p>s3://DOC-EXAMPLE-BUCKET/my-output-folder/</p>
    #               </li>
    #               <li>
    #                   <p>s3://DOC-EXAMPLE-BUCKET/my-output-folder/my-call-analytics-job.json</p>
    #               </li>
    #            </ol>
    #           <p>Unless you specify a file name (option 3), the name of your output file has a default
    #               value that matches the name you specified for your transcription job using the
    #               <code>CallAnalyticsJobName</code> parameter.</p>
    #           <p>You can specify a KMS key to encrypt your output using the
    #               <code>OutputEncryptionKMSKeyId</code> parameter. If you don't specify a
    #               KMS key, Amazon Transcribe uses the default Amazon S3 key for
    #               server-side encryption.</p>
    #           <p>If you don't specify <code>OutputLocation</code>, your transcript is placed in a
    #               service-managed Amazon S3 bucket and you are provided with a URI to access your
    #               transcript.</p>
    #
    # @option params [String] :output_encryption_kms_key_id
    #   <p>The KMS key you want to use to encrypt your Call Analytics output.</p>
    #           <p>If using a key located in the <b>current</b>
    #               Amazon Web Services account, you can specify your KMS key in one of
    #               four ways:</p>
    #           <ol>
    #               <li>
    #                   <p>Use the KMS key ID itself. For example,
    #                       <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>
    #               </li>
    #               <li>
    #                   <p>Use an alias for the KMS key ID. For example,
    #                       <code>alias/ExampleAlias</code>.</p>
    #               </li>
    #               <li>
    #                   <p>Use the Amazon Resource Name (ARN) for the KMS key ID. For
    #                       example,
    #                       <code>arn:aws:kms:region:account-ID:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>
    #               </li>
    #               <li>
    #                   <p>Use the ARN for the KMS key alias. For example,
    #                       <code>arn:aws:kms:region:account-ID:alias/ExampleAlias</code>.</p>
    #               </li>
    #            </ol>
    #           <p>If using a key located in a <b>different</b>
    #               Amazon Web Services account than the current Amazon Web Services account, you can
    #               specify your KMS key in one of two ways:</p>
    #           <ol>
    #               <li>
    #                   <p>Use the ARN for the KMS key ID. For example,
    #                       <code>arn:aws:kms:region:account-ID:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>
    #               </li>
    #               <li>
    #                   <p>Use the ARN for the KMS key alias. For example,
    #                       <code>arn:aws:kms:region:account-ID:alias/ExampleAlias</code>.</p>
    #               </li>
    #            </ol>
    #           <p>If you don't specify an encryption key, your output is encrypted with the default
    #               Amazon S3 key (SSE-S3).</p>
    #           <p>If you specify a KMS key to encrypt your output, you must also specify
    #               an output location using the <code>OutputLocation</code> parameter.</p>
    #           <p>Note that the user making the
    #               request must have permission to use the specified KMS key.</p>
    #
    # @option params [String] :data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that has permissions to
    #               access the Amazon S3 bucket that contains your input files. If the role you specify doesn’t
    #               have the appropriate permissions to access the specified Amazon S3 location, your request
    #               fails.</p>
    #           <p>IAM role ARNs have the format
    #               <code>arn:partition:iam::account:role/role-name-with-path</code>. For example:
    #               <code>arn:aws:iam::111122223333:role/Admin</code>.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-arns">IAM ARNs</a>.</p>
    #
    # @option params [CallAnalyticsJobSettings] :settings
    #   <p>Specify additional optional settings in your
    #               request, including content redaction; allows you to apply custom language models, vocabulary
    #               filters, and custom vocabularies to your Call Analytics job.</p>
    #
    # @option params [Array<ChannelDefinition>] :channel_definitions
    #   <p>Allows you to specify which speaker is on which channel. For example, if your agent is the
    #               first participant to speak, you would set <code>ChannelId</code> to <code>0</code> (to
    #               indicate the first channel) and <code>ParticipantRole</code> to <code>AGENT</code> (to
    #               indicate that it's the agent speaking).</p>
    #
    # @return [Types::StartCallAnalyticsJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_call_analytics_job(
    #     call_analytics_job_name: 'CallAnalyticsJobName', # required
    #     media: {
    #       media_file_uri: 'MediaFileUri',
    #       redacted_media_file_uri: 'RedactedMediaFileUri'
    #     }, # required
    #     output_location: 'OutputLocation',
    #     output_encryption_kms_key_id: 'OutputEncryptionKMSKeyId',
    #     data_access_role_arn: 'DataAccessRoleArn',
    #     settings: {
    #       vocabulary_name: 'VocabularyName',
    #       vocabulary_filter_name: 'VocabularyFilterName',
    #       vocabulary_filter_method: 'remove', # accepts ["remove", "mask", "tag"]
    #       language_model_name: 'LanguageModelName',
    #       content_redaction: {
    #         redaction_type: 'PII', # required - accepts ["PII"]
    #         redaction_output: 'redacted', # required - accepts ["redacted", "redacted_and_unredacted"]
    #         pii_entity_types: [
    #           'BANK_ACCOUNT_NUMBER' # accepts ["BANK_ACCOUNT_NUMBER", "BANK_ROUTING", "CREDIT_DEBIT_NUMBER", "CREDIT_DEBIT_CVV", "CREDIT_DEBIT_EXPIRY", "PIN", "EMAIL", "ADDRESS", "NAME", "PHONE", "SSN", "ALL"]
    #         ]
    #       },
    #       language_options: [
    #         'af-ZA' # accepts ["af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"]
    #       ],
    #       language_id_settings: {
    #         'key' => {
    #           vocabulary_name: 'VocabularyName',
    #           vocabulary_filter_name: 'VocabularyFilterName',
    #           language_model_name: 'LanguageModelName'
    #         }
    #       }
    #     },
    #     channel_definitions: [
    #       {
    #         channel_id: 1,
    #         participant_role: 'AGENT' # accepts ["AGENT", "CUSTOMER"]
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartCallAnalyticsJobOutput
    #   resp.data.call_analytics_job #=> Types::CallAnalyticsJob
    #   resp.data.call_analytics_job.call_analytics_job_name #=> String
    #   resp.data.call_analytics_job.call_analytics_job_status #=> String, one of ["QUEUED", "IN_PROGRESS", "FAILED", "COMPLETED"]
    #   resp.data.call_analytics_job.language_code #=> String, one of ["af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"]
    #   resp.data.call_analytics_job.media_sample_rate_hertz #=> Integer
    #   resp.data.call_analytics_job.media_format #=> String, one of ["mp3", "mp4", "wav", "flac", "ogg", "amr", "webm"]
    #   resp.data.call_analytics_job.media #=> Types::Media
    #   resp.data.call_analytics_job.media.media_file_uri #=> String
    #   resp.data.call_analytics_job.media.redacted_media_file_uri #=> String
    #   resp.data.call_analytics_job.transcript #=> Types::Transcript
    #   resp.data.call_analytics_job.transcript.transcript_file_uri #=> String
    #   resp.data.call_analytics_job.transcript.redacted_transcript_file_uri #=> String
    #   resp.data.call_analytics_job.start_time #=> Time
    #   resp.data.call_analytics_job.creation_time #=> Time
    #   resp.data.call_analytics_job.completion_time #=> Time
    #   resp.data.call_analytics_job.failure_reason #=> String
    #   resp.data.call_analytics_job.data_access_role_arn #=> String
    #   resp.data.call_analytics_job.identified_language_score #=> Float
    #   resp.data.call_analytics_job.settings #=> Types::CallAnalyticsJobSettings
    #   resp.data.call_analytics_job.settings.vocabulary_name #=> String
    #   resp.data.call_analytics_job.settings.vocabulary_filter_name #=> String
    #   resp.data.call_analytics_job.settings.vocabulary_filter_method #=> String, one of ["remove", "mask", "tag"]
    #   resp.data.call_analytics_job.settings.language_model_name #=> String
    #   resp.data.call_analytics_job.settings.content_redaction #=> Types::ContentRedaction
    #   resp.data.call_analytics_job.settings.content_redaction.redaction_type #=> String, one of ["PII"]
    #   resp.data.call_analytics_job.settings.content_redaction.redaction_output #=> String, one of ["redacted", "redacted_and_unredacted"]
    #   resp.data.call_analytics_job.settings.content_redaction.pii_entity_types #=> Array<String>
    #   resp.data.call_analytics_job.settings.content_redaction.pii_entity_types[0] #=> String, one of ["BANK_ACCOUNT_NUMBER", "BANK_ROUTING", "CREDIT_DEBIT_NUMBER", "CREDIT_DEBIT_CVV", "CREDIT_DEBIT_EXPIRY", "PIN", "EMAIL", "ADDRESS", "NAME", "PHONE", "SSN", "ALL"]
    #   resp.data.call_analytics_job.settings.language_options #=> Array<String>
    #   resp.data.call_analytics_job.settings.language_options[0] #=> String, one of ["af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"]
    #   resp.data.call_analytics_job.settings.language_id_settings #=> Hash<String, LanguageIdSettings>
    #   resp.data.call_analytics_job.settings.language_id_settings['key'] #=> Types::LanguageIdSettings
    #   resp.data.call_analytics_job.settings.language_id_settings['key'].vocabulary_name #=> String
    #   resp.data.call_analytics_job.settings.language_id_settings['key'].vocabulary_filter_name #=> String
    #   resp.data.call_analytics_job.settings.language_id_settings['key'].language_model_name #=> String
    #   resp.data.call_analytics_job.channel_definitions #=> Array<ChannelDefinition>
    #   resp.data.call_analytics_job.channel_definitions[0] #=> Types::ChannelDefinition
    #   resp.data.call_analytics_job.channel_definitions[0].channel_id #=> Integer
    #   resp.data.call_analytics_job.channel_definitions[0].participant_role #=> String, one of ["AGENT", "CUSTOMER"]
    #
    def start_call_analytics_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartCallAnalyticsJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartCallAnalyticsJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartCallAnalyticsJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::InternalFailureException, Errors::BadRequestException, Errors::ConflictException]),
        data_parser: Parsers::StartCallAnalyticsJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartCallAnalyticsJob,
        stubs: @stubs,
        params_class: Params::StartCallAnalyticsJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_call_analytics_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Transcribes the audio from a medical dictation or conversation and applies any additional
    #             Request Parameters you choose to include in your request.</p>
    #         <p>In addition to many of the standard transcription features, Amazon Transcribe Medical provides
    #             you with a robust medical vocabulary and, optionally, content identification, which adds flags to
    #             personal health information (PHI). To learn more about these features, refer to
    #             <a href="https://docs.aws.amazon.com/transcribe/latest/dg/how-it-works-med.html">How
    #                 Amazon Transcribe Medical works</a>.</p>
    #         <p>To make a <code>StartMedicalTranscriptionJob</code> request, you must first upload your media
    #             file into an Amazon S3 bucket; you can then specify the S3 location of the file using the
    #             <code>Media</code> parameter.</p>
    #         <p>You must include the following parameters in your <code>StartMedicalTranscriptionJob</code>
    #             request:</p>
    #         <ul>
    #             <li>
    #                 <p>
    #                   <code>region</code>: The Amazon Web Services Region where you are making your
    #                     request. For a list of Amazon Web Services Regions supported with Amazon Transcribe, refer
    #                     to <a href="https://docs.aws.amazon.com/general/latest/gr/transcribe.html">Amazon Transcribe
    #                         endpoints and quotas</a>.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>MedicalTranscriptionJobName</code>: A custom name you create for your
    #                     transcription job that is unique within your Amazon Web Services account.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>Media</code> (<code>MediaFileUri</code>): The Amazon S3 location of
    #                     your media file.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>LanguageCode</code>: This must be <code>en-US</code>.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>OutputBucketName</code>: The Amazon S3 bucket where you want
    #                     your transcript stored. If you want your output stored in a sub-folder of this bucket, you must
    #                     also include <code>OutputKey</code>.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>Specialty</code>: This must be <code>PRIMARYCARE</code>.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>Type</code>: Choose whether your audio is a conversation or a dictation.</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::StartMedicalTranscriptionJobInput}.
    #
    # @option params [String] :medical_transcription_job_name
    #   <p>A unique name, chosen by you, for your medical transcription job. The name you specify is
    #               also used as the default name of your transcription output file. If you want to specify a different
    #               name for your transcription output, use the <code>OutputKey</code> parameter.</p>
    #           <p>This name is case sensitive, cannot contain spaces, and must be unique within an
    #               Amazon Web Services account. If you try to create a new job with the same name as an
    #               existing job, you get a <code>ConflictException</code> error.</p>
    #
    # @option params [String] :language_code
    #   <p>The language code that represents the language spoken in the input media file. US English
    #               (<code>en-US</code>) is the only valid value for medical transcription jobs. Any other value
    #               you enter for language code results in a <code>BadRequestException</code> error.</p>
    #
    # @option params [Integer] :media_sample_rate_hertz
    #   <p>The sample rate, in Hertz, of the audio track in your input media file.</p>
    #           <p>If you don't specify the media sample rate, Amazon Transcribe Medical determines it for
    #               you. If you specify the sample rate, it must match the rate detected by Amazon Transcribe
    #               Medical; if there's a mismatch between the value you specify and the value detected, your job
    #               fails. Therefore, in most cases, it's advised to omit <code>MediaSampleRateHertz</code> and let
    #               Amazon Transcribe Medical determine the sample rate.</p>
    #
    # @option params [String] :media_format
    #   <p>Specify the format of your input media file.</p>
    #
    # @option params [Media] :media
    #   <p>Describes the Amazon S3 location of the media file you want to use in your
    #               request.</p>
    #
    # @option params [String] :output_bucket_name
    #   <p>The name of the Amazon S3 bucket where you want your medical transcription
    #               output stored. Do not include the <code>S3://</code> prefix of the specified bucket.</p>
    #           <p>If you want your output to go to a sub-folder of this bucket, specify it using the
    #               <code>OutputKey</code> parameter; <code>OutputBucketName</code> only accepts the
    #               name of a bucket.</p>
    #           <p>For example, if you want your output stored in <code>S3://DOC-EXAMPLE-BUCKET</code>,
    #               set <code>OutputBucketName</code> to <code>DOC-EXAMPLE-BUCKET</code>. However, if
    #               you want your output stored in <code>S3://DOC-EXAMPLE-BUCKET/test-files/</code>, set
    #               <code>OutputBucketName</code> to <code>DOC-EXAMPLE-BUCKET</code> and
    #               <code>OutputKey</code> to <code>test-files/</code>.</p>
    #           <p>Note that Amazon Transcribe must have permission to use the specified location. You
    #               can change Amazon S3 permissions using the <a href="https://console.aws.amazon.com/s3">Amazon Web Services Management Console</a>. See also <a href="https://docs.aws.amazon.com/transcribe/latest/dg/security_iam_id-based-policy-examples.html#auth-role-iam-user">Permissions
    #                   Required for IAM User Roles</a>.</p>
    #           <p>If you don't specify <code>OutputBucketName</code>, your transcript is placed in a
    #               service-managed Amazon S3 bucket and you are provided with a URI to access your
    #               transcript.</p>
    #
    # @option params [String] :output_key
    #   <p>Use in combination with <code>OutputBucketName</code> to specify the output location of
    #               your transcript and, optionally, a unique name for your output file. The default name for your
    #               transcription output is the same as the name you specified for your medical transcription job
    #               (<code>MedicalTranscriptionJobName</code>).</p>
    #           <p>Here are some examples of how you can use <code>OutputKey</code>:</p>
    #           <ul>
    #               <li>
    #                   <p>If you specify 'DOC-EXAMPLE-BUCKET' as the <code>OutputBucketName</code>
    #                       and 'my-transcript.json' as the <code>OutputKey</code>, your transcription output
    #                       path is <code>s3://DOC-EXAMPLE-BUCKET/my-transcript.json</code>.</p>
    #               </li>
    #               <li>
    #                   <p>If you specify 'my-first-transcription' as the <code>MedicalTranscriptionJobName</code>,
    #                       'DOC-EXAMPLE-BUCKET' as the <code>OutputBucketName</code>, and
    #                       'my-transcript' as the <code>OutputKey</code>, your transcription output path is
    #                       <code>s3://DOC-EXAMPLE-BUCKET/my-transcript/my-first-transcription.json</code>.</p>
    #               </li>
    #               <li>
    #                   <p>If you specify 'DOC-EXAMPLE-BUCKET' as the <code>OutputBucketName</code>
    #                       and 'test-files/my-transcript.json' as the <code>OutputKey</code>, your transcription output
    #                       path is <code>s3://DOC-EXAMPLE-BUCKET/test-files/my-transcript.json</code>.</p>
    #               </li>
    #               <li>
    #                   <p>If you specify 'my-first-transcription' as the <code>MedicalTranscriptionJobName</code>,
    #                       'DOC-EXAMPLE-BUCKET' as the <code>OutputBucketName</code>, and
    #                       'test-files/my-transcript' as the <code>OutputKey</code>, your transcription output path is
    #                       <code>s3://DOC-EXAMPLE-BUCKET/test-files/my-transcript/my-first-transcription.json</code>.</p>
    #               </li>
    #            </ul>
    #           <p>If you specify the name of an Amazon S3 bucket sub-folder that doesn't exist, one is
    #               created for you.</p>
    #
    # @option params [String] :output_encryption_kms_key_id
    #   <p>The KMS key you want to use to encrypt your medical transcription
    #               output.</p>
    #           <p>If using a key located in the <b>current</b>
    #               Amazon Web Services account, you can specify your KMS key in one of
    #               four ways:</p>
    #           <ol>
    #               <li>
    #                   <p>Use the KMS key ID itself. For example,
    #                       <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>
    #               </li>
    #               <li>
    #                   <p>Use an alias for the KMS key ID. For example,
    #                       <code>alias/ExampleAlias</code>.</p>
    #               </li>
    #               <li>
    #                   <p>Use the Amazon Resource Name (ARN) for the KMS key ID. For
    #                       example,                    <code>arn:aws:kms:region:account-ID:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>
    #               </li>
    #               <li>
    #                   <p>Use the ARN for the KMS key alias. For example,
    #                       <code>arn:aws:kms:region:account-ID:alias/ExampleAlias</code>.</p>
    #               </li>
    #            </ol>
    #           <p>If using a key located in a <b>different</b>
    #               Amazon Web Services account than the current Amazon Web Services account, you can
    #               specify your KMS key in one of two ways:</p>
    #           <ol>
    #               <li>
    #                   <p>Use the ARN for the KMS key ID. For example,                     <code>arn:aws:kms:region:account-ID:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>
    #               </li>
    #               <li>
    #                   <p>Use the ARN for the KMS key alias. For example,
    #                       <code>arn:aws:kms:region:account-ID:alias/ExampleAlias</code>.</p>
    #               </li>
    #            </ol>
    #           <p>If you don't specify an encryption key, your output is encrypted with the default
    #               Amazon S3 key (SSE-S3).</p>
    #           <p>If you specify a KMS key to encrypt your output, you must also specify
    #               an output location using the <code>OutputLocation</code> parameter.</p>
    #           <p>Note that the user making the
    #               request must have permission to use the specified KMS key.</p>
    #
    # @option params [Hash<String, String>] :kms_encryption_context
    #   <p>A map of plain text, non-secret key:value pairs, known as encryption context pairs, that
    #               provide an added layer of security for your data. For more information, see
    #               <a href="https://docs.aws.amazon.com/transcribe/latest/dg/key-management.html#kms-context">KMS
    #                   encryption context</a> and <a href="https://docs.aws.amazon.com/transcribe/latest/dg/symmetric-asymmetric.html">Asymmetric keys in
    #                       KMS</a>.</p>
    #
    # @option params [MedicalTranscriptionSetting] :settings
    #   <p>Specify additional optional settings in your
    #               request, including channel identification, alternative transcriptions, and speaker labeling; allows
    #               you to apply custom vocabularies to your transcription job.</p>
    #
    # @option params [String] :content_identification_type
    #   <p>Labels all personal health information (PHI) identified in your transcript. For more information,
    #               see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/phi-id.html">Identifying personal health
    #                   information (PHI) in a transcription</a>.</p>
    #
    # @option params [String] :specialty
    #   <p>Specify the predominant medical specialty represented in your media. For batch
    #               transcriptions, <code>PRIMARYCARE</code> is the only valid value. If you require additional
    #               specialties, refer to .</p>
    #
    # @option params [String] :type
    #   <p>Specify whether your input media contains only one person (<code>DICTATION</code>) or
    #               contains a conversation between two people (<code>CONVERSATION</code>).</p>
    #           <p>For example, <code>DICTATION</code> could be used for a medical professional wanting to
    #               transcribe voice memos; <code>CONVERSATION</code> could be used for transcribing the
    #               doctor-patient dialogue during the patient's office visit.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Adds one or more custom tags, each in the form of a key:value pair, to a new medical
    #               transcription job at the time you start this new job.</p>
    #           <p>To learn more about using tags with Amazon Transcribe, refer to <a href="https://docs.aws.amazon.com/transcribe/latest/dg/tagging.html">Tagging resources</a>.</p>
    #
    # @return [Types::StartMedicalTranscriptionJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_medical_transcription_job(
    #     medical_transcription_job_name: 'MedicalTranscriptionJobName', # required
    #     language_code: 'af-ZA', # required - accepts ["af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"]
    #     media_sample_rate_hertz: 1,
    #     media_format: 'mp3', # accepts ["mp3", "mp4", "wav", "flac", "ogg", "amr", "webm"]
    #     media: {
    #       media_file_uri: 'MediaFileUri',
    #       redacted_media_file_uri: 'RedactedMediaFileUri'
    #     }, # required
    #     output_bucket_name: 'OutputBucketName', # required
    #     output_key: 'OutputKey',
    #     output_encryption_kms_key_id: 'OutputEncryptionKMSKeyId',
    #     kms_encryption_context: {
    #       'key' => 'value'
    #     },
    #     settings: {
    #       show_speaker_labels: false,
    #       max_speaker_labels: 1,
    #       channel_identification: false,
    #       show_alternatives: false,
    #       max_alternatives: 1,
    #       vocabulary_name: 'VocabularyName'
    #     },
    #     content_identification_type: 'PHI', # accepts ["PHI"]
    #     specialty: 'PRIMARYCARE', # required - accepts ["PRIMARYCARE"]
    #     type: 'CONVERSATION', # required - accepts ["CONVERSATION", "DICTATION"]
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
    #   resp.data #=> Types::StartMedicalTranscriptionJobOutput
    #   resp.data.medical_transcription_job #=> Types::MedicalTranscriptionJob
    #   resp.data.medical_transcription_job.medical_transcription_job_name #=> String
    #   resp.data.medical_transcription_job.transcription_job_status #=> String, one of ["QUEUED", "IN_PROGRESS", "FAILED", "COMPLETED"]
    #   resp.data.medical_transcription_job.language_code #=> String, one of ["af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"]
    #   resp.data.medical_transcription_job.media_sample_rate_hertz #=> Integer
    #   resp.data.medical_transcription_job.media_format #=> String, one of ["mp3", "mp4", "wav", "flac", "ogg", "amr", "webm"]
    #   resp.data.medical_transcription_job.media #=> Types::Media
    #   resp.data.medical_transcription_job.media.media_file_uri #=> String
    #   resp.data.medical_transcription_job.media.redacted_media_file_uri #=> String
    #   resp.data.medical_transcription_job.transcript #=> Types::MedicalTranscript
    #   resp.data.medical_transcription_job.transcript.transcript_file_uri #=> String
    #   resp.data.medical_transcription_job.start_time #=> Time
    #   resp.data.medical_transcription_job.creation_time #=> Time
    #   resp.data.medical_transcription_job.completion_time #=> Time
    #   resp.data.medical_transcription_job.failure_reason #=> String
    #   resp.data.medical_transcription_job.settings #=> Types::MedicalTranscriptionSetting
    #   resp.data.medical_transcription_job.settings.show_speaker_labels #=> Boolean
    #   resp.data.medical_transcription_job.settings.max_speaker_labels #=> Integer
    #   resp.data.medical_transcription_job.settings.channel_identification #=> Boolean
    #   resp.data.medical_transcription_job.settings.show_alternatives #=> Boolean
    #   resp.data.medical_transcription_job.settings.max_alternatives #=> Integer
    #   resp.data.medical_transcription_job.settings.vocabulary_name #=> String
    #   resp.data.medical_transcription_job.content_identification_type #=> String, one of ["PHI"]
    #   resp.data.medical_transcription_job.specialty #=> String, one of ["PRIMARYCARE"]
    #   resp.data.medical_transcription_job.type #=> String, one of ["CONVERSATION", "DICTATION"]
    #   resp.data.medical_transcription_job.tags #=> Array<Tag>
    #   resp.data.medical_transcription_job.tags[0] #=> Types::Tag
    #   resp.data.medical_transcription_job.tags[0].key #=> String
    #   resp.data.medical_transcription_job.tags[0].value #=> String
    #
    def start_medical_transcription_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartMedicalTranscriptionJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartMedicalTranscriptionJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartMedicalTranscriptionJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::InternalFailureException, Errors::BadRequestException, Errors::ConflictException]),
        data_parser: Parsers::StartMedicalTranscriptionJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartMedicalTranscriptionJob,
        stubs: @stubs,
        params_class: Params::StartMedicalTranscriptionJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_medical_transcription_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Transcribes the audio from a media file and applies any additional Request Parameters you
    #             choose to include in your request.</p>
    #         <p>To make a <code>StartTranscriptionJob</code> request, you must first upload your media file
    #             into an Amazon S3 bucket; you can then specify the Amazon S3 location of the file
    #             using the <code>Media</code> parameter.</p>
    #             <p>You must include the following parameters in your <code>StartTranscriptionJob</code>
    #                 request:</p>
    #             <ul>
    #             <li>
    #                     <p>
    #                   <code>region</code>: The Amazon Web Services Region where you are making your
    #                         request. For a list of Amazon Web Services Regions supported with Amazon Transcribe, refer
    #                         to <a href="https://docs.aws.amazon.com/general/latest/gr/transcribe.html">Amazon Transcribe
    #                             endpoints and quotas</a>.</p>
    #                 </li>
    #             <li>
    #                     <p>
    #                   <code>TranscriptionJobName</code>: A custom name you create for your transcription
    #                         job that is unique within your Amazon Web Services account.</p>
    #                 </li>
    #             <li>
    #                     <p>
    #                   <code>Media</code> (<code>MediaFileUri</code>): The Amazon S3 location of
    #                         your media file.</p>
    #                 </li>
    #             <li>
    #                     <p>One of <code>LanguageCode</code>, <code>IdentifyLanguage</code>, or
    #                         <code>IdentifyMultipleLanguages</code>: If you know the language of your media file,
    #                         specify it using the <code>LanguageCode</code> parameter; you can find all valid language
    #                         codes in the <a href="https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html">Supported languages</a> table.
    #                         If you don't know the languages spoken in your media, use either
    #                         <code>IdentifyLanguage</code> or <code>IdentifyMultipleLanguages</code> and let
    #                         Amazon Transcribe identify the languages for you.</p>
    #                 </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::StartTranscriptionJobInput}.
    #
    # @option params [String] :transcription_job_name
    #   <p>A unique name, chosen by you, for your transcription job. The name you specify is
    #               also used as the default name of your transcription output file. If you want to specify a different
    #               name for your transcription output, use the <code>OutputKey</code> parameter.</p>
    #           <p>This name is case sensitive, cannot contain spaces, and must be unique within an
    #               Amazon Web Services account. If you try to create a new job with the same name as an
    #               existing job, you get a <code>ConflictException</code> error.</p>
    #
    # @option params [String] :language_code
    #   <p>The language code that represents the language spoken in the input media file.</p>
    #           <p>If you're unsure of the language spoken in your media file, consider using
    #               <code>IdentifyLanguage</code> or <code>IdentifyMultipleLanguages</code> to enable
    #               automatic language identification.</p>
    #           <p>Note that you must include one of <code>LanguageCode</code>,
    #               <code>IdentifyLanguage</code>, or <code>IdentifyMultipleLanguages</code> in your
    #               request. If you include more than one of these parameters, your transcription job
    #               fails.</p>
    #           <p>For a list of supported languages and their associated language codes, refer to the
    #               <a href="https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html">Supported
    #                   languages</a> table.</p>
    #           <note>
    #               <p>To transcribe speech in Modern Standard Arabic (<code>ar-SA</code>), your media file
    #               must be encoded at a sample rate of 16,000 Hz or higher.</p>
    #           </note>
    #
    # @option params [Integer] :media_sample_rate_hertz
    #   <p>The sample rate, in Hertz, of the audio track in your input media file.</p>
    #           <p>If you don't specify the media sample rate, Amazon Transcribe determines it for you. If you
    #               specify the sample rate, it must match the rate detected by Amazon Transcribe; if there's a
    #               mismatch between the value you specify and the value detected, your job fails. Therefore, in most
    #               cases, it's advised to omit <code>MediaSampleRateHertz</code> and let Amazon Transcribe
    #               determine the sample rate.</p>
    #
    # @option params [String] :media_format
    #   <p>Specify the format of your input media file.</p>
    #
    # @option params [Media] :media
    #   <p>Describes the Amazon S3 location of the media file you want to use in your
    #               request.</p>
    #
    # @option params [String] :output_bucket_name
    #   <p>The name of the Amazon S3 bucket where you want your transcription output
    #               stored. Do not include the <code>S3://</code> prefix of the specified bucket.</p>
    #           <p>If you want your output to go to a sub-folder of this bucket, specify it using the
    #               <code>OutputKey</code> parameter; <code>OutputBucketName</code> only accepts the
    #               name of a bucket.</p>
    #           <p>For example, if you want your output stored in <code>S3://DOC-EXAMPLE-BUCKET</code>,
    #               set <code>OutputBucketName</code> to <code>DOC-EXAMPLE-BUCKET</code>. However, if
    #               you want your output stored in <code>S3://DOC-EXAMPLE-BUCKET/test-files/</code>, set
    #               <code>OutputBucketName</code> to <code>DOC-EXAMPLE-BUCKET</code> and
    #               <code>OutputKey</code> to <code>test-files/</code>.</p>
    #           <p>Note that Amazon Transcribe must have permission to use the specified location. You
    #               can change Amazon S3 permissions using the <a href="https://console.aws.amazon.com/s3">Amazon Web Services Management Console</a>. See also <a href="https://docs.aws.amazon.com/transcribe/latest/dg/security_iam_id-based-policy-examples.html#auth-role-iam-user">Permissions
    #                       Required for IAM User Roles</a>.</p>
    #           <p>If you don't specify <code>OutputBucketName</code>, your transcript is placed in a
    #               service-managed Amazon S3 bucket and you are provided with a URI to access your
    #               transcript.</p>
    #
    # @option params [String] :output_key
    #   <p>Use in combination with <code>OutputBucketName</code> to specify the output location of
    #               your transcript and, optionally, a unique name for your output file. The default name for your
    #               transcription output is the same as the name you specified for your transcription job
    #               (<code>TranscriptionJobName</code>).</p>
    #           <p>Here are some examples of how you can use <code>OutputKey</code>:</p>
    #           <ul>
    #               <li>
    #                   <p>If you specify 'DOC-EXAMPLE-BUCKET' as the <code>OutputBucketName</code>
    #                       and 'my-transcript.json' as the <code>OutputKey</code>, your transcription output
    #                       path is <code>s3://DOC-EXAMPLE-BUCKET/my-transcript.json</code>.</p>
    #               </li>
    #               <li>
    #                   <p>If you specify 'my-first-transcription' as the <code>TranscriptionJobName</code>,
    #                       'DOC-EXAMPLE-BUCKET' as the <code>OutputBucketName</code>, and
    #                       'my-transcript' as the <code>OutputKey</code>, your transcription output path is
    #                       <code>s3://DOC-EXAMPLE-BUCKET/my-transcript/my-first-transcription.json</code>.</p>
    #               </li>
    #               <li>
    #                   <p>If you specify 'DOC-EXAMPLE-BUCKET' as the <code>OutputBucketName</code>
    #                       and 'test-files/my-transcript.json' as the <code>OutputKey</code>, your transcription
    #                       output path is
    #                       <code>s3://DOC-EXAMPLE-BUCKET/test-files/my-transcript.json</code>.</p>
    #               </li>
    #               <li>
    #                   <p>If you specify 'my-first-transcription' as the <code>TranscriptionJobName</code>,
    #                       'DOC-EXAMPLE-BUCKET' as the <code>OutputBucketName</code>, and
    #                       'test-files/my-transcript' as the <code>OutputKey</code>, your transcription output
    #                       path is
    #                       <code>s3://DOC-EXAMPLE-BUCKET/test-files/my-transcript/my-first-transcription.json</code>.</p>
    #               </li>
    #            </ul>
    #           <p>If you specify the name of an Amazon S3 bucket sub-folder that doesn't exist, one is
    #               created for you.</p>
    #
    # @option params [String] :output_encryption_kms_key_id
    #   <p>The KMS key you want to use to encrypt your transcription output.</p>
    #           <p>If using a key located in the <b>current</b>
    #               Amazon Web Services account, you can specify your KMS key in one of
    #               four ways:</p>
    #           <ol>
    #               <li>
    #                   <p>Use the KMS key ID itself. For example,
    #                       <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>
    #               </li>
    #               <li>
    #                   <p>Use an alias for the KMS key ID. For example,
    #                       <code>alias/ExampleAlias</code>.</p>
    #               </li>
    #               <li>
    #                   <p>Use the Amazon Resource Name (ARN) for the KMS key ID. For
    #                       example,                    <code>arn:aws:kms:region:account-ID:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>
    #               </li>
    #               <li>
    #                   <p>Use the ARN for the KMS key alias. For example,
    #                       <code>arn:aws:kms:region:account-ID:alias/ExampleAlias</code>.</p>
    #               </li>
    #            </ol>
    #           <p>If using a key located in a <b>different</b>
    #               Amazon Web Services account than the current Amazon Web Services account, you can
    #               specify your KMS key in one of two ways:</p>
    #           <ol>
    #               <li>
    #                   <p>Use the ARN for the KMS key ID. For example,                     <code>arn:aws:kms:region:account-ID:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>
    #               </li>
    #               <li>
    #                   <p>Use the ARN for the KMS key alias. For example,
    #                       <code>arn:aws:kms:region:account-ID:alias/ExampleAlias</code>.</p>
    #               </li>
    #            </ol>
    #           <p>If you don't specify an encryption key, your output is encrypted with the default
    #               Amazon S3 key (SSE-S3).</p>
    #           <p>If you specify a KMS key to encrypt your output, you must also specify
    #               an output location using the <code>OutputLocation</code> parameter.</p>
    #           <p>Note that the user making the
    #               request must have permission to use the specified KMS key.</p>
    #
    # @option params [Hash<String, String>] :kms_encryption_context
    #   <p>A map of plain text, non-secret key:value pairs, known as encryption context pairs, that
    #               provide an added layer of security for your data. For more information, see
    #               <a href="https://docs.aws.amazon.com/transcribe/latest/dg/key-management.html#kms-context">KMS
    #                   encryption context</a> and <a href="https://docs.aws.amazon.com/transcribe/latest/dg/symmetric-asymmetric.html">Asymmetric keys in
    #                       KMS</a>.</p>
    #
    # @option params [Settings] :settings
    #   <p>Specify additional optional settings in your
    #               request, including channel identification, alternative transcriptions, speaker labeling; allows
    #               you to apply custom vocabularies and vocabulary filters.</p>
    #           <p>If you want to include a custom vocabulary or a custom vocabulary filter (or both) with
    #               your request but <b>do not</b> want to use automatic
    #               language identification, use <code>Settings</code> with the <code>VocabularyName</code>
    #               or <code>VocabularyFilterName</code> (or both) sub-parameter.</p>
    #           <p>If you're using automatic language identification with your request and want to include a
    #               custom language model, a custom vocabulary, or a custom vocabulary filter, use instead the
    #               <code></code> parameter with the
    #               <code>LanguageModelName</code>, <code>VocabularyName</code>
    #               or <code>VocabularyFilterName</code> sub-parameters.</p>
    #
    # @option params [ModelSettings] :model_settings
    #   <p>Specify the custom language model you want to include with your transcription job. If you
    #               include <code>ModelSettings</code> in your request, you must include the
    #               <code>LanguageModelName</code> sub-parameter.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/custom-language-models.html">Custom language
    #               models</a>.</p>
    #
    # @option params [JobExecutionSettings] :job_execution_settings
    #   <p>Allows you to control how your transcription job is processed. Currently, the only
    #               <code>JobExecutionSettings</code> modification you can choose is enabling job queueing using
    #               the <code>AllowDeferredExecution</code> sub-parameter.</p>
    #           <p>If you include <code>JobExecutionSettings</code> in your request, you must also include
    #               the sub-parameters: <code>AllowDeferredExecution</code> and
    #               <code>DataAccessRoleArn</code>.</p>
    #
    # @option params [ContentRedaction] :content_redaction
    #   <p>Allows you to redact or flag specified personally identifiable information (PII) in your transcript. If
    #               you use <code>ContentRedaction</code>, you must also include the sub-parameters:
    #               <code>PiiEntityTypes</code>, <code>RedactionOutput</code>, and
    #               <code>RedactionType</code>.</p>
    #
    # @option params [Boolean] :identify_language
    #   <p>Enables automatic language identification in your transcription job request.</p>
    #           <p>If you include <code>IdentifyLanguage</code>, you can optionally include a list of
    #               language codes, using <code>LanguageOptions</code>, that you think may be present in
    #               your media file. Including language options can improve transcription accuracy.</p>
    #           <p>If you want to apply a custom language model, a custom vocabulary, or a custom
    #               vocabulary filter to your automatic language identification request, include
    #               <code>LanguageIdSettings</code> with the relevant sub-parameters
    #               (<code>VocabularyName</code>, <code>LanguageModelName</code>, and
    #               <code>VocabularyFilterName</code>).</p>
    #           <p>Note that you must include one of <code>LanguageCode</code>,
    #               <code>IdentifyLanguage</code>, or <code>IdentifyMultipleLanguages</code> in your
    #               request. If you include more than one of these parameters, your transcription job
    #               fails.</p>
    #
    # @option params [Boolean] :identify_multiple_languages
    #   <p>Enables automatic multi-language identification in your transcription job request. Use this
    #               parameter if your media file contains more than one language.</p>
    #           <p>If you include <code>IdentifyMultipleLanguages</code>, you can optionally include a list
    #               of language codes, using <code>LanguageOptions</code>, that you think may be present in
    #               your media file. Including language options can improve transcription accuracy.</p>
    #           <p>If you want to apply a custom vocabulary or a custom vocabulary filter to your automatic
    #               language identification request, include <code>LanguageIdSettings</code> with the relevant
    #               sub-parameters (<code>VocabularyName</code> and
    #               <code>VocabularyFilterName</code>).</p>
    #           <p>Note that you must include one of <code>LanguageCode</code>,
    #               <code>IdentifyLanguage</code>, or <code>IdentifyMultipleLanguages</code> in your
    #               request. If you include more than one of these parameters, your transcription job fails.</p>
    #
    # @option params [Array<String>] :language_options
    #   <p>You can specify two or more language codes that represent the languages you think may
    #               be present in your media; including more than five is not recommended. If you're unsure what
    #               languages are present, do not include this parameter.</p>
    #           <p>If you include <code>LanguageOptions</code> in your request, you must also include
    #               <code>IdentifyLanguage</code>.</p>
    #           <p>For more information, refer to <a href="https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html">Supported languages</a>.</p>
    #           <p>To transcribe speech in Modern Standard Arabic (<code>ar-SA</code>), your media file
    #               must be encoded at a sample rate of 16,000 Hz or higher.</p>
    #
    # @option params [Subtitles] :subtitles
    #   <p>Produces subtitle files for your input media. You can specify WebVTT (*.vtt) and SubRip
    #               (*.srt) formats.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Adds one or more custom tags, each in the form of a key:value pair, to a new transcription
    #               job at the time you start this new job.</p>
    #           <p>To learn more about using tags with Amazon Transcribe, refer to <a href="https://docs.aws.amazon.com/transcribe/latest/dg/tagging.html">Tagging resources</a>.</p>
    #
    # @option params [Hash<String, LanguageIdSettings>] :language_id_settings
    #   <p>If using automatic language identification (<code>IdentifyLanguage</code>) in your request
    #               and you want to apply a custom language model, a custom vocabulary, or a custom vocabulary
    #               filter, include <code>LanguageIdSettings</code> with the relevant sub-parameters
    #               (<code>VocabularyName</code>, <code>LanguageModelName</code>, and
    #               <code>VocabularyFilterName</code>).</p>
    #           <p>You can specify two or more language codes that represent the languages you think may be
    #               present in your media; including more than five is not recommended. Each language code you
    #               include can have an associated custom language model, custom vocabulary, and custom
    #               vocabulary filter. The languages you specify must match the languages of the specified custom
    #               language models, custom vocabularies, and custom vocabulary filters.</p>
    #           <p>To include language options using <code>IdentifyLanguage</code>
    #               <b>without</b> including a custom language model, a custom
    #               vocabulary, or a custom vocabulary filter, use <code>LanguageOptions</code> instead of
    #               <code>LanguageIdSettings</code>. Including language options can improve the accuracy of
    #               automatic language identification.</p>
    #           <p>If you want to include a custom language model with your request but
    #               <b>do not</b> want to use automatic language identification,
    #               use instead the <code></code> parameter with the
    #               <code>LanguageModelName</code> sub-parameter.</p>
    #           <p>If you want to include a custom vocabulary or a custom vocabulary filter (or both) with
    #               your request but <b>do not</b> want to use automatic
    #               language identification, use instead the <code></code>
    #               parameter with the <code>VocabularyName</code> or
    #               <code>VocabularyFilterName</code> (or both) sub-parameter.</p>
    #
    # @return [Types::StartTranscriptionJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_transcription_job(
    #     transcription_job_name: 'TranscriptionJobName', # required
    #     language_code: 'af-ZA', # accepts ["af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"]
    #     media_sample_rate_hertz: 1,
    #     media_format: 'mp3', # accepts ["mp3", "mp4", "wav", "flac", "ogg", "amr", "webm"]
    #     media: {
    #       media_file_uri: 'MediaFileUri',
    #       redacted_media_file_uri: 'RedactedMediaFileUri'
    #     }, # required
    #     output_bucket_name: 'OutputBucketName',
    #     output_key: 'OutputKey',
    #     output_encryption_kms_key_id: 'OutputEncryptionKMSKeyId',
    #     kms_encryption_context: {
    #       'key' => 'value'
    #     },
    #     settings: {
    #       vocabulary_name: 'VocabularyName',
    #       show_speaker_labels: false,
    #       max_speaker_labels: 1,
    #       channel_identification: false,
    #       show_alternatives: false,
    #       max_alternatives: 1,
    #       vocabulary_filter_name: 'VocabularyFilterName',
    #       vocabulary_filter_method: 'remove' # accepts ["remove", "mask", "tag"]
    #     },
    #     model_settings: {
    #       language_model_name: 'LanguageModelName'
    #     },
    #     job_execution_settings: {
    #       allow_deferred_execution: false,
    #       data_access_role_arn: 'DataAccessRoleArn'
    #     },
    #     content_redaction: {
    #       redaction_type: 'PII', # required - accepts ["PII"]
    #       redaction_output: 'redacted', # required - accepts ["redacted", "redacted_and_unredacted"]
    #       pii_entity_types: [
    #         'BANK_ACCOUNT_NUMBER' # accepts ["BANK_ACCOUNT_NUMBER", "BANK_ROUTING", "CREDIT_DEBIT_NUMBER", "CREDIT_DEBIT_CVV", "CREDIT_DEBIT_EXPIRY", "PIN", "EMAIL", "ADDRESS", "NAME", "PHONE", "SSN", "ALL"]
    #       ]
    #     },
    #     identify_language: false,
    #     identify_multiple_languages: false,
    #     language_options: [
    #       'af-ZA' # accepts ["af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"]
    #     ],
    #     subtitles: {
    #       formats: [
    #         'vtt' # accepts ["vtt", "srt"]
    #       ],
    #       output_start_index: 1
    #     },
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     language_id_settings: {
    #       'key' => {
    #         vocabulary_name: 'VocabularyName',
    #         vocabulary_filter_name: 'VocabularyFilterName',
    #         language_model_name: 'LanguageModelName'
    #       }
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartTranscriptionJobOutput
    #   resp.data.transcription_job #=> Types::TranscriptionJob
    #   resp.data.transcription_job.transcription_job_name #=> String
    #   resp.data.transcription_job.transcription_job_status #=> String, one of ["QUEUED", "IN_PROGRESS", "FAILED", "COMPLETED"]
    #   resp.data.transcription_job.language_code #=> String, one of ["af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"]
    #   resp.data.transcription_job.media_sample_rate_hertz #=> Integer
    #   resp.data.transcription_job.media_format #=> String, one of ["mp3", "mp4", "wav", "flac", "ogg", "amr", "webm"]
    #   resp.data.transcription_job.media #=> Types::Media
    #   resp.data.transcription_job.media.media_file_uri #=> String
    #   resp.data.transcription_job.media.redacted_media_file_uri #=> String
    #   resp.data.transcription_job.transcript #=> Types::Transcript
    #   resp.data.transcription_job.transcript.transcript_file_uri #=> String
    #   resp.data.transcription_job.transcript.redacted_transcript_file_uri #=> String
    #   resp.data.transcription_job.start_time #=> Time
    #   resp.data.transcription_job.creation_time #=> Time
    #   resp.data.transcription_job.completion_time #=> Time
    #   resp.data.transcription_job.failure_reason #=> String
    #   resp.data.transcription_job.settings #=> Types::Settings
    #   resp.data.transcription_job.settings.vocabulary_name #=> String
    #   resp.data.transcription_job.settings.show_speaker_labels #=> Boolean
    #   resp.data.transcription_job.settings.max_speaker_labels #=> Integer
    #   resp.data.transcription_job.settings.channel_identification #=> Boolean
    #   resp.data.transcription_job.settings.show_alternatives #=> Boolean
    #   resp.data.transcription_job.settings.max_alternatives #=> Integer
    #   resp.data.transcription_job.settings.vocabulary_filter_name #=> String
    #   resp.data.transcription_job.settings.vocabulary_filter_method #=> String, one of ["remove", "mask", "tag"]
    #   resp.data.transcription_job.model_settings #=> Types::ModelSettings
    #   resp.data.transcription_job.model_settings.language_model_name #=> String
    #   resp.data.transcription_job.job_execution_settings #=> Types::JobExecutionSettings
    #   resp.data.transcription_job.job_execution_settings.allow_deferred_execution #=> Boolean
    #   resp.data.transcription_job.job_execution_settings.data_access_role_arn #=> String
    #   resp.data.transcription_job.content_redaction #=> Types::ContentRedaction
    #   resp.data.transcription_job.content_redaction.redaction_type #=> String, one of ["PII"]
    #   resp.data.transcription_job.content_redaction.redaction_output #=> String, one of ["redacted", "redacted_and_unredacted"]
    #   resp.data.transcription_job.content_redaction.pii_entity_types #=> Array<String>
    #   resp.data.transcription_job.content_redaction.pii_entity_types[0] #=> String, one of ["BANK_ACCOUNT_NUMBER", "BANK_ROUTING", "CREDIT_DEBIT_NUMBER", "CREDIT_DEBIT_CVV", "CREDIT_DEBIT_EXPIRY", "PIN", "EMAIL", "ADDRESS", "NAME", "PHONE", "SSN", "ALL"]
    #   resp.data.transcription_job.identify_language #=> Boolean
    #   resp.data.transcription_job.identify_multiple_languages #=> Boolean
    #   resp.data.transcription_job.language_options #=> Array<String>
    #   resp.data.transcription_job.language_options[0] #=> String, one of ["af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"]
    #   resp.data.transcription_job.identified_language_score #=> Float
    #   resp.data.transcription_job.language_codes #=> Array<LanguageCodeItem>
    #   resp.data.transcription_job.language_codes[0] #=> Types::LanguageCodeItem
    #   resp.data.transcription_job.language_codes[0].language_code #=> String, one of ["af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"]
    #   resp.data.transcription_job.language_codes[0].duration_in_seconds #=> Float
    #   resp.data.transcription_job.tags #=> Array<Tag>
    #   resp.data.transcription_job.tags[0] #=> Types::Tag
    #   resp.data.transcription_job.tags[0].key #=> String
    #   resp.data.transcription_job.tags[0].value #=> String
    #   resp.data.transcription_job.subtitles #=> Types::SubtitlesOutput
    #   resp.data.transcription_job.subtitles.formats #=> Array<String>
    #   resp.data.transcription_job.subtitles.formats[0] #=> String, one of ["vtt", "srt"]
    #   resp.data.transcription_job.subtitles.subtitle_file_uris #=> Array<String>
    #   resp.data.transcription_job.subtitles.subtitle_file_uris[0] #=> String
    #   resp.data.transcription_job.subtitles.output_start_index #=> Integer
    #   resp.data.transcription_job.language_id_settings #=> Hash<String, LanguageIdSettings>
    #   resp.data.transcription_job.language_id_settings['key'] #=> Types::LanguageIdSettings
    #   resp.data.transcription_job.language_id_settings['key'].vocabulary_name #=> String
    #   resp.data.transcription_job.language_id_settings['key'].vocabulary_filter_name #=> String
    #   resp.data.transcription_job.language_id_settings['key'].language_model_name #=> String
    #
    def start_transcription_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartTranscriptionJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartTranscriptionJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartTranscriptionJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::InternalFailureException, Errors::BadRequestException, Errors::ConflictException]),
        data_parser: Parsers::StartTranscriptionJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartTranscriptionJob,
        stubs: @stubs,
        params_class: Params::StartTranscriptionJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_transcription_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds one or more custom tags, each in the form of a key:value pair, to the specified
    #             resource.</p>
    #         <p>To learn more about using tags with Amazon Transcribe, refer to <a href="https://docs.aws.amazon.com/transcribe/latest/dg/tagging.html">Tagging resources</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource you want to tag. ARNs have the format
    #               <code>arn:partition:service:region:account-id:resource-type/resource-id</code>.</p>
    #           <p>For example,
    #               <code>arn:aws:transcribe:us-west-2:account-id:transcription-job/transcription-job-name</code>.</p>
    #           <p>Valid values for <code>resource-type</code> are: <code>transcription-job</code>,
    #               <code>medical-transcription-job</code>, <code>vocabulary</code>,
    #               <code>medical-vocabulary</code>, <code>vocabulary-filter</code>, and
    #               <code>language-model</code>.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Adds one or more custom tags, each in the form of a key:value pair, to the specified
    #               resource.</p>
    #           <p>To learn more about using tags with Amazon Transcribe, refer to <a href="https://docs.aws.amazon.com/transcribe/latest/dg/tagging.html">Tagging resources</a>.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException, Errors::ConflictException]),
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

    # <p>Removes the specified tags from the specified Amazon Transcribe resource.</p>
    #         <p>If you include <code>UntagResource</code> in your request, you must also include
    #             <code>ResourceArn</code> and <code>TagKeys</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Transcribe resource you want to remove
    #               tags from. ARNs have the format
    #               <code>arn:partition:service:region:account-id:resource-type/resource-id</code>.</p>
    #           <p>For example,
    #               <code>arn:aws:transcribe:us-west-2:account-id:transcription-job/transcription-job-name</code>.</p>
    #           <p>Valid values for <code>resource-type</code> are: <code>transcription-job</code>,
    #               <code>medical-transcription-job</code>, <code>vocabulary</code>,
    #               <code>medical-vocabulary</code>, <code>vocabulary-filter</code>, and
    #               <code>language-model</code>.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>Removes the specified tag keys from the specified Amazon Transcribe resource.</p>
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::LimitExceededException, Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException, Errors::ConflictException]),
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

    # <p>Updates the specified Call Analytics category with new rules. Note that the
    #             <code>UpdateCallAnalyticsCategory</code> operation overwrites all existing rules contained in
    #             the specified category. You cannot append additional rules onto an existing category.</p>
    #         <p>To create a new category, see .</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateCallAnalyticsCategoryInput}.
    #
    # @option params [String] :category_name
    #   <p>The name of the Call Analytics category you want to update. Category names are case
    #               sensitive.</p>
    #
    # @option params [Array<Rule>] :rules
    #   <p>The rules used for the updated Call Analytics category. The rules you provide in this field
    #               replace the ones that are currently being used in the specified category.</p>
    #
    # @return [Types::UpdateCallAnalyticsCategoryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_call_analytics_category(
    #     category_name: 'CategoryName', # required
    #     rules: [
    #       {
    #         # One of:
    #         non_talk_time_filter: {
    #           threshold: 1,
    #           absolute_time_range: {
    #             start_time: 1,
    #             end_time: 1,
    #             first: 1,
    #             last: 1
    #           },
    #           relative_time_range: {
    #             start_percentage: 1,
    #             end_percentage: 1,
    #             first: 1,
    #             last: 1
    #           },
    #           negate: false
    #         },
    #         interruption_filter: {
    #           threshold: 1,
    #           participant_role: 'AGENT', # accepts ["AGENT", "CUSTOMER"]
    #           negate: false
    #         },
    #         transcript_filter: {
    #           transcript_filter_type: 'EXACT', # required - accepts ["EXACT"]
    #           participant_role: 'AGENT', # accepts ["AGENT", "CUSTOMER"]
    #           negate: false,
    #           targets: [
    #             'member'
    #           ] # required
    #         },
    #         sentiment_filter: {
    #           sentiments: [
    #             'POSITIVE' # accepts ["POSITIVE", "NEGATIVE", "NEUTRAL", "MIXED"]
    #           ], # required
    #           participant_role: 'AGENT', # accepts ["AGENT", "CUSTOMER"]
    #           negate: false
    #         }
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateCallAnalyticsCategoryOutput
    #   resp.data.category_properties #=> Types::CategoryProperties
    #   resp.data.category_properties.category_name #=> String
    #   resp.data.category_properties.rules #=> Array<Rule>
    #   resp.data.category_properties.rules[0] #=> Types::Rule, one of [NonTalkTimeFilter, InterruptionFilter, TranscriptFilter, SentimentFilter]
    #   resp.data.category_properties.rules[0].non_talk_time_filter #=> Types::NonTalkTimeFilter
    #   resp.data.category_properties.rules[0].non_talk_time_filter.threshold #=> Integer
    #   resp.data.category_properties.rules[0].non_talk_time_filter.absolute_time_range #=> Types::AbsoluteTimeRange
    #   resp.data.category_properties.rules[0].non_talk_time_filter.absolute_time_range.start_time #=> Integer
    #   resp.data.category_properties.rules[0].non_talk_time_filter.absolute_time_range.end_time #=> Integer
    #   resp.data.category_properties.rules[0].non_talk_time_filter.absolute_time_range.first #=> Integer
    #   resp.data.category_properties.rules[0].non_talk_time_filter.absolute_time_range.last #=> Integer
    #   resp.data.category_properties.rules[0].non_talk_time_filter.relative_time_range #=> Types::RelativeTimeRange
    #   resp.data.category_properties.rules[0].non_talk_time_filter.relative_time_range.start_percentage #=> Integer
    #   resp.data.category_properties.rules[0].non_talk_time_filter.relative_time_range.end_percentage #=> Integer
    #   resp.data.category_properties.rules[0].non_talk_time_filter.relative_time_range.first #=> Integer
    #   resp.data.category_properties.rules[0].non_talk_time_filter.relative_time_range.last #=> Integer
    #   resp.data.category_properties.rules[0].non_talk_time_filter.negate #=> Boolean
    #   resp.data.category_properties.rules[0].interruption_filter #=> Types::InterruptionFilter
    #   resp.data.category_properties.rules[0].interruption_filter.threshold #=> Integer
    #   resp.data.category_properties.rules[0].interruption_filter.participant_role #=> String, one of ["AGENT", "CUSTOMER"]
    #   resp.data.category_properties.rules[0].interruption_filter.absolute_time_range #=> Types::AbsoluteTimeRange
    #   resp.data.category_properties.rules[0].interruption_filter.relative_time_range #=> Types::RelativeTimeRange
    #   resp.data.category_properties.rules[0].interruption_filter.negate #=> Boolean
    #   resp.data.category_properties.rules[0].transcript_filter #=> Types::TranscriptFilter
    #   resp.data.category_properties.rules[0].transcript_filter.transcript_filter_type #=> String, one of ["EXACT"]
    #   resp.data.category_properties.rules[0].transcript_filter.absolute_time_range #=> Types::AbsoluteTimeRange
    #   resp.data.category_properties.rules[0].transcript_filter.relative_time_range #=> Types::RelativeTimeRange
    #   resp.data.category_properties.rules[0].transcript_filter.participant_role #=> String, one of ["AGENT", "CUSTOMER"]
    #   resp.data.category_properties.rules[0].transcript_filter.negate #=> Boolean
    #   resp.data.category_properties.rules[0].transcript_filter.targets #=> Array<String>
    #   resp.data.category_properties.rules[0].transcript_filter.targets[0] #=> String
    #   resp.data.category_properties.rules[0].sentiment_filter #=> Types::SentimentFilter
    #   resp.data.category_properties.rules[0].sentiment_filter.sentiments #=> Array<String>
    #   resp.data.category_properties.rules[0].sentiment_filter.sentiments[0] #=> String, one of ["POSITIVE", "NEGATIVE", "NEUTRAL", "MIXED"]
    #   resp.data.category_properties.rules[0].sentiment_filter.absolute_time_range #=> Types::AbsoluteTimeRange
    #   resp.data.category_properties.rules[0].sentiment_filter.relative_time_range #=> Types::RelativeTimeRange
    #   resp.data.category_properties.rules[0].sentiment_filter.participant_role #=> String, one of ["AGENT", "CUSTOMER"]
    #   resp.data.category_properties.rules[0].sentiment_filter.negate #=> Boolean
    #   resp.data.category_properties.create_time #=> Time
    #   resp.data.category_properties.last_update_time #=> Time
    #
    def update_call_analytics_category(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateCallAnalyticsCategoryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateCallAnalyticsCategoryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateCallAnalyticsCategory
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException, Errors::ConflictException]),
        data_parser: Parsers::UpdateCallAnalyticsCategory
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateCallAnalyticsCategory,
        stubs: @stubs,
        params_class: Params::UpdateCallAnalyticsCategoryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_call_analytics_category
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an existing custom medical vocabulary with new values. This operation overwrites
    #             all existing information with your new values; you cannot append new terms onto an existing
    #             vocabulary.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateMedicalVocabularyInput}.
    #
    # @option params [String] :vocabulary_name
    #   <p>The name of the custom medical vocabulary you want to update. Vocabulary names are
    #               case sensitive.</p>
    #
    # @option params [String] :language_code
    #   <p>The language code that represents the language of the entries in the custom vocabulary
    #               you want to update. US English (<code>en-US</code>) is the only language supported with
    #               Amazon Transcribe Medical.</p>
    #
    # @option params [String] :vocabulary_file_uri
    #   <p>The Amazon S3 location of the text file that contains your custom medical
    #               vocabulary. The URI must be located in the same Amazon Web Services Region as the resource
    #               you're calling.</p>
    #           <p>Here's an example URI path:
    #               <code>s3://DOC-EXAMPLE-BUCKET/my-vocab-file.txt</code>
    #            </p>
    #
    # @return [Types::UpdateMedicalVocabularyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_medical_vocabulary(
    #     vocabulary_name: 'VocabularyName', # required
    #     language_code: 'af-ZA', # required - accepts ["af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"]
    #     vocabulary_file_uri: 'VocabularyFileUri'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateMedicalVocabularyOutput
    #   resp.data.vocabulary_name #=> String
    #   resp.data.language_code #=> String, one of ["af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"]
    #   resp.data.last_modified_time #=> Time
    #   resp.data.vocabulary_state #=> String, one of ["PENDING", "READY", "FAILED"]
    #
    def update_medical_vocabulary(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateMedicalVocabularyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateMedicalVocabularyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateMedicalVocabulary
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException, Errors::ConflictException]),
        data_parser: Parsers::UpdateMedicalVocabulary
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateMedicalVocabulary,
        stubs: @stubs,
        params_class: Params::UpdateMedicalVocabularyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_medical_vocabulary
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an existing custom vocabulary with new values. This operation overwrites all existing
    #             information with your new values; you cannot append new terms onto an existing vocabulary.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateVocabularyInput}.
    #
    # @option params [String] :vocabulary_name
    #   <p>The name of the custom vocabulary you want to update. Vocabulary names are
    #               case sensitive.</p>
    #
    # @option params [String] :language_code
    #   <p>The language code that represents the language of the entries in the custom vocabulary
    #               you want to update. Each vocabulary must contain terms in only one language.</p>
    #           <p>A custom vocabulary can only be used to transcribe files in the same language as the
    #               vocabulary. For example, if you create a vocabulary using US English (<code>en-US</code>),
    #               you can only apply this vocabulary to files that contain English audio.</p>
    #           <p>For a list of supported languages and their associated language codes, refer to the
    #               <a href="https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html">Supported
    #                   languages</a> table.</p>
    #
    # @option params [Array<String>] :phrases
    #   <p>Use this parameter if you want to update your vocabulary by including all desired terms, as
    #               comma-separated values, within your request. The other option for updating your vocabulary is to
    #               save your entries in a text file and upload them to an Amazon S3 bucket, then specify
    #               the location of your file using the <code>VocabularyFileUri</code> parameter.</p>
    #           <p>Note that if you include <code>Phrases</code> in your request, you cannot use
    #               <code>VocabularyFileUri</code>; you must choose one or the other.</p>
    #           <p>Each language has a character set that contains all allowed characters for that specific
    #               language. If you use unsupported characters, your vocabulary filter request fails. Refer to
    #               <a href="https://docs.aws.amazon.com/transcribe/latest/dg/charsets.html">Character Sets for
    #                   Custom Vocabularies</a> to get the character set for your language.</p>
    #
    # @option params [String] :vocabulary_file_uri
    #   <p>The Amazon S3 location of the text file that contains your custom vocabulary. The
    #               URI must be located in the same Amazon Web Services Region as the resource you're
    #               calling.</p>
    #           <p>Here's an example URI path:
    #               <code>s3://DOC-EXAMPLE-BUCKET/my-vocab-file.txt</code>
    #            </p>
    #           <p>Note that if you include <code>VocabularyFileUri</code> in your request, you
    #               cannot use the <code>Phrases</code> flag; you must choose one or the other.</p>
    #
    # @return [Types::UpdateVocabularyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_vocabulary(
    #     vocabulary_name: 'VocabularyName', # required
    #     language_code: 'af-ZA', # required - accepts ["af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"]
    #     phrases: [
    #       'member'
    #     ],
    #     vocabulary_file_uri: 'VocabularyFileUri'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateVocabularyOutput
    #   resp.data.vocabulary_name #=> String
    #   resp.data.language_code #=> String, one of ["af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"]
    #   resp.data.last_modified_time #=> Time
    #   resp.data.vocabulary_state #=> String, one of ["PENDING", "READY", "FAILED"]
    #
    def update_vocabulary(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateVocabularyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateVocabularyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateVocabulary
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException, Errors::ConflictException]),
        data_parser: Parsers::UpdateVocabulary
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateVocabulary,
        stubs: @stubs,
        params_class: Params::UpdateVocabularyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_vocabulary
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an existing custom vocabulary filter with a new list of words. The new list you provide
    #             overwrites all previous entries; you cannot append new terms onto an existing vocabulary
    #             filter.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateVocabularyFilterInput}.
    #
    # @option params [String] :vocabulary_filter_name
    #   <p>The name of the custom vocabulary filter you want to update. Vocabulary filter names
    #               are case sensitive.</p>
    #
    # @option params [Array<String>] :words
    #   <p>Use this parameter if you want to update your vocabulary filter by including all desired terms,
    #               as comma-separated values, within your request. The other option for updating your vocabulary
    #               filter is to save your entries in a text file and upload them to an Amazon S3 bucket, then
    #               specify the location of your file using the <code>VocabularyFilterFileUri</code>
    #               parameter.</p>
    #           <p>Note that if you include <code>Words</code> in your request, you cannot use
    #               <code>VocabularyFilterFileUri</code>; you must choose one or the other.</p>
    #           <p>Each language has a character set that contains all allowed characters for that specific
    #               language. If you use unsupported characters, your vocabulary filter request fails. Refer to
    #               <a href="https://docs.aws.amazon.com/transcribe/latest/dg/charsets.html">Character Sets for
    #                   Custom Vocabularies</a> to get the character set for your language.</p>
    #
    # @option params [String] :vocabulary_filter_file_uri
    #   <p>The Amazon S3 location of the text file that contains your custom vocabulary filter
    #               terms. The URI must be located in the same Amazon Web Services Region as the resource you're
    #               calling.</p>
    #           <p>Here's an example URI path:
    #               <code>s3://DOC-EXAMPLE-BUCKET/my-vocab-filter-file.txt</code>
    #            </p>
    #           <p>Note that if you include <code>VocabularyFilterFileUri</code> in your request, you
    #               cannot use <code>Words</code>; you must choose one or the other.</p>
    #
    # @return [Types::UpdateVocabularyFilterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_vocabulary_filter(
    #     vocabulary_filter_name: 'VocabularyFilterName', # required
    #     words: [
    #       'member'
    #     ],
    #     vocabulary_filter_file_uri: 'VocabularyFilterFileUri'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateVocabularyFilterOutput
    #   resp.data.vocabulary_filter_name #=> String
    #   resp.data.language_code #=> String, one of ["af-ZA", "ar-AE", "ar-SA", "cy-GB", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "ga-IE", "gd-GB", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ"]
    #   resp.data.last_modified_time #=> Time
    #
    def update_vocabulary_filter(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateVocabularyFilterInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateVocabularyFilterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateVocabularyFilter
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException]),
        data_parser: Parsers::UpdateVocabularyFilter
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateVocabularyFilter,
        stubs: @stubs,
        params_class: Params::UpdateVocabularyFilterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_vocabulary_filter
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
