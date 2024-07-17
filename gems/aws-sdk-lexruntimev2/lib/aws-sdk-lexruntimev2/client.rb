# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'plugins/global_config'

module AWS::SDK::LexRuntimeV2
  # <p>This section contains documentation for the Amazon Lex V2 Runtime V2 API operations.</p>
  class Client < Hearth::Client

    # @api private
    @plugins = Hearth::PluginList.new([
      Plugins::GlobalConfig.new
    ])

    # @param [Hash] options
    #   Options used to construct an instance of {Config}
    def initialize(options = {})
      super(options, Config)
    end

    # @return [Config] config
    attr_reader :config

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
    # @param [Hash | Types::DeleteSessionInput] params
    #   Request parameters for this operation.
    #   See {Types::DeleteSessionInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.delete_session(
    #     bot_id: 'botId', # required
    #     bot_alias_id: 'botAliasId', # required
    #     locale_id: 'localeId', # required
    #     session_id: 'sessionId' # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::DeleteSessionOutput
    #   resp.data.bot_id #=> String
    #   resp.data.bot_alias_id #=> String
    #   resp.data.locale_id #=> String
    #   resp.data.session_id #=> String
    def delete_session(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      input = Params::DeleteSessionInput.build(params, context: 'params')
      stack = AWS::SDK::LexRuntimeV2::Middleware::DeleteSession.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :delete_session,
      )
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#delete_session] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.config.logger.error("[#{context.invocation_id}] [#{self.class}#delete_session] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#delete_session] #{output.data}")
      output
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
    # @param [Hash | Types::GetSessionInput] params
    #   Request parameters for this operation.
    #   See {Types::GetSessionInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.get_session(
    #     bot_id: 'botId', # required
    #     bot_alias_id: 'botAliasId', # required
    #     locale_id: 'localeId', # required
    #     session_id: 'sessionId' # required
    #   )
    # @example Response structure
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
    #   resp.data.interpretations[0].intent.slots['key'].shape #=> String, one of ["Scalar", "List", "Composite"]
    #   resp.data.interpretations[0].intent.slots['key'].member_values #=> Array<Slot>
    #   resp.data.interpretations[0].intent.slots['key'].sub_slots #=> Hash<String, Slot>
    #   resp.data.interpretations[0].intent.state #=> String, one of ["Failed", "Fulfilled", "InProgress", "ReadyForFulfillment", "Waiting", "FulfillmentInProgress"]
    #   resp.data.interpretations[0].intent.confirmation_state #=> String, one of ["Confirmed", "Denied", "None"]
    #   resp.data.interpretations[0].interpretation_source #=> String, one of ["Bedrock", "Lex"]
    #   resp.data.session_state #=> Types::SessionState
    #   resp.data.session_state.dialog_action #=> Types::DialogAction
    #   resp.data.session_state.dialog_action.type #=> String, one of ["Close", "ConfirmIntent", "Delegate", "ElicitIntent", "ElicitSlot", "None"]
    #   resp.data.session_state.dialog_action.slot_to_elicit #=> String
    #   resp.data.session_state.dialog_action.slot_elicitation_style #=> String, one of ["Default", "SpellByLetter", "SpellByWord"]
    #   resp.data.session_state.dialog_action.sub_slot_to_elicit #=> Types::ElicitSubSlot
    #   resp.data.session_state.dialog_action.sub_slot_to_elicit.name #=> String
    #   resp.data.session_state.dialog_action.sub_slot_to_elicit.sub_slot_to_elicit #=> Types::ElicitSubSlot
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
    #   resp.data.session_state.runtime_hints.slot_hints['key']['key'].sub_slot_hints #=> Hash<String, RuntimeHintDetails>
    def get_session(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      input = Params::GetSessionInput.build(params, context: 'params')
      stack = AWS::SDK::LexRuntimeV2::Middleware::GetSession.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :get_session,
      )
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_session] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.config.logger.error("[#{context.invocation_id}] [#{self.class}#get_session] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_session] #{output.data}")
      output
    end

    # <p>Creates a new session or modifies an existing session with an Amazon Lex V2
    #          bot. Use this operation to enable your application to set the state of
    #          the bot.</p>
    # @param [Hash | Types::PutSessionInput] params
    #   Request parameters for this operation.
    #   See {Types::PutSessionInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
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
    #         slot_elicitation_style: 'Default', # accepts ["Default", "SpellByLetter", "SpellByWord"]
    #         sub_slot_to_elicit: {
    #           name: 'name', # required
    #         }
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
    #             shape: 'Scalar', # accepts ["Scalar", "List", "Composite"]
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
    #               ],
    #             }
    #           }
    #         }
    #       }
    #     }, # required
    #     response_content_type: 'responseContentType'
    #   )
    # @example Response structure
    #   resp.data #=> Types::PutSessionOutput
    #   resp.data.content_type #=> String
    #   resp.data.messages #=> String
    #   resp.data.session_state #=> String
    #   resp.data.request_attributes #=> String
    #   resp.data.session_id #=> String
    #   resp.data.audio_stream #=> String
    def put_session(params = {}, options = {}, &block)
      response_body = output_stream(options, &block)
      config = operation_config(options)
      input = Params::PutSessionInput.build(params, context: 'params')
      stack = AWS::SDK::LexRuntimeV2::Middleware::PutSession.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :put_session,
      )
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#put_session] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.config.logger.error("[#{context.invocation_id}] [#{self.class}#put_session] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#put_session] #{output.data}")
      output
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
    # @param [Hash | Types::RecognizeTextInput] params
    #   Request parameters for this operation.
    #   See {Types::RecognizeTextInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
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
    #         slot_elicitation_style: 'Default', # accepts ["Default", "SpellByLetter", "SpellByWord"]
    #         sub_slot_to_elicit: {
    #           name: 'name', # required
    #         }
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
    #             shape: 'Scalar', # accepts ["Scalar", "List", "Composite"]
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
    #               ],
    #             }
    #           }
    #         }
    #       }
    #     },
    #   )
    # @example Response structure
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
    #   resp.data.session_state.dialog_action.sub_slot_to_elicit #=> Types::ElicitSubSlot
    #   resp.data.session_state.dialog_action.sub_slot_to_elicit.name #=> String
    #   resp.data.session_state.dialog_action.sub_slot_to_elicit.sub_slot_to_elicit #=> Types::ElicitSubSlot
    #   resp.data.session_state.intent #=> Types::Intent
    #   resp.data.session_state.intent.name #=> String
    #   resp.data.session_state.intent.slots #=> Hash<String, Slot>
    #   resp.data.session_state.intent.slots['key'] #=> Types::Slot
    #   resp.data.session_state.intent.slots['key'].value #=> Types::Value
    #   resp.data.session_state.intent.slots['key'].value.original_value #=> String
    #   resp.data.session_state.intent.slots['key'].value.interpreted_value #=> String
    #   resp.data.session_state.intent.slots['key'].value.resolved_values #=> Array<String>
    #   resp.data.session_state.intent.slots['key'].value.resolved_values[0] #=> String
    #   resp.data.session_state.intent.slots['key'].shape #=> String, one of ["Scalar", "List", "Composite"]
    #   resp.data.session_state.intent.slots['key'].member_values #=> Array<Slot>
    #   resp.data.session_state.intent.slots['key'].sub_slots #=> Hash<String, Slot>
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
    #   resp.data.session_state.runtime_hints.slot_hints['key']['key'].sub_slot_hints #=> Hash<String, RuntimeHintDetails>
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
    #   resp.data.interpretations[0].interpretation_source #=> String, one of ["Bedrock", "Lex"]
    #   resp.data.request_attributes #=> Hash<String, String>
    #   resp.data.session_id #=> String
    #   resp.data.recognized_bot_member #=> Types::RecognizedBotMember
    #   resp.data.recognized_bot_member.bot_id #=> String
    #   resp.data.recognized_bot_member.bot_name #=> String
    def recognize_text(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      input = Params::RecognizeTextInput.build(params, context: 'params')
      stack = AWS::SDK::LexRuntimeV2::Middleware::RecognizeText.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :recognize_text,
      )
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#recognize_text] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.config.logger.error("[#{context.invocation_id}] [#{self.class}#recognize_text] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#recognize_text] #{output.data}")
      output
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
    # @param [Hash | Types::RecognizeUtteranceInput] params
    #   Request parameters for this operation.
    #   See {Types::RecognizeUtteranceInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
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
    # @example Response structure
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
    #   resp.data.recognized_bot_member #=> String
    def recognize_utterance(params = {}, options = {}, &block)
      response_body = output_stream(options, &block)
      config = operation_config(options)
      input = Params::RecognizeUtteranceInput.build(params, context: 'params')
      stack = AWS::SDK::LexRuntimeV2::Middleware::RecognizeUtterance.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :recognize_utterance,
      )
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#recognize_utterance] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.config.logger.error("[#{context.invocation_id}] [#{self.class}#recognize_utterance] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#recognize_utterance] #{output.data}")
      output
    end

    # <p>Starts an HTTP/2 bidirectional event stream that enables you to send
    #          audio, text, or DTMF input in real time. After your application starts
    #          a conversation, users send input to Amazon Lex V2 as a stream of events. Amazon Lex V2
    #          processes the incoming events and responds with streaming text or audio
    #          events.
    #       </p>
    #          <p>Audio input must be in the following format: <code>audio/lpcm
    #             sample-rate=8000 sample-size-bits=16 channel-count=1;
    #             is-big-endian=false</code>.</p>
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
    #          <p>If the optional update message is configured, it is played at the
    #          specified frequency while the Lambda function is running and the update
    #          message state is active. If the fulfillment update message is not
    #          active, the Lambda function runs with a 30 second timeout. </p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/streaming-progress.html#progress-update.html">Update message </a>
    #          </p>
    #          <p>The <code>StartConversation</code> operation is supported only in
    #          the following SDKs: </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/goto/SdkForCpp/runtime.lex.v2-2020-08-07/StartConversation">AWS SDK for C++</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/goto/SdkForJavaV2/runtime.lex.v2-2020-08-07/StartConversation">AWS SDK for Java V2</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/goto/SdkForRubyV3/runtime.lex.v2-2020-08-07/StartConversation">AWS SDK for Ruby V3</a>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash | Types::StartConversationInput] params
    #   Request parameters for this operation.
    #   See {Types::StartConversationInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.start_conversation(
    #     bot_id: 'botId', # required
    #     bot_alias_id: 'botAliasId', # required
    #     locale_id: 'localeId', # required
    #     session_id: 'sessionId', # required
    #     conversation_mode: 'AUDIO', # accepts ["AUDIO", "TEXT"]
    #     request_event_stream: {
    #       # One of:
    #       configuration_event: {
    #         request_attributes: {
    #           'key' => 'value'
    #         },
    #         response_content_type: 'responseContentType', # required
    #         session_state: {
    #           dialog_action: {
    #             type: 'Close', # required - accepts ["Close", "ConfirmIntent", "Delegate", "ElicitIntent", "ElicitSlot", "None"]
    #             slot_to_elicit: 'slotToElicit',
    #             slot_elicitation_style: 'Default', # accepts ["Default", "SpellByLetter", "SpellByWord"]
    #             sub_slot_to_elicit: {
    #               name: 'name', # required
    #             }
    #           },
    #           intent: {
    #             name: 'name', # required
    #             slots: {
    #               'key' => {
    #                 value: {
    #                   original_value: 'originalValue',
    #                   interpreted_value: 'interpretedValue', # required
    #                   resolved_values: [
    #                     'member'
    #                   ]
    #                 },
    #                 shape: 'Scalar', # accepts ["Scalar", "List", "Composite"]
    #               }
    #             },
    #             state: 'Failed', # accepts ["Failed", "Fulfilled", "InProgress", "ReadyForFulfillment", "Waiting", "FulfillmentInProgress"]
    #             confirmation_state: 'Confirmed' # accepts ["Confirmed", "Denied", "None"]
    #           },
    #           active_contexts: [
    #             {
    #               name: 'name', # required
    #               time_to_live: {
    #                 time_to_live_in_seconds: 1, # required
    #                 turns_to_live: 1 # required
    #               }, # required
    #               context_attributes: {
    #                 'key' => 'value'
    #               } # required
    #             }
    #           ],
    #           originating_request_id: 'originatingRequestId',
    #           runtime_hints: {
    #             slot_hints: {
    #               'key' => {
    #                 'key' => {
    #                   runtime_hint_values: [
    #                     {
    #                       phrase: 'phrase' # required
    #                     }
    #                   ],
    #                 }
    #               }
    #             }
    #           }
    #         },
    #         welcome_messages: [
    #           {
    #             content: 'content',
    #             content_type: 'CustomPayload', # required - accepts ["CustomPayload", "ImageResponseCard", "PlainText", "SSML"]
    #             image_response_card: {
    #               title: 'title', # required
    #               subtitle: 'subtitle',
    #               image_url: 'imageUrl',
    #               buttons: [
    #                 {
    #                   text: 'text', # required
    #                   value: 'value' # required
    #                 }
    #               ]
    #             }
    #           }
    #         ],
    #         disable_playback: false,
    #         event_id: 'eventId',
    #         client_timestamp_millis: 1
    #       },
    #       audio_input_event: {
    #         audio_chunk: 'audioChunk',
    #         content_type: 'contentType', # required
    #         event_id: 'eventId',
    #         client_timestamp_millis: 1
    #       },
    #       dtmf_input_event: {
    #         input_character: 'inputCharacter', # required
    #         event_id: 'eventId',
    #         client_timestamp_millis: 1
    #       },
    #       text_input_event: {
    #         text: 'text', # required
    #         event_id: 'eventId',
    #         client_timestamp_millis: 1
    #       },
    #       playback_completion_event: {
    #         event_id: 'eventId',
    #         client_timestamp_millis: 1
    #       },
    #       disconnection_event: {
    #         event_id: 'eventId',
    #         client_timestamp_millis: 1
    #       }
    #     } # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::StartConversationOutput
    #   resp.data.response_event_stream #=> Types::StartConversationResponseEventStream, one of [PlaybackInterruptionEvent, TranscriptEvent, IntentResultEvent, TextResponseEvent, AudioResponseEvent, HeartbeatEvent, AccessDeniedException, ResourceNotFoundException, ValidationException, ThrottlingException, InternalServerException, ConflictException, DependencyFailedException, BadGatewayException]
    #   resp.data.response_event_stream.playback_interruption_event #=> Types::PlaybackInterruptionEvent
    #   resp.data.response_event_stream.playback_interruption_event.event_reason #=> String, one of ["DTMF_START_DETECTED", "TEXT_DETECTED", "VOICE_START_DETECTED"]
    #   resp.data.response_event_stream.playback_interruption_event.caused_by_event_id #=> String
    #   resp.data.response_event_stream.playback_interruption_event.event_id #=> String
    #   resp.data.response_event_stream.transcript_event #=> Types::TranscriptEvent
    #   resp.data.response_event_stream.transcript_event.transcript #=> String
    #   resp.data.response_event_stream.transcript_event.event_id #=> String
    #   resp.data.response_event_stream.intent_result_event #=> Types::IntentResultEvent
    #   resp.data.response_event_stream.intent_result_event.input_mode #=> String, one of ["Text", "Speech", "DTMF"]
    #   resp.data.response_event_stream.intent_result_event.interpretations #=> Array<Interpretation>
    #   resp.data.response_event_stream.intent_result_event.interpretations[0] #=> Types::Interpretation
    #   resp.data.response_event_stream.intent_result_event.interpretations[0].nlu_confidence #=> Types::ConfidenceScore
    #   resp.data.response_event_stream.intent_result_event.interpretations[0].nlu_confidence.score #=> Float
    #   resp.data.response_event_stream.intent_result_event.interpretations[0].sentiment_response #=> Types::SentimentResponse
    #   resp.data.response_event_stream.intent_result_event.interpretations[0].sentiment_response.sentiment #=> String, one of ["MIXED", "NEGATIVE", "NEUTRAL", "POSITIVE"]
    #   resp.data.response_event_stream.intent_result_event.interpretations[0].sentiment_response.sentiment_score #=> Types::SentimentScore
    #   resp.data.response_event_stream.intent_result_event.interpretations[0].sentiment_response.sentiment_score.positive #=> Float
    #   resp.data.response_event_stream.intent_result_event.interpretations[0].sentiment_response.sentiment_score.negative #=> Float
    #   resp.data.response_event_stream.intent_result_event.interpretations[0].sentiment_response.sentiment_score.neutral #=> Float
    #   resp.data.response_event_stream.intent_result_event.interpretations[0].sentiment_response.sentiment_score.mixed #=> Float
    #   resp.data.response_event_stream.intent_result_event.interpretations[0].intent #=> Types::Intent
    #   resp.data.response_event_stream.intent_result_event.interpretations[0].intent.name #=> String
    #   resp.data.response_event_stream.intent_result_event.interpretations[0].intent.slots #=> Hash<String, Slot>
    #   resp.data.response_event_stream.intent_result_event.interpretations[0].intent.slots['key'] #=> Types::Slot
    #   resp.data.response_event_stream.intent_result_event.interpretations[0].intent.slots['key'].value #=> Types::Value
    #   resp.data.response_event_stream.intent_result_event.interpretations[0].intent.slots['key'].value.original_value #=> String
    #   resp.data.response_event_stream.intent_result_event.interpretations[0].intent.slots['key'].value.interpreted_value #=> String
    #   resp.data.response_event_stream.intent_result_event.interpretations[0].intent.slots['key'].value.resolved_values #=> Array<String>
    #   resp.data.response_event_stream.intent_result_event.interpretations[0].intent.slots['key'].value.resolved_values[0] #=> String
    #   resp.data.response_event_stream.intent_result_event.interpretations[0].intent.slots['key'].shape #=> String, one of ["Scalar", "List", "Composite"]
    #   resp.data.response_event_stream.intent_result_event.interpretations[0].intent.slots['key'].member_values #=> Array<Slot>
    #   resp.data.response_event_stream.intent_result_event.interpretations[0].intent.slots['key'].sub_slots #=> Hash<String, Slot>
    #   resp.data.response_event_stream.intent_result_event.interpretations[0].intent.state #=> String, one of ["Failed", "Fulfilled", "InProgress", "ReadyForFulfillment", "Waiting", "FulfillmentInProgress"]
    #   resp.data.response_event_stream.intent_result_event.interpretations[0].intent.confirmation_state #=> String, one of ["Confirmed", "Denied", "None"]
    #   resp.data.response_event_stream.intent_result_event.interpretations[0].interpretation_source #=> String, one of ["Bedrock", "Lex"]
    #   resp.data.response_event_stream.intent_result_event.session_state #=> Types::SessionState
    #   resp.data.response_event_stream.intent_result_event.session_state.dialog_action #=> Types::DialogAction
    #   resp.data.response_event_stream.intent_result_event.session_state.dialog_action.type #=> String, one of ["Close", "ConfirmIntent", "Delegate", "ElicitIntent", "ElicitSlot", "None"]
    #   resp.data.response_event_stream.intent_result_event.session_state.dialog_action.slot_to_elicit #=> String
    #   resp.data.response_event_stream.intent_result_event.session_state.dialog_action.slot_elicitation_style #=> String, one of ["Default", "SpellByLetter", "SpellByWord"]
    #   resp.data.response_event_stream.intent_result_event.session_state.dialog_action.sub_slot_to_elicit #=> Types::ElicitSubSlot
    #   resp.data.response_event_stream.intent_result_event.session_state.dialog_action.sub_slot_to_elicit.name #=> String
    #   resp.data.response_event_stream.intent_result_event.session_state.dialog_action.sub_slot_to_elicit.sub_slot_to_elicit #=> Types::ElicitSubSlot
    #   resp.data.response_event_stream.intent_result_event.session_state.intent #=> Types::Intent
    #   resp.data.response_event_stream.intent_result_event.session_state.active_contexts #=> Array<ActiveContext>
    #   resp.data.response_event_stream.intent_result_event.session_state.active_contexts[0] #=> Types::ActiveContext
    #   resp.data.response_event_stream.intent_result_event.session_state.active_contexts[0].name #=> String
    #   resp.data.response_event_stream.intent_result_event.session_state.active_contexts[0].time_to_live #=> Types::ActiveContextTimeToLive
    #   resp.data.response_event_stream.intent_result_event.session_state.active_contexts[0].time_to_live.time_to_live_in_seconds #=> Integer
    #   resp.data.response_event_stream.intent_result_event.session_state.active_contexts[0].time_to_live.turns_to_live #=> Integer
    #   resp.data.response_event_stream.intent_result_event.session_state.active_contexts[0].context_attributes #=> Hash<String, String>
    #   resp.data.response_event_stream.intent_result_event.session_state.active_contexts[0].context_attributes['key'] #=> String
    #   resp.data.response_event_stream.intent_result_event.session_state.session_attributes #=> Hash<String, String>
    #   resp.data.response_event_stream.intent_result_event.session_state.session_attributes['key'] #=> String
    #   resp.data.response_event_stream.intent_result_event.session_state.originating_request_id #=> String
    #   resp.data.response_event_stream.intent_result_event.session_state.runtime_hints #=> Types::RuntimeHints
    #   resp.data.response_event_stream.intent_result_event.session_state.runtime_hints.slot_hints #=> Hash<String, Hash<String, RuntimeHintDetails>>
    #   resp.data.response_event_stream.intent_result_event.session_state.runtime_hints.slot_hints['key'] #=> Hash<String, RuntimeHintDetails>
    #   resp.data.response_event_stream.intent_result_event.session_state.runtime_hints.slot_hints['key']['key'] #=> Types::RuntimeHintDetails
    #   resp.data.response_event_stream.intent_result_event.session_state.runtime_hints.slot_hints['key']['key'].runtime_hint_values #=> Array<RuntimeHintValue>
    #   resp.data.response_event_stream.intent_result_event.session_state.runtime_hints.slot_hints['key']['key'].runtime_hint_values[0] #=> Types::RuntimeHintValue
    #   resp.data.response_event_stream.intent_result_event.session_state.runtime_hints.slot_hints['key']['key'].runtime_hint_values[0].phrase #=> String
    #   resp.data.response_event_stream.intent_result_event.session_state.runtime_hints.slot_hints['key']['key'].sub_slot_hints #=> Hash<String, RuntimeHintDetails>
    #   resp.data.response_event_stream.intent_result_event.request_attributes #=> Hash<String, String>
    #   resp.data.response_event_stream.intent_result_event.session_id #=> String
    #   resp.data.response_event_stream.intent_result_event.event_id #=> String
    #   resp.data.response_event_stream.intent_result_event.recognized_bot_member #=> Types::RecognizedBotMember
    #   resp.data.response_event_stream.intent_result_event.recognized_bot_member.bot_id #=> String
    #   resp.data.response_event_stream.intent_result_event.recognized_bot_member.bot_name #=> String
    #   resp.data.response_event_stream.text_response_event #=> Types::TextResponseEvent
    #   resp.data.response_event_stream.text_response_event.messages #=> Array<Message>
    #   resp.data.response_event_stream.text_response_event.messages[0] #=> Types::Message
    #   resp.data.response_event_stream.text_response_event.messages[0].content #=> String
    #   resp.data.response_event_stream.text_response_event.messages[0].content_type #=> String, one of ["CustomPayload", "ImageResponseCard", "PlainText", "SSML"]
    #   resp.data.response_event_stream.text_response_event.messages[0].image_response_card #=> Types::ImageResponseCard
    #   resp.data.response_event_stream.text_response_event.messages[0].image_response_card.title #=> String
    #   resp.data.response_event_stream.text_response_event.messages[0].image_response_card.subtitle #=> String
    #   resp.data.response_event_stream.text_response_event.messages[0].image_response_card.image_url #=> String
    #   resp.data.response_event_stream.text_response_event.messages[0].image_response_card.buttons #=> Array<Button>
    #   resp.data.response_event_stream.text_response_event.messages[0].image_response_card.buttons[0] #=> Types::Button
    #   resp.data.response_event_stream.text_response_event.messages[0].image_response_card.buttons[0].text #=> String
    #   resp.data.response_event_stream.text_response_event.messages[0].image_response_card.buttons[0].value #=> String
    #   resp.data.response_event_stream.text_response_event.event_id #=> String
    #   resp.data.response_event_stream.audio_response_event #=> Types::AudioResponseEvent
    #   resp.data.response_event_stream.audio_response_event.audio_chunk #=> String
    #   resp.data.response_event_stream.audio_response_event.content_type #=> String
    #   resp.data.response_event_stream.audio_response_event.event_id #=> String
    #   resp.data.response_event_stream.heartbeat_event #=> Types::HeartbeatEvent
    #   resp.data.response_event_stream.heartbeat_event.event_id #=> String
    #   resp.data.response_event_stream.access_denied_exception #=> Types::AccessDeniedException
    #   resp.data.response_event_stream.access_denied_exception.message #=> String
    #   resp.data.response_event_stream.resource_not_found_exception #=> Types::ResourceNotFoundException
    #   resp.data.response_event_stream.resource_not_found_exception.message #=> String
    #   resp.data.response_event_stream.validation_exception #=> Types::ValidationException
    #   resp.data.response_event_stream.validation_exception.message #=> String
    #   resp.data.response_event_stream.throttling_exception #=> Types::ThrottlingException
    #   resp.data.response_event_stream.throttling_exception.message #=> String
    #   resp.data.response_event_stream.internal_server_exception #=> Types::InternalServerException
    #   resp.data.response_event_stream.internal_server_exception.message #=> String
    #   resp.data.response_event_stream.conflict_exception #=> Types::ConflictException
    #   resp.data.response_event_stream.conflict_exception.message #=> String
    #   resp.data.response_event_stream.dependency_failed_exception #=> Types::DependencyFailedException
    #   resp.data.response_event_stream.dependency_failed_exception.message #=> String
    #   resp.data.response_event_stream.bad_gateway_exception #=> Types::BadGatewayException
    #   resp.data.response_event_stream.bad_gateway_exception.message #=> String
    def start_conversation(params = {}, options = {})
      middleware_opts = {}
      middleware_opts[:event_stream_handler] = options.delete(:event_stream_handler)
      raise ArgumentError, 'Missing `event_stream_handler`' unless middleware_opts[:event_stream_handler]
      response_body = ::StringIO.new
      config = operation_config(options)
      input = Params::StartConversationInput.build(params, context: 'params')
      stack = AWS::SDK::LexRuntimeV2::Middleware::StartConversation.build(config, middleware_opts)
      context = Hearth::Context.new(
        request: Hearth::HTTP2::Request.new(uri: URI('')),
        response: Hearth::HTTP2::Response.new(body: response_body),
        config: config,
        operation_name: :start_conversation,
      )
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#start_conversation] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.config.logger.error("[#{context.invocation_id}] [#{self.class}#start_conversation] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#start_conversation] #{output.data}")
      output
    end
  end
end
