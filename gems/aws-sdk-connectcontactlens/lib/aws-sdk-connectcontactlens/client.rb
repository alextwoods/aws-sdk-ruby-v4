# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::ConnectContactLens
  # An API client for AmazonConnectContactLens
  # See {#initialize} for a full list of supported configuration options
  # <p>Contact Lens for Amazon Connect enables you to analyze conversations between customer and agents,
  #       by using speech transcription, natural language processing, and intelligent search
  #       capabilities. It performs sentiment analysis, detects issues, and enables you to automatically
  #       categorize contacts.</p>
  #          <p>Contact Lens for Amazon Connect provides both real-time and post-call analytics of customer-agent
  #       conversations. For more information, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/analyze-conversations.html">Analyze conversations using
  #         Contact Lens</a> in the <i>Amazon Connect Administrator Guide</i>. </p>
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
    def initialize(config = AWS::SDK::ConnectContactLens::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Provides a list of analysis segments for a real-time analysis session.</p>
    #
    # @param [Hash] params
    #   See {Types::ListRealtimeContactAnalysisSegmentsInput}.
    #
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance.</p>
    #
    # @option params [String] :contact_id
    #   <p>The identifier of the contact.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximimum number of results to return per page.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    # @return [Types::ListRealtimeContactAnalysisSegmentsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_realtime_contact_analysis_segments(
    #     instance_id: 'InstanceId', # required
    #     contact_id: 'ContactId', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListRealtimeContactAnalysisSegmentsOutput
    #   resp.data.segments #=> Array<RealtimeContactAnalysisSegment>
    #   resp.data.segments[0] #=> Types::RealtimeContactAnalysisSegment
    #   resp.data.segments[0].transcript #=> Types::Transcript
    #   resp.data.segments[0].transcript.id #=> String
    #   resp.data.segments[0].transcript.participant_id #=> String
    #   resp.data.segments[0].transcript.participant_role #=> String
    #   resp.data.segments[0].transcript.content #=> String
    #   resp.data.segments[0].transcript.begin_offset_millis #=> Integer
    #   resp.data.segments[0].transcript.end_offset_millis #=> Integer
    #   resp.data.segments[0].transcript.sentiment #=> String, one of ["POSITIVE", "NEUTRAL", "NEGATIVE"]
    #   resp.data.segments[0].transcript.issues_detected #=> Array<IssueDetected>
    #   resp.data.segments[0].transcript.issues_detected[0] #=> Types::IssueDetected
    #   resp.data.segments[0].transcript.issues_detected[0].character_offsets #=> Types::CharacterOffsets
    #   resp.data.segments[0].transcript.issues_detected[0].character_offsets.begin_offset_char #=> Integer
    #   resp.data.segments[0].transcript.issues_detected[0].character_offsets.end_offset_char #=> Integer
    #   resp.data.segments[0].categories #=> Types::Categories
    #   resp.data.segments[0].categories.matched_categories #=> Array<String>
    #   resp.data.segments[0].categories.matched_categories[0] #=> String
    #   resp.data.segments[0].categories.matched_details #=> Hash<String, CategoryDetails>
    #   resp.data.segments[0].categories.matched_details['key'] #=> Types::CategoryDetails
    #   resp.data.segments[0].categories.matched_details['key'].points_of_interest #=> Array<PointOfInterest>
    #   resp.data.segments[0].categories.matched_details['key'].points_of_interest[0] #=> Types::PointOfInterest
    #   resp.data.segments[0].categories.matched_details['key'].points_of_interest[0].begin_offset_millis #=> Integer
    #   resp.data.segments[0].categories.matched_details['key'].points_of_interest[0].end_offset_millis #=> Integer
    #   resp.data.next_token #=> String
    #
    def list_realtime_contact_analysis_segments(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListRealtimeContactAnalysisSegmentsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListRealtimeContactAnalysisSegmentsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListRealtimeContactAnalysisSegments
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServiceException, Errors::InvalidRequestException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListRealtimeContactAnalysisSegments
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListRealtimeContactAnalysisSegments,
        stubs: @stubs,
        params_class: Params::ListRealtimeContactAnalysisSegmentsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_realtime_contact_analysis_segments
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
