# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::ConnectParticipant
  # An API client for AmazonConnectParticipantServiceLambda
  # See {#initialize} for a full list of supported configuration options
  # <p>Amazon Connect is a cloud-based contact center solution that makes it easy to set up and manage
  #             a customer contact center and provide reliable customer engagement at any scale.</p>
  #         <p>Amazon Connect enables customer contacts through voice or chat.</p>
  #
  #         <p>The APIs described here are used by chat participants, such as agents and
  #             customers.</p>
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
    def initialize(config = AWS::SDK::ConnectParticipant::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Allows you to confirm that the attachment has been uploaded using the pre-signed URL
    #             provided in StartAttachmentUpload API. </p>
    #          <p>The Amazon Connect Participant Service APIs do not use <a href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4
    #                     authentication</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::CompleteAttachmentUploadInput}.
    #
    # @option params [Array<String>] :attachment_ids
    #   <p>A list of unique identifiers for the attachments.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request.</p>
    #
    # @option params [String] :connection_token
    #   <p>The authentication token associated with the participant's connection.</p>
    #
    # @return [Types::CompleteAttachmentUploadOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.complete_attachment_upload(
    #     attachment_ids: [
    #       'member'
    #     ], # required
    #     client_token: 'ClientToken', # required
    #     connection_token: 'ConnectionToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CompleteAttachmentUploadOutput
    #
    def complete_attachment_upload(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CompleteAttachmentUploadInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CompleteAttachmentUploadInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CompleteAttachmentUpload
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException]),
        data_parser: Parsers::CompleteAttachmentUpload
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CompleteAttachmentUpload,
        stubs: @stubs,
        params_class: Params::CompleteAttachmentUploadOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :complete_attachment_upload
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates the participant's connection.  Note that ParticipantToken is used for invoking this API instead of
    #             ConnectionToken.</p>
    #         <p>The participant token is valid for the lifetime of the participant –
    #             until they are part of a contact.</p>
    #         <p>The response URL for <code>WEBSOCKET</code> Type has a connect expiry timeout of 100s.
    #             Clients must manually connect to the returned websocket URL and subscribe to the desired
    #             topic. </p>
    #         <p>For chat, you need to publish the following on the established websocket
    #             connection:</p>
    #         <p>
    #             <code>{"topic":"aws/subscribe","content":{"topics":["aws/chat"]}}</code>
    #          </p>
    #         <p>Upon websocket URL expiry, as specified in the response ConnectionExpiry parameter,
    #             clients need to call this API again to obtain a new websocket URL and perform the same
    #             steps as before.</p>
    #         <p>
    #             <b>Message streaming support</b>: This API can also be used together with the
    #             <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_StartContactStreaming.html">StartContactStreaming</a>
    #             API to create a participant connection for chat contacts that are
    #             not using a websocket. For more information about message streaming, <a href="https://docs.aws.amazon.com/connect/latest/adminguide/chat-message-streaming.html">Enable real-time chat message streaming</a> in the <i>Amazon Connect
    #                     Administrator Guide</i>.</p>
    #         <p>
    #             <b>Feature specifications</b>: For information about feature specifications, such as the allowed number of open
    #             websocket connections per participant, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html#feature-limits">Feature specifications</a> in the <i>Amazon Connect Administrator
    #                 Guide</i>. </p>
    #         <note>
    #             <p>The Amazon Connect Participant Service APIs do not use <a href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4
    #                     authentication</a>.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::CreateParticipantConnectionInput}.
    #
    # @option params [Array<String>] :type
    #   <p>Type of connection information required.</p>
    #
    # @option params [String] :participant_token
    #   <p>This is a header parameter.</p>
    #           <p>The ParticipantToken as obtained from <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_StartChatContact.html">StartChatContact</a>
    #               API response.</p>
    #
    # @option params [Boolean] :connect_participant
    #   <p>Amazon Connect Participant is used to mark the participant as connected for message
    #               streaming.</p>
    #
    # @return [Types::CreateParticipantConnectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_participant_connection(
    #     type: [
    #       'WEBSOCKET' # accepts ["WEBSOCKET", "CONNECTION_CREDENTIALS"]
    #     ], # required
    #     participant_token: 'ParticipantToken', # required
    #     connect_participant: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateParticipantConnectionOutput
    #   resp.data.websocket #=> Types::Websocket
    #   resp.data.websocket.url #=> String
    #   resp.data.websocket.connection_expiry #=> String
    #   resp.data.connection_credentials #=> Types::ConnectionCredentials
    #   resp.data.connection_credentials.connection_token #=> String
    #   resp.data.connection_credentials.expiry #=> String
    #
    def create_participant_connection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateParticipantConnectionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateParticipantConnectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateParticipantConnection
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException]),
        data_parser: Parsers::CreateParticipantConnection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateParticipantConnection,
        stubs: @stubs,
        params_class: Params::CreateParticipantConnectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_participant_connection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disconnects a participant. Note that ConnectionToken is used for invoking this API
    #             instead of ParticipantToken.</p>
    #          <p>The Amazon Connect Participant Service APIs do not use <a href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4
    #                     authentication</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DisconnectParticipantInput}.
    #
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request.</p>
    #
    # @option params [String] :connection_token
    #   <p>The authentication token associated with the participant's connection.</p>
    #
    # @return [Types::DisconnectParticipantOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disconnect_participant(
    #     client_token: 'ClientToken',
    #     connection_token: 'ConnectionToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisconnectParticipantOutput
    #
    def disconnect_participant(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisconnectParticipantInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisconnectParticipantInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisconnectParticipant
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException]),
        data_parser: Parsers::DisconnectParticipant
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisconnectParticipant,
        stubs: @stubs,
        params_class: Params::DisconnectParticipantOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disconnect_participant
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides a pre-signed URL for download of a completed attachment. This is an
    #             asynchronous API for use with active contacts.</p>
    #          <p>The Amazon Connect Participant Service APIs do not use <a href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4
    #                     authentication</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetAttachmentInput}.
    #
    # @option params [String] :attachment_id
    #   <p>A unique identifier for the attachment.</p>
    #
    # @option params [String] :connection_token
    #   <p>The authentication token associated with the participant's connection.</p>
    #
    # @return [Types::GetAttachmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_attachment(
    #     attachment_id: 'AttachmentId', # required
    #     connection_token: 'ConnectionToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAttachmentOutput
    #   resp.data.url #=> String
    #   resp.data.url_expiry #=> String
    #
    def get_attachment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAttachmentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAttachmentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAttachment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException]),
        data_parser: Parsers::GetAttachment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAttachment,
        stubs: @stubs,
        params_class: Params::GetAttachmentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_attachment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a transcript of the session, including details about any attachments. Note
    #             that ConnectionToken is used for invoking this API instead of ParticipantToken.</p>
    #         <p>The Amazon Connect Participant Service APIs do not use <a href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4
    #                     authentication</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetTranscriptInput}.
    #
    # @option params [String] :contact_id
    #   <p>The contactId from the current contact chain for which transcript is needed.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the page. Default: 10. </p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token. Use the value returned previously in the next subsequent request
    #               to retrieve the next set of results.</p>
    #
    # @option params [String] :scan_direction
    #   <p>The direction from StartPosition from which to retrieve message. Default: BACKWARD
    #               when no StartPosition is provided, FORWARD with StartPosition. </p>
    #
    # @option params [String] :sort_order
    #   <p>The sort order for the records. Default: DESCENDING.</p>
    #
    # @option params [StartPosition] :start_position
    #   <p>A filtering option for where to start.</p>
    #
    # @option params [String] :connection_token
    #   <p>The authentication token associated with the participant's connection.</p>
    #
    # @return [Types::GetTranscriptOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_transcript(
    #     contact_id: 'ContactId',
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     scan_direction: 'FORWARD', # accepts ["FORWARD", "BACKWARD"]
    #     sort_order: 'DESCENDING', # accepts ["DESCENDING", "ASCENDING"]
    #     start_position: {
    #       id: 'Id',
    #       absolute_time: 'AbsoluteTime',
    #       most_recent: 1
    #     },
    #     connection_token: 'ConnectionToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetTranscriptOutput
    #   resp.data.initial_contact_id #=> String
    #   resp.data.transcript #=> Array<Item>
    #   resp.data.transcript[0] #=> Types::Item
    #   resp.data.transcript[0].absolute_time #=> String
    #   resp.data.transcript[0].content #=> String
    #   resp.data.transcript[0].content_type #=> String
    #   resp.data.transcript[0].id #=> String
    #   resp.data.transcript[0].type #=> String, one of ["TYPING", "PARTICIPANT_JOINED", "PARTICIPANT_LEFT", "CHAT_ENDED", "TRANSFER_SUCCEEDED", "TRANSFER_FAILED", "MESSAGE", "EVENT", "ATTACHMENT", "CONNECTION_ACK"]
    #   resp.data.transcript[0].participant_id #=> String
    #   resp.data.transcript[0].display_name #=> String
    #   resp.data.transcript[0].participant_role #=> String, one of ["AGENT", "CUSTOMER", "SYSTEM"]
    #   resp.data.transcript[0].attachments #=> Array<AttachmentItem>
    #   resp.data.transcript[0].attachments[0] #=> Types::AttachmentItem
    #   resp.data.transcript[0].attachments[0].content_type #=> String
    #   resp.data.transcript[0].attachments[0].attachment_id #=> String
    #   resp.data.transcript[0].attachments[0].attachment_name #=> String
    #   resp.data.transcript[0].attachments[0].status #=> String, one of ["APPROVED", "REJECTED", "IN_PROGRESS"]
    #   resp.data.next_token #=> String
    #
    def get_transcript(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetTranscriptInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetTranscriptInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetTranscript
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException]),
        data_parser: Parsers::GetTranscript
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetTranscript,
        stubs: @stubs,
        params_class: Params::GetTranscriptOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_transcript
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sends an event. Note that ConnectionToken is used for invoking this API instead of
    #             ParticipantToken.</p>
    #          <p>The Amazon Connect Participant Service APIs do not use <a href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4
    #                     authentication</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::SendEventInput}.
    #
    # @option params [String] :content_type
    #   <p>The content type of the request. Supported types are:</p>
    #
    #           <ul>
    #               <li>
    #                   <p>application/vnd.amazonaws.connect.event.typing</p>
    #               </li>
    #               <li>
    #                   <p>application/vnd.amazonaws.connect.event.connection.acknowledged</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :content
    #   <p>The content of the event to be sent (for example, message text). This is not yet
    #               supported.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request.</p>
    #
    # @option params [String] :connection_token
    #   <p>The authentication token associated with the participant's connection.</p>
    #
    # @return [Types::SendEventOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_event(
    #     content_type: 'ContentType', # required
    #     content: 'Content',
    #     client_token: 'ClientToken',
    #     connection_token: 'ConnectionToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SendEventOutput
    #   resp.data.id #=> String
    #   resp.data.absolute_time #=> String
    #
    def send_event(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SendEventInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SendEventInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SendEvent
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException]),
        data_parser: Parsers::SendEvent
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SendEvent,
        stubs: @stubs,
        params_class: Params::SendEventOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :send_event
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sends a message. Note that ConnectionToken is used for invoking this API instead of
    #             ParticipantToken.</p>
    #          <p>The Amazon Connect Participant Service APIs do not use <a href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4
    #                     authentication</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::SendMessageInput}.
    #
    # @option params [String] :content_type
    #   <p>The type of the content. Supported types are text/plain.</p>
    #
    # @option params [String] :content
    #   <p>The content of the message.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request.</p>
    #
    # @option params [String] :connection_token
    #   <p>The authentication token associated with the connection.</p>
    #
    # @return [Types::SendMessageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_message(
    #     content_type: 'ContentType', # required
    #     content: 'Content', # required
    #     client_token: 'ClientToken',
    #     connection_token: 'ConnectionToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SendMessageOutput
    #   resp.data.id #=> String
    #   resp.data.absolute_time #=> String
    #
    def send_message(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SendMessageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SendMessageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SendMessage
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException]),
        data_parser: Parsers::SendMessage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SendMessage,
        stubs: @stubs,
        params_class: Params::SendMessageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :send_message
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides a pre-signed Amazon S3 URL in response for uploading the file directly to
    #             S3.</p>
    #          <p>The Amazon Connect Participant Service APIs do not use <a href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4
    #                     authentication</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::StartAttachmentUploadInput}.
    #
    # @option params [String] :content_type
    #   <p>Describes the MIME file type of the attachment. For a list of supported file types, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html#feature-limits">Feature specifications</a> in the <i>Amazon Connect Administrator Guide</i>.</p>
    #
    # @option params [Integer] :attachment_size_in_bytes
    #   <p>The size of the attachment in bytes.</p>
    #
    # @option params [String] :attachment_name
    #   <p>A case-sensitive name of the attachment being uploaded.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique case sensitive identifier to support idempotency of request.</p>
    #
    # @option params [String] :connection_token
    #   <p>The authentication token associated with the participant's connection.</p>
    #
    # @return [Types::StartAttachmentUploadOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_attachment_upload(
    #     content_type: 'ContentType', # required
    #     attachment_size_in_bytes: 1, # required
    #     attachment_name: 'AttachmentName', # required
    #     client_token: 'ClientToken', # required
    #     connection_token: 'ConnectionToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartAttachmentUploadOutput
    #   resp.data.attachment_id #=> String
    #   resp.data.upload_metadata #=> Types::UploadMetadata
    #   resp.data.upload_metadata.url #=> String
    #   resp.data.upload_metadata.url_expiry #=> String
    #   resp.data.upload_metadata.headers_to_include #=> Hash<String, String>
    #   resp.data.upload_metadata.headers_to_include['key'] #=> String
    #
    def start_attachment_upload(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartAttachmentUploadInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartAttachmentUploadInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartAttachmentUpload
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException, Errors::ServiceQuotaExceededException, Errors::ThrottlingException]),
        data_parser: Parsers::StartAttachmentUpload
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartAttachmentUpload,
        stubs: @stubs,
        params_class: Params::StartAttachmentUploadOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_attachment_upload
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
