# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::PinpointSMSVoice
  # An API client for PinpointSMSVoice
  # See {#initialize} for a full list of supported configuration options
  # Pinpoint SMS and Voice Messaging public facing APIs
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
    def initialize(config = AWS::SDK::PinpointSMSVoice::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # Create a new configuration set. After you create the configuration set, you can add one or more event destinations to it.
    #
    # @param [Hash] params
    #   See {Types::CreateConfigurationSetInput}.
    #
    # @option params [String] :configuration_set_name
    #   The name that you want to give the configuration set.
    #
    # @return [Types::CreateConfigurationSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_configuration_set(
    #     configuration_set_name: 'ConfigurationSetName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateConfigurationSetOutput
    #
    def create_configuration_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateConfigurationSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateConfigurationSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateConfigurationSet
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AlreadyExistsException, Errors::InternalServiceErrorException, Errors::LimitExceededException, Errors::TooManyRequestsException, Errors::BadRequestException]),
        data_parser: Parsers::CreateConfigurationSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateConfigurationSet,
        stubs: @stubs,
        params_class: Params::CreateConfigurationSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_configuration_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Create a new event destination in a configuration set.
    #
    # @param [Hash] params
    #   See {Types::CreateConfigurationSetEventDestinationInput}.
    #
    # @option params [String] :configuration_set_name
    #   ConfigurationSetName
    #
    # @option params [EventDestinationDefinition] :event_destination
    #   An object that defines a single event destination.
    #
    # @option params [String] :event_destination_name
    #   A name that identifies the event destination.
    #
    # @return [Types::CreateConfigurationSetEventDestinationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_configuration_set_event_destination(
    #     configuration_set_name: 'ConfigurationSetName', # required
    #     event_destination: {
    #       cloud_watch_logs_destination: {
    #         iam_role_arn: 'IamRoleArn',
    #         log_group_arn: 'LogGroupArn'
    #       },
    #       enabled: false,
    #       kinesis_firehose_destination: {
    #         delivery_stream_arn: 'DeliveryStreamArn',
    #         iam_role_arn: 'IamRoleArn'
    #       },
    #       matching_event_types: [
    #         'INITIATED_CALL' # accepts ["INITIATED_CALL", "RINGING", "ANSWERED", "COMPLETED_CALL", "BUSY", "FAILED", "NO_ANSWER"]
    #       ],
    #       sns_destination: {
    #         topic_arn: 'TopicArn'
    #       }
    #     },
    #     event_destination_name: 'EventDestinationName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateConfigurationSetEventDestinationOutput
    #
    def create_configuration_set_event_destination(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateConfigurationSetEventDestinationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateConfigurationSetEventDestinationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateConfigurationSetEventDestination
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AlreadyExistsException, Errors::NotFoundException, Errors::InternalServiceErrorException, Errors::LimitExceededException, Errors::TooManyRequestsException, Errors::BadRequestException]),
        data_parser: Parsers::CreateConfigurationSetEventDestination
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateConfigurationSetEventDestination,
        stubs: @stubs,
        params_class: Params::CreateConfigurationSetEventDestinationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_configuration_set_event_destination
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Deletes an existing configuration set.
    #
    # @param [Hash] params
    #   See {Types::DeleteConfigurationSetInput}.
    #
    # @option params [String] :configuration_set_name
    #   ConfigurationSetName
    #
    # @return [Types::DeleteConfigurationSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_configuration_set(
    #     configuration_set_name: 'ConfigurationSetName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteConfigurationSetOutput
    #
    def delete_configuration_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteConfigurationSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteConfigurationSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteConfigurationSet
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InternalServiceErrorException, Errors::TooManyRequestsException, Errors::BadRequestException]),
        data_parser: Parsers::DeleteConfigurationSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteConfigurationSet,
        stubs: @stubs,
        params_class: Params::DeleteConfigurationSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_configuration_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Deletes an event destination in a configuration set.
    #
    # @param [Hash] params
    #   See {Types::DeleteConfigurationSetEventDestinationInput}.
    #
    # @option params [String] :configuration_set_name
    #   ConfigurationSetName
    #
    # @option params [String] :event_destination_name
    #   EventDestinationName
    #
    # @return [Types::DeleteConfigurationSetEventDestinationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_configuration_set_event_destination(
    #     configuration_set_name: 'ConfigurationSetName', # required
    #     event_destination_name: 'EventDestinationName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteConfigurationSetEventDestinationOutput
    #
    def delete_configuration_set_event_destination(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteConfigurationSetEventDestinationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteConfigurationSetEventDestinationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteConfigurationSetEventDestination
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InternalServiceErrorException, Errors::TooManyRequestsException, Errors::BadRequestException]),
        data_parser: Parsers::DeleteConfigurationSetEventDestination
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteConfigurationSetEventDestination,
        stubs: @stubs,
        params_class: Params::DeleteConfigurationSetEventDestinationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_configuration_set_event_destination
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Obtain information about an event destination, including the types of events it reports, the Amazon Resource Name (ARN) of the destination, and the name of the event destination.
    #
    # @param [Hash] params
    #   See {Types::GetConfigurationSetEventDestinationsInput}.
    #
    # @option params [String] :configuration_set_name
    #   ConfigurationSetName
    #
    # @return [Types::GetConfigurationSetEventDestinationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_configuration_set_event_destinations(
    #     configuration_set_name: 'ConfigurationSetName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetConfigurationSetEventDestinationsOutput
    #   resp.data.event_destinations #=> Array<EventDestination>
    #   resp.data.event_destinations[0] #=> Types::EventDestination
    #   resp.data.event_destinations[0].cloud_watch_logs_destination #=> Types::CloudWatchLogsDestination
    #   resp.data.event_destinations[0].cloud_watch_logs_destination.iam_role_arn #=> String
    #   resp.data.event_destinations[0].cloud_watch_logs_destination.log_group_arn #=> String
    #   resp.data.event_destinations[0].enabled #=> Boolean
    #   resp.data.event_destinations[0].kinesis_firehose_destination #=> Types::KinesisFirehoseDestination
    #   resp.data.event_destinations[0].kinesis_firehose_destination.delivery_stream_arn #=> String
    #   resp.data.event_destinations[0].kinesis_firehose_destination.iam_role_arn #=> String
    #   resp.data.event_destinations[0].matching_event_types #=> Array<String>
    #   resp.data.event_destinations[0].matching_event_types[0] #=> String, one of ["INITIATED_CALL", "RINGING", "ANSWERED", "COMPLETED_CALL", "BUSY", "FAILED", "NO_ANSWER"]
    #   resp.data.event_destinations[0].name #=> String
    #   resp.data.event_destinations[0].sns_destination #=> Types::SnsDestination
    #   resp.data.event_destinations[0].sns_destination.topic_arn #=> String
    #
    def get_configuration_set_event_destinations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetConfigurationSetEventDestinationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetConfigurationSetEventDestinationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetConfigurationSetEventDestinations
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InternalServiceErrorException, Errors::TooManyRequestsException, Errors::BadRequestException]),
        data_parser: Parsers::GetConfigurationSetEventDestinations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetConfigurationSetEventDestinations,
        stubs: @stubs,
        params_class: Params::GetConfigurationSetEventDestinationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_configuration_set_event_destinations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # List all of the configuration sets associated with your Amazon Pinpoint account in the current region.
    #
    # @param [Hash] params
    #   See {Types::ListConfigurationSetsInput}.
    #
    # @option params [String] :next_token
    #   A token returned from a previous call to the API that indicates the position in the list of results.
    #
    # @option params [String] :page_size
    #   Used to specify the number of items that should be returned in the response.
    #
    # @return [Types::ListConfigurationSetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_configuration_sets(
    #     next_token: 'NextToken',
    #     page_size: 'PageSize'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListConfigurationSetsOutput
    #   resp.data.configuration_sets #=> Array<String>
    #   resp.data.configuration_sets[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_configuration_sets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListConfigurationSetsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListConfigurationSetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListConfigurationSets
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServiceErrorException, Errors::TooManyRequestsException, Errors::BadRequestException]),
        data_parser: Parsers::ListConfigurationSets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListConfigurationSets,
        stubs: @stubs,
        params_class: Params::ListConfigurationSetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_configuration_sets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Create a new voice message and send it to a recipient's phone number.
    #
    # @param [Hash] params
    #   See {Types::SendVoiceMessageInput}.
    #
    # @option params [String] :caller_id
    #   The phone number that appears on recipients' devices when they receive the message.
    #
    # @option params [String] :configuration_set_name
    #   The name of the configuration set that you want to use to send the message.
    #
    # @option params [VoiceMessageContent] :content
    #   An object that contains a voice message and information about the recipient that you want to send it to.
    #
    # @option params [String] :destination_phone_number
    #   The phone number that you want to send the voice message to.
    #
    # @option params [String] :origination_phone_number
    #   The phone number that Amazon Pinpoint should use to send the voice message. This isn't necessarily the phone number that appears on recipients' devices when they receive the message, because you can specify a CallerId parameter in the request.
    #
    # @return [Types::SendVoiceMessageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_voice_message(
    #     caller_id: 'CallerId',
    #     configuration_set_name: 'ConfigurationSetName',
    #     content: {
    #       call_instructions_message: {
    #         text: 'Text'
    #       },
    #       plain_text_message: {
    #         language_code: 'LanguageCode',
    #         text: 'Text',
    #         voice_id: 'VoiceId'
    #       },
    #       ssml_message: {
    #         language_code: 'LanguageCode',
    #         text: 'Text',
    #         voice_id: 'VoiceId'
    #       }
    #     },
    #     destination_phone_number: 'DestinationPhoneNumber',
    #     origination_phone_number: 'OriginationPhoneNumber'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SendVoiceMessageOutput
    #   resp.data.message_id #=> String
    #
    def send_voice_message(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SendVoiceMessageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SendVoiceMessageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SendVoiceMessage
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServiceErrorException, Errors::TooManyRequestsException, Errors::BadRequestException]),
        data_parser: Parsers::SendVoiceMessage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SendVoiceMessage,
        stubs: @stubs,
        params_class: Params::SendVoiceMessageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :send_voice_message
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Update an event destination in a configuration set. An event destination is a location that you publish information about your voice calls to. For example, you can log an event to an Amazon CloudWatch destination when a call fails.
    #
    # @param [Hash] params
    #   See {Types::UpdateConfigurationSetEventDestinationInput}.
    #
    # @option params [String] :configuration_set_name
    #   ConfigurationSetName
    #
    # @option params [EventDestinationDefinition] :event_destination
    #   An object that defines a single event destination.
    #
    # @option params [String] :event_destination_name
    #   EventDestinationName
    #
    # @return [Types::UpdateConfigurationSetEventDestinationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_configuration_set_event_destination(
    #     configuration_set_name: 'ConfigurationSetName', # required
    #     event_destination: {
    #       cloud_watch_logs_destination: {
    #         iam_role_arn: 'IamRoleArn',
    #         log_group_arn: 'LogGroupArn'
    #       },
    #       enabled: false,
    #       kinesis_firehose_destination: {
    #         delivery_stream_arn: 'DeliveryStreamArn',
    #         iam_role_arn: 'IamRoleArn'
    #       },
    #       matching_event_types: [
    #         'INITIATED_CALL' # accepts ["INITIATED_CALL", "RINGING", "ANSWERED", "COMPLETED_CALL", "BUSY", "FAILED", "NO_ANSWER"]
    #       ],
    #       sns_destination: {
    #         topic_arn: 'TopicArn'
    #       }
    #     },
    #     event_destination_name: 'EventDestinationName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateConfigurationSetEventDestinationOutput
    #
    def update_configuration_set_event_destination(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateConfigurationSetEventDestinationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateConfigurationSetEventDestinationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateConfigurationSetEventDestination
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InternalServiceErrorException, Errors::TooManyRequestsException, Errors::BadRequestException]),
        data_parser: Parsers::UpdateConfigurationSetEventDestination
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateConfigurationSetEventDestination,
        stubs: @stubs,
        params_class: Params::UpdateConfigurationSetEventDestinationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_configuration_set_event_destination
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
