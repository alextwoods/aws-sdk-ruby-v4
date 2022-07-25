# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::IoTEventsData
  # An API client for IotColumboDataService
  # See {#initialize} for a full list of supported configuration options
  # <p>IoT Events monitors your equipment or device fleets for failures or changes in operation, and
  #       triggers actions when such events occur. You can use IoT Events Data API commands to send inputs to
  #       detectors, list detectors, and view or update a detector's status.</p>
  #          <p> For more information, see <a href="https://docs.aws.amazon.com/iotevents/latest/developerguide/what-is-iotevents.html">What is IoT Events?</a> in the
  #         <i>IoT Events Developer Guide</i>.</p>
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
    def initialize(config = AWS::SDK::IoTEventsData::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Acknowledges one or more alarms. The alarms change to the <code>ACKNOWLEDGED</code> state
    #       after you acknowledge them.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchAcknowledgeAlarmInput}.
    #
    # @option params [Array<AcknowledgeAlarmActionRequest>] :acknowledge_action_requests
    #   <p>The list of acknowledge action requests. You can specify up to 10 requests per operation.</p>
    #
    # @return [Types::BatchAcknowledgeAlarmOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_acknowledge_alarm(
    #     acknowledge_action_requests: [
    #       {
    #         request_id: 'requestId', # required
    #         alarm_model_name: 'alarmModelName', # required
    #         key_value: 'keyValue',
    #         note: 'note'
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchAcknowledgeAlarmOutput
    #   resp.data.error_entries #=> Array<BatchAlarmActionErrorEntry>
    #   resp.data.error_entries[0] #=> Types::BatchAlarmActionErrorEntry
    #   resp.data.error_entries[0].request_id #=> String
    #   resp.data.error_entries[0].error_code #=> String, one of ["ResourceNotFoundException", "InvalidRequestException", "InternalFailureException", "ServiceUnavailableException", "ThrottlingException"]
    #   resp.data.error_entries[0].error_message #=> String
    #
    def batch_acknowledge_alarm(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchAcknowledgeAlarmInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchAcknowledgeAlarmInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchAcknowledgeAlarm
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::ServiceUnavailableException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalFailureException]),
        data_parser: Parsers::BatchAcknowledgeAlarm
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchAcknowledgeAlarm,
        stubs: @stubs,
        params_class: Params::BatchAcknowledgeAlarmOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_acknowledge_alarm
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes one or more detectors that were created. When a detector is deleted, its state will be cleared and the detector will be removed from the list of detectors. The deleted detector will no longer appear if referenced in the <a href="https://docs.aws.amazon.com/iotevents/latest/apireference/API_iotevents-data_ListDetectors.html">ListDetectors</a> API call.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchDeleteDetectorInput}.
    #
    # @option params [Array<DeleteDetectorRequest>] :detectors
    #   <p>The list of one or more detectors to be deleted.</p>
    #
    # @return [Types::BatchDeleteDetectorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_delete_detector(
    #     detectors: [
    #       {
    #         message_id: 'messageId', # required
    #         detector_model_name: 'detectorModelName', # required
    #         key_value: 'keyValue'
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchDeleteDetectorOutput
    #   resp.data.batch_delete_detector_error_entries #=> Array<BatchDeleteDetectorErrorEntry>
    #   resp.data.batch_delete_detector_error_entries[0] #=> Types::BatchDeleteDetectorErrorEntry
    #   resp.data.batch_delete_detector_error_entries[0].message_id #=> String
    #   resp.data.batch_delete_detector_error_entries[0].error_code #=> String, one of ["ResourceNotFoundException", "InvalidRequestException", "InternalFailureException", "ServiceUnavailableException", "ThrottlingException"]
    #   resp.data.batch_delete_detector_error_entries[0].error_message #=> String
    #
    def batch_delete_detector(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchDeleteDetectorInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchDeleteDetectorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchDeleteDetector
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceUnavailableException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalFailureException]),
        data_parser: Parsers::BatchDeleteDetector
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchDeleteDetector,
        stubs: @stubs,
        params_class: Params::BatchDeleteDetectorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_delete_detector
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disables one or more alarms. The alarms change to the <code>DISABLED</code> state after
    #       you disable them.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchDisableAlarmInput}.
    #
    # @option params [Array<DisableAlarmActionRequest>] :disable_action_requests
    #   <p>The list of disable action requests. You can specify up to 10 requests per operation.</p>
    #
    # @return [Types::BatchDisableAlarmOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_disable_alarm(
    #     disable_action_requests: [
    #       {
    #         request_id: 'requestId', # required
    #         alarm_model_name: 'alarmModelName', # required
    #         key_value: 'keyValue',
    #         note: 'note'
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchDisableAlarmOutput
    #   resp.data.error_entries #=> Array<BatchAlarmActionErrorEntry>
    #   resp.data.error_entries[0] #=> Types::BatchAlarmActionErrorEntry
    #   resp.data.error_entries[0].request_id #=> String
    #   resp.data.error_entries[0].error_code #=> String, one of ["ResourceNotFoundException", "InvalidRequestException", "InternalFailureException", "ServiceUnavailableException", "ThrottlingException"]
    #   resp.data.error_entries[0].error_message #=> String
    #
    def batch_disable_alarm(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchDisableAlarmInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchDisableAlarmInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchDisableAlarm
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::ServiceUnavailableException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalFailureException]),
        data_parser: Parsers::BatchDisableAlarm
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchDisableAlarm,
        stubs: @stubs,
        params_class: Params::BatchDisableAlarmOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_disable_alarm
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Enables one or more alarms. The alarms change to the <code>NORMAL</code> state after you
    #       enable them.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchEnableAlarmInput}.
    #
    # @option params [Array<EnableAlarmActionRequest>] :enable_action_requests
    #   <p>The list of enable action requests. You can specify up to 10 requests per operation.</p>
    #
    # @return [Types::BatchEnableAlarmOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_enable_alarm(
    #     enable_action_requests: [
    #       {
    #         request_id: 'requestId', # required
    #         alarm_model_name: 'alarmModelName', # required
    #         key_value: 'keyValue',
    #         note: 'note'
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchEnableAlarmOutput
    #   resp.data.error_entries #=> Array<BatchAlarmActionErrorEntry>
    #   resp.data.error_entries[0] #=> Types::BatchAlarmActionErrorEntry
    #   resp.data.error_entries[0].request_id #=> String
    #   resp.data.error_entries[0].error_code #=> String, one of ["ResourceNotFoundException", "InvalidRequestException", "InternalFailureException", "ServiceUnavailableException", "ThrottlingException"]
    #   resp.data.error_entries[0].error_message #=> String
    #
    def batch_enable_alarm(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchEnableAlarmInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchEnableAlarmInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchEnableAlarm
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::ServiceUnavailableException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalFailureException]),
        data_parser: Parsers::BatchEnableAlarm
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchEnableAlarm,
        stubs: @stubs,
        params_class: Params::BatchEnableAlarmOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_enable_alarm
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sends a set of messages to the IoT Events system. Each message payload is transformed into
    #       the input you specify (<code>"inputName"</code>) and ingested into any detectors that monitor
    #       that input. If multiple messages are sent, the order in which the messages are processed isn't
    #       guaranteed. To guarantee ordering, you must send messages one at a time and wait for a
    #       successful response.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchPutMessageInput}.
    #
    # @option params [Array<Message>] :messages
    #   <p>The list of messages to send. Each message has the following format: <code>'{ "messageId":
    #           "string", "inputName": "string", "payload": "string"}'</code>
    #            </p>
    #
    # @return [Types::BatchPutMessageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_put_message(
    #     messages: [
    #       {
    #         message_id: 'messageId', # required
    #         input_name: 'inputName', # required
    #         payload: 'payload', # required
    #         timestamp: {
    #           time_in_millis: 1
    #         }
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchPutMessageOutput
    #   resp.data.batch_put_message_error_entries #=> Array<BatchPutMessageErrorEntry>
    #   resp.data.batch_put_message_error_entries[0] #=> Types::BatchPutMessageErrorEntry
    #   resp.data.batch_put_message_error_entries[0].message_id #=> String
    #   resp.data.batch_put_message_error_entries[0].error_code #=> String, one of ["ResourceNotFoundException", "InvalidRequestException", "InternalFailureException", "ServiceUnavailableException", "ThrottlingException"]
    #   resp.data.batch_put_message_error_entries[0].error_message #=> String
    #
    def batch_put_message(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchPutMessageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchPutMessageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchPutMessage
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceUnavailableException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalFailureException]),
        data_parser: Parsers::BatchPutMessage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchPutMessage,
        stubs: @stubs,
        params_class: Params::BatchPutMessageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_put_message
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Resets one or more alarms. The alarms return to the <code>NORMAL</code> state after you
    #       reset them.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchResetAlarmInput}.
    #
    # @option params [Array<ResetAlarmActionRequest>] :reset_action_requests
    #   <p>The list of reset action requests. You can specify up to 10 requests per operation.</p>
    #
    # @return [Types::BatchResetAlarmOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_reset_alarm(
    #     reset_action_requests: [
    #       {
    #         request_id: 'requestId', # required
    #         alarm_model_name: 'alarmModelName', # required
    #         key_value: 'keyValue',
    #         note: 'note'
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchResetAlarmOutput
    #   resp.data.error_entries #=> Array<BatchAlarmActionErrorEntry>
    #   resp.data.error_entries[0] #=> Types::BatchAlarmActionErrorEntry
    #   resp.data.error_entries[0].request_id #=> String
    #   resp.data.error_entries[0].error_code #=> String, one of ["ResourceNotFoundException", "InvalidRequestException", "InternalFailureException", "ServiceUnavailableException", "ThrottlingException"]
    #   resp.data.error_entries[0].error_message #=> String
    #
    def batch_reset_alarm(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchResetAlarmInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchResetAlarmInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchResetAlarm
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::ServiceUnavailableException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalFailureException]),
        data_parser: Parsers::BatchResetAlarm
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchResetAlarm,
        stubs: @stubs,
        params_class: Params::BatchResetAlarmOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_reset_alarm
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Changes one or more alarms to the snooze mode. The alarms change to the
    #         <code>SNOOZE_DISABLED</code> state after you set them to the snooze mode.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchSnoozeAlarmInput}.
    #
    # @option params [Array<SnoozeAlarmActionRequest>] :snooze_action_requests
    #   <p>The list of snooze action requests. You can specify up to 10 requests per operation.</p>
    #
    # @return [Types::BatchSnoozeAlarmOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_snooze_alarm(
    #     snooze_action_requests: [
    #       {
    #         request_id: 'requestId', # required
    #         alarm_model_name: 'alarmModelName', # required
    #         key_value: 'keyValue',
    #         note: 'note',
    #         snooze_duration: 1 # required
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchSnoozeAlarmOutput
    #   resp.data.error_entries #=> Array<BatchAlarmActionErrorEntry>
    #   resp.data.error_entries[0] #=> Types::BatchAlarmActionErrorEntry
    #   resp.data.error_entries[0].request_id #=> String
    #   resp.data.error_entries[0].error_code #=> String, one of ["ResourceNotFoundException", "InvalidRequestException", "InternalFailureException", "ServiceUnavailableException", "ThrottlingException"]
    #   resp.data.error_entries[0].error_message #=> String
    #
    def batch_snooze_alarm(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchSnoozeAlarmInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchSnoozeAlarmInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchSnoozeAlarm
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::ServiceUnavailableException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalFailureException]),
        data_parser: Parsers::BatchSnoozeAlarm
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchSnoozeAlarm,
        stubs: @stubs,
        params_class: Params::BatchSnoozeAlarmOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_snooze_alarm
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the state, variable values, and timer settings of one or more detectors
    #       (instances) of a specified detector model.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchUpdateDetectorInput}.
    #
    # @option params [Array<UpdateDetectorRequest>] :detectors
    #   <p>The list of detectors (instances) to update, along with the values to update.</p>
    #
    # @return [Types::BatchUpdateDetectorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_update_detector(
    #     detectors: [
    #       {
    #         message_id: 'messageId', # required
    #         detector_model_name: 'detectorModelName', # required
    #         key_value: 'keyValue',
    #         state: {
    #           state_name: 'stateName', # required
    #           variables: [
    #             {
    #               name: 'name', # required
    #               value: 'value' # required
    #             }
    #           ], # required
    #           timers: [
    #             {
    #               name: 'name', # required
    #               seconds: 1 # required
    #             }
    #           ] # required
    #         } # required
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchUpdateDetectorOutput
    #   resp.data.batch_update_detector_error_entries #=> Array<BatchUpdateDetectorErrorEntry>
    #   resp.data.batch_update_detector_error_entries[0] #=> Types::BatchUpdateDetectorErrorEntry
    #   resp.data.batch_update_detector_error_entries[0].message_id #=> String
    #   resp.data.batch_update_detector_error_entries[0].error_code #=> String, one of ["ResourceNotFoundException", "InvalidRequestException", "InternalFailureException", "ServiceUnavailableException", "ThrottlingException"]
    #   resp.data.batch_update_detector_error_entries[0].error_message #=> String
    #
    def batch_update_detector(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchUpdateDetectorInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchUpdateDetectorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchUpdateDetector
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceUnavailableException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalFailureException]),
        data_parser: Parsers::BatchUpdateDetector
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchUpdateDetector,
        stubs: @stubs,
        params_class: Params::BatchUpdateDetectorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_update_detector
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about an alarm.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAlarmInput}.
    #
    # @option params [String] :alarm_model_name
    #   <p>The name of the alarm model.</p>
    #
    # @option params [String] :key_value
    #   <p>The value of the key used as a filter to select only the alarms associated with the
    #   <a href="https://docs.aws.amazon.com/iotevents/latest/apireference/API_CreateAlarmModel.html#iotevents-CreateAlarmModel-request-key">key</a>.</p>
    #
    # @return [Types::DescribeAlarmOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_alarm(
    #     alarm_model_name: 'alarmModelName', # required
    #     key_value: 'keyValue'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAlarmOutput
    #   resp.data.alarm #=> Types::Alarm
    #   resp.data.alarm.alarm_model_name #=> String
    #   resp.data.alarm.alarm_model_version #=> String
    #   resp.data.alarm.key_value #=> String
    #   resp.data.alarm.alarm_state #=> Types::AlarmState
    #   resp.data.alarm.alarm_state.state_name #=> String, one of ["DISABLED", "NORMAL", "ACTIVE", "ACKNOWLEDGED", "SNOOZE_DISABLED", "LATCHED"]
    #   resp.data.alarm.alarm_state.rule_evaluation #=> Types::RuleEvaluation
    #   resp.data.alarm.alarm_state.rule_evaluation.simple_rule_evaluation #=> Types::SimpleRuleEvaluation
    #   resp.data.alarm.alarm_state.rule_evaluation.simple_rule_evaluation.input_property_value #=> String
    #   resp.data.alarm.alarm_state.rule_evaluation.simple_rule_evaluation.operator #=> String, one of ["GREATER", "GREATER_OR_EQUAL", "LESS", "LESS_OR_EQUAL", "EQUAL", "NOT_EQUAL"]
    #   resp.data.alarm.alarm_state.rule_evaluation.simple_rule_evaluation.threshold_value #=> String
    #   resp.data.alarm.alarm_state.customer_action #=> Types::CustomerAction
    #   resp.data.alarm.alarm_state.customer_action.action_name #=> String, one of ["SNOOZE", "ENABLE", "DISABLE", "ACKNOWLEDGE", "RESET"]
    #   resp.data.alarm.alarm_state.customer_action.snooze_action_configuration #=> Types::SnoozeActionConfiguration
    #   resp.data.alarm.alarm_state.customer_action.snooze_action_configuration.snooze_duration #=> Integer
    #   resp.data.alarm.alarm_state.customer_action.snooze_action_configuration.note #=> String
    #   resp.data.alarm.alarm_state.customer_action.enable_action_configuration #=> Types::EnableActionConfiguration
    #   resp.data.alarm.alarm_state.customer_action.enable_action_configuration.note #=> String
    #   resp.data.alarm.alarm_state.customer_action.disable_action_configuration #=> Types::DisableActionConfiguration
    #   resp.data.alarm.alarm_state.customer_action.disable_action_configuration.note #=> String
    #   resp.data.alarm.alarm_state.customer_action.acknowledge_action_configuration #=> Types::AcknowledgeActionConfiguration
    #   resp.data.alarm.alarm_state.customer_action.acknowledge_action_configuration.note #=> String
    #   resp.data.alarm.alarm_state.customer_action.reset_action_configuration #=> Types::ResetActionConfiguration
    #   resp.data.alarm.alarm_state.customer_action.reset_action_configuration.note #=> String
    #   resp.data.alarm.alarm_state.system_event #=> Types::SystemEvent
    #   resp.data.alarm.alarm_state.system_event.event_type #=> String, one of ["STATE_CHANGE"]
    #   resp.data.alarm.alarm_state.system_event.state_change_configuration #=> Types::StateChangeConfiguration
    #   resp.data.alarm.alarm_state.system_event.state_change_configuration.trigger_type #=> String, one of ["SNOOZE_TIMEOUT"]
    #   resp.data.alarm.severity #=> Integer
    #   resp.data.alarm.creation_time #=> Time
    #   resp.data.alarm.last_update_time #=> Time
    #
    def describe_alarm(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAlarmInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAlarmInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAlarm
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalFailureException]),
        data_parser: Parsers::DescribeAlarm
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAlarm,
        stubs: @stubs,
        params_class: Params::DescribeAlarmOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_alarm
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about the specified detector (instance).</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDetectorInput}.
    #
    # @option params [String] :detector_model_name
    #   <p>The name of the detector model whose detectors (instances) you want information
    #         about.</p>
    #
    # @option params [String] :key_value
    #   <p>A filter used to limit results to detectors (instances) created because of the given key
    #         ID.</p>
    #
    # @return [Types::DescribeDetectorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_detector(
    #     detector_model_name: 'detectorModelName', # required
    #     key_value: 'keyValue'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDetectorOutput
    #   resp.data.detector #=> Types::Detector
    #   resp.data.detector.detector_model_name #=> String
    #   resp.data.detector.key_value #=> String
    #   resp.data.detector.detector_model_version #=> String
    #   resp.data.detector.state #=> Types::DetectorState
    #   resp.data.detector.state.state_name #=> String
    #   resp.data.detector.state.variables #=> Array<Variable>
    #   resp.data.detector.state.variables[0] #=> Types::Variable
    #   resp.data.detector.state.variables[0].name #=> String
    #   resp.data.detector.state.variables[0].value #=> String
    #   resp.data.detector.state.timers #=> Array<Timer>
    #   resp.data.detector.state.timers[0] #=> Types::Timer
    #   resp.data.detector.state.timers[0].name #=> String
    #   resp.data.detector.state.timers[0].timestamp #=> Time
    #   resp.data.detector.creation_time #=> Time
    #   resp.data.detector.last_update_time #=> Time
    #
    def describe_detector(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDetectorInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDetectorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDetector
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalFailureException]),
        data_parser: Parsers::DescribeDetector
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDetector,
        stubs: @stubs,
        params_class: Params::DescribeDetectorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_detector
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists one or more alarms. The operation returns only the metadata associated with each
    #       alarm.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAlarmsInput}.
    #
    # @option params [String] :alarm_model_name
    #   <p>The name of the alarm model.</p>
    #
    # @option params [String] :next_token
    #   <p>The token that you can use to return the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned per request.</p>
    #
    # @return [Types::ListAlarmsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_alarms(
    #     alarm_model_name: 'alarmModelName', # required
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAlarmsOutput
    #   resp.data.alarm_summaries #=> Array<AlarmSummary>
    #   resp.data.alarm_summaries[0] #=> Types::AlarmSummary
    #   resp.data.alarm_summaries[0].alarm_model_name #=> String
    #   resp.data.alarm_summaries[0].alarm_model_version #=> String
    #   resp.data.alarm_summaries[0].key_value #=> String
    #   resp.data.alarm_summaries[0].state_name #=> String, one of ["DISABLED", "NORMAL", "ACTIVE", "ACKNOWLEDGED", "SNOOZE_DISABLED", "LATCHED"]
    #   resp.data.alarm_summaries[0].creation_time #=> Time
    #   resp.data.alarm_summaries[0].last_update_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_alarms(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAlarmsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAlarmsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAlarms
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalFailureException]),
        data_parser: Parsers::ListAlarms
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAlarms,
        stubs: @stubs,
        params_class: Params::ListAlarmsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_alarms
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists detectors (the instances of a detector model).</p>
    #
    # @param [Hash] params
    #   See {Types::ListDetectorsInput}.
    #
    # @option params [String] :detector_model_name
    #   <p>The name of the detector model whose detectors (instances) are listed.</p>
    #
    # @option params [String] :state_name
    #   <p>A filter that limits results to those detectors (instances) in the given state.</p>
    #
    # @option params [String] :next_token
    #   <p>The token that you can use to return the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned per request.</p>
    #
    # @return [Types::ListDetectorsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_detectors(
    #     detector_model_name: 'detectorModelName', # required
    #     state_name: 'stateName',
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDetectorsOutput
    #   resp.data.detector_summaries #=> Array<DetectorSummary>
    #   resp.data.detector_summaries[0] #=> Types::DetectorSummary
    #   resp.data.detector_summaries[0].detector_model_name #=> String
    #   resp.data.detector_summaries[0].key_value #=> String
    #   resp.data.detector_summaries[0].detector_model_version #=> String
    #   resp.data.detector_summaries[0].state #=> Types::DetectorStateSummary
    #   resp.data.detector_summaries[0].state.state_name #=> String
    #   resp.data.detector_summaries[0].creation_time #=> Time
    #   resp.data.detector_summaries[0].last_update_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_detectors(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDetectorsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDetectorsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDetectors
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceUnavailableException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InvalidRequestException, Errors::InternalFailureException]),
        data_parser: Parsers::ListDetectors
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDetectors,
        stubs: @stubs,
        params_class: Params::ListDetectorsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_detectors
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
