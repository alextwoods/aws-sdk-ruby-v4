# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::WorkMailMessageFlow
  # An API client for GiraffeMessageInTransitService
  # See {#initialize} for a full list of supported configuration options
  # <p>The WorkMail Message Flow API provides access to email messages as they are
  #       being
  #       sent and received by
  #       a
  #       WorkMail organization.</p>
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
    def initialize(config = AWS::SDK::WorkMailMessageFlow::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Retrieves the raw content of an in-transit email message, in MIME format.</p>
    #
    # @param [Hash] params
    #   See {Types::GetRawMessageContentInput}.
    #
    # @option params [String] :message_id
    #   <p>The identifier of the email message to retrieve.</p>
    #
    # @return [Types::GetRawMessageContentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_raw_message_content(
    #     message_id: 'messageId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetRawMessageContentOutput
    #   resp.data.message_content #=> String
    #
    def get_raw_message_content(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetRawMessageContentInput.build(params)
      response_body = output_stream(options, &block)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetRawMessageContentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetRawMessageContent
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetRawMessageContent
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetRawMessageContent,
        stubs: @stubs,
        params_class: Params::GetRawMessageContentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_raw_message_content
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the raw content of an in-transit email message, in MIME format.</p>
    #          <p>This example describes how to update in-transit email message. For more information and examples for using this API, see
    #       <a href="https://docs.aws.amazon.com/workmail/latest/adminguide/update-with-lambda.html">
    #         Updating message content with AWS Lambda</a>.</p>
    #
    #
    #          <note>
    #             <p>Updates to an in-transit message only appear when you call <code>PutRawMessageContent</code> from an AWS Lambda function
    #       configured with a  synchronous <a href="https://docs.aws.amazon.com/workmail/latest/adminguide/lambda.html#synchronous-rules">
    #         Run Lambda</a> rule. If you call <code>PutRawMessageContent</code> on a delivered or sent message, the message remains unchanged,
    #       even though <a href="https://docs.aws.amazon.com/workmail/latest/APIReference/API_messageflow_GetRawMessageContent.html">GetRawMessageContent</a> returns an updated
    #         message.
    #     </p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::PutRawMessageContentInput}.
    #
    # @option params [String] :message_id
    #   <p>The identifier of the email message being updated.</p>
    #
    # @option params [RawMessageContent] :content
    #   <p>Describes the raw message content of the updated email message.</p>
    #
    # @return [Types::PutRawMessageContentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_raw_message_content(
    #     message_id: 'messageId', # required
    #     content: {
    #       s3_reference: {
    #         bucket: 'bucket', # required
    #         key: 'key', # required
    #         object_version: 'objectVersion'
    #       } # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutRawMessageContentOutput
    #
    def put_raw_message_content(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutRawMessageContentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutRawMessageContentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutRawMessageContent
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::MessageRejected, Errors::ResourceNotFoundException, Errors::MessageFrozen, Errors::InvalidContentLocation]),
        data_parser: Parsers::PutRawMessageContent
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutRawMessageContent,
        stubs: @stubs,
        params_class: Params::PutRawMessageContentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_raw_message_content
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
