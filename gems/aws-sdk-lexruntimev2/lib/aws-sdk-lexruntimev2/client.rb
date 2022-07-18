# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::LexRuntimeV2
  # An API client for AWSDeepSenseRunTimeServiceApi2_0
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
    def initialize(config = AWS::SDK::LexRuntimeV2::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Removes session information for a specified bot, alias, and user ID. </p>
    #          <p>You can use this operation to restart a conversation with a bot.
    #          When you remove a session, the entire history of the session is removed
    #          so that you can start again.</p>
    #          <p>You don't need to delete a session. Sessions have a time limit and
    #          will expire. Set the session time limit when you create the bot. The
    #          default is 5 minutes, but you can specify anything between 1 minute and
    #          24 hours.</p>
    #          <p>If you specify a bot or alias ID that doesn't exist, you receive a
    #             <code>BadRequestException.</code>
    #          </p>
    #          <p>If the locale doesn't exist in the bot, or if the locale hasn't been
    #          enables for the alias, you receive a
    #          <code>BadRequestException</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteSessionInput}.
    #
    # @option params [String] :bot_id
    #   <p>The identifier of the bot that contains the session data.</p>
    #
    # @option params [String] :bot_alias_id
    #   <p>The alias identifier in use for the bot that contains the session
    #            data.</p>
    #
    # @option params [String] :locale_id
    #   <p>The locale where the session is in use.</p>
    #
    # @option params [String] :session_id
    #   <p>The identifier of the session to delete.</p>
    #
    # @return [Types::DeleteSessionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_session(
    #     bot_id: 'botId', # required
    #     bot_alias_id: 'botAliasId', # required
    #     locale_id: 'localeId', # required
    #     session_id: 'sessionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteSessionOutput
    #   resp.data.bot_id #=> String
    #   resp.data.bot_alias_id #=> String
    #   resp.data.locale_id #=> String
    #   resp.data.session_id #=> String
    #
    def delete_session(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteSessionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteSessionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteSession
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException, Errors::ConflictException]),
        data_parser: Parsers::DeleteSession
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteSession,
        stubs: @stubs,
        params_class: Params::DeleteSessionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_session
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns session information for a specified bot, alias, and
    #          user.</p>
    #          <p>For example, you can use this operation to retrieve session
    #          information for a user that has left a long-running session in
    #          use.</p>
    #          <p>If the bot, alias, or session identifier doesn't exist, Amazon Lex V2
    #          returns a <code>BadRequestException</code>. If the locale doesn't exist
    #          or is not enabled for the alias, you receive a
    #             <code>BadRequestException</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetSessionInput}.
    #
    # @option params [String] :bot_id
    #   <p>The identifier of the bot that contains the session data.</p>
    #
    # @option params [String] :bot_alias_id
    #   <p>The alias identifier in use for the bot that contains the session
    #            data.</p>
    #
    # @option params [String] :locale_id
    #   <p>The locale where the session is in use.</p>
    #
    # @option params [String] :session_id
    #   <p>The identifier of the session to return.</p>
    #
    # @return [Types::GetSessionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_session(
    #     bot_id: 'botId', # required
    #     bot_alias_id: 'botAliasId', # required
    #     locale_id: 'localeId', # required
    #     session_id: 'sessionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSessionOutput
    #   resp.data.session_id #=> String
    #   resp.data.messages #=> Array<Message>
    #   resp.data.messages[0] #=> Types::Message
    #   resp.data.messages[0].content #=> String
    #   resp.data.messages[0].content_type #=> String, one of ["CustomPayload", "ImageResponseCard", "PlainText", "SSML"]
    #   resp.data.messages[0].image_response_card #=> Types::ImageResponseCard
    #   resp.data.messages[0].image_response_card.title #=> String
    #   resp.data.messages[0].image_response_card.subtitle #=> String
    #   resp.data.messages[0].image_response_card.image_url #=> String
    #   resp.data.messages[0].image_response_card.buttons #=> Array<Button>
    #   resp.data.messages[0].image_response_card.buttons[0] #=> Types::Button
    #   resp.data.messages[0].image_response_card.buttons[0].text #=> String
    #   resp.data.messages[0].image_response_card.buttons[0].value #=> String
    #   resp.data.interpretations #=> Array<Interpretation>
    #   resp.data.interpretations[0] #=> Types::Interpretation
    #   resp.data.interpretations[0].nlu_confidence #=> Types::ConfidenceScore
    #   resp.data.interpretations[0].nlu_confidence.score #=> Float
    #   resp.data.interpretations[0].sentiment_response #=> Types::SentimentResponse
    #   resp.data.interpretations[0].sentiment_response.sentiment #=> String, one of ["MIXED", "NEGATIVE", "NEUTRAL", "POSITIVE"]
    #   resp.data.interpretations[0].sentiment_response.sentiment_score #=> Types::SentimentScore
    #   resp.data.interpretations[0].sentiment_response.sentiment_score.positive #=> Float
    #   resp.data.interpretations[0].sentiment_response.sentiment_score.negative #=> Float
    #   resp.data.interpretations[0].sentiment_response.sentiment_score.neutral #=> Float
    #   resp.data.interpretations[0].sentiment_response.sentiment_score.mixed #=> Float
    #   resp.data.interpretations[0].intent #=> Types::Intent
    #   resp.data.interpretations[0].intent.name #=> String
    #   resp.data.interpretations[0].intent.slots #=> Hash<String, Slot>
    #   resp.data.interpretations[0].intent.slots['key'] #=> Types::Slot
    #   resp.data.interpretations[0].intent.slots['key'].value #=> Types::Value
    #   resp.data.interpretations[0].intent.slots['key'].value.original_value #=> String
    #   resp.data.interpretations[0].intent.slots['key'].value.interpreted_value #=> String
    #   resp.data.interpretations[0].intent.slots['key'].value.resolved_values #=> Array<String>
    #   resp.data.interpretations[0].intent.slots['key'].value.resolved_values[0] #=> String
    #   resp.data.interpretations[0].intent.slots['key'].shape #=> String, one of ["Scalar", "List"]
    #   resp.data.interpretations[0].intent.slots['key'].values #=> Array<Slot>
    #   resp.data.interpretations[0].intent.state #=> String, one of ["Failed", "Fulfilled", "InProgress", "ReadyForFulfillment", "Waiting", "FulfillmentInProgress"]
    #   resp.data.interpretations[0].intent.confirmation_state #=> String, one of ["Confirmed", "Denied", "None"]
    #   resp.data.session_state #=> Types::SessionState
    #   resp.data.session_state.dialog_action #=> Types::DialogAction
    #   resp.data.session_state.dialog_action.type #=> String, one of ["Close", "ConfirmIntent", "Delegate", "ElicitIntent", "ElicitSlot", "None"]
    #   resp.data.session_state.dialog_action.slot_to_elicit #=> String
    #   resp.data.session_state.dialog_action.slot_elicitation_style #=> String, one of ["Default", "SpellByLetter", "SpellByWord"]
    #   resp.data.session_state.intent #=> Types::Intent
    #   resp.data.session_state.active_contexts #=> Array<ActiveContext>
    #   resp.data.session_state.active_contexts[0] #=> Types::ActiveContext
    #   resp.data.session_state.active_contexts[0].name #=> String
    #   resp.data.session_state.active_contexts[0].time_to_live #=> Types::ActiveContextTimeToLive
    #   resp.data.session_state.active_contexts[0].time_to_live.time_to_live_in_seconds #=> Integer
    #   resp.data.session_state.active_contexts[0].time_to_live.turns_to_live #=> Integer
    #   resp.data.session_state.active_contexts[0].context_attributes #=> Hash<String, String>
    #   resp.data.session_state.active_contexts[0].context_attributes['key'] #=> String
    #   resp.data.session_state.session_attributes #=> Hash<String, String>
    #   resp.data.session_state.session_attributes['key'] #=> String
    #   resp.data.session_state.originating_request_id #=> String
    #   resp.data.session_state.runtime_hints #=> Types::RuntimeHints
    #   resp.data.session_state.runtime_hints.slot_hints #=> Hash<String, Hash<String, RuntimeHintDetails>>
    #   resp.data.session_state.runtime_hints.slot_hints['key'] #=> Hash<String, RuntimeHintDetails>
    #   resp.data.session_state.runtime_hints.slot_hints['key']['key'] #=> Types::RuntimeHintDetails
    #   resp.data.session_state.runtime_hints.slot_hints['key']['key'].runtime_hint_values #=> Array<RuntimeHintValue>
    #   resp.data.session_state.runtime_hints.slot_hints['key']['key'].runtime_hint_values[0] #=> Types::RuntimeHintValue
    #   resp.data.session_state.runtime_hints.slot_hints['key']['key'].runtime_hint_values[0].phrase #=> String
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException]),
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

    # <p>Creates a new session or modifies an existing session with an Amazon Lex V2
    #          bot. Use this operation to enable your application to set the state of
    #          the bot.</p>
    #
    # @param [Hash] params
    #   See {Types::PutSessionInput}.
    #
    # @option params [String] :bot_id
    #   <p>The identifier of the bot that receives the session data.</p>
    #
    # @option params [String] :bot_alias_id
    #   <p>The alias identifier of the bot that receives the session
    #            data.</p>
    #
    # @option params [String] :locale_id
    #   <p>The locale where the session is in use.</p>
    #
    # @option params [String] :session_id
    #   <p>The identifier of the session that receives the session data.</p>
    #
    # @option params [Array<Message>] :messages
    #   <p>A list of messages to send to the user. Messages are sent in the
    #            order that they are defined in the list.</p>
    #
    # @option params [SessionState] :session_state
    #   <p>Sets the state of the session with the user. You can use this to set
    #            the current intent, attributes, context, and dialog action. Use the
    #            dialog action to determine the next step that Amazon Lex V2 should use in the
    #            conversation with the user.</p>
    #
    # @option params [Hash<String, String>] :request_attributes
    #   <p>Request-specific information passed between Amazon Lex V2 and the client
    #            application.</p>
    #            <p>The namespace <code>x-amz-lex:</code> is reserved for special
    #            attributes. Don't create any request attributes with the prefix
    #               <code>x-amz-lex:</code>.</p>
    #
    # @option params [String] :response_content_type
    #   <p>The message that Amazon Lex V2 returns in the response can be either text or
    #            speech depending on the value of this parameter. </p>
    #            <ul>
    #               <li>
    #                  <p>If the value is <code>text/plain; charset=utf-8</code>, Amazon Lex V2
    #                  returns text in the response.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::PutSessionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_session(
    #     bot_id: 'botId', # required
    #     bot_alias_id: 'botAliasId', # required
    #     locale_id: 'localeId', # required
    #     session_id: 'sessionId', # required
    #     messages: [
    #       {
    #         content: 'content',
    #         content_type: 'CustomPayload', # required - accepts ["CustomPayload", "ImageResponseCard", "PlainText", "SSML"]
    #         image_response_card: {
    #           title: 'title', # required
    #           subtitle: 'subtitle',
    #           image_url: 'imageUrl',
    #           buttons: [
    #             {
    #               text: 'text', # required
    #               value: 'value' # required
    #             }
    #           ]
    #         }
    #       }
    #     ],
    #     session_state: {
    #       dialog_action: {
    #         type: 'Close', # required - accepts ["Close", "ConfirmIntent", "Delegate", "ElicitIntent", "ElicitSlot", "None"]
    #         slot_to_elicit: 'slotToElicit',
    #         slot_elicitation_style: 'Default' # accepts ["Default", "SpellByLetter", "SpellByWord"]
    #       },
    #       intent: {
    #         name: 'name', # required
    #         slots: {
    #           'key' => {
    #             value: {
    #               original_value: 'originalValue',
    #               interpreted_value: 'interpretedValue', # required
    #               resolved_values: [
    #                 'member'
    #               ]
    #             },
    #             shape: 'Scalar', # accepts ["Scalar", "List"]
    #           }
    #         },
    #         state: 'Failed', # accepts ["Failed", "Fulfilled", "InProgress", "ReadyForFulfillment", "Waiting", "FulfillmentInProgress"]
    #         confirmation_state: 'Confirmed' # accepts ["Confirmed", "Denied", "None"]
    #       },
    #       active_contexts: [
    #         {
    #           name: 'name', # required
    #           time_to_live: {
    #             time_to_live_in_seconds: 1, # required
    #             turns_to_live: 1 # required
    #           }, # required
    #           context_attributes: {
    #             'key' => 'value'
    #           } # required
    #         }
    #       ],
    #       session_attributes: {
    #         'key' => 'value'
    #       },
    #       originating_request_id: 'originatingRequestId',
    #       runtime_hints: {
    #         slot_hints: {
    #           'key' => {
    #             'key' => {
    #               runtime_hint_values: [
    #                 {
    #                   phrase: 'phrase' # required
    #                 }
    #               ] # required
    #             }
    #           }
    #         }
    #       }
    #     }, # required
    #     response_content_type: 'responseContentType'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutSessionOutput
    #   resp.data.content_type #=> String
    #   resp.data.messages #=> String
    #   resp.data.session_state #=> String
    #   resp.data.request_attributes #=> String
    #   resp.data.session_id #=> String
    #   resp.data.audio_stream #=> String
    #
    def put_session(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutSessionInput.build(params)
      response_body = output_stream(options, &block)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutSessionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutSession
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::BadGatewayException, Errors::ValidationException, Errors::DependencyFailedException, Errors::InternalServerException, Errors::ConflictException]),
        data_parser: Parsers::PutSession
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutSession,
        stubs: @stubs,
        params_class: Params::PutSessionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_session
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sends user input to Amazon Lex V2. Client applications use this API to send
    #          requests to Amazon Lex V2 at runtime. Amazon Lex V2 then interprets the user input
    #          using the machine learning model that it build for the bot.</p>
    #          <p>In response, Amazon Lex V2 returns the next message to convey to the user
    #          and an optional response card to display.</p>
    #          <p>If the optional post-fulfillment response is specified, the messages
    #          are returned as follows. For more information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/API_PostFulfillmentStatusSpecification.html">PostFulfillmentStatusSpecification</a>.</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>Success message</b> - Returned if
    #                the Lambda function completes successfully and the intent state is
    #                fulfilled or ready fulfillment if the message is present.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Failed message</b> - The failed
    #                message is returned if the Lambda function throws an exception or
    #                if the Lambda function returns a failed intent state without a
    #                message.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Timeout message</b> - If you
    #                don't configure a timeout message and a timeout, and the Lambda
    #                function doesn't return within 30 seconds, the timeout message is
    #                returned. If you configure a timeout, the timeout message is
    #                returned when the period times out. </p>
    #             </li>
    #          </ul>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/streaming-progress.html#progress-complete.html">Completion message</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::RecognizeTextInput}.
    #
    # @option params [String] :bot_id
    #   <p>The identifier of the bot that processes the request.</p>
    #
    # @option params [String] :bot_alias_id
    #   <p>The alias identifier in use for the bot that processes the
    #            request.</p>
    #
    # @option params [String] :locale_id
    #   <p>The locale where the session is in use.</p>
    #
    # @option params [String] :session_id
    #   <p>The identifier of the user session that is having the
    #            conversation.</p>
    #
    # @option params [String] :text
    #   <p>The text that the user entered. Amazon Lex V2 interprets this text.</p>
    #
    # @option params [SessionState] :session_state
    #   <p>The current state of the dialog between the user and the bot.</p>
    #
    # @option params [Hash<String, String>] :request_attributes
    #   <p>Request-specific information passed between the client application
    #            and Amazon Lex V2 </p>
    #            <p>The namespace <code>x-amz-lex:</code> is reserved for special
    #            attributes. Don't create any request attributes with the prefix
    #               <code>x-amz-lex:</code>.</p>
    #
    # @return [Types::RecognizeTextOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.recognize_text(
    #     bot_id: 'botId', # required
    #     bot_alias_id: 'botAliasId', # required
    #     locale_id: 'localeId', # required
    #     session_id: 'sessionId', # required
    #     text: 'text', # required
    #     session_state: {
    #       dialog_action: {
    #         type: 'Close', # required - accepts ["Close", "ConfirmIntent", "Delegate", "ElicitIntent", "ElicitSlot", "None"]
    #         slot_to_elicit: 'slotToElicit',
    #         slot_elicitation_style: 'Default' # accepts ["Default", "SpellByLetter", "SpellByWord"]
    #       },
    #       intent: {
    #         name: 'name', # required
    #         slots: {
    #           'key' => {
    #             value: {
    #               original_value: 'originalValue',
    #               interpreted_value: 'interpretedValue', # required
    #               resolved_values: [
    #                 'member'
    #               ]
    #             },
    #             shape: 'Scalar', # accepts ["Scalar", "List"]
    #           }
    #         },
    #         state: 'Failed', # accepts ["Failed", "Fulfilled", "InProgress", "ReadyForFulfillment", "Waiting", "FulfillmentInProgress"]
    #         confirmation_state: 'Confirmed' # accepts ["Confirmed", "Denied", "None"]
    #       },
    #       active_contexts: [
    #         {
    #           name: 'name', # required
    #           time_to_live: {
    #             time_to_live_in_seconds: 1, # required
    #             turns_to_live: 1 # required
    #           }, # required
    #           context_attributes: {
    #             'key' => 'value'
    #           } # required
    #         }
    #       ],
    #       session_attributes: {
    #         'key' => 'value'
    #       },
    #       originating_request_id: 'originatingRequestId',
    #       runtime_hints: {
    #         slot_hints: {
    #           'key' => {
    #             'key' => {
    #               runtime_hint_values: [
    #                 {
    #                   phrase: 'phrase' # required
    #                 }
    #               ] # required
    #             }
    #           }
    #         }
    #       }
    #     },
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RecognizeTextOutput
    #   resp.data.messages #=> Array<Message>
    #   resp.data.messages[0] #=> Types::Message
    #   resp.data.messages[0].content #=> String
    #   resp.data.messages[0].content_type #=> String, one of ["CustomPayload", "ImageResponseCard", "PlainText", "SSML"]
    #   resp.data.messages[0].image_response_card #=> Types::ImageResponseCard
    #   resp.data.messages[0].image_response_card.title #=> String
    #   resp.data.messages[0].image_response_card.subtitle #=> String
    #   resp.data.messages[0].image_response_card.image_url #=> String
    #   resp.data.messages[0].image_response_card.buttons #=> Array<Button>
    #   resp.data.messages[0].image_response_card.buttons[0] #=> Types::Button
    #   resp.data.messages[0].image_response_card.buttons[0].text #=> String
    #   resp.data.messages[0].image_response_card.buttons[0].value #=> String
    #   resp.data.session_state #=> Types::SessionState
    #   resp.data.session_state.dialog_action #=> Types::DialogAction
    #   resp.data.session_state.dialog_action.type #=> String, one of ["Close", "ConfirmIntent", "Delegate", "ElicitIntent", "ElicitSlot", "None"]
    #   resp.data.session_state.dialog_action.slot_to_elicit #=> String
    #   resp.data.session_state.dialog_action.slot_elicitation_style #=> String, one of ["Default", "SpellByLetter", "SpellByWord"]
    #   resp.data.session_state.intent #=> Types::Intent
    #   resp.data.session_state.intent.name #=> String
    #   resp.data.session_state.intent.slots #=> Hash<String, Slot>
    #   resp.data.session_state.intent.slots['key'] #=> Types::Slot
    #   resp.data.session_state.intent.slots['key'].value #=> Types::Value
    #   resp.data.session_state.intent.slots['key'].value.original_value #=> String
    #   resp.data.session_state.intent.slots['key'].value.interpreted_value #=> String
    #   resp.data.session_state.intent.slots['key'].value.resolved_values #=> Array<String>
    #   resp.data.session_state.intent.slots['key'].value.resolved_values[0] #=> String
    #   resp.data.session_state.intent.slots['key'].shape #=> String, one of ["Scalar", "List"]
    #   resp.data.session_state.intent.slots['key'].values #=> Array<Slot>
    #   resp.data.session_state.intent.state #=> String, one of ["Failed", "Fulfilled", "InProgress", "ReadyForFulfillment", "Waiting", "FulfillmentInProgress"]
    #   resp.data.session_state.intent.confirmation_state #=> String, one of ["Confirmed", "Denied", "None"]
    #   resp.data.session_state.active_contexts #=> Array<ActiveContext>
    #   resp.data.session_state.active_contexts[0] #=> Types::ActiveContext
    #   resp.data.session_state.active_contexts[0].name #=> String
    #   resp.data.session_state.active_contexts[0].time_to_live #=> Types::ActiveContextTimeToLive
    #   resp.data.session_state.active_contexts[0].time_to_live.time_to_live_in_seconds #=> Integer
    #   resp.data.session_state.active_contexts[0].time_to_live.turns_to_live #=> Integer
    #   resp.data.session_state.active_contexts[0].context_attributes #=> Hash<String, String>
    #   resp.data.session_state.active_contexts[0].context_attributes['key'] #=> String
    #   resp.data.session_state.session_attributes #=> Hash<String, String>
    #   resp.data.session_state.session_attributes['key'] #=> String
    #   resp.data.session_state.originating_request_id #=> String
    #   resp.data.session_state.runtime_hints #=> Types::RuntimeHints
    #   resp.data.session_state.runtime_hints.slot_hints #=> Hash<String, Hash<String, RuntimeHintDetails>>
    #   resp.data.session_state.runtime_hints.slot_hints['key'] #=> Hash<String, RuntimeHintDetails>
    #   resp.data.session_state.runtime_hints.slot_hints['key']['key'] #=> Types::RuntimeHintDetails
    #   resp.data.session_state.runtime_hints.slot_hints['key']['key'].runtime_hint_values #=> Array<RuntimeHintValue>
    #   resp.data.session_state.runtime_hints.slot_hints['key']['key'].runtime_hint_values[0] #=> Types::RuntimeHintValue
    #   resp.data.session_state.runtime_hints.slot_hints['key']['key'].runtime_hint_values[0].phrase #=> String
    #   resp.data.interpretations #=> Array<Interpretation>
    #   resp.data.interpretations[0] #=> Types::Interpretation
    #   resp.data.interpretations[0].nlu_confidence #=> Types::ConfidenceScore
    #   resp.data.interpretations[0].nlu_confidence.score #=> Float
    #   resp.data.interpretations[0].sentiment_response #=> Types::SentimentResponse
    #   resp.data.interpretations[0].sentiment_response.sentiment #=> String, one of ["MIXED", "NEGATIVE", "NEUTRAL", "POSITIVE"]
    #   resp.data.interpretations[0].sentiment_response.sentiment_score #=> Types::SentimentScore
    #   resp.data.interpretations[0].sentiment_response.sentiment_score.positive #=> Float
    #   resp.data.interpretations[0].sentiment_response.sentiment_score.negative #=> Float
    #   resp.data.interpretations[0].sentiment_response.sentiment_score.neutral #=> Float
    #   resp.data.interpretations[0].sentiment_response.sentiment_score.mixed #=> Float
    #   resp.data.interpretations[0].intent #=> Types::Intent
    #   resp.data.request_attributes #=> Hash<String, String>
    #   resp.data.session_id #=> String
    #
    def recognize_text(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RecognizeTextInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RecognizeTextInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RecognizeText
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::BadGatewayException, Errors::ValidationException, Errors::DependencyFailedException, Errors::InternalServerException, Errors::ConflictException]),
        data_parser: Parsers::RecognizeText
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RecognizeText,
        stubs: @stubs,
        params_class: Params::RecognizeTextOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :recognize_text
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sends user input to Amazon Lex V2. You can send text or speech. Clients use
    #          this API to send text and audio requests to Amazon Lex V2 at runtime. Amazon Lex V2
    #          interprets the user input using the machine learning model built for
    #          the bot.</p>
    #          <p>The following request fields must be compressed with gzip and then
    #          base64 encoded before you send them to Amazon Lex V2. </p>
    #          <ul>
    #             <li>
    #                <p>requestAttributes</p>
    #             </li>
    #             <li>
    #                <p>sessionState</p>
    #             </li>
    #          </ul>
    #          <p>The following response fields are compressed using gzip and then
    #          base64 encoded by Amazon Lex V2. Before you can use these fields, you must
    #          decode and decompress them. </p>
    #          <ul>
    #             <li>
    #                <p>inputTranscript</p>
    #             </li>
    #             <li>
    #                <p>interpretations</p>
    #             </li>
    #             <li>
    #                <p>messages</p>
    #             </li>
    #             <li>
    #                <p>requestAttributes</p>
    #             </li>
    #             <li>
    #                <p>sessionState</p>
    #             </li>
    #          </ul>
    #          <p>The example contains a Java application that compresses and encodes
    #          a Java object to send to Amazon Lex V2, and a second that decodes and
    #          decompresses a response from Amazon Lex V2.</p>
    #          <p>If the optional post-fulfillment response is specified, the messages
    #          are returned as follows. For more information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/API_PostFulfillmentStatusSpecification.html">PostFulfillmentStatusSpecification</a>.</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>Success message</b> - Returned if
    #                the Lambda function completes successfully and the intent state is
    #                fulfilled or ready fulfillment if the message is present.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Failed message</b> - The failed
    #                message is returned if the Lambda function throws an exception or
    #                if the Lambda function returns a failed intent state without a
    #                message.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Timeout message</b> - If you
    #                don't configure a timeout message and a timeout, and the Lambda
    #                function doesn't return within 30 seconds, the timeout message is
    #                returned. If you configure a timeout, the timeout message is
    #                returned when the period times out. </p>
    #             </li>
    #          </ul>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/streaming-progress.html#progress-complete.html">Completion message</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::RecognizeUtteranceInput}.
    #
    # @option params [String] :bot_id
    #   <p>The identifier of the bot that should receive the request.</p>
    #
    # @option params [String] :bot_alias_id
    #   <p>The alias identifier in use for the bot that should receive the
    #            request.</p>
    #
    # @option params [String] :locale_id
    #   <p>The locale where the session is in use.</p>
    #
    # @option params [String] :session_id
    #   <p>The identifier of the session in use.</p>
    #
    # @option params [String] :session_state
    #   <p>Sets the state of the session with the user. You can use this to set
    #            the current intent, attributes, context, and dialog action. Use the
    #            dialog action to determine the next step that Amazon Lex V2 should use in the
    #            conversation with the user.</p>
    #            <p>The <code>sessionState</code> field must be compressed using gzip
    #            and then base64 encoded before sending to Amazon Lex V2.</p>
    #
    # @option params [String] :request_attributes
    #   <p>Request-specific information passed between the client application
    #            and Amazon Lex V2 </p>
    #            <p>The namespace <code>x-amz-lex:</code> is reserved for special
    #            attributes. Don't create any request attributes for prefix
    #               <code>x-amz-lex:</code>.</p>
    #            <p>The <code>requestAttributes</code> field must be compressed using
    #            gzip and then base64 encoded before sending to Amazon Lex V2.</p>
    #
    # @option params [String] :request_content_type
    #   <p>Indicates the format for audio input or that the content is text.
    #            The header must start with one of the following prefixes:</p>
    #            <ul>
    #               <li>
    #                  <p>PCM format, audio data must be in little-endian byte
    #                  order.</p>
    #                  <ul>
    #                     <li>
    #                        <p>audio/l16; rate=16000; channels=1</p>
    #                     </li>
    #                     <li>
    #                        <p>audio/x-l16; sample-rate=16000; channel-count=1</p>
    #                     </li>
    #                     <li>
    #                        <p>audio/lpcm; sample-rate=8000; sample-size-bits=16;
    #                        channel-count=1; is-big-endian=false</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Opus format</p>
    #                  <ul>
    #                     <li>
    #                        <p>audio/x-cbr-opus-with-preamble;preamble-size=0;bit-rate=256000;frame-size-milliseconds=4</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Text format</p>
    #                  <ul>
    #                     <li>
    #                        <p>text/plain; charset=utf-8</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #
    # @option params [String] :response_content_type
    #   <p>The message that Amazon Lex V2 returns in the response can be either text or
    #            speech based on the <code>responseContentType</code> value.</p>
    #            <ul>
    #               <li>
    #                  <p>If the value is <code>text/plain;charset=utf-8</code>, Amazon Lex V2
    #                  returns text in the response.</p>
    #               </li>
    #               <li>
    #                  <p>If the value begins with <code>audio/</code>, Amazon Lex V2 returns
    #                  speech in the response. Amazon Lex V2 uses Amazon Polly to generate the speech
    #                  using the configuration that you specified in the
    #                     <code>requestContentType</code> parameter. For example, if you
    #                  specify <code>audio/mpeg</code> as the value, Amazon Lex V2 returns
    #                  speech in the MPEG format.</p>
    #               </li>
    #               <li>
    #                  <p>If the value is <code>audio/pcm</code>, the speech returned is
    #                     <code>audio/pcm</code> at 16 KHz in 16-bit, little-endian
    #                  format.</p>
    #               </li>
    #               <li>
    #                  <p>The following are the accepted values:</p>
    #                  <ul>
    #                     <li>
    #                        <p>audio/mpeg</p>
    #                     </li>
    #                     <li>
    #                        <p>audio/ogg</p>
    #                     </li>
    #                     <li>
    #                        <p>audio/pcm (16 KHz)</p>
    #                     </li>
    #                     <li>
    #                        <p>audio/* (defaults to mpeg)</p>
    #                     </li>
    #                     <li>
    #                        <p>text/plain; charset=utf-8</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #
    # @option params [String] :input_stream
    #   <p>User input in PCM or Opus audio format or text format as described
    #            in the <code>requestContentType</code> parameter.</p>
    #
    # @return [Types::RecognizeUtteranceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.recognize_utterance(
    #     bot_id: 'botId', # required
    #     bot_alias_id: 'botAliasId', # required
    #     locale_id: 'localeId', # required
    #     session_id: 'sessionId', # required
    #     session_state: 'sessionState',
    #     request_attributes: 'requestAttributes',
    #     request_content_type: 'requestContentType', # required
    #     response_content_type: 'responseContentType',
    #     input_stream: 'inputStream'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RecognizeUtteranceOutput
    #   resp.data.input_mode #=> String
    #   resp.data.content_type #=> String
    #   resp.data.messages #=> String
    #   resp.data.interpretations #=> String
    #   resp.data.session_state #=> String
    #   resp.data.request_attributes #=> String
    #   resp.data.session_id #=> String
    #   resp.data.input_transcript #=> String
    #   resp.data.audio_stream #=> String
    #
    def recognize_utterance(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RecognizeUtteranceInput.build(params)
      response_body = output_stream(options, &block)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RecognizeUtteranceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RecognizeUtterance
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::BadGatewayException, Errors::ValidationException, Errors::DependencyFailedException, Errors::InternalServerException, Errors::ConflictException]),
        data_parser: Parsers::RecognizeUtterance
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RecognizeUtterance,
        stubs: @stubs,
        params_class: Params::RecognizeUtteranceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :recognize_utterance
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
