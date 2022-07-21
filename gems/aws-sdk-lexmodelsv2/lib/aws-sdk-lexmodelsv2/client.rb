# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::LexModelsV2
  # An API client for LexModelBuildingServiceV2
  # See {#initialize} for a full list of supported configuration options
  # <p></p>
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
    def initialize(config = AWS::SDK::LexModelsV2::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Builds a bot, its intents, and its slot types into a specific
    #          locale. A bot can be built into multiple locales. At runtime the locale
    #          is used to choose a specific build of the bot.</p>
    #
    # @param [Hash] params
    #   See {Types::BuildBotLocaleInput}.
    #
    # @option params [String] :bot_id
    #   <p>The identifier of the bot to build. The identifier is returned in
    #            the response from the <a href="https://docs.aws.amazon.com/lexv2/latest/dg/API_CreateBot.html">CreateBot</a> operation.</p>
    #
    # @option params [String] :bot_version
    #   <p>The version of the bot to build. This can only be the draft version
    #            of the bot.</p>
    #
    # @option params [String] :locale_id
    #   <p>The identifier of the language and locale that the bot will be used
    #            in. The string must match one of the supported locales. All of the
    #            intents, slot types, and slots used in the bot must have the same
    #            locale. For more information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>.</p>
    #
    # @return [Types::BuildBotLocaleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.build_bot_locale(
    #     bot_id: 'botId', # required
    #     bot_version: 'botVersion', # required
    #     locale_id: 'localeId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BuildBotLocaleOutput
    #   resp.data.bot_id #=> String
    #   resp.data.bot_version #=> String
    #   resp.data.locale_id #=> String
    #   resp.data.bot_locale_status #=> String, one of ["Creating", "Building", "Built", "ReadyExpressTesting", "Failed", "Deleting", "NotBuilt", "Importing", "Processing"]
    #   resp.data.last_build_submitted_date_time #=> Time
    #
    def build_bot_locale(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BuildBotLocaleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BuildBotLocaleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BuildBotLocale
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::ConflictException, Errors::PreconditionFailedException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::BuildBotLocale
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BuildBotLocale,
        stubs: @stubs,
        params_class: Params::BuildBotLocaleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :build_bot_locale
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an Amazon Lex conversational bot. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateBotInput}.
    #
    # @option params [String] :bot_name
    #   <p>The name of the bot. The bot name must be unique in the account that
    #            creates the bot.</p>
    #
    # @option params [String] :description
    #   <p>A description of the bot. It appears in lists to help you identify a
    #            particular bot.</p>
    #
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that has permission to
    #            access the bot.</p>
    #
    # @option params [DataPrivacy] :data_privacy
    #   <p>Provides information on additional privacy protections Amazon Lex should
    #            use with the bot's data.</p>
    #
    # @option params [Integer] :idle_session_ttl_in_seconds
    #   <p>The time, in seconds, that Amazon Lex should keep information about a
    #            user's conversation with the bot. </p>
    #            <p>A user interaction remains active for the amount of time specified.
    #            If no conversation occurs during this time, the session expires and
    #            Amazon Lex deletes any data provided before the timeout.</p>
    #            <p>You can specify between 60 (1 minute) and 86,400 (24 hours)
    #            seconds.</p>
    #
    # @option params [Hash<String, String>] :bot_tags
    #   <p>A list of tags to add to the bot. You can only add tags when you
    #            create a bot. You can't use the <code>UpdateBot</code> operation to
    #            update tags. To update tags, use the <code>TagResource</code>
    #            operation.</p>
    #
    # @option params [Hash<String, String>] :test_bot_alias_tags
    #   <p>A list of tags to add to the test alias for a bot. You can only add
    #            tags when you create a bot. You can't use the <code>UpdateAlias</code>
    #            operation to update tags. To update tags on the test alias, use the
    #               <code>TagResource</code> operation.</p>
    #
    # @return [Types::CreateBotOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_bot(
    #     bot_name: 'botName', # required
    #     description: 'description',
    #     role_arn: 'roleArn', # required
    #     data_privacy: {
    #       child_directed: false # required
    #     }, # required
    #     idle_session_ttl_in_seconds: 1, # required
    #     bot_tags: {
    #       'key' => 'value'
    #     },
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateBotOutput
    #   resp.data.bot_id #=> String
    #   resp.data.bot_name #=> String
    #   resp.data.description #=> String
    #   resp.data.role_arn #=> String
    #   resp.data.data_privacy #=> Types::DataPrivacy
    #   resp.data.data_privacy.child_directed #=> Boolean
    #   resp.data.idle_session_ttl_in_seconds #=> Integer
    #   resp.data.bot_status #=> String, one of ["Creating", "Available", "Inactive", "Deleting", "Failed", "Versioning", "Importing"]
    #   resp.data.creation_date_time #=> Time
    #   resp.data.bot_tags #=> Hash<String, String>
    #   resp.data.bot_tags['key'] #=> String
    #   resp.data.test_bot_alias_tags #=> Hash<String, String>
    #
    def create_bot(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateBotInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateBotInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateBot
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::ConflictException, Errors::PreconditionFailedException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::CreateBot
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateBot,
        stubs: @stubs,
        params_class: Params::CreateBotOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_bot
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an alias for the specified version of a bot. Use an alias to
    #          enable you to change the version of a bot without updating applications
    #          that use the bot.</p>
    #          <p>For example, you can create an alias called "PROD" that your
    #          applications use to call the Amazon Lex bot. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateBotAliasInput}.
    #
    # @option params [String] :bot_alias_name
    #   <p>The alias to create. The name must be unique for the bot.</p>
    #
    # @option params [String] :description
    #   <p>A description of the alias. Use this description to help identify
    #            the alias.</p>
    #
    # @option params [String] :bot_version
    #   <p>The version of the bot that this alias points to. You can use the
    #               <a href="https://docs.aws.amazon.com/lexv2/latest/dg/API_UpdateBotAlias.html">UpdateBotAlias</a> operation to change the
    #            bot version associated with the alias.</p>
    #
    # @option params [Hash<String, BotAliasLocaleSettings>] :bot_alias_locale_settings
    #   <p>Maps configuration information to a specific locale. You can use
    #            this parameter to specify a specific Lambda function to run different
    #            functions in different locales.</p>
    #
    # @option params [ConversationLogSettings] :conversation_log_settings
    #   <p>Specifies whether Amazon Lex logs text and audio for a conversation with
    #            the bot. When you enable conversation logs, text logs store text input,
    #            transcripts of audio input, and associated metadata in Amazon CloudWatch Logs. Audio
    #            logs store audio input in Amazon S3.</p>
    #
    # @option params [SentimentAnalysisSettings] :sentiment_analysis_settings
    #   <p>Determines whether Amazon Lex will use Amazon Comprehend to detect the sentiment of
    #            user utterances.</p>
    #
    # @option params [String] :bot_id
    #   <p>The unique identifier of the bot that the alias applies to.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>A list of tags to add to the bot alias. You can only add tags when
    #            you create an alias, you can't use the <code>UpdateBotAlias</code>
    #            operation to update the tags on a bot alias. To update tags, use the
    #               <code>TagResource</code> operation.</p>
    #
    # @return [Types::CreateBotAliasOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_bot_alias(
    #     bot_alias_name: 'botAliasName', # required
    #     description: 'description',
    #     bot_version: 'botVersion',
    #     bot_alias_locale_settings: {
    #       'key' => {
    #         enabled: false, # required
    #         code_hook_specification: {
    #           lambda_code_hook: {
    #             lambda_arn: 'lambdaARN', # required
    #             code_hook_interface_version: 'codeHookInterfaceVersion' # required
    #           } # required
    #         }
    #       }
    #     },
    #     conversation_log_settings: {
    #       text_log_settings: [
    #         {
    #           enabled: false, # required
    #           destination: {
    #             cloud_watch: {
    #               cloud_watch_log_group_arn: 'cloudWatchLogGroupArn', # required
    #               log_prefix: 'logPrefix' # required
    #             } # required
    #           } # required
    #         }
    #       ],
    #       audio_log_settings: [
    #         {
    #           enabled: false, # required
    #           destination: {
    #             s3_bucket: {
    #               kms_key_arn: 'kmsKeyArn',
    #               s3_bucket_arn: 's3BucketArn', # required
    #               log_prefix: 'logPrefix' # required
    #             } # required
    #           } # required
    #         }
    #       ]
    #     },
    #     sentiment_analysis_settings: {
    #       detect_sentiment: false # required
    #     },
    #     bot_id: 'botId', # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateBotAliasOutput
    #   resp.data.bot_alias_id #=> String
    #   resp.data.bot_alias_name #=> String
    #   resp.data.description #=> String
    #   resp.data.bot_version #=> String
    #   resp.data.bot_alias_locale_settings #=> Hash<String, BotAliasLocaleSettings>
    #   resp.data.bot_alias_locale_settings['key'] #=> Types::BotAliasLocaleSettings
    #   resp.data.bot_alias_locale_settings['key'].enabled #=> Boolean
    #   resp.data.bot_alias_locale_settings['key'].code_hook_specification #=> Types::CodeHookSpecification
    #   resp.data.bot_alias_locale_settings['key'].code_hook_specification.lambda_code_hook #=> Types::LambdaCodeHook
    #   resp.data.bot_alias_locale_settings['key'].code_hook_specification.lambda_code_hook.lambda_arn #=> String
    #   resp.data.bot_alias_locale_settings['key'].code_hook_specification.lambda_code_hook.code_hook_interface_version #=> String
    #   resp.data.conversation_log_settings #=> Types::ConversationLogSettings
    #   resp.data.conversation_log_settings.text_log_settings #=> Array<TextLogSetting>
    #   resp.data.conversation_log_settings.text_log_settings[0] #=> Types::TextLogSetting
    #   resp.data.conversation_log_settings.text_log_settings[0].enabled #=> Boolean
    #   resp.data.conversation_log_settings.text_log_settings[0].destination #=> Types::TextLogDestination
    #   resp.data.conversation_log_settings.text_log_settings[0].destination.cloud_watch #=> Types::CloudWatchLogGroupLogDestination
    #   resp.data.conversation_log_settings.text_log_settings[0].destination.cloud_watch.cloud_watch_log_group_arn #=> String
    #   resp.data.conversation_log_settings.text_log_settings[0].destination.cloud_watch.log_prefix #=> String
    #   resp.data.conversation_log_settings.audio_log_settings #=> Array<AudioLogSetting>
    #   resp.data.conversation_log_settings.audio_log_settings[0] #=> Types::AudioLogSetting
    #   resp.data.conversation_log_settings.audio_log_settings[0].enabled #=> Boolean
    #   resp.data.conversation_log_settings.audio_log_settings[0].destination #=> Types::AudioLogDestination
    #   resp.data.conversation_log_settings.audio_log_settings[0].destination.s3_bucket #=> Types::S3BucketLogDestination
    #   resp.data.conversation_log_settings.audio_log_settings[0].destination.s3_bucket.kms_key_arn #=> String
    #   resp.data.conversation_log_settings.audio_log_settings[0].destination.s3_bucket.s3_bucket_arn #=> String
    #   resp.data.conversation_log_settings.audio_log_settings[0].destination.s3_bucket.log_prefix #=> String
    #   resp.data.sentiment_analysis_settings #=> Types::SentimentAnalysisSettings
    #   resp.data.sentiment_analysis_settings.detect_sentiment #=> Boolean
    #   resp.data.bot_alias_status #=> String, one of ["Creating", "Available", "Deleting", "Failed"]
    #   resp.data.bot_id #=> String
    #   resp.data.creation_date_time #=> Time
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def create_bot_alias(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateBotAliasInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateBotAliasInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateBotAlias
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::ConflictException, Errors::PreconditionFailedException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::CreateBotAlias
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateBotAlias,
        stubs: @stubs,
        params_class: Params::CreateBotAliasOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_bot_alias
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a locale in the bot. The locale contains the intents and
    #          slot types that the bot uses in conversations with users in the
    #          specified language and locale. You must add a locale to a bot before
    #          you can add intents and slot types to the bot.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateBotLocaleInput}.
    #
    # @option params [String] :bot_id
    #   <p>The identifier of the bot to create the locale for.</p>
    #
    # @option params [String] :bot_version
    #   <p>The version of the bot to create the locale for. This can only be
    #            the draft version of the bot.</p>
    #
    # @option params [String] :locale_id
    #   <p>The identifier of the language and locale that the bot will be used
    #            in. The string must match one of the supported locales. All of the
    #            intents, slot types, and slots used in the bot must have the same
    #            locale. For more information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>.</p>
    #
    # @option params [String] :description
    #   <p>A description of the bot locale. Use this to help identify the bot
    #            locale in lists.</p>
    #
    # @option params [Float] :nlu_intent_confidence_threshold
    #   <p>Determines the threshold where Amazon Lex will insert the
    #               <code>AMAZON.FallbackIntent</code>,
    #               <code>AMAZON.KendraSearchIntent</code>, or both when returning
    #            alternative intents. <code>AMAZON.FallbackIntent</code> and
    #               <code>AMAZON.KendraSearchIntent</code> are only inserted if they are
    #            configured for the bot.</p>
    #            <p>For example, suppose a bot is configured with the confidence
    #            threshold of 0.80 and the <code>AMAZON.FallbackIntent</code>. Amazon Lex
    #            returns three alternative intents with the following confidence scores:
    #            IntentA (0.70), IntentB (0.60), IntentC (0.50). The response from the
    #               <code>RecognizeText</code> operation would be:</p>
    #            <ul>
    #               <li>
    #                  <p>AMAZON.FallbackIntent</p>
    #               </li>
    #               <li>
    #                  <p>IntentA</p>
    #               </li>
    #               <li>
    #                  <p>IntentB</p>
    #               </li>
    #               <li>
    #                  <p>IntentC</p>
    #               </li>
    #            </ul>
    #
    # @option params [VoiceSettings] :voice_settings
    #   <p>The Amazon Polly voice ID that Amazon Lex uses for voice interaction with the
    #            user.</p>
    #
    # @return [Types::CreateBotLocaleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_bot_locale(
    #     bot_id: 'botId', # required
    #     bot_version: 'botVersion', # required
    #     locale_id: 'localeId', # required
    #     description: 'description',
    #     nlu_intent_confidence_threshold: 1.0, # required
    #     voice_settings: {
    #       voice_id: 'voiceId', # required
    #       engine: 'standard' # accepts ["standard", "neural"]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateBotLocaleOutput
    #   resp.data.bot_id #=> String
    #   resp.data.bot_version #=> String
    #   resp.data.locale_name #=> String
    #   resp.data.locale_id #=> String
    #   resp.data.description #=> String
    #   resp.data.nlu_intent_confidence_threshold #=> Float
    #   resp.data.voice_settings #=> Types::VoiceSettings
    #   resp.data.voice_settings.voice_id #=> String
    #   resp.data.voice_settings.engine #=> String, one of ["standard", "neural"]
    #   resp.data.bot_locale_status #=> String, one of ["Creating", "Building", "Built", "ReadyExpressTesting", "Failed", "Deleting", "NotBuilt", "Importing", "Processing"]
    #   resp.data.creation_date_time #=> Time
    #
    def create_bot_locale(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateBotLocaleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateBotLocaleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateBotLocale
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::ConflictException, Errors::PreconditionFailedException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::CreateBotLocale
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateBotLocale,
        stubs: @stubs,
        params_class: Params::CreateBotLocaleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_bot_locale
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new version of the bot based on the <code>DRAFT</code>
    #          version. If the <code>DRAFT</code> version of this resource hasn't
    #          changed since you created the last version, Amazon Lex doesn't create a new
    #          version, it returns the last created version.</p>
    #          <p>When you create the first version of a bot, Amazon Lex sets the version
    #          to 1. Subsequent versions increment by 1.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateBotVersionInput}.
    #
    # @option params [String] :bot_id
    #   <p>The identifier of the bot to create the version for.</p>
    #
    # @option params [String] :description
    #   <p>A description of the version. Use the description to help identify
    #            the version in lists.</p>
    #
    # @option params [Hash<String, BotVersionLocaleDetails>] :bot_version_locale_specification
    #   <p>Specifies the locales that Amazon Lex adds to this version. You can
    #            choose the <code>Draft</code> version or any other previously published
    #            version for each locale. When you specify a source version, the locale
    #            data is copied from the source version to the new version.</p>
    #
    # @return [Types::CreateBotVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_bot_version(
    #     bot_id: 'botId', # required
    #     description: 'description',
    #     bot_version_locale_specification: {
    #       'key' => {
    #         source_bot_version: 'sourceBotVersion' # required
    #       }
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateBotVersionOutput
    #   resp.data.bot_id #=> String
    #   resp.data.description #=> String
    #   resp.data.bot_version #=> String
    #   resp.data.bot_version_locale_specification #=> Hash<String, BotVersionLocaleDetails>
    #   resp.data.bot_version_locale_specification['key'] #=> Types::BotVersionLocaleDetails
    #   resp.data.bot_version_locale_specification['key'].source_bot_version #=> String
    #   resp.data.bot_status #=> String, one of ["Creating", "Available", "Inactive", "Deleting", "Failed", "Versioning", "Importing"]
    #   resp.data.creation_date_time #=> Time
    #
    def create_bot_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateBotVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateBotVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateBotVersion
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::ConflictException, Errors::PreconditionFailedException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::CreateBotVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateBotVersion,
        stubs: @stubs,
        params_class: Params::CreateBotVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_bot_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a zip archive containing the contents of a bot or a bot
    #          locale. The archive contains a directory structure that contains JSON
    #          files that define the bot.</p>
    #          <p>You can create an archive that contains the complete definition of a
    #          bot, or you can specify that the archive contain only the definition of
    #          a single bot locale.</p>
    #          <p>For more information about exporting bots, and about the structure
    #          of the export archive, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/importing-exporting.html"> Importing and
    #             exporting bots </a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::CreateExportInput}.
    #
    # @option params [ExportResourceSpecification] :resource_specification
    #   <p>Specifies the type of resource to export, either a bot or a bot
    #            locale. You can only specify one type of resource to export.</p>
    #
    # @option params [String] :file_format
    #   <p>The file format of the bot or bot locale definition files.</p>
    #
    # @option params [String] :file_password
    #   <p>An password to use to encrypt the exported archive. Using a password
    #            is optional, but you should encrypt the archive to protect the data in
    #            transit between Amazon Lex and your local computer.</p>
    #
    # @return [Types::CreateExportOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_export(
    #     resource_specification: {
    #       bot_export_specification: {
    #         bot_id: 'botId', # required
    #         bot_version: 'botVersion' # required
    #       },
    #       bot_locale_export_specification: {
    #         bot_id: 'botId', # required
    #         bot_version: 'botVersion', # required
    #         locale_id: 'localeId' # required
    #       },
    #       custom_vocabulary_export_specification: {
    #         bot_id: 'botId', # required
    #         bot_version: 'botVersion', # required
    #         locale_id: 'localeId' # required
    #       }
    #     }, # required
    #     file_format: 'LexJson', # required - accepts ["LexJson", "TSV"]
    #     file_password: 'filePassword'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateExportOutput
    #   resp.data.export_id #=> String
    #   resp.data.resource_specification #=> Types::ExportResourceSpecification
    #   resp.data.resource_specification.bot_export_specification #=> Types::BotExportSpecification
    #   resp.data.resource_specification.bot_export_specification.bot_id #=> String
    #   resp.data.resource_specification.bot_export_specification.bot_version #=> String
    #   resp.data.resource_specification.bot_locale_export_specification #=> Types::BotLocaleExportSpecification
    #   resp.data.resource_specification.bot_locale_export_specification.bot_id #=> String
    #   resp.data.resource_specification.bot_locale_export_specification.bot_version #=> String
    #   resp.data.resource_specification.bot_locale_export_specification.locale_id #=> String
    #   resp.data.resource_specification.custom_vocabulary_export_specification #=> Types::CustomVocabularyExportSpecification
    #   resp.data.resource_specification.custom_vocabulary_export_specification.bot_id #=> String
    #   resp.data.resource_specification.custom_vocabulary_export_specification.bot_version #=> String
    #   resp.data.resource_specification.custom_vocabulary_export_specification.locale_id #=> String
    #   resp.data.file_format #=> String, one of ["LexJson", "TSV"]
    #   resp.data.export_status #=> String, one of ["InProgress", "Completed", "Failed", "Deleting"]
    #   resp.data.creation_date_time #=> Time
    #
    def create_export(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateExportInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateExportInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateExport
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::CreateExport
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateExport,
        stubs: @stubs,
        params_class: Params::CreateExportOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_export
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an intent.</p>
    #          <p>To define the interaction between the user and your bot, you define
    #          one or more intents. For example, for a pizza ordering bot you would
    #          create an <code>OrderPizza</code> intent.</p>
    #          <p>When you create an intent, you must provide a name. You can
    #          optionally provide the following:</p>
    #          <ul>
    #             <li>
    #                <p>Sample utterances. For example, "I want to order a pizza" and
    #                "Can I order a pizza." You can't provide utterances for built-in
    #                intents.</p>
    #             </li>
    #             <li>
    #                <p>Information to be gathered. You specify slots for the
    #                information that you bot requests from the user. You can specify
    #                standard slot types, such as date and time, or custom slot types
    #                for your application.</p>
    #             </li>
    #             <li>
    #                <p>How the intent is fulfilled. You can provide a Lambda function
    #                or configure the intent to return the intent information to your
    #                client application. If you use a Lambda function, Amazon Lex invokes
    #                the function when all of the intent information is
    #                available.</p>
    #             </li>
    #             <li>
    #                <p>A confirmation prompt to send to the user to confirm an
    #                intent. For example, "Shall I order your pizza?"</p>
    #             </li>
    #             <li>
    #                <p>A conclusion statement to send to the user after the intent is
    #                fulfilled. For example, "I ordered your pizza."</p>
    #             </li>
    #             <li>
    #                <p>A follow-up prompt that asks the user for additional activity.
    #                For example, "Do you want a drink with your pizza?"</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::CreateIntentInput}.
    #
    # @option params [String] :intent_name
    #   <p>The name of the intent. Intent names must be unique in the locale
    #            that contains the intent and cannot match the name of any built-in
    #            intent.</p>
    #
    # @option params [String] :description
    #   <p>A description of the intent. Use the description to help identify
    #            the intent in lists.</p>
    #
    # @option params [String] :parent_intent_signature
    #   <p>A unique identifier for the built-in intent to base this intent
    #            on.</p>
    #
    # @option params [Array<SampleUtterance>] :sample_utterances
    #   <p>An array of strings that a user might say to signal the intent. For
    #            example, "I want a pizza", or "I want a {PizzaSize} pizza". </p>
    #            <p>In an utterance, slot names are enclosed in curly braces ("{", "}")
    #            to indicate where they should be displayed in the utterance shown to
    #            the user.. </p>
    #
    # @option params [DialogCodeHookSettings] :dialog_code_hook
    #   <p>Specifies that Amazon Lex invokes the alias Lambda function for each user
    #            input. You can invoke this Lambda function to personalize user
    #            interaction.</p>
    #            <p>For example, suppose that your bot determines that the user's name
    #            is John. You Lambda function might retrieve John's information from a
    #            backend database and prepopulate some of the values. For example, if
    #            you find that John is gluten intolerant, you might set the
    #            corresponding intent slot, <code>glutenIntolerant</code> to
    #               <code>true</code>. You might find John's phone number and set the
    #            corresponding session attribute.</p>
    #
    # @option params [FulfillmentCodeHookSettings] :fulfillment_code_hook
    #   <p>Specifies that Amazon Lex invokes the alias Lambda function when the
    #            intent is ready for fulfillment. You can invoke this function to
    #            complete the bot's transaction with the user.</p>
    #            <p>For example, in a pizza ordering bot, the Lambda function can look up
    #            the closest pizza restaurant to the customer's location and then place
    #            an order on the customer's behalf.</p>
    #
    # @option params [IntentConfirmationSetting] :intent_confirmation_setting
    #   <p>Provides prompts that Amazon Lex sends to the user to confirm the
    #            completion of an intent. If the user answers "no," the settings contain
    #            a statement that is sent to the user to end the intent.</p>
    #
    # @option params [IntentClosingSetting] :intent_closing_setting
    #   <p>Sets the response that Amazon Lex sends to the user when the intent is
    #            closed.</p>
    #
    # @option params [Array<InputContext>] :input_contexts
    #   <p>A list of contexts that must be active for this intent to be
    #            considered by Amazon Lex.</p>
    #            <p>When an intent has an input context list, Amazon Lex only considers using
    #            the intent in an interaction with the user when the specified contexts
    #            are included in the active context list for the session. If the
    #            contexts are not active, then Amazon Lex will not use the intent.</p>
    #            <p>A context can be automatically activated using the
    #               <code>outputContexts</code> property or it can be set at
    #            runtime.</p>
    #            <p> For example, if there are two intents with different input contexts
    #            that respond to the same utterances, only the intent with the active
    #            context will respond.</p>
    #            <p>An intent may have up to 5 input contexts. If an intent has multiple
    #            input contexts, all of the contexts must be active to consider the
    #            intent.</p>
    #
    # @option params [Array<OutputContext>] :output_contexts
    #   <p>A lists of contexts that the intent activates when it is
    #            fulfilled.</p>
    #            <p>You can use an output context to indicate the intents that Amazon Lex
    #            should consider for the next turn of the conversation with a customer. </p>
    #            <p>When you use the <code>outputContextsList</code> property, all of
    #            the contexts specified in the list are activated when the intent is
    #            fulfilled. You can set up to 10 output contexts. You can also set the
    #            number of conversation turns that the context should be active, or the
    #            length of time that the context should be active.</p>
    #
    # @option params [KendraConfiguration] :kendra_configuration
    #   <p>Configuration information required to use the
    #               <code>AMAZON.KendraSearchIntent</code> intent to connect to an Amazon Kendra
    #            index. The <code>AMAZON.KendraSearchIntent</code> intent is called when
    #            Amazon Lex can't determine another intent to invoke.</p>
    #
    # @option params [String] :bot_id
    #   <p>The identifier of the bot associated with this intent.</p>
    #
    # @option params [String] :bot_version
    #   <p>The identifier of the version of the bot associated with this
    #            intent.</p>
    #
    # @option params [String] :locale_id
    #   <p>The identifier of the language and locale where this intent is used.
    #            All of the bots, slot types, and slots used by the intent must have the
    #            same locale. For more information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>.</p>
    #
    # @return [Types::CreateIntentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_intent(
    #     intent_name: 'intentName', # required
    #     description: 'description',
    #     parent_intent_signature: 'parentIntentSignature',
    #     sample_utterances: [
    #       {
    #         utterance: 'utterance' # required
    #       }
    #     ],
    #     dialog_code_hook: {
    #       enabled: false # required
    #     },
    #     fulfillment_code_hook: {
    #       enabled: false, # required
    #       post_fulfillment_status_specification: {
    #         success_response: {
    #           message_groups: [
    #             {
    #               message: {
    #                 plain_text_message: {
    #                   value: 'value' # required
    #                 },
    #                 custom_payload: {
    #                   value: 'value' # required
    #                 },
    #                 ssml_message: {
    #                   value: 'value' # required
    #                 },
    #                 image_response_card: {
    #                   title: 'title', # required
    #                   subtitle: 'subtitle',
    #                   image_url: 'imageUrl',
    #                   buttons: [
    #                     {
    #                       text: 'text', # required
    #                       value: 'value' # required
    #                     }
    #                   ]
    #                 }
    #               }, # required
    #             }
    #           ], # required
    #           allow_interrupt: false
    #         },
    #       },
    #       fulfillment_updates_specification: {
    #         active: false, # required
    #         start_response: {
    #           delay_in_seconds: 1, # required
    #           allow_interrupt: false
    #         },
    #         update_response: {
    #           frequency_in_seconds: 1, # required
    #           allow_interrupt: false
    #         },
    #         timeout_in_seconds: 1
    #       }
    #     },
    #     intent_confirmation_setting: {
    #       prompt_specification: {
    #         max_retries: 1, # required
    #         allow_interrupt: false
    #       }, # required
    #       active: false
    #     },
    #     intent_closing_setting: {
    #       active: false
    #     },
    #     input_contexts: [
    #       {
    #         name: 'name' # required
    #       }
    #     ],
    #     output_contexts: [
    #       {
    #         name: 'name', # required
    #         time_to_live_in_seconds: 1, # required
    #         turns_to_live: 1 # required
    #       }
    #     ],
    #     kendra_configuration: {
    #       kendra_index: 'kendraIndex', # required
    #       query_filter_string_enabled: false,
    #       query_filter_string: 'queryFilterString'
    #     },
    #     bot_id: 'botId', # required
    #     bot_version: 'botVersion', # required
    #     locale_id: 'localeId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateIntentOutput
    #   resp.data.intent_id #=> String
    #   resp.data.intent_name #=> String
    #   resp.data.description #=> String
    #   resp.data.parent_intent_signature #=> String
    #   resp.data.sample_utterances #=> Array<SampleUtterance>
    #   resp.data.sample_utterances[0] #=> Types::SampleUtterance
    #   resp.data.sample_utterances[0].utterance #=> String
    #   resp.data.dialog_code_hook #=> Types::DialogCodeHookSettings
    #   resp.data.dialog_code_hook.enabled #=> Boolean
    #   resp.data.fulfillment_code_hook #=> Types::FulfillmentCodeHookSettings
    #   resp.data.fulfillment_code_hook.enabled #=> Boolean
    #   resp.data.fulfillment_code_hook.post_fulfillment_status_specification #=> Types::PostFulfillmentStatusSpecification
    #   resp.data.fulfillment_code_hook.post_fulfillment_status_specification.success_response #=> Types::ResponseSpecification
    #   resp.data.fulfillment_code_hook.post_fulfillment_status_specification.success_response.message_groups #=> Array<MessageGroup>
    #   resp.data.fulfillment_code_hook.post_fulfillment_status_specification.success_response.message_groups[0] #=> Types::MessageGroup
    #   resp.data.fulfillment_code_hook.post_fulfillment_status_specification.success_response.message_groups[0].message #=> Types::Message
    #   resp.data.fulfillment_code_hook.post_fulfillment_status_specification.success_response.message_groups[0].message.plain_text_message #=> Types::PlainTextMessage
    #   resp.data.fulfillment_code_hook.post_fulfillment_status_specification.success_response.message_groups[0].message.plain_text_message.value #=> String
    #   resp.data.fulfillment_code_hook.post_fulfillment_status_specification.success_response.message_groups[0].message.custom_payload #=> Types::CustomPayload
    #   resp.data.fulfillment_code_hook.post_fulfillment_status_specification.success_response.message_groups[0].message.custom_payload.value #=> String
    #   resp.data.fulfillment_code_hook.post_fulfillment_status_specification.success_response.message_groups[0].message.ssml_message #=> Types::SSMLMessage
    #   resp.data.fulfillment_code_hook.post_fulfillment_status_specification.success_response.message_groups[0].message.ssml_message.value #=> String
    #   resp.data.fulfillment_code_hook.post_fulfillment_status_specification.success_response.message_groups[0].message.image_response_card #=> Types::ImageResponseCard
    #   resp.data.fulfillment_code_hook.post_fulfillment_status_specification.success_response.message_groups[0].message.image_response_card.title #=> String
    #   resp.data.fulfillment_code_hook.post_fulfillment_status_specification.success_response.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.data.fulfillment_code_hook.post_fulfillment_status_specification.success_response.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.data.fulfillment_code_hook.post_fulfillment_status_specification.success_response.message_groups[0].message.image_response_card.buttons #=> Array<Button>
    #   resp.data.fulfillment_code_hook.post_fulfillment_status_specification.success_response.message_groups[0].message.image_response_card.buttons[0] #=> Types::Button
    #   resp.data.fulfillment_code_hook.post_fulfillment_status_specification.success_response.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.data.fulfillment_code_hook.post_fulfillment_status_specification.success_response.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.data.fulfillment_code_hook.post_fulfillment_status_specification.success_response.message_groups[0].variations #=> Array<Message>
    #   resp.data.fulfillment_code_hook.post_fulfillment_status_specification.success_response.allow_interrupt #=> Boolean
    #   resp.data.fulfillment_code_hook.post_fulfillment_status_specification.failure_response #=> Types::ResponseSpecification
    #   resp.data.fulfillment_code_hook.post_fulfillment_status_specification.timeout_response #=> Types::ResponseSpecification
    #   resp.data.fulfillment_code_hook.fulfillment_updates_specification #=> Types::FulfillmentUpdatesSpecification
    #   resp.data.fulfillment_code_hook.fulfillment_updates_specification.active #=> Boolean
    #   resp.data.fulfillment_code_hook.fulfillment_updates_specification.start_response #=> Types::FulfillmentStartResponseSpecification
    #   resp.data.fulfillment_code_hook.fulfillment_updates_specification.start_response.delay_in_seconds #=> Integer
    #   resp.data.fulfillment_code_hook.fulfillment_updates_specification.start_response.message_groups #=> Array<MessageGroup>
    #   resp.data.fulfillment_code_hook.fulfillment_updates_specification.start_response.allow_interrupt #=> Boolean
    #   resp.data.fulfillment_code_hook.fulfillment_updates_specification.update_response #=> Types::FulfillmentUpdateResponseSpecification
    #   resp.data.fulfillment_code_hook.fulfillment_updates_specification.update_response.frequency_in_seconds #=> Integer
    #   resp.data.fulfillment_code_hook.fulfillment_updates_specification.update_response.message_groups #=> Array<MessageGroup>
    #   resp.data.fulfillment_code_hook.fulfillment_updates_specification.update_response.allow_interrupt #=> Boolean
    #   resp.data.fulfillment_code_hook.fulfillment_updates_specification.timeout_in_seconds #=> Integer
    #   resp.data.intent_confirmation_setting #=> Types::IntentConfirmationSetting
    #   resp.data.intent_confirmation_setting.prompt_specification #=> Types::PromptSpecification
    #   resp.data.intent_confirmation_setting.prompt_specification.message_groups #=> Array<MessageGroup>
    #   resp.data.intent_confirmation_setting.prompt_specification.max_retries #=> Integer
    #   resp.data.intent_confirmation_setting.prompt_specification.allow_interrupt #=> Boolean
    #   resp.data.intent_confirmation_setting.declination_response #=> Types::ResponseSpecification
    #   resp.data.intent_confirmation_setting.active #=> Boolean
    #   resp.data.intent_closing_setting #=> Types::IntentClosingSetting
    #   resp.data.intent_closing_setting.closing_response #=> Types::ResponseSpecification
    #   resp.data.intent_closing_setting.active #=> Boolean
    #   resp.data.input_contexts #=> Array<InputContext>
    #   resp.data.input_contexts[0] #=> Types::InputContext
    #   resp.data.input_contexts[0].name #=> String
    #   resp.data.output_contexts #=> Array<OutputContext>
    #   resp.data.output_contexts[0] #=> Types::OutputContext
    #   resp.data.output_contexts[0].name #=> String
    #   resp.data.output_contexts[0].time_to_live_in_seconds #=> Integer
    #   resp.data.output_contexts[0].turns_to_live #=> Integer
    #   resp.data.kendra_configuration #=> Types::KendraConfiguration
    #   resp.data.kendra_configuration.kendra_index #=> String
    #   resp.data.kendra_configuration.query_filter_string_enabled #=> Boolean
    #   resp.data.kendra_configuration.query_filter_string #=> String
    #   resp.data.bot_id #=> String
    #   resp.data.bot_version #=> String
    #   resp.data.locale_id #=> String
    #   resp.data.creation_date_time #=> Time
    #
    def create_intent(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateIntentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateIntentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateIntent
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::PreconditionFailedException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::CreateIntent
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateIntent,
        stubs: @stubs,
        params_class: Params::CreateIntentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_intent
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new resource policy with the specified policy
    #          statements.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateResourcePolicyInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the bot or bot alias that the
    #            resource policy is attached to.</p>
    #
    # @option params [String] :policy
    #   <p>A resource policy to add to the resource. The policy is a JSON
    #            structure that contains one or more statements that define the policy.
    #            The policy must follow the IAM syntax. For more information about the
    #            contents of a JSON policy document, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies.html"> IAM JSON policy
    #               reference </a>. </p>
    #            <p>If the policy isn't valid, Amazon Lex returns a validation
    #            exception.</p>
    #
    # @return [Types::CreateResourcePolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_resource_policy(
    #     resource_arn: 'resourceArn', # required
    #     policy: 'policy' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateResourcePolicyOutput
    #   resp.data.resource_arn #=> String
    #   resp.data.revision_id #=> String
    #
    def create_resource_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateResourcePolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateResourcePolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateResourcePolicy
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::PreconditionFailedException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::CreateResourcePolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateResourcePolicy,
        stubs: @stubs,
        params_class: Params::CreateResourcePolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_resource_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds a new resource policy statement to a bot or bot alias. If a
    #          resource policy exists, the statement is added to the current resource
    #          policy. If a policy doesn't exist, a new policy is created.</p>
    #          <p>You can't create a resource policy statement that allows
    #          cross-account access.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateResourcePolicyStatementInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the bot or bot alias that the
    #            resource policy is attached to.</p>
    #
    # @option params [String] :statement_id
    #   <p>The name of the statement. The ID is the same as the
    #               <code>Sid</code> IAM property. The statement name must be unique
    #            within the policy. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_sid.html">IAM
    #               JSON policy elements: Sid</a>. </p>
    #
    # @option params [String] :effect
    #   <p>Determines whether the statement allows or denies access to the
    #            resource.</p>
    #
    # @option params [Array<Principal>] :principal
    #   <p>An IAM principal, such as an IAM users, IAM roles, or AWS services
    #            that is allowed or denied access to a resource. For more information,
    #            see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html">AWS JSON policy elements: Principal</a>.</p>
    #
    # @option params [Array<String>] :action
    #   <p>The Amazon Lex action that this policy either allows or denies. The
    #            action must apply to the resource type of the specified ARN. For more
    #            information, see <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonlexv2.html">
    #               Actions, resources, and condition keys for Amazon Lex V2</a>.</p>
    #
    # @option params [Hash<String, Hash<String, String>>] :condition
    #   <p>Specifies a condition when the policy is in effect. If the principal
    #            of the policy is a service principal, you must provide two condition
    #            blocks, one with a SourceAccount global condition key and one with a
    #            SourceArn global condition key.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_condition.html">IAM JSON policy elements: Condition </a>.</p>
    #
    # @option params [String] :expected_revision_id
    #   <p>The identifier of the revision of the policy to edit. If this
    #            revision ID doesn't match the current revision ID, Amazon Lex throws an
    #            exception.</p>
    #            <p>If you don't specify a revision, Amazon Lex overwrites the contents of
    #            the policy with the new values.</p>
    #
    # @return [Types::CreateResourcePolicyStatementOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_resource_policy_statement(
    #     resource_arn: 'resourceArn', # required
    #     statement_id: 'statementId', # required
    #     effect: 'Allow', # required - accepts ["Allow", "Deny"]
    #     principal: [
    #       {
    #         service: 'service',
    #         arn: 'arn'
    #       }
    #     ], # required
    #     action: [
    #       'member'
    #     ], # required
    #     condition: {
    #       'key' => {
    #         'key' => 'value'
    #       }
    #     },
    #     expected_revision_id: 'expectedRevisionId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateResourcePolicyStatementOutput
    #   resp.data.resource_arn #=> String
    #   resp.data.revision_id #=> String
    #
    def create_resource_policy_statement(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateResourcePolicyStatementInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateResourcePolicyStatementInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateResourcePolicyStatement
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::PreconditionFailedException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::CreateResourcePolicyStatement
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateResourcePolicyStatement,
        stubs: @stubs,
        params_class: Params::CreateResourcePolicyStatementOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_resource_policy_statement
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a slot in an intent. A slot is a variable needed to fulfill
    #          an intent. For example, an <code>OrderPizza</code> intent might need
    #          slots for size, crust, and number of pizzas. For each slot, you define
    #          one or more utterances that Amazon Lex uses to elicit a response from the
    #          user. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateSlotInput}.
    #
    # @option params [String] :slot_name
    #   <p>The name of the slot. Slot names must be unique within the bot that
    #            contains the slot.</p>
    #
    # @option params [String] :description
    #   <p>A description of the slot. Use this to help identify the slot in
    #            lists.</p>
    #
    # @option params [String] :slot_type_id
    #   <p>The unique identifier for the slot type associated with this slot.
    #            The slot type determines the values that can be entered into the
    #            slot.</p>
    #
    # @option params [SlotValueElicitationSetting] :value_elicitation_setting
    #   <p>Specifies prompts that Amazon Lex sends to the user to elicit a response
    #            that provides the value for the slot. </p>
    #
    # @option params [ObfuscationSetting] :obfuscation_setting
    #   <p>Determines how slot values are used in Amazon CloudWatch logs. If the value of
    #            the <code>obfuscationSetting</code> parameter is
    #               <code>DefaultObfuscation</code>, slot values are obfuscated in the
    #            log output. If the value is <code>None</code>, the actual value is
    #            present in the log output.</p>
    #            <p>The default is to obfuscate values in the CloudWatch logs.</p>
    #
    # @option params [String] :bot_id
    #   <p>The identifier of the bot associated with the slot.</p>
    #
    # @option params [String] :bot_version
    #   <p>The version of the bot associated with the slot.</p>
    #
    # @option params [String] :locale_id
    #   <p>The identifier of the language and locale that the slot will be used
    #            in. The string must match one of the supported locales. All of the
    #            bots, intents, slot types used by the slot must have the same locale.
    #            For more information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>.</p>
    #
    # @option params [String] :intent_id
    #   <p>The identifier of the intent that contains the slot.</p>
    #
    # @option params [MultipleValuesSetting] :multiple_values_setting
    #   <p>Indicates whether the slot returns multiple values in one response.
    #            Multi-value slots are only available in the en-US locale. If you set
    #            this value to <code>true</code> in any other locale, Amazon Lex throws a
    #               <code>ValidationException</code>. </p>
    #            <p>If the <code>multipleValuesSetting</code> is not set, the default
    #            value is <code>false</code>.</p>
    #
    # @return [Types::CreateSlotOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_slot(
    #     slot_name: 'slotName', # required
    #     description: 'description',
    #     slot_type_id: 'slotTypeId',
    #     value_elicitation_setting: {
    #       default_value_specification: {
    #         default_value_list: [
    #           {
    #             default_value: 'defaultValue' # required
    #           }
    #         ] # required
    #       },
    #       slot_constraint: 'Required', # required - accepts ["Required", "Optional"]
    #       prompt_specification: {
    #         message_groups: [
    #           {
    #             message: {
    #               plain_text_message: {
    #                 value: 'value' # required
    #               },
    #               custom_payload: {
    #                 value: 'value' # required
    #               },
    #               ssml_message: {
    #                 value: 'value' # required
    #               },
    #               image_response_card: {
    #                 title: 'title', # required
    #                 subtitle: 'subtitle',
    #                 image_url: 'imageUrl',
    #                 buttons: [
    #                   {
    #                     text: 'text', # required
    #                     value: 'value' # required
    #                   }
    #                 ]
    #               }
    #             }, # required
    #           }
    #         ], # required
    #         max_retries: 1, # required
    #         allow_interrupt: false
    #       },
    #       sample_utterances: [
    #         {
    #           utterance: 'utterance' # required
    #         }
    #       ],
    #       wait_and_continue_specification: {
    #         waiting_response: {
    #           allow_interrupt: false
    #         }, # required
    #         still_waiting_response: {
    #           frequency_in_seconds: 1, # required
    #           timeout_in_seconds: 1, # required
    #           allow_interrupt: false
    #         },
    #         active: false
    #       }
    #     }, # required
    #     obfuscation_setting: {
    #       obfuscation_setting_type: 'None' # required - accepts ["None", "DefaultObfuscation"]
    #     },
    #     bot_id: 'botId', # required
    #     bot_version: 'botVersion', # required
    #     locale_id: 'localeId', # required
    #     intent_id: 'intentId', # required
    #     multiple_values_setting: {
    #       allow_multiple_values: false
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateSlotOutput
    #   resp.data.slot_id #=> String
    #   resp.data.slot_name #=> String
    #   resp.data.description #=> String
    #   resp.data.slot_type_id #=> String
    #   resp.data.value_elicitation_setting #=> Types::SlotValueElicitationSetting
    #   resp.data.value_elicitation_setting.default_value_specification #=> Types::SlotDefaultValueSpecification
    #   resp.data.value_elicitation_setting.default_value_specification.default_value_list #=> Array<SlotDefaultValue>
    #   resp.data.value_elicitation_setting.default_value_specification.default_value_list[0] #=> Types::SlotDefaultValue
    #   resp.data.value_elicitation_setting.default_value_specification.default_value_list[0].default_value #=> String
    #   resp.data.value_elicitation_setting.slot_constraint #=> String, one of ["Required", "Optional"]
    #   resp.data.value_elicitation_setting.prompt_specification #=> Types::PromptSpecification
    #   resp.data.value_elicitation_setting.prompt_specification.message_groups #=> Array<MessageGroup>
    #   resp.data.value_elicitation_setting.prompt_specification.message_groups[0] #=> Types::MessageGroup
    #   resp.data.value_elicitation_setting.prompt_specification.message_groups[0].message #=> Types::Message
    #   resp.data.value_elicitation_setting.prompt_specification.message_groups[0].message.plain_text_message #=> Types::PlainTextMessage
    #   resp.data.value_elicitation_setting.prompt_specification.message_groups[0].message.plain_text_message.value #=> String
    #   resp.data.value_elicitation_setting.prompt_specification.message_groups[0].message.custom_payload #=> Types::CustomPayload
    #   resp.data.value_elicitation_setting.prompt_specification.message_groups[0].message.custom_payload.value #=> String
    #   resp.data.value_elicitation_setting.prompt_specification.message_groups[0].message.ssml_message #=> Types::SSMLMessage
    #   resp.data.value_elicitation_setting.prompt_specification.message_groups[0].message.ssml_message.value #=> String
    #   resp.data.value_elicitation_setting.prompt_specification.message_groups[0].message.image_response_card #=> Types::ImageResponseCard
    #   resp.data.value_elicitation_setting.prompt_specification.message_groups[0].message.image_response_card.title #=> String
    #   resp.data.value_elicitation_setting.prompt_specification.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.data.value_elicitation_setting.prompt_specification.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.data.value_elicitation_setting.prompt_specification.message_groups[0].message.image_response_card.buttons #=> Array<Button>
    #   resp.data.value_elicitation_setting.prompt_specification.message_groups[0].message.image_response_card.buttons[0] #=> Types::Button
    #   resp.data.value_elicitation_setting.prompt_specification.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.data.value_elicitation_setting.prompt_specification.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.data.value_elicitation_setting.prompt_specification.message_groups[0].variations #=> Array<Message>
    #   resp.data.value_elicitation_setting.prompt_specification.max_retries #=> Integer
    #   resp.data.value_elicitation_setting.prompt_specification.allow_interrupt #=> Boolean
    #   resp.data.value_elicitation_setting.sample_utterances #=> Array<SampleUtterance>
    #   resp.data.value_elicitation_setting.sample_utterances[0] #=> Types::SampleUtterance
    #   resp.data.value_elicitation_setting.sample_utterances[0].utterance #=> String
    #   resp.data.value_elicitation_setting.wait_and_continue_specification #=> Types::WaitAndContinueSpecification
    #   resp.data.value_elicitation_setting.wait_and_continue_specification.waiting_response #=> Types::ResponseSpecification
    #   resp.data.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups #=> Array<MessageGroup>
    #   resp.data.value_elicitation_setting.wait_and_continue_specification.waiting_response.allow_interrupt #=> Boolean
    #   resp.data.value_elicitation_setting.wait_and_continue_specification.continue_response #=> Types::ResponseSpecification
    #   resp.data.value_elicitation_setting.wait_and_continue_specification.still_waiting_response #=> Types::StillWaitingResponseSpecification
    #   resp.data.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups #=> Array<MessageGroup>
    #   resp.data.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.frequency_in_seconds #=> Integer
    #   resp.data.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.timeout_in_seconds #=> Integer
    #   resp.data.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.allow_interrupt #=> Boolean
    #   resp.data.value_elicitation_setting.wait_and_continue_specification.active #=> Boolean
    #   resp.data.obfuscation_setting #=> Types::ObfuscationSetting
    #   resp.data.obfuscation_setting.obfuscation_setting_type #=> String, one of ["None", "DefaultObfuscation"]
    #   resp.data.bot_id #=> String
    #   resp.data.bot_version #=> String
    #   resp.data.locale_id #=> String
    #   resp.data.intent_id #=> String
    #   resp.data.creation_date_time #=> Time
    #   resp.data.multiple_values_setting #=> Types::MultipleValuesSetting
    #   resp.data.multiple_values_setting.allow_multiple_values #=> Boolean
    #
    def create_slot(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateSlotInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateSlotInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateSlot
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::PreconditionFailedException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::CreateSlot
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateSlot,
        stubs: @stubs,
        params_class: Params::CreateSlotOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_slot
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a custom slot type</p>
    #          <p> To create a custom slot type, specify a name for the slot type and
    #          a set of enumeration values, the values that a slot of this type can
    #          assume. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateSlotTypeInput}.
    #
    # @option params [String] :slot_type_name
    #   <p>The name for the slot. A slot type name must be unique within the
    #            account.</p>
    #
    # @option params [String] :description
    #   <p>A description of the slot type. Use the description to help identify
    #            the slot type in lists.</p>
    #
    # @option params [Array<SlotTypeValue>] :slot_type_values
    #   <p>A list of <code>SlotTypeValue</code> objects that defines the values
    #            that the slot type can take. Each value can have a list of synonyms,
    #            additional values that help train the machine learning model about the
    #            values that it resolves for a slot.</p>
    #
    # @option params [SlotValueSelectionSetting] :value_selection_setting
    #   <p>Determines the strategy that Amazon Lex uses to select a value from the
    #            list of possible values. The field can be set to one of the following
    #            values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>OriginalValue</code> - Returns the value entered by the
    #                  user, if the user value is similar to the slot value.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TopResolution</code> - If there is a resolution list for
    #                  the slot, return the first value in the resolution list. If there
    #                  is no resolution list, return null.</p>
    #               </li>
    #            </ul>
    #            <p>If you don't specify the <code>valueSelectionSetting</code>
    #            parameter, the default is <code>OriginalValue</code>.</p>
    #
    # @option params [String] :parent_slot_type_signature
    #   <p>The built-in slot type used as a parent of this slot type. When you
    #            define a parent slot type, the new slot type has the configuration of
    #            the parent slot type.</p>
    #            <p>Only <code>AMAZON.AlphaNumeric</code> is supported.</p>
    #
    # @option params [String] :bot_id
    #   <p>The identifier of the bot associated with this slot type.</p>
    #
    # @option params [String] :bot_version
    #   <p>The identifier of the bot version associated with this slot
    #            type.</p>
    #
    # @option params [String] :locale_id
    #   <p>The identifier of the language and locale that the slot type will be
    #            used in. The string must match one of the supported locales. All of the
    #            bots, intents, and slots used by the slot type must have the same
    #            locale. For more information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>.</p>
    #
    # @option params [ExternalSourceSetting] :external_source_setting
    #   <p>Sets the type of external information used to create the slot
    #            type.</p>
    #
    # @return [Types::CreateSlotTypeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_slot_type(
    #     slot_type_name: 'slotTypeName', # required
    #     description: 'description',
    #     slot_type_values: [
    #       {
    #         sample_value: {
    #           value: 'value' # required
    #         },
    #       }
    #     ],
    #     value_selection_setting: {
    #       resolution_strategy: 'OriginalValue', # required - accepts ["OriginalValue", "TopResolution"]
    #       regex_filter: {
    #         pattern: 'pattern' # required
    #       },
    #       advanced_recognition_setting: {
    #         audio_recognition_strategy: 'UseSlotValuesAsCustomVocabulary' # accepts ["UseSlotValuesAsCustomVocabulary"]
    #       }
    #     },
    #     parent_slot_type_signature: 'parentSlotTypeSignature',
    #     bot_id: 'botId', # required
    #     bot_version: 'botVersion', # required
    #     locale_id: 'localeId', # required
    #     external_source_setting: {
    #       grammar_slot_type_setting: {
    #         source: {
    #           s3_bucket_name: 's3BucketName', # required
    #           s3_object_key: 's3ObjectKey', # required
    #           kms_key_arn: 'kmsKeyArn'
    #         }
    #       }
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateSlotTypeOutput
    #   resp.data.slot_type_id #=> String
    #   resp.data.slot_type_name #=> String
    #   resp.data.description #=> String
    #   resp.data.slot_type_values #=> Array<SlotTypeValue>
    #   resp.data.slot_type_values[0] #=> Types::SlotTypeValue
    #   resp.data.slot_type_values[0].sample_value #=> Types::SampleValue
    #   resp.data.slot_type_values[0].sample_value.value #=> String
    #   resp.data.slot_type_values[0].synonyms #=> Array<SampleValue>
    #   resp.data.value_selection_setting #=> Types::SlotValueSelectionSetting
    #   resp.data.value_selection_setting.resolution_strategy #=> String, one of ["OriginalValue", "TopResolution"]
    #   resp.data.value_selection_setting.regex_filter #=> Types::SlotValueRegexFilter
    #   resp.data.value_selection_setting.regex_filter.pattern #=> String
    #   resp.data.value_selection_setting.advanced_recognition_setting #=> Types::AdvancedRecognitionSetting
    #   resp.data.value_selection_setting.advanced_recognition_setting.audio_recognition_strategy #=> String, one of ["UseSlotValuesAsCustomVocabulary"]
    #   resp.data.parent_slot_type_signature #=> String
    #   resp.data.bot_id #=> String
    #   resp.data.bot_version #=> String
    #   resp.data.locale_id #=> String
    #   resp.data.creation_date_time #=> Time
    #   resp.data.external_source_setting #=> Types::ExternalSourceSetting
    #   resp.data.external_source_setting.grammar_slot_type_setting #=> Types::GrammarSlotTypeSetting
    #   resp.data.external_source_setting.grammar_slot_type_setting.source #=> Types::GrammarSlotTypeSource
    #   resp.data.external_source_setting.grammar_slot_type_setting.source.s3_bucket_name #=> String
    #   resp.data.external_source_setting.grammar_slot_type_setting.source.s3_object_key #=> String
    #   resp.data.external_source_setting.grammar_slot_type_setting.source.kms_key_arn #=> String
    #
    def create_slot_type(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateSlotTypeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateSlotTypeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateSlotType
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::PreconditionFailedException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::CreateSlotType
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateSlotType,
        stubs: @stubs,
        params_class: Params::CreateSlotTypeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_slot_type
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a pre-signed S3 write URL that you use to upload the zip
    #          archive when importing a bot or a bot locale. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateUploadUrlInput}.
    #
    # @return [Types::CreateUploadUrlOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_upload_url()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateUploadUrlOutput
    #   resp.data.import_id #=> String
    #   resp.data.upload_url #=> String
    #
    def create_upload_url(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateUploadUrlInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateUploadUrlInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateUploadUrl
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::CreateUploadUrl
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateUploadUrl,
        stubs: @stubs,
        params_class: Params::CreateUploadUrlOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_upload_url
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes all versions of a bot, including the <code>Draft</code>
    #          version. To delete a specific version, use the
    #             <code>DeleteBotVersion</code> operation.</p>
    #          <p>When you delete a bot, all of the resources contained in the bot are
    #          also deleted. Deleting a bot removes all locales, intents, slot, and
    #          slot types defined for the bot.</p>
    #          <p>If a bot has an alias, the <code>DeleteBot</code> operation returns
    #          a <code>ResourceInUseException</code> exception. If you want to delete
    #          the bot and the alias, set the <code>skipResourceInUseCheck</code>
    #          parameter to <code>true</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteBotInput}.
    #
    # @option params [String] :bot_id
    #   <p>The identifier of the bot to delete. </p>
    #
    # @option params [Boolean] :skip_resource_in_use_check
    #   <p>When <code>true</code>, Amazon Lex doesn't check to see if another
    #            resource, such as an alias, is using the bot before it is
    #            deleted.</p>
    #
    # @return [Types::DeleteBotOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_bot(
    #     bot_id: 'botId', # required
    #     skip_resource_in_use_check: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteBotOutput
    #   resp.data.bot_id #=> String
    #   resp.data.bot_status #=> String, one of ["Creating", "Available", "Inactive", "Deleting", "Failed", "Versioning", "Importing"]
    #
    def delete_bot(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteBotInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteBotInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteBot
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::ConflictException, Errors::PreconditionFailedException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::DeleteBot
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteBot,
        stubs: @stubs,
        params_class: Params::DeleteBotOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_bot
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified bot alias.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteBotAliasInput}.
    #
    # @option params [String] :bot_alias_id
    #   <p>The unique identifier of the bot alias to delete.</p>
    #
    # @option params [String] :bot_id
    #   <p>The unique identifier of the bot associated with the alias to
    #            delete.</p>
    #
    # @option params [Boolean] :skip_resource_in_use_check
    #   <p>When this parameter is true, Amazon Lex doesn't check to see if any other
    #            resource is using the alias before it is deleted.</p>
    #
    # @return [Types::DeleteBotAliasOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_bot_alias(
    #     bot_alias_id: 'botAliasId', # required
    #     bot_id: 'botId', # required
    #     skip_resource_in_use_check: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteBotAliasOutput
    #   resp.data.bot_alias_id #=> String
    #   resp.data.bot_id #=> String
    #   resp.data.bot_alias_status #=> String, one of ["Creating", "Available", "Deleting", "Failed"]
    #
    def delete_bot_alias(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteBotAliasInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteBotAliasInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteBotAlias
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::ConflictException, Errors::PreconditionFailedException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::DeleteBotAlias
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteBotAlias,
        stubs: @stubs,
        params_class: Params::DeleteBotAliasOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_bot_alias
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes a locale from a bot.</p>
    #          <p>When you delete a locale, all intents, slots, and slot types defined
    #          for the locale are also deleted.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteBotLocaleInput}.
    #
    # @option params [String] :bot_id
    #   <p>The unique identifier of the bot that contains the locale.</p>
    #
    # @option params [String] :bot_version
    #   <p>The version of the bot that contains the locale. </p>
    #
    # @option params [String] :locale_id
    #   <p>The identifier of the language and locale that will be deleted. The
    #            string must match one of the supported locales. For more information,
    #            see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>.</p>
    #
    # @return [Types::DeleteBotLocaleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_bot_locale(
    #     bot_id: 'botId', # required
    #     bot_version: 'botVersion', # required
    #     locale_id: 'localeId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteBotLocaleOutput
    #   resp.data.bot_id #=> String
    #   resp.data.bot_version #=> String
    #   resp.data.locale_id #=> String
    #   resp.data.bot_locale_status #=> String, one of ["Creating", "Building", "Built", "ReadyExpressTesting", "Failed", "Deleting", "NotBuilt", "Importing", "Processing"]
    #
    def delete_bot_locale(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteBotLocaleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteBotLocaleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteBotLocale
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::ConflictException, Errors::PreconditionFailedException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::DeleteBotLocale
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteBotLocale,
        stubs: @stubs,
        params_class: Params::DeleteBotLocaleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_bot_locale
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a specific version of a bot. To delete all version of a bot,
    #          use the <a href="https://docs.aws.amazon.com/lexv2/latest/dg/API_DeleteBot.html">DeleteBot</a> operation.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteBotVersionInput}.
    #
    # @option params [String] :bot_id
    #   <p>The identifier of the bot that contains the version.</p>
    #
    # @option params [String] :bot_version
    #   <p>The version of the bot to delete.</p>
    #
    # @option params [Boolean] :skip_resource_in_use_check
    #   <p>By default, the <code>DeleteBotVersion</code> operations throws a
    #               <code>ResourceInUseException</code> exception if you try to delete a
    #            bot version that has an alias pointing at it. Set the
    #               <code>skipResourceInUseCheck</code> parameter to <code>true</code>
    #            to skip this check and remove the version even if an alias points to
    #            it.</p>
    #
    # @return [Types::DeleteBotVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_bot_version(
    #     bot_id: 'botId', # required
    #     bot_version: 'botVersion', # required
    #     skip_resource_in_use_check: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteBotVersionOutput
    #   resp.data.bot_id #=> String
    #   resp.data.bot_version #=> String
    #   resp.data.bot_status #=> String, one of ["Creating", "Available", "Inactive", "Deleting", "Failed", "Versioning", "Importing"]
    #
    def delete_bot_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteBotVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteBotVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteBotVersion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::ConflictException, Errors::PreconditionFailedException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::DeleteBotVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteBotVersion,
        stubs: @stubs,
        params_class: Params::DeleteBotVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_bot_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes a custom vocabulary from the specified locale
    #       in the specified bot.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteCustomVocabularyInput}.
    #
    # @option params [String] :bot_id
    #   <p>The unique identifier of the bot to remove the custom
    #         vocabulary from.</p>
    #
    # @option params [String] :bot_version
    #   <p>The version of the bot to remove the custom vocabulary
    #         from.</p>
    #
    # @option params [String] :locale_id
    #   <p>The locale identifier for the locale that contains the
    #         custom vocabulary to remove.</p>
    #
    # @return [Types::DeleteCustomVocabularyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_custom_vocabulary(
    #     bot_id: 'botId', # required
    #     bot_version: 'botVersion', # required
    #     locale_id: 'localeId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteCustomVocabularyOutput
    #   resp.data.bot_id #=> String
    #   resp.data.bot_version #=> String
    #   resp.data.locale_id #=> String
    #   resp.data.custom_vocabulary_status #=> String, one of ["Ready", "Deleting", "Exporting", "Importing", "Creating"]
    #
    def delete_custom_vocabulary(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteCustomVocabularyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteCustomVocabularyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteCustomVocabulary
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::ConflictException, Errors::PreconditionFailedException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::DeleteCustomVocabulary
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteCustomVocabulary,
        stubs: @stubs,
        params_class: Params::DeleteCustomVocabularyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_custom_vocabulary
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes a previous export and the associated files stored in an S3
    #          bucket.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteExportInput}.
    #
    # @option params [String] :export_id
    #   <p>The unique identifier of the export to delete.</p>
    #
    # @return [Types::DeleteExportOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_export(
    #     export_id: 'exportId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteExportOutput
    #   resp.data.export_id #=> String
    #   resp.data.export_status #=> String, one of ["InProgress", "Completed", "Failed", "Deleting"]
    #
    def delete_export(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteExportInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteExportInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteExport
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::PreconditionFailedException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::DeleteExport
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteExport,
        stubs: @stubs,
        params_class: Params::DeleteExportOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_export
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes a previous import and the associated file stored in an S3
    #          bucket.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteImportInput}.
    #
    # @option params [String] :import_id
    #   <p>The unique identifier of the import to delete.</p>
    #
    # @return [Types::DeleteImportOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_import(
    #     import_id: 'importId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteImportOutput
    #   resp.data.import_id #=> String
    #   resp.data.import_status #=> String, one of ["InProgress", "Completed", "Failed", "Deleting"]
    #
    def delete_import(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteImportInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteImportInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteImport
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::PreconditionFailedException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::DeleteImport
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteImport,
        stubs: @stubs,
        params_class: Params::DeleteImportOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_import
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the specified intent.</p>
    #          <p>Deleting an intent also deletes the slots associated with the
    #          intent.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteIntentInput}.
    #
    # @option params [String] :intent_id
    #   <p>The unique identifier of the intent to delete.</p>
    #
    # @option params [String] :bot_id
    #   <p>The identifier of the bot associated with the intent.</p>
    #
    # @option params [String] :bot_version
    #   <p>The version of the bot associated with the intent.</p>
    #
    # @option params [String] :locale_id
    #   <p>The identifier of the language and locale where the bot will be
    #            deleted. The string must match one of the supported locales. For more
    #            information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>.</p>
    #
    # @return [Types::DeleteIntentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_intent(
    #     intent_id: 'intentId', # required
    #     bot_id: 'botId', # required
    #     bot_version: 'botVersion', # required
    #     locale_id: 'localeId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteIntentOutput
    #
    def delete_intent(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteIntentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteIntentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteIntent
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ConflictException, Errors::PreconditionFailedException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::DeleteIntent
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteIntent,
        stubs: @stubs,
        params_class: Params::DeleteIntentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_intent
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes an existing policy from a bot or bot alias. If the resource
    #          doesn't have a policy attached, Amazon Lex returns an exception.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteResourcePolicyInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the bot or bot alias that has the
    #            resource policy attached.</p>
    #
    # @option params [String] :expected_revision_id
    #   <p>The identifier of the revision to edit. If this ID doesn't match the
    #            current revision number, Amazon Lex returns an exception</p>
    #            <p>If you don't specify a revision ID, Amazon Lex will delete the current
    #            policy.</p>
    #
    # @return [Types::DeleteResourcePolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resource_policy(
    #     resource_arn: 'resourceArn', # required
    #     expected_revision_id: 'expectedRevisionId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteResourcePolicyOutput
    #   resp.data.resource_arn #=> String
    #   resp.data.revision_id #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::PreconditionFailedException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
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

    # <p>Deletes a policy statement from a resource policy. If you delete the
    #          last statement from a policy, the policy is deleted. If you specify a
    #          statement ID that doesn't exist in the policy, or if the bot or bot
    #          alias doesn't have a policy attached, Amazon Lex returns an
    #          exception.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteResourcePolicyStatementInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the bot or bot alias that the
    #            resource policy is attached to.</p>
    #
    # @option params [String] :statement_id
    #   <p>The name of the statement (SID) to delete from the policy.</p>
    #
    # @option params [String] :expected_revision_id
    #   <p>The identifier of the revision of the policy to delete the statement
    #            from. If this revision ID doesn't match the current revision ID, Amazon Lex
    #            throws an exception.</p>
    #            <p>If you don't specify a revision, Amazon Lex removes the current contents
    #            of the statement. </p>
    #
    # @return [Types::DeleteResourcePolicyStatementOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resource_policy_statement(
    #     resource_arn: 'resourceArn', # required
    #     statement_id: 'statementId', # required
    #     expected_revision_id: 'expectedRevisionId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteResourcePolicyStatementOutput
    #   resp.data.resource_arn #=> String
    #   resp.data.revision_id #=> String
    #
    def delete_resource_policy_statement(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteResourcePolicyStatementInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteResourcePolicyStatementInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteResourcePolicyStatement
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::PreconditionFailedException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DeleteResourcePolicyStatement
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteResourcePolicyStatement,
        stubs: @stubs,
        params_class: Params::DeleteResourcePolicyStatementOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_resource_policy_statement
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified slot from an intent.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteSlotInput}.
    #
    # @option params [String] :slot_id
    #   <p>The identifier of the slot to delete. </p>
    #
    # @option params [String] :bot_id
    #   <p>The identifier of the bot associated with the slot to delete.</p>
    #
    # @option params [String] :bot_version
    #   <p>The version of the bot associated with the slot to delete.</p>
    #
    # @option params [String] :locale_id
    #   <p>The identifier of the language and locale that the slot will be
    #            deleted from. The string must match one of the supported locales. For
    #            more information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>.</p>
    #
    # @option params [String] :intent_id
    #   <p>The identifier of the intent associated with the slot.</p>
    #
    # @return [Types::DeleteSlotOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_slot(
    #     slot_id: 'slotId', # required
    #     bot_id: 'botId', # required
    #     bot_version: 'botVersion', # required
    #     locale_id: 'localeId', # required
    #     intent_id: 'intentId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteSlotOutput
    #
    def delete_slot(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteSlotInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteSlotInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteSlot
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ConflictException, Errors::PreconditionFailedException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::DeleteSlot
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteSlot,
        stubs: @stubs,
        params_class: Params::DeleteSlotOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_slot
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a slot type from a bot locale.</p>
    #          <p>If a slot is using the slot type, Amazon Lex throws a
    #             <code>ResourceInUseException</code> exception. To avoid the
    #          exception, set the <code>skipResourceInUseCheck</code> parameter to
    #             <code>true</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteSlotTypeInput}.
    #
    # @option params [String] :slot_type_id
    #   <p>The identifier of the slot type to delete.</p>
    #
    # @option params [String] :bot_id
    #   <p>The identifier of the bot associated with the slot type.</p>
    #
    # @option params [String] :bot_version
    #   <p>The version of the bot associated with the slot type.</p>
    #
    # @option params [String] :locale_id
    #   <p>The identifier of the language and locale that the slot type will be
    #            deleted from. The string must match one of the supported locales. For
    #            more information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>.</p>
    #
    # @option params [Boolean] :skip_resource_in_use_check
    #   <p>By default, the <code>DeleteSlotType</code> operations throws a
    #               <code>ResourceInUseException</code> exception if you try to delete a
    #            slot type used by a slot. Set the <code>skipResourceInUseCheck</code>
    #            parameter to <code>true</code> to skip this check and remove the slot
    #            type even if a slot uses it.</p>
    #
    # @return [Types::DeleteSlotTypeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_slot_type(
    #     slot_type_id: 'slotTypeId', # required
    #     bot_id: 'botId', # required
    #     bot_version: 'botVersion', # required
    #     locale_id: 'localeId', # required
    #     skip_resource_in_use_check: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteSlotTypeOutput
    #
    def delete_slot_type(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteSlotTypeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteSlotTypeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteSlotType
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ConflictException, Errors::PreconditionFailedException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::DeleteSlotType
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteSlotType,
        stubs: @stubs,
        params_class: Params::DeleteSlotTypeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_slot_type
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes stored utterances.</p>
    #          <p>Amazon Lex stores the utterances that users send to your bot. Utterances
    #          are stored for 15 days for use with the <a href="https://docs.aws.amazon.com/lexv2/latest/dg/API_ListAggregatedUtterances.html">ListAggregatedUtterances</a> operation, and
    #          then stored indefinitely for use in improving the ability of your bot
    #          to respond to user input..</p>
    #          <p>Use the <code>DeleteUtterances</code> operation to manually delete
    #          utterances for a specific session. When you use the
    #             <code>DeleteUtterances</code> operation, utterances stored for
    #          improving your bot's ability to respond to user input are deleted
    #          immediately. Utterances stored for use with the
    #             <code>ListAggregatedUtterances</code> operation are deleted after 15
    #          days.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteUtterancesInput}.
    #
    # @option params [String] :bot_id
    #   <p>The unique identifier of the bot that contains the
    #            utterances.</p>
    #
    # @option params [String] :locale_id
    #   <p>The identifier of the language and locale where the utterances were
    #            collected. The string must match one of the supported locales. For more
    #            information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported
    #            languages</a>.</p>
    #
    # @option params [String] :session_id
    #   <p>The unique identifier of the session with the user. The ID is
    #            returned in the response from the <a href="https://docs.aws.amazon.com/lexv2/latest/dg/API_runtime_RecognizeText.html">RecognizeText</a> and <a href="https://docs.aws.amazon.com/lexv2/latest/dg/API_runtime_RecognizeUtterance.html">RecognizeUtterance</a> operations.</p>
    #
    # @return [Types::DeleteUtterancesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_utterances(
    #     bot_id: 'botId', # required
    #     locale_id: 'localeId',
    #     session_id: 'sessionId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteUtterancesOutput
    #
    def delete_utterances(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteUtterancesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteUtterancesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteUtterances
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException]),
        data_parser: Parsers::DeleteUtterances
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteUtterances,
        stubs: @stubs,
        params_class: Params::DeleteUtterancesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_utterances
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides metadata information about a bot. </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeBotInput}.
    #
    # @option params [String] :bot_id
    #   <p>The unique identifier of the bot to describe.</p>
    #
    # @return [Types::DescribeBotOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_bot(
    #     bot_id: 'botId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeBotOutput
    #   resp.data.bot_id #=> String
    #   resp.data.bot_name #=> String
    #   resp.data.description #=> String
    #   resp.data.role_arn #=> String
    #   resp.data.data_privacy #=> Types::DataPrivacy
    #   resp.data.data_privacy.child_directed #=> Boolean
    #   resp.data.idle_session_ttl_in_seconds #=> Integer
    #   resp.data.bot_status #=> String, one of ["Creating", "Available", "Inactive", "Deleting", "Failed", "Versioning", "Importing"]
    #   resp.data.creation_date_time #=> Time
    #   resp.data.last_updated_date_time #=> Time
    #
    def describe_bot(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeBotInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeBotInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeBot
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::DescribeBot
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeBot,
        stubs: @stubs,
        params_class: Params::DescribeBotOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_bot
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Get information about a specific bot alias.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeBotAliasInput}.
    #
    # @option params [String] :bot_alias_id
    #   <p>The identifier of the bot alias to describe.</p>
    #
    # @option params [String] :bot_id
    #   <p>The identifier of the bot associated with the bot alias to
    #            describe.</p>
    #
    # @return [Types::DescribeBotAliasOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_bot_alias(
    #     bot_alias_id: 'botAliasId', # required
    #     bot_id: 'botId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeBotAliasOutput
    #   resp.data.bot_alias_id #=> String
    #   resp.data.bot_alias_name #=> String
    #   resp.data.description #=> String
    #   resp.data.bot_version #=> String
    #   resp.data.bot_alias_locale_settings #=> Hash<String, BotAliasLocaleSettings>
    #   resp.data.bot_alias_locale_settings['key'] #=> Types::BotAliasLocaleSettings
    #   resp.data.bot_alias_locale_settings['key'].enabled #=> Boolean
    #   resp.data.bot_alias_locale_settings['key'].code_hook_specification #=> Types::CodeHookSpecification
    #   resp.data.bot_alias_locale_settings['key'].code_hook_specification.lambda_code_hook #=> Types::LambdaCodeHook
    #   resp.data.bot_alias_locale_settings['key'].code_hook_specification.lambda_code_hook.lambda_arn #=> String
    #   resp.data.bot_alias_locale_settings['key'].code_hook_specification.lambda_code_hook.code_hook_interface_version #=> String
    #   resp.data.conversation_log_settings #=> Types::ConversationLogSettings
    #   resp.data.conversation_log_settings.text_log_settings #=> Array<TextLogSetting>
    #   resp.data.conversation_log_settings.text_log_settings[0] #=> Types::TextLogSetting
    #   resp.data.conversation_log_settings.text_log_settings[0].enabled #=> Boolean
    #   resp.data.conversation_log_settings.text_log_settings[0].destination #=> Types::TextLogDestination
    #   resp.data.conversation_log_settings.text_log_settings[0].destination.cloud_watch #=> Types::CloudWatchLogGroupLogDestination
    #   resp.data.conversation_log_settings.text_log_settings[0].destination.cloud_watch.cloud_watch_log_group_arn #=> String
    #   resp.data.conversation_log_settings.text_log_settings[0].destination.cloud_watch.log_prefix #=> String
    #   resp.data.conversation_log_settings.audio_log_settings #=> Array<AudioLogSetting>
    #   resp.data.conversation_log_settings.audio_log_settings[0] #=> Types::AudioLogSetting
    #   resp.data.conversation_log_settings.audio_log_settings[0].enabled #=> Boolean
    #   resp.data.conversation_log_settings.audio_log_settings[0].destination #=> Types::AudioLogDestination
    #   resp.data.conversation_log_settings.audio_log_settings[0].destination.s3_bucket #=> Types::S3BucketLogDestination
    #   resp.data.conversation_log_settings.audio_log_settings[0].destination.s3_bucket.kms_key_arn #=> String
    #   resp.data.conversation_log_settings.audio_log_settings[0].destination.s3_bucket.s3_bucket_arn #=> String
    #   resp.data.conversation_log_settings.audio_log_settings[0].destination.s3_bucket.log_prefix #=> String
    #   resp.data.sentiment_analysis_settings #=> Types::SentimentAnalysisSettings
    #   resp.data.sentiment_analysis_settings.detect_sentiment #=> Boolean
    #   resp.data.bot_alias_history_events #=> Array<BotAliasHistoryEvent>
    #   resp.data.bot_alias_history_events[0] #=> Types::BotAliasHistoryEvent
    #   resp.data.bot_alias_history_events[0].bot_version #=> String
    #   resp.data.bot_alias_history_events[0].start_date #=> Time
    #   resp.data.bot_alias_history_events[0].end_date #=> Time
    #   resp.data.bot_alias_status #=> String, one of ["Creating", "Available", "Deleting", "Failed"]
    #   resp.data.bot_id #=> String
    #   resp.data.creation_date_time #=> Time
    #   resp.data.last_updated_date_time #=> Time
    #
    def describe_bot_alias(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeBotAliasInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeBotAliasInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeBotAlias
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::DescribeBotAlias
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeBotAlias,
        stubs: @stubs,
        params_class: Params::DescribeBotAliasOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_bot_alias
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the settings that a bot has for a specific locale. </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeBotLocaleInput}.
    #
    # @option params [String] :bot_id
    #   <p>The identifier of the bot associated with the locale.</p>
    #
    # @option params [String] :bot_version
    #   <p>The identifier of the version of the bot associated with the
    #            locale.</p>
    #
    # @option params [String] :locale_id
    #   <p>The unique identifier of the locale to describe. The string must
    #            match one of the supported locales. For more information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>. </p>
    #
    # @return [Types::DescribeBotLocaleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_bot_locale(
    #     bot_id: 'botId', # required
    #     bot_version: 'botVersion', # required
    #     locale_id: 'localeId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeBotLocaleOutput
    #   resp.data.bot_id #=> String
    #   resp.data.bot_version #=> String
    #   resp.data.locale_id #=> String
    #   resp.data.locale_name #=> String
    #   resp.data.description #=> String
    #   resp.data.nlu_intent_confidence_threshold #=> Float
    #   resp.data.voice_settings #=> Types::VoiceSettings
    #   resp.data.voice_settings.voice_id #=> String
    #   resp.data.voice_settings.engine #=> String, one of ["standard", "neural"]
    #   resp.data.intents_count #=> Integer
    #   resp.data.slot_types_count #=> Integer
    #   resp.data.bot_locale_status #=> String, one of ["Creating", "Building", "Built", "ReadyExpressTesting", "Failed", "Deleting", "NotBuilt", "Importing", "Processing"]
    #   resp.data.failure_reasons #=> Array<String>
    #   resp.data.failure_reasons[0] #=> String
    #   resp.data.creation_date_time #=> Time
    #   resp.data.last_updated_date_time #=> Time
    #   resp.data.last_build_submitted_date_time #=> Time
    #   resp.data.bot_locale_history_events #=> Array<BotLocaleHistoryEvent>
    #   resp.data.bot_locale_history_events[0] #=> Types::BotLocaleHistoryEvent
    #   resp.data.bot_locale_history_events[0].event #=> String
    #   resp.data.bot_locale_history_events[0].event_date #=> Time
    #   resp.data.recommended_actions #=> Array<String>
    #   resp.data.recommended_actions[0] #=> String
    #
    def describe_bot_locale(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeBotLocaleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeBotLocaleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeBotLocale
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::DescribeBotLocale
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeBotLocale,
        stubs: @stubs,
        params_class: Params::DescribeBotLocaleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_bot_locale
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides metadata information about a bot recommendation. This
    #          information will enable you to get a description on the request inputs,
    #          to download associated transcripts after processing is complete, and to
    #          download intents and slot-types generated by the bot
    #          recommendation.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeBotRecommendationInput}.
    #
    # @option params [String] :bot_id
    #   <p>The unique identifier of the bot associated with the bot
    #            recommendation.</p>
    #
    # @option params [String] :bot_version
    #   <p>The version of the bot associated with the bot
    #            recommendation.</p>
    #
    # @option params [String] :locale_id
    #   <p>The identifier of the language and locale of the bot recommendation
    #            to describe. The string must match one of the supported locales. For
    #            more information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>.</p>
    #
    # @option params [String] :bot_recommendation_id
    #   <p>The identifier of the bot recommendation to describe.</p>
    #
    # @return [Types::DescribeBotRecommendationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_bot_recommendation(
    #     bot_id: 'botId', # required
    #     bot_version: 'botVersion', # required
    #     locale_id: 'localeId', # required
    #     bot_recommendation_id: 'botRecommendationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeBotRecommendationOutput
    #   resp.data.bot_id #=> String
    #   resp.data.bot_version #=> String
    #   resp.data.locale_id #=> String
    #   resp.data.bot_recommendation_status #=> String, one of ["Processing", "Deleting", "Deleted", "Downloading", "Updating", "Available", "Failed"]
    #   resp.data.bot_recommendation_id #=> String
    #   resp.data.failure_reasons #=> Array<String>
    #   resp.data.failure_reasons[0] #=> String
    #   resp.data.creation_date_time #=> Time
    #   resp.data.last_updated_date_time #=> Time
    #   resp.data.transcript_source_setting #=> Types::TranscriptSourceSetting
    #   resp.data.transcript_source_setting.s3_bucket_transcript_source #=> Types::S3BucketTranscriptSource
    #   resp.data.transcript_source_setting.s3_bucket_transcript_source.s3_bucket_name #=> String
    #   resp.data.transcript_source_setting.s3_bucket_transcript_source.path_format #=> Types::PathFormat
    #   resp.data.transcript_source_setting.s3_bucket_transcript_source.path_format.object_prefixes #=> Array<String>
    #   resp.data.transcript_source_setting.s3_bucket_transcript_source.path_format.object_prefixes[0] #=> String
    #   resp.data.transcript_source_setting.s3_bucket_transcript_source.transcript_format #=> String, one of ["Lex"]
    #   resp.data.transcript_source_setting.s3_bucket_transcript_source.transcript_filter #=> Types::TranscriptFilter
    #   resp.data.transcript_source_setting.s3_bucket_transcript_source.transcript_filter.lex_transcript_filter #=> Types::LexTranscriptFilter
    #   resp.data.transcript_source_setting.s3_bucket_transcript_source.transcript_filter.lex_transcript_filter.date_range_filter #=> Types::DateRangeFilter
    #   resp.data.transcript_source_setting.s3_bucket_transcript_source.transcript_filter.lex_transcript_filter.date_range_filter.start_date_time #=> Time
    #   resp.data.transcript_source_setting.s3_bucket_transcript_source.transcript_filter.lex_transcript_filter.date_range_filter.end_date_time #=> Time
    #   resp.data.transcript_source_setting.s3_bucket_transcript_source.kms_key_arn #=> String
    #   resp.data.encryption_setting #=> Types::EncryptionSetting
    #   resp.data.encryption_setting.kms_key_arn #=> String
    #   resp.data.encryption_setting.bot_locale_export_password #=> String
    #   resp.data.encryption_setting.associated_transcripts_password #=> String
    #   resp.data.bot_recommendation_results #=> Types::BotRecommendationResults
    #   resp.data.bot_recommendation_results.bot_locale_export_url #=> String
    #   resp.data.bot_recommendation_results.associated_transcripts_url #=> String
    #   resp.data.bot_recommendation_results.statistics #=> Types::BotRecommendationResultStatistics
    #   resp.data.bot_recommendation_results.statistics.intents #=> Types::IntentStatistics
    #   resp.data.bot_recommendation_results.statistics.intents.discovered_intent_count #=> Integer
    #   resp.data.bot_recommendation_results.statistics.slot_types #=> Types::SlotTypeStatistics
    #   resp.data.bot_recommendation_results.statistics.slot_types.discovered_slot_type_count #=> Integer
    #
    def describe_bot_recommendation(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeBotRecommendationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeBotRecommendationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeBotRecommendation
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DescribeBotRecommendation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeBotRecommendation,
        stubs: @stubs,
        params_class: Params::DescribeBotRecommendationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_bot_recommendation
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides metadata about a version of a bot.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeBotVersionInput}.
    #
    # @option params [String] :bot_id
    #   <p>The identifier of the bot containing the version to return metadata
    #            for.</p>
    #
    # @option params [String] :bot_version
    #   <p>The version of the bot to return metadata for.</p>
    #
    # @return [Types::DescribeBotVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_bot_version(
    #     bot_id: 'botId', # required
    #     bot_version: 'botVersion' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeBotVersionOutput
    #   resp.data.bot_id #=> String
    #   resp.data.bot_name #=> String
    #   resp.data.bot_version #=> String
    #   resp.data.description #=> String
    #   resp.data.role_arn #=> String
    #   resp.data.data_privacy #=> Types::DataPrivacy
    #   resp.data.data_privacy.child_directed #=> Boolean
    #   resp.data.idle_session_ttl_in_seconds #=> Integer
    #   resp.data.bot_status #=> String, one of ["Creating", "Available", "Inactive", "Deleting", "Failed", "Versioning", "Importing"]
    #   resp.data.failure_reasons #=> Array<String>
    #   resp.data.failure_reasons[0] #=> String
    #   resp.data.creation_date_time #=> Time
    #
    def describe_bot_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeBotVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeBotVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeBotVersion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::DescribeBotVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeBotVersion,
        stubs: @stubs,
        params_class: Params::DescribeBotVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_bot_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides metadata information about a custom vocabulary.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeCustomVocabularyMetadataInput}.
    #
    # @option params [String] :bot_id
    #   <p>The unique identifier of the bot that contains the custom vocabulary.</p>
    #
    # @option params [String] :bot_version
    #   <p>The bot version of the bot to return metadata for.</p>
    #
    # @option params [String] :locale_id
    #   <p>The locale to return the custom vocabulary information for.
    #         The locale must be <code>en_GB</code>.</p>
    #
    # @return [Types::DescribeCustomVocabularyMetadataOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_custom_vocabulary_metadata(
    #     bot_id: 'botId', # required
    #     bot_version: 'botVersion', # required
    #     locale_id: 'localeId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeCustomVocabularyMetadataOutput
    #   resp.data.bot_id #=> String
    #   resp.data.bot_version #=> String
    #   resp.data.locale_id #=> String
    #   resp.data.custom_vocabulary_status #=> String, one of ["Ready", "Deleting", "Exporting", "Importing", "Creating"]
    #   resp.data.creation_date_time #=> Time
    #   resp.data.last_updated_date_time #=> Time
    #
    def describe_custom_vocabulary_metadata(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeCustomVocabularyMetadataInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeCustomVocabularyMetadataInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeCustomVocabularyMetadata
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::DescribeCustomVocabularyMetadata
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeCustomVocabularyMetadata,
        stubs: @stubs,
        params_class: Params::DescribeCustomVocabularyMetadataOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_custom_vocabulary_metadata
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about a specific export.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeExportInput}.
    #
    # @option params [String] :export_id
    #   <p>The unique identifier of the export to describe.</p>
    #
    # @return [Types::DescribeExportOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_export(
    #     export_id: 'exportId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeExportOutput
    #   resp.data.export_id #=> String
    #   resp.data.resource_specification #=> Types::ExportResourceSpecification
    #   resp.data.resource_specification.bot_export_specification #=> Types::BotExportSpecification
    #   resp.data.resource_specification.bot_export_specification.bot_id #=> String
    #   resp.data.resource_specification.bot_export_specification.bot_version #=> String
    #   resp.data.resource_specification.bot_locale_export_specification #=> Types::BotLocaleExportSpecification
    #   resp.data.resource_specification.bot_locale_export_specification.bot_id #=> String
    #   resp.data.resource_specification.bot_locale_export_specification.bot_version #=> String
    #   resp.data.resource_specification.bot_locale_export_specification.locale_id #=> String
    #   resp.data.resource_specification.custom_vocabulary_export_specification #=> Types::CustomVocabularyExportSpecification
    #   resp.data.resource_specification.custom_vocabulary_export_specification.bot_id #=> String
    #   resp.data.resource_specification.custom_vocabulary_export_specification.bot_version #=> String
    #   resp.data.resource_specification.custom_vocabulary_export_specification.locale_id #=> String
    #   resp.data.file_format #=> String, one of ["LexJson", "TSV"]
    #   resp.data.export_status #=> String, one of ["InProgress", "Completed", "Failed", "Deleting"]
    #   resp.data.failure_reasons #=> Array<String>
    #   resp.data.failure_reasons[0] #=> String
    #   resp.data.download_url #=> String
    #   resp.data.creation_date_time #=> Time
    #   resp.data.last_updated_date_time #=> Time
    #
    def describe_export(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeExportInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeExportInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeExport
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DescribeExport
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeExport,
        stubs: @stubs,
        params_class: Params::DescribeExportOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_export
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about a specific import.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeImportInput}.
    #
    # @option params [String] :import_id
    #   <p>The unique identifier of the import to describe.</p>
    #
    # @return [Types::DescribeImportOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_import(
    #     import_id: 'importId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeImportOutput
    #   resp.data.import_id #=> String
    #   resp.data.resource_specification #=> Types::ImportResourceSpecification
    #   resp.data.resource_specification.bot_import_specification #=> Types::BotImportSpecification
    #   resp.data.resource_specification.bot_import_specification.bot_name #=> String
    #   resp.data.resource_specification.bot_import_specification.role_arn #=> String
    #   resp.data.resource_specification.bot_import_specification.data_privacy #=> Types::DataPrivacy
    #   resp.data.resource_specification.bot_import_specification.data_privacy.child_directed #=> Boolean
    #   resp.data.resource_specification.bot_import_specification.idle_session_ttl_in_seconds #=> Integer
    #   resp.data.resource_specification.bot_import_specification.bot_tags #=> Hash<String, String>
    #   resp.data.resource_specification.bot_import_specification.bot_tags['key'] #=> String
    #   resp.data.resource_specification.bot_import_specification.test_bot_alias_tags #=> Hash<String, String>
    #   resp.data.resource_specification.bot_locale_import_specification #=> Types::BotLocaleImportSpecification
    #   resp.data.resource_specification.bot_locale_import_specification.bot_id #=> String
    #   resp.data.resource_specification.bot_locale_import_specification.bot_version #=> String
    #   resp.data.resource_specification.bot_locale_import_specification.locale_id #=> String
    #   resp.data.resource_specification.bot_locale_import_specification.nlu_intent_confidence_threshold #=> Float
    #   resp.data.resource_specification.bot_locale_import_specification.voice_settings #=> Types::VoiceSettings
    #   resp.data.resource_specification.bot_locale_import_specification.voice_settings.voice_id #=> String
    #   resp.data.resource_specification.bot_locale_import_specification.voice_settings.engine #=> String, one of ["standard", "neural"]
    #   resp.data.resource_specification.custom_vocabulary_import_specification #=> Types::CustomVocabularyImportSpecification
    #   resp.data.resource_specification.custom_vocabulary_import_specification.bot_id #=> String
    #   resp.data.resource_specification.custom_vocabulary_import_specification.bot_version #=> String
    #   resp.data.resource_specification.custom_vocabulary_import_specification.locale_id #=> String
    #   resp.data.imported_resource_id #=> String
    #   resp.data.imported_resource_name #=> String
    #   resp.data.merge_strategy #=> String, one of ["Overwrite", "FailOnConflict", "Append"]
    #   resp.data.import_status #=> String, one of ["InProgress", "Completed", "Failed", "Deleting"]
    #   resp.data.failure_reasons #=> Array<String>
    #   resp.data.failure_reasons[0] #=> String
    #   resp.data.creation_date_time #=> Time
    #   resp.data.last_updated_date_time #=> Time
    #
    def describe_import(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeImportInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeImportInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeImport
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DescribeImport
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeImport,
        stubs: @stubs,
        params_class: Params::DescribeImportOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_import
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns metadata about an intent.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeIntentInput}.
    #
    # @option params [String] :intent_id
    #   <p>The identifier of the intent to describe.</p>
    #
    # @option params [String] :bot_id
    #   <p>The identifier of the bot associated with the intent.</p>
    #
    # @option params [String] :bot_version
    #   <p>The version of the bot associated with the intent.</p>
    #
    # @option params [String] :locale_id
    #   <p>The identifier of the language and locale of the intent to describe.
    #            The string must match one of the supported locales. For more
    #            information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>.</p>
    #
    # @return [Types::DescribeIntentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_intent(
    #     intent_id: 'intentId', # required
    #     bot_id: 'botId', # required
    #     bot_version: 'botVersion', # required
    #     locale_id: 'localeId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeIntentOutput
    #   resp.data.intent_id #=> String
    #   resp.data.intent_name #=> String
    #   resp.data.description #=> String
    #   resp.data.parent_intent_signature #=> String
    #   resp.data.sample_utterances #=> Array<SampleUtterance>
    #   resp.data.sample_utterances[0] #=> Types::SampleUtterance
    #   resp.data.sample_utterances[0].utterance #=> String
    #   resp.data.dialog_code_hook #=> Types::DialogCodeHookSettings
    #   resp.data.dialog_code_hook.enabled #=> Boolean
    #   resp.data.fulfillment_code_hook #=> Types::FulfillmentCodeHookSettings
    #   resp.data.fulfillment_code_hook.enabled #=> Boolean
    #   resp.data.fulfillment_code_hook.post_fulfillment_status_specification #=> Types::PostFulfillmentStatusSpecification
    #   resp.data.fulfillment_code_hook.post_fulfillment_status_specification.success_response #=> Types::ResponseSpecification
    #   resp.data.fulfillment_code_hook.post_fulfillment_status_specification.success_response.message_groups #=> Array<MessageGroup>
    #   resp.data.fulfillment_code_hook.post_fulfillment_status_specification.success_response.message_groups[0] #=> Types::MessageGroup
    #   resp.data.fulfillment_code_hook.post_fulfillment_status_specification.success_response.message_groups[0].message #=> Types::Message
    #   resp.data.fulfillment_code_hook.post_fulfillment_status_specification.success_response.message_groups[0].message.plain_text_message #=> Types::PlainTextMessage
    #   resp.data.fulfillment_code_hook.post_fulfillment_status_specification.success_response.message_groups[0].message.plain_text_message.value #=> String
    #   resp.data.fulfillment_code_hook.post_fulfillment_status_specification.success_response.message_groups[0].message.custom_payload #=> Types::CustomPayload
    #   resp.data.fulfillment_code_hook.post_fulfillment_status_specification.success_response.message_groups[0].message.custom_payload.value #=> String
    #   resp.data.fulfillment_code_hook.post_fulfillment_status_specification.success_response.message_groups[0].message.ssml_message #=> Types::SSMLMessage
    #   resp.data.fulfillment_code_hook.post_fulfillment_status_specification.success_response.message_groups[0].message.ssml_message.value #=> String
    #   resp.data.fulfillment_code_hook.post_fulfillment_status_specification.success_response.message_groups[0].message.image_response_card #=> Types::ImageResponseCard
    #   resp.data.fulfillment_code_hook.post_fulfillment_status_specification.success_response.message_groups[0].message.image_response_card.title #=> String
    #   resp.data.fulfillment_code_hook.post_fulfillment_status_specification.success_response.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.data.fulfillment_code_hook.post_fulfillment_status_specification.success_response.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.data.fulfillment_code_hook.post_fulfillment_status_specification.success_response.message_groups[0].message.image_response_card.buttons #=> Array<Button>
    #   resp.data.fulfillment_code_hook.post_fulfillment_status_specification.success_response.message_groups[0].message.image_response_card.buttons[0] #=> Types::Button
    #   resp.data.fulfillment_code_hook.post_fulfillment_status_specification.success_response.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.data.fulfillment_code_hook.post_fulfillment_status_specification.success_response.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.data.fulfillment_code_hook.post_fulfillment_status_specification.success_response.message_groups[0].variations #=> Array<Message>
    #   resp.data.fulfillment_code_hook.post_fulfillment_status_specification.success_response.allow_interrupt #=> Boolean
    #   resp.data.fulfillment_code_hook.post_fulfillment_status_specification.failure_response #=> Types::ResponseSpecification
    #   resp.data.fulfillment_code_hook.post_fulfillment_status_specification.timeout_response #=> Types::ResponseSpecification
    #   resp.data.fulfillment_code_hook.fulfillment_updates_specification #=> Types::FulfillmentUpdatesSpecification
    #   resp.data.fulfillment_code_hook.fulfillment_updates_specification.active #=> Boolean
    #   resp.data.fulfillment_code_hook.fulfillment_updates_specification.start_response #=> Types::FulfillmentStartResponseSpecification
    #   resp.data.fulfillment_code_hook.fulfillment_updates_specification.start_response.delay_in_seconds #=> Integer
    #   resp.data.fulfillment_code_hook.fulfillment_updates_specification.start_response.message_groups #=> Array<MessageGroup>
    #   resp.data.fulfillment_code_hook.fulfillment_updates_specification.start_response.allow_interrupt #=> Boolean
    #   resp.data.fulfillment_code_hook.fulfillment_updates_specification.update_response #=> Types::FulfillmentUpdateResponseSpecification
    #   resp.data.fulfillment_code_hook.fulfillment_updates_specification.update_response.frequency_in_seconds #=> Integer
    #   resp.data.fulfillment_code_hook.fulfillment_updates_specification.update_response.message_groups #=> Array<MessageGroup>
    #   resp.data.fulfillment_code_hook.fulfillment_updates_specification.update_response.allow_interrupt #=> Boolean
    #   resp.data.fulfillment_code_hook.fulfillment_updates_specification.timeout_in_seconds #=> Integer
    #   resp.data.slot_priorities #=> Array<SlotPriority>
    #   resp.data.slot_priorities[0] #=> Types::SlotPriority
    #   resp.data.slot_priorities[0].priority #=> Integer
    #   resp.data.slot_priorities[0].slot_id #=> String
    #   resp.data.intent_confirmation_setting #=> Types::IntentConfirmationSetting
    #   resp.data.intent_confirmation_setting.prompt_specification #=> Types::PromptSpecification
    #   resp.data.intent_confirmation_setting.prompt_specification.message_groups #=> Array<MessageGroup>
    #   resp.data.intent_confirmation_setting.prompt_specification.max_retries #=> Integer
    #   resp.data.intent_confirmation_setting.prompt_specification.allow_interrupt #=> Boolean
    #   resp.data.intent_confirmation_setting.declination_response #=> Types::ResponseSpecification
    #   resp.data.intent_confirmation_setting.active #=> Boolean
    #   resp.data.intent_closing_setting #=> Types::IntentClosingSetting
    #   resp.data.intent_closing_setting.closing_response #=> Types::ResponseSpecification
    #   resp.data.intent_closing_setting.active #=> Boolean
    #   resp.data.input_contexts #=> Array<InputContext>
    #   resp.data.input_contexts[0] #=> Types::InputContext
    #   resp.data.input_contexts[0].name #=> String
    #   resp.data.output_contexts #=> Array<OutputContext>
    #   resp.data.output_contexts[0] #=> Types::OutputContext
    #   resp.data.output_contexts[0].name #=> String
    #   resp.data.output_contexts[0].time_to_live_in_seconds #=> Integer
    #   resp.data.output_contexts[0].turns_to_live #=> Integer
    #   resp.data.kendra_configuration #=> Types::KendraConfiguration
    #   resp.data.kendra_configuration.kendra_index #=> String
    #   resp.data.kendra_configuration.query_filter_string_enabled #=> Boolean
    #   resp.data.kendra_configuration.query_filter_string #=> String
    #   resp.data.bot_id #=> String
    #   resp.data.bot_version #=> String
    #   resp.data.locale_id #=> String
    #   resp.data.creation_date_time #=> Time
    #   resp.data.last_updated_date_time #=> Time
    #
    def describe_intent(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeIntentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeIntentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeIntent
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::DescribeIntent
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeIntent,
        stubs: @stubs,
        params_class: Params::DescribeIntentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_intent
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the resource policy and policy revision for a bot or bot
    #          alias.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeResourcePolicyInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the bot or bot alias that the
    #            resource policy is attached to.</p>
    #
    # @return [Types::DescribeResourcePolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_resource_policy(
    #     resource_arn: 'resourceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeResourcePolicyOutput
    #   resp.data.resource_arn #=> String
    #   resp.data.policy #=> String
    #   resp.data.revision_id #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
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

    # <p>Gets metadata information about a slot.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeSlotInput}.
    #
    # @option params [String] :slot_id
    #   <p>The unique identifier for the slot.</p>
    #
    # @option params [String] :bot_id
    #   <p>The identifier of the bot associated with the slot.</p>
    #
    # @option params [String] :bot_version
    #   <p>The version of the bot associated with the slot.</p>
    #
    # @option params [String] :locale_id
    #   <p>The identifier of the language and locale of the slot to describe.
    #            The string must match one of the supported locales. For more
    #            information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>.</p>
    #
    # @option params [String] :intent_id
    #   <p>The identifier of the intent that contains the slot.</p>
    #
    # @return [Types::DescribeSlotOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_slot(
    #     slot_id: 'slotId', # required
    #     bot_id: 'botId', # required
    #     bot_version: 'botVersion', # required
    #     locale_id: 'localeId', # required
    #     intent_id: 'intentId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeSlotOutput
    #   resp.data.slot_id #=> String
    #   resp.data.slot_name #=> String
    #   resp.data.description #=> String
    #   resp.data.slot_type_id #=> String
    #   resp.data.value_elicitation_setting #=> Types::SlotValueElicitationSetting
    #   resp.data.value_elicitation_setting.default_value_specification #=> Types::SlotDefaultValueSpecification
    #   resp.data.value_elicitation_setting.default_value_specification.default_value_list #=> Array<SlotDefaultValue>
    #   resp.data.value_elicitation_setting.default_value_specification.default_value_list[0] #=> Types::SlotDefaultValue
    #   resp.data.value_elicitation_setting.default_value_specification.default_value_list[0].default_value #=> String
    #   resp.data.value_elicitation_setting.slot_constraint #=> String, one of ["Required", "Optional"]
    #   resp.data.value_elicitation_setting.prompt_specification #=> Types::PromptSpecification
    #   resp.data.value_elicitation_setting.prompt_specification.message_groups #=> Array<MessageGroup>
    #   resp.data.value_elicitation_setting.prompt_specification.message_groups[0] #=> Types::MessageGroup
    #   resp.data.value_elicitation_setting.prompt_specification.message_groups[0].message #=> Types::Message
    #   resp.data.value_elicitation_setting.prompt_specification.message_groups[0].message.plain_text_message #=> Types::PlainTextMessage
    #   resp.data.value_elicitation_setting.prompt_specification.message_groups[0].message.plain_text_message.value #=> String
    #   resp.data.value_elicitation_setting.prompt_specification.message_groups[0].message.custom_payload #=> Types::CustomPayload
    #   resp.data.value_elicitation_setting.prompt_specification.message_groups[0].message.custom_payload.value #=> String
    #   resp.data.value_elicitation_setting.prompt_specification.message_groups[0].message.ssml_message #=> Types::SSMLMessage
    #   resp.data.value_elicitation_setting.prompt_specification.message_groups[0].message.ssml_message.value #=> String
    #   resp.data.value_elicitation_setting.prompt_specification.message_groups[0].message.image_response_card #=> Types::ImageResponseCard
    #   resp.data.value_elicitation_setting.prompt_specification.message_groups[0].message.image_response_card.title #=> String
    #   resp.data.value_elicitation_setting.prompt_specification.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.data.value_elicitation_setting.prompt_specification.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.data.value_elicitation_setting.prompt_specification.message_groups[0].message.image_response_card.buttons #=> Array<Button>
    #   resp.data.value_elicitation_setting.prompt_specification.message_groups[0].message.image_response_card.buttons[0] #=> Types::Button
    #   resp.data.value_elicitation_setting.prompt_specification.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.data.value_elicitation_setting.prompt_specification.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.data.value_elicitation_setting.prompt_specification.message_groups[0].variations #=> Array<Message>
    #   resp.data.value_elicitation_setting.prompt_specification.max_retries #=> Integer
    #   resp.data.value_elicitation_setting.prompt_specification.allow_interrupt #=> Boolean
    #   resp.data.value_elicitation_setting.sample_utterances #=> Array<SampleUtterance>
    #   resp.data.value_elicitation_setting.sample_utterances[0] #=> Types::SampleUtterance
    #   resp.data.value_elicitation_setting.sample_utterances[0].utterance #=> String
    #   resp.data.value_elicitation_setting.wait_and_continue_specification #=> Types::WaitAndContinueSpecification
    #   resp.data.value_elicitation_setting.wait_and_continue_specification.waiting_response #=> Types::ResponseSpecification
    #   resp.data.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups #=> Array<MessageGroup>
    #   resp.data.value_elicitation_setting.wait_and_continue_specification.waiting_response.allow_interrupt #=> Boolean
    #   resp.data.value_elicitation_setting.wait_and_continue_specification.continue_response #=> Types::ResponseSpecification
    #   resp.data.value_elicitation_setting.wait_and_continue_specification.still_waiting_response #=> Types::StillWaitingResponseSpecification
    #   resp.data.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups #=> Array<MessageGroup>
    #   resp.data.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.frequency_in_seconds #=> Integer
    #   resp.data.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.timeout_in_seconds #=> Integer
    #   resp.data.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.allow_interrupt #=> Boolean
    #   resp.data.value_elicitation_setting.wait_and_continue_specification.active #=> Boolean
    #   resp.data.obfuscation_setting #=> Types::ObfuscationSetting
    #   resp.data.obfuscation_setting.obfuscation_setting_type #=> String, one of ["None", "DefaultObfuscation"]
    #   resp.data.bot_id #=> String
    #   resp.data.bot_version #=> String
    #   resp.data.locale_id #=> String
    #   resp.data.intent_id #=> String
    #   resp.data.creation_date_time #=> Time
    #   resp.data.last_updated_date_time #=> Time
    #   resp.data.multiple_values_setting #=> Types::MultipleValuesSetting
    #   resp.data.multiple_values_setting.allow_multiple_values #=> Boolean
    #
    def describe_slot(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeSlotInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeSlotInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeSlot
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::DescribeSlot
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeSlot,
        stubs: @stubs,
        params_class: Params::DescribeSlotOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_slot
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets metadata information about a slot type.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeSlotTypeInput}.
    #
    # @option params [String] :slot_type_id
    #   <p>The identifier of the slot type.</p>
    #
    # @option params [String] :bot_id
    #   <p>The identifier of the bot associated with the slot type.</p>
    #
    # @option params [String] :bot_version
    #   <p>The version of the bot associated with the slot type.</p>
    #
    # @option params [String] :locale_id
    #   <p>The identifier of the language and locale of the slot type to
    #            describe. The string must match one of the supported locales. For more
    #            information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>.</p>
    #
    # @return [Types::DescribeSlotTypeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_slot_type(
    #     slot_type_id: 'slotTypeId', # required
    #     bot_id: 'botId', # required
    #     bot_version: 'botVersion', # required
    #     locale_id: 'localeId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeSlotTypeOutput
    #   resp.data.slot_type_id #=> String
    #   resp.data.slot_type_name #=> String
    #   resp.data.description #=> String
    #   resp.data.slot_type_values #=> Array<SlotTypeValue>
    #   resp.data.slot_type_values[0] #=> Types::SlotTypeValue
    #   resp.data.slot_type_values[0].sample_value #=> Types::SampleValue
    #   resp.data.slot_type_values[0].sample_value.value #=> String
    #   resp.data.slot_type_values[0].synonyms #=> Array<SampleValue>
    #   resp.data.value_selection_setting #=> Types::SlotValueSelectionSetting
    #   resp.data.value_selection_setting.resolution_strategy #=> String, one of ["OriginalValue", "TopResolution"]
    #   resp.data.value_selection_setting.regex_filter #=> Types::SlotValueRegexFilter
    #   resp.data.value_selection_setting.regex_filter.pattern #=> String
    #   resp.data.value_selection_setting.advanced_recognition_setting #=> Types::AdvancedRecognitionSetting
    #   resp.data.value_selection_setting.advanced_recognition_setting.audio_recognition_strategy #=> String, one of ["UseSlotValuesAsCustomVocabulary"]
    #   resp.data.parent_slot_type_signature #=> String
    #   resp.data.bot_id #=> String
    #   resp.data.bot_version #=> String
    #   resp.data.locale_id #=> String
    #   resp.data.creation_date_time #=> Time
    #   resp.data.last_updated_date_time #=> Time
    #   resp.data.external_source_setting #=> Types::ExternalSourceSetting
    #   resp.data.external_source_setting.grammar_slot_type_setting #=> Types::GrammarSlotTypeSetting
    #   resp.data.external_source_setting.grammar_slot_type_setting.source #=> Types::GrammarSlotTypeSource
    #   resp.data.external_source_setting.grammar_slot_type_setting.source.s3_bucket_name #=> String
    #   resp.data.external_source_setting.grammar_slot_type_setting.source.s3_object_key #=> String
    #   resp.data.external_source_setting.grammar_slot_type_setting.source.kms_key_arn #=> String
    #
    def describe_slot_type(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeSlotTypeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeSlotTypeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeSlotType
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::DescribeSlotType
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeSlotType,
        stubs: @stubs,
        params_class: Params::DescribeSlotTypeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_slot_type
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides a list of utterances that users have sent to the
    #          bot.</p>
    #          <p>Utterances are aggregated by the text of the utterance. For example,
    #          all instances where customers used the phrase "I want to order pizza"
    #          are aggregated into the same line in the response.</p>
    #          <p>You can see both detected utterances and missed utterances. A
    #          detected utterance is where the bot properly recognized the utterance
    #          and activated the associated intent. A missed utterance was not
    #          recognized by the bot and didn't activate an intent.</p>
    #          <p>Utterances can be aggregated for a bot alias or for a bot version,
    #          but not both at the same time.</p>
    #          <p>Utterances statistics are not generated under the following
    #          conditions:</p>
    #          <ul>
    #             <li>
    #                <p>The <code>childDirected</code> field was set to true when the
    #                bot was created.</p>
    #             </li>
    #             <li>
    #                <p>You are using slot obfuscation with one or more slots.</p>
    #             </li>
    #             <li>
    #                <p>You opted out of participating in improving Amazon Lex.</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::ListAggregatedUtterancesInput}.
    #
    # @option params [String] :bot_id
    #   <p>The unique identifier of the bot associated with this
    #            request.</p>
    #
    # @option params [String] :bot_alias_id
    #   <p>The identifier of the bot alias associated with this request. If you
    #            specify the bot alias, you can't specify the bot version.</p>
    #
    # @option params [String] :bot_version
    #   <p>The identifier of the bot version associated with this request. If
    #            you specify the bot version, you can't specify the bot alias.</p>
    #
    # @option params [String] :locale_id
    #   <p>The identifier of the language and locale where the utterances were
    #            collected. For more information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported
    #            languages</a>.</p>
    #
    # @option params [UtteranceAggregationDuration] :aggregation_duration
    #   <p>The time window for aggregating the utterance information. You can
    #            specify a time between one hour and two weeks.</p>
    #
    # @option params [AggregatedUtterancesSortBy] :sort_by
    #   <p>Specifies sorting parameters for the list of utterances. You can
    #            sort by the hit count, the missed count, or the number of distinct
    #            sessions the utterance appeared in.</p>
    #
    # @option params [Array<AggregatedUtterancesFilter>] :filters
    #   <p>Provides the specification of a filter used to limit the utterances
    #            in the response to only those that match the filter specification. You
    #            can only specify one filter and one string to filter on.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of utterances to return in each page of results.
    #            If there are fewer results than the maximum page size, only the actual
    #            number of results are returned. If you don't specify the
    #               <code>maxResults</code> parameter, 1,000 results are
    #            returned.</p>
    #
    # @option params [String] :next_token
    #   <p>If the response from the <code>ListAggregatedUtterances</code>
    #            operation contains more results that specified in the
    #               <code>maxResults</code> parameter, a token is returned in the
    #            response. Use that token in the <code>nextToken</code> parameter to
    #            return the next page of results.</p>
    #
    # @return [Types::ListAggregatedUtterancesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_aggregated_utterances(
    #     bot_id: 'botId', # required
    #     bot_alias_id: 'botAliasId',
    #     bot_version: 'botVersion',
    #     locale_id: 'localeId', # required
    #     aggregation_duration: {
    #       relative_aggregation_duration: {
    #         time_dimension: 'Hours', # required - accepts ["Hours", "Days", "Weeks"]
    #         time_value: 1 # required
    #       } # required
    #     }, # required
    #     sort_by: {
    #       attribute: 'HitCount', # required - accepts ["HitCount", "MissedCount"]
    #       order: 'Ascending' # required - accepts ["Ascending", "Descending"]
    #     },
    #     filters: [
    #       {
    #         name: 'Utterance', # required - accepts ["Utterance"]
    #         values: [
    #           'member'
    #         ], # required
    #         operator: 'CO' # required - accepts ["CO", "EQ"]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAggregatedUtterancesOutput
    #   resp.data.bot_id #=> String
    #   resp.data.bot_alias_id #=> String
    #   resp.data.bot_version #=> String
    #   resp.data.locale_id #=> String
    #   resp.data.aggregation_duration #=> Types::UtteranceAggregationDuration
    #   resp.data.aggregation_duration.relative_aggregation_duration #=> Types::RelativeAggregationDuration
    #   resp.data.aggregation_duration.relative_aggregation_duration.time_dimension #=> String, one of ["Hours", "Days", "Weeks"]
    #   resp.data.aggregation_duration.relative_aggregation_duration.time_value #=> Integer
    #   resp.data.aggregation_window_start_time #=> Time
    #   resp.data.aggregation_window_end_time #=> Time
    #   resp.data.aggregation_last_refreshed_date_time #=> Time
    #   resp.data.aggregated_utterances_summaries #=> Array<AggregatedUtterancesSummary>
    #   resp.data.aggregated_utterances_summaries[0] #=> Types::AggregatedUtterancesSummary
    #   resp.data.aggregated_utterances_summaries[0].utterance #=> String
    #   resp.data.aggregated_utterances_summaries[0].hit_count #=> Integer
    #   resp.data.aggregated_utterances_summaries[0].missed_count #=> Integer
    #   resp.data.aggregated_utterances_summaries[0].utterance_first_recorded_in_aggregation_duration #=> Time
    #   resp.data.aggregated_utterances_summaries[0].utterance_last_recorded_in_aggregation_duration #=> Time
    #   resp.data.aggregated_utterances_summaries[0].contains_data_from_deleted_resources #=> Boolean
    #   resp.data.next_token #=> String
    #
    def list_aggregated_utterances(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAggregatedUtterancesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAggregatedUtterancesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAggregatedUtterances
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::PreconditionFailedException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException]),
        data_parser: Parsers::ListAggregatedUtterances
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAggregatedUtterances,
        stubs: @stubs,
        params_class: Params::ListAggregatedUtterancesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_aggregated_utterances
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a list of aliases for the specified bot.</p>
    #
    # @param [Hash] params
    #   See {Types::ListBotAliasesInput}.
    #
    # @option params [String] :bot_id
    #   <p>The identifier of the bot to list aliases for.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of aliases to return in each page of results. If
    #            there are fewer results than the max page size, only the actual number
    #            of results are returned.</p>
    #
    # @option params [String] :next_token
    #   <p>If the response from the <code>ListBotAliases</code> operation
    #            contains more results than specified in the <code>maxResults</code>
    #            parameter, a token is returned in the response. Use that token in the
    #               <code>nextToken</code> parameter to return the next page of
    #            results.</p>
    #
    # @return [Types::ListBotAliasesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_bot_aliases(
    #     bot_id: 'botId', # required
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListBotAliasesOutput
    #   resp.data.bot_alias_summaries #=> Array<BotAliasSummary>
    #   resp.data.bot_alias_summaries[0] #=> Types::BotAliasSummary
    #   resp.data.bot_alias_summaries[0].bot_alias_id #=> String
    #   resp.data.bot_alias_summaries[0].bot_alias_name #=> String
    #   resp.data.bot_alias_summaries[0].description #=> String
    #   resp.data.bot_alias_summaries[0].bot_version #=> String
    #   resp.data.bot_alias_summaries[0].bot_alias_status #=> String, one of ["Creating", "Available", "Deleting", "Failed"]
    #   resp.data.bot_alias_summaries[0].creation_date_time #=> Time
    #   resp.data.bot_alias_summaries[0].last_updated_date_time #=> Time
    #   resp.data.next_token #=> String
    #   resp.data.bot_id #=> String
    #
    def list_bot_aliases(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListBotAliasesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListBotAliasesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListBotAliases
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::ListBotAliases
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListBotAliases,
        stubs: @stubs,
        params_class: Params::ListBotAliasesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_bot_aliases
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a list of locales for the specified bot.</p>
    #
    # @param [Hash] params
    #   See {Types::ListBotLocalesInput}.
    #
    # @option params [String] :bot_id
    #   <p>The identifier of the bot to list locales for.</p>
    #
    # @option params [String] :bot_version
    #   <p>The version of the bot to list locales for.</p>
    #
    # @option params [BotLocaleSortBy] :sort_by
    #   <p>Specifies sorting parameters for the list of locales. You can sort
    #            by locale name in ascending or descending order.</p>
    #
    # @option params [Array<BotLocaleFilter>] :filters
    #   <p>Provides the specification for a filter used to limit the response
    #            to only those locales that match the filter specification. You can only
    #            specify one filter and one value to filter on.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of aliases to return in each page of results. If
    #            there are fewer results than the max page size, only the actual number
    #            of results are returned.</p>
    #
    # @option params [String] :next_token
    #   <p>If the response from the <code>ListBotLocales</code> operation
    #            contains more results than specified in the <code>maxResults</code>
    #            parameter, a token is returned in the response. Use that token as the
    #               <code>nextToken</code> parameter to return the next page of results.
    #         </p>
    #
    # @return [Types::ListBotLocalesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_bot_locales(
    #     bot_id: 'botId', # required
    #     bot_version: 'botVersion', # required
    #     sort_by: {
    #       attribute: 'BotLocaleName', # required - accepts ["BotLocaleName"]
    #       order: 'Ascending' # required - accepts ["Ascending", "Descending"]
    #     },
    #     filters: [
    #       {
    #         name: 'BotLocaleName', # required - accepts ["BotLocaleName"]
    #         values: [
    #           'member'
    #         ], # required
    #         operator: 'CO' # required - accepts ["CO", "EQ"]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListBotLocalesOutput
    #   resp.data.bot_id #=> String
    #   resp.data.bot_version #=> String
    #   resp.data.next_token #=> String
    #   resp.data.bot_locale_summaries #=> Array<BotLocaleSummary>
    #   resp.data.bot_locale_summaries[0] #=> Types::BotLocaleSummary
    #   resp.data.bot_locale_summaries[0].locale_id #=> String
    #   resp.data.bot_locale_summaries[0].locale_name #=> String
    #   resp.data.bot_locale_summaries[0].description #=> String
    #   resp.data.bot_locale_summaries[0].bot_locale_status #=> String, one of ["Creating", "Building", "Built", "ReadyExpressTesting", "Failed", "Deleting", "NotBuilt", "Importing", "Processing"]
    #   resp.data.bot_locale_summaries[0].last_updated_date_time #=> Time
    #   resp.data.bot_locale_summaries[0].last_build_submitted_date_time #=> Time
    #
    def list_bot_locales(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListBotLocalesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListBotLocalesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListBotLocales
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::ListBotLocales
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListBotLocales,
        stubs: @stubs,
        params_class: Params::ListBotLocalesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_bot_locales
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Get a list of bot recommendations that meet the specified
    #          criteria.</p>
    #
    # @param [Hash] params
    #   See {Types::ListBotRecommendationsInput}.
    #
    # @option params [String] :bot_id
    #   <p>The unique identifier of the bot that contains the bot
    #            recommendation list.</p>
    #
    # @option params [String] :bot_version
    #   <p>The version of the bot that contains the bot recommendation
    #            list.</p>
    #
    # @option params [String] :locale_id
    #   <p>The identifier of the language and locale of the bot recommendation
    #            list.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of bot recommendations to return in each page of
    #            results. If there are fewer results than the max page size, only the
    #            actual number of results are returned.</p>
    #
    # @option params [String] :next_token
    #   <p>If the response from the ListBotRecommendation operation contains
    #            more results than specified in the maxResults parameter, a token is
    #            returned in the response. Use that token in the nextToken parameter to
    #            return the next page of results.</p>
    #
    # @return [Types::ListBotRecommendationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_bot_recommendations(
    #     bot_id: 'botId', # required
    #     bot_version: 'botVersion', # required
    #     locale_id: 'localeId', # required
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListBotRecommendationsOutput
    #   resp.data.bot_id #=> String
    #   resp.data.bot_version #=> String
    #   resp.data.locale_id #=> String
    #   resp.data.bot_recommendation_summaries #=> Array<BotRecommendationSummary>
    #   resp.data.bot_recommendation_summaries[0] #=> Types::BotRecommendationSummary
    #   resp.data.bot_recommendation_summaries[0].bot_recommendation_status #=> String, one of ["Processing", "Deleting", "Deleted", "Downloading", "Updating", "Available", "Failed"]
    #   resp.data.bot_recommendation_summaries[0].bot_recommendation_id #=> String
    #   resp.data.bot_recommendation_summaries[0].creation_date_time #=> Time
    #   resp.data.bot_recommendation_summaries[0].last_updated_date_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_bot_recommendations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListBotRecommendationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListBotRecommendationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListBotRecommendations
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::ListBotRecommendations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListBotRecommendations,
        stubs: @stubs,
        params_class: Params::ListBotRecommendationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_bot_recommendations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about all of the versions of a bot.</p>
    #          <p>The <code>ListBotVersions</code> operation returns a summary of each
    #          version of a bot. For example, if a bot has three numbered versions,
    #          the <code>ListBotVersions</code> operation returns for summaries, one
    #          for each numbered version and one for the <code>DRAFT</code>
    #          version.</p>
    #          <p>The <code>ListBotVersions</code> operation always returns at least
    #          one version, the <code>DRAFT</code> version.</p>
    #
    # @param [Hash] params
    #   See {Types::ListBotVersionsInput}.
    #
    # @option params [String] :bot_id
    #   <p>The identifier of the bot to list versions for.</p>
    #
    # @option params [BotVersionSortBy] :sort_by
    #   <p>Specifies sorting parameters for the list of versions. You can
    #            specify that the list be sorted by version name in either ascending or
    #            descending order.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of versions to return in each page of results. If
    #            there are fewer results than the max page size, only the actual number
    #            of results are returned.</p>
    #
    # @option params [String] :next_token
    #   <p>If the response to the <code>ListBotVersion</code> operation
    #            contains more results than specified in the <code>maxResults</code>
    #            parameter, a token is returned in the response. Use that token in the
    #               <code>nextToken</code> parameter to return the next page of
    #            results.</p>
    #
    # @return [Types::ListBotVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_bot_versions(
    #     bot_id: 'botId', # required
    #     sort_by: {
    #       attribute: 'BotVersion', # required - accepts ["BotVersion"]
    #       order: 'Ascending' # required - accepts ["Ascending", "Descending"]
    #     },
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListBotVersionsOutput
    #   resp.data.bot_id #=> String
    #   resp.data.bot_version_summaries #=> Array<BotVersionSummary>
    #   resp.data.bot_version_summaries[0] #=> Types::BotVersionSummary
    #   resp.data.bot_version_summaries[0].bot_name #=> String
    #   resp.data.bot_version_summaries[0].bot_version #=> String
    #   resp.data.bot_version_summaries[0].description #=> String
    #   resp.data.bot_version_summaries[0].bot_status #=> String, one of ["Creating", "Available", "Inactive", "Deleting", "Failed", "Versioning", "Importing"]
    #   resp.data.bot_version_summaries[0].creation_date_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_bot_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListBotVersionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListBotVersionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListBotVersions
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::ListBotVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListBotVersions,
        stubs: @stubs,
        params_class: Params::ListBotVersionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_bot_versions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a list of available bots.</p>
    #
    # @param [Hash] params
    #   See {Types::ListBotsInput}.
    #
    # @option params [BotSortBy] :sort_by
    #   <p>Specifies sorting parameters for the list of bots. You can specify
    #            that the list be sorted by bot name in ascending or descending
    #            order.</p>
    #
    # @option params [Array<BotFilter>] :filters
    #   <p>Provides the specification of a filter used to limit the bots in the
    #            response to only those that match the filter specification. You can
    #            only specify one filter and one string to filter on.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of bots to return in each page of results. If
    #            there are fewer results than the maximum page size, only the actual
    #            number of results are returned.</p>
    #
    # @option params [String] :next_token
    #   <p>If the response from the <code>ListBots</code> operation contains
    #            more results than specified in the <code>maxResults</code> parameter, a
    #            token is returned in the response. </p>
    #            <p>Use the returned token in the <code>nextToken</code> parameter of a
    #               <code>ListBots</code> request to return the next page of results.
    #            For a complete set of results, call the <code>ListBots</code> operation
    #            until the <code>nextToken</code> returned in the response is
    #            null.</p>
    #
    # @return [Types::ListBotsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_bots(
    #     sort_by: {
    #       attribute: 'BotName', # required - accepts ["BotName"]
    #       order: 'Ascending' # required - accepts ["Ascending", "Descending"]
    #     },
    #     filters: [
    #       {
    #         name: 'BotName', # required - accepts ["BotName"]
    #         values: [
    #           'member'
    #         ], # required
    #         operator: 'CO' # required - accepts ["CO", "EQ"]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListBotsOutput
    #   resp.data.bot_summaries #=> Array<BotSummary>
    #   resp.data.bot_summaries[0] #=> Types::BotSummary
    #   resp.data.bot_summaries[0].bot_id #=> String
    #   resp.data.bot_summaries[0].bot_name #=> String
    #   resp.data.bot_summaries[0].description #=> String
    #   resp.data.bot_summaries[0].bot_status #=> String, one of ["Creating", "Available", "Inactive", "Deleting", "Failed", "Versioning", "Importing"]
    #   resp.data.bot_summaries[0].latest_bot_version #=> String
    #   resp.data.bot_summaries[0].last_updated_date_time #=> Time
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
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

    # <p>Gets a list of built-in intents provided by Amazon Lex that you can use
    #          in your bot. </p>
    #          <p>To use a built-in intent as a the base for your own intent, include
    #          the built-in intent signature in the <code>parentIntentSignature</code>
    #          parameter when you call the <code>CreateIntent</code> operation. For
    #          more information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/API_CreateIntent.html">CreateIntent</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListBuiltInIntentsInput}.
    #
    # @option params [String] :locale_id
    #   <p>The identifier of the language and locale of the intents to list.
    #            The string must match one of the supported locales. For more
    #            information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>.</p>
    #
    # @option params [BuiltInIntentSortBy] :sort_by
    #   <p>Specifies sorting parameters for the list of built-in intents. You
    #            can specify that the list be sorted by the built-in intent signature in
    #            either ascending or descending order.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of built-in intents to return in each page of
    #            results. If there are fewer results than the max page size, only the
    #            actual number of results are returned.</p>
    #
    # @option params [String] :next_token
    #   <p>If the response from the <code>ListBuiltInIntents</code> operation
    #            contains more results than specified in the <code>maxResults</code>
    #            parameter, a token is returned in the response. Use that token in the
    #               <code>nextToken</code> parameter to return the next page of
    #            results.</p>
    #
    # @return [Types::ListBuiltInIntentsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_built_in_intents(
    #     locale_id: 'localeId', # required
    #     sort_by: {
    #       attribute: 'IntentSignature', # required - accepts ["IntentSignature"]
    #       order: 'Ascending' # required - accepts ["Ascending", "Descending"]
    #     },
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListBuiltInIntentsOutput
    #   resp.data.built_in_intent_summaries #=> Array<BuiltInIntentSummary>
    #   resp.data.built_in_intent_summaries[0] #=> Types::BuiltInIntentSummary
    #   resp.data.built_in_intent_summaries[0].intent_signature #=> String
    #   resp.data.built_in_intent_summaries[0].description #=> String
    #   resp.data.next_token #=> String
    #   resp.data.locale_id #=> String
    #
    def list_built_in_intents(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListBuiltInIntentsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListBuiltInIntentsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListBuiltInIntents
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::ListBuiltInIntents
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListBuiltInIntents,
        stubs: @stubs,
        params_class: Params::ListBuiltInIntentsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_built_in_intents
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a list of built-in slot types that meet the specified
    #          criteria.</p>
    #
    # @param [Hash] params
    #   See {Types::ListBuiltInSlotTypesInput}.
    #
    # @option params [String] :locale_id
    #   <p>The identifier of the language and locale of the slot types to list.
    #            The string must match one of the supported locales. For more
    #            information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>.</p>
    #
    # @option params [BuiltInSlotTypeSortBy] :sort_by
    #   <p>Determines the sort order for the response from the
    #               <code>ListBuiltInSlotTypes</code> operation. You can choose to sort
    #            by the slot type signature in either ascending or descending
    #            order.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of built-in slot types to return in each page of
    #            results. If there are fewer results than the max page size, only the
    #            actual number of results are returned.</p>
    #
    # @option params [String] :next_token
    #   <p>If the response from the <code>ListBuiltInSlotTypes</code> operation
    #            contains more results than specified in the <code>maxResults</code>
    #            parameter, a token is returned in the response. Use that token in the
    #               <code>nextToken</code> parameter to return the next page of
    #            results.</p>
    #
    # @return [Types::ListBuiltInSlotTypesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_built_in_slot_types(
    #     locale_id: 'localeId', # required
    #     sort_by: {
    #       attribute: 'SlotTypeSignature', # required - accepts ["SlotTypeSignature"]
    #       order: 'Ascending' # required - accepts ["Ascending", "Descending"]
    #     },
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListBuiltInSlotTypesOutput
    #   resp.data.built_in_slot_type_summaries #=> Array<BuiltInSlotTypeSummary>
    #   resp.data.built_in_slot_type_summaries[0] #=> Types::BuiltInSlotTypeSummary
    #   resp.data.built_in_slot_type_summaries[0].slot_type_signature #=> String
    #   resp.data.built_in_slot_type_summaries[0].description #=> String
    #   resp.data.next_token #=> String
    #   resp.data.locale_id #=> String
    #
    def list_built_in_slot_types(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListBuiltInSlotTypesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListBuiltInSlotTypesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListBuiltInSlotTypes
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::ListBuiltInSlotTypes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListBuiltInSlotTypes,
        stubs: @stubs,
        params_class: Params::ListBuiltInSlotTypesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_built_in_slot_types
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the exports for a bot, bot locale, or custom vocabulary.
    #          Exports are kept in the list for 7 days.</p>
    #
    # @param [Hash] params
    #   See {Types::ListExportsInput}.
    #
    # @option params [String] :bot_id
    #   <p>The unique identifier that Amazon Lex assigned to the bot.</p>
    #
    # @option params [String] :bot_version
    #   <p>The version of the bot to list exports for. </p>
    #
    # @option params [ExportSortBy] :sort_by
    #   <p>Determines the field that the list of exports is sorted by. You can
    #            sort by the <code>LastUpdatedDateTime</code> field in ascending or
    #            descending order.</p>
    #
    # @option params [Array<ExportFilter>] :filters
    #   <p>Provides the specification of a filter used to limit the exports in
    #            the response to only those that match the filter specification. You can
    #            only specify one filter and one string to filter on.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of exports to return in each page of results. If
    #            there are fewer results than the max page size, only the actual number
    #            of results are returned.</p>
    #
    # @option params [String] :next_token
    #   <p>If the response from the <code>ListExports</code> operation contains
    #            more results that specified in the <code>maxResults</code> parameter, a
    #            token is returned in the response. </p>
    #            <p>Use the returned token in the <code>nextToken</code> parameter of a
    #               <code>ListExports</code> request to return the next page of results.
    #            For a complete set of results, call the <code>ListExports</code>
    #            operation until the <code>nextToken</code> returned in the response is
    #            null.</p>
    #
    # @option params [String] :locale_id
    #   <p>Specifies the resources that should be exported. If you
    #         don't specify a resource type in the <code>filters</code> parameter,
    #         both bot locales and custom vocabularies are exported.</p>
    #
    # @return [Types::ListExportsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_exports(
    #     bot_id: 'botId',
    #     bot_version: 'botVersion',
    #     sort_by: {
    #       attribute: 'LastUpdatedDateTime', # required - accepts ["LastUpdatedDateTime"]
    #       order: 'Ascending' # required - accepts ["Ascending", "Descending"]
    #     },
    #     filters: [
    #       {
    #         name: 'ExportResourceType', # required - accepts ["ExportResourceType"]
    #         values: [
    #           'member'
    #         ], # required
    #         operator: 'CO' # required - accepts ["CO", "EQ"]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: 'nextToken',
    #     locale_id: 'localeId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListExportsOutput
    #   resp.data.bot_id #=> String
    #   resp.data.bot_version #=> String
    #   resp.data.export_summaries #=> Array<ExportSummary>
    #   resp.data.export_summaries[0] #=> Types::ExportSummary
    #   resp.data.export_summaries[0].export_id #=> String
    #   resp.data.export_summaries[0].resource_specification #=> Types::ExportResourceSpecification
    #   resp.data.export_summaries[0].resource_specification.bot_export_specification #=> Types::BotExportSpecification
    #   resp.data.export_summaries[0].resource_specification.bot_export_specification.bot_id #=> String
    #   resp.data.export_summaries[0].resource_specification.bot_export_specification.bot_version #=> String
    #   resp.data.export_summaries[0].resource_specification.bot_locale_export_specification #=> Types::BotLocaleExportSpecification
    #   resp.data.export_summaries[0].resource_specification.bot_locale_export_specification.bot_id #=> String
    #   resp.data.export_summaries[0].resource_specification.bot_locale_export_specification.bot_version #=> String
    #   resp.data.export_summaries[0].resource_specification.bot_locale_export_specification.locale_id #=> String
    #   resp.data.export_summaries[0].resource_specification.custom_vocabulary_export_specification #=> Types::CustomVocabularyExportSpecification
    #   resp.data.export_summaries[0].resource_specification.custom_vocabulary_export_specification.bot_id #=> String
    #   resp.data.export_summaries[0].resource_specification.custom_vocabulary_export_specification.bot_version #=> String
    #   resp.data.export_summaries[0].resource_specification.custom_vocabulary_export_specification.locale_id #=> String
    #   resp.data.export_summaries[0].file_format #=> String, one of ["LexJson", "TSV"]
    #   resp.data.export_summaries[0].export_status #=> String, one of ["InProgress", "Completed", "Failed", "Deleting"]
    #   resp.data.export_summaries[0].creation_date_time #=> Time
    #   resp.data.export_summaries[0].last_updated_date_time #=> Time
    #   resp.data.next_token #=> String
    #   resp.data.locale_id #=> String
    #
    def list_exports(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListExportsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListExportsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListExports
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException]),
        data_parser: Parsers::ListExports
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListExports,
        stubs: @stubs,
        params_class: Params::ListExportsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_exports
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the imports for a bot, bot locale, or custom vocabulary.
    #          Imports are kept in the list for 7 days.</p>
    #
    # @param [Hash] params
    #   See {Types::ListImportsInput}.
    #
    # @option params [String] :bot_id
    #   <p>The unique identifier that Amazon Lex assigned to the bot.</p>
    #
    # @option params [String] :bot_version
    #   <p>The version of the bot to list imports for.</p>
    #
    # @option params [ImportSortBy] :sort_by
    #   <p>Determines the field that the list of imports is sorted by. You can
    #            sort by the <code>LastUpdatedDateTime</code> field in ascending or
    #            descending order.</p>
    #
    # @option params [Array<ImportFilter>] :filters
    #   <p>Provides the specification of a filter used to limit the bots in the
    #            response to only those that match the filter specification. You can
    #            only specify one filter and one string to filter on.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of imports to return in each page of results. If
    #            there are fewer results than the max page size, only the actual number
    #            of results are returned.</p>
    #
    # @option params [String] :next_token
    #   <p>If the response from the <code>ListImports</code> operation contains
    #            more results than specified in the <code>maxResults</code> parameter, a
    #            token is returned in the response.</p>
    #            <p>Use the returned token in the <code>nextToken</code> parameter of a
    #               <code>ListImports</code> request to return the next page of results.
    #            For a complete set of results, call the <code>ListImports</code>
    #            operation until the <code>nextToken</code> returned in the response is
    #            null.</p>
    #
    # @option params [String] :locale_id
    #   <p>Specifies the locale that should be present in the list. If you
    #            don't specify a resource type in the <code>filters</code> parameter,
    #            the list contains both bot locales and custom vocabularies.</p>
    #
    # @return [Types::ListImportsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_imports(
    #     bot_id: 'botId',
    #     bot_version: 'botVersion',
    #     sort_by: {
    #       attribute: 'LastUpdatedDateTime', # required - accepts ["LastUpdatedDateTime"]
    #       order: 'Ascending' # required - accepts ["Ascending", "Descending"]
    #     },
    #     filters: [
    #       {
    #         name: 'ImportResourceType', # required - accepts ["ImportResourceType"]
    #         values: [
    #           'member'
    #         ], # required
    #         operator: 'CO' # required - accepts ["CO", "EQ"]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: 'nextToken',
    #     locale_id: 'localeId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListImportsOutput
    #   resp.data.bot_id #=> String
    #   resp.data.bot_version #=> String
    #   resp.data.import_summaries #=> Array<ImportSummary>
    #   resp.data.import_summaries[0] #=> Types::ImportSummary
    #   resp.data.import_summaries[0].import_id #=> String
    #   resp.data.import_summaries[0].imported_resource_id #=> String
    #   resp.data.import_summaries[0].imported_resource_name #=> String
    #   resp.data.import_summaries[0].import_status #=> String, one of ["InProgress", "Completed", "Failed", "Deleting"]
    #   resp.data.import_summaries[0].merge_strategy #=> String, one of ["Overwrite", "FailOnConflict", "Append"]
    #   resp.data.import_summaries[0].creation_date_time #=> Time
    #   resp.data.import_summaries[0].last_updated_date_time #=> Time
    #   resp.data.import_summaries[0].imported_resource_type #=> String, one of ["Bot", "BotLocale", "CustomVocabulary"]
    #   resp.data.next_token #=> String
    #   resp.data.locale_id #=> String
    #
    def list_imports(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListImportsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListImportsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListImports
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException]),
        data_parser: Parsers::ListImports
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListImports,
        stubs: @stubs,
        params_class: Params::ListImportsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_imports
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Get a list of intents that meet the specified criteria.</p>
    #
    # @param [Hash] params
    #   See {Types::ListIntentsInput}.
    #
    # @option params [String] :bot_id
    #   <p>The unique identifier of the bot that contains the intent.</p>
    #
    # @option params [String] :bot_version
    #   <p>The version of the bot that contains the intent.</p>
    #
    # @option params [String] :locale_id
    #   <p>The identifier of the language and locale of the intents to list.
    #            The string must match one of the supported locales. For more
    #            information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>.</p>
    #
    # @option params [IntentSortBy] :sort_by
    #   <p>Determines the sort order for the response from the
    #               <code>ListIntents</code> operation. You can choose to sort by the
    #            intent name or last updated date in either ascending or descending
    #            order.</p>
    #
    # @option params [Array<IntentFilter>] :filters
    #   <p>Provides the specification of a filter used to limit the intents in
    #            the response to only those that match the filter specification. You can
    #            only specify one filter and only one string to filter on.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of intents to return in each page of results. If
    #            there are fewer results than the max page size, only the actual number
    #            of results are returned.</p>
    #
    # @option params [String] :next_token
    #   <p>If the response from the <code>ListIntents</code> operation contains
    #            more results than specified in the <code>maxResults</code> parameter, a
    #            token is returned in the response.</p>
    #            <p>Use the returned token in the <code>nextToken</code> parameter of a
    #               <code>ListIntents</code> request to return the next page of results.
    #            For a complete set of results, call the <code>ListIntents</code>
    #            operation until the <code>nextToken</code> returned in the response is
    #            null.</p>
    #
    # @return [Types::ListIntentsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_intents(
    #     bot_id: 'botId', # required
    #     bot_version: 'botVersion', # required
    #     locale_id: 'localeId', # required
    #     sort_by: {
    #       attribute: 'IntentName', # required - accepts ["IntentName", "LastUpdatedDateTime"]
    #       order: 'Ascending' # required - accepts ["Ascending", "Descending"]
    #     },
    #     filters: [
    #       {
    #         name: 'IntentName', # required - accepts ["IntentName"]
    #         values: [
    #           'member'
    #         ], # required
    #         operator: 'CO' # required - accepts ["CO", "EQ"]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListIntentsOutput
    #   resp.data.bot_id #=> String
    #   resp.data.bot_version #=> String
    #   resp.data.locale_id #=> String
    #   resp.data.intent_summaries #=> Array<IntentSummary>
    #   resp.data.intent_summaries[0] #=> Types::IntentSummary
    #   resp.data.intent_summaries[0].intent_id #=> String
    #   resp.data.intent_summaries[0].intent_name #=> String
    #   resp.data.intent_summaries[0].description #=> String
    #   resp.data.intent_summaries[0].parent_intent_signature #=> String
    #   resp.data.intent_summaries[0].input_contexts #=> Array<InputContext>
    #   resp.data.intent_summaries[0].input_contexts[0] #=> Types::InputContext
    #   resp.data.intent_summaries[0].input_contexts[0].name #=> String
    #   resp.data.intent_summaries[0].output_contexts #=> Array<OutputContext>
    #   resp.data.intent_summaries[0].output_contexts[0] #=> Types::OutputContext
    #   resp.data.intent_summaries[0].output_contexts[0].name #=> String
    #   resp.data.intent_summaries[0].output_contexts[0].time_to_live_in_seconds #=> Integer
    #   resp.data.intent_summaries[0].output_contexts[0].turns_to_live #=> Integer
    #   resp.data.intent_summaries[0].last_updated_date_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_intents(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListIntentsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListIntentsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListIntents
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::ListIntents
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListIntents,
        stubs: @stubs,
        params_class: Params::ListIntentsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_intents
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a list of recommended intents provided by the bot
    #          recommendation that you can use in your bot.</p>
    #
    # @param [Hash] params
    #   See {Types::ListRecommendedIntentsInput}.
    #
    # @option params [String] :bot_id
    #   <p>The unique identifier of the bot associated with the recommended
    #            intents.</p>
    #
    # @option params [String] :bot_version
    #   <p>The version of the bot that contains the recommended intents.</p>
    #
    # @option params [String] :locale_id
    #   <p>The identifier of the language and locale of the recommended
    #            intents.</p>
    #
    # @option params [String] :bot_recommendation_id
    #   <p>The identifier of the bot recommendation that contains the
    #            recommended intents.</p>
    #
    # @option params [String] :next_token
    #   <p>If the response from the ListRecommendedIntents operation contains
    #            more results than specified in the maxResults parameter, a token is
    #            returned in the response. Use that token in the nextToken parameter to
    #            return the next page of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of bot recommendations to return in each page of
    #            results. If there are fewer results than the max page size, only the
    #            actual number of results are returned.</p>
    #
    # @return [Types::ListRecommendedIntentsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_recommended_intents(
    #     bot_id: 'botId', # required
    #     bot_version: 'botVersion', # required
    #     locale_id: 'localeId', # required
    #     bot_recommendation_id: 'botRecommendationId', # required
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListRecommendedIntentsOutput
    #   resp.data.bot_id #=> String
    #   resp.data.bot_version #=> String
    #   resp.data.locale_id #=> String
    #   resp.data.bot_recommendation_id #=> String
    #   resp.data.summary_list #=> Array<RecommendedIntentSummary>
    #   resp.data.summary_list[0] #=> Types::RecommendedIntentSummary
    #   resp.data.summary_list[0].intent_id #=> String
    #   resp.data.summary_list[0].intent_name #=> String
    #   resp.data.summary_list[0].sample_utterances_count #=> Integer
    #   resp.data.next_token #=> String
    #
    def list_recommended_intents(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListRecommendedIntentsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListRecommendedIntentsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListRecommendedIntents
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::ListRecommendedIntents
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListRecommendedIntents,
        stubs: @stubs,
        params_class: Params::ListRecommendedIntentsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_recommended_intents
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a list of slot types that match the specified criteria.</p>
    #
    # @param [Hash] params
    #   See {Types::ListSlotTypesInput}.
    #
    # @option params [String] :bot_id
    #   <p>The unique identifier of the bot that contains the slot
    #            types.</p>
    #
    # @option params [String] :bot_version
    #   <p>The version of the bot that contains the slot type.</p>
    #
    # @option params [String] :locale_id
    #   <p>The identifier of the language and locale of the slot types to list.
    #            The string must match one of the supported locales. For more
    #            information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>.</p>
    #
    # @option params [SlotTypeSortBy] :sort_by
    #   <p>Determines the sort order for the response from the
    #               <code>ListSlotTypes</code> operation. You can choose to sort by the
    #            slot type name or last updated date in either ascending or descending
    #            order.</p>
    #
    # @option params [Array<SlotTypeFilter>] :filters
    #   <p>Provides the specification of a filter used to limit the slot types
    #            in the response to only those that match the filter specification. You
    #            can only specify one filter and only one string to filter on.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of slot types to return in each page of results.
    #            If there are fewer results than the max page size, only the actual
    #            number of results are returned.</p>
    #
    # @option params [String] :next_token
    #   <p>If the response from the <code>ListSlotTypes</code> operation
    #            contains more results than specified in the <code>maxResults</code>
    #            parameter, a token is returned in the response. Use that token in the
    #               <code>nextToken</code> parameter to return the next page of
    #            results.</p>
    #
    # @return [Types::ListSlotTypesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_slot_types(
    #     bot_id: 'botId', # required
    #     bot_version: 'botVersion', # required
    #     locale_id: 'localeId', # required
    #     sort_by: {
    #       attribute: 'SlotTypeName', # required - accepts ["SlotTypeName", "LastUpdatedDateTime"]
    #       order: 'Ascending' # required - accepts ["Ascending", "Descending"]
    #     },
    #     filters: [
    #       {
    #         name: 'SlotTypeName', # required - accepts ["SlotTypeName", "ExternalSourceType"]
    #         values: [
    #           'member'
    #         ], # required
    #         operator: 'CO' # required - accepts ["CO", "EQ"]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListSlotTypesOutput
    #   resp.data.bot_id #=> String
    #   resp.data.bot_version #=> String
    #   resp.data.locale_id #=> String
    #   resp.data.slot_type_summaries #=> Array<SlotTypeSummary>
    #   resp.data.slot_type_summaries[0] #=> Types::SlotTypeSummary
    #   resp.data.slot_type_summaries[0].slot_type_id #=> String
    #   resp.data.slot_type_summaries[0].slot_type_name #=> String
    #   resp.data.slot_type_summaries[0].description #=> String
    #   resp.data.slot_type_summaries[0].parent_slot_type_signature #=> String
    #   resp.data.slot_type_summaries[0].last_updated_date_time #=> Time
    #   resp.data.slot_type_summaries[0].slot_type_category #=> String, one of ["Custom", "Extended", "ExternalGrammar"]
    #   resp.data.next_token #=> String
    #
    def list_slot_types(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListSlotTypesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListSlotTypesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListSlotTypes
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::ListSlotTypes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListSlotTypes,
        stubs: @stubs,
        params_class: Params::ListSlotTypesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_slot_types
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a list of slots that match the specified criteria.</p>
    #
    # @param [Hash] params
    #   See {Types::ListSlotsInput}.
    #
    # @option params [String] :bot_id
    #   <p>The identifier of the bot that contains the slot.</p>
    #
    # @option params [String] :bot_version
    #   <p>The version of the bot that contains the slot.</p>
    #
    # @option params [String] :locale_id
    #   <p>The identifier of the language and locale of the slots to list. The
    #            string must match one of the supported locales. For more information,
    #            see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>.</p>
    #
    # @option params [String] :intent_id
    #   <p>The unique identifier of the intent that contains the slot.</p>
    #
    # @option params [SlotSortBy] :sort_by
    #   <p>Determines the sort order for the response from the
    #               <code>ListSlots</code> operation. You can choose to sort by the slot
    #            name or last updated date in either ascending or descending
    #            order.</p>
    #
    # @option params [Array<SlotFilter>] :filters
    #   <p>Provides the specification of a filter used to limit the slots in
    #            the response to only those that match the filter specification. You can
    #            only specify one filter and only one string to filter on.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of slots to return in each page of results. If
    #            there are fewer results than the max page size, only the actual number
    #            of results are returned.</p>
    #
    # @option params [String] :next_token
    #   <p>If the response from the <code>ListSlots</code> operation contains
    #            more results than specified in the <code>maxResults</code> parameter, a
    #            token is returned in the response. Use that token in the
    #               <code>nextToken</code> parameter to return the next page of
    #            results.</p>
    #
    # @return [Types::ListSlotsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_slots(
    #     bot_id: 'botId', # required
    #     bot_version: 'botVersion', # required
    #     locale_id: 'localeId', # required
    #     intent_id: 'intentId', # required
    #     sort_by: {
    #       attribute: 'SlotName', # required - accepts ["SlotName", "LastUpdatedDateTime"]
    #       order: 'Ascending' # required - accepts ["Ascending", "Descending"]
    #     },
    #     filters: [
    #       {
    #         name: 'SlotName', # required - accepts ["SlotName"]
    #         values: [
    #           'member'
    #         ], # required
    #         operator: 'CO' # required - accepts ["CO", "EQ"]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListSlotsOutput
    #   resp.data.bot_id #=> String
    #   resp.data.bot_version #=> String
    #   resp.data.locale_id #=> String
    #   resp.data.intent_id #=> String
    #   resp.data.slot_summaries #=> Array<SlotSummary>
    #   resp.data.slot_summaries[0] #=> Types::SlotSummary
    #   resp.data.slot_summaries[0].slot_id #=> String
    #   resp.data.slot_summaries[0].slot_name #=> String
    #   resp.data.slot_summaries[0].description #=> String
    #   resp.data.slot_summaries[0].slot_constraint #=> String, one of ["Required", "Optional"]
    #   resp.data.slot_summaries[0].slot_type_id #=> String
    #   resp.data.slot_summaries[0].value_elicitation_prompt_specification #=> Types::PromptSpecification
    #   resp.data.slot_summaries[0].value_elicitation_prompt_specification.message_groups #=> Array<MessageGroup>
    #   resp.data.slot_summaries[0].value_elicitation_prompt_specification.message_groups[0] #=> Types::MessageGroup
    #   resp.data.slot_summaries[0].value_elicitation_prompt_specification.message_groups[0].message #=> Types::Message
    #   resp.data.slot_summaries[0].value_elicitation_prompt_specification.message_groups[0].message.plain_text_message #=> Types::PlainTextMessage
    #   resp.data.slot_summaries[0].value_elicitation_prompt_specification.message_groups[0].message.plain_text_message.value #=> String
    #   resp.data.slot_summaries[0].value_elicitation_prompt_specification.message_groups[0].message.custom_payload #=> Types::CustomPayload
    #   resp.data.slot_summaries[0].value_elicitation_prompt_specification.message_groups[0].message.custom_payload.value #=> String
    #   resp.data.slot_summaries[0].value_elicitation_prompt_specification.message_groups[0].message.ssml_message #=> Types::SSMLMessage
    #   resp.data.slot_summaries[0].value_elicitation_prompt_specification.message_groups[0].message.ssml_message.value #=> String
    #   resp.data.slot_summaries[0].value_elicitation_prompt_specification.message_groups[0].message.image_response_card #=> Types::ImageResponseCard
    #   resp.data.slot_summaries[0].value_elicitation_prompt_specification.message_groups[0].message.image_response_card.title #=> String
    #   resp.data.slot_summaries[0].value_elicitation_prompt_specification.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.data.slot_summaries[0].value_elicitation_prompt_specification.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.data.slot_summaries[0].value_elicitation_prompt_specification.message_groups[0].message.image_response_card.buttons #=> Array<Button>
    #   resp.data.slot_summaries[0].value_elicitation_prompt_specification.message_groups[0].message.image_response_card.buttons[0] #=> Types::Button
    #   resp.data.slot_summaries[0].value_elicitation_prompt_specification.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.data.slot_summaries[0].value_elicitation_prompt_specification.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.data.slot_summaries[0].value_elicitation_prompt_specification.message_groups[0].variations #=> Array<Message>
    #   resp.data.slot_summaries[0].value_elicitation_prompt_specification.max_retries #=> Integer
    #   resp.data.slot_summaries[0].value_elicitation_prompt_specification.allow_interrupt #=> Boolean
    #   resp.data.slot_summaries[0].last_updated_date_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_slots(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListSlotsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListSlotsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListSlots
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::ListSlots
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListSlots,
        stubs: @stubs,
        params_class: Params::ListSlotsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_slots
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a list of tags associated with a resource. Only bots, bot
    #          aliases, and bot channels can have tags associated with them.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to get a list of tags
    #            for.</p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     resource_arn: 'resourceARN' # required
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
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

    # <p>Search for associated transcripts that meet the specified
    #          criteria.</p>
    #
    # @param [Hash] params
    #   See {Types::SearchAssociatedTranscriptsInput}.
    #
    # @option params [String] :bot_id
    #   <p>The unique identifier of the bot associated with the transcripts
    #            that you are searching.</p>
    #
    # @option params [String] :bot_version
    #   <p>The version of the bot containing the transcripts that you are
    #            searching.</p>
    #
    # @option params [String] :locale_id
    #   <p>The identifier of the language and locale of the transcripts to
    #            search. The string must match one of the supported locales. For more
    #            information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>
    #            </p>
    #
    # @option params [String] :bot_recommendation_id
    #   <p>The unique identifier of the bot recommendation associated with the
    #            transcripts to search.</p>
    #
    # @option params [String] :search_order
    #   <p>How SearchResults are ordered. Valid values are Ascending or
    #            Descending. The default is Descending.</p>
    #
    # @option params [Array<AssociatedTranscriptFilter>] :filters
    #   <p>A list of filter objects.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of bot recommendations to return in each page of
    #            results. If there are fewer results than the max page size, only the
    #            actual number of results are returned.</p>
    #
    # @option params [Integer] :next_index
    #   <p>If the response from the SearchAssociatedTranscriptsRequest
    #            operation contains more results than specified in the maxResults
    #            parameter, an index is returned in the response. Use that index in the
    #            nextIndex parameter to return the next page of results.</p>
    #
    # @return [Types::SearchAssociatedTranscriptsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_associated_transcripts(
    #     bot_id: 'botId', # required
    #     bot_version: 'botVersion', # required
    #     locale_id: 'localeId', # required
    #     bot_recommendation_id: 'botRecommendationId', # required
    #     search_order: 'Ascending', # accepts ["Ascending", "Descending"]
    #     filters: [
    #       {
    #         name: 'IntentId', # required - accepts ["IntentId", "SlotTypeId"]
    #         values: [
    #           'member'
    #         ] # required
    #       }
    #     ], # required
    #     max_results: 1,
    #     next_index: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SearchAssociatedTranscriptsOutput
    #   resp.data.bot_id #=> String
    #   resp.data.bot_version #=> String
    #   resp.data.locale_id #=> String
    #   resp.data.bot_recommendation_id #=> String
    #   resp.data.next_index #=> Integer
    #   resp.data.associated_transcripts #=> Array<AssociatedTranscript>
    #   resp.data.associated_transcripts[0] #=> Types::AssociatedTranscript
    #   resp.data.associated_transcripts[0].transcript #=> String
    #   resp.data.total_results #=> Integer
    #
    def search_associated_transcripts(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SearchAssociatedTranscriptsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SearchAssociatedTranscriptsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SearchAssociatedTranscripts
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::SearchAssociatedTranscripts
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SearchAssociatedTranscripts,
        stubs: @stubs,
        params_class: Params::SearchAssociatedTranscriptsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :search_associated_transcripts
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Use this to provide your transcript data, and to start the bot
    #          recommendation process.</p>
    #
    # @param [Hash] params
    #   See {Types::StartBotRecommendationInput}.
    #
    # @option params [String] :bot_id
    #   <p>The unique identifier of the bot containing the bot
    #            recommendation.</p>
    #
    # @option params [String] :bot_version
    #   <p>The version of the bot containing the bot recommendation.</p>
    #
    # @option params [String] :locale_id
    #   <p>The identifier of the language and locale of the bot recommendation
    #            to start. The string must match one of the supported locales. For more
    #            information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>
    #            </p>
    #
    # @option params [TranscriptSourceSetting] :transcript_source_setting
    #   <p>The object representing the Amazon S3 bucket containing the transcript,
    #            as well as the associated metadata.</p>
    #
    # @option params [EncryptionSetting] :encryption_setting
    #   <p>The object representing the passwords that will be used to encrypt
    #            the data related to the bot recommendation results, as well as the KMS
    #            key ARN used to encrypt the associated metadata.</p>
    #
    # @return [Types::StartBotRecommendationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_bot_recommendation(
    #     bot_id: 'botId', # required
    #     bot_version: 'botVersion', # required
    #     locale_id: 'localeId', # required
    #     transcript_source_setting: {
    #       s3_bucket_transcript_source: {
    #         s3_bucket_name: 's3BucketName', # required
    #         path_format: {
    #           object_prefixes: [
    #             'member'
    #           ]
    #         },
    #         transcript_format: 'Lex', # required - accepts ["Lex"]
    #         transcript_filter: {
    #           lex_transcript_filter: {
    #             date_range_filter: {
    #               start_date_time: Time.now, # required
    #               end_date_time: Time.now # required
    #             }
    #           }
    #         },
    #         kms_key_arn: 'kmsKeyArn'
    #       }
    #     }, # required
    #     encryption_setting: {
    #       kms_key_arn: 'kmsKeyArn',
    #       bot_locale_export_password: 'botLocaleExportPassword',
    #       associated_transcripts_password: 'associatedTranscriptsPassword'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartBotRecommendationOutput
    #   resp.data.bot_id #=> String
    #   resp.data.bot_version #=> String
    #   resp.data.locale_id #=> String
    #   resp.data.bot_recommendation_status #=> String, one of ["Processing", "Deleting", "Deleted", "Downloading", "Updating", "Available", "Failed"]
    #   resp.data.bot_recommendation_id #=> String
    #   resp.data.creation_date_time #=> Time
    #   resp.data.transcript_source_setting #=> Types::TranscriptSourceSetting
    #   resp.data.transcript_source_setting.s3_bucket_transcript_source #=> Types::S3BucketTranscriptSource
    #   resp.data.transcript_source_setting.s3_bucket_transcript_source.s3_bucket_name #=> String
    #   resp.data.transcript_source_setting.s3_bucket_transcript_source.path_format #=> Types::PathFormat
    #   resp.data.transcript_source_setting.s3_bucket_transcript_source.path_format.object_prefixes #=> Array<String>
    #   resp.data.transcript_source_setting.s3_bucket_transcript_source.path_format.object_prefixes[0] #=> String
    #   resp.data.transcript_source_setting.s3_bucket_transcript_source.transcript_format #=> String, one of ["Lex"]
    #   resp.data.transcript_source_setting.s3_bucket_transcript_source.transcript_filter #=> Types::TranscriptFilter
    #   resp.data.transcript_source_setting.s3_bucket_transcript_source.transcript_filter.lex_transcript_filter #=> Types::LexTranscriptFilter
    #   resp.data.transcript_source_setting.s3_bucket_transcript_source.transcript_filter.lex_transcript_filter.date_range_filter #=> Types::DateRangeFilter
    #   resp.data.transcript_source_setting.s3_bucket_transcript_source.transcript_filter.lex_transcript_filter.date_range_filter.start_date_time #=> Time
    #   resp.data.transcript_source_setting.s3_bucket_transcript_source.transcript_filter.lex_transcript_filter.date_range_filter.end_date_time #=> Time
    #   resp.data.transcript_source_setting.s3_bucket_transcript_source.kms_key_arn #=> String
    #   resp.data.encryption_setting #=> Types::EncryptionSetting
    #   resp.data.encryption_setting.kms_key_arn #=> String
    #   resp.data.encryption_setting.bot_locale_export_password #=> String
    #   resp.data.encryption_setting.associated_transcripts_password #=> String
    #
    def start_bot_recommendation(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartBotRecommendationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartBotRecommendationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartBotRecommendation
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::ConflictException, Errors::PreconditionFailedException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::StartBotRecommendation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartBotRecommendation,
        stubs: @stubs,
        params_class: Params::StartBotRecommendationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_bot_recommendation
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts importing a bot, bot locale, or custom vocabulary from a zip
    #          archive that you uploaded to an S3 bucket.</p>
    #
    # @param [Hash] params
    #   See {Types::StartImportInput}.
    #
    # @option params [String] :import_id
    #   <p>The unique identifier for the import. It is included in the response
    #            from the <a href="https://docs.aws.amazon.com/lexv2/latest/dg/API_CreateUploadUrl.html">CreateUploadUrl</a> operation.</p>
    #
    # @option params [ImportResourceSpecification] :resource_specification
    #   <p>Parameters for creating the bot, bot locale or custom
    #            vocabulary.</p>
    #
    # @option params [String] :merge_strategy
    #   <p>The strategy to use when there is a name conflict between the
    #            imported resource and an existing resource. When the merge strategy is
    #               <code>FailOnConflict</code> existing resources are not overwritten
    #            and the import fails.</p>
    #
    # @option params [String] :file_password
    #   <p>The password used to encrypt the zip archive that contains the
    #            resource definition. You should always encrypt the zip archive to
    #            protect it during transit between your site and Amazon Lex.</p>
    #
    # @return [Types::StartImportOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_import(
    #     import_id: 'importId', # required
    #     resource_specification: {
    #       bot_import_specification: {
    #         bot_name: 'botName', # required
    #         role_arn: 'roleArn', # required
    #         data_privacy: {
    #           child_directed: false # required
    #         }, # required
    #         idle_session_ttl_in_seconds: 1,
    #         bot_tags: {
    #           'key' => 'value'
    #         },
    #       },
    #       bot_locale_import_specification: {
    #         bot_id: 'botId', # required
    #         bot_version: 'botVersion', # required
    #         locale_id: 'localeId', # required
    #         nlu_intent_confidence_threshold: 1.0,
    #         voice_settings: {
    #           voice_id: 'voiceId', # required
    #           engine: 'standard' # accepts ["standard", "neural"]
    #         }
    #       },
    #       custom_vocabulary_import_specification: {
    #         bot_id: 'botId', # required
    #         bot_version: 'botVersion', # required
    #         locale_id: 'localeId' # required
    #       }
    #     }, # required
    #     merge_strategy: 'Overwrite', # required - accepts ["Overwrite", "FailOnConflict", "Append"]
    #     file_password: 'filePassword'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartImportOutput
    #   resp.data.import_id #=> String
    #   resp.data.resource_specification #=> Types::ImportResourceSpecification
    #   resp.data.resource_specification.bot_import_specification #=> Types::BotImportSpecification
    #   resp.data.resource_specification.bot_import_specification.bot_name #=> String
    #   resp.data.resource_specification.bot_import_specification.role_arn #=> String
    #   resp.data.resource_specification.bot_import_specification.data_privacy #=> Types::DataPrivacy
    #   resp.data.resource_specification.bot_import_specification.data_privacy.child_directed #=> Boolean
    #   resp.data.resource_specification.bot_import_specification.idle_session_ttl_in_seconds #=> Integer
    #   resp.data.resource_specification.bot_import_specification.bot_tags #=> Hash<String, String>
    #   resp.data.resource_specification.bot_import_specification.bot_tags['key'] #=> String
    #   resp.data.resource_specification.bot_import_specification.test_bot_alias_tags #=> Hash<String, String>
    #   resp.data.resource_specification.bot_locale_import_specification #=> Types::BotLocaleImportSpecification
    #   resp.data.resource_specification.bot_locale_import_specification.bot_id #=> String
    #   resp.data.resource_specification.bot_locale_import_specification.bot_version #=> String
    #   resp.data.resource_specification.bot_locale_import_specification.locale_id #=> String
    #   resp.data.resource_specification.bot_locale_import_specification.nlu_intent_confidence_threshold #=> Float
    #   resp.data.resource_specification.bot_locale_import_specification.voice_settings #=> Types::VoiceSettings
    #   resp.data.resource_specification.bot_locale_import_specification.voice_settings.voice_id #=> String
    #   resp.data.resource_specification.bot_locale_import_specification.voice_settings.engine #=> String, one of ["standard", "neural"]
    #   resp.data.resource_specification.custom_vocabulary_import_specification #=> Types::CustomVocabularyImportSpecification
    #   resp.data.resource_specification.custom_vocabulary_import_specification.bot_id #=> String
    #   resp.data.resource_specification.custom_vocabulary_import_specification.bot_version #=> String
    #   resp.data.resource_specification.custom_vocabulary_import_specification.locale_id #=> String
    #   resp.data.merge_strategy #=> String, one of ["Overwrite", "FailOnConflict", "Append"]
    #   resp.data.import_status #=> String, one of ["InProgress", "Completed", "Failed", "Deleting"]
    #   resp.data.creation_date_time #=> Time
    #
    def start_import(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartImportInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartImportInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartImport
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::StartImport
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartImport,
        stubs: @stubs,
        params_class: Params::StartImportOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_import
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds the specified tags to the specified resource. If a tag key
    #          already exists, the existing value is replaced with the new
    #          value.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the bot, bot alias, or bot channel
    #            to tag.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>A list of tag keys to add to the resource. If a tag key already
    #            exists, the existing value is replaced with the new value.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'resourceARN', # required
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
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

    # <p>Removes tags from a bot, bot alias, or bot channel.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to remove the tags
    #            from.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>A list of tag keys to remove from the resource. If a tag key does
    #            not exist on the resource, it is ignored.</p>
    #
    # @return [Types::UntagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource(
    #     resource_arn: 'resourceARN', # required
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
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

    # <p>Updates the configuration of an existing bot. </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateBotInput}.
    #
    # @option params [String] :bot_id
    #   <p>The unique identifier of the bot to update. This identifier is
    #            returned by the <a href="https://docs.aws.amazon.com/lexv2/latest/dg/API_CreateBot.html">CreateBot</a> operation.</p>
    #
    # @option params [String] :bot_name
    #   <p>The new name of the bot. The name must be unique in the account that
    #            creates the bot.</p>
    #
    # @option params [String] :description
    #   <p>A description of the bot.</p>
    #
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that has permissions
    #            to access the bot.</p>
    #
    # @option params [DataPrivacy] :data_privacy
    #   <p>Provides information on additional privacy protections Amazon Lex should
    #            use with the bot's data.</p>
    #
    # @option params [Integer] :idle_session_ttl_in_seconds
    #   <p>The time, in seconds, that Amazon Lex should keep information about a
    #            user's conversation with the bot.</p>
    #            <p>A user interaction remains active for the amount of time specified.
    #            If no conversation occurs during this time, the session expires and
    #            Amazon Lex deletes any data provided before the timeout.</p>
    #            <p>You can specify between 60 (1 minute) and 86,400 (24 hours)
    #            seconds.</p>
    #
    # @return [Types::UpdateBotOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_bot(
    #     bot_id: 'botId', # required
    #     bot_name: 'botName', # required
    #     description: 'description',
    #     role_arn: 'roleArn', # required
    #     data_privacy: {
    #       child_directed: false # required
    #     }, # required
    #     idle_session_ttl_in_seconds: 1 # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateBotOutput
    #   resp.data.bot_id #=> String
    #   resp.data.bot_name #=> String
    #   resp.data.description #=> String
    #   resp.data.role_arn #=> String
    #   resp.data.data_privacy #=> Types::DataPrivacy
    #   resp.data.data_privacy.child_directed #=> Boolean
    #   resp.data.idle_session_ttl_in_seconds #=> Integer
    #   resp.data.bot_status #=> String, one of ["Creating", "Available", "Inactive", "Deleting", "Failed", "Versioning", "Importing"]
    #   resp.data.creation_date_time #=> Time
    #   resp.data.last_updated_date_time #=> Time
    #
    def update_bot(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateBotInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateBotInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateBot
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::ConflictException, Errors::PreconditionFailedException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::UpdateBot
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateBot,
        stubs: @stubs,
        params_class: Params::UpdateBotOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_bot
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the configuration of an existing bot alias.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateBotAliasInput}.
    #
    # @option params [String] :bot_alias_id
    #   <p>The unique identifier of the bot alias.</p>
    #
    # @option params [String] :bot_alias_name
    #   <p>The new name to assign to the bot alias.</p>
    #
    # @option params [String] :description
    #   <p>The new description to assign to the bot alias.</p>
    #
    # @option params [String] :bot_version
    #   <p>The new bot version to assign to the bot alias.</p>
    #
    # @option params [Hash<String, BotAliasLocaleSettings>] :bot_alias_locale_settings
    #   <p>The new Lambda functions to use in each locale for the bot
    #            alias.</p>
    #
    # @option params [ConversationLogSettings] :conversation_log_settings
    #   <p>The new settings for storing conversation logs in Amazon CloudWatch Logs and
    #            Amazon S3 buckets.</p>
    #
    # @option params [SentimentAnalysisSettings] :sentiment_analysis_settings
    #   <p>Determines whether Amazon Lex will use Amazon Comprehend to detect the sentiment of
    #            user utterances.</p>
    #
    # @option params [String] :bot_id
    #   <p>The identifier of the bot with the updated alias.</p>
    #
    # @return [Types::UpdateBotAliasOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_bot_alias(
    #     bot_alias_id: 'botAliasId', # required
    #     bot_alias_name: 'botAliasName', # required
    #     description: 'description',
    #     bot_version: 'botVersion',
    #     bot_alias_locale_settings: {
    #       'key' => {
    #         enabled: false, # required
    #         code_hook_specification: {
    #           lambda_code_hook: {
    #             lambda_arn: 'lambdaARN', # required
    #             code_hook_interface_version: 'codeHookInterfaceVersion' # required
    #           } # required
    #         }
    #       }
    #     },
    #     conversation_log_settings: {
    #       text_log_settings: [
    #         {
    #           enabled: false, # required
    #           destination: {
    #             cloud_watch: {
    #               cloud_watch_log_group_arn: 'cloudWatchLogGroupArn', # required
    #               log_prefix: 'logPrefix' # required
    #             } # required
    #           } # required
    #         }
    #       ],
    #       audio_log_settings: [
    #         {
    #           enabled: false, # required
    #           destination: {
    #             s3_bucket: {
    #               kms_key_arn: 'kmsKeyArn',
    #               s3_bucket_arn: 's3BucketArn', # required
    #               log_prefix: 'logPrefix' # required
    #             } # required
    #           } # required
    #         }
    #       ]
    #     },
    #     sentiment_analysis_settings: {
    #       detect_sentiment: false # required
    #     },
    #     bot_id: 'botId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateBotAliasOutput
    #   resp.data.bot_alias_id #=> String
    #   resp.data.bot_alias_name #=> String
    #   resp.data.description #=> String
    #   resp.data.bot_version #=> String
    #   resp.data.bot_alias_locale_settings #=> Hash<String, BotAliasLocaleSettings>
    #   resp.data.bot_alias_locale_settings['key'] #=> Types::BotAliasLocaleSettings
    #   resp.data.bot_alias_locale_settings['key'].enabled #=> Boolean
    #   resp.data.bot_alias_locale_settings['key'].code_hook_specification #=> Types::CodeHookSpecification
    #   resp.data.bot_alias_locale_settings['key'].code_hook_specification.lambda_code_hook #=> Types::LambdaCodeHook
    #   resp.data.bot_alias_locale_settings['key'].code_hook_specification.lambda_code_hook.lambda_arn #=> String
    #   resp.data.bot_alias_locale_settings['key'].code_hook_specification.lambda_code_hook.code_hook_interface_version #=> String
    #   resp.data.conversation_log_settings #=> Types::ConversationLogSettings
    #   resp.data.conversation_log_settings.text_log_settings #=> Array<TextLogSetting>
    #   resp.data.conversation_log_settings.text_log_settings[0] #=> Types::TextLogSetting
    #   resp.data.conversation_log_settings.text_log_settings[0].enabled #=> Boolean
    #   resp.data.conversation_log_settings.text_log_settings[0].destination #=> Types::TextLogDestination
    #   resp.data.conversation_log_settings.text_log_settings[0].destination.cloud_watch #=> Types::CloudWatchLogGroupLogDestination
    #   resp.data.conversation_log_settings.text_log_settings[0].destination.cloud_watch.cloud_watch_log_group_arn #=> String
    #   resp.data.conversation_log_settings.text_log_settings[0].destination.cloud_watch.log_prefix #=> String
    #   resp.data.conversation_log_settings.audio_log_settings #=> Array<AudioLogSetting>
    #   resp.data.conversation_log_settings.audio_log_settings[0] #=> Types::AudioLogSetting
    #   resp.data.conversation_log_settings.audio_log_settings[0].enabled #=> Boolean
    #   resp.data.conversation_log_settings.audio_log_settings[0].destination #=> Types::AudioLogDestination
    #   resp.data.conversation_log_settings.audio_log_settings[0].destination.s3_bucket #=> Types::S3BucketLogDestination
    #   resp.data.conversation_log_settings.audio_log_settings[0].destination.s3_bucket.kms_key_arn #=> String
    #   resp.data.conversation_log_settings.audio_log_settings[0].destination.s3_bucket.s3_bucket_arn #=> String
    #   resp.data.conversation_log_settings.audio_log_settings[0].destination.s3_bucket.log_prefix #=> String
    #   resp.data.sentiment_analysis_settings #=> Types::SentimentAnalysisSettings
    #   resp.data.sentiment_analysis_settings.detect_sentiment #=> Boolean
    #   resp.data.bot_alias_status #=> String, one of ["Creating", "Available", "Deleting", "Failed"]
    #   resp.data.bot_id #=> String
    #   resp.data.creation_date_time #=> Time
    #   resp.data.last_updated_date_time #=> Time
    #
    def update_bot_alias(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateBotAliasInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateBotAliasInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateBotAlias
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::ConflictException, Errors::PreconditionFailedException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::UpdateBotAlias
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateBotAlias,
        stubs: @stubs,
        params_class: Params::UpdateBotAliasOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_bot_alias
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the settings that a bot has for a specific locale.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateBotLocaleInput}.
    #
    # @option params [String] :bot_id
    #   <p>The unique identifier of the bot that contains the locale.</p>
    #
    # @option params [String] :bot_version
    #   <p>The version of the bot that contains the locale to be updated. The
    #            version can only be the <code>DRAFT</code> version.</p>
    #
    # @option params [String] :locale_id
    #   <p>The identifier of the language and locale to update. The string must
    #            match one of the supported locales. For more information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>.</p>
    #
    # @option params [String] :description
    #   <p>The new description of the locale.</p>
    #
    # @option params [Float] :nlu_intent_confidence_threshold
    #   <p>The new confidence threshold where Amazon Lex inserts the
    #               <code>AMAZON.FallbackIntent</code> and
    #               <code>AMAZON.KendraSearchIntent</code> intents in the list of
    #            possible intents for an utterance.</p>
    #
    # @option params [VoiceSettings] :voice_settings
    #   <p>The new Amazon Polly voice Amazon Lex should use for voice interaction with the
    #            user.</p>
    #
    # @return [Types::UpdateBotLocaleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_bot_locale(
    #     bot_id: 'botId', # required
    #     bot_version: 'botVersion', # required
    #     locale_id: 'localeId', # required
    #     description: 'description',
    #     nlu_intent_confidence_threshold: 1.0, # required
    #     voice_settings: {
    #       voice_id: 'voiceId', # required
    #       engine: 'standard' # accepts ["standard", "neural"]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateBotLocaleOutput
    #   resp.data.bot_id #=> String
    #   resp.data.bot_version #=> String
    #   resp.data.locale_id #=> String
    #   resp.data.locale_name #=> String
    #   resp.data.description #=> String
    #   resp.data.nlu_intent_confidence_threshold #=> Float
    #   resp.data.voice_settings #=> Types::VoiceSettings
    #   resp.data.voice_settings.voice_id #=> String
    #   resp.data.voice_settings.engine #=> String, one of ["standard", "neural"]
    #   resp.data.bot_locale_status #=> String, one of ["Creating", "Building", "Built", "ReadyExpressTesting", "Failed", "Deleting", "NotBuilt", "Importing", "Processing"]
    #   resp.data.failure_reasons #=> Array<String>
    #   resp.data.failure_reasons[0] #=> String
    #   resp.data.creation_date_time #=> Time
    #   resp.data.last_updated_date_time #=> Time
    #   resp.data.recommended_actions #=> Array<String>
    #   resp.data.recommended_actions[0] #=> String
    #
    def update_bot_locale(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateBotLocaleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateBotLocaleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateBotLocale
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::ConflictException, Errors::PreconditionFailedException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::UpdateBotLocale
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateBotLocale,
        stubs: @stubs,
        params_class: Params::UpdateBotLocaleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_bot_locale
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an existing bot recommendation request.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateBotRecommendationInput}.
    #
    # @option params [String] :bot_id
    #   <p>The unique identifier of the bot containing the bot recommendation
    #            to be updated.</p>
    #
    # @option params [String] :bot_version
    #   <p>The version of the bot containing the bot recommendation to be
    #            updated.</p>
    #
    # @option params [String] :locale_id
    #   <p>The identifier of the language and locale of the bot recommendation
    #            to update. The string must match one of the supported locales. For more
    #            information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>
    #            </p>
    #
    # @option params [String] :bot_recommendation_id
    #   <p>The unique identifier of the bot recommendation to be
    #            updated.</p>
    #
    # @option params [EncryptionSetting] :encryption_setting
    #   <p>The object representing the passwords that will be used to encrypt
    #            the data related to the bot recommendation results, as well as the KMS
    #            key ARN used to encrypt the associated metadata.</p>
    #
    # @return [Types::UpdateBotRecommendationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_bot_recommendation(
    #     bot_id: 'botId', # required
    #     bot_version: 'botVersion', # required
    #     locale_id: 'localeId', # required
    #     bot_recommendation_id: 'botRecommendationId', # required
    #     encryption_setting: {
    #       kms_key_arn: 'kmsKeyArn',
    #       bot_locale_export_password: 'botLocaleExportPassword',
    #       associated_transcripts_password: 'associatedTranscriptsPassword'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateBotRecommendationOutput
    #   resp.data.bot_id #=> String
    #   resp.data.bot_version #=> String
    #   resp.data.locale_id #=> String
    #   resp.data.bot_recommendation_status #=> String, one of ["Processing", "Deleting", "Deleted", "Downloading", "Updating", "Available", "Failed"]
    #   resp.data.bot_recommendation_id #=> String
    #   resp.data.creation_date_time #=> Time
    #   resp.data.last_updated_date_time #=> Time
    #   resp.data.transcript_source_setting #=> Types::TranscriptSourceSetting
    #   resp.data.transcript_source_setting.s3_bucket_transcript_source #=> Types::S3BucketTranscriptSource
    #   resp.data.transcript_source_setting.s3_bucket_transcript_source.s3_bucket_name #=> String
    #   resp.data.transcript_source_setting.s3_bucket_transcript_source.path_format #=> Types::PathFormat
    #   resp.data.transcript_source_setting.s3_bucket_transcript_source.path_format.object_prefixes #=> Array<String>
    #   resp.data.transcript_source_setting.s3_bucket_transcript_source.path_format.object_prefixes[0] #=> String
    #   resp.data.transcript_source_setting.s3_bucket_transcript_source.transcript_format #=> String, one of ["Lex"]
    #   resp.data.transcript_source_setting.s3_bucket_transcript_source.transcript_filter #=> Types::TranscriptFilter
    #   resp.data.transcript_source_setting.s3_bucket_transcript_source.transcript_filter.lex_transcript_filter #=> Types::LexTranscriptFilter
    #   resp.data.transcript_source_setting.s3_bucket_transcript_source.transcript_filter.lex_transcript_filter.date_range_filter #=> Types::DateRangeFilter
    #   resp.data.transcript_source_setting.s3_bucket_transcript_source.transcript_filter.lex_transcript_filter.date_range_filter.start_date_time #=> Time
    #   resp.data.transcript_source_setting.s3_bucket_transcript_source.transcript_filter.lex_transcript_filter.date_range_filter.end_date_time #=> Time
    #   resp.data.transcript_source_setting.s3_bucket_transcript_source.kms_key_arn #=> String
    #   resp.data.encryption_setting #=> Types::EncryptionSetting
    #   resp.data.encryption_setting.kms_key_arn #=> String
    #   resp.data.encryption_setting.bot_locale_export_password #=> String
    #   resp.data.encryption_setting.associated_transcripts_password #=> String
    #
    def update_bot_recommendation(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateBotRecommendationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateBotRecommendationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateBotRecommendation
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::ConflictException, Errors::PreconditionFailedException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::UpdateBotRecommendation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateBotRecommendation,
        stubs: @stubs,
        params_class: Params::UpdateBotRecommendationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_bot_recommendation
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the password used to protect an export zip archive.</p>
    #          <p>The password is not required. If you don't supply a password, Amazon Lex
    #          generates a zip file that is not protected by a password. This is the
    #          archive that is available at the pre-signed S3 URL provided by the
    #             <a href="https://docs.aws.amazon.com/lexv2/latest/dg/API_DescribeExport.html">DescribeExport</a> operation.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateExportInput}.
    #
    # @option params [String] :export_id
    #   <p>The unique identifier Amazon Lex assigned to the export.</p>
    #
    # @option params [String] :file_password
    #   <p>The new password to use to encrypt the export zip archive.</p>
    #
    # @return [Types::UpdateExportOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_export(
    #     export_id: 'exportId', # required
    #     file_password: 'filePassword'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateExportOutput
    #   resp.data.export_id #=> String
    #   resp.data.resource_specification #=> Types::ExportResourceSpecification
    #   resp.data.resource_specification.bot_export_specification #=> Types::BotExportSpecification
    #   resp.data.resource_specification.bot_export_specification.bot_id #=> String
    #   resp.data.resource_specification.bot_export_specification.bot_version #=> String
    #   resp.data.resource_specification.bot_locale_export_specification #=> Types::BotLocaleExportSpecification
    #   resp.data.resource_specification.bot_locale_export_specification.bot_id #=> String
    #   resp.data.resource_specification.bot_locale_export_specification.bot_version #=> String
    #   resp.data.resource_specification.bot_locale_export_specification.locale_id #=> String
    #   resp.data.resource_specification.custom_vocabulary_export_specification #=> Types::CustomVocabularyExportSpecification
    #   resp.data.resource_specification.custom_vocabulary_export_specification.bot_id #=> String
    #   resp.data.resource_specification.custom_vocabulary_export_specification.bot_version #=> String
    #   resp.data.resource_specification.custom_vocabulary_export_specification.locale_id #=> String
    #   resp.data.file_format #=> String, one of ["LexJson", "TSV"]
    #   resp.data.export_status #=> String, one of ["InProgress", "Completed", "Failed", "Deleting"]
    #   resp.data.creation_date_time #=> Time
    #   resp.data.last_updated_date_time #=> Time
    #
    def update_export(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateExportInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateExportInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateExport
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::UpdateExport
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateExport,
        stubs: @stubs,
        params_class: Params::UpdateExportOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_export
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the settings for an intent.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateIntentInput}.
    #
    # @option params [String] :intent_id
    #   <p>The unique identifier of the intent to update.</p>
    #
    # @option params [String] :intent_name
    #   <p>The new name for the intent.</p>
    #
    # @option params [String] :description
    #   <p>The new description of the intent.</p>
    #
    # @option params [String] :parent_intent_signature
    #   <p>The signature of the new built-in intent to use as the parent of
    #            this intent.</p>
    #
    # @option params [Array<SampleUtterance>] :sample_utterances
    #   <p>New utterances used to invoke the intent.</p>
    #
    # @option params [DialogCodeHookSettings] :dialog_code_hook
    #   <p>The new Lambda function to use between each turn of the conversation
    #            with the bot.</p>
    #
    # @option params [FulfillmentCodeHookSettings] :fulfillment_code_hook
    #   <p>The new Lambda function to call when all of the intents required
    #            slots are provided and the intent is ready for fulfillment.</p>
    #
    # @option params [Array<SlotPriority>] :slot_priorities
    #   <p>A new list of slots and their priorities that are contained by the
    #            intent.</p>
    #
    # @option params [IntentConfirmationSetting] :intent_confirmation_setting
    #   <p>New prompts that Amazon Lex sends to the user to confirm the completion
    #            of an intent.</p>
    #
    # @option params [IntentClosingSetting] :intent_closing_setting
    #   <p>The new response that Amazon Lex sends the user when the intent is
    #            closed.</p>
    #
    # @option params [Array<InputContext>] :input_contexts
    #   <p>A new list of contexts that must be active in order for Amazon Lex to
    #            consider the intent.</p>
    #
    # @option params [Array<OutputContext>] :output_contexts
    #   <p>A new list of contexts that Amazon Lex activates when the intent is
    #            fulfilled.</p>
    #
    # @option params [KendraConfiguration] :kendra_configuration
    #   <p>New configuration settings for connecting to an Amazon Kendra index.</p>
    #
    # @option params [String] :bot_id
    #   <p>The identifier of the bot that contains the intent.</p>
    #
    # @option params [String] :bot_version
    #   <p>The version of the bot that contains the intent. Must be
    #               <code>DRAFT</code>.</p>
    #
    # @option params [String] :locale_id
    #   <p>The identifier of the language and locale where this intent is used.
    #            The string must match one of the supported locales. For more
    #            information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>.</p>
    #
    # @return [Types::UpdateIntentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_intent(
    #     intent_id: 'intentId', # required
    #     intent_name: 'intentName', # required
    #     description: 'description',
    #     parent_intent_signature: 'parentIntentSignature',
    #     sample_utterances: [
    #       {
    #         utterance: 'utterance' # required
    #       }
    #     ],
    #     dialog_code_hook: {
    #       enabled: false # required
    #     },
    #     fulfillment_code_hook: {
    #       enabled: false, # required
    #       post_fulfillment_status_specification: {
    #         success_response: {
    #           message_groups: [
    #             {
    #               message: {
    #                 plain_text_message: {
    #                   value: 'value' # required
    #                 },
    #                 custom_payload: {
    #                   value: 'value' # required
    #                 },
    #                 ssml_message: {
    #                   value: 'value' # required
    #                 },
    #                 image_response_card: {
    #                   title: 'title', # required
    #                   subtitle: 'subtitle',
    #                   image_url: 'imageUrl',
    #                   buttons: [
    #                     {
    #                       text: 'text', # required
    #                       value: 'value' # required
    #                     }
    #                   ]
    #                 }
    #               }, # required
    #             }
    #           ], # required
    #           allow_interrupt: false
    #         },
    #       },
    #       fulfillment_updates_specification: {
    #         active: false, # required
    #         start_response: {
    #           delay_in_seconds: 1, # required
    #           allow_interrupt: false
    #         },
    #         update_response: {
    #           frequency_in_seconds: 1, # required
    #           allow_interrupt: false
    #         },
    #         timeout_in_seconds: 1
    #       }
    #     },
    #     slot_priorities: [
    #       {
    #         priority: 1, # required
    #         slot_id: 'slotId' # required
    #       }
    #     ],
    #     intent_confirmation_setting: {
    #       prompt_specification: {
    #         max_retries: 1, # required
    #         allow_interrupt: false
    #       }, # required
    #       active: false
    #     },
    #     intent_closing_setting: {
    #       active: false
    #     },
    #     input_contexts: [
    #       {
    #         name: 'name' # required
    #       }
    #     ],
    #     output_contexts: [
    #       {
    #         name: 'name', # required
    #         time_to_live_in_seconds: 1, # required
    #         turns_to_live: 1 # required
    #       }
    #     ],
    #     kendra_configuration: {
    #       kendra_index: 'kendraIndex', # required
    #       query_filter_string_enabled: false,
    #       query_filter_string: 'queryFilterString'
    #     },
    #     bot_id: 'botId', # required
    #     bot_version: 'botVersion', # required
    #     locale_id: 'localeId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateIntentOutput
    #   resp.data.intent_id #=> String
    #   resp.data.intent_name #=> String
    #   resp.data.description #=> String
    #   resp.data.parent_intent_signature #=> String
    #   resp.data.sample_utterances #=> Array<SampleUtterance>
    #   resp.data.sample_utterances[0] #=> Types::SampleUtterance
    #   resp.data.sample_utterances[0].utterance #=> String
    #   resp.data.dialog_code_hook #=> Types::DialogCodeHookSettings
    #   resp.data.dialog_code_hook.enabled #=> Boolean
    #   resp.data.fulfillment_code_hook #=> Types::FulfillmentCodeHookSettings
    #   resp.data.fulfillment_code_hook.enabled #=> Boolean
    #   resp.data.fulfillment_code_hook.post_fulfillment_status_specification #=> Types::PostFulfillmentStatusSpecification
    #   resp.data.fulfillment_code_hook.post_fulfillment_status_specification.success_response #=> Types::ResponseSpecification
    #   resp.data.fulfillment_code_hook.post_fulfillment_status_specification.success_response.message_groups #=> Array<MessageGroup>
    #   resp.data.fulfillment_code_hook.post_fulfillment_status_specification.success_response.message_groups[0] #=> Types::MessageGroup
    #   resp.data.fulfillment_code_hook.post_fulfillment_status_specification.success_response.message_groups[0].message #=> Types::Message
    #   resp.data.fulfillment_code_hook.post_fulfillment_status_specification.success_response.message_groups[0].message.plain_text_message #=> Types::PlainTextMessage
    #   resp.data.fulfillment_code_hook.post_fulfillment_status_specification.success_response.message_groups[0].message.plain_text_message.value #=> String
    #   resp.data.fulfillment_code_hook.post_fulfillment_status_specification.success_response.message_groups[0].message.custom_payload #=> Types::CustomPayload
    #   resp.data.fulfillment_code_hook.post_fulfillment_status_specification.success_response.message_groups[0].message.custom_payload.value #=> String
    #   resp.data.fulfillment_code_hook.post_fulfillment_status_specification.success_response.message_groups[0].message.ssml_message #=> Types::SSMLMessage
    #   resp.data.fulfillment_code_hook.post_fulfillment_status_specification.success_response.message_groups[0].message.ssml_message.value #=> String
    #   resp.data.fulfillment_code_hook.post_fulfillment_status_specification.success_response.message_groups[0].message.image_response_card #=> Types::ImageResponseCard
    #   resp.data.fulfillment_code_hook.post_fulfillment_status_specification.success_response.message_groups[0].message.image_response_card.title #=> String
    #   resp.data.fulfillment_code_hook.post_fulfillment_status_specification.success_response.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.data.fulfillment_code_hook.post_fulfillment_status_specification.success_response.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.data.fulfillment_code_hook.post_fulfillment_status_specification.success_response.message_groups[0].message.image_response_card.buttons #=> Array<Button>
    #   resp.data.fulfillment_code_hook.post_fulfillment_status_specification.success_response.message_groups[0].message.image_response_card.buttons[0] #=> Types::Button
    #   resp.data.fulfillment_code_hook.post_fulfillment_status_specification.success_response.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.data.fulfillment_code_hook.post_fulfillment_status_specification.success_response.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.data.fulfillment_code_hook.post_fulfillment_status_specification.success_response.message_groups[0].variations #=> Array<Message>
    #   resp.data.fulfillment_code_hook.post_fulfillment_status_specification.success_response.allow_interrupt #=> Boolean
    #   resp.data.fulfillment_code_hook.post_fulfillment_status_specification.failure_response #=> Types::ResponseSpecification
    #   resp.data.fulfillment_code_hook.post_fulfillment_status_specification.timeout_response #=> Types::ResponseSpecification
    #   resp.data.fulfillment_code_hook.fulfillment_updates_specification #=> Types::FulfillmentUpdatesSpecification
    #   resp.data.fulfillment_code_hook.fulfillment_updates_specification.active #=> Boolean
    #   resp.data.fulfillment_code_hook.fulfillment_updates_specification.start_response #=> Types::FulfillmentStartResponseSpecification
    #   resp.data.fulfillment_code_hook.fulfillment_updates_specification.start_response.delay_in_seconds #=> Integer
    #   resp.data.fulfillment_code_hook.fulfillment_updates_specification.start_response.message_groups #=> Array<MessageGroup>
    #   resp.data.fulfillment_code_hook.fulfillment_updates_specification.start_response.allow_interrupt #=> Boolean
    #   resp.data.fulfillment_code_hook.fulfillment_updates_specification.update_response #=> Types::FulfillmentUpdateResponseSpecification
    #   resp.data.fulfillment_code_hook.fulfillment_updates_specification.update_response.frequency_in_seconds #=> Integer
    #   resp.data.fulfillment_code_hook.fulfillment_updates_specification.update_response.message_groups #=> Array<MessageGroup>
    #   resp.data.fulfillment_code_hook.fulfillment_updates_specification.update_response.allow_interrupt #=> Boolean
    #   resp.data.fulfillment_code_hook.fulfillment_updates_specification.timeout_in_seconds #=> Integer
    #   resp.data.slot_priorities #=> Array<SlotPriority>
    #   resp.data.slot_priorities[0] #=> Types::SlotPriority
    #   resp.data.slot_priorities[0].priority #=> Integer
    #   resp.data.slot_priorities[0].slot_id #=> String
    #   resp.data.intent_confirmation_setting #=> Types::IntentConfirmationSetting
    #   resp.data.intent_confirmation_setting.prompt_specification #=> Types::PromptSpecification
    #   resp.data.intent_confirmation_setting.prompt_specification.message_groups #=> Array<MessageGroup>
    #   resp.data.intent_confirmation_setting.prompt_specification.max_retries #=> Integer
    #   resp.data.intent_confirmation_setting.prompt_specification.allow_interrupt #=> Boolean
    #   resp.data.intent_confirmation_setting.declination_response #=> Types::ResponseSpecification
    #   resp.data.intent_confirmation_setting.active #=> Boolean
    #   resp.data.intent_closing_setting #=> Types::IntentClosingSetting
    #   resp.data.intent_closing_setting.closing_response #=> Types::ResponseSpecification
    #   resp.data.intent_closing_setting.active #=> Boolean
    #   resp.data.input_contexts #=> Array<InputContext>
    #   resp.data.input_contexts[0] #=> Types::InputContext
    #   resp.data.input_contexts[0].name #=> String
    #   resp.data.output_contexts #=> Array<OutputContext>
    #   resp.data.output_contexts[0] #=> Types::OutputContext
    #   resp.data.output_contexts[0].name #=> String
    #   resp.data.output_contexts[0].time_to_live_in_seconds #=> Integer
    #   resp.data.output_contexts[0].turns_to_live #=> Integer
    #   resp.data.kendra_configuration #=> Types::KendraConfiguration
    #   resp.data.kendra_configuration.kendra_index #=> String
    #   resp.data.kendra_configuration.query_filter_string_enabled #=> Boolean
    #   resp.data.kendra_configuration.query_filter_string #=> String
    #   resp.data.bot_id #=> String
    #   resp.data.bot_version #=> String
    #   resp.data.locale_id #=> String
    #   resp.data.creation_date_time #=> Time
    #   resp.data.last_updated_date_time #=> Time
    #
    def update_intent(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateIntentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateIntentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateIntent
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::PreconditionFailedException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::UpdateIntent
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateIntent,
        stubs: @stubs,
        params_class: Params::UpdateIntentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_intent
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Replaces the existing resource policy for a bot or bot alias with a
    #          new one. If the policy doesn't exist, Amazon Lex returns an
    #          exception.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateResourcePolicyInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the bot or bot alias that the
    #            resource policy is attached to.</p>
    #
    # @option params [String] :policy
    #   <p>A resource policy to add to the resource. The policy is a JSON
    #            structure that contains one or more statements that define the policy.
    #            The policy must follow the IAM syntax. For more information about the
    #            contents of a JSON policy document, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies.html"> IAM JSON policy
    #               reference </a>. </p>
    #            <p>If the policy isn't valid, Amazon Lex returns a validation
    #            exception.</p>
    #
    # @option params [String] :expected_revision_id
    #   <p>The identifier of the revision of the policy to update. If this
    #            revision ID doesn't match the current revision ID, Amazon Lex throws an
    #            exception.</p>
    #            <p>If you don't specify a revision, Amazon Lex overwrites the contents of
    #            the policy with the new values.</p>
    #
    # @return [Types::UpdateResourcePolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_resource_policy(
    #     resource_arn: 'resourceArn', # required
    #     policy: 'policy', # required
    #     expected_revision_id: 'expectedRevisionId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateResourcePolicyOutput
    #   resp.data.resource_arn #=> String
    #   resp.data.revision_id #=> String
    #
    def update_resource_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateResourcePolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateResourcePolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateResourcePolicy
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::PreconditionFailedException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::UpdateResourcePolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateResourcePolicy,
        stubs: @stubs,
        params_class: Params::UpdateResourcePolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_resource_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the settings for a slot.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateSlotInput}.
    #
    # @option params [String] :slot_id
    #   <p>The unique identifier for the slot to update.</p>
    #
    # @option params [String] :slot_name
    #   <p>The new name for the slot.</p>
    #
    # @option params [String] :description
    #   <p>The new description for the slot.</p>
    #
    # @option params [String] :slot_type_id
    #   <p>The unique identifier of the new slot type to associate with this
    #            slot. </p>
    #
    # @option params [SlotValueElicitationSetting] :value_elicitation_setting
    #   <p>A new set of prompts that Amazon Lex sends to the user to elicit a
    #            response the provides a value for the slot.</p>
    #
    # @option params [ObfuscationSetting] :obfuscation_setting
    #   <p>New settings that determine how slot values are formatted in Amazon CloudWatch
    #            logs. </p>
    #
    # @option params [String] :bot_id
    #   <p>The unique identifier of the bot that contains the slot.</p>
    #
    # @option params [String] :bot_version
    #   <p>The version of the bot that contains the slot. Must always be
    #               <code>DRAFT</code>.</p>
    #
    # @option params [String] :locale_id
    #   <p>The identifier of the language and locale that contains the slot.
    #            The string must match one of the supported locales. For more
    #            information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>.</p>
    #
    # @option params [String] :intent_id
    #   <p>The identifier of the intent that contains the slot.</p>
    #
    # @option params [MultipleValuesSetting] :multiple_values_setting
    #   <p>Determines whether the slot accepts multiple values in one response.
    #            Multiple value slots are only available in the en-US locale. If you set
    #            this value to <code>true</code> in any other locale, Amazon Lex throws a
    #               <code>ValidationException</code>.</p>
    #            <p>If the <code>multipleValuesSetting</code> is not set, the default
    #            value is <code>false</code>.</p>
    #
    # @return [Types::UpdateSlotOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_slot(
    #     slot_id: 'slotId', # required
    #     slot_name: 'slotName', # required
    #     description: 'description',
    #     slot_type_id: 'slotTypeId',
    #     value_elicitation_setting: {
    #       default_value_specification: {
    #         default_value_list: [
    #           {
    #             default_value: 'defaultValue' # required
    #           }
    #         ] # required
    #       },
    #       slot_constraint: 'Required', # required - accepts ["Required", "Optional"]
    #       prompt_specification: {
    #         message_groups: [
    #           {
    #             message: {
    #               plain_text_message: {
    #                 value: 'value' # required
    #               },
    #               custom_payload: {
    #                 value: 'value' # required
    #               },
    #               ssml_message: {
    #                 value: 'value' # required
    #               },
    #               image_response_card: {
    #                 title: 'title', # required
    #                 subtitle: 'subtitle',
    #                 image_url: 'imageUrl',
    #                 buttons: [
    #                   {
    #                     text: 'text', # required
    #                     value: 'value' # required
    #                   }
    #                 ]
    #               }
    #             }, # required
    #           }
    #         ], # required
    #         max_retries: 1, # required
    #         allow_interrupt: false
    #       },
    #       sample_utterances: [
    #         {
    #           utterance: 'utterance' # required
    #         }
    #       ],
    #       wait_and_continue_specification: {
    #         waiting_response: {
    #           allow_interrupt: false
    #         }, # required
    #         still_waiting_response: {
    #           frequency_in_seconds: 1, # required
    #           timeout_in_seconds: 1, # required
    #           allow_interrupt: false
    #         },
    #         active: false
    #       }
    #     }, # required
    #     obfuscation_setting: {
    #       obfuscation_setting_type: 'None' # required - accepts ["None", "DefaultObfuscation"]
    #     },
    #     bot_id: 'botId', # required
    #     bot_version: 'botVersion', # required
    #     locale_id: 'localeId', # required
    #     intent_id: 'intentId', # required
    #     multiple_values_setting: {
    #       allow_multiple_values: false
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateSlotOutput
    #   resp.data.slot_id #=> String
    #   resp.data.slot_name #=> String
    #   resp.data.description #=> String
    #   resp.data.slot_type_id #=> String
    #   resp.data.value_elicitation_setting #=> Types::SlotValueElicitationSetting
    #   resp.data.value_elicitation_setting.default_value_specification #=> Types::SlotDefaultValueSpecification
    #   resp.data.value_elicitation_setting.default_value_specification.default_value_list #=> Array<SlotDefaultValue>
    #   resp.data.value_elicitation_setting.default_value_specification.default_value_list[0] #=> Types::SlotDefaultValue
    #   resp.data.value_elicitation_setting.default_value_specification.default_value_list[0].default_value #=> String
    #   resp.data.value_elicitation_setting.slot_constraint #=> String, one of ["Required", "Optional"]
    #   resp.data.value_elicitation_setting.prompt_specification #=> Types::PromptSpecification
    #   resp.data.value_elicitation_setting.prompt_specification.message_groups #=> Array<MessageGroup>
    #   resp.data.value_elicitation_setting.prompt_specification.message_groups[0] #=> Types::MessageGroup
    #   resp.data.value_elicitation_setting.prompt_specification.message_groups[0].message #=> Types::Message
    #   resp.data.value_elicitation_setting.prompt_specification.message_groups[0].message.plain_text_message #=> Types::PlainTextMessage
    #   resp.data.value_elicitation_setting.prompt_specification.message_groups[0].message.plain_text_message.value #=> String
    #   resp.data.value_elicitation_setting.prompt_specification.message_groups[0].message.custom_payload #=> Types::CustomPayload
    #   resp.data.value_elicitation_setting.prompt_specification.message_groups[0].message.custom_payload.value #=> String
    #   resp.data.value_elicitation_setting.prompt_specification.message_groups[0].message.ssml_message #=> Types::SSMLMessage
    #   resp.data.value_elicitation_setting.prompt_specification.message_groups[0].message.ssml_message.value #=> String
    #   resp.data.value_elicitation_setting.prompt_specification.message_groups[0].message.image_response_card #=> Types::ImageResponseCard
    #   resp.data.value_elicitation_setting.prompt_specification.message_groups[0].message.image_response_card.title #=> String
    #   resp.data.value_elicitation_setting.prompt_specification.message_groups[0].message.image_response_card.subtitle #=> String
    #   resp.data.value_elicitation_setting.prompt_specification.message_groups[0].message.image_response_card.image_url #=> String
    #   resp.data.value_elicitation_setting.prompt_specification.message_groups[0].message.image_response_card.buttons #=> Array<Button>
    #   resp.data.value_elicitation_setting.prompt_specification.message_groups[0].message.image_response_card.buttons[0] #=> Types::Button
    #   resp.data.value_elicitation_setting.prompt_specification.message_groups[0].message.image_response_card.buttons[0].text #=> String
    #   resp.data.value_elicitation_setting.prompt_specification.message_groups[0].message.image_response_card.buttons[0].value #=> String
    #   resp.data.value_elicitation_setting.prompt_specification.message_groups[0].variations #=> Array<Message>
    #   resp.data.value_elicitation_setting.prompt_specification.max_retries #=> Integer
    #   resp.data.value_elicitation_setting.prompt_specification.allow_interrupt #=> Boolean
    #   resp.data.value_elicitation_setting.sample_utterances #=> Array<SampleUtterance>
    #   resp.data.value_elicitation_setting.sample_utterances[0] #=> Types::SampleUtterance
    #   resp.data.value_elicitation_setting.sample_utterances[0].utterance #=> String
    #   resp.data.value_elicitation_setting.wait_and_continue_specification #=> Types::WaitAndContinueSpecification
    #   resp.data.value_elicitation_setting.wait_and_continue_specification.waiting_response #=> Types::ResponseSpecification
    #   resp.data.value_elicitation_setting.wait_and_continue_specification.waiting_response.message_groups #=> Array<MessageGroup>
    #   resp.data.value_elicitation_setting.wait_and_continue_specification.waiting_response.allow_interrupt #=> Boolean
    #   resp.data.value_elicitation_setting.wait_and_continue_specification.continue_response #=> Types::ResponseSpecification
    #   resp.data.value_elicitation_setting.wait_and_continue_specification.still_waiting_response #=> Types::StillWaitingResponseSpecification
    #   resp.data.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.message_groups #=> Array<MessageGroup>
    #   resp.data.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.frequency_in_seconds #=> Integer
    #   resp.data.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.timeout_in_seconds #=> Integer
    #   resp.data.value_elicitation_setting.wait_and_continue_specification.still_waiting_response.allow_interrupt #=> Boolean
    #   resp.data.value_elicitation_setting.wait_and_continue_specification.active #=> Boolean
    #   resp.data.obfuscation_setting #=> Types::ObfuscationSetting
    #   resp.data.obfuscation_setting.obfuscation_setting_type #=> String, one of ["None", "DefaultObfuscation"]
    #   resp.data.bot_id #=> String
    #   resp.data.bot_version #=> String
    #   resp.data.locale_id #=> String
    #   resp.data.intent_id #=> String
    #   resp.data.creation_date_time #=> Time
    #   resp.data.last_updated_date_time #=> Time
    #   resp.data.multiple_values_setting #=> Types::MultipleValuesSetting
    #   resp.data.multiple_values_setting.allow_multiple_values #=> Boolean
    #
    def update_slot(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateSlotInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateSlotInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateSlot
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::PreconditionFailedException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::UpdateSlot
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateSlot,
        stubs: @stubs,
        params_class: Params::UpdateSlotOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_slot
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the configuration of an existing slot type.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateSlotTypeInput}.
    #
    # @option params [String] :slot_type_id
    #   <p>The unique identifier of the slot type to update.</p>
    #
    # @option params [String] :slot_type_name
    #   <p>The new name of the slot type.</p>
    #
    # @option params [String] :description
    #   <p>The new description of the slot type.</p>
    #
    # @option params [Array<SlotTypeValue>] :slot_type_values
    #   <p>A new list of values and their optional synonyms that define the
    #            values that the slot type can take.</p>
    #
    # @option params [SlotValueSelectionSetting] :value_selection_setting
    #   <p>The strategy that Amazon Lex should use when deciding on a value from the
    #            list of slot type values.</p>
    #
    # @option params [String] :parent_slot_type_signature
    #   <p>The new built-in slot type that should be used as the parent of this
    #            slot type.</p>
    #
    # @option params [String] :bot_id
    #   <p>The identifier of the bot that contains the slot type.</p>
    #
    # @option params [String] :bot_version
    #   <p>The version of the bot that contains the slot type. Must be
    #               <code>DRAFT</code>.</p>
    #
    # @option params [String] :locale_id
    #   <p>The identifier of the language and locale that contains the slot
    #            type. The string must match one of the supported locales. For more
    #            information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported languages</a>.</p>
    #
    # @option params [ExternalSourceSetting] :external_source_setting
    #   <p>Provides information about the external source of the slot type's
    #            definition.</p>
    #
    # @return [Types::UpdateSlotTypeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_slot_type(
    #     slot_type_id: 'slotTypeId', # required
    #     slot_type_name: 'slotTypeName', # required
    #     description: 'description',
    #     slot_type_values: [
    #       {
    #         sample_value: {
    #           value: 'value' # required
    #         },
    #       }
    #     ],
    #     value_selection_setting: {
    #       resolution_strategy: 'OriginalValue', # required - accepts ["OriginalValue", "TopResolution"]
    #       regex_filter: {
    #         pattern: 'pattern' # required
    #       },
    #       advanced_recognition_setting: {
    #         audio_recognition_strategy: 'UseSlotValuesAsCustomVocabulary' # accepts ["UseSlotValuesAsCustomVocabulary"]
    #       }
    #     },
    #     parent_slot_type_signature: 'parentSlotTypeSignature',
    #     bot_id: 'botId', # required
    #     bot_version: 'botVersion', # required
    #     locale_id: 'localeId', # required
    #     external_source_setting: {
    #       grammar_slot_type_setting: {
    #         source: {
    #           s3_bucket_name: 's3BucketName', # required
    #           s3_object_key: 's3ObjectKey', # required
    #           kms_key_arn: 'kmsKeyArn'
    #         }
    #       }
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateSlotTypeOutput
    #   resp.data.slot_type_id #=> String
    #   resp.data.slot_type_name #=> String
    #   resp.data.description #=> String
    #   resp.data.slot_type_values #=> Array<SlotTypeValue>
    #   resp.data.slot_type_values[0] #=> Types::SlotTypeValue
    #   resp.data.slot_type_values[0].sample_value #=> Types::SampleValue
    #   resp.data.slot_type_values[0].sample_value.value #=> String
    #   resp.data.slot_type_values[0].synonyms #=> Array<SampleValue>
    #   resp.data.value_selection_setting #=> Types::SlotValueSelectionSetting
    #   resp.data.value_selection_setting.resolution_strategy #=> String, one of ["OriginalValue", "TopResolution"]
    #   resp.data.value_selection_setting.regex_filter #=> Types::SlotValueRegexFilter
    #   resp.data.value_selection_setting.regex_filter.pattern #=> String
    #   resp.data.value_selection_setting.advanced_recognition_setting #=> Types::AdvancedRecognitionSetting
    #   resp.data.value_selection_setting.advanced_recognition_setting.audio_recognition_strategy #=> String, one of ["UseSlotValuesAsCustomVocabulary"]
    #   resp.data.parent_slot_type_signature #=> String
    #   resp.data.bot_id #=> String
    #   resp.data.bot_version #=> String
    #   resp.data.locale_id #=> String
    #   resp.data.creation_date_time #=> Time
    #   resp.data.last_updated_date_time #=> Time
    #   resp.data.external_source_setting #=> Types::ExternalSourceSetting
    #   resp.data.external_source_setting.grammar_slot_type_setting #=> Types::GrammarSlotTypeSetting
    #   resp.data.external_source_setting.grammar_slot_type_setting.source #=> Types::GrammarSlotTypeSource
    #   resp.data.external_source_setting.grammar_slot_type_setting.source.s3_bucket_name #=> String
    #   resp.data.external_source_setting.grammar_slot_type_setting.source.s3_object_key #=> String
    #   resp.data.external_source_setting.grammar_slot_type_setting.source.kms_key_arn #=> String
    #
    def update_slot_type(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateSlotTypeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateSlotTypeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateSlotType
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::ConflictException, Errors::PreconditionFailedException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::UpdateSlotType
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateSlotType,
        stubs: @stubs,
        params_class: Params::UpdateSlotTypeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_slot_type
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
