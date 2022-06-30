# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::LexRuntimeService
  # An API client for AWSDeepSenseRunTimeService
  # See {#initialize} for a full list of supported configuration options
  # <p>Amazon Lex provides both build and runtime endpoints. Each endpoint
  #       provides a set of operations (API). Your conversational bot uses the
  #       runtime API to understand user utterances (user input text or voice). For
  #       example, suppose a user says "I want pizza", your bot sends this input to
  #       Amazon Lex using the runtime API. Amazon Lex recognizes that the user
  #       request is for the OrderPizza intent (one of the intents defined in the
  #       bot). Then Amazon Lex engages in user conversation on behalf of the bot to
  #       elicit required information (slot values, such as pizza size and crust
  #       type), and then performs fulfillment activity (that you configured when
  #       you created the bot). You use the build-time API to create and manage your
  #       Amazon Lex bot. For a list of build-time operations, see the build-time
  #       API, . </p>
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
    def initialize(config = AWS::SDK::LexRuntimeService::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Removes session information for a specified bot, alias, and user ID.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteSessionInput}.
    #
    # @option params [String] :bot_name
    #   <p>The name of the bot that contains the session data.</p>
    #
    # @option params [String] :bot_alias
    #   <p>The alias in use for the bot that contains the session data.</p>
    #
    # @option params [String] :user_id
    #   <p>The identifier of the user associated with the session data.</p>
    #
    # @return [Types::DeleteSessionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_session(
    #     bot_name: 'botName', # required
    #     bot_alias: 'botAlias', # required
    #     user_id: 'userId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteSessionOutput
    #   resp.data.bot_name #=> String
    #   resp.data.bot_alias #=> String
    #   resp.data.user_id #=> String
    #   resp.data.session_id #=> String
    #
    def delete_session(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteSessionInput.build(params)
      response_body = StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ConflictException, Errors::InternalFailureException, Errors::LimitExceededException, Errors::NotFoundException]),
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

    # <p>Returns session information for a specified bot, alias, and user
    #       ID.</p>
    #
    # @param [Hash] params
    #   See {Types::GetSessionInput}.
    #
    # @option params [String] :bot_name
    #   <p>The name of the bot that contains the session data.</p>
    #
    # @option params [String] :bot_alias
    #   <p>The alias in use for the bot that contains the session data.</p>
    #
    # @option params [String] :user_id
    #   <p>The ID of the client application user. Amazon Lex uses this to identify a
    #         user's conversation with your bot. </p>
    #
    # @option params [String] :checkpoint_label_filter
    #   <p>A string used to filter the intents returned in the
    #           <code>recentIntentSummaryView</code> structure. </p>
    #            <p>When you specify a filter, only intents with their
    #           <code>checkpointLabel</code> field set to that string are
    #         returned.</p>
    #
    # @return [Types::GetSessionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_session(
    #     bot_name: 'botName', # required
    #     bot_alias: 'botAlias', # required
    #     user_id: 'userId', # required
    #     checkpoint_label_filter: 'checkpointLabelFilter'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSessionOutput
    #   resp.data.recent_intent_summary_view #=> Array<IntentSummary>
    #   resp.data.recent_intent_summary_view[0] #=> Types::IntentSummary
    #   resp.data.recent_intent_summary_view[0].intent_name #=> String
    #   resp.data.recent_intent_summary_view[0].checkpoint_label #=> String
    #   resp.data.recent_intent_summary_view[0].slots #=> Hash<String, String>
    #   resp.data.recent_intent_summary_view[0].slots['key'] #=> String
    #   resp.data.recent_intent_summary_view[0].confirmation_status #=> String, one of ["None", "Confirmed", "Denied"]
    #   resp.data.recent_intent_summary_view[0].dialog_action_type #=> String, one of ["ElicitIntent", "ConfirmIntent", "ElicitSlot", "Close", "Delegate"]
    #   resp.data.recent_intent_summary_view[0].fulfillment_state #=> String, one of ["Fulfilled", "Failed", "ReadyForFulfillment"]
    #   resp.data.recent_intent_summary_view[0].slot_to_elicit #=> String
    #   resp.data.session_attributes #=> Hash<String, String>
    #   resp.data.session_id #=> String
    #   resp.data.dialog_action #=> Types::DialogAction
    #   resp.data.dialog_action.type #=> String, one of ["ElicitIntent", "ConfirmIntent", "ElicitSlot", "Close", "Delegate"]
    #   resp.data.dialog_action.intent_name #=> String
    #   resp.data.dialog_action.slots #=> Hash<String, String>
    #   resp.data.dialog_action.slot_to_elicit #=> String
    #   resp.data.dialog_action.fulfillment_state #=> String, one of ["Fulfilled", "Failed", "ReadyForFulfillment"]
    #   resp.data.dialog_action.message #=> String
    #   resp.data.dialog_action.message_format #=> String, one of ["PlainText", "CustomPayload", "SSML", "Composite"]
    #   resp.data.active_contexts #=> Array<ActiveContext>
    #   resp.data.active_contexts[0] #=> Types::ActiveContext
    #   resp.data.active_contexts[0].name #=> String
    #   resp.data.active_contexts[0].time_to_live #=> Types::ActiveContextTimeToLive
    #   resp.data.active_contexts[0].time_to_live.time_to_live_in_seconds #=> Integer
    #   resp.data.active_contexts[0].time_to_live.turns_to_live #=> Integer
    #   resp.data.active_contexts[0].parameters #=> Hash<String, String>
    #   resp.data.active_contexts[0].parameters['key'] #=> String
    #
    def get_session(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSessionInput.build(params)
      response_body = StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::InternalFailureException, Errors::LimitExceededException, Errors::NotFoundException]),
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

    # <p> Sends user input (text or speech) to Amazon Lex. Clients use this API to
    #       send text and audio requests to Amazon Lex at runtime. Amazon Lex interprets the
    #       user input using the machine learning model that it built for the bot. </p>
    #          <p>The <code>PostContent</code> operation supports audio input at 8kHz
    #       and 16kHz. You can use 8kHz audio to achieve higher speech recognition
    #       accuracy in telephone audio applications. </p>
    #          <p> In response, Amazon Lex returns the next message to convey to the user.
    #       Consider the following example messages: </p>
    #          <ul>
    #             <li>
    #                <p> For a user input "I would like a pizza," Amazon Lex might return a
    #           response with a message eliciting slot data (for example,
    #             <code>PizzaSize</code>): "What size pizza would you like?". </p>
    #             </li>
    #             <li>
    #                <p> After the user provides all of the pizza order information, Amazon Lex
    #           might return a response with a message to get user confirmation:
    #           "Order the pizza?". </p>
    #             </li>
    #             <li>
    #                <p> After the user replies "Yes" to the confirmation prompt, Amazon Lex
    #           might return a conclusion statement: "Thank you, your cheese pizza has
    #           been ordered.". </p>
    #             </li>
    #          </ul>
    #          <p> Not all Amazon Lex messages require a response from the user. For example,
    #       conclusion statements do not require a response. Some messages require
    #       only a yes or no response. In addition to the <code>message</code>, Amazon Lex
    #       provides additional context about the message in the response that you can
    #       use to enhance client behavior, such as displaying the appropriate client
    #       user interface. Consider the following examples: </p>
    #          <ul>
    #             <li>
    #                <p> If the message is to elicit slot data, Amazon Lex returns the
    #           following context information: </p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>x-amz-lex-dialog-state</code> header set to
    #                 <code>ElicitSlot</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>x-amz-lex-intent-name</code> header set to the intent name
    #               in the current context </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>x-amz-lex-slot-to-elicit</code> header set to the slot name
    #               for which the <code>message</code> is eliciting information
    #             </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>x-amz-lex-slots</code> header set to a map of slots
    #               configured for the intent with their current values </p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p> If the message is a confirmation prompt, the
    #             <code>x-amz-lex-dialog-state</code> header is set to
    #             <code>Confirmation</code> and the
    #             <code>x-amz-lex-slot-to-elicit</code> header is omitted. </p>
    #             </li>
    #             <li>
    #                <p> If the message is a clarification prompt configured for the
    #           intent, indicating that the user intent is not understood, the
    #             <code>x-amz-dialog-state</code> header is set to
    #             <code>ElicitIntent</code> and the <code>x-amz-slot-to-elicit</code>
    #           header is omitted. </p>
    #             </li>
    #          </ul>
    #          <p> In addition, Amazon Lex also returns your application-specific
    #         <code>sessionAttributes</code>. For more information, see <a href="https://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html">Managing
    #         Conversation Context</a>. </p>
    #
    # @param [Hash] params
    #   See {Types::PostContentInput}.
    #
    # @option params [String] :bot_name
    #   <p>Name of the Amazon Lex bot.</p>
    #
    # @option params [String] :bot_alias
    #   <p>Alias of the Amazon Lex bot.</p>
    #
    # @option params [String] :user_id
    #   <p>The ID of the client application user. Amazon Lex uses this to identify a
    #         user's conversation with your bot. At runtime, each request must contain
    #         the <code>userID</code> field.</p>
    #            <p>To decide the user ID to use for your application, consider the
    #         following factors.</p>
    #            <ul>
    #               <li>
    #                  <p>The <code>userID</code> field must not contain any personally
    #             identifiable information of the user, for example, name, personal
    #             identification numbers, or other end user personal information.</p>
    #               </li>
    #               <li>
    #                  <p>If you want a user to start a conversation on one device and
    #             continue on another device, use a user-specific identifier.</p>
    #               </li>
    #               <li>
    #                  <p>If you want the same user to be able to have two independent
    #             conversations on two different devices, choose a device-specific
    #             identifier.</p>
    #               </li>
    #               <li>
    #                  <p>A user can't have two independent conversations with two different
    #             versions of the same bot. For example, a user can't have a
    #             conversation with the PROD and BETA versions of the same bot. If you
    #             anticipate that a user will need to have conversation with two
    #             different versions, for example, while testing, include the bot alias
    #             in the user ID to separate the two conversations.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :session_attributes
    #   <p>You pass this value as the <code>x-amz-lex-session-attributes</code>
    #         HTTP header.</p>
    #            <p>Application-specific information passed between Amazon Lex and a client
    #         application. The value must be a JSON serialized and base64 encoded map
    #         with string keys and values. The total size of the
    #           <code>sessionAttributes</code> and <code>requestAttributes</code>
    #         headers is limited to 12 KB.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html#context-mgmt-session-attribs">Setting Session Attributes</a>.</p>
    #
    # @option params [String] :request_attributes
    #   <p>You pass this value as the <code>x-amz-lex-request-attributes</code>
    #         HTTP header.</p>
    #            <p>Request-specific information passed between Amazon Lex and a client
    #         application. The value must be a JSON serialized and base64 encoded map
    #         with string keys and values. The total size of the
    #           <code>requestAttributes</code> and <code>sessionAttributes</code>
    #         headers is limited to 12 KB.</p>
    #            <p>The namespace <code>x-amz-lex:</code> is reserved for special
    #         attributes. Don't create any request attributes with the prefix
    #           <code>x-amz-lex:</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html#context-mgmt-request-attribs">Setting Request Attributes</a>.</p>
    #
    # @option params [String] :content_type
    #   <p> You pass this value as the <code>Content-Type</code> HTTP header. </p>
    #            <p> Indicates the audio format or text. The header value must start with
    #         one of the following prefixes: </p>
    #            <ul>
    #               <li>
    #                  <p>PCM format, audio data must be in little-endian byte order.</p>
    #                  <ul>
    #                     <li>
    #                        <p>audio/l16; rate=16000; channels=1</p>
    #                     </li>
    #                     <li>
    #                        <p>audio/x-l16; sample-rate=16000; channel-count=1</p>
    #                     </li>
    #                     <li>
    #                        <p>audio/lpcm; sample-rate=8000; sample-size-bits=16;
    #                 channel-count=1; is-big-endian=false </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Opus format</p>
    #                  <ul>
    #                     <li>
    #                        <p>audio/x-cbr-opus-with-preamble; preamble-size=0;
    #                 bit-rate=256000; frame-size-milliseconds=4</p>
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
    # @option params [String] :accept
    #   <p> You pass this value as the <code>Accept</code> HTTP header. </p>
    #            <p> The message Amazon Lex returns in the response can be either text or
    #         speech based on the <code>Accept</code> HTTP header value in the request. </p>
    #            <ul>
    #               <li>
    #                  <p> If the value is <code>text/plain; charset=utf-8</code>, Amazon Lex
    #             returns text in the response. </p>
    #               </li>
    #               <li>
    #                  <p> If the value begins with <code>audio/</code>, Amazon Lex returns
    #             speech in the response. Amazon Lex uses Amazon Polly to generate the speech
    #             (using the configuration you specified in the <code>Accept</code>
    #             header). For example, if you specify <code>audio/mpeg</code> as the
    #             value, Amazon Lex returns speech in the MPEG format.</p>
    #               </li>
    #               <li>
    #                  <p>If the value is <code>audio/pcm</code>, the speech returned is
    #               <code>audio/pcm</code> in 16-bit, little endian format.
    #             </p>
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
    #                        <p>audio/pcm</p>
    #                     </li>
    #                     <li>
    #                        <p>text/plain; charset=utf-8</p>
    #                     </li>
    #                     <li>
    #                        <p>audio/* (defaults to mpeg)</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #
    # @option params [String] :input_stream
    #   <p> User input in PCM or Opus audio format or text format as described in
    #         the <code>Content-Type</code> HTTP header. </p>
    #            <p>You can stream audio data to Amazon Lex or you can create a local buffer
    #         that captures all of the audio data before sending. In general, you get
    #         better performance if you stream audio data rather than buffering the data
    #         locally.</p>
    #
    # @option params [String] :active_contexts
    #   <p>A list of contexts active for the request. A context can be activated
    #         when a previous intent is fulfilled, or by including the context in the
    #         request,</p>
    #            <p>If you don't specify a list of contexts, Amazon Lex will use the current
    #         list of contexts for the session. If you specify an empty list, all
    #         contexts for the session are cleared.</p>
    #
    # @return [Types::PostContentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.post_content(
    #     bot_name: 'botName', # required
    #     bot_alias: 'botAlias', # required
    #     user_id: 'userId', # required
    #     session_attributes: 'sessionAttributes',
    #     request_attributes: 'requestAttributes',
    #     content_type: 'contentType', # required
    #     accept: 'accept',
    #     input_stream: 'inputStream', # required
    #     active_contexts: 'activeContexts'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PostContentOutput
    #   resp.data.content_type #=> String
    #   resp.data.intent_name #=> String
    #   resp.data.nlu_intent_confidence #=> String
    #   resp.data.alternative_intents #=> String
    #   resp.data.slots #=> String
    #   resp.data.session_attributes #=> String
    #   resp.data.sentiment_response #=> String
    #   resp.data.message #=> String
    #   resp.data.encoded_message #=> String
    #   resp.data.message_format #=> String, one of ["PlainText", "CustomPayload", "SSML", "Composite"]
    #   resp.data.dialog_state #=> String, one of ["ElicitIntent", "ConfirmIntent", "ElicitSlot", "Fulfilled", "ReadyForFulfillment", "Failed"]
    #   resp.data.slot_to_elicit #=> String
    #   resp.data.input_transcript #=> String
    #   resp.data.encoded_input_transcript #=> String
    #   resp.data.audio_stream #=> String
    #   resp.data.bot_version #=> String
    #   resp.data.session_id #=> String
    #   resp.data.active_contexts #=> String
    #
    def post_content(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PostContentInput.build(params)
      response_body = output_stream(options, &block)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PostContentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PostContent
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedMediaTypeException, Errors::BadRequestException, Errors::DependencyFailedException, Errors::ConflictException, Errors::LoopDetectedException, Errors::InternalFailureException, Errors::RequestTimeoutException, Errors::LimitExceededException, Errors::NotAcceptableException, Errors::BadGatewayException, Errors::NotFoundException]),
        data_parser: Parsers::PostContent
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PostContent,
        stubs: @stubs,
        params_class: Params::PostContentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :post_content
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sends user input to Amazon Lex. Client applications can use this API to
    #       send requests to Amazon Lex at runtime. Amazon Lex then interprets the user input
    #       using the machine learning model it built for the bot. </p>
    #          <p> In response, Amazon Lex returns the next <code>message</code> to convey to
    #       the user an optional <code>responseCard</code> to display. Consider the
    #       following example messages: </p>
    #          <ul>
    #             <li>
    #                <p> For a user input "I would like a pizza", Amazon Lex might return a
    #           response with a message eliciting slot data (for example, PizzaSize):
    #           "What size pizza would you like?" </p>
    #             </li>
    #             <li>
    #                <p> After the user provides all of the pizza order information,
    #           Amazon Lex might return a response with a message to obtain user
    #           confirmation "Proceed with the pizza order?". </p>
    #             </li>
    #             <li>
    #                <p> After the user replies to a confirmation prompt with a "yes",
    #           Amazon Lex might return a conclusion statement: "Thank you, your cheese
    #           pizza has been ordered.". </p>
    #             </li>
    #          </ul>
    #
    #          <p> Not all Amazon Lex messages require a user response. For example, a
    #       conclusion statement does not require a response. Some messages require
    #       only a "yes" or "no" user response. In addition to the
    #         <code>message</code>, Amazon Lex provides additional context about the
    #       message in the response that you might use to enhance client behavior, for
    #       example, to display the appropriate client user interface. These are the
    #         <code>slotToElicit</code>, <code>dialogState</code>,
    #         <code>intentName</code>, and <code>slots</code> fields in the response.
    #       Consider the following examples: </p>
    #
    #          <ul>
    #             <li>
    #                <p>If the message is to elicit slot data, Amazon Lex returns the
    #           following context information:</p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>dialogState</code> set to ElicitSlot </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>intentName</code> set to the intent name in the current
    #               context </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>slotToElicit</code> set to the slot name for which the
    #                 <code>message</code> is eliciting information </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>slots</code> set to a map of slots, configured for the
    #               intent, with currently known values </p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p> If the message is a confirmation prompt, the
    #             <code>dialogState</code> is set to ConfirmIntent and
    #             <code>SlotToElicit</code> is set to null. </p>
    #             </li>
    #             <li>
    #                <p>If the message is a clarification prompt (configured for the
    #           intent) that indicates that user intent is not understood, the
    #             <code>dialogState</code> is set to ElicitIntent and
    #             <code>slotToElicit</code> is set to null. </p>
    #             </li>
    #          </ul>
    #
    #          <p> In addition, Amazon Lex also returns your application-specific
    #         <code>sessionAttributes</code>. For more information, see <a href="https://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html">Managing
    #         Conversation Context</a>. </p>
    #
    # @param [Hash] params
    #   See {Types::PostTextInput}.
    #
    # @option params [String] :bot_name
    #   <p>The name of the Amazon Lex bot.</p>
    #
    # @option params [String] :bot_alias
    #   <p>The alias of the Amazon Lex bot.</p>
    #
    # @option params [String] :user_id
    #   <p>The ID of the client application user. Amazon Lex uses this to identify a
    #         user's conversation with your bot. At runtime, each request must contain
    #         the <code>userID</code> field.</p>
    #            <p>To decide the user ID to use for your application, consider the
    #         following factors.</p>
    #            <ul>
    #               <li>
    #                  <p>The <code>userID</code> field must not contain any personally
    #             identifiable information of the user, for example, name, personal
    #             identification numbers, or other end user personal information.</p>
    #               </li>
    #               <li>
    #                  <p>If you want a user to start a conversation on one device and
    #             continue on another device, use a user-specific identifier.</p>
    #               </li>
    #               <li>
    #                  <p>If you want the same user to be able to have two independent
    #             conversations on two different devices, choose a device-specific
    #             identifier.</p>
    #               </li>
    #               <li>
    #                  <p>A user can't have two independent conversations with two different
    #             versions of the same bot. For example, a user can't have a
    #             conversation with the PROD and BETA versions of the same bot. If you
    #             anticipate that a user will need to have conversation with two
    #             different versions, for example, while testing, include the bot alias
    #             in the user ID to separate the two conversations.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Hash<String, String>] :session_attributes
    #   <p>Application-specific information passed between Amazon Lex and a client
    #         application.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html#context-mgmt-session-attribs">Setting Session Attributes</a>.</p>
    #
    # @option params [Hash<String, String>] :request_attributes
    #   <p>Request-specific information passed between Amazon Lex and a client
    #         application.</p>
    #            <p>The namespace <code>x-amz-lex:</code> is reserved for special
    #         attributes. Don't create any request attributes with the prefix
    #           <code>x-amz-lex:</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html#context-mgmt-request-attribs">Setting Request Attributes</a>.</p>
    #
    # @option params [String] :input_text
    #   <p>The text that the user entered (Amazon Lex interprets this text).</p>
    #
    # @option params [Array<ActiveContext>] :active_contexts
    #   <p>A list of contexts active for the request. A context can be activated
    #         when a previous intent is fulfilled, or by including the context in the
    #         request,</p>
    #            <p>If you don't specify a list of contexts, Amazon Lex will use the current
    #         list of contexts for the session. If you specify an empty list, all
    #         contexts for the session are cleared.</p>
    #
    # @return [Types::PostTextOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.post_text(
    #     bot_name: 'botName', # required
    #     bot_alias: 'botAlias', # required
    #     user_id: 'userId', # required
    #     session_attributes: {
    #       'key' => 'value'
    #     },
    #     input_text: 'inputText', # required
    #     active_contexts: [
    #       {
    #         name: 'name', # required
    #         time_to_live: {
    #           time_to_live_in_seconds: 1,
    #           turns_to_live: 1
    #         }, # required
    #         parameters: {
    #           'key' => 'value'
    #         } # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PostTextOutput
    #   resp.data.intent_name #=> String
    #   resp.data.nlu_intent_confidence #=> Types::IntentConfidence
    #   resp.data.nlu_intent_confidence.score #=> Float
    #   resp.data.alternative_intents #=> Array<PredictedIntent>
    #   resp.data.alternative_intents[0] #=> Types::PredictedIntent
    #   resp.data.alternative_intents[0].intent_name #=> String
    #   resp.data.alternative_intents[0].nlu_intent_confidence #=> Types::IntentConfidence
    #   resp.data.alternative_intents[0].slots #=> Hash<String, String>
    #   resp.data.alternative_intents[0].slots['key'] #=> String
    #   resp.data.slots #=> Hash<String, String>
    #   resp.data.session_attributes #=> Hash<String, String>
    #   resp.data.message #=> String
    #   resp.data.sentiment_response #=> Types::SentimentResponse
    #   resp.data.sentiment_response.sentiment_label #=> String
    #   resp.data.sentiment_response.sentiment_score #=> String
    #   resp.data.message_format #=> String, one of ["PlainText", "CustomPayload", "SSML", "Composite"]
    #   resp.data.dialog_state #=> String, one of ["ElicitIntent", "ConfirmIntent", "ElicitSlot", "Fulfilled", "ReadyForFulfillment", "Failed"]
    #   resp.data.slot_to_elicit #=> String
    #   resp.data.response_card #=> Types::ResponseCard
    #   resp.data.response_card.version #=> String
    #   resp.data.response_card.content_type #=> String, one of ["application/vnd.amazonaws.card.generic"]
    #   resp.data.response_card.generic_attachments #=> Array<GenericAttachment>
    #   resp.data.response_card.generic_attachments[0] #=> Types::GenericAttachment
    #   resp.data.response_card.generic_attachments[0].title #=> String
    #   resp.data.response_card.generic_attachments[0].sub_title #=> String
    #   resp.data.response_card.generic_attachments[0].attachment_link_url #=> String
    #   resp.data.response_card.generic_attachments[0].image_url #=> String
    #   resp.data.response_card.generic_attachments[0].buttons #=> Array<Button>
    #   resp.data.response_card.generic_attachments[0].buttons[0] #=> Types::Button
    #   resp.data.response_card.generic_attachments[0].buttons[0].text #=> String
    #   resp.data.response_card.generic_attachments[0].buttons[0].value #=> String
    #   resp.data.session_id #=> String
    #   resp.data.bot_version #=> String
    #   resp.data.active_contexts #=> Array<ActiveContext>
    #   resp.data.active_contexts[0] #=> Types::ActiveContext
    #   resp.data.active_contexts[0].name #=> String
    #   resp.data.active_contexts[0].time_to_live #=> Types::ActiveContextTimeToLive
    #   resp.data.active_contexts[0].time_to_live.time_to_live_in_seconds #=> Integer
    #   resp.data.active_contexts[0].time_to_live.turns_to_live #=> Integer
    #   resp.data.active_contexts[0].parameters #=> Hash<String, String>
    #   resp.data.active_contexts[0].parameters['key'] #=> String
    #
    def post_text(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PostTextInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PostTextInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PostText
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::DependencyFailedException, Errors::ConflictException, Errors::LoopDetectedException, Errors::InternalFailureException, Errors::LimitExceededException, Errors::BadGatewayException, Errors::NotFoundException]),
        data_parser: Parsers::PostText
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PostText,
        stubs: @stubs,
        params_class: Params::PostTextOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :post_text
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new session or modifies an existing session with an Amazon Lex
    #       bot. Use this operation to enable your application to set the state of the
    #       bot.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/lex/latest/dg/how-session-api.html">Managing
    #         Sessions</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::PutSessionInput}.
    #
    # @option params [String] :bot_name
    #   <p>The name of the bot that contains the session data.</p>
    #
    # @option params [String] :bot_alias
    #   <p>The alias in use for the bot that contains the session data.</p>
    #
    # @option params [String] :user_id
    #   <p>The ID of the client application user. Amazon Lex uses this to identify a
    #         user's conversation with your bot. </p>
    #
    # @option params [Hash<String, String>] :session_attributes
    #   <p>Map of key/value pairs representing the session-specific context
    #         information. It contains application information passed between Amazon Lex and
    #         a client application.</p>
    #
    # @option params [DialogAction] :dialog_action
    #   <p>Sets the next action that the bot should take to fulfill the
    #         conversation.</p>
    #
    # @option params [Array<IntentSummary>] :recent_intent_summary_view
    #   <p>A summary of the recent intents for the bot. You can use the intent
    #         summary view to set a checkpoint label on an intent and modify attributes
    #         of intents. You can also use it to remove or add intent summary objects to
    #         the list.</p>
    #            <p>An intent that you modify or add to the list must make sense for the
    #         bot. For example, the intent name must be valid for the bot. You must
    #         provide valid values for:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>intentName</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>slot names</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>slotToElict</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>If you send the <code>recentIntentSummaryView</code> parameter in a
    #           <code>PutSession</code> request, the contents of the new summary view
    #         replaces the old summary view. For example, if a <code>GetSession</code>
    #         request returns three intents in the summary view and you call
    #           <code>PutSession</code> with one intent in the summary view, the next
    #         call to <code>GetSession</code> will only return one intent.</p>
    #
    # @option params [String] :accept
    #   <p>The message that Amazon Lex returns in the response can be either text or
    #         speech based depending on the value of this field.</p>
    #            <ul>
    #               <li>
    #                  <p>If the value is <code>text/plain; charset=utf-8</code>, Amazon Lex
    #             returns text in the response.</p>
    #               </li>
    #               <li>
    #                  <p>If the value begins with <code>audio/</code>, Amazon Lex returns speech
    #             in the response. Amazon Lex uses Amazon Polly to generate the speech in the
    #             configuration that you specify. For example, if you specify
    #               <code>audio/mpeg</code> as the value, Amazon Lex returns speech in the
    #             MPEG format.</p>
    #               </li>
    #               <li>
    #                  <p>If the value is <code>audio/pcm</code>, the speech is returned as
    #               <code>audio/pcm</code> in 16-bit, little endian format.</p>
    #               </li>
    #               <li>
    #                  <p>The following are the accepted values:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>audio/mpeg</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>audio/ogg</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>audio/pcm</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>audio/*</code> (defaults to mpeg)</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>text/plain; charset=utf-8</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #
    # @option params [Array<ActiveContext>] :active_contexts
    #   <p>A list of contexts active for the request. A context can be activated
    #         when a previous intent is fulfilled, or by including the context in the
    #         request,</p>
    #            <p>If you don't specify a list of contexts, Amazon Lex will use the current
    #         list of contexts for the session. If you specify an empty list, all
    #         contexts for the session are cleared.</p>
    #
    # @return [Types::PutSessionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_session(
    #     bot_name: 'botName', # required
    #     bot_alias: 'botAlias', # required
    #     user_id: 'userId', # required
    #     session_attributes: {
    #       'key' => 'value'
    #     },
    #     dialog_action: {
    #       type: 'ElicitIntent', # required - accepts ["ElicitIntent", "ConfirmIntent", "ElicitSlot", "Close", "Delegate"]
    #       intent_name: 'intentName',
    #       slot_to_elicit: 'slotToElicit',
    #       fulfillment_state: 'Fulfilled', # accepts ["Fulfilled", "Failed", "ReadyForFulfillment"]
    #       message: 'message',
    #       message_format: 'PlainText' # accepts ["PlainText", "CustomPayload", "SSML", "Composite"]
    #     },
    #     recent_intent_summary_view: [
    #       {
    #         intent_name: 'intentName',
    #         checkpoint_label: 'checkpointLabel',
    #         confirmation_status: 'None', # accepts ["None", "Confirmed", "Denied"]
    #         dialog_action_type: 'ElicitIntent', # required - accepts ["ElicitIntent", "ConfirmIntent", "ElicitSlot", "Close", "Delegate"]
    #         fulfillment_state: 'Fulfilled', # accepts ["Fulfilled", "Failed", "ReadyForFulfillment"]
    #         slot_to_elicit: 'slotToElicit'
    #       }
    #     ],
    #     accept: 'accept',
    #     active_contexts: [
    #       {
    #         name: 'name', # required
    #         time_to_live: {
    #           time_to_live_in_seconds: 1,
    #           turns_to_live: 1
    #         }, # required
    #         parameters: {
    #           'key' => 'value'
    #         } # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutSessionOutput
    #   resp.data.content_type #=> String
    #   resp.data.intent_name #=> String
    #   resp.data.slots #=> String
    #   resp.data.session_attributes #=> String
    #   resp.data.message #=> String
    #   resp.data.encoded_message #=> String
    #   resp.data.message_format #=> String, one of ["PlainText", "CustomPayload", "SSML", "Composite"]
    #   resp.data.dialog_state #=> String, one of ["ElicitIntent", "ConfirmIntent", "ElicitSlot", "Fulfilled", "ReadyForFulfillment", "Failed"]
    #   resp.data.slot_to_elicit #=> String
    #   resp.data.audio_stream #=> String
    #   resp.data.session_id #=> String
    #   resp.data.active_contexts #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::DependencyFailedException, Errors::ConflictException, Errors::InternalFailureException, Errors::LimitExceededException, Errors::NotAcceptableException, Errors::BadGatewayException, Errors::NotFoundException]),
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

    private

    def apply_middleware(middleware_stack, middleware)
      Client.middleware.apply(middleware_stack)
      @middleware.apply(middleware_stack)
      Hearth::MiddlewareBuilder.new(middleware).apply(middleware_stack)
    end

    def output_stream(options = {}, &block)
      return options[:output_stream] if options[:output_stream]
      return Hearth::BlockIO.new(block) if block

      StringIO.new
    end
  end
end
