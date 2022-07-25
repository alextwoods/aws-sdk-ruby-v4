# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::Polly
  # An API client for Parrot_v1
  # See {#initialize} for a full list of supported configuration options
  # <p>Amazon Polly is a web service that makes it easy to synthesize speech from
  #       text.</p>
  #          <p>The Amazon Polly service provides API operations for synthesizing
  #       high-quality speech from plain text and Speech Synthesis Markup Language
  #       (SSML), along with managing pronunciations lexicons that enable you to get
  #       the best results for your application domain.</p>
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
    def initialize(config = AWS::SDK::Polly::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Deletes the specified pronunciation lexicon stored in an Amazon Web Services Region. A lexicon which has been deleted is not available for
    #       speech synthesis, nor is it possible to retrieve it using either the
    #         <code>GetLexicon</code> or <code>ListLexicon</code> APIs.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html">Managing Lexicons</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteLexiconInput}.
    #
    # @option params [String] :name
    #   <p>The name of the lexicon to delete. Must be an existing lexicon in
    #         the region.</p>
    #
    # @return [Types::DeleteLexiconOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_lexicon(
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteLexiconOutput
    #
    def delete_lexicon(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteLexiconInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteLexiconInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteLexicon
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LexiconNotFoundException, Errors::ServiceFailureException]),
        data_parser: Parsers::DeleteLexicon
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteLexicon,
        stubs: @stubs,
        params_class: Params::DeleteLexiconOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_lexicon
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the list of voices that are available for use when
    #       requesting speech synthesis. Each voice speaks a specified language, is
    #       either male or female, and is identified by an ID, which is the ASCII
    #       version of the voice name. </p>
    #
    #          <p>When synthesizing speech ( <code>SynthesizeSpeech</code> ), you
    #       provide the voice ID for the voice you want from the list of voices
    #       returned by <code>DescribeVoices</code>.</p>
    #
    #          <p>For example, you want your news reader application to read news in
    #       a specific language, but giving a user the option to choose the voice.
    #       Using the <code>DescribeVoices</code> operation you can provide the user
    #       with a list of available voices to select from.</p>
    #
    #          <p> You can optionally specify a language code to filter the available
    #       voices. For example, if you specify <code>en-US</code>, the operation
    #       returns a list of all available US English voices. </p>
    #          <p>This operation requires permissions to perform the
    #         <code>polly:DescribeVoices</code> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeVoicesInput}.
    #
    # @option params [String] :engine
    #   <p>Specifies the engine (<code>standard</code> or <code>neural</code>)
    #         used by Amazon Polly when processing input text for speech synthesis. </p>
    #
    # @option params [String] :language_code
    #   <p> The language identification tag (ISO 639 code for the language
    #         name-ISO 3166 country code) for filtering the list of voices returned. If
    #         you don't specify this optional parameter, all available voices are
    #         returned. </p>
    #
    # @option params [Boolean] :include_additional_language_codes
    #   <p>Boolean value indicating whether to return any bilingual voices that
    #         use the specified language as an additional language. For instance, if you
    #         request all languages that use US English (es-US), and there is an Italian
    #         voice that speaks both Italian (it-IT) and US English, that voice will be
    #         included if you specify <code>yes</code> but not if you specify
    #           <code>no</code>.</p>
    #
    # @option params [String] :next_token
    #   <p>An opaque pagination token returned from the previous
    #           <code>DescribeVoices</code> operation. If present, this indicates where
    #         to continue the listing.</p>
    #
    # @return [Types::DescribeVoicesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_voices(
    #     engine: 'standard', # accepts ["standard", "neural"]
    #     language_code: 'arb', # accepts ["arb", "cmn-CN", "cy-GB", "da-DK", "de-DE", "en-AU", "en-GB", "en-GB-WLS", "en-IN", "en-US", "es-ES", "es-MX", "es-US", "fr-CA", "fr-FR", "is-IS", "it-IT", "ja-JP", "hi-IN", "ko-KR", "nb-NO", "nl-NL", "pl-PL", "pt-BR", "pt-PT", "ro-RO", "ru-RU", "sv-SE", "tr-TR", "en-NZ", "en-ZA", "ca-ES", "de-AT"]
    #     include_additional_language_codes: false,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeVoicesOutput
    #   resp.data.voices #=> Array<Voice>
    #   resp.data.voices[0] #=> Types::Voice
    #   resp.data.voices[0].gender #=> String, one of ["Female", "Male"]
    #   resp.data.voices[0].id #=> String, one of ["Aditi", "Amy", "Astrid", "Bianca", "Brian", "Camila", "Carla", "Carmen", "Celine", "Chantal", "Conchita", "Cristiano", "Dora", "Emma", "Enrique", "Ewa", "Filiz", "Gabrielle", "Geraint", "Giorgio", "Gwyneth", "Hans", "Ines", "Ivy", "Jacek", "Jan", "Joanna", "Joey", "Justin", "Karl", "Kendra", "Kevin", "Kimberly", "Lea", "Liv", "Lotte", "Lucia", "Lupe", "Mads", "Maja", "Marlene", "Mathieu", "Matthew", "Maxim", "Mia", "Miguel", "Mizuki", "Naja", "Nicole", "Olivia", "Penelope", "Raveena", "Ricardo", "Ruben", "Russell", "Salli", "Seoyeon", "Takumi", "Tatyana", "Vicki", "Vitoria", "Zeina", "Zhiyu", "Aria", "Ayanda", "Arlet", "Hannah"]
    #   resp.data.voices[0].language_code #=> String, one of ["arb", "cmn-CN", "cy-GB", "da-DK", "de-DE", "en-AU", "en-GB", "en-GB-WLS", "en-IN", "en-US", "es-ES", "es-MX", "es-US", "fr-CA", "fr-FR", "is-IS", "it-IT", "ja-JP", "hi-IN", "ko-KR", "nb-NO", "nl-NL", "pl-PL", "pt-BR", "pt-PT", "ro-RO", "ru-RU", "sv-SE", "tr-TR", "en-NZ", "en-ZA", "ca-ES", "de-AT"]
    #   resp.data.voices[0].language_name #=> String
    #   resp.data.voices[0].name #=> String
    #   resp.data.voices[0].additional_language_codes #=> Array<String>
    #   resp.data.voices[0].additional_language_codes[0] #=> String, one of ["arb", "cmn-CN", "cy-GB", "da-DK", "de-DE", "en-AU", "en-GB", "en-GB-WLS", "en-IN", "en-US", "es-ES", "es-MX", "es-US", "fr-CA", "fr-FR", "is-IS", "it-IT", "ja-JP", "hi-IN", "ko-KR", "nb-NO", "nl-NL", "pl-PL", "pt-BR", "pt-PT", "ro-RO", "ru-RU", "sv-SE", "tr-TR", "en-NZ", "en-ZA", "ca-ES", "de-AT"]
    #   resp.data.voices[0].supported_engines #=> Array<String>
    #   resp.data.voices[0].supported_engines[0] #=> String, one of ["standard", "neural"]
    #   resp.data.next_token #=> String
    #
    def describe_voices(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeVoicesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeVoicesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeVoices
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException, Errors::ServiceFailureException]),
        data_parser: Parsers::DescribeVoices
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeVoices,
        stubs: @stubs,
        params_class: Params::DescribeVoicesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_voices
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the content of the specified pronunciation lexicon stored
    #       in an Amazon Web Services Region. For more information, see <a href="https://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html">Managing Lexicons</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetLexiconInput}.
    #
    # @option params [String] :name
    #   <p>Name of the lexicon.</p>
    #
    # @return [Types::GetLexiconOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_lexicon(
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetLexiconOutput
    #   resp.data.lexicon #=> Types::Lexicon
    #   resp.data.lexicon.content #=> String
    #   resp.data.lexicon.name #=> String
    #   resp.data.lexicon_attributes #=> Types::LexiconAttributes
    #   resp.data.lexicon_attributes.alphabet #=> String
    #   resp.data.lexicon_attributes.language_code #=> String, one of ["arb", "cmn-CN", "cy-GB", "da-DK", "de-DE", "en-AU", "en-GB", "en-GB-WLS", "en-IN", "en-US", "es-ES", "es-MX", "es-US", "fr-CA", "fr-FR", "is-IS", "it-IT", "ja-JP", "hi-IN", "ko-KR", "nb-NO", "nl-NL", "pl-PL", "pt-BR", "pt-PT", "ro-RO", "ru-RU", "sv-SE", "tr-TR", "en-NZ", "en-ZA", "ca-ES", "de-AT"]
    #   resp.data.lexicon_attributes.last_modified #=> Time
    #   resp.data.lexicon_attributes.lexicon_arn #=> String
    #   resp.data.lexicon_attributes.lexemes_count #=> Integer
    #   resp.data.lexicon_attributes.size #=> Integer
    #
    def get_lexicon(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetLexiconInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetLexiconInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetLexicon
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LexiconNotFoundException, Errors::ServiceFailureException]),
        data_parser: Parsers::GetLexicon
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetLexicon,
        stubs: @stubs,
        params_class: Params::GetLexiconOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_lexicon
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a specific SpeechSynthesisTask object based on its TaskID.
    #       This object contains information about the given speech synthesis task,
    #       including the status of the task, and a link to the S3 bucket containing
    #       the output of the task.</p>
    #
    # @param [Hash] params
    #   See {Types::GetSpeechSynthesisTaskInput}.
    #
    # @option params [String] :task_id
    #   <p>The Amazon Polly generated identifier for a speech synthesis task.</p>
    #
    # @return [Types::GetSpeechSynthesisTaskOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_speech_synthesis_task(
    #     task_id: 'TaskId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSpeechSynthesisTaskOutput
    #   resp.data.synthesis_task #=> Types::SynthesisTask
    #   resp.data.synthesis_task.engine #=> String, one of ["standard", "neural"]
    #   resp.data.synthesis_task.task_id #=> String
    #   resp.data.synthesis_task.task_status #=> String, one of ["scheduled", "inProgress", "completed", "failed"]
    #   resp.data.synthesis_task.task_status_reason #=> String
    #   resp.data.synthesis_task.output_uri #=> String
    #   resp.data.synthesis_task.creation_time #=> Time
    #   resp.data.synthesis_task.request_characters #=> Integer
    #   resp.data.synthesis_task.sns_topic_arn #=> String
    #   resp.data.synthesis_task.lexicon_names #=> Array<String>
    #   resp.data.synthesis_task.lexicon_names[0] #=> String
    #   resp.data.synthesis_task.output_format #=> String, one of ["json", "mp3", "ogg_vorbis", "pcm"]
    #   resp.data.synthesis_task.sample_rate #=> String
    #   resp.data.synthesis_task.speech_mark_types #=> Array<String>
    #   resp.data.synthesis_task.speech_mark_types[0] #=> String, one of ["sentence", "ssml", "viseme", "word"]
    #   resp.data.synthesis_task.text_type #=> String, one of ["ssml", "text"]
    #   resp.data.synthesis_task.voice_id #=> String, one of ["Aditi", "Amy", "Astrid", "Bianca", "Brian", "Camila", "Carla", "Carmen", "Celine", "Chantal", "Conchita", "Cristiano", "Dora", "Emma", "Enrique", "Ewa", "Filiz", "Gabrielle", "Geraint", "Giorgio", "Gwyneth", "Hans", "Ines", "Ivy", "Jacek", "Jan", "Joanna", "Joey", "Justin", "Karl", "Kendra", "Kevin", "Kimberly", "Lea", "Liv", "Lotte", "Lucia", "Lupe", "Mads", "Maja", "Marlene", "Mathieu", "Matthew", "Maxim", "Mia", "Miguel", "Mizuki", "Naja", "Nicole", "Olivia", "Penelope", "Raveena", "Ricardo", "Ruben", "Russell", "Salli", "Seoyeon", "Takumi", "Tatyana", "Vicki", "Vitoria", "Zeina", "Zhiyu", "Aria", "Ayanda", "Arlet", "Hannah"]
    #   resp.data.synthesis_task.language_code #=> String, one of ["arb", "cmn-CN", "cy-GB", "da-DK", "de-DE", "en-AU", "en-GB", "en-GB-WLS", "en-IN", "en-US", "es-ES", "es-MX", "es-US", "fr-CA", "fr-FR", "is-IS", "it-IT", "ja-JP", "hi-IN", "ko-KR", "nb-NO", "nl-NL", "pl-PL", "pt-BR", "pt-PT", "ro-RO", "ru-RU", "sv-SE", "tr-TR", "en-NZ", "en-ZA", "ca-ES", "de-AT"]
    #
    def get_speech_synthesis_task(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSpeechSynthesisTaskInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSpeechSynthesisTaskInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetSpeechSynthesisTask
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidTaskIdException, Errors::ServiceFailureException, Errors::SynthesisTaskNotFoundException]),
        data_parser: Parsers::GetSpeechSynthesisTask
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetSpeechSynthesisTask,
        stubs: @stubs,
        params_class: Params::GetSpeechSynthesisTaskOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_speech_synthesis_task
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of pronunciation lexicons stored in an Amazon Web Services Region. For more information, see <a href="https://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html">Managing Lexicons</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListLexiconsInput}.
    #
    # @option params [String] :next_token
    #   <p>An opaque pagination token returned from previous
    #           <code>ListLexicons</code> operation. If present, indicates where to
    #         continue the list of lexicons.</p>
    #
    # @return [Types::ListLexiconsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_lexicons(
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListLexiconsOutput
    #   resp.data.lexicons #=> Array<LexiconDescription>
    #   resp.data.lexicons[0] #=> Types::LexiconDescription
    #   resp.data.lexicons[0].name #=> String
    #   resp.data.lexicons[0].attributes #=> Types::LexiconAttributes
    #   resp.data.lexicons[0].attributes.alphabet #=> String
    #   resp.data.lexicons[0].attributes.language_code #=> String, one of ["arb", "cmn-CN", "cy-GB", "da-DK", "de-DE", "en-AU", "en-GB", "en-GB-WLS", "en-IN", "en-US", "es-ES", "es-MX", "es-US", "fr-CA", "fr-FR", "is-IS", "it-IT", "ja-JP", "hi-IN", "ko-KR", "nb-NO", "nl-NL", "pl-PL", "pt-BR", "pt-PT", "ro-RO", "ru-RU", "sv-SE", "tr-TR", "en-NZ", "en-ZA", "ca-ES", "de-AT"]
    #   resp.data.lexicons[0].attributes.last_modified #=> Time
    #   resp.data.lexicons[0].attributes.lexicon_arn #=> String
    #   resp.data.lexicons[0].attributes.lexemes_count #=> Integer
    #   resp.data.lexicons[0].attributes.size #=> Integer
    #   resp.data.next_token #=> String
    #
    def list_lexicons(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListLexiconsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListLexiconsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListLexicons
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException, Errors::ServiceFailureException]),
        data_parser: Parsers::ListLexicons
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListLexicons,
        stubs: @stubs,
        params_class: Params::ListLexiconsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_lexicons
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of SpeechSynthesisTask objects ordered by their
    #       creation date. This operation can filter the tasks by their status, for
    #       example, allowing users to list only tasks that are completed.</p>
    #
    # @param [Hash] params
    #   See {Types::ListSpeechSynthesisTasksInput}.
    #
    # @option params [Integer] :max_results
    #   <p>Maximum number of speech synthesis tasks returned in a List
    #         operation.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token to use in the next request to continue the
    #         listing of speech synthesis tasks. </p>
    #
    # @option params [String] :status
    #   <p>Status of the speech synthesis tasks returned in a List
    #         operation</p>
    #
    # @return [Types::ListSpeechSynthesisTasksOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_speech_synthesis_tasks(
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     status: 'scheduled' # accepts ["scheduled", "inProgress", "completed", "failed"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListSpeechSynthesisTasksOutput
    #   resp.data.next_token #=> String
    #   resp.data.synthesis_tasks #=> Array<SynthesisTask>
    #   resp.data.synthesis_tasks[0] #=> Types::SynthesisTask
    #   resp.data.synthesis_tasks[0].engine #=> String, one of ["standard", "neural"]
    #   resp.data.synthesis_tasks[0].task_id #=> String
    #   resp.data.synthesis_tasks[0].task_status #=> String, one of ["scheduled", "inProgress", "completed", "failed"]
    #   resp.data.synthesis_tasks[0].task_status_reason #=> String
    #   resp.data.synthesis_tasks[0].output_uri #=> String
    #   resp.data.synthesis_tasks[0].creation_time #=> Time
    #   resp.data.synthesis_tasks[0].request_characters #=> Integer
    #   resp.data.synthesis_tasks[0].sns_topic_arn #=> String
    #   resp.data.synthesis_tasks[0].lexicon_names #=> Array<String>
    #   resp.data.synthesis_tasks[0].lexicon_names[0] #=> String
    #   resp.data.synthesis_tasks[0].output_format #=> String, one of ["json", "mp3", "ogg_vorbis", "pcm"]
    #   resp.data.synthesis_tasks[0].sample_rate #=> String
    #   resp.data.synthesis_tasks[0].speech_mark_types #=> Array<String>
    #   resp.data.synthesis_tasks[0].speech_mark_types[0] #=> String, one of ["sentence", "ssml", "viseme", "word"]
    #   resp.data.synthesis_tasks[0].text_type #=> String, one of ["ssml", "text"]
    #   resp.data.synthesis_tasks[0].voice_id #=> String, one of ["Aditi", "Amy", "Astrid", "Bianca", "Brian", "Camila", "Carla", "Carmen", "Celine", "Chantal", "Conchita", "Cristiano", "Dora", "Emma", "Enrique", "Ewa", "Filiz", "Gabrielle", "Geraint", "Giorgio", "Gwyneth", "Hans", "Ines", "Ivy", "Jacek", "Jan", "Joanna", "Joey", "Justin", "Karl", "Kendra", "Kevin", "Kimberly", "Lea", "Liv", "Lotte", "Lucia", "Lupe", "Mads", "Maja", "Marlene", "Mathieu", "Matthew", "Maxim", "Mia", "Miguel", "Mizuki", "Naja", "Nicole", "Olivia", "Penelope", "Raveena", "Ricardo", "Ruben", "Russell", "Salli", "Seoyeon", "Takumi", "Tatyana", "Vicki", "Vitoria", "Zeina", "Zhiyu", "Aria", "Ayanda", "Arlet", "Hannah"]
    #   resp.data.synthesis_tasks[0].language_code #=> String, one of ["arb", "cmn-CN", "cy-GB", "da-DK", "de-DE", "en-AU", "en-GB", "en-GB-WLS", "en-IN", "en-US", "es-ES", "es-MX", "es-US", "fr-CA", "fr-FR", "is-IS", "it-IT", "ja-JP", "hi-IN", "ko-KR", "nb-NO", "nl-NL", "pl-PL", "pt-BR", "pt-PT", "ro-RO", "ru-RU", "sv-SE", "tr-TR", "en-NZ", "en-ZA", "ca-ES", "de-AT"]
    #
    def list_speech_synthesis_tasks(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListSpeechSynthesisTasksInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListSpeechSynthesisTasksInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListSpeechSynthesisTasks
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException, Errors::ServiceFailureException]),
        data_parser: Parsers::ListSpeechSynthesisTasks
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListSpeechSynthesisTasks,
        stubs: @stubs,
        params_class: Params::ListSpeechSynthesisTasksOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_speech_synthesis_tasks
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Stores a pronunciation lexicon in an Amazon Web Services Region. If
    #       a lexicon with the same name already exists in the region, it is
    #       overwritten by the new lexicon. Lexicon operations have eventual
    #       consistency, therefore, it might take some time before the lexicon is
    #       available to the SynthesizeSpeech operation.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html">Managing Lexicons</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::PutLexiconInput}.
    #
    # @option params [String] :name
    #   <p>Name of the lexicon. The name must follow the regular express
    #         format [0-9A-Za-z]{1,20}. That is, the name is a case-sensitive
    #         alphanumeric string up to 20 characters long. </p>
    #
    # @option params [String] :content
    #   <p>Content of the PLS lexicon as string data.</p>
    #
    # @return [Types::PutLexiconOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_lexicon(
    #     name: 'Name', # required
    #     content: 'Content' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutLexiconOutput
    #
    def put_lexicon(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutLexiconInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutLexiconInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutLexicon
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidLexiconException, Errors::LexiconSizeExceededException, Errors::MaxLexemeLengthExceededException, Errors::MaxLexiconsNumberExceededException, Errors::ServiceFailureException, Errors::UnsupportedPlsAlphabetException, Errors::UnsupportedPlsLanguageException]),
        data_parser: Parsers::PutLexicon
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutLexicon,
        stubs: @stubs,
        params_class: Params::PutLexiconOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_lexicon
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Allows the creation of an asynchronous synthesis task, by starting a
    #       new <code>SpeechSynthesisTask</code>. This operation requires all the
    #       standard information needed for speech synthesis, plus the name of an
    #       Amazon S3 bucket for the service to store the output of the synthesis task
    #       and two optional parameters (<code>OutputS3KeyPrefix</code> and
    #         <code>SnsTopicArn</code>). Once the synthesis task is created, this
    #       operation will return a <code>SpeechSynthesisTask</code> object, which
    #       will include an identifier of this task as well as the current status. The
    #         <code>SpeechSynthesisTask</code> object is available for 72 hours after
    #       starting the asynchronous synthesis task.</p>
    #
    # @param [Hash] params
    #   See {Types::StartSpeechSynthesisTaskInput}.
    #
    # @option params [String] :engine
    #   <p>Specifies the engine (<code>standard</code> or <code>neural</code>)
    #         for Amazon Polly to use when processing input text for speech synthesis. Using a
    #         voice that is not supported for the engine selected will result in an
    #         error.</p>
    #
    # @option params [String] :language_code
    #   <p>Optional language code for the Speech Synthesis request. This is only
    #         necessary if using a bilingual voice, such as Aditi, which can be used for
    #         either Indian English (en-IN) or Hindi (hi-IN). </p>
    #            <p>If a bilingual voice is used and no language code is specified, Amazon Polly
    #         uses the default language of the bilingual voice. The default language for
    #         any voice is the one returned by the <a href="https://docs.aws.amazon.com/polly/latest/dg/API_DescribeVoices.html">DescribeVoices</a> operation for the <code>LanguageCode</code>
    #         parameter. For example, if no language code is specified, Aditi will use
    #         Indian English rather than Hindi.</p>
    #
    # @option params [Array<String>] :lexicon_names
    #   <p>List of one or more pronunciation lexicon names you want the service
    #         to apply during synthesis. Lexicons are applied only if the language of
    #         the lexicon is the same as the language of the voice. </p>
    #
    # @option params [String] :output_format
    #   <p>The format in which the returned output will be encoded. For audio
    #         stream, this will be mp3, ogg_vorbis, or pcm. For speech marks, this will
    #         be json. </p>
    #
    # @option params [String] :output_s3_bucket_name
    #   <p>Amazon S3 bucket name to which the output file will be saved.</p>
    #
    # @option params [String] :output_s3_key_prefix
    #   <p>The Amazon S3 key prefix for the output speech file.</p>
    #
    # @option params [String] :sample_rate
    #   <p>The audio frequency specified in Hz.</p>
    #            <p>The valid values for mp3 and ogg_vorbis are "8000", "16000", "22050",
    #         and "24000". The default value for standard voices is "22050". The default
    #         value for neural voices is "24000".</p>
    #            <p>Valid values for pcm are "8000" and "16000" The default value is
    #         "16000". </p>
    #
    # @option params [String] :sns_topic_arn
    #   <p>ARN for the SNS topic optionally used for providing status
    #         notification for a speech synthesis task.</p>
    #
    # @option params [Array<String>] :speech_mark_types
    #   <p>The type of speech marks returned for the input text.</p>
    #
    # @option params [String] :text
    #   <p>The input text to synthesize. If you specify ssml as the TextType,
    #         follow the SSML format for the input text. </p>
    #
    # @option params [String] :text_type
    #   <p>Specifies whether the input text is plain text or SSML. The default
    #         value is plain text. </p>
    #
    # @option params [String] :voice_id
    #   <p>Voice ID to use for the synthesis. </p>
    #
    # @return [Types::StartSpeechSynthesisTaskOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_speech_synthesis_task(
    #     engine: 'standard', # accepts ["standard", "neural"]
    #     language_code: 'arb', # accepts ["arb", "cmn-CN", "cy-GB", "da-DK", "de-DE", "en-AU", "en-GB", "en-GB-WLS", "en-IN", "en-US", "es-ES", "es-MX", "es-US", "fr-CA", "fr-FR", "is-IS", "it-IT", "ja-JP", "hi-IN", "ko-KR", "nb-NO", "nl-NL", "pl-PL", "pt-BR", "pt-PT", "ro-RO", "ru-RU", "sv-SE", "tr-TR", "en-NZ", "en-ZA", "ca-ES", "de-AT"]
    #     lexicon_names: [
    #       'member'
    #     ],
    #     output_format: 'json', # required - accepts ["json", "mp3", "ogg_vorbis", "pcm"]
    #     output_s3_bucket_name: 'OutputS3BucketName', # required
    #     output_s3_key_prefix: 'OutputS3KeyPrefix',
    #     sample_rate: 'SampleRate',
    #     sns_topic_arn: 'SnsTopicArn',
    #     speech_mark_types: [
    #       'sentence' # accepts ["sentence", "ssml", "viseme", "word"]
    #     ],
    #     text: 'Text', # required
    #     text_type: 'ssml', # accepts ["ssml", "text"]
    #     voice_id: 'Aditi' # required - accepts ["Aditi", "Amy", "Astrid", "Bianca", "Brian", "Camila", "Carla", "Carmen", "Celine", "Chantal", "Conchita", "Cristiano", "Dora", "Emma", "Enrique", "Ewa", "Filiz", "Gabrielle", "Geraint", "Giorgio", "Gwyneth", "Hans", "Ines", "Ivy", "Jacek", "Jan", "Joanna", "Joey", "Justin", "Karl", "Kendra", "Kevin", "Kimberly", "Lea", "Liv", "Lotte", "Lucia", "Lupe", "Mads", "Maja", "Marlene", "Mathieu", "Matthew", "Maxim", "Mia", "Miguel", "Mizuki", "Naja", "Nicole", "Olivia", "Penelope", "Raveena", "Ricardo", "Ruben", "Russell", "Salli", "Seoyeon", "Takumi", "Tatyana", "Vicki", "Vitoria", "Zeina", "Zhiyu", "Aria", "Ayanda", "Arlet", "Hannah"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartSpeechSynthesisTaskOutput
    #   resp.data.synthesis_task #=> Types::SynthesisTask
    #   resp.data.synthesis_task.engine #=> String, one of ["standard", "neural"]
    #   resp.data.synthesis_task.task_id #=> String
    #   resp.data.synthesis_task.task_status #=> String, one of ["scheduled", "inProgress", "completed", "failed"]
    #   resp.data.synthesis_task.task_status_reason #=> String
    #   resp.data.synthesis_task.output_uri #=> String
    #   resp.data.synthesis_task.creation_time #=> Time
    #   resp.data.synthesis_task.request_characters #=> Integer
    #   resp.data.synthesis_task.sns_topic_arn #=> String
    #   resp.data.synthesis_task.lexicon_names #=> Array<String>
    #   resp.data.synthesis_task.lexicon_names[0] #=> String
    #   resp.data.synthesis_task.output_format #=> String, one of ["json", "mp3", "ogg_vorbis", "pcm"]
    #   resp.data.synthesis_task.sample_rate #=> String
    #   resp.data.synthesis_task.speech_mark_types #=> Array<String>
    #   resp.data.synthesis_task.speech_mark_types[0] #=> String, one of ["sentence", "ssml", "viseme", "word"]
    #   resp.data.synthesis_task.text_type #=> String, one of ["ssml", "text"]
    #   resp.data.synthesis_task.voice_id #=> String, one of ["Aditi", "Amy", "Astrid", "Bianca", "Brian", "Camila", "Carla", "Carmen", "Celine", "Chantal", "Conchita", "Cristiano", "Dora", "Emma", "Enrique", "Ewa", "Filiz", "Gabrielle", "Geraint", "Giorgio", "Gwyneth", "Hans", "Ines", "Ivy", "Jacek", "Jan", "Joanna", "Joey", "Justin", "Karl", "Kendra", "Kevin", "Kimberly", "Lea", "Liv", "Lotte", "Lucia", "Lupe", "Mads", "Maja", "Marlene", "Mathieu", "Matthew", "Maxim", "Mia", "Miguel", "Mizuki", "Naja", "Nicole", "Olivia", "Penelope", "Raveena", "Ricardo", "Ruben", "Russell", "Salli", "Seoyeon", "Takumi", "Tatyana", "Vicki", "Vitoria", "Zeina", "Zhiyu", "Aria", "Ayanda", "Arlet", "Hannah"]
    #   resp.data.synthesis_task.language_code #=> String, one of ["arb", "cmn-CN", "cy-GB", "da-DK", "de-DE", "en-AU", "en-GB", "en-GB-WLS", "en-IN", "en-US", "es-ES", "es-MX", "es-US", "fr-CA", "fr-FR", "is-IS", "it-IT", "ja-JP", "hi-IN", "ko-KR", "nb-NO", "nl-NL", "pl-PL", "pt-BR", "pt-PT", "ro-RO", "ru-RU", "sv-SE", "tr-TR", "en-NZ", "en-ZA", "ca-ES", "de-AT"]
    #
    def start_speech_synthesis_task(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartSpeechSynthesisTaskInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartSpeechSynthesisTaskInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartSpeechSynthesisTask
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EngineNotSupportedException, Errors::InvalidS3BucketException, Errors::InvalidS3KeyException, Errors::InvalidSampleRateException, Errors::InvalidSnsTopicArnException, Errors::InvalidSsmlException, Errors::LanguageNotSupportedException, Errors::LexiconNotFoundException, Errors::MarksNotSupportedForFormatException, Errors::ServiceFailureException, Errors::SsmlMarksNotSupportedForTextTypeException, Errors::TextLengthExceededException]),
        data_parser: Parsers::StartSpeechSynthesisTask
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartSpeechSynthesisTask,
        stubs: @stubs,
        params_class: Params::StartSpeechSynthesisTaskOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_speech_synthesis_task
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Synthesizes UTF-8 input, plain text or SSML, to a stream of bytes.
    #       SSML input must be valid, well-formed SSML. Some alphabets might not be
    #       available with all the voices (for example, Cyrillic might not be read at
    #       all by English voices) unless phoneme mapping is used. For more
    #       information, see <a href="https://docs.aws.amazon.com/polly/latest/dg/how-text-to-speech-works.html">How it Works</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::SynthesizeSpeechInput}.
    #
    # @option params [String] :engine
    #   <p>Specifies the engine (<code>standard</code> or <code>neural</code>)
    #         for Amazon Polly to use when processing input text for speech synthesis. For
    #         information on Amazon Polly voices and which voices are available in
    #         standard-only, NTTS-only, and both standard and NTTS formats, see <a href="https://docs.aws.amazon.com/polly/latest/dg/voicelist.html">Available Voices</a>.</p>
    #            <p>
    #               <b>NTTS-only voices</b>
    #            </p>
    #            <p>When using NTTS-only voices such as Kevin (en-US), this parameter is
    #         required and must be set to <code>neural</code>. If the engine is not
    #         specified, or is set to <code>standard</code>, this will result in an
    #         error. </p>
    #            <p>Type: String</p>
    #            <p>Valid Values: <code>standard</code> | <code>neural</code>
    #            </p>
    #            <p>Required: Yes</p>
    #
    #            <p>
    #               <b>Standard voices</b>
    #            </p>
    #            <p>For standard voices, this is not required; the engine parameter
    #         defaults to <code>standard</code>. If the engine is not specified, or is
    #         set to <code>standard</code> and an NTTS-only voice is selected, this will
    #         result in an error. </p>
    #
    # @option params [String] :language_code
    #   <p>Optional language code for the Synthesize Speech request. This is only
    #         necessary if using a bilingual voice, such as Aditi, which can be used for
    #         either Indian English (en-IN) or Hindi (hi-IN). </p>
    #            <p>If a bilingual voice is used and no language code is specified, Amazon Polly
    #         uses the default language of the bilingual voice. The default language for
    #         any voice is the one returned by the <a href="https://docs.aws.amazon.com/polly/latest/dg/API_DescribeVoices.html">DescribeVoices</a> operation for the <code>LanguageCode</code>
    #         parameter. For example, if no language code is specified, Aditi will use
    #         Indian English rather than Hindi.</p>
    #
    # @option params [Array<String>] :lexicon_names
    #   <p>List of one or more pronunciation lexicon names you want the
    #         service to apply during synthesis. Lexicons are applied only if the
    #         language of the lexicon is the same as the language of the voice. For
    #         information about storing lexicons, see <a href="https://docs.aws.amazon.com/polly/latest/dg/API_PutLexicon.html">PutLexicon</a>.</p>
    #
    # @option params [String] :output_format
    #   <p> The format in which the returned output will be encoded. For audio
    #         stream, this will be mp3, ogg_vorbis, or pcm. For speech marks, this will
    #         be json. </p>
    #            <p>When pcm is used, the content returned is audio/pcm in a signed
    #         16-bit, 1 channel (mono), little-endian format. </p>
    #
    # @option params [String] :sample_rate
    #   <p>The audio frequency specified in Hz.</p>
    #            <p>The valid values for mp3 and ogg_vorbis are "8000", "16000", "22050",
    #         and "24000". The default value for standard voices is "22050". The default
    #         value for neural voices is "24000".</p>
    #            <p>Valid values for pcm are "8000" and "16000" The default value is
    #         "16000". </p>
    #
    # @option params [Array<String>] :speech_mark_types
    #   <p>The type of speech marks returned for the input text.</p>
    #
    # @option params [String] :text
    #   <p> Input text to synthesize. If you specify <code>ssml</code> as the
    #           <code>TextType</code>, follow the SSML format for the input text.
    #       </p>
    #
    # @option params [String] :text_type
    #   <p> Specifies whether the input text is plain text or SSML. The
    #         default value is plain text. For more information, see <a href="https://docs.aws.amazon.com/polly/latest/dg/ssml.html">Using
    #           SSML</a>.</p>
    #
    # @option params [String] :voice_id
    #   <p> Voice ID to use for the synthesis. You can get a list of available
    #         voice IDs by calling the <a href="https://docs.aws.amazon.com/polly/latest/dg/API_DescribeVoices.html">DescribeVoices</a> operation. </p>
    #
    # @return [Types::SynthesizeSpeechOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.synthesize_speech(
    #     engine: 'standard', # accepts ["standard", "neural"]
    #     language_code: 'arb', # accepts ["arb", "cmn-CN", "cy-GB", "da-DK", "de-DE", "en-AU", "en-GB", "en-GB-WLS", "en-IN", "en-US", "es-ES", "es-MX", "es-US", "fr-CA", "fr-FR", "is-IS", "it-IT", "ja-JP", "hi-IN", "ko-KR", "nb-NO", "nl-NL", "pl-PL", "pt-BR", "pt-PT", "ro-RO", "ru-RU", "sv-SE", "tr-TR", "en-NZ", "en-ZA", "ca-ES", "de-AT"]
    #     lexicon_names: [
    #       'member'
    #     ],
    #     output_format: 'json', # required - accepts ["json", "mp3", "ogg_vorbis", "pcm"]
    #     sample_rate: 'SampleRate',
    #     speech_mark_types: [
    #       'sentence' # accepts ["sentence", "ssml", "viseme", "word"]
    #     ],
    #     text: 'Text', # required
    #     text_type: 'ssml', # accepts ["ssml", "text"]
    #     voice_id: 'Aditi' # required - accepts ["Aditi", "Amy", "Astrid", "Bianca", "Brian", "Camila", "Carla", "Carmen", "Celine", "Chantal", "Conchita", "Cristiano", "Dora", "Emma", "Enrique", "Ewa", "Filiz", "Gabrielle", "Geraint", "Giorgio", "Gwyneth", "Hans", "Ines", "Ivy", "Jacek", "Jan", "Joanna", "Joey", "Justin", "Karl", "Kendra", "Kevin", "Kimberly", "Lea", "Liv", "Lotte", "Lucia", "Lupe", "Mads", "Maja", "Marlene", "Mathieu", "Matthew", "Maxim", "Mia", "Miguel", "Mizuki", "Naja", "Nicole", "Olivia", "Penelope", "Raveena", "Ricardo", "Ruben", "Russell", "Salli", "Seoyeon", "Takumi", "Tatyana", "Vicki", "Vitoria", "Zeina", "Zhiyu", "Aria", "Ayanda", "Arlet", "Hannah"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SynthesizeSpeechOutput
    #   resp.data.audio_stream #=> String
    #   resp.data.content_type #=> String
    #   resp.data.request_characters #=> Integer
    #
    def synthesize_speech(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SynthesizeSpeechInput.build(params)
      response_body = output_stream(options, &block)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SynthesizeSpeechInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SynthesizeSpeech
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EngineNotSupportedException, Errors::InvalidSampleRateException, Errors::InvalidSsmlException, Errors::LanguageNotSupportedException, Errors::LexiconNotFoundException, Errors::MarksNotSupportedForFormatException, Errors::ServiceFailureException, Errors::SsmlMarksNotSupportedForTextTypeException, Errors::TextLengthExceededException]),
        data_parser: Parsers::SynthesizeSpeech
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SynthesizeSpeech,
        stubs: @stubs,
        params_class: Params::SynthesizeSpeechOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :synthesize_speech
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

    def output_stream(options = {}, &block)
      return options[:output_stream] if options[:output_stream]
      return Hearth::BlockIO.new(block) if block

      ::StringIO.new
    end
  end
end
