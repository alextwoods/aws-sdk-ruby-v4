# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::ChimeSDKMediaPipelines
  # An API client for ChimeSDKMediaPipelinesService
  # See {#initialize} for a full list of supported configuration options
  # <p>The Amazon Chime SDK media pipeline APIs in this section allow software developers to create Amazon Chime SDK media pipelines
  #          and capture audio, video, events, and data messages from Amazon Chime SDK meetings. For more information about media pipleines, see
  #          <a href="https://docs.aws.amazon.com/chime/latest/APIReference/API_Operations_Amazon_Chime_SDK_Media_Pipelines.html">Amzon Chime SDK media pipelines</a>.
  #       </p>
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
    def initialize(config = AWS::SDK::ChimeSDKMediaPipelines::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Creates a media capture pipeline.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateMediaCapturePipelineInput}.
    #
    # @option params [String] :source_type
    #   <p>Source type from which the media artifacts are captured. A Chime SDK Meeting
    #            is the only supported source.</p>
    #
    # @option params [String] :source_arn
    #   <p>ARN of the source from which the media artifacts are captured.</p>
    #
    # @option params [String] :sink_type
    #   <p>Destination type to which the media artifacts are saved. You must use an S3 bucket. </p>
    #
    # @option params [String] :sink_arn
    #   <p>The ARN of the sink type.</p>
    #
    # @option params [String] :client_request_token
    #   <p>The token assigned to the client making the pipeline request.</p>
    #
    # @option params [ChimeSdkMeetingConfiguration] :chime_sdk_meeting_configuration
    #   <p>The configuration for a specified media capture pipeline. <code>SourceType</code> must be <code>ChimeSdkMeeting</code>.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The list of tags.</p>
    #
    # @return [Types::CreateMediaCapturePipelineOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_media_capture_pipeline(
    #     source_type: 'ChimeSdkMeeting', # required - accepts ["ChimeSdkMeeting"]
    #     source_arn: 'SourceArn', # required
    #     sink_type: 'S3Bucket', # required - accepts ["S3Bucket"]
    #     sink_arn: 'SinkArn', # required
    #     client_request_token: 'ClientRequestToken',
    #     chime_sdk_meeting_configuration: {
    #       source_configuration: {
    #         selected_video_streams: {
    #           attendee_ids: [
    #             'member'
    #           ],
    #           external_user_ids: [
    #             'member'
    #           ]
    #         }
    #       },
    #       artifacts_configuration: {
    #         audio: {
    #           mux_type: 'AudioOnly' # required - accepts ["AudioOnly", "AudioWithActiveSpeakerVideo"]
    #         }, # required
    #         video: {
    #           state: 'Enabled', # required - accepts ["Enabled", "Disabled"]
    #           mux_type: 'VideoOnly' # accepts ["VideoOnly"]
    #         }, # required
    #         content: {
    #           state: 'Enabled', # required - accepts ["Enabled", "Disabled"]
    #           mux_type: 'ContentOnly' # accepts ["ContentOnly"]
    #         } # required
    #       }
    #     },
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateMediaCapturePipelineOutput
    #   resp.data.media_capture_pipeline #=> Types::MediaCapturePipeline
    #   resp.data.media_capture_pipeline.media_pipeline_id #=> String
    #   resp.data.media_capture_pipeline.media_pipeline_arn #=> String
    #   resp.data.media_capture_pipeline.source_type #=> String, one of ["ChimeSdkMeeting"]
    #   resp.data.media_capture_pipeline.source_arn #=> String
    #   resp.data.media_capture_pipeline.status #=> String, one of ["Initializing", "InProgress", "Failed", "Stopping", "Stopped"]
    #   resp.data.media_capture_pipeline.sink_type #=> String, one of ["S3Bucket"]
    #   resp.data.media_capture_pipeline.sink_arn #=> String
    #   resp.data.media_capture_pipeline.created_timestamp #=> Time
    #   resp.data.media_capture_pipeline.updated_timestamp #=> Time
    #   resp.data.media_capture_pipeline.chime_sdk_meeting_configuration #=> Types::ChimeSdkMeetingConfiguration
    #   resp.data.media_capture_pipeline.chime_sdk_meeting_configuration.source_configuration #=> Types::SourceConfiguration
    #   resp.data.media_capture_pipeline.chime_sdk_meeting_configuration.source_configuration.selected_video_streams #=> Types::SelectedVideoStreams
    #   resp.data.media_capture_pipeline.chime_sdk_meeting_configuration.source_configuration.selected_video_streams.attendee_ids #=> Array<String>
    #   resp.data.media_capture_pipeline.chime_sdk_meeting_configuration.source_configuration.selected_video_streams.attendee_ids[0] #=> String
    #   resp.data.media_capture_pipeline.chime_sdk_meeting_configuration.source_configuration.selected_video_streams.external_user_ids #=> Array<String>
    #   resp.data.media_capture_pipeline.chime_sdk_meeting_configuration.source_configuration.selected_video_streams.external_user_ids[0] #=> String
    #   resp.data.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration #=> Types::ArtifactsConfiguration
    #   resp.data.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.audio #=> Types::AudioArtifactsConfiguration
    #   resp.data.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.audio.mux_type #=> String, one of ["AudioOnly", "AudioWithActiveSpeakerVideo"]
    #   resp.data.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.video #=> Types::VideoArtifactsConfiguration
    #   resp.data.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.video.state #=> String, one of ["Enabled", "Disabled"]
    #   resp.data.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.video.mux_type #=> String, one of ["VideoOnly"]
    #   resp.data.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.content #=> Types::ContentArtifactsConfiguration
    #   resp.data.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.content.state #=> String, one of ["Enabled", "Disabled"]
    #   resp.data.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.content.mux_type #=> String, one of ["ContentOnly"]
    #
    def create_media_capture_pipeline(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateMediaCapturePipelineInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateMediaCapturePipelineInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateMediaCapturePipeline
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::ForbiddenException, Errors::ServiceFailureException, Errors::ThrottledClientException, Errors::ResourceLimitExceededException, Errors::ServiceUnavailableException, Errors::UnauthorizedClientException, Errors::BadRequestException]),
        data_parser: Parsers::CreateMediaCapturePipeline
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateMediaCapturePipeline,
        stubs: @stubs,
        params_class: Params::CreateMediaCapturePipelineOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_media_capture_pipeline
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the media capture pipeline.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteMediaCapturePipelineInput}.
    #
    # @option params [String] :media_pipeline_id
    #   <p>The ID of the media capture pipeline being deleted. </p>
    #
    # @return [Types::DeleteMediaCapturePipelineOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_media_capture_pipeline(
    #     media_pipeline_id: 'MediaPipelineId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteMediaCapturePipelineOutput
    #
    def delete_media_capture_pipeline(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteMediaCapturePipelineInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteMediaCapturePipelineInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteMediaCapturePipeline
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ForbiddenException, Errors::NotFoundException, Errors::ServiceFailureException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::UnauthorizedClientException, Errors::BadRequestException]),
        data_parser: Parsers::DeleteMediaCapturePipeline
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteMediaCapturePipeline,
        stubs: @stubs,
        params_class: Params::DeleteMediaCapturePipelineOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_media_capture_pipeline
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets an existing media capture pipeline.</p>
    #
    # @param [Hash] params
    #   See {Types::GetMediaCapturePipelineInput}.
    #
    # @option params [String] :media_pipeline_id
    #   <p>The ID of the pipeline that you want to get.</p>
    #
    # @return [Types::GetMediaCapturePipelineOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_media_capture_pipeline(
    #     media_pipeline_id: 'MediaPipelineId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetMediaCapturePipelineOutput
    #   resp.data.media_capture_pipeline #=> Types::MediaCapturePipeline
    #   resp.data.media_capture_pipeline.media_pipeline_id #=> String
    #   resp.data.media_capture_pipeline.media_pipeline_arn #=> String
    #   resp.data.media_capture_pipeline.source_type #=> String, one of ["ChimeSdkMeeting"]
    #   resp.data.media_capture_pipeline.source_arn #=> String
    #   resp.data.media_capture_pipeline.status #=> String, one of ["Initializing", "InProgress", "Failed", "Stopping", "Stopped"]
    #   resp.data.media_capture_pipeline.sink_type #=> String, one of ["S3Bucket"]
    #   resp.data.media_capture_pipeline.sink_arn #=> String
    #   resp.data.media_capture_pipeline.created_timestamp #=> Time
    #   resp.data.media_capture_pipeline.updated_timestamp #=> Time
    #   resp.data.media_capture_pipeline.chime_sdk_meeting_configuration #=> Types::ChimeSdkMeetingConfiguration
    #   resp.data.media_capture_pipeline.chime_sdk_meeting_configuration.source_configuration #=> Types::SourceConfiguration
    #   resp.data.media_capture_pipeline.chime_sdk_meeting_configuration.source_configuration.selected_video_streams #=> Types::SelectedVideoStreams
    #   resp.data.media_capture_pipeline.chime_sdk_meeting_configuration.source_configuration.selected_video_streams.attendee_ids #=> Array<String>
    #   resp.data.media_capture_pipeline.chime_sdk_meeting_configuration.source_configuration.selected_video_streams.attendee_ids[0] #=> String
    #   resp.data.media_capture_pipeline.chime_sdk_meeting_configuration.source_configuration.selected_video_streams.external_user_ids #=> Array<String>
    #   resp.data.media_capture_pipeline.chime_sdk_meeting_configuration.source_configuration.selected_video_streams.external_user_ids[0] #=> String
    #   resp.data.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration #=> Types::ArtifactsConfiguration
    #   resp.data.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.audio #=> Types::AudioArtifactsConfiguration
    #   resp.data.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.audio.mux_type #=> String, one of ["AudioOnly", "AudioWithActiveSpeakerVideo"]
    #   resp.data.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.video #=> Types::VideoArtifactsConfiguration
    #   resp.data.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.video.state #=> String, one of ["Enabled", "Disabled"]
    #   resp.data.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.video.mux_type #=> String, one of ["VideoOnly"]
    #   resp.data.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.content #=> Types::ContentArtifactsConfiguration
    #   resp.data.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.content.state #=> String, one of ["Enabled", "Disabled"]
    #   resp.data.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.content.mux_type #=> String, one of ["ContentOnly"]
    #
    def get_media_capture_pipeline(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetMediaCapturePipelineInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetMediaCapturePipelineInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetMediaCapturePipeline
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ForbiddenException, Errors::NotFoundException, Errors::ServiceFailureException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::UnauthorizedClientException, Errors::BadRequestException]),
        data_parser: Parsers::GetMediaCapturePipeline
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetMediaCapturePipeline,
        stubs: @stubs,
        params_class: Params::GetMediaCapturePipelineOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_media_capture_pipeline
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of media capture pipelines.</p>
    #
    # @param [Hash] params
    #   See {Types::ListMediaCapturePipelinesInput}.
    #
    # @option params [String] :next_token
    #   <p>The token used to retrieve the next page of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. Valid Range: 1 - 99.</p>
    #
    # @return [Types::ListMediaCapturePipelinesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_media_capture_pipelines(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListMediaCapturePipelinesOutput
    #   resp.data.media_capture_pipelines #=> Array<MediaCapturePipelineSummary>
    #   resp.data.media_capture_pipelines[0] #=> Types::MediaCapturePipelineSummary
    #   resp.data.media_capture_pipelines[0].media_pipeline_id #=> String
    #   resp.data.media_capture_pipelines[0].media_pipeline_arn #=> String
    #   resp.data.next_token #=> String
    #
    def list_media_capture_pipelines(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListMediaCapturePipelinesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListMediaCapturePipelinesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListMediaCapturePipelines
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ForbiddenException, Errors::ServiceFailureException, Errors::ThrottledClientException, Errors::ResourceLimitExceededException, Errors::ServiceUnavailableException, Errors::UnauthorizedClientException, Errors::BadRequestException]),
        data_parser: Parsers::ListMediaCapturePipelines
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListMediaCapturePipelines,
        stubs: @stubs,
        params_class: Params::ListMediaCapturePipelinesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_media_capture_pipelines
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the tags applied to an Amazon Chime SDK media capture pipeline.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The resource ARN.</p>
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
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ForbiddenException, Errors::NotFoundException, Errors::ServiceFailureException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::UnauthorizedClientException, Errors::BadRequestException]),
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

    # <p>Applies the specified tags to the specified Amazon Chime SDK media capture pipeline.</p>
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ForbiddenException, Errors::NotFoundException, Errors::ServiceFailureException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::UnauthorizedClientException, Errors::BadRequestException]),
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

    # <p>Removes the specified tags from the specified Amazon Chime SDK media capture pipeline.</p>
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ForbiddenException, Errors::NotFoundException, Errors::ServiceFailureException, Errors::ThrottledClientException, Errors::ServiceUnavailableException, Errors::UnauthorizedClientException, Errors::BadRequestException]),
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

    private

    def apply_middleware(middleware_stack, middleware)
      Client.middleware.apply(middleware_stack)
      @middleware.apply(middleware_stack)
      Hearth::MiddlewareBuilder.new(middleware).apply(middleware_stack)
    end
  end
end
