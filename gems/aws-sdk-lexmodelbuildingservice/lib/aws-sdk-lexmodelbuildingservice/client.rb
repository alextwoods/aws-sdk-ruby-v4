# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::LexModelBuildingService
  # An API client for AWSDeepSenseModelBuildingService
  # See {#initialize} for a full list of supported configuration options
  # <fullname>Amazon Lex Build-Time Actions</fullname>
  #          <p> Amazon Lex is an AWS service for building conversational voice and text
  #       interfaces. Use these actions to create, update, and delete conversational
  #       bots for new and existing client applications. </p>
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
    def initialize(config = AWS::SDK::LexModelBuildingService::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Creates a new version of the bot based on the <code>$LATEST</code>
    #       version. If the <code>$LATEST</code> version of this resource hasn't
    #       changed since you created the last version, Amazon Lex doesn't create a new
    #       version. It returns the last created version.</p>
    #          <note>
    #             <p>You can update only the <code>$LATEST</code> version of the bot.
    #         You can't update the numbered versions that you create with the
    #           <code>CreateBotVersion</code> operation.</p>
    #          </note>
    #          <p> When you create the first version of a bot, Amazon Lex sets the version
    #       to 1. Subsequent versions increment by 1. For more information, see <a>versioning-intro</a>. </p>
    #          <p> This operation requires permission for the
    #         <code>lex:CreateBotVersion</code> action. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateBotVersionInput}.
    #
    # @option params [String] :name
    #   <p>The name of the bot that you want to create a new version of. The
    #         name is case sensitive. </p>
    #
    # @option params [String] :checksum
    #   <p>Identifies a specific revision of the <code>$LATEST</code> version
    #         of the bot. If you specify a checksum and the <code>$LATEST</code> version
    #         of the bot has a different checksum, a
    #           <code>PreconditionFailedException</code> exception is returned and Amazon Lex
    #         doesn't publish a new version. If you don't specify a checksum, Amazon Lex
    #         publishes the <code>$LATEST</code> version.</p>
    #
    # @return [Types::CreateBotVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_bot_version(
    #     name: 'name', # required
    #     checksum: 'checksum'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateBotVersionOutput
    #   resp.data.name #=> String
    #   resp.data.description #=> String
    #   resp.data.intents #=> Array<Intent>
    #   resp.data.intents[0] #=> Types::Intent
    #   resp.data.intents[0].intent_name #=> String
    #   resp.data.intents[0].intent_version #=> String
    #   resp.data.clarification_prompt #=> Types::Prompt
    #   resp.data.clarification_prompt.messages #=> Array<Message>
    #   resp.data.clarification_prompt.messages[0] #=> Types::Message
    #   resp.data.clarification_prompt.messages[0].content_type #=> String, one of ["PlainText", "SSML", "CustomPayload"]
    #   resp.data.clarification_prompt.messages[0].content #=> String
    #   resp.data.clarification_prompt.messages[0].group_number #=> Integer
    #   resp.data.clarification_prompt.max_attempts #=> Integer
    #   resp.data.clarification_prompt.response_card #=> String
    #   resp.data.abort_statement #=> Types::Statement
    #   resp.data.abort_statement.messages #=> Array<Message>
    #   resp.data.abort_statement.response_card #=> String
    #   resp.data.status #=> String, one of ["BUILDING", "READY", "READY_BASIC_TESTING", "FAILED", "NOT_BUILT"]
    #   resp.data.failure_reason #=> String
    #   resp.data.last_updated_date #=> Time
    #   resp.data.created_date #=> Time
    #   resp.data.idle_session_ttl_in_seconds #=> Integer
    #   resp.data.voice_id #=> String
    #   resp.data.checksum #=> String
    #   resp.data.version #=> String
    #   resp.data.locale #=> String, one of ["de-DE", "en-AU", "en-GB", "en-IN", "en-US", "es-419", "es-ES", "es-US", "fr-FR", "fr-CA", "it-IT", "ja-JP", "ko-KR"]
    #   resp.data.child_directed #=> Boolean
    #   resp.data.enable_model_improvements #=> Boolean
    #   resp.data.detect_sentiment #=> Boolean
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::LimitExceededException, Errors::BadRequestException, Errors::PreconditionFailedException, Errors::InternalFailureException]),
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

    # <p>Creates a new version of an intent based on the
    #         <code>$LATEST</code> version of the intent. If the <code>$LATEST</code>
    #       version of this intent hasn't changed since you last updated it, Amazon Lex
    #       doesn't create a new version. It returns the last version you
    #       created.</p>
    #          <note>
    #             <p>You can update only the <code>$LATEST</code> version of the
    #         intent. You can't update the numbered versions that you create with the
    #           <code>CreateIntentVersion</code> operation.</p>
    #          </note>
    #          <p> When you create a version of an intent, Amazon Lex sets the version to
    #       1. Subsequent versions increment by 1. For more information, see <a>versioning-intro</a>. </p>
    #          <p>This operation requires permissions to perform the
    #         <code>lex:CreateIntentVersion</code> action. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateIntentVersionInput}.
    #
    # @option params [String] :name
    #   <p>The name of the intent that you want to create a new version of.
    #         The name is case sensitive. </p>
    #
    # @option params [String] :checksum
    #   <p>Checksum of the <code>$LATEST</code> version of the intent that
    #         should be used to create the new version. If you specify a checksum and
    #         the <code>$LATEST</code> version of the intent has a different checksum,
    #         Amazon Lex returns a <code>PreconditionFailedException</code> exception and
    #         doesn't publish a new version. If you don't specify a checksum, Amazon Lex
    #         publishes the <code>$LATEST</code> version.</p>
    #
    # @return [Types::CreateIntentVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_intent_version(
    #     name: 'name', # required
    #     checksum: 'checksum'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateIntentVersionOutput
    #   resp.data.name #=> String
    #   resp.data.description #=> String
    #   resp.data.slots #=> Array<Slot>
    #   resp.data.slots[0] #=> Types::Slot
    #   resp.data.slots[0].name #=> String
    #   resp.data.slots[0].description #=> String
    #   resp.data.slots[0].slot_constraint #=> String, one of ["Required", "Optional"]
    #   resp.data.slots[0].slot_type #=> String
    #   resp.data.slots[0].slot_type_version #=> String
    #   resp.data.slots[0].value_elicitation_prompt #=> Types::Prompt
    #   resp.data.slots[0].value_elicitation_prompt.messages #=> Array<Message>
    #   resp.data.slots[0].value_elicitation_prompt.messages[0] #=> Types::Message
    #   resp.data.slots[0].value_elicitation_prompt.messages[0].content_type #=> String, one of ["PlainText", "SSML", "CustomPayload"]
    #   resp.data.slots[0].value_elicitation_prompt.messages[0].content #=> String
    #   resp.data.slots[0].value_elicitation_prompt.messages[0].group_number #=> Integer
    #   resp.data.slots[0].value_elicitation_prompt.max_attempts #=> Integer
    #   resp.data.slots[0].value_elicitation_prompt.response_card #=> String
    #   resp.data.slots[0].priority #=> Integer
    #   resp.data.slots[0].sample_utterances #=> Array<String>
    #   resp.data.slots[0].sample_utterances[0] #=> String
    #   resp.data.slots[0].response_card #=> String
    #   resp.data.slots[0].obfuscation_setting #=> String, one of ["NONE", "DEFAULT_OBFUSCATION"]
    #   resp.data.slots[0].default_value_spec #=> Types::SlotDefaultValueSpec
    #   resp.data.slots[0].default_value_spec.default_value_list #=> Array<SlotDefaultValue>
    #   resp.data.slots[0].default_value_spec.default_value_list[0] #=> Types::SlotDefaultValue
    #   resp.data.slots[0].default_value_spec.default_value_list[0].default_value #=> String
    #   resp.data.sample_utterances #=> Array<String>
    #   resp.data.sample_utterances[0] #=> String
    #   resp.data.confirmation_prompt #=> Types::Prompt
    #   resp.data.rejection_statement #=> Types::Statement
    #   resp.data.rejection_statement.messages #=> Array<Message>
    #   resp.data.rejection_statement.response_card #=> String
    #   resp.data.follow_up_prompt #=> Types::FollowUpPrompt
    #   resp.data.follow_up_prompt.prompt #=> Types::Prompt
    #   resp.data.follow_up_prompt.rejection_statement #=> Types::Statement
    #   resp.data.conclusion_statement #=> Types::Statement
    #   resp.data.dialog_code_hook #=> Types::CodeHook
    #   resp.data.dialog_code_hook.uri #=> String
    #   resp.data.dialog_code_hook.message_version #=> String
    #   resp.data.fulfillment_activity #=> Types::FulfillmentActivity
    #   resp.data.fulfillment_activity.type #=> String, one of ["ReturnIntent", "CodeHook"]
    #   resp.data.fulfillment_activity.code_hook #=> Types::CodeHook
    #   resp.data.parent_intent_signature #=> String
    #   resp.data.last_updated_date #=> Time
    #   resp.data.created_date #=> Time
    #   resp.data.version #=> String
    #   resp.data.checksum #=> String
    #   resp.data.kendra_configuration #=> Types::KendraConfiguration
    #   resp.data.kendra_configuration.kendra_index #=> String
    #   resp.data.kendra_configuration.query_filter_string #=> String
    #   resp.data.kendra_configuration.role #=> String
    #   resp.data.input_contexts #=> Array<InputContext>
    #   resp.data.input_contexts[0] #=> Types::InputContext
    #   resp.data.input_contexts[0].name #=> String
    #   resp.data.output_contexts #=> Array<OutputContext>
    #   resp.data.output_contexts[0] #=> Types::OutputContext
    #   resp.data.output_contexts[0].name #=> String
    #   resp.data.output_contexts[0].time_to_live_in_seconds #=> Integer
    #   resp.data.output_contexts[0].turns_to_live #=> Integer
    #
    def create_intent_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateIntentVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateIntentVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateIntentVersion
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::LimitExceededException, Errors::BadRequestException, Errors::PreconditionFailedException, Errors::InternalFailureException]),
        data_parser: Parsers::CreateIntentVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateIntentVersion,
        stubs: @stubs,
        params_class: Params::CreateIntentVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_intent_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new version of a slot type based on the
    #         <code>$LATEST</code> version of the specified slot type. If the
    #         <code>$LATEST</code> version of this resource has not changed since the
    #       last version that you created, Amazon Lex doesn't create a new version. It
    #       returns the last version that you created. </p>
    #          <note>
    #             <p>You can update only the <code>$LATEST</code> version of a slot
    #         type. You can't update the numbered versions that you create with the
    #           <code>CreateSlotTypeVersion</code> operation.</p>
    #          </note>
    #
    #          <p>When you create a version of a slot type, Amazon Lex sets the version to
    #       1. Subsequent versions increment by 1. For more information, see <a>versioning-intro</a>. </p>
    #
    #          <p>This operation requires permissions for the
    #         <code>lex:CreateSlotTypeVersion</code> action.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateSlotTypeVersionInput}.
    #
    # @option params [String] :name
    #   <p>The name of the slot type that you want to create a new version
    #         for. The name is case sensitive. </p>
    #
    # @option params [String] :checksum
    #   <p>Checksum for the <code>$LATEST</code> version of the slot type that
    #         you want to publish. If you specify a checksum and the
    #           <code>$LATEST</code> version of the slot type has a different checksum,
    #         Amazon Lex returns a <code>PreconditionFailedException</code> exception and
    #         doesn't publish the new version. If you don't specify a checksum, Amazon Lex
    #         publishes the <code>$LATEST</code> version.</p>
    #
    # @return [Types::CreateSlotTypeVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_slot_type_version(
    #     name: 'name', # required
    #     checksum: 'checksum'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateSlotTypeVersionOutput
    #   resp.data.name #=> String
    #   resp.data.description #=> String
    #   resp.data.enumeration_values #=> Array<EnumerationValue>
    #   resp.data.enumeration_values[0] #=> Types::EnumerationValue
    #   resp.data.enumeration_values[0].value #=> String
    #   resp.data.enumeration_values[0].synonyms #=> Array<String>
    #   resp.data.enumeration_values[0].synonyms[0] #=> String
    #   resp.data.last_updated_date #=> Time
    #   resp.data.created_date #=> Time
    #   resp.data.version #=> String
    #   resp.data.checksum #=> String
    #   resp.data.value_selection_strategy #=> String, one of ["ORIGINAL_VALUE", "TOP_RESOLUTION"]
    #   resp.data.parent_slot_type_signature #=> String
    #   resp.data.slot_type_configurations #=> Array<SlotTypeConfiguration>
    #   resp.data.slot_type_configurations[0] #=> Types::SlotTypeConfiguration
    #   resp.data.slot_type_configurations[0].regex_configuration #=> Types::SlotTypeRegexConfiguration
    #   resp.data.slot_type_configurations[0].regex_configuration.pattern #=> String
    #
    def create_slot_type_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateSlotTypeVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateSlotTypeVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateSlotTypeVersion
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::LimitExceededException, Errors::BadRequestException, Errors::PreconditionFailedException, Errors::InternalFailureException]),
        data_parser: Parsers::CreateSlotTypeVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateSlotTypeVersion,
        stubs: @stubs,
        params_class: Params::CreateSlotTypeVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_slot_type_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes all versions of the bot, including the <code>$LATEST</code>
    #       version. To delete a specific version of the bot, use the <a>DeleteBotVersion</a> operation. The <code>DeleteBot</code>
    #       operation doesn't immediately remove the bot schema. Instead, it is marked
    #       for deletion and removed later.</p>
    #          <p>Amazon Lex stores utterances indefinitely for improving the ability of
    #       your bot to respond to user inputs. These utterances are not removed when
    #       the bot is deleted. To remove the utterances, use the <a>DeleteUtterances</a> operation.</p>
    #          <p>If a bot has an alias, you can't delete it. Instead, the
    #         <code>DeleteBot</code> operation returns a
    #         <code>ResourceInUseException</code> exception that includes a reference
    #       to the alias that refers to the bot. To remove the reference to the bot,
    #       delete the alias. If you get the same exception again, delete the
    #       referring alias until the <code>DeleteBot</code> operation is
    #       successful.</p>
    #
    #          <p>This operation requires permissions for the
    #         <code>lex:DeleteBot</code> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteBotInput}.
    #
    # @option params [String] :name
    #   <p>The name of the bot. The name is case sensitive. </p>
    #
    # @return [Types::DeleteBotOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_bot(
    #     name: 'name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteBotOutput
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::LimitExceededException, Errors::ResourceInUseException, Errors::BadRequestException, Errors::InternalFailureException]),
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

    # <p>Deletes an alias for the specified bot. </p>
    #          <p>You can't delete an alias that is used in the association between a
    #       bot and a messaging channel. If an alias is used in a channel association,
    #       the <code>DeleteBot</code> operation returns a
    #         <code>ResourceInUseException</code> exception that includes a reference
    #       to the channel association that refers to the bot. You can remove the
    #       reference to the alias by deleting the channel association. If you get the
    #       same exception again, delete the referring association until the
    #         <code>DeleteBotAlias</code> operation is successful.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteBotAliasInput}.
    #
    # @option params [String] :name
    #   <p>The name of the alias to delete. The name is case sensitive.
    #       </p>
    #
    # @option params [String] :bot_name
    #   <p>The name of the bot that the alias points to.</p>
    #
    # @return [Types::DeleteBotAliasOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_bot_alias(
    #     name: 'name', # required
    #     bot_name: 'botName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteBotAliasOutput
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::LimitExceededException, Errors::ResourceInUseException, Errors::BadRequestException, Errors::InternalFailureException]),
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

    # <p>Deletes the association between an Amazon Lex bot and a messaging
    #       platform.</p>
    #          <p>This operation requires permission for the
    #         <code>lex:DeleteBotChannelAssociation</code> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteBotChannelAssociationInput}.
    #
    # @option params [String] :name
    #   <p>The name of the association. The name is case sensitive. </p>
    #
    # @option params [String] :bot_name
    #   <p>The name of the Amazon Lex bot.</p>
    #
    # @option params [String] :bot_alias
    #   <p>An alias that points to the specific version of the Amazon Lex bot to
    #         which this association is being made.</p>
    #
    # @return [Types::DeleteBotChannelAssociationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_bot_channel_association(
    #     name: 'name', # required
    #     bot_name: 'botName', # required
    #     bot_alias: 'botAlias' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteBotChannelAssociationOutput
    #
    def delete_bot_channel_association(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteBotChannelAssociationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteBotChannelAssociationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteBotChannelAssociation
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::LimitExceededException, Errors::BadRequestException, Errors::InternalFailureException]),
        data_parser: Parsers::DeleteBotChannelAssociation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteBotChannelAssociation,
        stubs: @stubs,
        params_class: Params::DeleteBotChannelAssociationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_bot_channel_association
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a specific version of a bot. To delete all versions of a
    #       bot, use the <a>DeleteBot</a> operation. </p>
    #          <p>This operation requires permissions for the
    #         <code>lex:DeleteBotVersion</code> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteBotVersionInput}.
    #
    # @option params [String] :name
    #   <p>The name of the bot.</p>
    #
    # @option params [String] :version
    #   <p>The version of the bot to delete. You cannot delete the
    #           <code>$LATEST</code> version of the bot. To delete the
    #           <code>$LATEST</code> version, use the <a>DeleteBot</a>
    #         operation.</p>
    #
    # @return [Types::DeleteBotVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_bot_version(
    #     name: 'name', # required
    #     version: 'version' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteBotVersionOutput
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::LimitExceededException, Errors::ResourceInUseException, Errors::BadRequestException, Errors::InternalFailureException]),
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

    # <p>Deletes all versions of the intent, including the
    #         <code>$LATEST</code> version. To delete a specific version of the
    #       intent, use the <a>DeleteIntentVersion</a> operation.</p>
    #          <p> You can delete a version of an intent only if it is not
    #       referenced. To delete an intent that is referred to in one or more bots
    #       (see <a>how-it-works</a>), you must remove those references
    #       first. </p>
    #          <note>
    #             <p> If you get the <code>ResourceInUseException</code> exception, it
    #         provides an example reference that shows where the intent is referenced.
    #         To remove the reference to the intent, either update the bot or delete
    #         it. If you get the same exception when you attempt to delete the intent
    #         again, repeat until the intent has no references and the call to
    #           <code>DeleteIntent</code> is successful. </p>
    #          </note>
    #
    #          <p> This operation requires permission for the
    #         <code>lex:DeleteIntent</code> action. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteIntentInput}.
    #
    # @option params [String] :name
    #   <p>The name of the intent. The name is case sensitive. </p>
    #
    # @return [Types::DeleteIntentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_intent(
    #     name: 'name' # required
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::LimitExceededException, Errors::ResourceInUseException, Errors::BadRequestException, Errors::InternalFailureException]),
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

    # <p>Deletes a specific version of an intent. To delete all versions of
    #       a intent, use the <a>DeleteIntent</a> operation. </p>
    #          <p>This operation requires permissions for the
    #         <code>lex:DeleteIntentVersion</code> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteIntentVersionInput}.
    #
    # @option params [String] :name
    #   <p>The name of the intent.</p>
    #
    # @option params [String] :version
    #   <p>The version of the intent to delete. You cannot delete the
    #           <code>$LATEST</code> version of the intent. To delete the
    #           <code>$LATEST</code> version, use the <a>DeleteIntent</a>
    #         operation.</p>
    #
    # @return [Types::DeleteIntentVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_intent_version(
    #     name: 'name', # required
    #     version: 'version' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteIntentVersionOutput
    #
    def delete_intent_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteIntentVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteIntentVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteIntentVersion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::LimitExceededException, Errors::ResourceInUseException, Errors::BadRequestException, Errors::InternalFailureException]),
        data_parser: Parsers::DeleteIntentVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteIntentVersion,
        stubs: @stubs,
        params_class: Params::DeleteIntentVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_intent_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes all versions of the slot type, including the
    #         <code>$LATEST</code> version. To delete a specific version of the slot
    #       type, use the <a>DeleteSlotTypeVersion</a> operation.</p>
    #          <p> You can delete a version of a slot type only if it is not
    #       referenced. To delete a slot type that is referred to in one or more
    #       intents, you must remove those references first. </p>
    #          <note>
    #             <p> If you get the <code>ResourceInUseException</code> exception,
    #         the exception provides an example reference that shows the intent where
    #         the slot type is referenced. To remove the reference to the slot type,
    #         either update the intent or delete it. If you get the same exception
    #         when you attempt to delete the slot type again, repeat until the slot
    #         type has no references and the <code>DeleteSlotType</code> call is
    #         successful. </p>
    #          </note>
    #          <p>This operation requires permission for the
    #         <code>lex:DeleteSlotType</code> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteSlotTypeInput}.
    #
    # @option params [String] :name
    #   <p>The name of the slot type. The name is case sensitive. </p>
    #
    # @return [Types::DeleteSlotTypeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_slot_type(
    #     name: 'name' # required
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::LimitExceededException, Errors::ResourceInUseException, Errors::BadRequestException, Errors::InternalFailureException]),
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

    # <p>Deletes a specific version of a slot type. To delete all versions
    #       of a slot type, use the <a>DeleteSlotType</a> operation. </p>
    #          <p>This operation requires permissions for the
    #         <code>lex:DeleteSlotTypeVersion</code> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteSlotTypeVersionInput}.
    #
    # @option params [String] :name
    #   <p>The name of the slot type.</p>
    #
    # @option params [String] :version
    #   <p>The version of the slot type to delete. You cannot delete the
    #           <code>$LATEST</code> version of the slot type. To delete the
    #           <code>$LATEST</code> version, use the <a>DeleteSlotType</a>
    #         operation.</p>
    #
    # @return [Types::DeleteSlotTypeVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_slot_type_version(
    #     name: 'name', # required
    #     version: 'version' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteSlotTypeVersionOutput
    #
    def delete_slot_type_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteSlotTypeVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteSlotTypeVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteSlotTypeVersion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::LimitExceededException, Errors::ResourceInUseException, Errors::BadRequestException, Errors::InternalFailureException]),
        data_parser: Parsers::DeleteSlotTypeVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteSlotTypeVersion,
        stubs: @stubs,
        params_class: Params::DeleteSlotTypeVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_slot_type_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes stored utterances.</p>
    #          <p>Amazon Lex stores the utterances that users send to your bot. Utterances
    #       are stored for 15 days for use with the <a>GetUtterancesView</a> operation, and then stored indefinitely for use in improving the
    #       ability of your bot to respond to user input.</p>
    #          <p>Use the <code>DeleteUtterances</code> operation to manually delete
    #       stored utterances for a specific user. When you use the
    #         <code>DeleteUtterances</code> operation, utterances stored for improving
    #       your bot's ability to respond to user input are deleted immediately.
    #       Utterances stored for use with the <code>GetUtterancesView</code>
    #       operation are deleted after 15 days.</p>
    #          <p>This operation requires permissions for the
    #         <code>lex:DeleteUtterances</code> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteUtterancesInput}.
    #
    # @option params [String] :bot_name
    #   <p>The name of the bot that stored the utterances.</p>
    #
    # @option params [String] :user_id
    #   <p> The unique identifier for the user that made the utterances. This
    #         is the user ID that was sent in the <a href="http://docs.aws.amazon.com/lex/latest/dg/API_runtime_PostContent.html">PostContent</a> or <a href="http://docs.aws.amazon.com/lex/latest/dg/API_runtime_PostText.html">PostText</a> operation request that contained the
    #         utterance.</p>
    #
    # @return [Types::DeleteUtterancesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_utterances(
    #     bot_name: 'botName', # required
    #     user_id: 'userId' # required
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::NotFoundException, Errors::LimitExceededException, Errors::BadRequestException, Errors::InternalFailureException]),
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

    # <p>Returns metadata information for a specific bot. You must provide
    #       the bot name and the bot version or alias. </p>
    #          <p> This operation requires permissions for the
    #         <code>lex:GetBot</code> action. </p>
    #
    # @param [Hash] params
    #   See {Types::GetBotInput}.
    #
    # @option params [String] :name
    #   <p>The name of the bot. The name is case sensitive. </p>
    #
    # @option params [String] :version_or_alias
    #   <p>The version or alias of the bot.</p>
    #
    # @return [Types::GetBotOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_bot(
    #     name: 'name', # required
    #     version_or_alias: 'versionOrAlias' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetBotOutput
    #   resp.data.name #=> String
    #   resp.data.description #=> String
    #   resp.data.intents #=> Array<Intent>
    #   resp.data.intents[0] #=> Types::Intent
    #   resp.data.intents[0].intent_name #=> String
    #   resp.data.intents[0].intent_version #=> String
    #   resp.data.enable_model_improvements #=> Boolean
    #   resp.data.nlu_intent_confidence_threshold #=> Float
    #   resp.data.clarification_prompt #=> Types::Prompt
    #   resp.data.clarification_prompt.messages #=> Array<Message>
    #   resp.data.clarification_prompt.messages[0] #=> Types::Message
    #   resp.data.clarification_prompt.messages[0].content_type #=> String, one of ["PlainText", "SSML", "CustomPayload"]
    #   resp.data.clarification_prompt.messages[0].content #=> String
    #   resp.data.clarification_prompt.messages[0].group_number #=> Integer
    #   resp.data.clarification_prompt.max_attempts #=> Integer
    #   resp.data.clarification_prompt.response_card #=> String
    #   resp.data.abort_statement #=> Types::Statement
    #   resp.data.abort_statement.messages #=> Array<Message>
    #   resp.data.abort_statement.response_card #=> String
    #   resp.data.status #=> String, one of ["BUILDING", "READY", "READY_BASIC_TESTING", "FAILED", "NOT_BUILT"]
    #   resp.data.failure_reason #=> String
    #   resp.data.last_updated_date #=> Time
    #   resp.data.created_date #=> Time
    #   resp.data.idle_session_ttl_in_seconds #=> Integer
    #   resp.data.voice_id #=> String
    #   resp.data.checksum #=> String
    #   resp.data.version #=> String
    #   resp.data.locale #=> String, one of ["de-DE", "en-AU", "en-GB", "en-IN", "en-US", "es-419", "es-ES", "es-US", "fr-FR", "fr-CA", "it-IT", "ja-JP", "ko-KR"]
    #   resp.data.child_directed #=> Boolean
    #   resp.data.detect_sentiment #=> Boolean
    #
    def get_bot(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetBotInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetBotInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetBot
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::LimitExceededException, Errors::BadRequestException, Errors::InternalFailureException]),
        data_parser: Parsers::GetBot
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetBot,
        stubs: @stubs,
        params_class: Params::GetBotOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_bot
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about an Amazon Lex bot alias. For more information
    #       about aliases, see <a>versioning-aliases</a>.</p>
    #          <p>This operation requires permissions for the
    #         <code>lex:GetBotAlias</code> action.</p>
    #
    # @param [Hash] params
    #   See {Types::GetBotAliasInput}.
    #
    # @option params [String] :name
    #   <p>The name of the bot alias. The name is case sensitive.</p>
    #
    # @option params [String] :bot_name
    #   <p>The name of the bot.</p>
    #
    # @return [Types::GetBotAliasOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_bot_alias(
    #     name: 'name', # required
    #     bot_name: 'botName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetBotAliasOutput
    #   resp.data.name #=> String
    #   resp.data.description #=> String
    #   resp.data.bot_version #=> String
    #   resp.data.bot_name #=> String
    #   resp.data.last_updated_date #=> Time
    #   resp.data.created_date #=> Time
    #   resp.data.checksum #=> String
    #   resp.data.conversation_logs #=> Types::ConversationLogsResponse
    #   resp.data.conversation_logs.log_settings #=> Array<LogSettingsResponse>
    #   resp.data.conversation_logs.log_settings[0] #=> Types::LogSettingsResponse
    #   resp.data.conversation_logs.log_settings[0].log_type #=> String, one of ["AUDIO", "TEXT"]
    #   resp.data.conversation_logs.log_settings[0].destination #=> String, one of ["CLOUDWATCH_LOGS", "S3"]
    #   resp.data.conversation_logs.log_settings[0].kms_key_arn #=> String
    #   resp.data.conversation_logs.log_settings[0].resource_arn #=> String
    #   resp.data.conversation_logs.log_settings[0].resource_prefix #=> String
    #   resp.data.conversation_logs.iam_role_arn #=> String
    #
    def get_bot_alias(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetBotAliasInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetBotAliasInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetBotAlias
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::LimitExceededException, Errors::BadRequestException, Errors::InternalFailureException]),
        data_parser: Parsers::GetBotAlias
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetBotAlias,
        stubs: @stubs,
        params_class: Params::GetBotAliasOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_bot_alias
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of aliases for a specified Amazon Lex bot.</p>
    #          <p>This operation requires permissions for the
    #         <code>lex:GetBotAliases</code> action.</p>
    #
    # @param [Hash] params
    #   See {Types::GetBotAliasesInput}.
    #
    # @option params [String] :bot_name
    #   <p>The name of the bot.</p>
    #
    # @option params [String] :next_token
    #   <p>A pagination token for fetching the next page of aliases. If the
    #         response to this call is truncated, Amazon Lex returns a pagination token in
    #         the response. To fetch the next page of aliases, specify the pagination
    #         token in the next request. </p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of aliases to return in the response. The
    #         default is 50. . </p>
    #
    # @option params [String] :name_contains
    #   <p>Substring to match in bot alias names. An alias will be returned if
    #         any part of its name matches the substring. For example, "xyz" matches
    #         both "xyzabc" and "abcxyz."</p>
    #
    # @return [Types::GetBotAliasesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_bot_aliases(
    #     bot_name: 'botName', # required
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     name_contains: 'nameContains'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetBotAliasesOutput
    #   resp.data.bot_aliases #=> Array<BotAliasMetadata>
    #   resp.data.bot_aliases[0] #=> Types::BotAliasMetadata
    #   resp.data.bot_aliases[0].name #=> String
    #   resp.data.bot_aliases[0].description #=> String
    #   resp.data.bot_aliases[0].bot_version #=> String
    #   resp.data.bot_aliases[0].bot_name #=> String
    #   resp.data.bot_aliases[0].last_updated_date #=> Time
    #   resp.data.bot_aliases[0].created_date #=> Time
    #   resp.data.bot_aliases[0].checksum #=> String
    #   resp.data.bot_aliases[0].conversation_logs #=> Types::ConversationLogsResponse
    #   resp.data.bot_aliases[0].conversation_logs.log_settings #=> Array<LogSettingsResponse>
    #   resp.data.bot_aliases[0].conversation_logs.log_settings[0] #=> Types::LogSettingsResponse
    #   resp.data.bot_aliases[0].conversation_logs.log_settings[0].log_type #=> String, one of ["AUDIO", "TEXT"]
    #   resp.data.bot_aliases[0].conversation_logs.log_settings[0].destination #=> String, one of ["CLOUDWATCH_LOGS", "S3"]
    #   resp.data.bot_aliases[0].conversation_logs.log_settings[0].kms_key_arn #=> String
    #   resp.data.bot_aliases[0].conversation_logs.log_settings[0].resource_arn #=> String
    #   resp.data.bot_aliases[0].conversation_logs.log_settings[0].resource_prefix #=> String
    #   resp.data.bot_aliases[0].conversation_logs.iam_role_arn #=> String
    #   resp.data.next_token #=> String
    #
    def get_bot_aliases(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetBotAliasesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetBotAliasesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetBotAliases
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::BadRequestException, Errors::InternalFailureException]),
        data_parser: Parsers::GetBotAliases
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetBotAliases,
        stubs: @stubs,
        params_class: Params::GetBotAliasesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_bot_aliases
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about the association between an Amazon Lex bot and
    #       a messaging platform.</p>
    #          <p>This operation requires permissions for the
    #         <code>lex:GetBotChannelAssociation</code> action.</p>
    #
    # @param [Hash] params
    #   See {Types::GetBotChannelAssociationInput}.
    #
    # @option params [String] :name
    #   <p>The name of the association between the bot and the channel. The
    #         name is case sensitive. </p>
    #
    # @option params [String] :bot_name
    #   <p>The name of the Amazon Lex bot.</p>
    #
    # @option params [String] :bot_alias
    #   <p>An alias pointing to the specific version of the Amazon Lex bot to which
    #         this association is being made.</p>
    #
    # @return [Types::GetBotChannelAssociationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_bot_channel_association(
    #     name: 'name', # required
    #     bot_name: 'botName', # required
    #     bot_alias: 'botAlias' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetBotChannelAssociationOutput
    #   resp.data.name #=> String
    #   resp.data.description #=> String
    #   resp.data.bot_alias #=> String
    #   resp.data.bot_name #=> String
    #   resp.data.created_date #=> Time
    #   resp.data.type #=> String, one of ["Facebook", "Slack", "Twilio-Sms", "Kik"]
    #   resp.data.bot_configuration #=> Hash<String, String>
    #   resp.data.bot_configuration['key'] #=> String
    #   resp.data.status #=> String, one of ["IN_PROGRESS", "CREATED", "FAILED"]
    #   resp.data.failure_reason #=> String
    #
    def get_bot_channel_association(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetBotChannelAssociationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetBotChannelAssociationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetBotChannelAssociation
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::LimitExceededException, Errors::BadRequestException, Errors::InternalFailureException]),
        data_parser: Parsers::GetBotChannelAssociation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetBotChannelAssociation,
        stubs: @stubs,
        params_class: Params::GetBotChannelAssociationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_bot_channel_association
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Returns a list of all of the channels associated with the
    #       specified bot. </p>
    #          <p>The <code>GetBotChannelAssociations</code> operation requires
    #       permissions for the <code>lex:GetBotChannelAssociations</code>
    #       action.</p>
    #
    # @param [Hash] params
    #   See {Types::GetBotChannelAssociationsInput}.
    #
    # @option params [String] :bot_name
    #   <p>The name of the Amazon Lex bot in the association.</p>
    #
    # @option params [String] :bot_alias
    #   <p>An alias pointing to the specific version of the Amazon Lex bot to which
    #         this association is being made.</p>
    #
    # @option params [String] :next_token
    #   <p>A pagination token for fetching the next page of associations. If
    #         the response to this call is truncated, Amazon Lex returns a pagination token
    #         in the response. To fetch the next page of associations, specify the
    #         pagination token in the next request. </p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of associations to return in the response. The
    #         default is 50. </p>
    #
    # @option params [String] :name_contains
    #   <p>Substring to match in channel association names. An association
    #         will be returned if any part of its name matches the substring. For
    #         example, "xyz" matches both "xyzabc" and "abcxyz." To return all bot
    #         channel associations, use a hyphen ("-") as the <code>nameContains</code>
    #         parameter.</p>
    #
    # @return [Types::GetBotChannelAssociationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_bot_channel_associations(
    #     bot_name: 'botName', # required
    #     bot_alias: 'botAlias', # required
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     name_contains: 'nameContains'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetBotChannelAssociationsOutput
    #   resp.data.bot_channel_associations #=> Array<BotChannelAssociation>
    #   resp.data.bot_channel_associations[0] #=> Types::BotChannelAssociation
    #   resp.data.bot_channel_associations[0].name #=> String
    #   resp.data.bot_channel_associations[0].description #=> String
    #   resp.data.bot_channel_associations[0].bot_alias #=> String
    #   resp.data.bot_channel_associations[0].bot_name #=> String
    #   resp.data.bot_channel_associations[0].created_date #=> Time
    #   resp.data.bot_channel_associations[0].type #=> String, one of ["Facebook", "Slack", "Twilio-Sms", "Kik"]
    #   resp.data.bot_channel_associations[0].bot_configuration #=> Hash<String, String>
    #   resp.data.bot_channel_associations[0].bot_configuration['key'] #=> String
    #   resp.data.bot_channel_associations[0].status #=> String, one of ["IN_PROGRESS", "CREATED", "FAILED"]
    #   resp.data.bot_channel_associations[0].failure_reason #=> String
    #   resp.data.next_token #=> String
    #
    def get_bot_channel_associations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetBotChannelAssociationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetBotChannelAssociationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetBotChannelAssociations
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::BadRequestException, Errors::InternalFailureException]),
        data_parser: Parsers::GetBotChannelAssociations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetBotChannelAssociations,
        stubs: @stubs,
        params_class: Params::GetBotChannelAssociationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_bot_channel_associations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about all of the versions of a bot.</p>
    #          <p>The <code>GetBotVersions</code> operation returns a
    #         <code>BotMetadata</code> object for each version of a bot. For example,
    #       if a bot has three numbered versions, the <code>GetBotVersions</code>
    #       operation returns four <code>BotMetadata</code> objects in the response,
    #       one for each numbered version and one for the <code>$LATEST</code>
    #       version. </p>
    #          <p>The <code>GetBotVersions</code> operation always returns at least
    #       one version, the <code>$LATEST</code> version.</p>
    #          <p>This operation requires permissions for the
    #         <code>lex:GetBotVersions</code> action.</p>
    #
    # @param [Hash] params
    #   See {Types::GetBotVersionsInput}.
    #
    # @option params [String] :name
    #   <p>The name of the bot for which versions should be
    #         returned.</p>
    #
    # @option params [String] :next_token
    #   <p>A pagination token for fetching the next page of bot versions. If
    #         the response to this call is truncated, Amazon Lex returns a pagination token
    #         in the response. To fetch the next page of versions, specify the
    #         pagination token in the next request. </p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of bot versions to return in the response. The
    #         default is 10.</p>
    #
    # @return [Types::GetBotVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_bot_versions(
    #     name: 'name', # required
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetBotVersionsOutput
    #   resp.data.bots #=> Array<BotMetadata>
    #   resp.data.bots[0] #=> Types::BotMetadata
    #   resp.data.bots[0].name #=> String
    #   resp.data.bots[0].description #=> String
    #   resp.data.bots[0].status #=> String, one of ["BUILDING", "READY", "READY_BASIC_TESTING", "FAILED", "NOT_BUILT"]
    #   resp.data.bots[0].last_updated_date #=> Time
    #   resp.data.bots[0].created_date #=> Time
    #   resp.data.bots[0].version #=> String
    #   resp.data.next_token #=> String
    #
    def get_bot_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetBotVersionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetBotVersionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetBotVersions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::LimitExceededException, Errors::BadRequestException, Errors::InternalFailureException]),
        data_parser: Parsers::GetBotVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetBotVersions,
        stubs: @stubs,
        params_class: Params::GetBotVersionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_bot_versions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns bot information as follows: </p>
    #          <ul>
    #             <li>
    #                <p>If you provide the <code>nameContains</code> field, the
    #           response includes information for the <code>$LATEST</code> version of
    #           all bots whose name contains the specified string.</p>
    #             </li>
    #             <li>
    #                <p>If you don't specify the <code>nameContains</code> field, the
    #           operation returns information about the <code>$LATEST</code> version
    #           of all of your bots.</p>
    #             </li>
    #          </ul>
    #          <p>This operation requires permission for the <code>lex:GetBots</code>
    #       action.</p>
    #
    # @param [Hash] params
    #   See {Types::GetBotsInput}.
    #
    # @option params [String] :next_token
    #   <p>A pagination token that fetches the next page of bots. If the
    #         response to this call is truncated, Amazon Lex returns a pagination token in
    #         the response. To fetch the next page of bots, specify the pagination token
    #         in the next request. </p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of bots to return in the response that the
    #         request will return. The default is 10.</p>
    #
    # @option params [String] :name_contains
    #   <p>Substring to match in bot names. A bot will be returned if any part
    #         of its name matches the substring. For example, "xyz" matches both
    #         "xyzabc" and "abcxyz."</p>
    #
    # @return [Types::GetBotsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_bots(
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     name_contains: 'nameContains'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetBotsOutput
    #   resp.data.bots #=> Array<BotMetadata>
    #   resp.data.bots[0] #=> Types::BotMetadata
    #   resp.data.bots[0].name #=> String
    #   resp.data.bots[0].description #=> String
    #   resp.data.bots[0].status #=> String, one of ["BUILDING", "READY", "READY_BASIC_TESTING", "FAILED", "NOT_BUILT"]
    #   resp.data.bots[0].last_updated_date #=> Time
    #   resp.data.bots[0].created_date #=> Time
    #   resp.data.bots[0].version #=> String
    #   resp.data.next_token #=> String
    #
    def get_bots(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetBotsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetBotsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetBots
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::LimitExceededException, Errors::BadRequestException, Errors::InternalFailureException]),
        data_parser: Parsers::GetBots
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetBots,
        stubs: @stubs,
        params_class: Params::GetBotsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_bots
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about a built-in intent.</p>
    #          <p>This operation requires permission for the
    #         <code>lex:GetBuiltinIntent</code> action.</p>
    #
    # @param [Hash] params
    #   See {Types::GetBuiltinIntentInput}.
    #
    # @option params [String] :signature
    #   <p>The unique identifier for a built-in intent. To find the signature
    #         for an intent, see <a href="https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents">Standard Built-in Intents</a> in the <i>Alexa Skills
    #           Kit</i>.</p>
    #
    # @return [Types::GetBuiltinIntentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_builtin_intent(
    #     signature: 'signature' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetBuiltinIntentOutput
    #   resp.data.signature #=> String
    #   resp.data.supported_locales #=> Array<String>
    #   resp.data.supported_locales[0] #=> String, one of ["de-DE", "en-AU", "en-GB", "en-IN", "en-US", "es-419", "es-ES", "es-US", "fr-FR", "fr-CA", "it-IT", "ja-JP", "ko-KR"]
    #   resp.data.slots #=> Array<BuiltinIntentSlot>
    #   resp.data.slots[0] #=> Types::BuiltinIntentSlot
    #   resp.data.slots[0].name #=> String
    #
    def get_builtin_intent(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetBuiltinIntentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetBuiltinIntentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetBuiltinIntent
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::LimitExceededException, Errors::BadRequestException, Errors::InternalFailureException]),
        data_parser: Parsers::GetBuiltinIntent
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetBuiltinIntent,
        stubs: @stubs,
        params_class: Params::GetBuiltinIntentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_builtin_intent
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a list of built-in intents that meet the specified
    #       criteria.</p>
    #          <p>This operation requires permission for the
    #         <code>lex:GetBuiltinIntents</code> action.</p>
    #
    # @param [Hash] params
    #   See {Types::GetBuiltinIntentsInput}.
    #
    # @option params [String] :locale
    #   <p>A list of locales that the intent supports.</p>
    #
    # @option params [String] :signature_contains
    #   <p>Substring to match in built-in intent signatures. An intent will be
    #         returned if any part of its signature matches the substring. For example,
    #         "xyz" matches both "xyzabc" and "abcxyz." To find the signature for an
    #         intent, see <a href="https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents">Standard Built-in Intents</a> in the <i>Alexa Skills
    #           Kit</i>.</p>
    #
    # @option params [String] :next_token
    #   <p>A pagination token that fetches the next page of intents. If this
    #         API call is truncated, Amazon Lex returns a pagination token in the response.
    #         To fetch the next page of intents, use the pagination token in the next
    #         request.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of intents to return in the response. The
    #         default is 10.</p>
    #
    # @return [Types::GetBuiltinIntentsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_builtin_intents(
    #     locale: 'de-DE', # accepts ["de-DE", "en-AU", "en-GB", "en-IN", "en-US", "es-419", "es-ES", "es-US", "fr-FR", "fr-CA", "it-IT", "ja-JP", "ko-KR"]
    #     signature_contains: 'signatureContains',
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetBuiltinIntentsOutput
    #   resp.data.intents #=> Array<BuiltinIntentMetadata>
    #   resp.data.intents[0] #=> Types::BuiltinIntentMetadata
    #   resp.data.intents[0].signature #=> String
    #   resp.data.intents[0].supported_locales #=> Array<String>
    #   resp.data.intents[0].supported_locales[0] #=> String, one of ["de-DE", "en-AU", "en-GB", "en-IN", "en-US", "es-419", "es-ES", "es-US", "fr-FR", "fr-CA", "it-IT", "ja-JP", "ko-KR"]
    #   resp.data.next_token #=> String
    #
    def get_builtin_intents(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetBuiltinIntentsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetBuiltinIntentsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetBuiltinIntents
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::BadRequestException, Errors::InternalFailureException]),
        data_parser: Parsers::GetBuiltinIntents
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetBuiltinIntents,
        stubs: @stubs,
        params_class: Params::GetBuiltinIntentsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_builtin_intents
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a list of built-in slot types that meet the specified
    #       criteria.</p>
    #          <p>For a list of built-in slot types, see <a href="https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/slot-type-reference">Slot Type Reference</a> in the <i>Alexa Skills
    #         Kit</i>.</p>
    #
    #          <p>This operation requires permission for the
    #         <code>lex:GetBuiltInSlotTypes</code> action.</p>
    #
    # @param [Hash] params
    #   See {Types::GetBuiltinSlotTypesInput}.
    #
    # @option params [String] :locale
    #   <p>A list of locales that the slot type supports.</p>
    #
    # @option params [String] :signature_contains
    #   <p>Substring to match in built-in slot type signatures. A slot type
    #         will be returned if any part of its signature matches the substring. For
    #         example, "xyz" matches both "xyzabc" and "abcxyz."</p>
    #
    # @option params [String] :next_token
    #   <p>A pagination token that fetches the next page of slot types. If the
    #         response to this API call is truncated, Amazon Lex returns a pagination token
    #         in the response. To fetch the next page of slot types, specify the
    #         pagination token in the next request.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of slot types to return in the response. The
    #         default is 10.</p>
    #
    # @return [Types::GetBuiltinSlotTypesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_builtin_slot_types(
    #     locale: 'de-DE', # accepts ["de-DE", "en-AU", "en-GB", "en-IN", "en-US", "es-419", "es-ES", "es-US", "fr-FR", "fr-CA", "it-IT", "ja-JP", "ko-KR"]
    #     signature_contains: 'signatureContains',
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetBuiltinSlotTypesOutput
    #   resp.data.slot_types #=> Array<BuiltinSlotTypeMetadata>
    #   resp.data.slot_types[0] #=> Types::BuiltinSlotTypeMetadata
    #   resp.data.slot_types[0].signature #=> String
    #   resp.data.slot_types[0].supported_locales #=> Array<String>
    #   resp.data.slot_types[0].supported_locales[0] #=> String, one of ["de-DE", "en-AU", "en-GB", "en-IN", "en-US", "es-419", "es-ES", "es-US", "fr-FR", "fr-CA", "it-IT", "ja-JP", "ko-KR"]
    #   resp.data.next_token #=> String
    #
    def get_builtin_slot_types(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetBuiltinSlotTypesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetBuiltinSlotTypesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetBuiltinSlotTypes
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::BadRequestException, Errors::InternalFailureException]),
        data_parser: Parsers::GetBuiltinSlotTypes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetBuiltinSlotTypes,
        stubs: @stubs,
        params_class: Params::GetBuiltinSlotTypesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_builtin_slot_types
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Exports the contents of a Amazon Lex resource in a specified format.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::GetExportInput}.
    #
    # @option params [String] :name
    #   <p>The name of the bot to export.</p>
    #
    # @option params [String] :version
    #   <p>The version of the bot to export.</p>
    #
    # @option params [String] :resource_type
    #   <p>The type of resource to export. </p>
    #
    # @option params [String] :export_type
    #   <p>The format of the exported data.</p>
    #
    # @return [Types::GetExportOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_export(
    #     name: 'name', # required
    #     version: 'version', # required
    #     resource_type: 'BOT', # required - accepts ["BOT", "INTENT", "SLOT_TYPE"]
    #     export_type: 'ALEXA_SKILLS_KIT' # required - accepts ["ALEXA_SKILLS_KIT", "LEX"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetExportOutput
    #   resp.data.name #=> String
    #   resp.data.version #=> String
    #   resp.data.resource_type #=> String, one of ["BOT", "INTENT", "SLOT_TYPE"]
    #   resp.data.export_type #=> String, one of ["ALEXA_SKILLS_KIT", "LEX"]
    #   resp.data.export_status #=> String, one of ["IN_PROGRESS", "READY", "FAILED"]
    #   resp.data.failure_reason #=> String
    #   resp.data.url #=> String
    #
    def get_export(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetExportInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetExportInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetExport
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::LimitExceededException, Errors::BadRequestException, Errors::InternalFailureException]),
        data_parser: Parsers::GetExport
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetExport,
        stubs: @stubs,
        params_class: Params::GetExportOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_export
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about an import job started with the
    #         <code>StartImport</code> operation.</p>
    #
    # @param [Hash] params
    #   See {Types::GetImportInput}.
    #
    # @option params [String] :import_id
    #   <p>The identifier of the import job information to return.</p>
    #
    # @return [Types::GetImportOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_import(
    #     import_id: 'importId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetImportOutput
    #   resp.data.name #=> String
    #   resp.data.resource_type #=> String, one of ["BOT", "INTENT", "SLOT_TYPE"]
    #   resp.data.merge_strategy #=> String, one of ["OVERWRITE_LATEST", "FAIL_ON_CONFLICT"]
    #   resp.data.import_id #=> String
    #   resp.data.import_status #=> String, one of ["IN_PROGRESS", "COMPLETE", "FAILED"]
    #   resp.data.failure_reason #=> Array<String>
    #   resp.data.failure_reason[0] #=> String
    #   resp.data.created_date #=> Time
    #
    def get_import(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetImportInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetImportInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetImport
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::LimitExceededException, Errors::BadRequestException, Errors::InternalFailureException]),
        data_parser: Parsers::GetImport
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetImport,
        stubs: @stubs,
        params_class: Params::GetImportOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_import
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Returns information about an intent. In addition to the intent
    #       name, you must specify the intent version. </p>
    #          <p> This operation requires permissions to perform the
    #         <code>lex:GetIntent</code> action. </p>
    #
    # @param [Hash] params
    #   See {Types::GetIntentInput}.
    #
    # @option params [String] :name
    #   <p>The name of the intent. The name is case sensitive. </p>
    #
    # @option params [String] :version
    #   <p>The version of the intent.</p>
    #
    # @return [Types::GetIntentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_intent(
    #     name: 'name', # required
    #     version: 'version' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetIntentOutput
    #   resp.data.name #=> String
    #   resp.data.description #=> String
    #   resp.data.slots #=> Array<Slot>
    #   resp.data.slots[0] #=> Types::Slot
    #   resp.data.slots[0].name #=> String
    #   resp.data.slots[0].description #=> String
    #   resp.data.slots[0].slot_constraint #=> String, one of ["Required", "Optional"]
    #   resp.data.slots[0].slot_type #=> String
    #   resp.data.slots[0].slot_type_version #=> String
    #   resp.data.slots[0].value_elicitation_prompt #=> Types::Prompt
    #   resp.data.slots[0].value_elicitation_prompt.messages #=> Array<Message>
    #   resp.data.slots[0].value_elicitation_prompt.messages[0] #=> Types::Message
    #   resp.data.slots[0].value_elicitation_prompt.messages[0].content_type #=> String, one of ["PlainText", "SSML", "CustomPayload"]
    #   resp.data.slots[0].value_elicitation_prompt.messages[0].content #=> String
    #   resp.data.slots[0].value_elicitation_prompt.messages[0].group_number #=> Integer
    #   resp.data.slots[0].value_elicitation_prompt.max_attempts #=> Integer
    #   resp.data.slots[0].value_elicitation_prompt.response_card #=> String
    #   resp.data.slots[0].priority #=> Integer
    #   resp.data.slots[0].sample_utterances #=> Array<String>
    #   resp.data.slots[0].sample_utterances[0] #=> String
    #   resp.data.slots[0].response_card #=> String
    #   resp.data.slots[0].obfuscation_setting #=> String, one of ["NONE", "DEFAULT_OBFUSCATION"]
    #   resp.data.slots[0].default_value_spec #=> Types::SlotDefaultValueSpec
    #   resp.data.slots[0].default_value_spec.default_value_list #=> Array<SlotDefaultValue>
    #   resp.data.slots[0].default_value_spec.default_value_list[0] #=> Types::SlotDefaultValue
    #   resp.data.slots[0].default_value_spec.default_value_list[0].default_value #=> String
    #   resp.data.sample_utterances #=> Array<String>
    #   resp.data.sample_utterances[0] #=> String
    #   resp.data.confirmation_prompt #=> Types::Prompt
    #   resp.data.rejection_statement #=> Types::Statement
    #   resp.data.rejection_statement.messages #=> Array<Message>
    #   resp.data.rejection_statement.response_card #=> String
    #   resp.data.follow_up_prompt #=> Types::FollowUpPrompt
    #   resp.data.follow_up_prompt.prompt #=> Types::Prompt
    #   resp.data.follow_up_prompt.rejection_statement #=> Types::Statement
    #   resp.data.conclusion_statement #=> Types::Statement
    #   resp.data.dialog_code_hook #=> Types::CodeHook
    #   resp.data.dialog_code_hook.uri #=> String
    #   resp.data.dialog_code_hook.message_version #=> String
    #   resp.data.fulfillment_activity #=> Types::FulfillmentActivity
    #   resp.data.fulfillment_activity.type #=> String, one of ["ReturnIntent", "CodeHook"]
    #   resp.data.fulfillment_activity.code_hook #=> Types::CodeHook
    #   resp.data.parent_intent_signature #=> String
    #   resp.data.last_updated_date #=> Time
    #   resp.data.created_date #=> Time
    #   resp.data.version #=> String
    #   resp.data.checksum #=> String
    #   resp.data.kendra_configuration #=> Types::KendraConfiguration
    #   resp.data.kendra_configuration.kendra_index #=> String
    #   resp.data.kendra_configuration.query_filter_string #=> String
    #   resp.data.kendra_configuration.role #=> String
    #   resp.data.input_contexts #=> Array<InputContext>
    #   resp.data.input_contexts[0] #=> Types::InputContext
    #   resp.data.input_contexts[0].name #=> String
    #   resp.data.output_contexts #=> Array<OutputContext>
    #   resp.data.output_contexts[0] #=> Types::OutputContext
    #   resp.data.output_contexts[0].name #=> String
    #   resp.data.output_contexts[0].time_to_live_in_seconds #=> Integer
    #   resp.data.output_contexts[0].turns_to_live #=> Integer
    #
    def get_intent(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetIntentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetIntentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetIntent
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::LimitExceededException, Errors::BadRequestException, Errors::InternalFailureException]),
        data_parser: Parsers::GetIntent
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetIntent,
        stubs: @stubs,
        params_class: Params::GetIntentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_intent
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about all of the versions of an intent.</p>
    #          <p>The <code>GetIntentVersions</code> operation returns an
    #         <code>IntentMetadata</code> object for each version of an intent. For
    #       example, if an intent has three numbered versions, the
    #         <code>GetIntentVersions</code> operation returns four
    #         <code>IntentMetadata</code> objects in the response, one for each
    #       numbered version and one for the <code>$LATEST</code> version. </p>
    #          <p>The <code>GetIntentVersions</code> operation always returns at
    #       least one version, the <code>$LATEST</code> version.</p>
    #          <p>This operation requires permissions for the
    #         <code>lex:GetIntentVersions</code> action.</p>
    #
    # @param [Hash] params
    #   See {Types::GetIntentVersionsInput}.
    #
    # @option params [String] :name
    #   <p>The name of the intent for which versions should be
    #         returned.</p>
    #
    # @option params [String] :next_token
    #   <p>A pagination token for fetching the next page of intent versions.
    #         If the response to this call is truncated, Amazon Lex returns a pagination
    #         token in the response. To fetch the next page of versions, specify the
    #         pagination token in the next request. </p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of intent versions to return in the response.
    #         The default is 10.</p>
    #
    # @return [Types::GetIntentVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_intent_versions(
    #     name: 'name', # required
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetIntentVersionsOutput
    #   resp.data.intents #=> Array<IntentMetadata>
    #   resp.data.intents[0] #=> Types::IntentMetadata
    #   resp.data.intents[0].name #=> String
    #   resp.data.intents[0].description #=> String
    #   resp.data.intents[0].last_updated_date #=> Time
    #   resp.data.intents[0].created_date #=> Time
    #   resp.data.intents[0].version #=> String
    #   resp.data.next_token #=> String
    #
    def get_intent_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetIntentVersionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetIntentVersionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetIntentVersions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::LimitExceededException, Errors::BadRequestException, Errors::InternalFailureException]),
        data_parser: Parsers::GetIntentVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetIntentVersions,
        stubs: @stubs,
        params_class: Params::GetIntentVersionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_intent_versions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns intent information as follows: </p>
    #          <ul>
    #             <li>
    #                <p>If you specify the <code>nameContains</code> field, returns the
    #             <code>$LATEST</code> version of all intents that contain the
    #           specified string.</p>
    #             </li>
    #             <li>
    #                <p> If you don't specify the <code>nameContains</code> field,
    #           returns information about the <code>$LATEST</code> version of all
    #           intents. </p>
    #             </li>
    #          </ul>
    #          <p> The operation requires permission for the
    #         <code>lex:GetIntents</code> action. </p>
    #
    # @param [Hash] params
    #   See {Types::GetIntentsInput}.
    #
    # @option params [String] :next_token
    #   <p>A pagination token that fetches the next page of intents. If the
    #         response to this API call is truncated, Amazon Lex returns a pagination token
    #         in the response. To fetch the next page of intents, specify the pagination
    #         token in the next request. </p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of intents to return in the response. The
    #         default is 10.</p>
    #
    # @option params [String] :name_contains
    #   <p>Substring to match in intent names. An intent will be returned if
    #         any part of its name matches the substring. For example, "xyz" matches
    #         both "xyzabc" and "abcxyz."</p>
    #
    # @return [Types::GetIntentsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_intents(
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     name_contains: 'nameContains'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetIntentsOutput
    #   resp.data.intents #=> Array<IntentMetadata>
    #   resp.data.intents[0] #=> Types::IntentMetadata
    #   resp.data.intents[0].name #=> String
    #   resp.data.intents[0].description #=> String
    #   resp.data.intents[0].last_updated_date #=> Time
    #   resp.data.intents[0].created_date #=> Time
    #   resp.data.intents[0].version #=> String
    #   resp.data.next_token #=> String
    #
    def get_intents(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetIntentsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetIntentsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetIntents
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::LimitExceededException, Errors::BadRequestException, Errors::InternalFailureException]),
        data_parser: Parsers::GetIntents
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetIntents,
        stubs: @stubs,
        params_class: Params::GetIntentsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_intents
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides details about an ongoing or complete migration from an
    #       Amazon Lex V1 bot to an Amazon Lex V2 bot. Use this operation to view the migration
    #       alerts and warnings related to the migration.</p>
    #
    # @param [Hash] params
    #   See {Types::GetMigrationInput}.
    #
    # @option params [String] :migration_id
    #   <p>The unique identifier of the migration to view. The
    #           <code>migrationID</code> is returned by the  operation.</p>
    #
    # @return [Types::GetMigrationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_migration(
    #     migration_id: 'migrationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetMigrationOutput
    #   resp.data.migration_id #=> String
    #   resp.data.v1_bot_name #=> String
    #   resp.data.v1_bot_version #=> String
    #   resp.data.v1_bot_locale #=> String, one of ["de-DE", "en-AU", "en-GB", "en-IN", "en-US", "es-419", "es-ES", "es-US", "fr-FR", "fr-CA", "it-IT", "ja-JP", "ko-KR"]
    #   resp.data.v2_bot_id #=> String
    #   resp.data.v2_bot_role #=> String
    #   resp.data.migration_status #=> String, one of ["IN_PROGRESS", "COMPLETED", "FAILED"]
    #   resp.data.migration_strategy #=> String, one of ["CREATE_NEW", "UPDATE_EXISTING"]
    #   resp.data.migration_timestamp #=> Time
    #   resp.data.alerts #=> Array<MigrationAlert>
    #   resp.data.alerts[0] #=> Types::MigrationAlert
    #   resp.data.alerts[0].type #=> String, one of ["ERROR", "WARN"]
    #   resp.data.alerts[0].message #=> String
    #   resp.data.alerts[0].details #=> Array<String>
    #   resp.data.alerts[0].details[0] #=> String
    #   resp.data.alerts[0].reference_ur_ls #=> Array<String>
    #   resp.data.alerts[0].reference_ur_ls[0] #=> String
    #
    def get_migration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetMigrationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetMigrationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetMigration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::LimitExceededException, Errors::BadRequestException, Errors::InternalFailureException]),
        data_parser: Parsers::GetMigration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetMigration,
        stubs: @stubs,
        params_class: Params::GetMigrationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_migration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a list of migrations between Amazon Lex V1 and Amazon Lex V2.</p>
    #
    # @param [Hash] params
    #   See {Types::GetMigrationsInput}.
    #
    # @option params [String] :sort_by_attribute
    #   <p>The field to sort the list of migrations by. You can sort by the
    #         Amazon Lex V1 bot name or the date and time that the migration was
    #         started.</p>
    #
    # @option params [String] :sort_by_order
    #   <p>The order so sort the list.</p>
    #
    # @option params [String] :v1_bot_name_contains
    #   <p>Filters the list to contain only bots whose name contains the
    #         specified string. The string is matched anywhere in bot name.</p>
    #
    # @option params [String] :migration_status_equals
    #   <p>Filters the list to contain only migrations in the specified state.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of migrations to return in the response. The
    #         default is 10.</p>
    #
    # @option params [String] :next_token
    #   <p>A pagination token that fetches the next page of migrations. If the
    #         response to this operation is truncated, Amazon Lex returns a pagination token
    #         in the response. To fetch the next page of migrations, specify the
    #         pagination token in the request.</p>
    #
    # @return [Types::GetMigrationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_migrations(
    #     sort_by_attribute: 'V1_BOT_NAME', # accepts ["V1_BOT_NAME", "MIGRATION_DATE_TIME"]
    #     sort_by_order: 'ASCENDING', # accepts ["ASCENDING", "DESCENDING"]
    #     v1_bot_name_contains: 'v1BotNameContains',
    #     migration_status_equals: 'IN_PROGRESS', # accepts ["IN_PROGRESS", "COMPLETED", "FAILED"]
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetMigrationsOutput
    #   resp.data.migration_summaries #=> Array<MigrationSummary>
    #   resp.data.migration_summaries[0] #=> Types::MigrationSummary
    #   resp.data.migration_summaries[0].migration_id #=> String
    #   resp.data.migration_summaries[0].v1_bot_name #=> String
    #   resp.data.migration_summaries[0].v1_bot_version #=> String
    #   resp.data.migration_summaries[0].v1_bot_locale #=> String, one of ["de-DE", "en-AU", "en-GB", "en-IN", "en-US", "es-419", "es-ES", "es-US", "fr-FR", "fr-CA", "it-IT", "ja-JP", "ko-KR"]
    #   resp.data.migration_summaries[0].v2_bot_id #=> String
    #   resp.data.migration_summaries[0].v2_bot_role #=> String
    #   resp.data.migration_summaries[0].migration_status #=> String, one of ["IN_PROGRESS", "COMPLETED", "FAILED"]
    #   resp.data.migration_summaries[0].migration_strategy #=> String, one of ["CREATE_NEW", "UPDATE_EXISTING"]
    #   resp.data.migration_summaries[0].migration_timestamp #=> Time
    #   resp.data.next_token #=> String
    #
    def get_migrations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetMigrationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetMigrationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetMigrations
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::BadRequestException, Errors::InternalFailureException]),
        data_parser: Parsers::GetMigrations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetMigrations,
        stubs: @stubs,
        params_class: Params::GetMigrationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_migrations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about a specific version of a slot type. In
    #       addition to specifying the slot type name, you must specify the slot type
    #       version.</p>
    #          <p>This operation requires permissions for the
    #         <code>lex:GetSlotType</code> action.</p>
    #
    # @param [Hash] params
    #   See {Types::GetSlotTypeInput}.
    #
    # @option params [String] :name
    #   <p>The name of the slot type. The name is case sensitive. </p>
    #
    # @option params [String] :version
    #   <p>The version of the slot type. </p>
    #
    # @return [Types::GetSlotTypeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_slot_type(
    #     name: 'name', # required
    #     version: 'version' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSlotTypeOutput
    #   resp.data.name #=> String
    #   resp.data.description #=> String
    #   resp.data.enumeration_values #=> Array<EnumerationValue>
    #   resp.data.enumeration_values[0] #=> Types::EnumerationValue
    #   resp.data.enumeration_values[0].value #=> String
    #   resp.data.enumeration_values[0].synonyms #=> Array<String>
    #   resp.data.enumeration_values[0].synonyms[0] #=> String
    #   resp.data.last_updated_date #=> Time
    #   resp.data.created_date #=> Time
    #   resp.data.version #=> String
    #   resp.data.checksum #=> String
    #   resp.data.value_selection_strategy #=> String, one of ["ORIGINAL_VALUE", "TOP_RESOLUTION"]
    #   resp.data.parent_slot_type_signature #=> String
    #   resp.data.slot_type_configurations #=> Array<SlotTypeConfiguration>
    #   resp.data.slot_type_configurations[0] #=> Types::SlotTypeConfiguration
    #   resp.data.slot_type_configurations[0].regex_configuration #=> Types::SlotTypeRegexConfiguration
    #   resp.data.slot_type_configurations[0].regex_configuration.pattern #=> String
    #
    def get_slot_type(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSlotTypeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSlotTypeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetSlotType
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::LimitExceededException, Errors::BadRequestException, Errors::InternalFailureException]),
        data_parser: Parsers::GetSlotType
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetSlotType,
        stubs: @stubs,
        params_class: Params::GetSlotTypeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_slot_type
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about all versions of a slot type.</p>
    #          <p>The <code>GetSlotTypeVersions</code> operation returns a
    #         <code>SlotTypeMetadata</code> object for each version of a slot type.
    #       For example, if a slot type has three numbered versions, the
    #         <code>GetSlotTypeVersions</code> operation returns four
    #         <code>SlotTypeMetadata</code> objects in the response, one for each
    #       numbered version and one for the <code>$LATEST</code> version. </p>
    #          <p>The <code>GetSlotTypeVersions</code> operation always returns at
    #       least one version, the <code>$LATEST</code> version.</p>
    #          <p>This operation requires permissions for the
    #         <code>lex:GetSlotTypeVersions</code> action.</p>
    #
    # @param [Hash] params
    #   See {Types::GetSlotTypeVersionsInput}.
    #
    # @option params [String] :name
    #   <p>The name of the slot type for which versions should be
    #         returned.</p>
    #
    # @option params [String] :next_token
    #   <p>A pagination token for fetching the next page of slot type
    #         versions. If the response to this call is truncated, Amazon Lex returns a
    #         pagination token in the response. To fetch the next page of versions,
    #         specify the pagination token in the next request. </p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of slot type versions to return in the response.
    #         The default is 10.</p>
    #
    # @return [Types::GetSlotTypeVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_slot_type_versions(
    #     name: 'name', # required
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSlotTypeVersionsOutput
    #   resp.data.slot_types #=> Array<SlotTypeMetadata>
    #   resp.data.slot_types[0] #=> Types::SlotTypeMetadata
    #   resp.data.slot_types[0].name #=> String
    #   resp.data.slot_types[0].description #=> String
    #   resp.data.slot_types[0].last_updated_date #=> Time
    #   resp.data.slot_types[0].created_date #=> Time
    #   resp.data.slot_types[0].version #=> String
    #   resp.data.next_token #=> String
    #
    def get_slot_type_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSlotTypeVersionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSlotTypeVersionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetSlotTypeVersions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::LimitExceededException, Errors::BadRequestException, Errors::InternalFailureException]),
        data_parser: Parsers::GetSlotTypeVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetSlotTypeVersions,
        stubs: @stubs,
        params_class: Params::GetSlotTypeVersionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_slot_type_versions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns slot type information as follows: </p>
    #          <ul>
    #             <li>
    #                <p>If you specify the <code>nameContains</code> field, returns the
    #             <code>$LATEST</code> version of all slot types that contain the
    #           specified string.</p>
    #             </li>
    #             <li>
    #                <p> If you don't specify the <code>nameContains</code> field,
    #           returns information about the <code>$LATEST</code> version of all slot
    #           types. </p>
    #             </li>
    #          </ul>
    #          <p> The operation requires permission for the
    #         <code>lex:GetSlotTypes</code> action. </p>
    #
    # @param [Hash] params
    #   See {Types::GetSlotTypesInput}.
    #
    # @option params [String] :next_token
    #   <p>A pagination token that fetches the next page of slot types. If the
    #         response to this API call is truncated, Amazon Lex returns a pagination token
    #         in the response. To fetch next page of slot types, specify the pagination
    #         token in the next request.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of slot types to return in the response. The
    #         default is 10.</p>
    #
    # @option params [String] :name_contains
    #   <p>Substring to match in slot type names. A slot type will be returned
    #         if any part of its name matches the substring. For example, "xyz" matches
    #         both "xyzabc" and "abcxyz."</p>
    #
    # @return [Types::GetSlotTypesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_slot_types(
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     name_contains: 'nameContains'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSlotTypesOutput
    #   resp.data.slot_types #=> Array<SlotTypeMetadata>
    #   resp.data.slot_types[0] #=> Types::SlotTypeMetadata
    #   resp.data.slot_types[0].name #=> String
    #   resp.data.slot_types[0].description #=> String
    #   resp.data.slot_types[0].last_updated_date #=> Time
    #   resp.data.slot_types[0].created_date #=> Time
    #   resp.data.slot_types[0].version #=> String
    #   resp.data.next_token #=> String
    #
    def get_slot_types(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSlotTypesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSlotTypesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetSlotTypes
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::LimitExceededException, Errors::BadRequestException, Errors::InternalFailureException]),
        data_parser: Parsers::GetSlotTypes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetSlotTypes,
        stubs: @stubs,
        params_class: Params::GetSlotTypesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_slot_types
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Use the <code>GetUtterancesView</code> operation to get information
    #       about the utterances that your users have made to your bot. You can use
    #       this list to tune the utterances that your bot responds to.</p>
    #          <p>For example, say that you have created a bot to order flowers.
    #       After your users have used your bot for a while, use the
    #         <code>GetUtterancesView</code> operation to see the requests that they
    #       have made and whether they have been successful. You might find that the
    #       utterance "I want flowers" is not being recognized. You could add this
    #       utterance to the <code>OrderFlowers</code> intent so that your bot
    #       recognizes that utterance.</p>
    #          <p>After you publish a new version of a bot, you can get information
    #       about the old version and the new so that you can compare the performance
    #       across the two versions. </p>
    #          <p>Utterance statistics are generated once a day. Data is available
    #       for the last 15 days. You can request information for up to 5 versions of
    #       your bot in each request. Amazon Lex returns the most frequent utterances
    #       received by the bot in the last 15 days. The response contains information
    #       about a maximum of 100 utterances for each version.</p>
    #          <p>If you set <code>childDirected</code> field to true when you
    #       created your bot, if you are using slot obfuscation with one or more
    #       slots, or if you opted out of participating in improving Amazon Lex, utterances
    #       are not available.</p>
    #          <p>This operation requires permissions for the
    #         <code>lex:GetUtterancesView</code> action.</p>
    #
    # @param [Hash] params
    #   See {Types::GetUtterancesViewInput}.
    #
    # @option params [String] :bot_name
    #   <p>The name of the bot for which utterance information should be
    #         returned.</p>
    #
    # @option params [Array<String>] :bot_versions
    #   <p>An array of bot versions for which utterance information should be
    #         returned. The limit is 5 versions per request.</p>
    #
    # @option params [String] :status_type
    #   <p>To return utterances that were recognized and handled, use
    #           <code>Detected</code>. To return utterances that were not recognized,
    #         use <code>Missed</code>.</p>
    #
    # @return [Types::GetUtterancesViewOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_utterances_view(
    #     bot_name: 'botName', # required
    #     bot_versions: [
    #       'member'
    #     ], # required
    #     status_type: 'Detected' # required - accepts ["Detected", "Missed"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetUtterancesViewOutput
    #   resp.data.bot_name #=> String
    #   resp.data.utterances #=> Array<UtteranceList>
    #   resp.data.utterances[0] #=> Types::UtteranceList
    #   resp.data.utterances[0].bot_version #=> String
    #   resp.data.utterances[0].utterances #=> Array<UtteranceData>
    #   resp.data.utterances[0].utterances[0] #=> Types::UtteranceData
    #   resp.data.utterances[0].utterances[0].utterance_string #=> String
    #   resp.data.utterances[0].utterances[0].count #=> Integer
    #   resp.data.utterances[0].utterances[0].distinct_users #=> Integer
    #   resp.data.utterances[0].utterances[0].first_uttered_date #=> Time
    #   resp.data.utterances[0].utterances[0].last_uttered_date #=> Time
    #
    def get_utterances_view(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetUtterancesViewInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetUtterancesViewInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetUtterancesView
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::BadRequestException, Errors::InternalFailureException]),
        data_parser: Parsers::GetUtterancesView
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetUtterancesView,
        stubs: @stubs,
        params_class: Params::GetUtterancesViewOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_utterances_view
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a list of tags associated with the specified resource. Only bots,
    #       bot aliases, and bot channels can have tags associated with them.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to get a list of tags
    #         for.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::LimitExceededException, Errors::BadRequestException, Errors::InternalFailureException]),
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

    # <p>Creates an Amazon Lex conversational bot or replaces an existing bot.
    #       When you create or update a bot you are only required to specify a name, a
    #       locale, and whether the bot is directed toward children under age 13. You
    #       can use this to add intents later, or to remove intents from an existing
    #       bot. When you create a bot with the minimum information, the bot is
    #       created or updated but Amazon Lex returns the <code></code> response
    #         <code>FAILED</code>. You can build the bot after you add one or more
    #       intents. For more information about Amazon Lex bots, see <a>how-it-works</a>. </p>
    #          <p>If you specify the name of an existing bot, the fields in the
    #       request replace the existing values in the <code>$LATEST</code> version of
    #       the bot. Amazon Lex removes any fields that you don't provide values for in the
    #       request, except for the <code>idleTTLInSeconds</code> and
    #         <code>privacySettings</code> fields, which are set to their default
    #       values. If you don't specify values for required fields, Amazon Lex throws an
    #       exception.</p>
    #
    #          <p>This operation requires permissions for the <code>lex:PutBot</code>
    #       action. For more information, see <a>security-iam</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::PutBotInput}.
    #
    # @option params [String] :name
    #   <p>The name of the bot. The name is <i>not</i> case
    #         sensitive. </p>
    #
    # @option params [String] :description
    #   <p>A description of the bot.</p>
    #
    # @option params [Array<Intent>] :intents
    #   <p>An array of <code>Intent</code> objects. Each intent represents a
    #         command that a user can express. For example, a pizza ordering bot might
    #         support an OrderPizza intent. For more information, see <a>how-it-works</a>.</p>
    #
    # @option params [Boolean] :enable_model_improvements
    #   <p>Set to <code>true</code> to enable access to natural language
    #         understanding improvements. </p>
    #            <p>When you set the <code>enableModelImprovements</code> parameter to
    #           <code>true</code> you can use the
    #           <code>nluIntentConfidenceThreshold</code> parameter to configure
    #         confidence scores. For more information, see <a href="https://docs.aws.amazon.com/lex/latest/dg/confidence-scores.html">Confidence Scores</a>.</p>
    #            <p>You can only set the <code>enableModelImprovements</code> parameter in
    #         certain Regions. If you set the parameter to <code>true</code>, your bot
    #         has access to accuracy improvements.</p>
    #            <p>The Regions where you can set the <code>enableModelImprovements</code>
    #         parameter to <code>true</code> are:</p>
    #            <ul>
    #               <li>
    #                  <p>US East (N. Virginia) (us-east-1)</p>
    #               </li>
    #               <li>
    #                  <p>US West (Oregon) (us-west-2)</p>
    #               </li>
    #               <li>
    #                  <p>Asia Pacific (Sydney) (ap-southeast-2)</p>
    #               </li>
    #               <li>
    #                  <p>EU (Ireland) (eu-west-1)</p>
    #               </li>
    #            </ul>
    #            <p>In other Regions, the <code>enableModelImprovements</code> parameter
    #         is set to <code>true</code> by default. In these Regions setting the
    #         parameter to <code>false</code> throws a <code>ValidationException</code>
    #         exception.</p>
    #
    # @option params [Float] :nlu_intent_confidence_threshold
    #   <p>Determines the threshold where Amazon Lex will insert the
    #           <code>AMAZON.FallbackIntent</code>,
    #           <code>AMAZON.KendraSearchIntent</code>, or both when returning
    #         alternative intents in a <a href="https://docs.aws.amazon.com/lex/latest/dg/API_runtime_PostContent.html">PostContent</a> or
    #           <a href="https://docs.aws.amazon.com/lex/latest/dg/API_runtime_PostText.html">PostText</a> response.
    #           <code>AMAZON.FallbackIntent</code> and
    #           <code>AMAZON.KendraSearchIntent</code> are only inserted if they are
    #         configured for the bot.</p>
    #            <p>You must set the <code>enableModelImprovements</code> parameter to
    #           <code>true</code> to use confidence scores in the following
    #         regions.</p>
    #            <ul>
    #               <li>
    #                  <p>US East (N. Virginia) (us-east-1)</p>
    #               </li>
    #               <li>
    #                  <p>US West (Oregon) (us-west-2)</p>
    #               </li>
    #               <li>
    #                  <p>Asia Pacific (Sydney) (ap-southeast-2)</p>
    #               </li>
    #               <li>
    #                  <p>EU (Ireland) (eu-west-1)</p>
    #               </li>
    #            </ul>
    #            <p>In other Regions, the <code>enableModelImprovements</code> parameter
    #         is set to <code>true</code> by default.</p>
    #            <p>For example, suppose a bot is configured with the confidence threshold
    #         of 0.80 and the <code>AMAZON.FallbackIntent</code>. Amazon Lex returns three
    #         alternative intents with the following confidence scores: IntentA (0.70),
    #         IntentB (0.60), IntentC (0.50). The response from the
    #           <code>PostText</code> operation would be:</p>
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
    # @option params [Prompt] :clarification_prompt
    #   <p>When Amazon Lex doesn't understand the user's intent, it uses this
    #         message to get clarification. To specify how many times Amazon Lex should
    #         repeat the clarification prompt, use the <code>maxAttempts</code> field.
    #         If Amazon Lex still doesn't understand, it sends the message in the
    #           <code>abortStatement</code> field. </p>
    #            <p>When you create a clarification prompt, make sure that it suggests
    #         the correct response from the user. for example, for a bot that orders
    #         pizza and drinks, you might create this clarification prompt: "What would
    #         you like to do? You can say 'Order a pizza' or 'Order a drink.'"</p>
    #            <p>If you have defined a fallback intent, it will be invoked if the
    #         clarification prompt is repeated the number of times defined in the
    #           <code>maxAttempts</code> field. For more information, see <a href="https://docs.aws.amazon.com/lex/latest/dg/built-in-intent-fallback.html">
    #           AMAZON.FallbackIntent</a>.</p>
    #            <p>If you don't define a clarification prompt, at runtime Amazon Lex will
    #         return a 400 Bad Request exception in three cases: </p>
    #            <ul>
    #               <li>
    #                  <p>Follow-up prompt - When the user responds to a follow-up prompt
    #             but does not provide an intent. For example, in response to a
    #             follow-up prompt that says "Would you like anything else today?" the
    #             user says "Yes." Amazon Lex will return a 400 Bad Request exception because
    #             it does not have a clarification prompt to send to the user to get an
    #             intent.</p>
    #               </li>
    #               <li>
    #                  <p>Lambda function - When using a Lambda function, you return an
    #               <code>ElicitIntent</code> dialog type. Since Amazon Lex does not have a
    #             clarification prompt to get an intent from the user, it returns a 400
    #             Bad Request exception.</p>
    #               </li>
    #               <li>
    #                  <p>PutSession operation - When using the <code>PutSession</code>
    #             operation, you send an <code>ElicitIntent</code> dialog type. Since
    #             Amazon Lex does not have a clarification prompt to get an intent from the
    #             user, it returns a 400 Bad Request exception.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Statement] :abort_statement
    #   <p>When Amazon Lex can't understand the user's input in context, it tries
    #         to elicit the information a few times. After that, Amazon Lex sends the message
    #         defined in <code>abortStatement</code> to the user, and then cancels the
    #         conversation. To set the number of retries, use the
    #           <code>valueElicitationPrompt</code> field for the slot type. </p>
    #            <p>For example, in a pizza ordering bot, Amazon Lex might ask a user "What
    #         type of crust would you like?" If the user's response is not one of the
    #         expected responses (for example, "thin crust, "deep dish," etc.), Amazon Lex
    #         tries to elicit a correct response a few more times. </p>
    #            <p>For example, in a pizza ordering application,
    #           <code>OrderPizza</code> might be one of the intents. This intent might
    #         require the <code>CrustType</code> slot. You specify the
    #           <code>valueElicitationPrompt</code> field when you create the
    #           <code>CrustType</code> slot.</p>
    #            <p>If you have defined a fallback intent the cancel statement will not be
    #         sent to the user, the fallback intent is used instead. For more
    #         information, see <a href="https://docs.aws.amazon.com/lex/latest/dg/built-in-intent-fallback.html">
    #           AMAZON.FallbackIntent</a>.</p>
    #
    # @option params [Integer] :idle_session_ttl_in_seconds
    #   <p>The maximum time in seconds that Amazon Lex retains the data gathered in
    #         a conversation.</p>
    #            <p>A user interaction session remains active for the amount of time
    #         specified. If no conversation occurs during this time, the session expires
    #         and Amazon Lex deletes any data provided before the timeout.</p>
    #            <p>For example, suppose that a user chooses the OrderPizza intent, but
    #         gets sidetracked halfway through placing an order. If the user doesn't
    #         complete the order within the specified time, Amazon Lex discards the slot
    #         information that it gathered, and the user must start over.</p>
    #            <p>If you don't include the <code>idleSessionTTLInSeconds</code>
    #         element in a <code>PutBot</code> operation request, Amazon Lex uses the default
    #         value. This is also true if the request replaces an existing
    #         bot.</p>
    #            <p>The default is 300 seconds (5 minutes).</p>
    #
    # @option params [String] :voice_id
    #   <p>The Amazon Polly voice ID that you want Amazon Lex to use for voice
    #         interactions with the user. The locale configured for the voice must match
    #         the locale of the bot. For more information, see <a href="https://docs.aws.amazon.com/polly/latest/dg/voicelist.html">Voices
    #           in Amazon Polly</a> in the <i>Amazon Polly Developer
    #           Guide</i>.</p>
    #
    # @option params [String] :checksum
    #   <p>Identifies a specific revision of the <code>$LATEST</code>
    #         version.</p>
    #            <p>When you create a new bot, leave the <code>checksum</code> field
    #         blank. If you specify a checksum you get a
    #           <code>BadRequestException</code> exception.</p>
    #            <p>When you want to update a bot, set the <code>checksum</code> field
    #         to the checksum of the most recent revision of the <code>$LATEST</code>
    #         version. If you don't specify the <code> checksum</code> field, or if the
    #         checksum does not match the <code>$LATEST</code> version, you get a
    #           <code>PreconditionFailedException</code> exception.</p>
    #
    # @option params [String] :process_behavior
    #   <p>If you set the <code>processBehavior</code> element to
    #           <code>BUILD</code>, Amazon Lex builds the bot so that it can be run. If you
    #         set the element to <code>SAVE</code> Amazon Lex saves the bot, but doesn't
    #         build it. </p>
    #            <p>If you don't specify this value, the default value is
    #           <code>BUILD</code>.</p>
    #
    # @option params [String] :locale
    #   <p> Specifies the target locale for the bot. Any intent used in the
    #         bot must be compatible with the locale of the bot. </p>
    #
    #            <p>The default is <code>en-US</code>.</p>
    #
    # @option params [Boolean] :child_directed
    #   <p>For each Amazon Lex bot created with the Amazon Lex Model Building Service,
    #         you must specify whether your use of Amazon Lex is related to a website,
    #         program, or other application that is directed or targeted, in whole or in
    #         part, to children under age 13 and subject to the Children's Online
    #         Privacy Protection Act (COPPA) by specifying <code>true</code> or
    #           <code>false</code> in the <code>childDirected</code> field. By
    #         specifying <code>true</code> in the <code>childDirected</code> field, you
    #         confirm that your use of Amazon Lex <b>is</b> related
    #         to a website, program, or other application that is directed or targeted,
    #         in whole or in part, to children under age 13 and subject to COPPA. By
    #         specifying <code>false</code> in the <code>childDirected</code> field, you
    #         confirm that your use of Amazon Lex <b>is not</b>
    #         related to a website, program, or other application that is directed or
    #         targeted, in whole or in part, to children under age 13 and subject to
    #         COPPA. You may not specify a default value for the
    #           <code>childDirected</code> field that does not accurately reflect
    #         whether your use of Amazon Lex is related to a website, program, or other
    #         application that is directed or targeted, in whole or in part, to children
    #         under age 13 and subject to COPPA.</p>
    #            <p>If your use of Amazon Lex relates to a website, program, or other
    #         application that is directed in whole or in part, to children under age
    #         13, you must obtain any required verifiable parental consent under COPPA.
    #         For information regarding the use of Amazon Lex in connection with websites,
    #         programs, or other applications that are directed or targeted, in whole or
    #         in part, to children under age 13, see the <a href="https://aws.amazon.com/lex/faqs#data-security">Amazon Lex FAQ.</a>
    #            </p>
    #
    # @option params [Boolean] :detect_sentiment
    #   <p>When set to <code>true</code> user utterances are sent to Amazon
    #         Comprehend for sentiment analysis. If you don't specify
    #           <code>detectSentiment</code>, the default is <code>false</code>.</p>
    #
    # @option params [Boolean] :create_version
    #   <p>When set to <code>true</code> a new numbered version of the bot is
    #         created. This is the same as calling the <code>CreateBotVersion</code>
    #         operation. If you don't specify <code>createVersion</code>, the default is
    #           <code>false</code>.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of tags to add to the bot. You can only add tags when you
    #         create a bot, you can't use the <code>PutBot</code> operation to update
    #         the tags on a bot. To update tags, use the <code>TagResource</code>
    #         operation.</p>
    #
    # @return [Types::PutBotOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_bot(
    #     name: 'name', # required
    #     description: 'description',
    #     intents: [
    #       {
    #         intent_name: 'intentName', # required
    #         intent_version: 'intentVersion' # required
    #       }
    #     ],
    #     enable_model_improvements: false,
    #     nlu_intent_confidence_threshold: 1.0,
    #     clarification_prompt: {
    #       messages: [
    #         {
    #           content_type: 'PlainText', # required - accepts ["PlainText", "SSML", "CustomPayload"]
    #           content: 'content', # required
    #           group_number: 1
    #         }
    #       ], # required
    #       max_attempts: 1, # required
    #       response_card: 'responseCard'
    #     },
    #     abort_statement: {
    #       response_card: 'responseCard'
    #     },
    #     idle_session_ttl_in_seconds: 1,
    #     voice_id: 'voiceId',
    #     checksum: 'checksum',
    #     process_behavior: 'SAVE', # accepts ["SAVE", "BUILD"]
    #     locale: 'de-DE', # required - accepts ["de-DE", "en-AU", "en-GB", "en-IN", "en-US", "es-419", "es-ES", "es-US", "fr-FR", "fr-CA", "it-IT", "ja-JP", "ko-KR"]
    #     child_directed: false, # required
    #     detect_sentiment: false,
    #     create_version: false,
    #     tags: [
    #       {
    #         key: 'key', # required
    #         value: 'value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutBotOutput
    #   resp.data.name #=> String
    #   resp.data.description #=> String
    #   resp.data.intents #=> Array<Intent>
    #   resp.data.intents[0] #=> Types::Intent
    #   resp.data.intents[0].intent_name #=> String
    #   resp.data.intents[0].intent_version #=> String
    #   resp.data.enable_model_improvements #=> Boolean
    #   resp.data.nlu_intent_confidence_threshold #=> Float
    #   resp.data.clarification_prompt #=> Types::Prompt
    #   resp.data.clarification_prompt.messages #=> Array<Message>
    #   resp.data.clarification_prompt.messages[0] #=> Types::Message
    #   resp.data.clarification_prompt.messages[0].content_type #=> String, one of ["PlainText", "SSML", "CustomPayload"]
    #   resp.data.clarification_prompt.messages[0].content #=> String
    #   resp.data.clarification_prompt.messages[0].group_number #=> Integer
    #   resp.data.clarification_prompt.max_attempts #=> Integer
    #   resp.data.clarification_prompt.response_card #=> String
    #   resp.data.abort_statement #=> Types::Statement
    #   resp.data.abort_statement.messages #=> Array<Message>
    #   resp.data.abort_statement.response_card #=> String
    #   resp.data.status #=> String, one of ["BUILDING", "READY", "READY_BASIC_TESTING", "FAILED", "NOT_BUILT"]
    #   resp.data.failure_reason #=> String
    #   resp.data.last_updated_date #=> Time
    #   resp.data.created_date #=> Time
    #   resp.data.idle_session_ttl_in_seconds #=> Integer
    #   resp.data.voice_id #=> String
    #   resp.data.checksum #=> String
    #   resp.data.version #=> String
    #   resp.data.locale #=> String, one of ["de-DE", "en-AU", "en-GB", "en-IN", "en-US", "es-419", "es-ES", "es-US", "fr-FR", "fr-CA", "it-IT", "ja-JP", "ko-KR"]
    #   resp.data.child_directed #=> Boolean
    #   resp.data.create_version #=> Boolean
    #   resp.data.detect_sentiment #=> Boolean
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #
    def put_bot(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutBotInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutBotInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutBot
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::LimitExceededException, Errors::BadRequestException, Errors::PreconditionFailedException, Errors::InternalFailureException]),
        data_parser: Parsers::PutBot
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutBot,
        stubs: @stubs,
        params_class: Params::PutBotOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_bot
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an alias for the specified version of the bot or replaces
    #       an alias for the specified bot. To change the version of the bot that the
    #       alias points to, replace the alias. For more information about aliases,
    #       see <a>versioning-aliases</a>.</p>
    #          <p>This operation requires permissions for the
    #         <code>lex:PutBotAlias</code> action. </p>
    #
    # @param [Hash] params
    #   See {Types::PutBotAliasInput}.
    #
    # @option params [String] :name
    #   <p>The name of the alias. The name is <i>not</i> case
    #         sensitive.</p>
    #
    # @option params [String] :description
    #   <p>A description of the alias.</p>
    #
    # @option params [String] :bot_version
    #   <p>The version of the bot.</p>
    #
    # @option params [String] :bot_name
    #   <p>The name of the bot.</p>
    #
    # @option params [String] :checksum
    #   <p>Identifies a specific revision of the <code>$LATEST</code>
    #         version.</p>
    #            <p>When you create a new bot alias, leave the <code>checksum</code>
    #         field blank. If you specify a checksum you get a
    #           <code>BadRequestException</code> exception.</p>
    #            <p>When you want to update a bot alias, set the <code>checksum</code>
    #         field to the checksum of the most recent revision of the
    #           <code>$LATEST</code> version. If you don't specify the <code>
    #           checksum</code> field, or if the checksum does not match the
    #           <code>$LATEST</code> version, you get a
    #           <code>PreconditionFailedException</code> exception.</p>
    #
    # @option params [ConversationLogsRequest] :conversation_logs
    #   <p>Settings for conversation logs for the alias.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of tags to add to the bot alias. You can only add tags when you
    #         create an alias, you can't use the <code>PutBotAlias</code> operation to
    #         update the tags on a bot alias. To update tags, use the
    #           <code>TagResource</code> operation.</p>
    #
    # @return [Types::PutBotAliasOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_bot_alias(
    #     name: 'name', # required
    #     description: 'description',
    #     bot_version: 'botVersion', # required
    #     bot_name: 'botName', # required
    #     checksum: 'checksum',
    #     conversation_logs: {
    #       log_settings: [
    #         {
    #           log_type: 'AUDIO', # required - accepts ["AUDIO", "TEXT"]
    #           destination: 'CLOUDWATCH_LOGS', # required - accepts ["CLOUDWATCH_LOGS", "S3"]
    #           kms_key_arn: 'kmsKeyArn',
    #           resource_arn: 'resourceArn' # required
    #         }
    #       ], # required
    #       iam_role_arn: 'iamRoleArn' # required
    #     },
    #     tags: [
    #       {
    #         key: 'key', # required
    #         value: 'value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutBotAliasOutput
    #   resp.data.name #=> String
    #   resp.data.description #=> String
    #   resp.data.bot_version #=> String
    #   resp.data.bot_name #=> String
    #   resp.data.last_updated_date #=> Time
    #   resp.data.created_date #=> Time
    #   resp.data.checksum #=> String
    #   resp.data.conversation_logs #=> Types::ConversationLogsResponse
    #   resp.data.conversation_logs.log_settings #=> Array<LogSettingsResponse>
    #   resp.data.conversation_logs.log_settings[0] #=> Types::LogSettingsResponse
    #   resp.data.conversation_logs.log_settings[0].log_type #=> String, one of ["AUDIO", "TEXT"]
    #   resp.data.conversation_logs.log_settings[0].destination #=> String, one of ["CLOUDWATCH_LOGS", "S3"]
    #   resp.data.conversation_logs.log_settings[0].kms_key_arn #=> String
    #   resp.data.conversation_logs.log_settings[0].resource_arn #=> String
    #   resp.data.conversation_logs.log_settings[0].resource_prefix #=> String
    #   resp.data.conversation_logs.iam_role_arn #=> String
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #
    def put_bot_alias(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutBotAliasInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutBotAliasInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutBotAlias
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::LimitExceededException, Errors::BadRequestException, Errors::PreconditionFailedException, Errors::InternalFailureException]),
        data_parser: Parsers::PutBotAlias
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutBotAlias,
        stubs: @stubs,
        params_class: Params::PutBotAliasOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_bot_alias
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an intent or replaces an existing intent.</p>
    #          <p>To define the interaction between the user and your bot, you use
    #       one or more intents. For a pizza ordering bot, for example, you would
    #       create an <code>OrderPizza</code> intent. </p>
    #          <p>To create an intent or replace an existing intent, you must provide
    #       the following:</p>
    #          <ul>
    #             <li>
    #                <p>Intent name. For example, <code>OrderPizza</code>.</p>
    #             </li>
    #             <li>
    #                <p>Sample utterances. For example, "Can I order a pizza, please."
    #           and "I want to order a pizza."</p>
    #             </li>
    #             <li>
    #                <p>Information to be gathered. You specify slot types for the
    #           information that your bot will request from the user. You can specify
    #           standard slot types, such as a date or a time, or custom slot types
    #           such as the size and crust of a pizza.</p>
    #             </li>
    #             <li>
    #                <p>How the intent will be fulfilled. You can provide a Lambda
    #           function or configure the intent to return the intent information to
    #           the client application. If you use a Lambda function, when all of the
    #           intent information is available, Amazon Lex invokes your Lambda function.
    #           If you configure your intent to return the intent information to the
    #           client application. </p>
    #             </li>
    #          </ul>
    #          <p>You can specify other optional information in the request, such
    #       as:</p>
    #
    #          <ul>
    #             <li>
    #                <p>A confirmation prompt to ask the user to confirm an intent. For
    #           example, "Shall I order your pizza?"</p>
    #             </li>
    #             <li>
    #                <p>A conclusion statement to send to the user after the intent has
    #           been fulfilled. For example, "I placed your pizza order."</p>
    #             </li>
    #             <li>
    #                <p>A follow-up prompt that asks the user for additional activity.
    #           For example, asking "Do you want to order a drink with your
    #           pizza?"</p>
    #             </li>
    #          </ul>
    #          <p>If you specify an existing intent name to update the intent, Amazon Lex
    #       replaces the values in the <code>$LATEST</code> version of the intent with
    #       the values in the request. Amazon Lex removes fields that you don't provide in
    #       the request. If you don't specify the required fields, Amazon Lex throws an
    #       exception. When you update the <code>$LATEST</code> version of an intent,
    #       the <code>status</code> field of any bot that uses the
    #         <code>$LATEST</code> version of the intent is set to
    #         <code>NOT_BUILT</code>.</p>
    #          <p>For more information, see <a>how-it-works</a>.</p>
    #          <p>This operation requires permissions for the
    #         <code>lex:PutIntent</code> action.</p>
    #
    # @param [Hash] params
    #   See {Types::PutIntentInput}.
    #
    # @option params [String] :name
    #   <p>The name of the intent. The name is <i>not</i> case
    #         sensitive. </p>
    #            <p>The name can't match a built-in intent name, or a built-in intent
    #         name with "AMAZON." removed. For example, because there is a built-in
    #         intent called <code>AMAZON.HelpIntent</code>, you can't create a custom
    #         intent called <code>HelpIntent</code>.</p>
    #            <p>For a list of built-in intents, see <a href="https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents">Standard Built-in Intents</a> in the <i>Alexa Skills
    #           Kit</i>.</p>
    #
    # @option params [String] :description
    #   <p>A description of the intent.</p>
    #
    # @option params [Array<Slot>] :slots
    #   <p>An array of intent slots. At runtime, Amazon Lex elicits required slot
    #         values from the user using prompts defined in the slots. For more
    #         information, see <a>how-it-works</a>. </p>
    #
    # @option params [Array<String>] :sample_utterances
    #   <p>An array of utterances (strings) that a user might say to signal
    #         the intent. For example, "I want {PizzaSize} pizza", "Order {Quantity}
    #         {PizzaSize} pizzas". </p>
    #
    #            <p>In each utterance, a slot name is enclosed in curly braces.
    #       </p>
    #
    # @option params [Prompt] :confirmation_prompt
    #   <p>Prompts the user to confirm the intent. This question should have a
    #         yes or no answer.</p>
    #            <p>Amazon Lex uses this prompt to ensure that the user acknowledges that
    #         the intent is ready for fulfillment. For example, with the
    #           <code>OrderPizza</code> intent, you might want to confirm that the order
    #         is correct before placing it. For other intents, such as intents that
    #         simply respond to user questions, you might not need to ask the user for
    #         confirmation before providing the information. </p>
    #            <note>
    #               <p>You you must provide both the <code>rejectionStatement</code> and
    #           the <code>confirmationPrompt</code>, or neither.</p>
    #            </note>
    #
    # @option params [Statement] :rejection_statement
    #   <p>When the user answers "no" to the question defined in
    #           <code>confirmationPrompt</code>, Amazon Lex responds with this statement to
    #         acknowledge that the intent was canceled. </p>
    #            <note>
    #               <p>You must provide both the <code>rejectionStatement</code> and the
    #             <code>confirmationPrompt</code>, or neither.</p>
    #            </note>
    #
    # @option params [FollowUpPrompt] :follow_up_prompt
    #   <p>Amazon Lex uses this prompt to solicit additional activity after
    #         fulfilling an intent. For example, after the <code>OrderPizza</code>
    #         intent is fulfilled, you might prompt the user to order a drink.</p>
    #            <p>The action that Amazon Lex takes depends on the user's response, as
    #         follows:</p>
    #            <ul>
    #               <li>
    #                  <p>If the user says "Yes" it responds with the clarification
    #             prompt that is configured for the bot.</p>
    #               </li>
    #               <li>
    #                  <p>if the user says "Yes" and continues with an utterance that
    #             triggers an intent it starts a conversation for the intent.</p>
    #               </li>
    #               <li>
    #                  <p>If the user says "No" it responds with the rejection statement
    #             configured for the the follow-up prompt.</p>
    #               </li>
    #               <li>
    #                  <p>If it doesn't recognize the utterance it repeats the follow-up
    #             prompt again.</p>
    #               </li>
    #            </ul>
    #
    #            <p>The <code>followUpPrompt</code> field and the
    #           <code>conclusionStatement</code> field are mutually exclusive. You can
    #         specify only one. </p>
    #
    # @option params [Statement] :conclusion_statement
    #   <p> The statement that you want Amazon Lex to convey to the user after the
    #         intent is successfully fulfilled by the Lambda function. </p>
    #            <p>This element is relevant only if you provide a Lambda function in
    #         the <code>fulfillmentActivity</code>. If you return the intent to the
    #         client application, you can't specify this element.</p>
    #            <note>
    #               <p>The <code>followUpPrompt</code> and
    #             <code>conclusionStatement</code> are mutually exclusive. You can
    #           specify only one.</p>
    #            </note>
    #
    # @option params [CodeHook] :dialog_code_hook
    #   <p> Specifies a Lambda function to invoke for each user input. You can
    #         invoke this Lambda function to personalize user interaction. </p>
    #            <p>For example, suppose your bot determines that the user is John.
    #         Your Lambda function might retrieve John's information from a backend
    #         database and prepopulate some of the values. For example, if you find that
    #         John is gluten intolerant, you might set the corresponding intent slot,
    #           <code>GlutenIntolerant</code>, to true. You might find John's phone
    #         number and set the corresponding session attribute. </p>
    #
    # @option params [FulfillmentActivity] :fulfillment_activity
    #   <p>Required. Describes how the intent is fulfilled. For example, after
    #         a user provides all of the information for a pizza order,
    #           <code>fulfillmentActivity</code> defines how the bot places an order
    #         with a local pizza store. </p>
    #            <p> You might configure Amazon Lex to return all of the intent information
    #         to the client application, or direct it to invoke a Lambda function that
    #         can process the intent (for example, place an order with a pizzeria).
    #       </p>
    #
    # @option params [String] :parent_intent_signature
    #   <p>A unique identifier for the built-in intent to base this intent on.
    #         To find the signature for an intent, see <a href="https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents">Standard Built-in Intents</a> in the <i>Alexa Skills
    #           Kit</i>.</p>
    #
    # @option params [String] :checksum
    #   <p>Identifies a specific revision of the <code>$LATEST</code>
    #         version.</p>
    #            <p>When you create a new intent, leave the <code>checksum</code> field
    #         blank. If you specify a checksum you get a
    #           <code>BadRequestException</code> exception.</p>
    #            <p>When you want to update a intent, set the <code>checksum</code>
    #         field to the checksum of the most recent revision of the
    #           <code>$LATEST</code> version. If you don't specify the <code>
    #           checksum</code> field, or if the checksum does not match the
    #           <code>$LATEST</code> version, you get a
    #           <code>PreconditionFailedException</code> exception.</p>
    #
    # @option params [Boolean] :create_version
    #   <p>When set to <code>true</code> a new numbered version of the intent
    #         is created. This is the same as calling the
    #           <code>CreateIntentVersion</code> operation. If you do not specify
    #           <code>createVersion</code>, the default is <code>false</code>.</p>
    #
    # @option params [KendraConfiguration] :kendra_configuration
    #   <p>Configuration information required to use the
    #           <code>AMAZON.KendraSearchIntent</code> intent to connect to an Amazon
    #         Kendra index. For more information, see <a href="http://docs.aws.amazon.com/lex/latest/dg/built-in-intent-kendra-search.html">
    #           AMAZON.KendraSearchIntent</a>.</p>
    #
    # @option params [Array<InputContext>] :input_contexts
    #   <p>An array of <code>InputContext</code> objects that lists the contexts
    #         that must be active for Amazon Lex to choose the intent in a conversation with
    #         the user.</p>
    #
    # @option params [Array<OutputContext>] :output_contexts
    #   <p>An array of <code>OutputContext</code> objects that lists the contexts
    #         that the intent activates when the intent is fulfilled.</p>
    #
    # @return [Types::PutIntentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_intent(
    #     name: 'name', # required
    #     description: 'description',
    #     slots: [
    #       {
    #         name: 'name', # required
    #         description: 'description',
    #         slot_constraint: 'Required', # required - accepts ["Required", "Optional"]
    #         slot_type: 'slotType',
    #         slot_type_version: 'slotTypeVersion',
    #         value_elicitation_prompt: {
    #           messages: [
    #             {
    #               content_type: 'PlainText', # required - accepts ["PlainText", "SSML", "CustomPayload"]
    #               content: 'content', # required
    #               group_number: 1
    #             }
    #           ], # required
    #           max_attempts: 1, # required
    #           response_card: 'responseCard'
    #         },
    #         priority: 1,
    #         sample_utterances: [
    #           'member'
    #         ],
    #         response_card: 'responseCard',
    #         obfuscation_setting: 'NONE', # accepts ["NONE", "DEFAULT_OBFUSCATION"]
    #         default_value_spec: {
    #           default_value_list: [
    #             {
    #               default_value: 'defaultValue' # required
    #             }
    #           ] # required
    #         }
    #       }
    #     ],
    #     sample_utterances: [
    #       'member'
    #     ],
    #     rejection_statement: {
    #       response_card: 'responseCard'
    #     },
    #     follow_up_prompt: {
    #     },
    #     dialog_code_hook: {
    #       uri: 'uri', # required
    #       message_version: 'messageVersion' # required
    #     },
    #     fulfillment_activity: {
    #       type: 'ReturnIntent', # required - accepts ["ReturnIntent", "CodeHook"]
    #     },
    #     parent_intent_signature: 'parentIntentSignature',
    #     checksum: 'checksum',
    #     create_version: false,
    #     kendra_configuration: {
    #       kendra_index: 'kendraIndex', # required
    #       query_filter_string: 'queryFilterString',
    #       role: 'role' # required
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
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutIntentOutput
    #   resp.data.name #=> String
    #   resp.data.description #=> String
    #   resp.data.slots #=> Array<Slot>
    #   resp.data.slots[0] #=> Types::Slot
    #   resp.data.slots[0].name #=> String
    #   resp.data.slots[0].description #=> String
    #   resp.data.slots[0].slot_constraint #=> String, one of ["Required", "Optional"]
    #   resp.data.slots[0].slot_type #=> String
    #   resp.data.slots[0].slot_type_version #=> String
    #   resp.data.slots[0].value_elicitation_prompt #=> Types::Prompt
    #   resp.data.slots[0].value_elicitation_prompt.messages #=> Array<Message>
    #   resp.data.slots[0].value_elicitation_prompt.messages[0] #=> Types::Message
    #   resp.data.slots[0].value_elicitation_prompt.messages[0].content_type #=> String, one of ["PlainText", "SSML", "CustomPayload"]
    #   resp.data.slots[0].value_elicitation_prompt.messages[0].content #=> String
    #   resp.data.slots[0].value_elicitation_prompt.messages[0].group_number #=> Integer
    #   resp.data.slots[0].value_elicitation_prompt.max_attempts #=> Integer
    #   resp.data.slots[0].value_elicitation_prompt.response_card #=> String
    #   resp.data.slots[0].priority #=> Integer
    #   resp.data.slots[0].sample_utterances #=> Array<String>
    #   resp.data.slots[0].sample_utterances[0] #=> String
    #   resp.data.slots[0].response_card #=> String
    #   resp.data.slots[0].obfuscation_setting #=> String, one of ["NONE", "DEFAULT_OBFUSCATION"]
    #   resp.data.slots[0].default_value_spec #=> Types::SlotDefaultValueSpec
    #   resp.data.slots[0].default_value_spec.default_value_list #=> Array<SlotDefaultValue>
    #   resp.data.slots[0].default_value_spec.default_value_list[0] #=> Types::SlotDefaultValue
    #   resp.data.slots[0].default_value_spec.default_value_list[0].default_value #=> String
    #   resp.data.sample_utterances #=> Array<String>
    #   resp.data.sample_utterances[0] #=> String
    #   resp.data.confirmation_prompt #=> Types::Prompt
    #   resp.data.rejection_statement #=> Types::Statement
    #   resp.data.rejection_statement.messages #=> Array<Message>
    #   resp.data.rejection_statement.response_card #=> String
    #   resp.data.follow_up_prompt #=> Types::FollowUpPrompt
    #   resp.data.follow_up_prompt.prompt #=> Types::Prompt
    #   resp.data.follow_up_prompt.rejection_statement #=> Types::Statement
    #   resp.data.conclusion_statement #=> Types::Statement
    #   resp.data.dialog_code_hook #=> Types::CodeHook
    #   resp.data.dialog_code_hook.uri #=> String
    #   resp.data.dialog_code_hook.message_version #=> String
    #   resp.data.fulfillment_activity #=> Types::FulfillmentActivity
    #   resp.data.fulfillment_activity.type #=> String, one of ["ReturnIntent", "CodeHook"]
    #   resp.data.fulfillment_activity.code_hook #=> Types::CodeHook
    #   resp.data.parent_intent_signature #=> String
    #   resp.data.last_updated_date #=> Time
    #   resp.data.created_date #=> Time
    #   resp.data.version #=> String
    #   resp.data.checksum #=> String
    #   resp.data.create_version #=> Boolean
    #   resp.data.kendra_configuration #=> Types::KendraConfiguration
    #   resp.data.kendra_configuration.kendra_index #=> String
    #   resp.data.kendra_configuration.query_filter_string #=> String
    #   resp.data.kendra_configuration.role #=> String
    #   resp.data.input_contexts #=> Array<InputContext>
    #   resp.data.input_contexts[0] #=> Types::InputContext
    #   resp.data.input_contexts[0].name #=> String
    #   resp.data.output_contexts #=> Array<OutputContext>
    #   resp.data.output_contexts[0] #=> Types::OutputContext
    #   resp.data.output_contexts[0].name #=> String
    #   resp.data.output_contexts[0].time_to_live_in_seconds #=> Integer
    #   resp.data.output_contexts[0].turns_to_live #=> Integer
    #
    def put_intent(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutIntentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutIntentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutIntent
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::LimitExceededException, Errors::BadRequestException, Errors::PreconditionFailedException, Errors::InternalFailureException]),
        data_parser: Parsers::PutIntent
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutIntent,
        stubs: @stubs,
        params_class: Params::PutIntentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_intent
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a custom slot type or replaces an existing custom slot
    #       type.</p>
    #          <p>To create a custom slot type, specify a name for the slot type and
    #       a set of enumeration values, which are the values that a slot of this type
    #       can assume. For more information, see <a>how-it-works</a>.</p>
    #          <p>If you specify the name of an existing slot type, the fields in the
    #       request replace the existing values in the <code>$LATEST</code> version of
    #       the slot type. Amazon Lex removes the fields that you don't provide in the
    #       request. If you don't specify required fields, Amazon Lex throws an exception.
    #       When you update the <code>$LATEST</code> version of a slot type, if a bot
    #       uses the <code>$LATEST</code> version of an intent that contains the slot
    #       type, the bot's <code>status</code> field is set to
    #       <code>NOT_BUILT</code>.</p>
    #
    #          <p>This operation requires permissions for the
    #         <code>lex:PutSlotType</code> action.</p>
    #
    # @param [Hash] params
    #   See {Types::PutSlotTypeInput}.
    #
    # @option params [String] :name
    #   <p>The name of the slot type. The name is <i>not</i>
    #         case sensitive. </p>
    #            <p>The name can't match a built-in slot type name, or a built-in slot
    #         type name with "AMAZON." removed. For example, because there is a built-in
    #         slot type called <code>AMAZON.DATE</code>, you can't create a custom slot
    #         type called <code>DATE</code>.</p>
    #            <p>For a list of built-in slot types, see <a href="https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/slot-type-reference">Slot Type Reference</a> in the <i>Alexa Skills
    #           Kit</i>.</p>
    #
    # @option params [String] :description
    #   <p>A description of the slot type.</p>
    #
    # @option params [Array<EnumerationValue>] :enumeration_values
    #   <p>A list of <code>EnumerationValue</code> objects that defines the
    #         values that the slot type can take. Each value can have a list of
    #           <code>synonyms</code>, which are additional values that help train the
    #         machine learning model about the values that it resolves for a slot. </p>
    #            <p>A regular expression slot type doesn't require enumeration values.
    #         All other slot types require a list of enumeration values.</p>
    #            <p>When Amazon Lex resolves a slot value, it generates a resolution list
    #         that contains up to five possible values for the slot. If you are using a
    #         Lambda function, this resolution list is passed to the function. If you
    #         are not using a Lambda function you can choose to return the value that
    #         the user entered or the first value in the resolution list as the slot
    #         value. The <code>valueSelectionStrategy</code> field indicates the option
    #         to use. </p>
    #
    # @option params [String] :checksum
    #   <p>Identifies a specific revision of the <code>$LATEST</code>
    #         version.</p>
    #            <p>When you create a new slot type, leave the <code>checksum</code>
    #         field blank. If you specify a checksum you get a
    #           <code>BadRequestException</code> exception.</p>
    #            <p>When you want to update a slot type, set the <code>checksum</code>
    #         field to the checksum of the most recent revision of the
    #           <code>$LATEST</code> version. If you don't specify the <code>
    #           checksum</code> field, or if the checksum does not match the
    #           <code>$LATEST</code> version, you get a
    #           <code>PreconditionFailedException</code> exception.</p>
    #
    # @option params [String] :value_selection_strategy
    #   <p>Determines the slot resolution strategy that Amazon Lex uses to return
    #         slot type values. The field can be set to one of the following
    #         values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ORIGINAL_VALUE</code> - Returns the value entered by the
    #             user, if the user value is similar to the slot value.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TOP_RESOLUTION</code> - If there is a resolution list for
    #             the slot, return the first value in the resolution list as the slot
    #             type value. If there is no resolution list, null is
    #             returned.</p>
    #               </li>
    #            </ul>
    #            <p>If you don't specify the <code>valueSelectionStrategy</code>, the
    #         default is <code>ORIGINAL_VALUE</code>.</p>
    #
    # @option params [Boolean] :create_version
    #   <p>When set to <code>true</code> a new numbered version of the slot
    #         type is created. This is the same as calling the
    #           <code>CreateSlotTypeVersion</code> operation. If you do not specify
    #           <code>createVersion</code>, the default is <code>false</code>.</p>
    #
    # @option params [String] :parent_slot_type_signature
    #   <p>The built-in slot type used as the parent of the slot type. When you
    #         define a parent slot type, the new slot type has all of the same
    #         configuration as the parent.</p>
    #            <p>Only <code>AMAZON.AlphaNumeric</code> is supported.</p>
    #
    # @option params [Array<SlotTypeConfiguration>] :slot_type_configurations
    #   <p>Configuration information that extends the parent built-in slot type.
    #         The configuration is added to the settings for the parent slot
    #         type.</p>
    #
    # @return [Types::PutSlotTypeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_slot_type(
    #     name: 'name', # required
    #     description: 'description',
    #     enumeration_values: [
    #       {
    #         value: 'value', # required
    #         synonyms: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     checksum: 'checksum',
    #     value_selection_strategy: 'ORIGINAL_VALUE', # accepts ["ORIGINAL_VALUE", "TOP_RESOLUTION"]
    #     create_version: false,
    #     parent_slot_type_signature: 'parentSlotTypeSignature',
    #     slot_type_configurations: [
    #       {
    #         regex_configuration: {
    #           pattern: 'pattern' # required
    #         }
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutSlotTypeOutput
    #   resp.data.name #=> String
    #   resp.data.description #=> String
    #   resp.data.enumeration_values #=> Array<EnumerationValue>
    #   resp.data.enumeration_values[0] #=> Types::EnumerationValue
    #   resp.data.enumeration_values[0].value #=> String
    #   resp.data.enumeration_values[0].synonyms #=> Array<String>
    #   resp.data.enumeration_values[0].synonyms[0] #=> String
    #   resp.data.last_updated_date #=> Time
    #   resp.data.created_date #=> Time
    #   resp.data.version #=> String
    #   resp.data.checksum #=> String
    #   resp.data.value_selection_strategy #=> String, one of ["ORIGINAL_VALUE", "TOP_RESOLUTION"]
    #   resp.data.create_version #=> Boolean
    #   resp.data.parent_slot_type_signature #=> String
    #   resp.data.slot_type_configurations #=> Array<SlotTypeConfiguration>
    #   resp.data.slot_type_configurations[0] #=> Types::SlotTypeConfiguration
    #   resp.data.slot_type_configurations[0].regex_configuration #=> Types::SlotTypeRegexConfiguration
    #   resp.data.slot_type_configurations[0].regex_configuration.pattern #=> String
    #
    def put_slot_type(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutSlotTypeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutSlotTypeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutSlotType
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::LimitExceededException, Errors::BadRequestException, Errors::PreconditionFailedException, Errors::InternalFailureException]),
        data_parser: Parsers::PutSlotType
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutSlotType,
        stubs: @stubs,
        params_class: Params::PutSlotTypeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_slot_type
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts a job to import a resource to Amazon Lex.</p>
    #
    # @param [Hash] params
    #   See {Types::StartImportInput}.
    #
    # @option params [String] :payload
    #   <p>A zip archive in binary format. The archive should contain one file, a
    #         JSON file containing the resource to import. The resource should match the
    #         type specified in the <code>resourceType</code> field.</p>
    #
    # @option params [String] :resource_type
    #   <p>Specifies the type of resource to export. Each resource also
    #         exports any resources that it depends on. </p>
    #            <ul>
    #               <li>
    #                  <p>A bot exports dependent intents.</p>
    #               </li>
    #               <li>
    #                  <p>An intent exports dependent slot types.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :merge_strategy
    #   <p>Specifies the action that the <code>StartImport</code> operation
    #         should take when there is an existing resource with the same
    #         name.</p>
    #            <ul>
    #               <li>
    #                  <p>FAIL_ON_CONFLICT - The import operation is stopped on the first
    #             conflict between a resource in the import file and an existing
    #             resource. The name of the resource causing the conflict is in the
    #               <code>failureReason</code> field of the response to the
    #               <code>GetImport</code> operation.</p>
    #                  <p>OVERWRITE_LATEST - The import operation proceeds even if there
    #             is a conflict with an existing resource. The $LASTEST version of the
    #             existing resource is overwritten with the data from the import
    #             file.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of tags to add to the imported bot. You can only add tags when
    #         you import a bot, you can't add tags to an intent or slot type.</p>
    #
    # @return [Types::StartImportOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_import(
    #     payload: 'payload', # required
    #     resource_type: 'BOT', # required - accepts ["BOT", "INTENT", "SLOT_TYPE"]
    #     merge_strategy: 'OVERWRITE_LATEST', # required - accepts ["OVERWRITE_LATEST", "FAIL_ON_CONFLICT"]
    #     tags: [
    #       {
    #         key: 'key', # required
    #         value: 'value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartImportOutput
    #   resp.data.name #=> String
    #   resp.data.resource_type #=> String, one of ["BOT", "INTENT", "SLOT_TYPE"]
    #   resp.data.merge_strategy #=> String, one of ["OVERWRITE_LATEST", "FAIL_ON_CONFLICT"]
    #   resp.data.import_id #=> String
    #   resp.data.import_status #=> String, one of ["IN_PROGRESS", "COMPLETE", "FAILED"]
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #   resp.data.created_date #=> Time
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::LimitExceededException, Errors::BadRequestException, Errors::InternalFailureException]),
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

    # <p>Starts migrating a bot from Amazon Lex V1 to Amazon Lex V2. Migrate your bot when
    #       you want to take advantage of the new features of Amazon Lex V2.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/lex/latest/dg/migrate.html">Migrating a bot</a> in the <i>Amazon Lex
    #         developer guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::StartMigrationInput}.
    #
    # @option params [String] :v1_bot_name
    #   <p>The name of the Amazon Lex V1 bot that you are migrating to Amazon Lex V2.</p>
    #
    # @option params [String] :v1_bot_version
    #   <p>The version of the bot to migrate to Amazon Lex V2. You can migrate the
    #           <code>$LATEST</code> version as well as any numbered version.</p>
    #
    # @option params [String] :v2_bot_name
    #   <p>The name of the Amazon Lex V2 bot that you are migrating the Amazon Lex V1 bot to. </p>
    #            <ul>
    #               <li>
    #                  <p>If the Amazon Lex V2 bot doesn't exist, you must use the
    #               <code>CREATE_NEW</code> migration strategy.</p>
    #               </li>
    #               <li>
    #                  <p>If the Amazon Lex V2 bot exists, you must use the
    #               <code>UPDATE_EXISTING</code> migration strategy to change the
    #             contents of the Amazon Lex V2 bot.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :v2_bot_role
    #   <p>The IAM role that Amazon Lex uses to run the Amazon Lex V2 bot.</p>
    #
    # @option params [String] :migration_strategy
    #   <p>The strategy used to conduct the migration.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATE_NEW</code> - Creates a new Amazon Lex V2 bot and migrates
    #             the Amazon Lex V1 bot to the new bot.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATE_EXISTING</code> - Overwrites the existing Amazon Lex V2 bot
    #             metadata and the locale being migrated. It doesn't change any other
    #             locales in the Amazon Lex V2 bot. If the locale doesn't exist, a new locale
    #             is created in the Amazon Lex V2 bot.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::StartMigrationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_migration(
    #     v1_bot_name: 'v1BotName', # required
    #     v1_bot_version: 'v1BotVersion', # required
    #     v2_bot_name: 'v2BotName', # required
    #     v2_bot_role: 'v2BotRole', # required
    #     migration_strategy: 'CREATE_NEW' # required - accepts ["CREATE_NEW", "UPDATE_EXISTING"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartMigrationOutput
    #   resp.data.v1_bot_name #=> String
    #   resp.data.v1_bot_version #=> String
    #   resp.data.v1_bot_locale #=> String, one of ["de-DE", "en-AU", "en-GB", "en-IN", "en-US", "es-419", "es-ES", "es-US", "fr-FR", "fr-CA", "it-IT", "ja-JP", "ko-KR"]
    #   resp.data.v2_bot_id #=> String
    #   resp.data.v2_bot_role #=> String
    #   resp.data.migration_id #=> String
    #   resp.data.migration_strategy #=> String, one of ["CREATE_NEW", "UPDATE_EXISTING"]
    #   resp.data.migration_timestamp #=> Time
    #
    def start_migration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartMigrationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartMigrationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartMigration
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::NotFoundException, Errors::LimitExceededException, Errors::AccessDeniedException, Errors::BadRequestException, Errors::InternalFailureException]),
        data_parser: Parsers::StartMigration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartMigration,
        stubs: @stubs,
        params_class: Params::StartMigrationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_migration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds the specified tags to the specified resource. If a tag key
    #       already exists, the existing value is replaced with the new value.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the bot, bot alias, or bot channel
    #         to tag.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of tag keys to add to the resource. If a tag key already
    #         exists, the existing value is replaced with the new value.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'resourceArn', # required
    #     tags: [
    #       {
    #         key: 'key', # required
    #         value: 'value' # required
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::LimitExceededException, Errors::BadRequestException, Errors::InternalFailureException]),
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

    # <p>Removes tags from a bot, bot alias or bot channel.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to remove the tags
    #         from.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>A list of tag keys to remove from the resource. If a tag key does not
    #         exist on the resource, it is ignored.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::NotFoundException, Errors::ConflictException, Errors::LimitExceededException, Errors::BadRequestException, Errors::InternalFailureException]),
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

    private

    def apply_middleware(middleware_stack, middleware)
      Client.middleware.apply(middleware_stack)
      @middleware.apply(middleware_stack)
      Hearth::MiddlewareBuilder.new(middleware).apply(middleware_stack)
    end
  end
end
