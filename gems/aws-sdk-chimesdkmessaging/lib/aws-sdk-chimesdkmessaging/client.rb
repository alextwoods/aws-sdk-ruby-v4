# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::ChimeSDKMessaging
  # An API client for ChimeMessagingService
  # See {#initialize} for a full list of supported configuration options
  # <p>The Amazon Chime SDK Messaging APIs in this section allow software developers to send
  #          and receive messages in custom messaging applications. These APIs depend on the frameworks
  #          provided by the Amazon Chime SDK Identity APIs. For more information about the messaging
  #          APIs, see <a href="https://docs.aws.amazon.com/chime/latest/APIReference/API_Operations_Amazon_Chime_SDK_Messaging.html">Amazon Chime SDK messaging</a>.</p>
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
    def initialize(config = AWS::SDK::ChimeSDKMessaging::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Associates a channel flow with a channel. Once associated, all messages to that channel go through channel flow processors. To stop processing, use the
    #          <code>DisassociateChannelFlow</code> API.</p>
    #
    #          <note>
    #             <p>Only administrators or channel moderators can associate a channel flow. The <code>x-amz-chime-bearer</code> request header is mandatory. Use the <code>AppInstanceUserArn</code>
    #          of the user that makes the API call as the value in the header.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::AssociateChannelFlowInput}.
    #
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel.</p>
    #
    # @option params [String] :channel_flow_arn
    #   <p>The ARN of the channel flow.</p>
    #
    # @option params [String] :chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user making the API call.</p>
    #
    # @return [Types::AssociateChannelFlowOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_channel_flow(
    #     channel_arn: 'ChannelArn', # required
    #     channel_flow_arn: 'ChannelFlowArn', # required
    #     chime_bearer: 'ChimeBearer' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateChannelFlowOutput
    #
    def associate_channel_flow(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateChannelFlowInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateChannelFlowInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateChannelFlow
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedClientException, Errors::ForbiddenException, Errors::NotFoundException, Errors::ThrottledClientException, Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ServiceFailureException, Errors::ConflictException]),
        data_parser: Parsers::AssociateChannelFlow
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateChannelFlow,
        stubs: @stubs,
        params_class: Params::AssociateChannelFlowOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_channel_flow
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds a specified number of users to a channel. </p>
    #
    # @param [Hash] params
    #   See {Types::BatchCreateChannelMembershipInput}.
    #
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel to which you're adding users.</p>
    #
    # @option params [String] :type
    #   <p>The membership type of a user, <code>DEFAULT</code> or <code>HIDDEN</code>. Default
    #            members are always returned as part of <code>ListChannelMemberships</code>. Hidden members
    #            are only returned if the type filter in <code>ListChannelMemberships</code> equals
    #               <code>HIDDEN</code>. Otherwise hidden members are not returned. This is only supported
    #            by moderators.</p>
    #
    # @option params [Array<String>] :member_arns
    #   <p>The <code>AppInstanceUserArn</code>s of the members you want to add to the channel.</p>
    #
    # @option params [String] :chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    # @return [Types::BatchCreateChannelMembershipOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_create_channel_membership(
    #     channel_arn: 'ChannelArn', # required
    #     type: 'DEFAULT', # accepts ["DEFAULT", "HIDDEN"]
    #     member_arns: [
    #       'member'
    #     ], # required
    #     chime_bearer: 'ChimeBearer' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchCreateChannelMembershipOutput
    #   resp.data.batch_channel_memberships #=> Types::BatchChannelMemberships
    #   resp.data.batch_channel_memberships.invited_by #=> Types::Identity
    #   resp.data.batch_channel_memberships.invited_by.arn #=> String
    #   resp.data.batch_channel_memberships.invited_by.name #=> String
    #   resp.data.batch_channel_memberships.type #=> String, one of ["DEFAULT", "HIDDEN"]
    #   resp.data.batch_channel_memberships.members #=> Array<Identity>
    #   resp.data.batch_channel_memberships.channel_arn #=> String
    #   resp.data.errors #=> Array<BatchCreateChannelMembershipError>
    #   resp.data.errors[0] #=> Types::BatchCreateChannelMembershipError
    #   resp.data.errors[0].member_arn #=> String
    #   resp.data.errors[0].error_code #=> String, one of ["BadRequest", "Conflict", "Forbidden", "NotFound", "PreconditionFailed", "ResourceLimitExceeded", "ServiceFailure", "AccessDenied", "ServiceUnavailable", "Throttled", "Throttling", "Unauthorized", "Unprocessable", "VoiceConnectorGroupAssociationsExist", "PhoneNumberAssociationsExist"]
    #   resp.data.errors[0].error_message #=> String
    #
    def batch_create_channel_membership(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchCreateChannelMembershipInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchCreateChannelMembershipInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchCreateChannelMembership
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedClientException, Errors::ForbiddenException, Errors::ThrottledClientException, Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ServiceFailureException]),
        data_parser: Parsers::BatchCreateChannelMembership
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchCreateChannelMembership,
        stubs: @stubs,
        params_class: Params::BatchCreateChannelMembershipOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_create_channel_membership
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Calls back Chime SDK Messaging with a processing response message. This should be invoked from the processor Lambda. This is a developer API.</p>
    #          <p>You can return one of the following processing responses:</p>
    #          <ul>
    #             <li>
    #                <p>Update message content or metadata</p>
    #             </li>
    #             <li>
    #                <p>Deny a message</p>
    #             </li>
    #             <li>
    #                <p>Make no changes to the message</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::ChannelFlowCallbackInput}.
    #
    # @option params [String] :callback_id
    #   <p>The identifier passed to the processor by the service when invoked. Use the identifier to call back the service.</p>
    #
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel.</p>
    #
    # @option params [Boolean] :delete_resource
    #   <p>When a processor determines that a message needs to be <code>DENIED</code>, pass this parameter with a value of true.</p>
    #
    # @option params [ChannelMessageCallback] :channel_message
    #   <p>Stores information about the processed message.</p>
    #
    # @return [Types::ChannelFlowCallbackOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.channel_flow_callback(
    #     callback_id: 'CallbackId', # required
    #     channel_arn: 'ChannelArn', # required
    #     delete_resource: false,
    #     channel_message: {
    #       message_id: 'MessageId', # required
    #       content: 'Content',
    #       metadata: 'Metadata',
    #       push_notification: {
    #         title: 'Title',
    #         body: 'Body',
    #         type: 'DEFAULT' # accepts ["DEFAULT", "VOIP"]
    #       },
    #       message_attributes: {
    #         'key' => {
    #           string_values: [
    #             'member'
    #           ]
    #         }
    #       }
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ChannelFlowCallbackOutput
    #   resp.data.channel_arn #=> String
    #   resp.data.callback_id #=> String
    #
    def channel_flow_callback(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ChannelFlowCallbackInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ChannelFlowCallbackInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ChannelFlowCallback
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedClientException, Errors::ForbiddenException, Errors::ThrottledClientException, Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ServiceFailureException, Errors::ConflictException]),
        data_parser: Parsers::ChannelFlowCallback
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ChannelFlowCallback,
        stubs: @stubs,
        params_class: Params::ChannelFlowCallbackOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :channel_flow_callback
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a channel to which you can add users and send messages.</p>
    #
    #          <p>
    #             <b>Restriction</b>: You can't change a channel's
    #          privacy.</p>
    #
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #                <code>AppInstanceUserArn</code> of the user that makes the API call as the value in
    #             the header.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::CreateChannelInput}.
    #
    # @option params [String] :app_instance_arn
    #   <p>The ARN of the channel request.</p>
    #
    # @option params [String] :name
    #   <p>The name of the channel.</p>
    #
    # @option params [String] :mode
    #   <p>The channel mode: <code>UNRESTRICTED</code> or <code>RESTRICTED</code>. Administrators,
    #            moderators, and channel members can add themselves and other members to unrestricted
    #            channels. Only administrators and moderators can add members to restricted channels.</p>
    #
    # @option params [String] :privacy
    #   <p>The channel's privacy level: <code>PUBLIC</code> or <code>PRIVATE</code>. Private
    #            channels aren't discoverable by users outside the channel. Public channels are discoverable
    #            by anyone in the <code>AppInstance</code>.</p>
    #
    # @option params [String] :metadata
    #   <p>The metadata of the creation request. Limited to 1KB and UTF-8.</p>
    #
    # @option params [String] :client_request_token
    #   <p>The client token for the request. An <code>Idempotency</code> token.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags for the creation request.</p>
    #
    # @option params [String] :chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    # @option params [String] :channel_id
    #   <p>The ID of the channel in the request.</p>
    #
    # @option params [Array<String>] :member_arns
    #   <p>The ARNs of the channel members in the request.</p>
    #
    # @option params [Array<String>] :moderator_arns
    #   <p>The ARNs of the channel moderators in the request.</p>
    #
    # @return [Types::CreateChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_channel(
    #     app_instance_arn: 'AppInstanceArn', # required
    #     name: 'Name', # required
    #     mode: 'UNRESTRICTED', # accepts ["UNRESTRICTED", "RESTRICTED"]
    #     privacy: 'PUBLIC', # accepts ["PUBLIC", "PRIVATE"]
    #     metadata: 'Metadata',
    #     client_request_token: 'ClientRequestToken', # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     chime_bearer: 'ChimeBearer', # required
    #     channel_id: 'ChannelId',
    #     member_arns: [
    #       'member'
    #     ],
    #     moderator_arns: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateChannelOutput
    #   resp.data.channel_arn #=> String
    #
    def create_channel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateChannelInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateChannelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateChannel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::UnauthorizedClientException, Errors::ForbiddenException, Errors::ThrottledClientException, Errors::BadRequestException, Errors::ResourceLimitExceededException, Errors::ServiceUnavailableException, Errors::ServiceFailureException, Errors::ConflictException]),
        data_parser: Parsers::CreateChannel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateChannel,
        stubs: @stubs,
        params_class: Params::CreateChannelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_channel
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Permanently bans a member from a channel. Moderators can't add banned members to a
    #          channel. To undo a ban, you first have to <code>DeleteChannelBan</code>, and then
    #             <code>CreateChannelMembership</code>. Bans are cleaned up when you delete users or
    #          channels.</p>
    #          <p>If you ban a user who is already part of a channel, that user is automatically kicked
    #          from the channel.</p>
    #
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #                <code>AppInstanceUserArn</code> of the user that makes the API call as the value in
    #             the header.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::CreateChannelBanInput}.
    #
    # @option params [String] :channel_arn
    #   <p>The ARN of the ban request.</p>
    #
    # @option params [String] :member_arn
    #   <p>The <code>AppInstanceUserArn</code> of the member being banned.</p>
    #
    # @option params [String] :chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    # @return [Types::CreateChannelBanOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_channel_ban(
    #     channel_arn: 'ChannelArn', # required
    #     member_arn: 'MemberArn', # required
    #     chime_bearer: 'ChimeBearer' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateChannelBanOutput
    #   resp.data.channel_arn #=> String
    #   resp.data.member #=> Types::Identity
    #   resp.data.member.arn #=> String
    #   resp.data.member.name #=> String
    #
    def create_channel_ban(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateChannelBanInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateChannelBanInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateChannelBan
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::UnauthorizedClientException, Errors::ForbiddenException, Errors::ThrottledClientException, Errors::BadRequestException, Errors::ResourceLimitExceededException, Errors::ServiceUnavailableException, Errors::ServiceFailureException, Errors::ConflictException]),
        data_parser: Parsers::CreateChannelBan
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateChannelBan,
        stubs: @stubs,
        params_class: Params::CreateChannelBanOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_channel_ban
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a channel flow, a container for processors. Processors are AWS Lambda functions
    #          that perform actions on chat messages, such as stripping out profanity. You can associate
    #          channel flows with channels, and the processors in the channel flow then take action on all
    #          messages sent to that channel. This is a developer API.</p>
    #
    #            <p>Channel flows process the following items:</p>
    #          <ol>
    #             <li>
    #                <p>New and updated messages</p>
    #             </li>
    #             <li>
    #                <p>Persistent and non-persistent messages</p>
    #             </li>
    #             <li>
    #                <p>The Standard message type</p>
    #             </li>
    #          </ol>
    #
    #          <note>
    #             <p>Channel flows don't process Control or System messages. For more information about the message types provided by Chime SDK Messaging, refer to
    #            <a href="https://docs.aws.amazon.com/chime/latest/dg/using-the-messaging-sdk.html#msg-types">Message types</a> in the <i>Amazon Chime developer guide</i>.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::CreateChannelFlowInput}.
    #
    # @option params [String] :app_instance_arn
    #   <p>The ARN of the channel flow request.</p>
    #
    # @option params [Array<Processor>] :processors
    #   <p>Information about the processor Lambda functions.</p>
    #
    # @option params [String] :name
    #   <p>The name of the channel flow.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags for the creation request.</p>
    #
    # @option params [String] :client_request_token
    #   <p>The client token for the request. An Idempotency token.</p>
    #
    # @return [Types::CreateChannelFlowOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_channel_flow(
    #     app_instance_arn: 'AppInstanceArn', # required
    #     processors: [
    #       {
    #         name: 'Name', # required
    #         configuration: {
    #           lambda: {
    #             resource_arn: 'ResourceArn', # required
    #             invocation_type: 'ASYNC' # required - accepts ["ASYNC"]
    #           } # required
    #         }, # required
    #         execution_order: 1, # required
    #         fallback_action: 'CONTINUE' # required - accepts ["CONTINUE", "ABORT"]
    #       }
    #     ], # required
    #     name: 'Name', # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     client_request_token: 'ClientRequestToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateChannelFlowOutput
    #   resp.data.channel_flow_arn #=> String
    #
    def create_channel_flow(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateChannelFlowInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateChannelFlowInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateChannelFlow
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::UnauthorizedClientException, Errors::ForbiddenException, Errors::ThrottledClientException, Errors::BadRequestException, Errors::ResourceLimitExceededException, Errors::ServiceUnavailableException, Errors::ServiceFailureException, Errors::ConflictException]),
        data_parser: Parsers::CreateChannelFlow
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateChannelFlow,
        stubs: @stubs,
        params_class: Params::CreateChannelFlowOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_channel_flow
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds a user to a channel. The <code>InvitedBy</code> field in <code>ChannelMembership</code> is derived from the
    #          request header. A channel member can:</p>
    #
    #          <ul>
    #             <li>
    #                <p>List messages</p>
    #             </li>
    #             <li>
    #                <p>Send messages</p>
    #             </li>
    #             <li>
    #                <p>Receive messages</p>
    #             </li>
    #             <li>
    #                <p>Edit their own messages</p>
    #             </li>
    #             <li>
    #                <p>Leave the channel</p>
    #             </li>
    #          </ul>
    #
    #          <p>Privacy settings impact this action as follows:</p>
    #
    #          <ul>
    #             <li>
    #                <p>Public Channels: You do not need to be a member to list messages, but you must be
    #                a member to send messages.</p>
    #             </li>
    #             <li>
    #                <p>Private Channels: You must be a member to list or send messages.</p>
    #             </li>
    #          </ul>
    #
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #                <code>AppInstanceUserArn</code> of the user that makes the API call as the value in
    #             the header.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::CreateChannelMembershipInput}.
    #
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel to which you're adding users.</p>
    #
    # @option params [String] :member_arn
    #   <p>The <code>AppInstanceUserArn</code> of the member you want to add to the channel.</p>
    #
    # @option params [String] :type
    #   <p>The membership type of a user, <code>DEFAULT</code> or <code>HIDDEN</code>. Default
    #            members are always returned as part of <code>ListChannelMemberships</code>. Hidden members
    #            are only returned if the type filter in <code>ListChannelMemberships</code> equals
    #               <code>HIDDEN</code>. Otherwise hidden members are not returned. This is only supported
    #            by moderators.</p>
    #
    # @option params [String] :chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    # @return [Types::CreateChannelMembershipOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_channel_membership(
    #     channel_arn: 'ChannelArn', # required
    #     member_arn: 'MemberArn', # required
    #     type: 'DEFAULT', # required - accepts ["DEFAULT", "HIDDEN"]
    #     chime_bearer: 'ChimeBearer' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateChannelMembershipOutput
    #   resp.data.channel_arn #=> String
    #   resp.data.member #=> Types::Identity
    #   resp.data.member.arn #=> String
    #   resp.data.member.name #=> String
    #
    def create_channel_membership(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateChannelMembershipInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateChannelMembershipInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateChannelMembership
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::UnauthorizedClientException, Errors::ForbiddenException, Errors::ThrottledClientException, Errors::BadRequestException, Errors::ResourceLimitExceededException, Errors::ServiceUnavailableException, Errors::ServiceFailureException, Errors::ConflictException]),
        data_parser: Parsers::CreateChannelMembership
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateChannelMembership,
        stubs: @stubs,
        params_class: Params::CreateChannelMembershipOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_channel_membership
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new <code>ChannelModerator</code>. A channel moderator can:</p>
    #
    #          <ul>
    #             <li>
    #                <p>Add and remove other members of the channel.</p>
    #             </li>
    #             <li>
    #                <p>Add and remove other moderators of the channel.</p>
    #             </li>
    #             <li>
    #                <p>Add and remove user bans for the channel.</p>
    #             </li>
    #             <li>
    #                <p>Redact messages in the channel.</p>
    #             </li>
    #             <li>
    #                <p>List messages in the channel.</p>
    #             </li>
    #          </ul>
    #
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #                <code>AppInstanceUserArn</code> of the user that makes the API call as the value in
    #             the header.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::CreateChannelModeratorInput}.
    #
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel.</p>
    #
    # @option params [String] :channel_moderator_arn
    #   <p>The <code>AppInstanceUserArn</code> of the moderator.</p>
    #
    # @option params [String] :chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    # @return [Types::CreateChannelModeratorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_channel_moderator(
    #     channel_arn: 'ChannelArn', # required
    #     channel_moderator_arn: 'ChannelModeratorArn', # required
    #     chime_bearer: 'ChimeBearer' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateChannelModeratorOutput
    #   resp.data.channel_arn #=> String
    #   resp.data.channel_moderator #=> Types::Identity
    #   resp.data.channel_moderator.arn #=> String
    #   resp.data.channel_moderator.name #=> String
    #
    def create_channel_moderator(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateChannelModeratorInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateChannelModeratorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateChannelModerator
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::UnauthorizedClientException, Errors::ForbiddenException, Errors::ThrottledClientException, Errors::BadRequestException, Errors::ResourceLimitExceededException, Errors::ServiceUnavailableException, Errors::ServiceFailureException, Errors::ConflictException]),
        data_parser: Parsers::CreateChannelModerator
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateChannelModerator,
        stubs: @stubs,
        params_class: Params::CreateChannelModeratorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_channel_moderator
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Immediately makes a channel and its memberships inaccessible and marks them for
    #          deletion. This is an irreversible process.</p>
    #
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #                <code>AppInstanceUserArn</code> of the user that makes the API call as the value in
    #             the header.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DeleteChannelInput}.
    #
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel being deleted.</p>
    #
    # @option params [String] :chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    # @return [Types::DeleteChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_channel(
    #     channel_arn: 'ChannelArn', # required
    #     chime_bearer: 'ChimeBearer' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteChannelOutput
    #
    def delete_channel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteChannelInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteChannelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteChannel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::UnauthorizedClientException, Errors::ForbiddenException, Errors::ThrottledClientException, Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ServiceFailureException]),
        data_parser: Parsers::DeleteChannel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteChannel,
        stubs: @stubs,
        params_class: Params::DeleteChannelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_channel
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes a user from a channel's ban list.</p>
    #
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #                <code>AppInstanceUserArn</code> of the user that makes the API call as the value in
    #             the header.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DeleteChannelBanInput}.
    #
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel from which the <code>AppInstanceUser</code> was banned.</p>
    #
    # @option params [String] :member_arn
    #   <p>The ARN of the <code>AppInstanceUser</code> that you want to reinstate.</p>
    #
    # @option params [String] :chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    # @return [Types::DeleteChannelBanOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_channel_ban(
    #     channel_arn: 'ChannelArn', # required
    #     member_arn: 'MemberArn', # required
    #     chime_bearer: 'ChimeBearer' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteChannelBanOutput
    #
    def delete_channel_ban(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteChannelBanInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteChannelBanInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteChannelBan
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::UnauthorizedClientException, Errors::ForbiddenException, Errors::ThrottledClientException, Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ServiceFailureException]),
        data_parser: Parsers::DeleteChannelBan
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteChannelBan,
        stubs: @stubs,
        params_class: Params::DeleteChannelBanOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_channel_ban
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a channel flow, an irreversible process. This is a developer API.</p>
    #          <note>
    #             <p> This API works only when the channel flow is not associated with any channel. To get a list of all channels that a channel flow is associated with, use the
    #            <code>ListChannelsAssociatedWithChannelFlow</code> API. Use the <code>DisassociateChannelFlow</code> API to disassociate a channel flow from all channels. </p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DeleteChannelFlowInput}.
    #
    # @option params [String] :channel_flow_arn
    #   <p>The ARN of the channel flow.</p>
    #
    # @return [Types::DeleteChannelFlowOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_channel_flow(
    #     channel_flow_arn: 'ChannelFlowArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteChannelFlowOutput
    #
    def delete_channel_flow(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteChannelFlowInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteChannelFlowInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteChannelFlow
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::UnauthorizedClientException, Errors::ForbiddenException, Errors::ThrottledClientException, Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ServiceFailureException, Errors::ConflictException]),
        data_parser: Parsers::DeleteChannelFlow
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteChannelFlow,
        stubs: @stubs,
        params_class: Params::DeleteChannelFlowOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_channel_flow
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes a member from a channel.</p>
    #
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #                <code>AppInstanceUserArn</code> of the user that makes the API call as the value in
    #             the header.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DeleteChannelMembershipInput}.
    #
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel from which you want to remove the user.</p>
    #
    # @option params [String] :member_arn
    #   <p>The <code>AppInstanceUserArn</code> of the member that you're removing from the channel.</p>
    #
    # @option params [String] :chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    # @return [Types::DeleteChannelMembershipOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_channel_membership(
    #     channel_arn: 'ChannelArn', # required
    #     member_arn: 'MemberArn', # required
    #     chime_bearer: 'ChimeBearer' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteChannelMembershipOutput
    #
    def delete_channel_membership(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteChannelMembershipInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteChannelMembershipInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteChannelMembership
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::UnauthorizedClientException, Errors::ForbiddenException, Errors::ThrottledClientException, Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ServiceFailureException, Errors::ConflictException]),
        data_parser: Parsers::DeleteChannelMembership
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteChannelMembership,
        stubs: @stubs,
        params_class: Params::DeleteChannelMembershipOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_channel_membership
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a channel message. Only admins can perform this action. Deletion makes messages
    #          inaccessible immediately. A background process deletes any revisions created by
    #             <code>UpdateChannelMessage</code>.</p>
    #
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #                <code>AppInstanceUserArn</code> of the user that makes the API call as the value in
    #             the header.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DeleteChannelMessageInput}.
    #
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel.</p>
    #
    # @option params [String] :message_id
    #   <p>The ID of the message being deleted.</p>
    #
    # @option params [String] :chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    # @return [Types::DeleteChannelMessageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_channel_message(
    #     channel_arn: 'ChannelArn', # required
    #     message_id: 'MessageId', # required
    #     chime_bearer: 'ChimeBearer' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteChannelMessageOutput
    #
    def delete_channel_message(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteChannelMessageInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteChannelMessageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteChannelMessage
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::UnauthorizedClientException, Errors::ForbiddenException, Errors::ThrottledClientException, Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ServiceFailureException]),
        data_parser: Parsers::DeleteChannelMessage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteChannelMessage,
        stubs: @stubs,
        params_class: Params::DeleteChannelMessageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_channel_message
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a channel moderator.</p>
    #
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #                <code>AppInstanceUserArn</code> of the user that makes the API call as the value in
    #             the header.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DeleteChannelModeratorInput}.
    #
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel.</p>
    #
    # @option params [String] :channel_moderator_arn
    #   <p>The <code>AppInstanceUserArn</code> of the moderator being deleted.</p>
    #
    # @option params [String] :chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    # @return [Types::DeleteChannelModeratorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_channel_moderator(
    #     channel_arn: 'ChannelArn', # required
    #     channel_moderator_arn: 'ChannelModeratorArn', # required
    #     chime_bearer: 'ChimeBearer' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteChannelModeratorOutput
    #
    def delete_channel_moderator(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteChannelModeratorInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteChannelModeratorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteChannelModerator
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::UnauthorizedClientException, Errors::ForbiddenException, Errors::ThrottledClientException, Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ServiceFailureException]),
        data_parser: Parsers::DeleteChannelModerator
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteChannelModerator,
        stubs: @stubs,
        params_class: Params::DeleteChannelModeratorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_channel_moderator
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the full details of a channel in an Amazon Chime
    #          <code>AppInstance</code>.</p>
    #
    #          <note>
    #
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #                <code>AppInstanceUserArn</code> of the user that makes the API call as the value in
    #             the header.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeChannelInput}.
    #
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel.</p>
    #
    # @option params [String] :chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    # @return [Types::DescribeChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_channel(
    #     channel_arn: 'ChannelArn', # required
    #     chime_bearer: 'ChimeBearer' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeChannelOutput
    #   resp.data.channel #=> Types::Channel
    #   resp.data.channel.name #=> String
    #   resp.data.channel.channel_arn #=> String
    #   resp.data.channel.mode #=> String, one of ["UNRESTRICTED", "RESTRICTED"]
    #   resp.data.channel.privacy #=> String, one of ["PUBLIC", "PRIVATE"]
    #   resp.data.channel.metadata #=> String
    #   resp.data.channel.created_by #=> Types::Identity
    #   resp.data.channel.created_by.arn #=> String
    #   resp.data.channel.created_by.name #=> String
    #   resp.data.channel.created_timestamp #=> Time
    #   resp.data.channel.last_message_timestamp #=> Time
    #   resp.data.channel.last_updated_timestamp #=> Time
    #   resp.data.channel.channel_flow_arn #=> String
    #
    def describe_channel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeChannelInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeChannelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeChannel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedClientException, Errors::ForbiddenException, Errors::ThrottledClientException, Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ServiceFailureException]),
        data_parser: Parsers::DescribeChannel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeChannel,
        stubs: @stubs,
        params_class: Params::DescribeChannelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_channel
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the full details of a channel ban.</p>
    #
    #          <note>
    #
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #                <code>AppInstanceUserArn</code> of the user that makes the API call as the value in
    #             the header.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeChannelBanInput}.
    #
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel from which the user is banned.</p>
    #
    # @option params [String] :member_arn
    #   <p>The <code>AppInstanceUserArn</code> of the member being banned.</p>
    #
    # @option params [String] :chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    # @return [Types::DescribeChannelBanOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_channel_ban(
    #     channel_arn: 'ChannelArn', # required
    #     member_arn: 'MemberArn', # required
    #     chime_bearer: 'ChimeBearer' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeChannelBanOutput
    #   resp.data.channel_ban #=> Types::ChannelBan
    #   resp.data.channel_ban.member #=> Types::Identity
    #   resp.data.channel_ban.member.arn #=> String
    #   resp.data.channel_ban.member.name #=> String
    #   resp.data.channel_ban.channel_arn #=> String
    #   resp.data.channel_ban.created_timestamp #=> Time
    #   resp.data.channel_ban.created_by #=> Types::Identity
    #
    def describe_channel_ban(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeChannelBanInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeChannelBanInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeChannelBan
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedClientException, Errors::ForbiddenException, Errors::NotFoundException, Errors::ThrottledClientException, Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ServiceFailureException]),
        data_parser: Parsers::DescribeChannelBan
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeChannelBan,
        stubs: @stubs,
        params_class: Params::DescribeChannelBanOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_channel_ban
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the full details of a channel flow in an Amazon Chime <code>AppInstance</code>. This is a developer API.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeChannelFlowInput}.
    #
    # @option params [String] :channel_flow_arn
    #   <p>The ARN of the channel flow.</p>
    #
    # @return [Types::DescribeChannelFlowOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_channel_flow(
    #     channel_flow_arn: 'ChannelFlowArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeChannelFlowOutput
    #   resp.data.channel_flow #=> Types::ChannelFlow
    #   resp.data.channel_flow.channel_flow_arn #=> String
    #   resp.data.channel_flow.processors #=> Array<Processor>
    #   resp.data.channel_flow.processors[0] #=> Types::Processor
    #   resp.data.channel_flow.processors[0].name #=> String
    #   resp.data.channel_flow.processors[0].configuration #=> Types::ProcessorConfiguration
    #   resp.data.channel_flow.processors[0].configuration.lambda #=> Types::LambdaConfiguration
    #   resp.data.channel_flow.processors[0].configuration.lambda.resource_arn #=> String
    #   resp.data.channel_flow.processors[0].configuration.lambda.invocation_type #=> String, one of ["ASYNC"]
    #   resp.data.channel_flow.processors[0].execution_order #=> Integer
    #   resp.data.channel_flow.processors[0].fallback_action #=> String, one of ["CONTINUE", "ABORT"]
    #   resp.data.channel_flow.name #=> String
    #   resp.data.channel_flow.created_timestamp #=> Time
    #   resp.data.channel_flow.last_updated_timestamp #=> Time
    #
    def describe_channel_flow(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeChannelFlowInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeChannelFlowInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeChannelFlow
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedClientException, Errors::ForbiddenException, Errors::ThrottledClientException, Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ServiceFailureException]),
        data_parser: Parsers::DescribeChannelFlow
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeChannelFlow,
        stubs: @stubs,
        params_class: Params::DescribeChannelFlowOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_channel_flow
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the full details of a user's channel membership.</p>
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #                <code>AppInstanceUserArn</code> of the user that makes the API call as the value in
    #             the header.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeChannelMembershipInput}.
    #
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel.</p>
    #
    # @option params [String] :member_arn
    #   <p>The <code>AppInstanceUserArn</code> of the member.</p>
    #
    # @option params [String] :chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    # @return [Types::DescribeChannelMembershipOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_channel_membership(
    #     channel_arn: 'ChannelArn', # required
    #     member_arn: 'MemberArn', # required
    #     chime_bearer: 'ChimeBearer' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeChannelMembershipOutput
    #   resp.data.channel_membership #=> Types::ChannelMembership
    #   resp.data.channel_membership.invited_by #=> Types::Identity
    #   resp.data.channel_membership.invited_by.arn #=> String
    #   resp.data.channel_membership.invited_by.name #=> String
    #   resp.data.channel_membership.type #=> String, one of ["DEFAULT", "HIDDEN"]
    #   resp.data.channel_membership.member #=> Types::Identity
    #   resp.data.channel_membership.channel_arn #=> String
    #   resp.data.channel_membership.created_timestamp #=> Time
    #   resp.data.channel_membership.last_updated_timestamp #=> Time
    #
    def describe_channel_membership(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeChannelMembershipInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeChannelMembershipInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeChannelMembership
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedClientException, Errors::ForbiddenException, Errors::NotFoundException, Errors::ThrottledClientException, Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ServiceFailureException]),
        data_parser: Parsers::DescribeChannelMembership
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeChannelMembership,
        stubs: @stubs,
        params_class: Params::DescribeChannelMembershipOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_channel_membership
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Returns the details of a channel based on the membership of the specified
    #             <code>AppInstanceUser</code>.</p>
    #
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #                <code>AppInstanceUserArn</code> of the user that makes the API call as the value in
    #             the header.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeChannelMembershipForAppInstanceUserInput}.
    #
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel to which the user belongs.</p>
    #
    # @option params [String] :app_instance_user_arn
    #   <p>The ARN of the user in a channel.</p>
    #
    # @option params [String] :chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    # @return [Types::DescribeChannelMembershipForAppInstanceUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_channel_membership_for_app_instance_user(
    #     channel_arn: 'ChannelArn', # required
    #     app_instance_user_arn: 'AppInstanceUserArn', # required
    #     chime_bearer: 'ChimeBearer' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeChannelMembershipForAppInstanceUserOutput
    #   resp.data.channel_membership #=> Types::ChannelMembershipForAppInstanceUserSummary
    #   resp.data.channel_membership.channel_summary #=> Types::ChannelSummary
    #   resp.data.channel_membership.channel_summary.name #=> String
    #   resp.data.channel_membership.channel_summary.channel_arn #=> String
    #   resp.data.channel_membership.channel_summary.mode #=> String, one of ["UNRESTRICTED", "RESTRICTED"]
    #   resp.data.channel_membership.channel_summary.privacy #=> String, one of ["PUBLIC", "PRIVATE"]
    #   resp.data.channel_membership.channel_summary.metadata #=> String
    #   resp.data.channel_membership.channel_summary.last_message_timestamp #=> Time
    #   resp.data.channel_membership.app_instance_user_membership_summary #=> Types::AppInstanceUserMembershipSummary
    #   resp.data.channel_membership.app_instance_user_membership_summary.type #=> String, one of ["DEFAULT", "HIDDEN"]
    #   resp.data.channel_membership.app_instance_user_membership_summary.read_marker_timestamp #=> Time
    #
    def describe_channel_membership_for_app_instance_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeChannelMembershipForAppInstanceUserInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeChannelMembershipForAppInstanceUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeChannelMembershipForAppInstanceUser
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedClientException, Errors::ForbiddenException, Errors::ThrottledClientException, Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ServiceFailureException]),
        data_parser: Parsers::DescribeChannelMembershipForAppInstanceUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeChannelMembershipForAppInstanceUser,
        stubs: @stubs,
        params_class: Params::DescribeChannelMembershipForAppInstanceUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_channel_membership_for_app_instance_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the full details of a channel moderated by the specified
    #             <code>AppInstanceUser</code>.</p>
    #
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #                <code>AppInstanceUserArn</code> of the user that makes the API call as the value in
    #             the header.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeChannelModeratedByAppInstanceUserInput}.
    #
    # @option params [String] :channel_arn
    #   <p>The ARN of the moderated channel.</p>
    #
    # @option params [String] :app_instance_user_arn
    #   <p>The ARN of the <code>AppInstanceUser</code> in the moderated channel.</p>
    #
    # @option params [String] :chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    # @return [Types::DescribeChannelModeratedByAppInstanceUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_channel_moderated_by_app_instance_user(
    #     channel_arn: 'ChannelArn', # required
    #     app_instance_user_arn: 'AppInstanceUserArn', # required
    #     chime_bearer: 'ChimeBearer' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeChannelModeratedByAppInstanceUserOutput
    #   resp.data.channel #=> Types::ChannelModeratedByAppInstanceUserSummary
    #   resp.data.channel.channel_summary #=> Types::ChannelSummary
    #   resp.data.channel.channel_summary.name #=> String
    #   resp.data.channel.channel_summary.channel_arn #=> String
    #   resp.data.channel.channel_summary.mode #=> String, one of ["UNRESTRICTED", "RESTRICTED"]
    #   resp.data.channel.channel_summary.privacy #=> String, one of ["PUBLIC", "PRIVATE"]
    #   resp.data.channel.channel_summary.metadata #=> String
    #   resp.data.channel.channel_summary.last_message_timestamp #=> Time
    #
    def describe_channel_moderated_by_app_instance_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeChannelModeratedByAppInstanceUserInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeChannelModeratedByAppInstanceUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeChannelModeratedByAppInstanceUser
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedClientException, Errors::ForbiddenException, Errors::ThrottledClientException, Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ServiceFailureException]),
        data_parser: Parsers::DescribeChannelModeratedByAppInstanceUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeChannelModeratedByAppInstanceUser,
        stubs: @stubs,
        params_class: Params::DescribeChannelModeratedByAppInstanceUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_channel_moderated_by_app_instance_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the full details of a single ChannelModerator.</p>
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #                <code>AppInstanceUserArn</code> of the user that makes the API call as the value in
    #             the header.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeChannelModeratorInput}.
    #
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel.</p>
    #
    # @option params [String] :channel_moderator_arn
    #   <p>The <code>AppInstanceUserArn</code> of the channel moderator.</p>
    #
    # @option params [String] :chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    # @return [Types::DescribeChannelModeratorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_channel_moderator(
    #     channel_arn: 'ChannelArn', # required
    #     channel_moderator_arn: 'ChannelModeratorArn', # required
    #     chime_bearer: 'ChimeBearer' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeChannelModeratorOutput
    #   resp.data.channel_moderator #=> Types::ChannelModerator
    #   resp.data.channel_moderator.moderator #=> Types::Identity
    #   resp.data.channel_moderator.moderator.arn #=> String
    #   resp.data.channel_moderator.moderator.name #=> String
    #   resp.data.channel_moderator.channel_arn #=> String
    #   resp.data.channel_moderator.created_timestamp #=> Time
    #   resp.data.channel_moderator.created_by #=> Types::Identity
    #
    def describe_channel_moderator(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeChannelModeratorInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeChannelModeratorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeChannelModerator
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedClientException, Errors::ForbiddenException, Errors::NotFoundException, Errors::ThrottledClientException, Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ServiceFailureException]),
        data_parser: Parsers::DescribeChannelModerator
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeChannelModerator,
        stubs: @stubs,
        params_class: Params::DescribeChannelModeratorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_channel_moderator
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociates a channel flow from all its channels. Once disassociated, all messages to
    #          that channel stop going through the channel flow processor.</p>
    #          <note>
    #             <p>Only administrators or channel moderators can disassociate a channel flow. The <code>x-amz-chime-bearer</code> request header is mandatory. Use the <code>AppInstanceUserArn</code>
    #            of the user that makes the API call as the value in the header.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DisassociateChannelFlowInput}.
    #
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel.</p>
    #
    # @option params [String] :channel_flow_arn
    #   <p>The ARN of the channel flow.</p>
    #
    # @option params [String] :chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user making the API call.</p>
    #
    # @return [Types::DisassociateChannelFlowOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_channel_flow(
    #     channel_arn: 'ChannelArn', # required
    #     channel_flow_arn: 'ChannelFlowArn', # required
    #     chime_bearer: 'ChimeBearer' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateChannelFlowOutput
    #
    def disassociate_channel_flow(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateChannelFlowInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateChannelFlowInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateChannelFlow
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::UnauthorizedClientException, Errors::ForbiddenException, Errors::NotFoundException, Errors::ThrottledClientException, Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ServiceFailureException, Errors::ConflictException]),
        data_parser: Parsers::DisassociateChannelFlow
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateChannelFlow,
        stubs: @stubs,
        params_class: Params::DisassociateChannelFlowOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_channel_flow
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the membership preferences of an <code>AppInstanceUser</code> for the specified channel. The <code>AppInstanceUser</code> must be a member of the channel.
    #          Only the <code>AppInstanceUser</code> who owns the membership can retrieve preferences. Users in the <code>AppInstanceAdmin</code> and channel moderator roles can't retrieve preferences for other users.
    #          Banned users can't retrieve membership preferences for the channel from which they are banned.</p>
    #
    # @param [Hash] params
    #   See {Types::GetChannelMembershipPreferencesInput}.
    #
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel.</p>
    #
    # @option params [String] :member_arn
    #   <p>The <code>AppInstanceUserArn</code> of the member retrieving the preferences.</p>
    #
    # @option params [String] :chime_bearer
    #   <p>The <code>AppInstanceUserARN</code> of the user making the API call.</p>
    #
    # @return [Types::GetChannelMembershipPreferencesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_channel_membership_preferences(
    #     channel_arn: 'ChannelArn', # required
    #     member_arn: 'MemberArn', # required
    #     chime_bearer: 'ChimeBearer' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetChannelMembershipPreferencesOutput
    #   resp.data.channel_arn #=> String
    #   resp.data.member #=> Types::Identity
    #   resp.data.member.arn #=> String
    #   resp.data.member.name #=> String
    #   resp.data.preferences #=> Types::ChannelMembershipPreferences
    #   resp.data.preferences.push_notifications #=> Types::PushNotificationPreferences
    #   resp.data.preferences.push_notifications.allow_notifications #=> String, one of ["ALL", "NONE", "FILTERED"]
    #   resp.data.preferences.push_notifications.filter_rule #=> String
    #
    def get_channel_membership_preferences(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetChannelMembershipPreferencesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetChannelMembershipPreferencesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetChannelMembershipPreferences
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedClientException, Errors::ForbiddenException, Errors::ThrottledClientException, Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ServiceFailureException]),
        data_parser: Parsers::GetChannelMembershipPreferences
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetChannelMembershipPreferences,
        stubs: @stubs,
        params_class: Params::GetChannelMembershipPreferencesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_channel_membership_preferences
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the full details of a channel message.</p>
    #
    #          <note>
    #             <p>The x-amz-chime-bearer request header is mandatory. Use the
    #                <code>AppInstanceUserArn</code> of the user that makes the API call as the value in
    #             the header.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::GetChannelMessageInput}.
    #
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel.</p>
    #
    # @option params [String] :message_id
    #   <p>The ID of the message.</p>
    #
    # @option params [String] :chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    # @return [Types::GetChannelMessageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_channel_message(
    #     channel_arn: 'ChannelArn', # required
    #     message_id: 'MessageId', # required
    #     chime_bearer: 'ChimeBearer' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetChannelMessageOutput
    #   resp.data.channel_message #=> Types::ChannelMessage
    #   resp.data.channel_message.channel_arn #=> String
    #   resp.data.channel_message.message_id #=> String
    #   resp.data.channel_message.content #=> String
    #   resp.data.channel_message.metadata #=> String
    #   resp.data.channel_message.type #=> String, one of ["STANDARD", "CONTROL"]
    #   resp.data.channel_message.created_timestamp #=> Time
    #   resp.data.channel_message.last_edited_timestamp #=> Time
    #   resp.data.channel_message.last_updated_timestamp #=> Time
    #   resp.data.channel_message.sender #=> Types::Identity
    #   resp.data.channel_message.sender.arn #=> String
    #   resp.data.channel_message.sender.name #=> String
    #   resp.data.channel_message.redacted #=> Boolean
    #   resp.data.channel_message.persistence #=> String, one of ["PERSISTENT", "NON_PERSISTENT"]
    #   resp.data.channel_message.status #=> Types::ChannelMessageStatusStructure
    #   resp.data.channel_message.status.value #=> String, one of ["SENT", "PENDING", "FAILED", "DENIED"]
    #   resp.data.channel_message.status.detail #=> String
    #   resp.data.channel_message.message_attributes #=> Hash<String, MessageAttributeValue>
    #   resp.data.channel_message.message_attributes['key'] #=> Types::MessageAttributeValue
    #   resp.data.channel_message.message_attributes['key'].string_values #=> Array<String>
    #   resp.data.channel_message.message_attributes['key'].string_values[0] #=> String
    #
    def get_channel_message(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetChannelMessageInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetChannelMessageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetChannelMessage
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedClientException, Errors::ForbiddenException, Errors::NotFoundException, Errors::ThrottledClientException, Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ServiceFailureException]),
        data_parser: Parsers::GetChannelMessage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetChannelMessage,
        stubs: @stubs,
        params_class: Params::GetChannelMessageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_channel_message
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets message status for a specified <code>messageId</code>. Use this API to determine the intermediate status of messages going through channel flow processing. The API provides an alternative to
    #          retrieving message status if the event was not received because a client wasn't connected to a websocket. </p>
    #
    #          <p>Messages can have any one of these statuses.</p>
    #
    #          <dl>
    #             <dt>SENT</dt>
    #             <dd>
    #                <p>Message processed successfully</p>
    #             </dd>
    #             <dt>PENDING</dt>
    #             <dd>
    #                <p>Ongoing processing</p>
    #             </dd>
    #             <dt>FAILED</dt>
    #             <dd>
    #                <p>Processing failed</p>
    #             </dd>
    #             <dt>DENIED</dt>
    #             <dd>
    #                <p>Messasge denied by the processor</p>
    #             </dd>
    #          </dl>
    #
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>This API does not return statuses for denied messages, because we don't store them once the processor denies them. </p>
    #                </li>
    #                <li>
    #                   <p>Only the message sender can invoke this API.</p>
    #                </li>
    #                <li>
    #                   <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the <code>AppInstanceUserArn</code> of the user that makes the API call as the value in the header</p>
    #                </li>
    #             </ul>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::GetChannelMessageStatusInput}.
    #
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel</p>
    #
    # @option params [String] :message_id
    #   <p>The ID of the message.</p>
    #
    # @option params [String] :chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user making the API call.</p>
    #
    # @return [Types::GetChannelMessageStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_channel_message_status(
    #     channel_arn: 'ChannelArn', # required
    #     message_id: 'MessageId', # required
    #     chime_bearer: 'ChimeBearer' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetChannelMessageStatusOutput
    #   resp.data.status #=> Types::ChannelMessageStatusStructure
    #   resp.data.status.value #=> String, one of ["SENT", "PENDING", "FAILED", "DENIED"]
    #   resp.data.status.detail #=> String
    #
    def get_channel_message_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetChannelMessageStatusInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetChannelMessageStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetChannelMessageStatus
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedClientException, Errors::ForbiddenException, Errors::ThrottledClientException, Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ServiceFailureException]),
        data_parser: Parsers::GetChannelMessageStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetChannelMessageStatus,
        stubs: @stubs,
        params_class: Params::GetChannelMessageStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_channel_message_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>The details of the endpoint for the messaging session.</p>
    #
    # @param [Hash] params
    #   See {Types::GetMessagingSessionEndpointInput}.
    #
    # @return [Types::GetMessagingSessionEndpointOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_messaging_session_endpoint()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetMessagingSessionEndpointOutput
    #   resp.data.endpoint #=> Types::MessagingSessionEndpoint
    #   resp.data.endpoint.url #=> String
    #
    def get_messaging_session_endpoint(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetMessagingSessionEndpointInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetMessagingSessionEndpointInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetMessagingSessionEndpoint
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedClientException, Errors::ForbiddenException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::ServiceFailureException]),
        data_parser: Parsers::GetMessagingSessionEndpoint
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetMessagingSessionEndpoint,
        stubs: @stubs,
        params_class: Params::GetMessagingSessionEndpointOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_messaging_session_endpoint
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all the users banned from a particular channel.</p>
    #
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #                <code>AppInstanceUserArn</code> of the user that makes the API call as the value in
    #             the header.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::ListChannelBansInput}.
    #
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of bans that you want returned.</p>
    #
    # @option params [String] :next_token
    #   <p>The token passed by previous API calls until all requested bans are returned.</p>
    #
    # @option params [String] :chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    # @return [Types::ListChannelBansOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_channel_bans(
    #     channel_arn: 'ChannelArn', # required
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     chime_bearer: 'ChimeBearer' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListChannelBansOutput
    #   resp.data.channel_arn #=> String
    #   resp.data.next_token #=> String
    #   resp.data.channel_bans #=> Array<ChannelBanSummary>
    #   resp.data.channel_bans[0] #=> Types::ChannelBanSummary
    #   resp.data.channel_bans[0].member #=> Types::Identity
    #   resp.data.channel_bans[0].member.arn #=> String
    #   resp.data.channel_bans[0].member.name #=> String
    #
    def list_channel_bans(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListChannelBansInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListChannelBansInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListChannelBans
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedClientException, Errors::ForbiddenException, Errors::ThrottledClientException, Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ServiceFailureException]),
        data_parser: Parsers::ListChannelBans
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListChannelBans,
        stubs: @stubs,
        params_class: Params::ListChannelBansOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_channel_bans
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a paginated lists of all the channel flows created under a single Chime. This is a developer API.</p>
    #
    # @param [Hash] params
    #   See {Types::ListChannelFlowsInput}.
    #
    # @option params [String] :app_instance_arn
    #   <p>The ARN of the app instance.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of channel flows that you want to return.</p>
    #
    # @option params [String] :next_token
    #   <p>The token passed by previous API calls until all requested channel flows are returned.</p>
    #
    # @return [Types::ListChannelFlowsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_channel_flows(
    #     app_instance_arn: 'AppInstanceArn', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListChannelFlowsOutput
    #   resp.data.channel_flows #=> Array<ChannelFlowSummary>
    #   resp.data.channel_flows[0] #=> Types::ChannelFlowSummary
    #   resp.data.channel_flows[0].channel_flow_arn #=> String
    #   resp.data.channel_flows[0].name #=> String
    #   resp.data.channel_flows[0].processors #=> Array<Processor>
    #   resp.data.channel_flows[0].processors[0] #=> Types::Processor
    #   resp.data.channel_flows[0].processors[0].name #=> String
    #   resp.data.channel_flows[0].processors[0].configuration #=> Types::ProcessorConfiguration
    #   resp.data.channel_flows[0].processors[0].configuration.lambda #=> Types::LambdaConfiguration
    #   resp.data.channel_flows[0].processors[0].configuration.lambda.resource_arn #=> String
    #   resp.data.channel_flows[0].processors[0].configuration.lambda.invocation_type #=> String, one of ["ASYNC"]
    #   resp.data.channel_flows[0].processors[0].execution_order #=> Integer
    #   resp.data.channel_flows[0].processors[0].fallback_action #=> String, one of ["CONTINUE", "ABORT"]
    #   resp.data.next_token #=> String
    #
    def list_channel_flows(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListChannelFlowsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListChannelFlowsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListChannelFlows
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedClientException, Errors::ForbiddenException, Errors::ThrottledClientException, Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ServiceFailureException]),
        data_parser: Parsers::ListChannelFlows
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListChannelFlows,
        stubs: @stubs,
        params_class: Params::ListChannelFlowsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_channel_flows
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all channel memberships in a channel.</p>
    #
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #                <code>AppInstanceUserArn</code> of the user that makes the API call as the value in
    #             the header.</p>
    #          </note>
    #
    #          <p>If you want to list the channels to which a specific app instance user belongs, see the
    #          <a href="https://docs.aws.amazon.com/chime/latest/APIReference/API_messaging-chime_ListChannelMembershipsForAppInstanceUser.html">ListChannelMembershipsForAppInstanceUser</a> API.</p>
    #
    # @param [Hash] params
    #   See {Types::ListChannelMembershipsInput}.
    #
    # @option params [String] :channel_arn
    #   <p>The maximum number of channel memberships that you want returned.</p>
    #
    # @option params [String] :type
    #   <p>The membership type of a user, <code>DEFAULT</code> or <code>HIDDEN</code>. Default
    #            members are returned as part of <code>ListChannelMemberships</code> if no type is specified. Hidden members
    #            are only returned if the type filter in <code>ListChannelMemberships</code> equals
    #               <code>HIDDEN</code>.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of channel memberships that you want returned.</p>
    #
    # @option params [String] :next_token
    #   <p>The token passed by previous API calls until all requested channel memberships are
    #            returned.</p>
    #
    # @option params [String] :chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    # @return [Types::ListChannelMembershipsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_channel_memberships(
    #     channel_arn: 'ChannelArn', # required
    #     type: 'DEFAULT', # accepts ["DEFAULT", "HIDDEN"]
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     chime_bearer: 'ChimeBearer' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListChannelMembershipsOutput
    #   resp.data.channel_arn #=> String
    #   resp.data.channel_memberships #=> Array<ChannelMembershipSummary>
    #   resp.data.channel_memberships[0] #=> Types::ChannelMembershipSummary
    #   resp.data.channel_memberships[0].member #=> Types::Identity
    #   resp.data.channel_memberships[0].member.arn #=> String
    #   resp.data.channel_memberships[0].member.name #=> String
    #   resp.data.next_token #=> String
    #
    def list_channel_memberships(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListChannelMembershipsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListChannelMembershipsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListChannelMemberships
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedClientException, Errors::ForbiddenException, Errors::ThrottledClientException, Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ServiceFailureException]),
        data_parser: Parsers::ListChannelMemberships
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListChannelMemberships,
        stubs: @stubs,
        params_class: Params::ListChannelMembershipsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_channel_memberships
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Lists all channels that a particular <code>AppInstanceUser</code> is a part of. Only an
    #             <code>AppInstanceAdmin</code> can call the API with a user ARN that is not their own. </p>
    #
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #                <code>AppInstanceUserArn</code> of the user that makes the API call as the value in
    #             the header.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::ListChannelMembershipsForAppInstanceUserInput}.
    #
    # @option params [String] :app_instance_user_arn
    #   <p>The ARN of the <code>AppInstanceUser</code>s</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of users that you want returned.</p>
    #
    # @option params [String] :next_token
    #   <p>The token returned from previous API requests until the number of channel memberships is
    #            reached.</p>
    #
    # @option params [String] :chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    # @return [Types::ListChannelMembershipsForAppInstanceUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_channel_memberships_for_app_instance_user(
    #     app_instance_user_arn: 'AppInstanceUserArn',
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     chime_bearer: 'ChimeBearer' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListChannelMembershipsForAppInstanceUserOutput
    #   resp.data.channel_memberships #=> Array<ChannelMembershipForAppInstanceUserSummary>
    #   resp.data.channel_memberships[0] #=> Types::ChannelMembershipForAppInstanceUserSummary
    #   resp.data.channel_memberships[0].channel_summary #=> Types::ChannelSummary
    #   resp.data.channel_memberships[0].channel_summary.name #=> String
    #   resp.data.channel_memberships[0].channel_summary.channel_arn #=> String
    #   resp.data.channel_memberships[0].channel_summary.mode #=> String, one of ["UNRESTRICTED", "RESTRICTED"]
    #   resp.data.channel_memberships[0].channel_summary.privacy #=> String, one of ["PUBLIC", "PRIVATE"]
    #   resp.data.channel_memberships[0].channel_summary.metadata #=> String
    #   resp.data.channel_memberships[0].channel_summary.last_message_timestamp #=> Time
    #   resp.data.channel_memberships[0].app_instance_user_membership_summary #=> Types::AppInstanceUserMembershipSummary
    #   resp.data.channel_memberships[0].app_instance_user_membership_summary.type #=> String, one of ["DEFAULT", "HIDDEN"]
    #   resp.data.channel_memberships[0].app_instance_user_membership_summary.read_marker_timestamp #=> Time
    #   resp.data.next_token #=> String
    #
    def list_channel_memberships_for_app_instance_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListChannelMembershipsForAppInstanceUserInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListChannelMembershipsForAppInstanceUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListChannelMembershipsForAppInstanceUser
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedClientException, Errors::ForbiddenException, Errors::ThrottledClientException, Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ServiceFailureException]),
        data_parser: Parsers::ListChannelMembershipsForAppInstanceUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListChannelMembershipsForAppInstanceUser,
        stubs: @stubs,
        params_class: Params::ListChannelMembershipsForAppInstanceUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_channel_memberships_for_app_instance_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List all the messages in a channel. Returns a paginated list of
    #             <code>ChannelMessages</code>. By default, sorted by creation timestamp in descending
    #          order.</p>
    #          <note>
    #             <p>Redacted messages appear in the results as empty, since they are only redacted, not
    #             deleted. Deleted messages do not appear in the results. This action always returns the
    #             latest version of an edited message.</p>
    #             <p>Also, the x-amz-chime-bearer request header is mandatory. Use the
    #                <code>AppInstanceUserArn</code> of the user that makes the API call as the value in
    #             the header.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::ListChannelMessagesInput}.
    #
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel.</p>
    #
    # @option params [String] :sort_order
    #   <p>The order in which you want messages sorted. Default is Descending, based on time
    #            created.</p>
    #
    # @option params [Time] :not_before
    #   <p>The initial or starting time stamp for your requested messages.</p>
    #
    # @option params [Time] :not_after
    #   <p>The final or ending time stamp for your requested messages.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of messages that you want returned.</p>
    #
    # @option params [String] :next_token
    #   <p>The token passed by previous API calls until all requested messages are returned.</p>
    #
    # @option params [String] :chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    # @return [Types::ListChannelMessagesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_channel_messages(
    #     channel_arn: 'ChannelArn', # required
    #     sort_order: 'ASCENDING', # accepts ["ASCENDING", "DESCENDING"]
    #     not_before: Time.now,
    #     not_after: Time.now,
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     chime_bearer: 'ChimeBearer' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListChannelMessagesOutput
    #   resp.data.channel_arn #=> String
    #   resp.data.next_token #=> String
    #   resp.data.channel_messages #=> Array<ChannelMessageSummary>
    #   resp.data.channel_messages[0] #=> Types::ChannelMessageSummary
    #   resp.data.channel_messages[0].message_id #=> String
    #   resp.data.channel_messages[0].content #=> String
    #   resp.data.channel_messages[0].metadata #=> String
    #   resp.data.channel_messages[0].type #=> String, one of ["STANDARD", "CONTROL"]
    #   resp.data.channel_messages[0].created_timestamp #=> Time
    #   resp.data.channel_messages[0].last_updated_timestamp #=> Time
    #   resp.data.channel_messages[0].last_edited_timestamp #=> Time
    #   resp.data.channel_messages[0].sender #=> Types::Identity
    #   resp.data.channel_messages[0].sender.arn #=> String
    #   resp.data.channel_messages[0].sender.name #=> String
    #   resp.data.channel_messages[0].redacted #=> Boolean
    #   resp.data.channel_messages[0].status #=> Types::ChannelMessageStatusStructure
    #   resp.data.channel_messages[0].status.value #=> String, one of ["SENT", "PENDING", "FAILED", "DENIED"]
    #   resp.data.channel_messages[0].status.detail #=> String
    #   resp.data.channel_messages[0].message_attributes #=> Hash<String, MessageAttributeValue>
    #   resp.data.channel_messages[0].message_attributes['key'] #=> Types::MessageAttributeValue
    #   resp.data.channel_messages[0].message_attributes['key'].string_values #=> Array<String>
    #   resp.data.channel_messages[0].message_attributes['key'].string_values[0] #=> String
    #
    def list_channel_messages(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListChannelMessagesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListChannelMessagesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListChannelMessages
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedClientException, Errors::ForbiddenException, Errors::ThrottledClientException, Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ServiceFailureException]),
        data_parser: Parsers::ListChannelMessages
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListChannelMessages,
        stubs: @stubs,
        params_class: Params::ListChannelMessagesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_channel_messages
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all the moderators for a channel.</p>
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #                <code>AppInstanceUserArn</code> of the user that makes the API call as the value in
    #             the header.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::ListChannelModeratorsInput}.
    #
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of moderators that you want returned.</p>
    #
    # @option params [String] :next_token
    #   <p>The token passed by previous API calls until all requested moderators are
    #            returned.</p>
    #
    # @option params [String] :chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    # @return [Types::ListChannelModeratorsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_channel_moderators(
    #     channel_arn: 'ChannelArn', # required
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     chime_bearer: 'ChimeBearer' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListChannelModeratorsOutput
    #   resp.data.channel_arn #=> String
    #   resp.data.next_token #=> String
    #   resp.data.channel_moderators #=> Array<ChannelModeratorSummary>
    #   resp.data.channel_moderators[0] #=> Types::ChannelModeratorSummary
    #   resp.data.channel_moderators[0].moderator #=> Types::Identity
    #   resp.data.channel_moderators[0].moderator.arn #=> String
    #   resp.data.channel_moderators[0].moderator.name #=> String
    #
    def list_channel_moderators(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListChannelModeratorsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListChannelModeratorsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListChannelModerators
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedClientException, Errors::ForbiddenException, Errors::ThrottledClientException, Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ServiceFailureException]),
        data_parser: Parsers::ListChannelModerators
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListChannelModerators,
        stubs: @stubs,
        params_class: Params::ListChannelModeratorsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_channel_moderators
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all Channels created under a single Chime App as a paginated list. You can specify
    #          filters to narrow results.</p>
    #
    #          <p class="title">
    #             <b>Functionality & restrictions</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>Use privacy = <code>PUBLIC</code> to retrieve all public channels in the
    #                account.</p>
    #             </li>
    #             <li>
    #                <p>Only an <code>AppInstanceAdmin</code> can set privacy = <code>PRIVATE</code> to
    #                list the private channels in an account.</p>
    #             </li>
    #          </ul>
    #
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #                <code>AppInstanceUserArn</code> of the user that makes the API call as the value in
    #             the header.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::ListChannelsInput}.
    #
    # @option params [String] :app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    #
    # @option params [String] :privacy
    #   <p>The privacy setting. <code>PUBLIC</code> retrieves all the public channels.
    #               <code>PRIVATE</code> retrieves private channels. Only an <code>AppInstanceAdmin</code>
    #            can retrieve private channels. </p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of channels that you want to return.</p>
    #
    # @option params [String] :next_token
    #   <p>The token passed by previous API calls until all requested channels are returned.</p>
    #
    # @option params [String] :chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    # @return [Types::ListChannelsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_channels(
    #     app_instance_arn: 'AppInstanceArn', # required
    #     privacy: 'PUBLIC', # accepts ["PUBLIC", "PRIVATE"]
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     chime_bearer: 'ChimeBearer' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListChannelsOutput
    #   resp.data.channels #=> Array<ChannelSummary>
    #   resp.data.channels[0] #=> Types::ChannelSummary
    #   resp.data.channels[0].name #=> String
    #   resp.data.channels[0].channel_arn #=> String
    #   resp.data.channels[0].mode #=> String, one of ["UNRESTRICTED", "RESTRICTED"]
    #   resp.data.channels[0].privacy #=> String, one of ["PUBLIC", "PRIVATE"]
    #   resp.data.channels[0].metadata #=> String
    #   resp.data.channels[0].last_message_timestamp #=> Time
    #   resp.data.next_token #=> String
    #
    def list_channels(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListChannelsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListChannelsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListChannels
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedClientException, Errors::ForbiddenException, Errors::ThrottledClientException, Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ServiceFailureException]),
        data_parser: Parsers::ListChannels
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListChannels,
        stubs: @stubs,
        params_class: Params::ListChannelsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_channels
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all channels associated with a specified channel flow. You can associate a channel flow with multiple channels, but you can only associate a channel with one channel flow. This is a developer API.</p>
    #
    # @param [Hash] params
    #   See {Types::ListChannelsAssociatedWithChannelFlowInput}.
    #
    # @option params [String] :channel_flow_arn
    #   <p>The ARN of the channel flow.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of channels that you want to return.</p>
    #
    # @option params [String] :next_token
    #   <p>The token passed by previous API calls until all requested channels are returned.</p>
    #
    # @return [Types::ListChannelsAssociatedWithChannelFlowOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_channels_associated_with_channel_flow(
    #     channel_flow_arn: 'ChannelFlowArn', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListChannelsAssociatedWithChannelFlowOutput
    #   resp.data.channels #=> Array<ChannelAssociatedWithFlowSummary>
    #   resp.data.channels[0] #=> Types::ChannelAssociatedWithFlowSummary
    #   resp.data.channels[0].name #=> String
    #   resp.data.channels[0].channel_arn #=> String
    #   resp.data.channels[0].mode #=> String, one of ["UNRESTRICTED", "RESTRICTED"]
    #   resp.data.channels[0].privacy #=> String, one of ["PUBLIC", "PRIVATE"]
    #   resp.data.channels[0].metadata #=> String
    #   resp.data.next_token #=> String
    #
    def list_channels_associated_with_channel_flow(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListChannelsAssociatedWithChannelFlowInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListChannelsAssociatedWithChannelFlowInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListChannelsAssociatedWithChannelFlow
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedClientException, Errors::ForbiddenException, Errors::ThrottledClientException, Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ServiceFailureException]),
        data_parser: Parsers::ListChannelsAssociatedWithChannelFlow
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListChannelsAssociatedWithChannelFlow,
        stubs: @stubs,
        params_class: Params::ListChannelsAssociatedWithChannelFlowOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_channels_associated_with_channel_flow
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>A list of the channels moderated by an <code>AppInstanceUser</code>.</p>
    #
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #                <code>AppInstanceUserArn</code> of the user that makes the API call as the value in
    #             the header.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::ListChannelsModeratedByAppInstanceUserInput}.
    #
    # @option params [String] :app_instance_user_arn
    #   <p>The ARN of the user in the moderated channel.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of channels in the request.</p>
    #
    # @option params [String] :next_token
    #   <p>The token returned from previous API requests until the number of channels moderated by
    #            the user is reached.</p>
    #
    # @option params [String] :chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    # @return [Types::ListChannelsModeratedByAppInstanceUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_channels_moderated_by_app_instance_user(
    #     app_instance_user_arn: 'AppInstanceUserArn',
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     chime_bearer: 'ChimeBearer' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListChannelsModeratedByAppInstanceUserOutput
    #   resp.data.channels #=> Array<ChannelModeratedByAppInstanceUserSummary>
    #   resp.data.channels[0] #=> Types::ChannelModeratedByAppInstanceUserSummary
    #   resp.data.channels[0].channel_summary #=> Types::ChannelSummary
    #   resp.data.channels[0].channel_summary.name #=> String
    #   resp.data.channels[0].channel_summary.channel_arn #=> String
    #   resp.data.channels[0].channel_summary.mode #=> String, one of ["UNRESTRICTED", "RESTRICTED"]
    #   resp.data.channels[0].channel_summary.privacy #=> String, one of ["PUBLIC", "PRIVATE"]
    #   resp.data.channels[0].channel_summary.metadata #=> String
    #   resp.data.channels[0].channel_summary.last_message_timestamp #=> Time
    #   resp.data.next_token #=> String
    #
    def list_channels_moderated_by_app_instance_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListChannelsModeratedByAppInstanceUserInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListChannelsModeratedByAppInstanceUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListChannelsModeratedByAppInstanceUser
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedClientException, Errors::ForbiddenException, Errors::ThrottledClientException, Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ServiceFailureException]),
        data_parser: Parsers::ListChannelsModeratedByAppInstanceUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListChannelsModeratedByAppInstanceUser,
        stubs: @stubs,
        params_class: Params::ListChannelsModeratedByAppInstanceUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_channels_moderated_by_app_instance_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the tags applied to an Amazon Chime SDK messaging resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource.</p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     resource_arn: 'ResourceARN' # required
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
      response_body = StringIO.new
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedClientException, Errors::ForbiddenException, Errors::ThrottledClientException, Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ServiceFailureException]),
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

    # <p>Sets the membership preferences of an <code>AppInstanceUser</code> for the specified channel. The <code>AppInstanceUser</code> must be a member of the channel.
    #          Only the <code>AppInstanceUser</code> who owns the membership can set preferences. Users in the <code>AppInstanceAdmin</code> and channel moderator roles can't set preferences for other users.
    #          Banned users can't set membership preferences for the channel from which they are banned.</p>
    #
    # @param [Hash] params
    #   See {Types::PutChannelMembershipPreferencesInput}.
    #
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel.</p>
    #
    # @option params [String] :member_arn
    #   <p>The <code>AppInstanceUserArn</code> of the member setting the preferences.</p>
    #
    # @option params [String] :chime_bearer
    #   <p>The <code>AppInstanceUserARN</code>  of the user making the API call.</p>
    #
    # @option params [ChannelMembershipPreferences] :preferences
    #   <p>The channel membership preferences of an <code>AppInstanceUser</code> .</p>
    #
    # @return [Types::PutChannelMembershipPreferencesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_channel_membership_preferences(
    #     channel_arn: 'ChannelArn', # required
    #     member_arn: 'MemberArn', # required
    #     chime_bearer: 'ChimeBearer', # required
    #     preferences: {
    #       push_notifications: {
    #         allow_notifications: 'ALL', # required - accepts ["ALL", "NONE", "FILTERED"]
    #         filter_rule: 'FilterRule'
    #       }
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutChannelMembershipPreferencesOutput
    #   resp.data.channel_arn #=> String
    #   resp.data.member #=> Types::Identity
    #   resp.data.member.arn #=> String
    #   resp.data.member.name #=> String
    #   resp.data.preferences #=> Types::ChannelMembershipPreferences
    #   resp.data.preferences.push_notifications #=> Types::PushNotificationPreferences
    #   resp.data.preferences.push_notifications.allow_notifications #=> String, one of ["ALL", "NONE", "FILTERED"]
    #   resp.data.preferences.push_notifications.filter_rule #=> String
    #
    def put_channel_membership_preferences(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutChannelMembershipPreferencesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutChannelMembershipPreferencesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutChannelMembershipPreferences
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedClientException, Errors::ForbiddenException, Errors::ThrottledClientException, Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ServiceFailureException, Errors::ConflictException]),
        data_parser: Parsers::PutChannelMembershipPreferences
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutChannelMembershipPreferences,
        stubs: @stubs,
        params_class: Params::PutChannelMembershipPreferencesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_channel_membership_preferences
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Redacts message content, but not metadata. The message exists in the back end, but the
    #          action returns null content, and the state shows as redacted.</p>
    #
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #                <code>AppInstanceUserArn</code> of the user that makes the API call as the value in
    #             the header.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::RedactChannelMessageInput}.
    #
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel containing the messages that you want to redact.</p>
    #
    # @option params [String] :message_id
    #   <p>The ID of the message being redacted.</p>
    #
    # @option params [String] :chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    # @return [Types::RedactChannelMessageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.redact_channel_message(
    #     channel_arn: 'ChannelArn', # required
    #     message_id: 'MessageId', # required
    #     chime_bearer: 'ChimeBearer' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RedactChannelMessageOutput
    #   resp.data.channel_arn #=> String
    #   resp.data.message_id #=> String
    #
    def redact_channel_message(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RedactChannelMessageInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RedactChannelMessageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RedactChannelMessage
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedClientException, Errors::ForbiddenException, Errors::ThrottledClientException, Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ServiceFailureException, Errors::ConflictException]),
        data_parser: Parsers::RedactChannelMessage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RedactChannelMessage,
        stubs: @stubs,
        params_class: Params::RedactChannelMessageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :redact_channel_message
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Allows an <code>AppInstanceUser</code> to search the channels that they belong to. The <code>AppInstanceUser</code> can search by membership or external ID.
    #          An <code>AppInstanceAdmin</code> can search across all channels within the <code>AppInstance</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::SearchChannelsInput}.
    #
    # @option params [String] :chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user making the API call.</p>
    #
    # @option params [Array<SearchField>] :fields
    #   <p>A list of the <code>Field</code> objects in the channel being searched.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of channels that you want returned.</p>
    #
    # @option params [String] :next_token
    #   <p>The token returned from previous API requests until the number of channels is reached.</p>
    #
    # @return [Types::SearchChannelsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_channels(
    #     chime_bearer: 'ChimeBearer',
    #     fields: [
    #       {
    #         key: 'MEMBERS', # required - accepts ["MEMBERS"]
    #         values: [
    #           'member'
    #         ], # required
    #         operator: 'EQUALS' # required - accepts ["EQUALS", "INCLUDES"]
    #       }
    #     ], # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SearchChannelsOutput
    #   resp.data.channels #=> Array<ChannelSummary>
    #   resp.data.channels[0] #=> Types::ChannelSummary
    #   resp.data.channels[0].name #=> String
    #   resp.data.channels[0].channel_arn #=> String
    #   resp.data.channels[0].mode #=> String, one of ["UNRESTRICTED", "RESTRICTED"]
    #   resp.data.channels[0].privacy #=> String, one of ["PUBLIC", "PRIVATE"]
    #   resp.data.channels[0].metadata #=> String
    #   resp.data.channels[0].last_message_timestamp #=> Time
    #   resp.data.next_token #=> String
    #
    def search_channels(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SearchChannelsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SearchChannelsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SearchChannels
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedClientException, Errors::ForbiddenException, Errors::ThrottledClientException, Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ServiceFailureException]),
        data_parser: Parsers::SearchChannels
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SearchChannels,
        stubs: @stubs,
        params_class: Params::SearchChannelsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :search_channels
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sends a message to a particular channel that the member is a part of.</p>
    #
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #                <code>AppInstanceUserArn</code> of the user that makes the API call as the value in
    #             the header.</p>
    #
    #             <p>Also, <code>STANDARD</code> messages can contain 4KB of data and the 1KB of metadata.
    #                <code>CONTROL</code> messages can contain 30 bytes of data and no metadata.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::SendChannelMessageInput}.
    #
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel.</p>
    #
    # @option params [String] :content
    #   <p>The content of the message.</p>
    #
    # @option params [String] :type
    #   <p>The type of message, <code>STANDARD</code> or <code>CONTROL</code>.</p>
    #
    # @option params [String] :persistence
    #   <p>Boolean that controls whether the message is persisted on the back end. Required.</p>
    #
    # @option params [String] :metadata
    #   <p>The optional metadata for each message.</p>
    #
    # @option params [String] :client_request_token
    #   <p>The <code>Idempotency</code> token for each client request.</p>
    #
    # @option params [String] :chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    # @option params [PushNotificationConfiguration] :push_notification
    #   <p>The push notification configuration of the message.</p>
    #
    # @option params [Hash<String, MessageAttributeValue>] :message_attributes
    #   <p>The attributes for the message, used for message filtering along with a <code>FilterRule</code> defined in the <code>PushNotificationPreferences</code>.</p>
    #
    # @return [Types::SendChannelMessageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_channel_message(
    #     channel_arn: 'ChannelArn', # required
    #     content: 'Content', # required
    #     type: 'STANDARD', # required - accepts ["STANDARD", "CONTROL"]
    #     persistence: 'PERSISTENT', # required - accepts ["PERSISTENT", "NON_PERSISTENT"]
    #     metadata: 'Metadata',
    #     client_request_token: 'ClientRequestToken', # required
    #     chime_bearer: 'ChimeBearer', # required
    #     push_notification: {
    #       title: 'Title',
    #       body: 'Body',
    #       type: 'DEFAULT' # accepts ["DEFAULT", "VOIP"]
    #     },
    #     message_attributes: {
    #       'key' => {
    #         string_values: [
    #           'member'
    #         ]
    #       }
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SendChannelMessageOutput
    #   resp.data.channel_arn #=> String
    #   resp.data.message_id #=> String
    #   resp.data.status #=> Types::ChannelMessageStatusStructure
    #   resp.data.status.value #=> String, one of ["SENT", "PENDING", "FAILED", "DENIED"]
    #   resp.data.status.detail #=> String
    #
    def send_channel_message(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SendChannelMessageInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SendChannelMessageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SendChannelMessage
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::UnauthorizedClientException, Errors::ForbiddenException, Errors::ThrottledClientException, Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ServiceFailureException, Errors::ConflictException]),
        data_parser: Parsers::SendChannelMessage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SendChannelMessage,
        stubs: @stubs,
        params_class: Params::SendChannelMessageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :send_channel_message
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Applies the specified tags to the specified Amazon Chime SDK messaging resource.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The resource ARN.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tag key-value pairs.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'ResourceARN', # required
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
      response_body = StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::UnauthorizedClientException, Errors::ForbiddenException, Errors::ThrottledClientException, Errors::BadRequestException, Errors::ResourceLimitExceededException, Errors::ServiceUnavailableException, Errors::ServiceFailureException]),
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

    # <p>Removes the specified tags from the specified Amazon Chime SDK messaging resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The resource ARN.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The tag keys.</p>
    #
    # @return [Types::UntagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource(
    #     resource_arn: 'ResourceARN', # required
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
      response_body = StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::UnauthorizedClientException, Errors::ForbiddenException, Errors::ThrottledClientException, Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ServiceFailureException]),
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

    # <p>Update a channel's attributes.</p>
    #          <p>
    #             <b>Restriction</b>: You can't change a channel's privacy. </p>
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #                <code>AppInstanceUserArn</code> of the user that makes the API call as the value in
    #             the header.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::UpdateChannelInput}.
    #
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel.</p>
    #
    # @option params [String] :name
    #   <p>The name of the channel.</p>
    #
    # @option params [String] :mode
    #   <p>The mode of the update request.</p>
    #
    # @option params [String] :metadata
    #   <p>The metadata for the update request.</p>
    #
    # @option params [String] :chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    # @return [Types::UpdateChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_channel(
    #     channel_arn: 'ChannelArn', # required
    #     name: 'Name',
    #     mode: 'UNRESTRICTED', # accepts ["UNRESTRICTED", "RESTRICTED"]
    #     metadata: 'Metadata',
    #     chime_bearer: 'ChimeBearer' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateChannelOutput
    #   resp.data.channel_arn #=> String
    #
    def update_channel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateChannelInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateChannelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateChannel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedClientException, Errors::ForbiddenException, Errors::ThrottledClientException, Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ServiceFailureException, Errors::ConflictException]),
        data_parser: Parsers::UpdateChannel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateChannel,
        stubs: @stubs,
        params_class: Params::UpdateChannelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_channel
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates channel flow attributes. This is a developer API.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateChannelFlowInput}.
    #
    # @option params [String] :channel_flow_arn
    #   <p>The ARN of the channel flow.</p>
    #
    # @option params [Array<Processor>] :processors
    #   <p>Information about the processor Lambda functions </p>
    #
    # @option params [String] :name
    #   <p>The name of the channel flow.</p>
    #
    # @return [Types::UpdateChannelFlowOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_channel_flow(
    #     channel_flow_arn: 'ChannelFlowArn', # required
    #     processors: [
    #       {
    #         name: 'Name', # required
    #         configuration: {
    #           lambda: {
    #             resource_arn: 'ResourceArn', # required
    #             invocation_type: 'ASYNC' # required - accepts ["ASYNC"]
    #           } # required
    #         }, # required
    #         execution_order: 1, # required
    #         fallback_action: 'CONTINUE' # required - accepts ["CONTINUE", "ABORT"]
    #       }
    #     ], # required
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateChannelFlowOutput
    #   resp.data.channel_flow_arn #=> String
    #
    def update_channel_flow(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateChannelFlowInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateChannelFlowInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateChannelFlow
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedClientException, Errors::ForbiddenException, Errors::ThrottledClientException, Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ServiceFailureException, Errors::ConflictException]),
        data_parser: Parsers::UpdateChannelFlow
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateChannelFlow,
        stubs: @stubs,
        params_class: Params::UpdateChannelFlowOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_channel_flow
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the content of a message.</p>
    #
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #                <code>AppInstanceUserArn</code> of the user that makes the API call as the value in
    #             the header.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::UpdateChannelMessageInput}.
    #
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel.</p>
    #
    # @option params [String] :message_id
    #   <p>The ID string of the message being updated.</p>
    #
    # @option params [String] :content
    #   <p>The content of the message being updated.</p>
    #
    # @option params [String] :metadata
    #   <p>The metadata of the message being updated.</p>
    #
    # @option params [String] :chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    # @return [Types::UpdateChannelMessageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_channel_message(
    #     channel_arn: 'ChannelArn', # required
    #     message_id: 'MessageId', # required
    #     content: 'Content',
    #     metadata: 'Metadata',
    #     chime_bearer: 'ChimeBearer' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateChannelMessageOutput
    #   resp.data.channel_arn #=> String
    #   resp.data.message_id #=> String
    #   resp.data.status #=> Types::ChannelMessageStatusStructure
    #   resp.data.status.value #=> String, one of ["SENT", "PENDING", "FAILED", "DENIED"]
    #   resp.data.status.detail #=> String
    #
    def update_channel_message(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateChannelMessageInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateChannelMessageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateChannelMessage
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedClientException, Errors::ForbiddenException, Errors::ThrottledClientException, Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ServiceFailureException, Errors::ConflictException]),
        data_parser: Parsers::UpdateChannelMessage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateChannelMessage,
        stubs: @stubs,
        params_class: Params::UpdateChannelMessageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_channel_message
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>The details of the time when a user last read messages in a channel.</p>
    #
    #          <note>
    #             <p>The <code>x-amz-chime-bearer</code> request header is mandatory. Use the
    #                <code>AppInstanceUserArn</code> of the user that makes the API call as the value in
    #             the header.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::UpdateChannelReadMarkerInput}.
    #
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel.</p>
    #
    # @option params [String] :chime_bearer
    #   <p>The <code>AppInstanceUserArn</code> of the user that makes the API call.</p>
    #
    # @return [Types::UpdateChannelReadMarkerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_channel_read_marker(
    #     channel_arn: 'ChannelArn', # required
    #     chime_bearer: 'ChimeBearer' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateChannelReadMarkerOutput
    #   resp.data.channel_arn #=> String
    #
    def update_channel_read_marker(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateChannelReadMarkerInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateChannelReadMarkerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateChannelReadMarker
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedClientException, Errors::ForbiddenException, Errors::ThrottledClientException, Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::ServiceFailureException, Errors::ConflictException]),
        data_parser: Parsers::UpdateChannelReadMarker
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateChannelReadMarker,
        stubs: @stubs,
        params_class: Params::UpdateChannelReadMarkerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_channel_read_marker
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
