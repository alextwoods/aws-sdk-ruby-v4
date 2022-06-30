# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::KinesisVideoMedia
  # An API client for AWSAcuityInletService
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
    def initialize(config = AWS::SDK::KinesisVideoMedia::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p> Use this API to retrieve media content from a Kinesis video stream. In the request,
    #       you identify the stream name or stream Amazon Resource Name (ARN), and the starting chunk.
    #       Kinesis Video Streams then returns a stream of chunks in order by fragment number.</p>
    #          <note>
    #             <p>You must first call the <code>GetDataEndpoint</code> API to get an endpoint. Then
    #         send the <code>GetMedia</code> requests to this endpoint using the <a href="https://docs.aws.amazon.com/cli/latest/reference/">--endpoint-url parameter</a>.
    #       </p>
    #          </note>
    #          <p>When you put media data (fragments) on a stream, Kinesis Video Streams stores each
    #       incoming fragment and related metadata in what is called a "chunk." For more information, see
    #         <a href="https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/API_dataplane_PutMedia.html">PutMedia</a>. The <code>GetMedia</code> API returns a stream of these chunks starting
    #       from the chunk that you specify in the request. </p>
    #          <p>The following limits apply when using the <code>GetMedia</code> API:</p>
    #          <ul>
    #             <li>
    #                <p>A client can call <code>GetMedia</code> up to five times per second per stream.
    #         </p>
    #             </li>
    #             <li>
    #                <p>Kinesis Video Streams sends media data at a rate of up to 25 megabytes per second
    #           (or 200 megabits per second) during a <code>GetMedia</code> session. </p>
    #             </li>
    #          </ul>
    #
    #          <note>
    #             <p>If an error is thrown after invoking a Kinesis Video Streams media API, in addition to
    #         the HTTP status code and the response body, it includes the following pieces of information: </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <code>x-amz-ErrorType</code> HTTP header – contains a more specific error type in
    #             addition to what the HTTP status code provides. </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <code>x-amz-RequestId</code> HTTP header – if you want to report an issue to AWS,
    #             the support team can better diagnose the problem if given the Request Id.</p>
    #                </li>
    #             </ul>
    #             <p>Both the HTTP status code and the ErrorType header can be utilized to make programmatic
    #         decisions about whether errors are retry-able and under what conditions, as well as provide
    #         information on what actions the client programmer might need to take in order to
    #         successfully try again.</p>
    #             <p>For more information, see the <b>Errors</b> section at the
    #         bottom of this topic, as well as <a href="https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/CommonErrors.html">Common Errors</a>. </p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::GetMediaInput}.
    #
    # @option params [String] :stream_name
    #   <p>The Kinesis video stream name from where you want to get the media content. If you
    #         don't specify the <code>streamName</code>, you must specify the
    #         <code>streamARN</code>.</p>
    #
    # @option params [String] :stream_arn
    #   <p>The ARN of the stream from where you want to get the media content. If you don't
    #         specify the <code>streamARN</code>, you must specify the <code>streamName</code>.</p>
    #
    # @option params [StartSelector] :start_selector
    #   <p>Identifies the starting chunk to get from the specified stream. </p>
    #
    # @return [Types::GetMediaOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_media(
    #     stream_name: 'StreamName',
    #     stream_arn: 'StreamARN',
    #     start_selector: {
    #       start_selector_type: 'FRAGMENT_NUMBER', # required - accepts ["FRAGMENT_NUMBER", "SERVER_TIMESTAMP", "PRODUCER_TIMESTAMP", "NOW", "EARLIEST", "CONTINUATION_TOKEN"]
    #       after_fragment_number: 'AfterFragmentNumber',
    #       start_timestamp: Time.now,
    #       continuation_token: 'ContinuationToken'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetMediaOutput
    #   resp.data.content_type #=> String
    #   resp.data.payload #=> String
    #
    def get_media(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetMediaInput.build(params)
      response_body = output_stream(options, &block)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetMediaInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetMedia
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClientLimitExceededException, Errors::ConnectionLimitExceededException, Errors::InvalidArgumentException, Errors::InvalidEndpointException, Errors::NotAuthorizedException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetMedia
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetMedia,
        stubs: @stubs,
        params_class: Params::GetMediaOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_media
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
