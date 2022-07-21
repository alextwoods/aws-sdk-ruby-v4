# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::PinpointSMSVoiceV2
  # An API client for PinpointSMSVoiceV2
  # See {#initialize} for a full list of supported configuration options
  # <p>Welcome to the <i>Amazon Pinpoint SMS and Voice, version 2 API Reference</i>.
  #             This guide provides information about Amazon Pinpoint SMS and Voice, version 2 API
  #             resources, including supported HTTP methods, parameters, and schemas.</p>
  #         <p>Amazon Pinpoint is an Amazon Web Services service that you can use to engage with
  #             your recipients across multiple messaging channels. The Amazon Pinpoint SMS and
  #             Voice, version 2 API provides programmatic access to options that are unique to the SMS
  #             and voice channels and supplements the resources provided by the Amazon Pinpoint
  #             API.</p>
  #         <p>If you're new to Amazon Pinpoint, it's also helpful to review the <a href="https://docs.aws.amazon.com/pinpoint/latest/developerguide/welcome.html">
  #                 Amazon Pinpoint Developer Guide</a>. The <i>Amazon Pinpoint
  #                 Developer Guide</i> provides tutorials, code samples, and procedures that
  #             demonstrate how to use Amazon Pinpoint features programmatically and how to integrate
  #                 Amazon Pinpoint functionality into mobile apps and other types of applications.
  #             The guide also provides key information, such as Amazon Pinpoint integration with
  #             other Amazon Web Services services, and the quotas that apply to use of the
  #             service.</p>
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
    def initialize(config = AWS::SDK::PinpointSMSVoiceV2::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Associates the specified origination identity with a pool.</p>
    #         <p>If the origination identity is a phone number and is already associated with another
    #             pool, an Error is returned. A sender ID can be associated with multiple pools.</p>
    #         <p>If the origination identity configuration doesn't match the pool's configuration, an
    #             Error is returned.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateOriginationIdentityInput}.
    #
    # @option params [String] :pool_id
    #   <p>The pool to update with the new Identity. This value can be either the PoolId or
    #               PoolArn, and you can find these values using <a>DescribePools</a>.</p>
    #
    # @option params [String] :origination_identity
    #   <p>The origination identity to use, such as PhoneNumberId, PhoneNumberArn, SenderId, or
    #               SenderIdArn. You can use <a>DescribePhoneNumbers</a> to find the values for
    #               PhoneNumberId and PhoneNumberArn, while <a>DescribeSenderIds</a> can be used
    #               to get the values for SenderId and SenderIdArn.</p>
    #
    # @option params [String] :iso_country_code
    #   <p>The new two-character code, in ISO 3166-1 alpha-2 format, for the country or region of
    #               the origination identity.</p>
    #
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If you don't specify a client token, a randomly generated token is used for the
    #               request to ensure idempotency.</p>
    #
    # @return [Types::AssociateOriginationIdentityOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_origination_identity(
    #     pool_id: 'PoolId', # required
    #     origination_identity: 'OriginationIdentity', # required
    #     iso_country_code: 'IsoCountryCode', # required
    #     client_token: 'ClientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateOriginationIdentityOutput
    #   resp.data.pool_arn #=> String
    #   resp.data.pool_id #=> String
    #   resp.data.origination_identity_arn #=> String
    #   resp.data.origination_identity #=> String
    #   resp.data.iso_country_code #=> String
    #
    def associate_origination_identity(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateOriginationIdentityInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateOriginationIdentityInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateOriginationIdentity
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ConflictException, Errors::ThrottlingException, Errors::ValidationException, Errors::AccessDeniedException]),
        data_parser: Parsers::AssociateOriginationIdentity
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateOriginationIdentity,
        stubs: @stubs,
        params_class: Params::AssociateOriginationIdentityOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_origination_identity
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new configuration set. After you create the configuration set, you can add
    #             one or more event destinations to it.</p>
    #         <p>A configuration set is a set of rules that you apply to the SMS and voice messages
    #             that you send.</p>
    #         <p>When you send a message, you can optionally specify a single configuration set.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateConfigurationSetInput}.
    #
    # @option params [String] :configuration_set_name
    #   <p>The name to use for the new configuration set.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>An array of key and value pair tags that's associated with the new configuration set. </p>
    #
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If you don't specify a client token, a randomly generated token is used for the
    #               request to ensure idempotency.</p>
    #
    # @return [Types::CreateConfigurationSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_configuration_set(
    #     configuration_set_name: 'ConfigurationSetName', # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     client_token: 'ClientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateConfigurationSetOutput
    #   resp.data.configuration_set_arn #=> String
    #   resp.data.configuration_set_name #=> String
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #   resp.data.created_timestamp #=> Time
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::InternalServerException, Errors::ConflictException, Errors::ThrottlingException, Errors::ValidationException, Errors::AccessDeniedException]),
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

    # <p>Creates a new event destination in a configuration set.</p>
    #         <p>An event destination is a location where you send message events. The event options
    #             are Amazon CloudWatch, Amazon Kinesis Data Firehose, or Amazon SNS. For example,
    #             when a message is delivered successfully, you can send information about that event to
    #             an event destination, or send notifications to endpoints that are subscribed to an
    #                 Amazon SNS topic.</p>
    #         <p>Each configuration set can contain between 0 and 5 event destinations. Each event
    #             destination can contain a reference to a single destination, such as a CloudWatch
    #             or Kinesis Data Firehose destination.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateEventDestinationInput}.
    #
    # @option params [String] :configuration_set_name
    #   <p>Either the name of the configuration set or the configuration set ARN to apply event
    #               logging to. The ConfigurateSetName and ConfigurationSetArn can be found using the <a>DescribeConfigurationSets</a> action.</p>
    #
    # @option params [String] :event_destination_name
    #   <p>The name that identifies the event destination.</p>
    #
    # @option params [Array<String>] :matching_event_types
    #   <p>An array of event types that determine which events to log. If "ALL" is used, then
    #                   Amazon Pinpoint logs every event type.</p>
    #
    # @option params [CloudWatchLogsDestination] :cloud_watch_logs_destination
    #   <p>An object that contains information about an event destination for logging to Amazon
    #               CloudWatch logs.</p>
    #
    # @option params [KinesisFirehoseDestination] :kinesis_firehose_destination
    #   <p>An object that contains information about an event destination for logging to Amazon
    #               Kinesis Data Firehose.</p>
    #
    # @option params [SnsDestination] :sns_destination
    #   <p>An object that contains information about an event destination for logging to Amazon SNS.</p>
    #
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If you don't specify a client token, a randomly generated token is used for the
    #               request to ensure idempotency.</p>
    #
    # @return [Types::CreateEventDestinationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_event_destination(
    #     configuration_set_name: 'ConfigurationSetName', # required
    #     event_destination_name: 'EventDestinationName', # required
    #     matching_event_types: [
    #       'ALL' # accepts ["ALL", "TEXT_ALL", "TEXT_SENT", "TEXT_PENDING", "TEXT_QUEUED", "TEXT_SUCCESSFUL", "TEXT_DELIVERED", "TEXT_INVALID", "TEXT_INVALID_MESSAGE", "TEXT_UNREACHABLE", "TEXT_CARRIER_UNREACHABLE", "TEXT_BLOCKED", "TEXT_CARRIER_BLOCKED", "TEXT_SPAM", "TEXT_UNKNOWN", "TEXT_TTL_EXPIRED", "VOICE_ALL", "VOICE_INITIATED", "VOICE_RINGING", "VOICE_ANSWERED", "VOICE_COMPLETED", "VOICE_BUSY", "VOICE_NO_ANSWER", "VOICE_FAILED", "VOICE_TTL_EXPIRED"]
    #     ], # required
    #     cloud_watch_logs_destination: {
    #       iam_role_arn: 'IamRoleArn', # required
    #       log_group_arn: 'LogGroupArn' # required
    #     },
    #     kinesis_firehose_destination: {
    #       iam_role_arn: 'IamRoleArn', # required
    #       delivery_stream_arn: 'DeliveryStreamArn' # required
    #     },
    #     sns_destination: {
    #       topic_arn: 'TopicArn' # required
    #     },
    #     client_token: 'ClientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateEventDestinationOutput
    #   resp.data.configuration_set_arn #=> String
    #   resp.data.configuration_set_name #=> String
    #   resp.data.event_destination #=> Types::EventDestination
    #   resp.data.event_destination.event_destination_name #=> String
    #   resp.data.event_destination.enabled #=> Boolean
    #   resp.data.event_destination.matching_event_types #=> Array<String>
    #   resp.data.event_destination.matching_event_types[0] #=> String, one of ["ALL", "TEXT_ALL", "TEXT_SENT", "TEXT_PENDING", "TEXT_QUEUED", "TEXT_SUCCESSFUL", "TEXT_DELIVERED", "TEXT_INVALID", "TEXT_INVALID_MESSAGE", "TEXT_UNREACHABLE", "TEXT_CARRIER_UNREACHABLE", "TEXT_BLOCKED", "TEXT_CARRIER_BLOCKED", "TEXT_SPAM", "TEXT_UNKNOWN", "TEXT_TTL_EXPIRED", "VOICE_ALL", "VOICE_INITIATED", "VOICE_RINGING", "VOICE_ANSWERED", "VOICE_COMPLETED", "VOICE_BUSY", "VOICE_NO_ANSWER", "VOICE_FAILED", "VOICE_TTL_EXPIRED"]
    #   resp.data.event_destination.cloud_watch_logs_destination #=> Types::CloudWatchLogsDestination
    #   resp.data.event_destination.cloud_watch_logs_destination.iam_role_arn #=> String
    #   resp.data.event_destination.cloud_watch_logs_destination.log_group_arn #=> String
    #   resp.data.event_destination.kinesis_firehose_destination #=> Types::KinesisFirehoseDestination
    #   resp.data.event_destination.kinesis_firehose_destination.iam_role_arn #=> String
    #   resp.data.event_destination.kinesis_firehose_destination.delivery_stream_arn #=> String
    #   resp.data.event_destination.sns_destination #=> Types::SnsDestination
    #   resp.data.event_destination.sns_destination.topic_arn #=> String
    #
    def create_event_destination(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateEventDestinationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateEventDestinationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateEventDestination
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ConflictException, Errors::ThrottlingException, Errors::ValidationException, Errors::AccessDeniedException]),
        data_parser: Parsers::CreateEventDestination
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateEventDestination,
        stubs: @stubs,
        params_class: Params::CreateEventDestinationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_event_destination
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new opt-out list.</p>
    #         <p>If the opt-out list name already exists, an Error is returned.</p>
    #         <p>An opt-out list is a list of phone numbers that are opted out, meaning you can't send
    #             SMS or voice messages to them. If end user replies with the keyword "STOP," an entry for
    #             the phone number is added to the opt-out list. In addition to STOP, your recipients can
    #             use any supported opt-out keyword, such as CANCEL or OPTOUT. For a list of supported
    #             opt-out keywords, see <a href="https://docs.aws.amazon.com/pinpoint/latest/userguide/channels-sms-manage.html#channels-sms-manage-optout">
    #                 SMS opt out </a> in the <i>Amazon Pinpoint User
    #             Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateOptOutListInput}.
    #
    # @option params [String] :opt_out_list_name
    #   <p>The name of the new OptOutList.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>An array of tags (key and value pairs) to associate with the new OptOutList.</p>
    #
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If you don't specify a client token, a randomly generated token is used for the
    #               request to ensure idempotency.</p>
    #
    # @return [Types::CreateOptOutListOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_opt_out_list(
    #     opt_out_list_name: 'OptOutListName', # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     client_token: 'ClientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateOptOutListOutput
    #   resp.data.opt_out_list_arn #=> String
    #   resp.data.opt_out_list_name #=> String
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #   resp.data.created_timestamp #=> Time
    #
    def create_opt_out_list(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateOptOutListInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateOptOutListInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateOptOutList
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::InternalServerException, Errors::ConflictException, Errors::ThrottlingException, Errors::ValidationException, Errors::AccessDeniedException]),
        data_parser: Parsers::CreateOptOutList
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateOptOutList,
        stubs: @stubs,
        params_class: Params::CreateOptOutListOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_opt_out_list
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new pool and associates the specified origination identity to the pool. A
    #             pool can include one or more phone numbers and SenderIds that are associated with your
    #                 Amazon Web Services account.</p>
    #         <p>The new pool inherits its configuration from the specified origination identity. This
    #             includes keywords, message type, opt-out list, two-way configuration, and self-managed
    #             opt-out configuration. Deletion protection isn't inherited from the origination identity
    #             and defaults to false.</p>
    #         <p>If the origination identity is a phone number and is already associated with another
    #             pool, an Error is returned. A sender ID can be associated with multiple pools.</p>
    #
    # @param [Hash] params
    #   See {Types::CreatePoolInput}.
    #
    # @option params [String] :origination_identity
    #   <p>The origination identity to use such as a PhoneNumberId, PhoneNumberArn, SenderId or
    #               SenderIdArn. You can use <a>DescribePhoneNumbers</a> to find the values for
    #               PhoneNumberId and PhoneNumberArn while <a>DescribeSenderIds</a> can be used
    #               to get the values for SenderId and SenderIdArn.</p>
    #
    # @option params [String] :iso_country_code
    #   <p>The new two-character code, in ISO 3166-1 alpha-2 format, for the country or region of
    #               the new pool.</p>
    #
    # @option params [String] :message_type
    #   <p>The type of message. Valid values are TRANSACTIONAL for messages that are critical or
    #               time-sensitive and PROMOTIONAL for messages that aren't critical or
    #               time-sensitive.</p>
    #
    # @option params [Boolean] :deletion_protection_enabled
    #   <p>By default this is set to false. When set to true the pool can't be deleted. You can
    #               change this value using the <a>UpdatePool</a> action.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>An array of tags (key and value pairs) associated with the pool.</p>
    #
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If you don't specify a client token, a randomly generated token is used for the
    #               request to ensure idempotency.</p>
    #
    # @return [Types::CreatePoolOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_pool(
    #     origination_identity: 'OriginationIdentity', # required
    #     iso_country_code: 'IsoCountryCode', # required
    #     message_type: 'TRANSACTIONAL', # required - accepts ["TRANSACTIONAL", "PROMOTIONAL"]
    #     deletion_protection_enabled: false,
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     client_token: 'ClientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreatePoolOutput
    #   resp.data.pool_arn #=> String
    #   resp.data.pool_id #=> String
    #   resp.data.status #=> String, one of ["CREATING", "ACTIVE", "DELETING"]
    #   resp.data.message_type #=> String, one of ["TRANSACTIONAL", "PROMOTIONAL"]
    #   resp.data.two_way_enabled #=> Boolean
    #   resp.data.two_way_channel_arn #=> String
    #   resp.data.self_managed_opt_outs_enabled #=> Boolean
    #   resp.data.opt_out_list_name #=> String
    #   resp.data.shared_routes_enabled #=> Boolean
    #   resp.data.deletion_protection_enabled #=> Boolean
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #   resp.data.created_timestamp #=> Time
    #
    def create_pool(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreatePoolInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreatePoolInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreatePool
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ConflictException, Errors::ThrottlingException, Errors::ValidationException, Errors::AccessDeniedException]),
        data_parser: Parsers::CreatePool
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreatePool,
        stubs: @stubs,
        params_class: Params::CreatePoolOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_pool
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an existing configuration set.</p>
    #         <p>A configuration set is a set of rules that you apply to voice and SMS messages that
    #             you send. In a configuration set, you can specify a destination for specific types of
    #             events related to voice and SMS messages. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteConfigurationSetInput}.
    #
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set or the configuration set ARN that you want to
    #               delete. The ConfigurationSetName and ConfigurationSetArn can be found using the <a>DescribeConfigurationSets</a> action.</p>
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
    #   resp.data.configuration_set_arn #=> String
    #   resp.data.configuration_set_name #=> String
    #   resp.data.event_destinations #=> Array<EventDestination>
    #   resp.data.event_destinations[0] #=> Types::EventDestination
    #   resp.data.event_destinations[0].event_destination_name #=> String
    #   resp.data.event_destinations[0].enabled #=> Boolean
    #   resp.data.event_destinations[0].matching_event_types #=> Array<String>
    #   resp.data.event_destinations[0].matching_event_types[0] #=> String, one of ["ALL", "TEXT_ALL", "TEXT_SENT", "TEXT_PENDING", "TEXT_QUEUED", "TEXT_SUCCESSFUL", "TEXT_DELIVERED", "TEXT_INVALID", "TEXT_INVALID_MESSAGE", "TEXT_UNREACHABLE", "TEXT_CARRIER_UNREACHABLE", "TEXT_BLOCKED", "TEXT_CARRIER_BLOCKED", "TEXT_SPAM", "TEXT_UNKNOWN", "TEXT_TTL_EXPIRED", "VOICE_ALL", "VOICE_INITIATED", "VOICE_RINGING", "VOICE_ANSWERED", "VOICE_COMPLETED", "VOICE_BUSY", "VOICE_NO_ANSWER", "VOICE_FAILED", "VOICE_TTL_EXPIRED"]
    #   resp.data.event_destinations[0].cloud_watch_logs_destination #=> Types::CloudWatchLogsDestination
    #   resp.data.event_destinations[0].cloud_watch_logs_destination.iam_role_arn #=> String
    #   resp.data.event_destinations[0].cloud_watch_logs_destination.log_group_arn #=> String
    #   resp.data.event_destinations[0].kinesis_firehose_destination #=> Types::KinesisFirehoseDestination
    #   resp.data.event_destinations[0].kinesis_firehose_destination.iam_role_arn #=> String
    #   resp.data.event_destinations[0].kinesis_firehose_destination.delivery_stream_arn #=> String
    #   resp.data.event_destinations[0].sns_destination #=> Types::SnsDestination
    #   resp.data.event_destinations[0].sns_destination.topic_arn #=> String
    #   resp.data.default_message_type #=> String, one of ["TRANSACTIONAL", "PROMOTIONAL"]
    #   resp.data.default_sender_id #=> String
    #   resp.data.created_timestamp #=> Time
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException, Errors::AccessDeniedException]),
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

    # <p>Deletes an existing default message type on a configuration set.</p>
    #         <p> A message type is a type of messages that you plan to send. If you send
    #             account-related messages or time-sensitive messages such as one-time passcodes, choose
    #                 <b>Transactional</b>. If you plan to send messages that
    #             contain marketing material or other promotional content, choose <b>Promotional</b>. This setting applies to your entire Amazon Web Services
    #             account. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDefaultMessageTypeInput}.
    #
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set or the configuration set Amazon Resource Name (ARN)
    #               to delete the default message type from. The ConfigurationSetName and
    #               ConfigurationSetArn can be found using the <a>DescribeConfigurationSets</a>
    #               action.</p>
    #
    # @return [Types::DeleteDefaultMessageTypeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_default_message_type(
    #     configuration_set_name: 'ConfigurationSetName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDefaultMessageTypeOutput
    #   resp.data.configuration_set_arn #=> String
    #   resp.data.configuration_set_name #=> String
    #   resp.data.message_type #=> String, one of ["TRANSACTIONAL", "PROMOTIONAL"]
    #
    def delete_default_message_type(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDefaultMessageTypeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDefaultMessageTypeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDefaultMessageType
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException, Errors::AccessDeniedException]),
        data_parser: Parsers::DeleteDefaultMessageType
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDefaultMessageType,
        stubs: @stubs,
        params_class: Params::DeleteDefaultMessageTypeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_default_message_type
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an existing default sender ID on a configuration set.</p>
    #         <p>A default sender ID is the identity that appears on recipients' devices when they
    #             receive SMS messages. Support for sender ID capabilities varies by country or
    #             region.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDefaultSenderIdInput}.
    #
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set or the configuration set Amazon Resource Name (ARN)
    #               to delete the default sender ID from. The ConfigurationSetName and ConfigurationSetArn
    #               can be found using the <a>DescribeConfigurationSets</a> action.</p>
    #
    # @return [Types::DeleteDefaultSenderIdOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_default_sender_id(
    #     configuration_set_name: 'ConfigurationSetName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDefaultSenderIdOutput
    #   resp.data.configuration_set_arn #=> String
    #   resp.data.configuration_set_name #=> String
    #   resp.data.sender_id #=> String
    #
    def delete_default_sender_id(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDefaultSenderIdInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDefaultSenderIdInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDefaultSenderId
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException, Errors::AccessDeniedException]),
        data_parser: Parsers::DeleteDefaultSenderId
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDefaultSenderId,
        stubs: @stubs,
        params_class: Params::DeleteDefaultSenderIdOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_default_sender_id
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an existing event destination.</p>
    #         <p>An event destination is a location where you send response information about the
    #             messages that you send. For example, when a message is delivered successfully, you can
    #             send information about that event to an Amazon CloudWatch destination, or send
    #             notifications to endpoints that are subscribed to an Amazon SNS topic.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteEventDestinationInput}.
    #
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set or the configuration set's Amazon Resource Name
    #               (ARN) to remove the event destination from. The ConfigurateSetName and
    #               ConfigurationSetArn can be found using the <a>DescribeConfigurationSets</a>
    #               action.</p>
    #
    # @option params [String] :event_destination_name
    #   <p>The name of the event destination to delete.</p>
    #
    # @return [Types::DeleteEventDestinationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_event_destination(
    #     configuration_set_name: 'ConfigurationSetName', # required
    #     event_destination_name: 'EventDestinationName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteEventDestinationOutput
    #   resp.data.configuration_set_arn #=> String
    #   resp.data.configuration_set_name #=> String
    #   resp.data.event_destination #=> Types::EventDestination
    #   resp.data.event_destination.event_destination_name #=> String
    #   resp.data.event_destination.enabled #=> Boolean
    #   resp.data.event_destination.matching_event_types #=> Array<String>
    #   resp.data.event_destination.matching_event_types[0] #=> String, one of ["ALL", "TEXT_ALL", "TEXT_SENT", "TEXT_PENDING", "TEXT_QUEUED", "TEXT_SUCCESSFUL", "TEXT_DELIVERED", "TEXT_INVALID", "TEXT_INVALID_MESSAGE", "TEXT_UNREACHABLE", "TEXT_CARRIER_UNREACHABLE", "TEXT_BLOCKED", "TEXT_CARRIER_BLOCKED", "TEXT_SPAM", "TEXT_UNKNOWN", "TEXT_TTL_EXPIRED", "VOICE_ALL", "VOICE_INITIATED", "VOICE_RINGING", "VOICE_ANSWERED", "VOICE_COMPLETED", "VOICE_BUSY", "VOICE_NO_ANSWER", "VOICE_FAILED", "VOICE_TTL_EXPIRED"]
    #   resp.data.event_destination.cloud_watch_logs_destination #=> Types::CloudWatchLogsDestination
    #   resp.data.event_destination.cloud_watch_logs_destination.iam_role_arn #=> String
    #   resp.data.event_destination.cloud_watch_logs_destination.log_group_arn #=> String
    #   resp.data.event_destination.kinesis_firehose_destination #=> Types::KinesisFirehoseDestination
    #   resp.data.event_destination.kinesis_firehose_destination.iam_role_arn #=> String
    #   resp.data.event_destination.kinesis_firehose_destination.delivery_stream_arn #=> String
    #   resp.data.event_destination.sns_destination #=> Types::SnsDestination
    #   resp.data.event_destination.sns_destination.topic_arn #=> String
    #
    def delete_event_destination(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteEventDestinationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteEventDestinationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteEventDestination
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException, Errors::AccessDeniedException]),
        data_parser: Parsers::DeleteEventDestination
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteEventDestination,
        stubs: @stubs,
        params_class: Params::DeleteEventDestinationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_event_destination
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an existing keyword from an origination phone number or pool.</p>
    #         <p>A keyword is a word that you can search for on a particular phone number or pool. It
    #             is also a specific word or phrase that an end user can send to your number to elicit a
    #             response, such as an informational message or a special offer. When your number receives
    #             a message that begins with a keyword, Amazon Pinpoint responds with a customizable
    #             message.</p>
    #         <p>Keywords "HELP" and "STOP" can't be deleted or modified.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteKeywordInput}.
    #
    # @option params [String] :origination_identity
    #   <p>The origination identity to use such as a PhoneNumberId, PhoneNumberArn, PoolId or
    #               PoolArn. You can use <a>DescribePhoneNumbers</a> to find the values for
    #               PhoneNumberId and PhoneNumberArn and <a>DescribePools</a> to find the values
    #               of PoolId and PoolArn.</p>
    #
    # @option params [String] :keyword
    #   <p>The keyword to delete.</p>
    #
    # @return [Types::DeleteKeywordOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_keyword(
    #     origination_identity: 'OriginationIdentity', # required
    #     keyword: 'Keyword' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteKeywordOutput
    #   resp.data.origination_identity_arn #=> String
    #   resp.data.origination_identity #=> String
    #   resp.data.keyword #=> String
    #   resp.data.keyword_message #=> String
    #   resp.data.keyword_action #=> String, one of ["AUTOMATIC_RESPONSE", "OPT_OUT", "OPT_IN"]
    #
    def delete_keyword(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteKeywordInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteKeywordInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteKeyword
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ConflictException, Errors::ThrottlingException, Errors::ValidationException, Errors::AccessDeniedException]),
        data_parser: Parsers::DeleteKeyword
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteKeyword,
        stubs: @stubs,
        params_class: Params::DeleteKeywordOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_keyword
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an existing opt-out list. All opted out phone numbers in the opt-out list are
    #             deleted.</p>
    #         <p>If the specified opt-out list name doesn't exist or is in-use by an origination phone
    #             number or pool, an Error is returned.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteOptOutListInput}.
    #
    # @option params [String] :opt_out_list_name
    #   <p>The OptOutListName or OptOutListArn of the OptOutList to delete. You can use <a>DescribeOptOutLists</a> to find the values for OptOutListName and
    #               OptOutListArn.</p>
    #
    # @return [Types::DeleteOptOutListOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_opt_out_list(
    #     opt_out_list_name: 'OptOutListName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteOptOutListOutput
    #   resp.data.opt_out_list_arn #=> String
    #   resp.data.opt_out_list_name #=> String
    #   resp.data.created_timestamp #=> Time
    #
    def delete_opt_out_list(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteOptOutListInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteOptOutListInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteOptOutList
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ConflictException, Errors::ThrottlingException, Errors::ValidationException, Errors::AccessDeniedException]),
        data_parser: Parsers::DeleteOptOutList
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteOptOutList,
        stubs: @stubs,
        params_class: Params::DeleteOptOutListOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_opt_out_list
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an existing opted out destination phone number from the specified opt-out
    #             list.</p>
    #         <p>Each destination phone number can only be deleted once every 30 days.</p>
    #         <p>If the specified destination phone number doesn't exist or if the opt-out list doesn't
    #             exist, an Error is returned.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteOptedOutNumberInput}.
    #
    # @option params [String] :opt_out_list_name
    #   <p>The OptOutListName or OptOutListArn to remove the phone number from.</p>
    #
    # @option params [String] :opted_out_number
    #   <p>The phone number, in E.164 format, to remove from the OptOutList.</p>
    #
    # @return [Types::DeleteOptedOutNumberOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_opted_out_number(
    #     opt_out_list_name: 'OptOutListName', # required
    #     opted_out_number: 'OptedOutNumber' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteOptedOutNumberOutput
    #   resp.data.opt_out_list_arn #=> String
    #   resp.data.opt_out_list_name #=> String
    #   resp.data.opted_out_number #=> String
    #   resp.data.opted_out_timestamp #=> Time
    #   resp.data.end_user_opted_out #=> Boolean
    #
    def delete_opted_out_number(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteOptedOutNumberInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteOptedOutNumberInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteOptedOutNumber
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ConflictException, Errors::ThrottlingException, Errors::ValidationException, Errors::AccessDeniedException]),
        data_parser: Parsers::DeleteOptedOutNumber
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteOptedOutNumber,
        stubs: @stubs,
        params_class: Params::DeleteOptedOutNumberOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_opted_out_number
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an existing pool. Deleting a pool disassociates all origination identities
    #             from that pool.</p>
    #         <p>If the pool status isn't active or if deletion protection is enabled, an Error is
    #             returned.</p>
    #         <p>A pool is a collection of phone numbers and SenderIds. A pool can include one or more
    #             phone numbers and SenderIds that are associated with your Amazon Web Services
    #             account.</p>
    #
    # @param [Hash] params
    #   See {Types::DeletePoolInput}.
    #
    # @option params [String] :pool_id
    #   <p>The PoolId or PoolArn of the pool to delete. You can use <a>DescribePools</a> to find the values for PoolId and PoolArn .</p>
    #
    # @return [Types::DeletePoolOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_pool(
    #     pool_id: 'PoolId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeletePoolOutput
    #   resp.data.pool_arn #=> String
    #   resp.data.pool_id #=> String
    #   resp.data.status #=> String, one of ["CREATING", "ACTIVE", "DELETING"]
    #   resp.data.message_type #=> String, one of ["TRANSACTIONAL", "PROMOTIONAL"]
    #   resp.data.two_way_enabled #=> Boolean
    #   resp.data.two_way_channel_arn #=> String
    #   resp.data.self_managed_opt_outs_enabled #=> Boolean
    #   resp.data.opt_out_list_name #=> String
    #   resp.data.shared_routes_enabled #=> Boolean
    #   resp.data.created_timestamp #=> Time
    #
    def delete_pool(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeletePoolInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeletePoolInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeletePool
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ConflictException, Errors::ThrottlingException, Errors::ValidationException, Errors::AccessDeniedException]),
        data_parser: Parsers::DeletePool
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeletePool,
        stubs: @stubs,
        params_class: Params::DeletePoolOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_pool
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an account-level monthly spending limit override for sending text messages.
    #             Deleting a spend limit override will set the <code>EnforcedLimit</code> to equal the
    #                 <code>MaxLimit</code>, which is controlled by Amazon Web Services. For more
    #             information on spend limits (quotas) see <a href="https://docs.aws.amazon.com/pinpoint/latest/developerguide/quotas.html">Amazon Pinpoint quotas </a>
    #             in the <i>Amazon Pinpoint Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteTextMessageSpendLimitOverrideInput}.
    #
    # @return [Types::DeleteTextMessageSpendLimitOverrideOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_text_message_spend_limit_override()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteTextMessageSpendLimitOverrideOutput
    #   resp.data.monthly_limit #=> Integer
    #
    def delete_text_message_spend_limit_override(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteTextMessageSpendLimitOverrideInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteTextMessageSpendLimitOverrideInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteTextMessageSpendLimitOverride
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ThrottlingException, Errors::ValidationException, Errors::AccessDeniedException]),
        data_parser: Parsers::DeleteTextMessageSpendLimitOverride
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteTextMessageSpendLimitOverride,
        stubs: @stubs,
        params_class: Params::DeleteTextMessageSpendLimitOverrideOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_text_message_spend_limit_override
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an account level monthly spend limit override for sending voice messages.
    #             Deleting a spend limit override sets the <code>EnforcedLimit</code> equal to the
    #                 <code>MaxLimit</code>, which is controlled by Amazon Web Services. For more
    #             information on spending limits (quotas) see <a href="https://docs.aws.amazon.com/pinpoint/latest/developerguide/quotas.html">Amazon Pinpoint quotas</a>
    #             in the <i>Amazon Pinpoint Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteVoiceMessageSpendLimitOverrideInput}.
    #
    # @return [Types::DeleteVoiceMessageSpendLimitOverrideOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_voice_message_spend_limit_override()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteVoiceMessageSpendLimitOverrideOutput
    #   resp.data.monthly_limit #=> Integer
    #
    def delete_voice_message_spend_limit_override(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteVoiceMessageSpendLimitOverrideInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteVoiceMessageSpendLimitOverrideInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteVoiceMessageSpendLimitOverride
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ThrottlingException, Errors::ValidationException, Errors::AccessDeniedException]),
        data_parser: Parsers::DeleteVoiceMessageSpendLimitOverride
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteVoiceMessageSpendLimitOverride,
        stubs: @stubs,
        params_class: Params::DeleteVoiceMessageSpendLimitOverrideOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_voice_message_spend_limit_override
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes attributes of your Amazon Web Services account. The supported account
    #             attributes include account tier, which indicates whether your account is in the sandbox
    #             or production environment. When you're ready to move your account out of the sandbox,
    #             create an Amazon Web Services Support case for a service limit increase request.</p>
    #         <p>New Amazon Pinpoint accounts are placed into an SMS or voice sandbox. The sandbox
    #             protects both Amazon Web Services end recipients and SMS or voice recipients from fraud
    #             and abuse. </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAccountAttributesInput}.
    #
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a
    #               value for this field in the initial request.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per each request.</p>
    #
    # @return [Types::DescribeAccountAttributesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_account_attributes(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAccountAttributesOutput
    #   resp.data.account_attributes #=> Array<AccountAttribute>
    #   resp.data.account_attributes[0] #=> Types::AccountAttribute
    #   resp.data.account_attributes[0].name #=> String, one of ["ACCOUNT_TIER"]
    #   resp.data.account_attributes[0].value #=> String
    #   resp.data.next_token #=> String
    #
    def describe_account_attributes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAccountAttributesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAccountAttributesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAccountAttributes
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ThrottlingException, Errors::ValidationException, Errors::AccessDeniedException]),
        data_parser: Parsers::DescribeAccountAttributes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAccountAttributes,
        stubs: @stubs,
        params_class: Params::DescribeAccountAttributesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_account_attributes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the current Amazon Pinpoint SMS Voice V2 resource quotas for your
    #             account. The description for a quota includes the quota name, current usage toward that
    #             quota, and the quota's maximum value.</p>
    #         <p>When you establish an Amazon Web Services account, the account has initial quotas on
    #             the maximum number of configuration sets, opt-out lists, phone numbers, and pools that
    #             you can create in a given Region. For more information see <a href="https://docs.aws.amazon.com/pinpoint/latest/developerguide/quotas.html">
    #                 Amazon Pinpoint quotas </a> in the <i>Amazon Pinpoint Developer
    #                 Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAccountLimitsInput}.
    #
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a
    #               value for this field in the initial request.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per each request.</p>
    #
    # @return [Types::DescribeAccountLimitsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_account_limits(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAccountLimitsOutput
    #   resp.data.account_limits #=> Array<AccountLimit>
    #   resp.data.account_limits[0] #=> Types::AccountLimit
    #   resp.data.account_limits[0].name #=> String, one of ["PHONE_NUMBERS", "POOLS", "CONFIGURATION_SETS", "OPT_OUT_LISTS"]
    #   resp.data.account_limits[0].used #=> Integer
    #   resp.data.account_limits[0].max #=> Integer
    #   resp.data.next_token #=> String
    #
    def describe_account_limits(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAccountLimitsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAccountLimitsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAccountLimits
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ThrottlingException, Errors::ValidationException, Errors::AccessDeniedException]),
        data_parser: Parsers::DescribeAccountLimits
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAccountLimits,
        stubs: @stubs,
        params_class: Params::DescribeAccountLimitsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_account_limits
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the specified configuration sets or all in your account.</p>
    #         <p>If you specify configuration set names, the output includes information for only the
    #             specified configuration sets. If you specify filters, the output includes information
    #             for only those configuration sets that meet the filter criteria. If you don't specify
    #             configuration set names or filters, the output includes information for all
    #             configuration sets.</p>
    #         <p>If you specify a configuration set name that isn't valid, an error is returned.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeConfigurationSetsInput}.
    #
    # @option params [Array<String>] :configuration_set_names
    #   <p>An array of strings. Each element can be either a ConfigurationSetName or
    #               ConfigurationSetArn.</p>
    #
    # @option params [Array<ConfigurationSetFilter>] :filters
    #   <p>An array of filters to apply to the results that are returned.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a
    #               value for this field in the initial request.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per each request.</p>
    #
    # @return [Types::DescribeConfigurationSetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_configuration_sets(
    #     configuration_set_names: [
    #       'member'
    #     ],
    #     filters: [
    #       {
    #         name: 'event-destination-name', # required - accepts ["event-destination-name", "matching-event-types", "default-message-type", "default-sender-id"]
    #         values: [
    #           'member'
    #         ] # required
    #       }
    #     ],
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeConfigurationSetsOutput
    #   resp.data.configuration_sets #=> Array<ConfigurationSetInformation>
    #   resp.data.configuration_sets[0] #=> Types::ConfigurationSetInformation
    #   resp.data.configuration_sets[0].configuration_set_arn #=> String
    #   resp.data.configuration_sets[0].configuration_set_name #=> String
    #   resp.data.configuration_sets[0].event_destinations #=> Array<EventDestination>
    #   resp.data.configuration_sets[0].event_destinations[0] #=> Types::EventDestination
    #   resp.data.configuration_sets[0].event_destinations[0].event_destination_name #=> String
    #   resp.data.configuration_sets[0].event_destinations[0].enabled #=> Boolean
    #   resp.data.configuration_sets[0].event_destinations[0].matching_event_types #=> Array<String>
    #   resp.data.configuration_sets[0].event_destinations[0].matching_event_types[0] #=> String, one of ["ALL", "TEXT_ALL", "TEXT_SENT", "TEXT_PENDING", "TEXT_QUEUED", "TEXT_SUCCESSFUL", "TEXT_DELIVERED", "TEXT_INVALID", "TEXT_INVALID_MESSAGE", "TEXT_UNREACHABLE", "TEXT_CARRIER_UNREACHABLE", "TEXT_BLOCKED", "TEXT_CARRIER_BLOCKED", "TEXT_SPAM", "TEXT_UNKNOWN", "TEXT_TTL_EXPIRED", "VOICE_ALL", "VOICE_INITIATED", "VOICE_RINGING", "VOICE_ANSWERED", "VOICE_COMPLETED", "VOICE_BUSY", "VOICE_NO_ANSWER", "VOICE_FAILED", "VOICE_TTL_EXPIRED"]
    #   resp.data.configuration_sets[0].event_destinations[0].cloud_watch_logs_destination #=> Types::CloudWatchLogsDestination
    #   resp.data.configuration_sets[0].event_destinations[0].cloud_watch_logs_destination.iam_role_arn #=> String
    #   resp.data.configuration_sets[0].event_destinations[0].cloud_watch_logs_destination.log_group_arn #=> String
    #   resp.data.configuration_sets[0].event_destinations[0].kinesis_firehose_destination #=> Types::KinesisFirehoseDestination
    #   resp.data.configuration_sets[0].event_destinations[0].kinesis_firehose_destination.iam_role_arn #=> String
    #   resp.data.configuration_sets[0].event_destinations[0].kinesis_firehose_destination.delivery_stream_arn #=> String
    #   resp.data.configuration_sets[0].event_destinations[0].sns_destination #=> Types::SnsDestination
    #   resp.data.configuration_sets[0].event_destinations[0].sns_destination.topic_arn #=> String
    #   resp.data.configuration_sets[0].default_message_type #=> String, one of ["TRANSACTIONAL", "PROMOTIONAL"]
    #   resp.data.configuration_sets[0].default_sender_id #=> String
    #   resp.data.configuration_sets[0].created_timestamp #=> Time
    #   resp.data.next_token #=> String
    #
    def describe_configuration_sets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeConfigurationSetsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeConfigurationSetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeConfigurationSets
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException, Errors::AccessDeniedException]),
        data_parser: Parsers::DescribeConfigurationSets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeConfigurationSets,
        stubs: @stubs,
        params_class: Params::DescribeConfigurationSetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_configuration_sets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the specified keywords or all keywords on your origination phone number or
    #             pool.</p>
    #         <p>A keyword is a word that you can search for on a particular phone number or pool. It
    #             is also a specific word or phrase that an end user can send to your number to elicit a
    #             response, such as an informational message or a special offer. When your number receives
    #             a message that begins with a keyword, Amazon Pinpoint responds with a customizable
    #             message.</p>
    #         <p>If you specify a keyword that isn't valid, an Error is returned.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeKeywordsInput}.
    #
    # @option params [String] :origination_identity
    #   <p>The origination identity to use such as a PhoneNumberId, PhoneNumberArn, SenderId or
    #               SenderIdArn. You can use <a>DescribePhoneNumbers</a> to find the values for
    #               PhoneNumberId and PhoneNumberArn while <a>DescribeSenderIds</a> can be used
    #               to get the values for SenderId and SenderIdArn.</p>
    #
    # @option params [Array<String>] :keywords
    #   <p>An array of keywords to search for.</p>
    #
    # @option params [Array<KeywordFilter>] :filters
    #   <p>An array of keyword filters to filter the results.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a
    #               value for this field in the initial request.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per each request.</p>
    #
    # @return [Types::DescribeKeywordsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_keywords(
    #     origination_identity: 'OriginationIdentity', # required
    #     keywords: [
    #       'member'
    #     ],
    #     filters: [
    #       {
    #         name: 'keyword-action', # required - accepts ["keyword-action"]
    #         values: [
    #           'member'
    #         ] # required
    #       }
    #     ],
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeKeywordsOutput
    #   resp.data.origination_identity_arn #=> String
    #   resp.data.origination_identity #=> String
    #   resp.data.keywords #=> Array<KeywordInformation>
    #   resp.data.keywords[0] #=> Types::KeywordInformation
    #   resp.data.keywords[0].keyword #=> String
    #   resp.data.keywords[0].keyword_message #=> String
    #   resp.data.keywords[0].keyword_action #=> String, one of ["AUTOMATIC_RESPONSE", "OPT_OUT", "OPT_IN"]
    #   resp.data.next_token #=> String
    #
    def describe_keywords(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeKeywordsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeKeywordsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeKeywords
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException, Errors::AccessDeniedException]),
        data_parser: Parsers::DescribeKeywords
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeKeywords,
        stubs: @stubs,
        params_class: Params::DescribeKeywordsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_keywords
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the specified opt-out list or all opt-out lists in your account.</p>
    #         <p>If you specify opt-out list names, the output includes information for only the
    #             specified opt-out lists. Opt-out lists include only those that meet the filter criteria.
    #             If you don't specify opt-out list names or filters, the output includes information for
    #             all opt-out lists.</p>
    #         <p>If you specify an opt-out list name that isn't valid, an Error is returned.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeOptOutListsInput}.
    #
    # @option params [Array<String>] :opt_out_list_names
    #   <p>The OptOutLists to show the details of. This is an array of strings that can be either
    #               the OptOutListName or OptOutListArn.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a
    #               value for this field in the initial request.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per each request.</p>
    #
    # @return [Types::DescribeOptOutListsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_opt_out_lists(
    #     opt_out_list_names: [
    #       'member'
    #     ],
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeOptOutListsOutput
    #   resp.data.opt_out_lists #=> Array<OptOutListInformation>
    #   resp.data.opt_out_lists[0] #=> Types::OptOutListInformation
    #   resp.data.opt_out_lists[0].opt_out_list_arn #=> String
    #   resp.data.opt_out_lists[0].opt_out_list_name #=> String
    #   resp.data.opt_out_lists[0].created_timestamp #=> Time
    #   resp.data.next_token #=> String
    #
    def describe_opt_out_lists(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeOptOutListsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeOptOutListsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeOptOutLists
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException, Errors::AccessDeniedException]),
        data_parser: Parsers::DescribeOptOutLists
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeOptOutLists,
        stubs: @stubs,
        params_class: Params::DescribeOptOutListsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_opt_out_lists
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the specified opted out destination numbers or all opted out destination
    #             numbers in an opt-out list.</p>
    #         <p>If you specify opted out numbers, the output includes information for only the
    #             specified opted out numbers. If you specify filters, the output includes information for
    #             only those opted out numbers that meet the filter criteria. If you don't specify opted
    #             out numbers or filters, the output includes information for all opted out destination
    #             numbers in your opt-out list.</p>
    #         <p>If you specify an opted out number that isn't valid, an Error is returned.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeOptedOutNumbersInput}.
    #
    # @option params [String] :opt_out_list_name
    #   <p>The OptOutListName or OptOutListArn of the OptOutList. You can use <a>DescribeOptOutLists</a> to find the values for OptOutListName and
    #               OptOutListArn.</p>
    #
    # @option params [Array<String>] :opted_out_numbers
    #   <p>An array of phone numbers to search for in the OptOutList.</p>
    #
    # @option params [Array<OptedOutFilter>] :filters
    #   <p>An array of OptedOutFilter objects to filter the results on.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a
    #               value for this field in the initial request.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per each request.</p>
    #
    # @return [Types::DescribeOptedOutNumbersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_opted_out_numbers(
    #     opt_out_list_name: 'OptOutListName', # required
    #     opted_out_numbers: [
    #       'member'
    #     ],
    #     filters: [
    #       {
    #         name: 'end-user-opted-out', # required - accepts ["end-user-opted-out"]
    #         values: [
    #           'member'
    #         ] # required
    #       }
    #     ],
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeOptedOutNumbersOutput
    #   resp.data.opt_out_list_arn #=> String
    #   resp.data.opt_out_list_name #=> String
    #   resp.data.opted_out_numbers #=> Array<OptedOutNumberInformation>
    #   resp.data.opted_out_numbers[0] #=> Types::OptedOutNumberInformation
    #   resp.data.opted_out_numbers[0].opted_out_number #=> String
    #   resp.data.opted_out_numbers[0].opted_out_timestamp #=> Time
    #   resp.data.opted_out_numbers[0].end_user_opted_out #=> Boolean
    #   resp.data.next_token #=> String
    #
    def describe_opted_out_numbers(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeOptedOutNumbersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeOptedOutNumbersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeOptedOutNumbers
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException, Errors::AccessDeniedException]),
        data_parser: Parsers::DescribeOptedOutNumbers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeOptedOutNumbers,
        stubs: @stubs,
        params_class: Params::DescribeOptedOutNumbersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_opted_out_numbers
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the specified origination phone number, or all the phone numbers in your
    #             account.</p>
    #         <p>If you specify phone number IDs, the output includes information for only the
    #             specified phone numbers. If you specify filters, the output includes information for
    #             only those phone numbers that meet the filter criteria. If you don't specify phone
    #             number IDs or filters, the output includes information for all phone numbers.</p>
    #         <p>If you specify a phone number ID that isn't valid, an Error is returned.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribePhoneNumbersInput}.
    #
    # @option params [Array<String>] :phone_number_ids
    #   <p>The unique identifier of phone numbers to find information about. This is an array of
    #               strings that can be either the PhoneNumberId or PhoneNumberArn.</p>
    #
    # @option params [Array<PhoneNumberFilter>] :filters
    #   <p>An array of PhoneNumberFilter objects to filter the results.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a
    #               value for this field in the initial request.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per each request.</p>
    #
    # @return [Types::DescribePhoneNumbersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_phone_numbers(
    #     phone_number_ids: [
    #       'member'
    #     ],
    #     filters: [
    #       {
    #         name: 'status', # required - accepts ["status", "iso-country-code", "message-type", "number-capability", "number-type", "two-way-enabled", "self-managed-opt-outs-enabled", "opt-out-list-name", "deletion-protection-enabled"]
    #         values: [
    #           'member'
    #         ] # required
    #       }
    #     ],
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribePhoneNumbersOutput
    #   resp.data.phone_numbers #=> Array<PhoneNumberInformation>
    #   resp.data.phone_numbers[0] #=> Types::PhoneNumberInformation
    #   resp.data.phone_numbers[0].phone_number_arn #=> String
    #   resp.data.phone_numbers[0].phone_number_id #=> String
    #   resp.data.phone_numbers[0].phone_number #=> String
    #   resp.data.phone_numbers[0].status #=> String, one of ["PENDING", "ACTIVE", "ASSOCIATING", "DISASSOCIATING", "DELETED"]
    #   resp.data.phone_numbers[0].iso_country_code #=> String
    #   resp.data.phone_numbers[0].message_type #=> String, one of ["TRANSACTIONAL", "PROMOTIONAL"]
    #   resp.data.phone_numbers[0].number_capabilities #=> Array<String>
    #   resp.data.phone_numbers[0].number_capabilities[0] #=> String, one of ["SMS", "VOICE"]
    #   resp.data.phone_numbers[0].number_type #=> String, one of ["SHORT_CODE", "LONG_CODE", "TOLL_FREE", "TEN_DLC"]
    #   resp.data.phone_numbers[0].monthly_leasing_price #=> String
    #   resp.data.phone_numbers[0].two_way_enabled #=> Boolean
    #   resp.data.phone_numbers[0].two_way_channel_arn #=> String
    #   resp.data.phone_numbers[0].self_managed_opt_outs_enabled #=> Boolean
    #   resp.data.phone_numbers[0].opt_out_list_name #=> String
    #   resp.data.phone_numbers[0].deletion_protection_enabled #=> Boolean
    #   resp.data.phone_numbers[0].pool_id #=> String
    #   resp.data.phone_numbers[0].created_timestamp #=> Time
    #   resp.data.next_token #=> String
    #
    def describe_phone_numbers(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribePhoneNumbersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribePhoneNumbersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribePhoneNumbers
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException, Errors::AccessDeniedException]),
        data_parser: Parsers::DescribePhoneNumbers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribePhoneNumbers,
        stubs: @stubs,
        params_class: Params::DescribePhoneNumbersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_phone_numbers
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the specified pools or all pools associated with your Amazon Web Services
    #             account.</p>
    #         <p>If you specify pool IDs, the output includes information for only the specified pools.
    #             If you specify filters, the output includes information for only those pools that meet
    #             the filter criteria. If you don't specify pool IDs or filters, the output includes
    #             information for all pools.</p>
    #         <p>If you specify a pool ID that isn't valid, an Error is returned.</p>
    #         <p>A pool is a collection of phone numbers and SenderIds. A pool can include one or more
    #             phone numbers and SenderIds that are associated with your Amazon Web Services
    #             account.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribePoolsInput}.
    #
    # @option params [Array<String>] :pool_ids
    #   <p>The unique identifier of pools to find. This is an array of strings that can be either
    #               the PoolId or PoolArn.</p>
    #
    # @option params [Array<PoolFilter>] :filters
    #   <p>An array of PoolFilter objects to filter the results.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a
    #               value for this field in the initial request.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per each request.</p>
    #
    # @return [Types::DescribePoolsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_pools(
    #     pool_ids: [
    #       'member'
    #     ],
    #     filters: [
    #       {
    #         name: 'status', # required - accepts ["status", "message-type", "two-way-enabled", "self-managed-opt-outs-enabled", "opt-out-list-name", "shared-routes-enabled", "deletion-protection-enabled"]
    #         values: [
    #           'member'
    #         ] # required
    #       }
    #     ],
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribePoolsOutput
    #   resp.data.pools #=> Array<PoolInformation>
    #   resp.data.pools[0] #=> Types::PoolInformation
    #   resp.data.pools[0].pool_arn #=> String
    #   resp.data.pools[0].pool_id #=> String
    #   resp.data.pools[0].status #=> String, one of ["CREATING", "ACTIVE", "DELETING"]
    #   resp.data.pools[0].message_type #=> String, one of ["TRANSACTIONAL", "PROMOTIONAL"]
    #   resp.data.pools[0].two_way_enabled #=> Boolean
    #   resp.data.pools[0].two_way_channel_arn #=> String
    #   resp.data.pools[0].self_managed_opt_outs_enabled #=> Boolean
    #   resp.data.pools[0].opt_out_list_name #=> String
    #   resp.data.pools[0].shared_routes_enabled #=> Boolean
    #   resp.data.pools[0].deletion_protection_enabled #=> Boolean
    #   resp.data.pools[0].created_timestamp #=> Time
    #   resp.data.next_token #=> String
    #
    def describe_pools(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribePoolsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribePoolsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribePools
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException, Errors::AccessDeniedException]),
        data_parser: Parsers::DescribePools
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribePools,
        stubs: @stubs,
        params_class: Params::DescribePoolsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_pools
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the specified SenderIds or all SenderIds associated with your Amazon Web Services account.</p>
    #         <p>If you specify SenderIds, the output includes information for only the specified
    #             SenderIds. If you specify filters, the output includes information for only those
    #             SenderIds that meet the filter criteria. If you don't specify SenderIds or filters, the
    #             output includes information for all SenderIds.</p>
    #         <p>f you specify a sender ID that isn't valid, an Error is returned.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeSenderIdsInput}.
    #
    # @option params [Array<SenderIdAndCountry>] :sender_ids
    #   <p>An array of SenderIdAndCountry objects to search for.</p>
    #
    # @option params [Array<SenderIdFilter>] :filters
    #   <p>An array of SenderIdFilter objects to filter the results.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a
    #               value for this field in the initial request.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per each request.</p>
    #
    # @return [Types::DescribeSenderIdsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_sender_ids(
    #     sender_ids: [
    #       {
    #         sender_id: 'SenderId', # required
    #         iso_country_code: 'IsoCountryCode' # required
    #       }
    #     ],
    #     filters: [
    #       {
    #         name: 'sender-id', # required - accepts ["sender-id", "iso-country-code", "message-type"]
    #         values: [
    #           'member'
    #         ] # required
    #       }
    #     ],
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeSenderIdsOutput
    #   resp.data.sender_ids #=> Array<SenderIdInformation>
    #   resp.data.sender_ids[0] #=> Types::SenderIdInformation
    #   resp.data.sender_ids[0].sender_id_arn #=> String
    #   resp.data.sender_ids[0].sender_id #=> String
    #   resp.data.sender_ids[0].iso_country_code #=> String
    #   resp.data.sender_ids[0].message_types #=> Array<String>
    #   resp.data.sender_ids[0].message_types[0] #=> String, one of ["TRANSACTIONAL", "PROMOTIONAL"]
    #   resp.data.sender_ids[0].monthly_leasing_price #=> String
    #   resp.data.next_token #=> String
    #
    def describe_sender_ids(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeSenderIdsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeSenderIdsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeSenderIds
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException, Errors::AccessDeniedException]),
        data_parser: Parsers::DescribeSenderIds
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeSenderIds,
        stubs: @stubs,
        params_class: Params::DescribeSenderIdsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_sender_ids
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the current Amazon Pinpoint monthly spend limits for sending voice and
    #             text messages.</p>
    #         <p>When you establish an Amazon Web Services account, the account has initial monthly
    #             spend limit in a given Region. For more information on increasing your monthly spend
    #             limit, see <a href="https://docs.aws.amazon.com/pinpoint/latest/userguide/channels-sms-awssupport-spend-threshold.html">
    #                 Requesting increases to your monthly SMS spending quota for Amazon Pinpoint
    #             </a> in the <i>Amazon Pinpoint User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeSpendLimitsInput}.
    #
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a
    #               value for this field in the initial request.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per each request.</p>
    #
    # @return [Types::DescribeSpendLimitsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_spend_limits(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeSpendLimitsOutput
    #   resp.data.spend_limits #=> Array<SpendLimit>
    #   resp.data.spend_limits[0] #=> Types::SpendLimit
    #   resp.data.spend_limits[0].name #=> String, one of ["TEXT_MESSAGE_MONTHLY_SPEND_LIMIT", "VOICE_MESSAGE_MONTHLY_SPEND_LIMIT"]
    #   resp.data.spend_limits[0].enforced_limit #=> Integer
    #   resp.data.spend_limits[0].max_limit #=> Integer
    #   resp.data.spend_limits[0].overridden #=> Boolean
    #   resp.data.next_token #=> String
    #
    def describe_spend_limits(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeSpendLimitsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeSpendLimitsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeSpendLimits
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ThrottlingException, Errors::ValidationException, Errors::AccessDeniedException]),
        data_parser: Parsers::DescribeSpendLimits
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeSpendLimits,
        stubs: @stubs,
        params_class: Params::DescribeSpendLimitsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_spend_limits
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the specified origination identity from an existing pool.</p>
    #         <p>If the origination identity isn't associated with the specified pool, an Error is
    #             returned.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateOriginationIdentityInput}.
    #
    # @option params [String] :pool_id
    #   <p>The unique identifier for the pool to disassociate with the origination identity. This
    #               value can be either the PoolId or PoolArn.</p>
    #
    # @option params [String] :origination_identity
    #   <p>The origination identity to use such as a PhoneNumberId, PhoneNumberArn, SenderId or
    #               SenderIdArn. You can use <a>DescribePhoneNumbers</a> find the values for
    #               PhoneNumberId and PhoneNumberArn, or use <a>DescribeSenderIds</a> to get the
    #               values for SenderId and SenderIdArn.</p>
    #
    # @option params [String] :iso_country_code
    #   <p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region.
    #           </p>
    #
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier you provide to ensure the idempotency of the
    #               request. If you don't specify a client token, a randomly generated token is used for the
    #               request to ensure idempotency.</p>
    #
    # @return [Types::DisassociateOriginationIdentityOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_origination_identity(
    #     pool_id: 'PoolId', # required
    #     origination_identity: 'OriginationIdentity', # required
    #     iso_country_code: 'IsoCountryCode', # required
    #     client_token: 'ClientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateOriginationIdentityOutput
    #   resp.data.pool_arn #=> String
    #   resp.data.pool_id #=> String
    #   resp.data.origination_identity_arn #=> String
    #   resp.data.origination_identity #=> String
    #   resp.data.iso_country_code #=> String
    #
    def disassociate_origination_identity(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateOriginationIdentityInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateOriginationIdentityInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateOriginationIdentity
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ConflictException, Errors::ThrottlingException, Errors::ValidationException, Errors::AccessDeniedException]),
        data_parser: Parsers::DisassociateOriginationIdentity
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateOriginationIdentity,
        stubs: @stubs,
        params_class: Params::DisassociateOriginationIdentityOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_origination_identity
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all associated origination identities in your pool.</p>
    #         <p>If you specify filters, the output includes information for only those origination
    #             identities that meet the filter criteria.</p>
    #
    # @param [Hash] params
    #   See {Types::ListPoolOriginationIdentitiesInput}.
    #
    # @option params [String] :pool_id
    #   <p>The unique identifier for the pool. This value can be either the PoolId or
    #               PoolArn.</p>
    #
    # @option params [Array<PoolOriginationIdentitiesFilter>] :filters
    #   <p>An array of PoolOriginationIdentitiesFilter objects to filter the results..</p>
    #
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a
    #               value for this field in the initial request.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per each request.</p>
    #
    # @return [Types::ListPoolOriginationIdentitiesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_pool_origination_identities(
    #     pool_id: 'PoolId', # required
    #     filters: [
    #       {
    #         name: 'iso-country-code', # required - accepts ["iso-country-code", "number-capability"]
    #         values: [
    #           'member'
    #         ] # required
    #       }
    #     ],
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPoolOriginationIdentitiesOutput
    #   resp.data.pool_arn #=> String
    #   resp.data.pool_id #=> String
    #   resp.data.origination_identities #=> Array<OriginationIdentityMetadata>
    #   resp.data.origination_identities[0] #=> Types::OriginationIdentityMetadata
    #   resp.data.origination_identities[0].origination_identity_arn #=> String
    #   resp.data.origination_identities[0].origination_identity #=> String
    #   resp.data.origination_identities[0].iso_country_code #=> String
    #   resp.data.origination_identities[0].number_capabilities #=> Array<String>
    #   resp.data.origination_identities[0].number_capabilities[0] #=> String, one of ["SMS", "VOICE"]
    #   resp.data.next_token #=> String
    #
    def list_pool_origination_identities(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPoolOriginationIdentitiesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPoolOriginationIdentitiesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPoolOriginationIdentities
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListPoolOriginationIdentities
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPoolOriginationIdentities,
        stubs: @stubs,
        params_class: Params::ListPoolOriginationIdentitiesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_pool_origination_identities
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List all tags associated with a resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to query for.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException, Errors::AccessDeniedException]),
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

    # <p>Creates or updates a keyword configuration on an origination phone number or
    #             pool.</p>
    #         <p> A keyword is a word that you can search for on a particular phone number or pool. It
    #             is also a specific word or phrase that an end user can send to your number to elicit a
    #             response, such as an informational message or a special offer. When your number receives
    #             a message that begins with a keyword, Amazon Pinpoint responds with a customizable
    #             message.</p>
    #         <p>If you specify a keyword that isn't valid, an Error is returned.</p>
    #
    # @param [Hash] params
    #   See {Types::PutKeywordInput}.
    #
    # @option params [String] :origination_identity
    #   <p>The origination identity to use such as a PhoneNumberId, PhoneNumberArn, SenderId or
    #               SenderIdArn. You can use <a>DescribePhoneNumbers</a> get the values for
    #               PhoneNumberId and PhoneNumberArn while <a>DescribeSenderIds</a> can be used
    #               to get the values for SenderId and SenderIdArn.</p>
    #
    # @option params [String] :keyword
    #   <p>The new keyword to add.</p>
    #
    # @option params [String] :keyword_message
    #   <p>The message associated with the keyword.</p>
    #           <ul>
    #               <li>
    #                   <p>AUTOMATIC_RESPONSE: A message is sent to the recipient.</p>
    #               </li>
    #               <li>
    #                   <p>OPT_OUT: Keeps the recipient from receiving future messages.</p>
    #               </li>
    #               <li>
    #                   <p>OPT_IN: The recipient wants to receive future messages.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :keyword_action
    #   <p>The action to perform for the new keyword when it is received.</p>
    #
    # @return [Types::PutKeywordOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_keyword(
    #     origination_identity: 'OriginationIdentity', # required
    #     keyword: 'Keyword', # required
    #     keyword_message: 'KeywordMessage', # required
    #     keyword_action: 'AUTOMATIC_RESPONSE' # accepts ["AUTOMATIC_RESPONSE", "OPT_OUT", "OPT_IN"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutKeywordOutput
    #   resp.data.origination_identity_arn #=> String
    #   resp.data.origination_identity #=> String
    #   resp.data.keyword #=> String
    #   resp.data.keyword_message #=> String
    #   resp.data.keyword_action #=> String, one of ["AUTOMATIC_RESPONSE", "OPT_OUT", "OPT_IN"]
    #
    def put_keyword(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutKeywordInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutKeywordInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutKeyword
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ConflictException, Errors::ThrottlingException, Errors::ValidationException, Errors::AccessDeniedException]),
        data_parser: Parsers::PutKeyword
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutKeyword,
        stubs: @stubs,
        params_class: Params::PutKeywordOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_keyword
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an opted out destination phone number in the opt-out list.</p>
    #         <p>If the destination phone number isn't valid or if the specified opt-out list doesn't
    #             exist, an Error is returned.</p>
    #
    # @param [Hash] params
    #   See {Types::PutOptedOutNumberInput}.
    #
    # @option params [String] :opt_out_list_name
    #   <p>The OptOutListName or OptOutListArn to add the phone number to.</p>
    #
    # @option params [String] :opted_out_number
    #   <p>The phone number to add to the OptOutList in E.164 format.</p>
    #
    # @return [Types::PutOptedOutNumberOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_opted_out_number(
    #     opt_out_list_name: 'OptOutListName', # required
    #     opted_out_number: 'OptedOutNumber' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutOptedOutNumberOutput
    #   resp.data.opt_out_list_arn #=> String
    #   resp.data.opt_out_list_name #=> String
    #   resp.data.opted_out_number #=> String
    #   resp.data.opted_out_timestamp #=> Time
    #   resp.data.end_user_opted_out #=> Boolean
    #
    def put_opted_out_number(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutOptedOutNumberInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutOptedOutNumberInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutOptedOutNumber
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException, Errors::AccessDeniedException]),
        data_parser: Parsers::PutOptedOutNumber
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutOptedOutNumber,
        stubs: @stubs,
        params_class: Params::PutOptedOutNumberOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_opted_out_number
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Releases an existing origination phone number in your account. Once released, a phone
    #             number is no longer available for sending messages.</p>
    #         <p>If the origination phone number has deletion protection enabled or is associated with
    #             a pool, an Error is returned.</p>
    #
    # @param [Hash] params
    #   See {Types::ReleasePhoneNumberInput}.
    #
    # @option params [String] :phone_number_id
    #   <p>The PhoneNumberId or PhoneNumberArn of the phone number to release. You can use <a>DescribePhoneNumbers</a> to get the values for PhoneNumberId and
    #               PhoneNumberArn.</p>
    #
    # @return [Types::ReleasePhoneNumberOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.release_phone_number(
    #     phone_number_id: 'PhoneNumberId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ReleasePhoneNumberOutput
    #   resp.data.phone_number_arn #=> String
    #   resp.data.phone_number_id #=> String
    #   resp.data.phone_number #=> String
    #   resp.data.status #=> String, one of ["PENDING", "ACTIVE", "ASSOCIATING", "DISASSOCIATING", "DELETED"]
    #   resp.data.iso_country_code #=> String
    #   resp.data.message_type #=> String, one of ["TRANSACTIONAL", "PROMOTIONAL"]
    #   resp.data.number_capabilities #=> Array<String>
    #   resp.data.number_capabilities[0] #=> String, one of ["SMS", "VOICE"]
    #   resp.data.number_type #=> String, one of ["SHORT_CODE", "LONG_CODE", "TOLL_FREE", "TEN_DLC"]
    #   resp.data.monthly_leasing_price #=> String
    #   resp.data.two_way_enabled #=> Boolean
    #   resp.data.two_way_channel_arn #=> String
    #   resp.data.self_managed_opt_outs_enabled #=> Boolean
    #   resp.data.opt_out_list_name #=> String
    #   resp.data.created_timestamp #=> Time
    #
    def release_phone_number(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ReleasePhoneNumberInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ReleasePhoneNumberInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ReleasePhoneNumber
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ConflictException, Errors::ThrottlingException, Errors::ValidationException, Errors::AccessDeniedException]),
        data_parser: Parsers::ReleasePhoneNumber
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ReleasePhoneNumber,
        stubs: @stubs,
        params_class: Params::ReleasePhoneNumberOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :release_phone_number
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Request an origination phone number for use in your account. For more information on
    #             phone number request see <a href="https://docs.aws.amazon.com/pinpoint/latest/userguide/settings-sms-request-number.html"> Requesting a
    #                 number </a> in the <i>Amazon Pinpoint User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::RequestPhoneNumberInput}.
    #
    # @option params [String] :iso_country_code
    #   <p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region.
    #           </p>
    #
    # @option params [String] :message_type
    #   <p>The type of message. Valid values are TRANSACTIONAL for messages that are critical or
    #               time-sensitive and PROMOTIONAL for messages that aren't critical or
    #               time-sensitive.</p>
    #
    # @option params [Array<String>] :number_capabilities
    #   <p>Indicates if the phone number will be used for text messages, voice messages, or both. </p>
    #
    # @option params [String] :number_type
    #   <p>The type of phone number to request.</p>
    #
    # @option params [String] :opt_out_list_name
    #   <p>The name of the OptOutList to associate with the phone number. You can use the
    #               OutOutListName or OptPutListArn.</p>
    #
    # @option params [String] :pool_id
    #   <p>The pool to associated with the phone number. You can use the PoolId or PoolArn. </p>
    #
    # @option params [String] :registration_id
    #   <p>Use this field to attach your phone number for an external registration
    #               process.</p>
    #
    # @option params [Boolean] :deletion_protection_enabled
    #   <p>By default this is set to false. When set to true the phone number can't be
    #               deleted.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>An array of tags (key and value pairs) associate with the requested phone number.
    #           </p>
    #
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If you don't specify a client token, a randomly generated token is used for the
    #               request to ensure idempotency.</p>
    #
    # @return [Types::RequestPhoneNumberOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.request_phone_number(
    #     iso_country_code: 'IsoCountryCode', # required
    #     message_type: 'TRANSACTIONAL', # required - accepts ["TRANSACTIONAL", "PROMOTIONAL"]
    #     number_capabilities: [
    #       'SMS' # accepts ["SMS", "VOICE"]
    #     ], # required
    #     number_type: 'LONG_CODE', # required - accepts ["LONG_CODE", "TOLL_FREE", "TEN_DLC"]
    #     opt_out_list_name: 'OptOutListName',
    #     pool_id: 'PoolId',
    #     registration_id: 'RegistrationId',
    #     deletion_protection_enabled: false,
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     client_token: 'ClientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RequestPhoneNumberOutput
    #   resp.data.phone_number_arn #=> String
    #   resp.data.phone_number_id #=> String
    #   resp.data.phone_number #=> String
    #   resp.data.status #=> String, one of ["PENDING", "ACTIVE", "ASSOCIATING", "DISASSOCIATING", "DELETED"]
    #   resp.data.iso_country_code #=> String
    #   resp.data.message_type #=> String, one of ["TRANSACTIONAL", "PROMOTIONAL"]
    #   resp.data.number_capabilities #=> Array<String>
    #   resp.data.number_capabilities[0] #=> String, one of ["SMS", "VOICE"]
    #   resp.data.number_type #=> String, one of ["LONG_CODE", "TOLL_FREE", "TEN_DLC"]
    #   resp.data.monthly_leasing_price #=> String
    #   resp.data.two_way_enabled #=> Boolean
    #   resp.data.two_way_channel_arn #=> String
    #   resp.data.self_managed_opt_outs_enabled #=> Boolean
    #   resp.data.opt_out_list_name #=> String
    #   resp.data.deletion_protection_enabled #=> Boolean
    #   resp.data.pool_id #=> String
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #   resp.data.created_timestamp #=> Time
    #
    def request_phone_number(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RequestPhoneNumberInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RequestPhoneNumberInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RequestPhoneNumber
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ConflictException, Errors::ThrottlingException, Errors::ValidationException, Errors::AccessDeniedException]),
        data_parser: Parsers::RequestPhoneNumber
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RequestPhoneNumber,
        stubs: @stubs,
        params_class: Params::RequestPhoneNumberOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :request_phone_number
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new text message and sends it to a recipient's phone number.</p>
    #         <p>SMS throughput limits are measured in Message Parts per Second (MPS). Your MPS limit
    #             depends on the destination country of your messages, as well as the type of phone number
    #             (origination number) that you use to send the message. For more information, see <a href="https://docs.aws.amazon.com/pinpoint/latest/userguide/channels-sms-limitations-mps.html">Message Parts per
    #                 Second (MPS) limits</a> in the <i>Amazon Pinpoint User
    #                 Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::SendTextMessageInput}.
    #
    # @option params [String] :destination_phone_number
    #   <p>The destination phone number in E.164 format.</p>
    #
    # @option params [String] :origination_identity
    #   <p>The origination identity of the message. This can be either the PhoneNumber,
    #               PhoneNumberId, PhoneNumberArn, SenderId, SenderIdArn, PoolId, or PoolArn.</p>
    #
    # @option params [String] :message_body
    #   <p>The body of the text message.</p>
    #
    # @option params [String] :message_type
    #   <p>The type of message. Valid values are
    #               TRANSACTIONAL
    #               for messages that are critical or time-sensitive and PROMOTIONAL for messages that
    #               aren't critical or time-sensitive.</p>
    #
    # @option params [String] :keyword
    #   <p>When you register a short code in the US, you must specify a program name. If you
    #               don’t have a US short code, omit this attribute.</p>
    #
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set to use. This can be either the ConfigurationSetName
    #               or ConfigurationSetArn.</p>
    #
    # @option params [String] :max_price
    #   <p>The maximum amount that you want to spend, in US dollars, per each text message part.
    #               A text message can contain multiple parts.</p>
    #
    # @option params [Integer] :time_to_live
    #   <p>How long the text message is valid for. By default this is 72 hours.</p>
    #
    # @option params [Hash<String, String>] :context
    #   <p>You can specify custom data in this field. If you do, that data is logged to the event
    #               destination.</p>
    #
    # @option params [Hash<String, String>] :destination_country_parameters
    #   <p>This field is used for any country-specific registration requirements. Currently, this
    #               setting is only used when you send messages to recipients in India using a sender ID.
    #               For more information see <a href="https://docs.aws.amazon.com/pinpoint/latest/userguide/channels-sms-senderid-india.html">Special requirements for sending SMS messages to recipients in India</a>.
    #           </p>
    #
    # @option params [Boolean] :dry_run
    #   <p>When set to true, the message is checked and validated, but isn't sent to the end
    #               recipient.</p>
    #
    # @return [Types::SendTextMessageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_text_message(
    #     destination_phone_number: 'DestinationPhoneNumber', # required
    #     origination_identity: 'OriginationIdentity',
    #     message_body: 'MessageBody',
    #     message_type: 'TRANSACTIONAL', # accepts ["TRANSACTIONAL", "PROMOTIONAL"]
    #     keyword: 'Keyword',
    #     configuration_set_name: 'ConfigurationSetName',
    #     max_price: 'MaxPrice',
    #     time_to_live: 1,
    #     context: {
    #       'key' => 'value'
    #     },
    #     destination_country_parameters: {
    #       'key' => 'value'
    #     },
    #     dry_run: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SendTextMessageOutput
    #   resp.data.message_id #=> String
    #
    def send_text_message(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SendTextMessageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SendTextMessageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SendTextMessage
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ConflictException, Errors::ThrottlingException, Errors::ValidationException, Errors::AccessDeniedException]),
        data_parser: Parsers::SendTextMessage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SendTextMessage,
        stubs: @stubs,
        params_class: Params::SendTextMessageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :send_text_message
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Allows you to send a request that sends a text message through Amazon Pinpoint.
    #             This operation uses <a href="http://aws.amazon.com/polly/">Amazon Polly</a> to
    #             convert a text script into a voice message.</p>
    #
    # @param [Hash] params
    #   See {Types::SendVoiceMessageInput}.
    #
    # @option params [String] :destination_phone_number
    #   <p>The destination phone number in E.164 format.</p>
    #
    # @option params [String] :origination_identity
    #   <p>The origination identity to use for the voice call. This can be the PhoneNumber,
    #               PhoneNumberId, PhoneNumberArn, PoolId, or PoolArn.</p>
    #
    # @option params [String] :message_body
    #   <p>The text to convert to a voice message.</p>
    #
    # @option params [String] :message_body_text_type
    #   <p>Specifies if the MessageBody field contains text or <a href="https://docs.aws.amazon.com/polly/latest/dg/what-is.html">speech synthesis
    #                   markup language (SSML)</a>.</p>
    #           <ul>
    #               <li>
    #                   <p>TEXT: This is the default value. When used the maximum character limit is
    #                       3000.</p>
    #               </li>
    #               <li>
    #                   <p>SSML: When used the maximum character limit is 6000 including SSML
    #                       tagging.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :voice_id
    #   <p>The voice for the <a href="https://docs.aws.amazon.com/polly/latest/dg/what-is.html">Amazon Polly</a>
    #               service to use. By default this is set to "MATTHEW".</p>
    #
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set to use. This can be either the ConfigurationSetName
    #               or ConfigurationSetArn.</p>
    #
    # @option params [String] :max_price_per_minute
    #   <p>The maximum amount to spend per voice message, in US dollars.</p>
    #
    # @option params [Integer] :time_to_live
    #   <p>How long the voice message is valid for. By default this is 72 hours.</p>
    #
    # @option params [Hash<String, String>] :context
    #   <p>You can specify custom data in this field. If you do, that data is logged to the event
    #               destination.</p>
    #
    # @option params [Boolean] :dry_run
    #   <p>When set to true, the message is checked and validated, but isn't sent to the end
    #               recipient.</p>
    #
    # @return [Types::SendVoiceMessageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_voice_message(
    #     destination_phone_number: 'DestinationPhoneNumber', # required
    #     origination_identity: 'OriginationIdentity', # required
    #     message_body: 'MessageBody',
    #     message_body_text_type: 'TEXT', # accepts ["TEXT", "SSML"]
    #     voice_id: 'AMY', # accepts ["AMY", "ASTRID", "BIANCA", "BRIAN", "CAMILA", "CARLA", "CARMEN", "CELINE", "CHANTAL", "CONCHITA", "CRISTIANO", "DORA", "EMMA", "ENRIQUE", "EWA", "FILIZ", "GERAINT", "GIORGIO", "GWYNETH", "HANS", "INES", "IVY", "JACEK", "JAN", "JOANNA", "JOEY", "JUSTIN", "KARL", "KENDRA", "KIMBERLY", "LEA", "LIV", "LOTTE", "LUCIA", "LUPE", "MADS", "MAJA", "MARLENE", "MATHIEU", "MATTHEW", "MAXIM", "MIA", "MIGUEL", "MIZUKI", "NAJA", "NICOLE", "PENELOPE", "RAVEENA", "RICARDO", "RUBEN", "RUSSELL", "SALLI", "SEOYEON", "TAKUMI", "TATYANA", "VICKI", "VITORIA", "ZEINA", "ZHIYU"]
    #     configuration_set_name: 'ConfigurationSetName',
    #     max_price_per_minute: 'MaxPricePerMinute',
    #     time_to_live: 1,
    #     context: {
    #       'key' => 'value'
    #     },
    #     dry_run: false
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ConflictException, Errors::ThrottlingException, Errors::ValidationException, Errors::AccessDeniedException]),
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

    # <p>Sets the default message type on a configuration set.</p>
    #         <p>Choose the category of SMS messages that you plan to send from this account. If you
    #             send account-related messages or time-sensitive messages such as one-time passcodes,
    #             choose <b>Transactional</b>. If you plan to send messages that
    #             contain marketing material or other promotional content, choose <b>Promotional</b>. This setting applies to your entire Amazon Web Services
    #             account.</p>
    #
    # @param [Hash] params
    #   See {Types::SetDefaultMessageTypeInput}.
    #
    # @option params [String] :configuration_set_name
    #   <p>The configuration set to update with a new default message type. This field can be the
    #               ConsigurationSetName or ConfigurationSetArn.</p>
    #
    # @option params [String] :message_type
    #   <p>The type of message. Valid values are TRANSACTIONAL for messages that are critical or
    #               time-sensitive and PROMOTIONAL for messages that aren't critical or
    #               time-sensitive.</p>
    #
    # @return [Types::SetDefaultMessageTypeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_default_message_type(
    #     configuration_set_name: 'ConfigurationSetName', # required
    #     message_type: 'TRANSACTIONAL' # required - accepts ["TRANSACTIONAL", "PROMOTIONAL"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SetDefaultMessageTypeOutput
    #   resp.data.configuration_set_arn #=> String
    #   resp.data.configuration_set_name #=> String
    #   resp.data.message_type #=> String, one of ["TRANSACTIONAL", "PROMOTIONAL"]
    #
    def set_default_message_type(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SetDefaultMessageTypeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SetDefaultMessageTypeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SetDefaultMessageType
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException, Errors::AccessDeniedException]),
        data_parser: Parsers::SetDefaultMessageType
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SetDefaultMessageType,
        stubs: @stubs,
        params_class: Params::SetDefaultMessageTypeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :set_default_message_type
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sets default sender ID on a configuration set.</p>
    #         <p>When sending a text message to a destination country that supports sender IDs, the
    #             default sender ID on the configuration set specified will be used if no dedicated
    #             origination phone numbers or registered sender IDs are available in your account.</p>
    #
    # @param [Hash] params
    #   See {Types::SetDefaultSenderIdInput}.
    #
    # @option params [String] :configuration_set_name
    #   <p>The configuration set to updated with a new default SenderId. This field can be the
    #               ConsigurationSetName or ConfigurationSetArn.</p>
    #
    # @option params [String] :sender_id
    #   <p>The current sender ID for the configuration set. When sending a text message to a
    #               destination country which supports SenderIds, the default sender ID on the configuration
    #               set specified on <a>SendTextMessage</a> will be used if no dedicated
    #               origination phone numbers or registered SenderIds are available in your account, instead
    #               of a generic sender ID, such as 'NOTICE'.</p>
    #
    # @return [Types::SetDefaultSenderIdOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_default_sender_id(
    #     configuration_set_name: 'ConfigurationSetName', # required
    #     sender_id: 'SenderId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SetDefaultSenderIdOutput
    #   resp.data.configuration_set_arn #=> String
    #   resp.data.configuration_set_name #=> String
    #   resp.data.sender_id #=> String
    #
    def set_default_sender_id(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SetDefaultSenderIdInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SetDefaultSenderIdInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SetDefaultSenderId
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException, Errors::AccessDeniedException]),
        data_parser: Parsers::SetDefaultSenderId
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SetDefaultSenderId,
        stubs: @stubs,
        params_class: Params::SetDefaultSenderIdOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :set_default_sender_id
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sets an account level monthly spend limit override for sending text messages. The
    #             requested spend limit must be less than or equal to the <code>MaxLimit</code>, which is
    #             set by Amazon Web Services. </p>
    #
    # @param [Hash] params
    #   See {Types::SetTextMessageSpendLimitOverrideInput}.
    #
    # @option params [Integer] :monthly_limit
    #   <p>The new monthly limit to enforce on text messages.</p>
    #
    # @return [Types::SetTextMessageSpendLimitOverrideOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_text_message_spend_limit_override(
    #     monthly_limit: 1 # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SetTextMessageSpendLimitOverrideOutput
    #   resp.data.monthly_limit #=> Integer
    #
    def set_text_message_spend_limit_override(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SetTextMessageSpendLimitOverrideInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SetTextMessageSpendLimitOverrideInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SetTextMessageSpendLimitOverride
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ThrottlingException, Errors::ValidationException, Errors::AccessDeniedException]),
        data_parser: Parsers::SetTextMessageSpendLimitOverride
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SetTextMessageSpendLimitOverride,
        stubs: @stubs,
        params_class: Params::SetTextMessageSpendLimitOverrideOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :set_text_message_spend_limit_override
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sets an account level monthly spend limit override for sending voice messages. The
    #             requested spend limit must be less than or equal to the <code>MaxLimit</code>, which is
    #             set by Amazon Web Services. </p>
    #
    # @param [Hash] params
    #   See {Types::SetVoiceMessageSpendLimitOverrideInput}.
    #
    # @option params [Integer] :monthly_limit
    #   <p>The new monthly limit to enforce on voice messages.</p>
    #
    # @return [Types::SetVoiceMessageSpendLimitOverrideOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_voice_message_spend_limit_override(
    #     monthly_limit: 1 # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SetVoiceMessageSpendLimitOverrideOutput
    #   resp.data.monthly_limit #=> Integer
    #
    def set_voice_message_spend_limit_override(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SetVoiceMessageSpendLimitOverrideInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SetVoiceMessageSpendLimitOverrideInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SetVoiceMessageSpendLimitOverride
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ThrottlingException, Errors::ValidationException, Errors::AccessDeniedException]),
        data_parser: Parsers::SetVoiceMessageSpendLimitOverride
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SetVoiceMessageSpendLimitOverride,
        stubs: @stubs,
        params_class: Params::SetVoiceMessageSpendLimitOverrideOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :set_voice_message_spend_limit_override
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds or overwrites only the specified tags for the specified Amazon Pinpoint SMS
    #             Voice, version 2 resource. When you specify an existing tag key, the value is
    #             overwritten with the new value. Each resource can have a maximum of 50 tags. Each tag
    #             consists of a key and an optional value. Tag keys must be unique per resource. For more
    #             information about tags, see <a href="https://docs.aws.amazon.com/pinpoint/latest/developerguide/tagging-resources.html"> Tagging Amazon Pinpoint resources</a> in the <i>Amazon Pinpoint Developer
    #                 Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>An array of key and value pair tags that are associated with the resource.</p>
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException, Errors::AccessDeniedException]),
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

    # <p>Removes the association of the specified tags from an Amazon Pinpoint SMS Voice V2
    #             resource. For more information on tags see <a href="https://docs.aws.amazon.com/pinpoint/latest/developerguide/tagging-resources.html"> Tagging Amazon Pinpoint resources</a> in the <i>Amazon Pinpoint Developer
    #                 Guide</i>. </p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>An array of tag key values to unassociate with the resource.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException, Errors::AccessDeniedException]),
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

    # <p>Updates an existing event destination in a configuration set. You can update the
    #                 IAM role ARN for CloudWatch Logs and Kinesis Data Firehose. You can
    #             also enable or disable the event destination.</p>
    #         <p>You may want to update an event destination to change its matching event types or
    #             updating the destination resource ARN. You can't change an event destination's type
    #             between CloudWatch Logs, Kinesis Data Firehose, and Amazon SNS.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateEventDestinationInput}.
    #
    # @option params [String] :configuration_set_name
    #   <p>The configuration set to update with the new event destination. Valid values for this
    #               can be the ConfigurationSetName or ConfigurationSetArn.</p>
    #
    # @option params [String] :event_destination_name
    #   <p>The name to use for the event destination.</p>
    #
    # @option params [Boolean] :enabled
    #   <p>When set to true logging is enabled.</p>
    #
    # @option params [Array<String>] :matching_event_types
    #   <p>An array of event types that determine which events to log.</p>
    #
    # @option params [CloudWatchLogsDestination] :cloud_watch_logs_destination
    #   <p>An object that contains information about an event destination that sends data to
    #                   CloudWatch Logs.</p>
    #
    # @option params [KinesisFirehoseDestination] :kinesis_firehose_destination
    #   <p>An object that contains information about an event destination for logging to Kinesis Data Firehose.</p>
    #
    # @option params [SnsDestination] :sns_destination
    #   <p>An object that contains information about an event destination that sends data to
    #                   Amazon SNS.</p>
    #
    # @return [Types::UpdateEventDestinationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_event_destination(
    #     configuration_set_name: 'ConfigurationSetName', # required
    #     event_destination_name: 'EventDestinationName', # required
    #     enabled: false,
    #     matching_event_types: [
    #       'ALL' # accepts ["ALL", "TEXT_ALL", "TEXT_SENT", "TEXT_PENDING", "TEXT_QUEUED", "TEXT_SUCCESSFUL", "TEXT_DELIVERED", "TEXT_INVALID", "TEXT_INVALID_MESSAGE", "TEXT_UNREACHABLE", "TEXT_CARRIER_UNREACHABLE", "TEXT_BLOCKED", "TEXT_CARRIER_BLOCKED", "TEXT_SPAM", "TEXT_UNKNOWN", "TEXT_TTL_EXPIRED", "VOICE_ALL", "VOICE_INITIATED", "VOICE_RINGING", "VOICE_ANSWERED", "VOICE_COMPLETED", "VOICE_BUSY", "VOICE_NO_ANSWER", "VOICE_FAILED", "VOICE_TTL_EXPIRED"]
    #     ],
    #     cloud_watch_logs_destination: {
    #       iam_role_arn: 'IamRoleArn', # required
    #       log_group_arn: 'LogGroupArn' # required
    #     },
    #     kinesis_firehose_destination: {
    #       iam_role_arn: 'IamRoleArn', # required
    #       delivery_stream_arn: 'DeliveryStreamArn' # required
    #     },
    #     sns_destination: {
    #       topic_arn: 'TopicArn' # required
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateEventDestinationOutput
    #   resp.data.configuration_set_arn #=> String
    #   resp.data.configuration_set_name #=> String
    #   resp.data.event_destination #=> Types::EventDestination
    #   resp.data.event_destination.event_destination_name #=> String
    #   resp.data.event_destination.enabled #=> Boolean
    #   resp.data.event_destination.matching_event_types #=> Array<String>
    #   resp.data.event_destination.matching_event_types[0] #=> String, one of ["ALL", "TEXT_ALL", "TEXT_SENT", "TEXT_PENDING", "TEXT_QUEUED", "TEXT_SUCCESSFUL", "TEXT_DELIVERED", "TEXT_INVALID", "TEXT_INVALID_MESSAGE", "TEXT_UNREACHABLE", "TEXT_CARRIER_UNREACHABLE", "TEXT_BLOCKED", "TEXT_CARRIER_BLOCKED", "TEXT_SPAM", "TEXT_UNKNOWN", "TEXT_TTL_EXPIRED", "VOICE_ALL", "VOICE_INITIATED", "VOICE_RINGING", "VOICE_ANSWERED", "VOICE_COMPLETED", "VOICE_BUSY", "VOICE_NO_ANSWER", "VOICE_FAILED", "VOICE_TTL_EXPIRED"]
    #   resp.data.event_destination.cloud_watch_logs_destination #=> Types::CloudWatchLogsDestination
    #   resp.data.event_destination.cloud_watch_logs_destination.iam_role_arn #=> String
    #   resp.data.event_destination.cloud_watch_logs_destination.log_group_arn #=> String
    #   resp.data.event_destination.kinesis_firehose_destination #=> Types::KinesisFirehoseDestination
    #   resp.data.event_destination.kinesis_firehose_destination.iam_role_arn #=> String
    #   resp.data.event_destination.kinesis_firehose_destination.delivery_stream_arn #=> String
    #   resp.data.event_destination.sns_destination #=> Types::SnsDestination
    #   resp.data.event_destination.sns_destination.topic_arn #=> String
    #
    def update_event_destination(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateEventDestinationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateEventDestinationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateEventDestination
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ConflictException, Errors::ThrottlingException, Errors::ValidationException, Errors::AccessDeniedException]),
        data_parser: Parsers::UpdateEventDestination
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateEventDestination,
        stubs: @stubs,
        params_class: Params::UpdateEventDestinationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_event_destination
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the configuration of an existing origination phone number. You can update the
    #             opt-out list, enable or disable two-way messaging, change the TwoWayChannelArn, enable
    #             or disable self-managed opt-outs, and enable or disable deletion protection.</p>
    #         <p>If the origination phone number is associated with a pool, an Error is
    #             returned.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdatePhoneNumberInput}.
    #
    # @option params [String] :phone_number_id
    #   <p>The unique identifier of the phone number. Valid values for this field can be either
    #               the PhoneNumberId or PhoneNumberArn.</p>
    #
    # @option params [Boolean] :two_way_enabled
    #   <p>By default this is set to false. When set to true you can receive incoming text
    #               messages from your end recipients.</p>
    #
    # @option params [String] :two_way_channel_arn
    #   <p>The Amazon Resource Name (ARN) of the two way channel.</p>
    #
    # @option params [Boolean] :self_managed_opt_outs_enabled
    #   <p>By default this is set to false. When an end recipient sends a message that begins
    #               with HELP or STOP to one of your dedicated numbers, Amazon Pinpoint automatically
    #               replies with a customizable message and adds the end recipient to the OptOutList. When
    #               set to true you're responsible for responding to HELP and STOP requests. You're also
    #               responsible for tracking and honoring opt-out requests.</p>
    #
    # @option params [String] :opt_out_list_name
    #   <p>The OptOutList to add the phone number to. Valid values for this field can be either
    #               the OutOutListName or OutOutListArn.</p>
    #
    # @option params [Boolean] :deletion_protection_enabled
    #   <p>By default this is set to false. When set to true the phone number can't be deleted.
    #           </p>
    #
    # @return [Types::UpdatePhoneNumberOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_phone_number(
    #     phone_number_id: 'PhoneNumberId', # required
    #     two_way_enabled: false,
    #     two_way_channel_arn: 'TwoWayChannelArn',
    #     self_managed_opt_outs_enabled: false,
    #     opt_out_list_name: 'OptOutListName',
    #     deletion_protection_enabled: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdatePhoneNumberOutput
    #   resp.data.phone_number_arn #=> String
    #   resp.data.phone_number_id #=> String
    #   resp.data.phone_number #=> String
    #   resp.data.status #=> String, one of ["PENDING", "ACTIVE", "ASSOCIATING", "DISASSOCIATING", "DELETED"]
    #   resp.data.iso_country_code #=> String
    #   resp.data.message_type #=> String, one of ["TRANSACTIONAL", "PROMOTIONAL"]
    #   resp.data.number_capabilities #=> Array<String>
    #   resp.data.number_capabilities[0] #=> String, one of ["SMS", "VOICE"]
    #   resp.data.number_type #=> String, one of ["SHORT_CODE", "LONG_CODE", "TOLL_FREE", "TEN_DLC"]
    #   resp.data.monthly_leasing_price #=> String
    #   resp.data.two_way_enabled #=> Boolean
    #   resp.data.two_way_channel_arn #=> String
    #   resp.data.self_managed_opt_outs_enabled #=> Boolean
    #   resp.data.opt_out_list_name #=> String
    #   resp.data.deletion_protection_enabled #=> Boolean
    #   resp.data.created_timestamp #=> Time
    #
    def update_phone_number(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdatePhoneNumberInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdatePhoneNumberInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdatePhoneNumber
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ConflictException, Errors::ThrottlingException, Errors::ValidationException, Errors::AccessDeniedException]),
        data_parser: Parsers::UpdatePhoneNumber
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdatePhoneNumber,
        stubs: @stubs,
        params_class: Params::UpdatePhoneNumberOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_phone_number
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the configuration of an existing pool. You can update the opt-out list, enable
    #             or disable two-way messaging, change the <code>TwoWayChannelArn</code>, enable or
    #             disable self-managed opt-outs, enable or disable deletion protection, and enable or
    #             disable shared routes.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdatePoolInput}.
    #
    # @option params [String] :pool_id
    #   <p>The unique identifier of the pool to update. Valid values are either the PoolId or
    #               PoolArn.</p>
    #
    # @option params [Boolean] :two_way_enabled
    #   <p>By default this is set to false. When set to true you can receive incoming text
    #               messages from your end recipients.</p>
    #
    # @option params [String] :two_way_channel_arn
    #   <p>The Amazon Resource Name (ARN) of the two way channel.</p>
    #
    # @option params [Boolean] :self_managed_opt_outs_enabled
    #   <p>By default this is set to false. When an end recipient sends a message that begins
    #               with HELP or STOP to one of your dedicated numbers, Amazon Pinpoint automatically
    #               replies with a customizable message and adds the end recipient to the OptOutList. When
    #               set to true you're responsible for responding to HELP and STOP requests. You're also
    #               responsible for tracking and honoring opt-out requests.</p>
    #
    # @option params [String] :opt_out_list_name
    #   <p>The OptOutList to associate with the pool. Valid values are either OptOutListName or
    #               OptOutListArn.</p>
    #
    # @option params [Boolean] :shared_routes_enabled
    #   <p>Indicates whether shared routes are enabled for the pool.</p>
    #
    # @option params [Boolean] :deletion_protection_enabled
    #   <p>When set to true the pool can't be deleted.</p>
    #
    # @return [Types::UpdatePoolOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_pool(
    #     pool_id: 'PoolId', # required
    #     two_way_enabled: false,
    #     two_way_channel_arn: 'TwoWayChannelArn',
    #     self_managed_opt_outs_enabled: false,
    #     opt_out_list_name: 'OptOutListName',
    #     shared_routes_enabled: false,
    #     deletion_protection_enabled: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdatePoolOutput
    #   resp.data.pool_arn #=> String
    #   resp.data.pool_id #=> String
    #   resp.data.status #=> String, one of ["CREATING", "ACTIVE", "DELETING"]
    #   resp.data.message_type #=> String, one of ["TRANSACTIONAL", "PROMOTIONAL"]
    #   resp.data.two_way_enabled #=> Boolean
    #   resp.data.two_way_channel_arn #=> String
    #   resp.data.self_managed_opt_outs_enabled #=> Boolean
    #   resp.data.opt_out_list_name #=> String
    #   resp.data.shared_routes_enabled #=> Boolean
    #   resp.data.deletion_protection_enabled #=> Boolean
    #   resp.data.created_timestamp #=> Time
    #
    def update_pool(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdatePoolInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdatePoolInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdatePool
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ConflictException, Errors::ThrottlingException, Errors::ValidationException, Errors::AccessDeniedException]),
        data_parser: Parsers::UpdatePool
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdatePool,
        stubs: @stubs,
        params_class: Params::UpdatePoolOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_pool
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
