# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::Ivs
  # An API client for AmazonInteractiveVideoService
  # See {#initialize} for a full list of supported configuration options
  # <p>
  #             <b>Introduction</b>
  #          </p>
  #          <p>The Amazon Interactive Video Service (IVS) API is REST compatible, using a standard HTTP
  #       API and an Amazon Web Services EventBridge event stream for responses. JSON is used for both
  #       requests and responses, including errors.</p>
  #          <p>The API is an Amazon Web Services regional service. For a list of supported regions and
  #       Amazon IVS HTTPS service endpoints, see the <a href="https://docs.aws.amazon.com/general/latest/gr/ivs.html">Amazon IVS page</a> in the
  #           <i>Amazon Web Services General Reference</i>.</p>
  #          <p>
  #             <i>
  #                <b>All API request parameters and URLs are case sensitive.
  #         </b>
  #             </i>
  #          </p>
  #          <p>For a summary of notable documentation changes in each release, see <a href="https://docs.aws.amazon.com/ivs/latest/userguide/doc-history.html"> Document
  #       History</a>.</p>
  #          <p>
  #             <b>Allowed Header Values</b>
  #          </p>
  #          <ul>
  #             <li>
  #                <p>
  #                   <code>
  #                      <b>Accept:</b>
  #                   </code> application/json</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <code>
  #                      <b>Accept-Encoding:</b>
  #                   </code> gzip, deflate</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <code>
  #                      <b>Content-Type:</b>
  #                   </code>application/json</p>
  #             </li>
  #          </ul>
  #          <p>
  #             <b>Resources</b>
  #          </p>
  #          <p>The following resources contain information about your IVS live stream (see <a href="https://docs.aws.amazon.com/ivs/latest/userguide/getting-started.html"> Getting Started with
  #         Amazon IVS</a>):</p>
  #          <ul>
  #             <li>
  #                <p>Channel — Stores configuration data related to your live stream. You first create a
  #           channel and then use the channel’s stream key to start your live stream. See the Channel
  #           endpoints for more information. </p>
  #             </li>
  #             <li>
  #                <p>Stream key — An identifier assigned by Amazon IVS when you create a channel, which is
  #           then used to authorize streaming. See the StreamKey endpoints for more information.
  #               <i>
  #                      <b>Treat the stream key like a secret, since it allows
  #               anyone to stream to the channel.</b>
  #                   </i>
  #                </p>
  #             </li>
  #             <li>
  #                <p>Playback key pair — Video playback may be restricted using playback-authorization
  #           tokens, which use public-key encryption. A playback key pair is the public-private pair of
  #           keys used to sign and validate the playback-authorization token. See the PlaybackKeyPair
  #           endpoints for more information.</p>
  #             </li>
  #             <li>
  #                <p>Recording configuration — Stores configuration related to recording a live stream and
  #           where to store the recorded content. Multiple channels can reference the same recording
  #           configuration. See the Recording Configuration endpoints for more information.</p>
  #             </li>
  #          </ul>
  #          <p>
  #             <b>Tagging</b>
  #          </p>
  #          <p>A <i>tag</i> is a metadata label that you assign to an Amazon Web Services
  #       resource. A tag comprises a <i>key</i> and a <i>value</i>, both
  #       set by you. For example, you might set a tag as <code>topic:nature</code> to label a
  #       particular video category. See <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services Resources</a> for
  #       more information, including restrictions that apply to tags.</p>
  #          <p>Tags can help you identify and organize your Amazon Web Services resources. For example,
  #       you can use the same tag for different resources to indicate that they are related. You can
  #       also use tags to manage access (see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html"> Access Tags</a>). </p>
  #          <p>The Amazon IVS API has these tag-related endpoints: <a>TagResource</a>, <a>UntagResource</a>, and <a>ListTagsForResource</a>. The following
  #       resources support tagging: Channels, Stream Keys, Playback Key Pairs, and Recording
  #       Configurations.</p>
  #          <p>At most 50 tags can be applied to a resource. </p>
  #          <p>
  #             <b>Authentication versus Authorization</b>
  #          </p>
  #          <p>Note the differences between these concepts:</p>
  #          <ul>
  #             <li>
  #                <p>
  #                   <i>Authentication</i> is about verifying identity. You need to be
  #           authenticated to sign Amazon IVS API requests.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <i>Authorization</i> is about granting permissions. You need to be
  #           authorized to view <a href="https://docs.aws.amazon.com/ivs/latest/userguide/private-channels.html">Amazon IVS private channels</a>.
  #           (Private channels are channels that are enabled for "playback authorization.")</p>
  #             </li>
  #          </ul>
  #          <p>
  #             <b>Authentication</b>
  #          </p>
  #          <p>All Amazon IVS API requests must be authenticated with a signature. The Amazon Web Services
  #       Command-Line Interface (CLI) and Amazon IVS Player SDKs take care of signing the underlying
  #       API calls for you. However, if your application calls the Amazon IVS API directly, it’s your
  #       responsibility to sign the requests.</p>
  #          <p>You generate a signature using valid Amazon Web Services credentials that have permission
  #       to perform the requested action. For example, you must sign PutMetadata requests with a
  #       signature generated from an IAM user account that has the <code>ivs:PutMetadata</code>
  #       permission.</p>
  #          <p>For more information:</p>
  #          <ul>
  #             <li>
  #                <p>Authentication and generating signatures — See <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/sig-v4-authenticating-requests.html">Authenticating Requests
  #               (Amazon Web Services Signature Version 4)</a> in the <i>Amazon Web Services
  #             General Reference</i>.</p>
  #             </li>
  #             <li>
  #                <p>Managing Amazon IVS permissions — See <a href="https://docs.aws.amazon.com/ivs/latest/userguide/security-iam.html">Identity and Access Management</a> on
  #           the Security page of the <i>Amazon IVS User Guide</i>.</p>
  #             </li>
  #          </ul>
  #          <p>
  #             <b>Channel Endpoints</b>
  #          </p>
  #          <ul>
  #             <li>
  #                <p>
  #                   <a>CreateChannel</a> — Creates a new channel and an associated stream
  #           key to start streaming.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>GetChannel</a> — Gets the channel configuration for the specified
  #           channel ARN (Amazon Resource Name).</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>BatchGetChannel</a> — Performs <a>GetChannel</a> on
  #           multiple ARNs simultaneously.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>ListChannels</a> — Gets summary information about all channels in
  #           your account, in the Amazon Web Services region where the API request is processed. This
  #           list can be filtered to match a specified name or recording-configuration ARN. Filters are
  #           mutually exclusive and cannot be used together. If you try to use both filters, you will
  #           get an error (409 Conflict Exception).</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>UpdateChannel</a> — Updates a channel's configuration. This does
  #           not affect an ongoing stream of this channel. You must stop and restart the stream for the
  #           changes to take effect.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>DeleteChannel</a> — Deletes the specified channel.</p>
  #             </li>
  #          </ul>
  #          <p>
  #             <b>StreamKey Endpoints</b>
  #          </p>
  #          <ul>
  #             <li>
  #                <p>
  #                   <a>CreateStreamKey</a> — Creates a stream key, used to initiate a
  #           stream, for the specified channel ARN.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>GetStreamKey</a> — Gets stream key information for the specified
  #           ARN.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>BatchGetStreamKey</a> — Performs <a>GetStreamKey</a> on
  #           multiple ARNs simultaneously.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>ListStreamKeys</a> — Gets summary information about stream keys
  #           for the specified channel.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>DeleteStreamKey</a> — Deletes the stream key for the specified
  #           ARN, so it can no longer be used to stream.</p>
  #             </li>
  #          </ul>
  #          <p>
  #             <b>Stream Endpoints</b>
  #          </p>
  #          <ul>
  #             <li>
  #                <p>
  #                   <a>GetStream</a> — Gets information about the active (live) stream on
  #           a specified channel.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>GetStreamSession</a> — Gets metadata on a specified stream.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>ListStreams</a> — Gets summary information about live streams in
  #           your account, in the Amazon Web Services region where the API request is processed.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>ListStreamSessions</a> — Gets a summary of current and previous
  #           streams for a specified channel in your account, in the AWS region where the API request
  #           is processed.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>StopStream</a> — Disconnects the incoming RTMPS stream for the
  #           specified channel. Can be used in conjunction with <a>DeleteStreamKey</a> to
  #           prevent further streaming to a channel.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>PutMetadata</a> — Inserts metadata into the active stream of the
  #           specified channel. At most 5 requests per second per channel are allowed, each with a
  #           maximum 1 KB payload. (If 5 TPS is not sufficient for your needs, we recommend batching
  #           your data into a single PutMetadata call.) At most 155 requests per second per account are
  #           allowed.</p>
  #             </li>
  #          </ul>
  #          <p>
  #             <b>PlaybackKeyPair Endpoints</b>
  #          </p>
  #          <p>For more information, see <a href="https://docs.aws.amazon.com/ivs/latest/userguide/private-channels.html">Setting Up Private Channels</a> in the
  #         <i>Amazon IVS User Guide</i>.</p>
  #          <ul>
  #             <li>
  #                <p>
  #                   <a>ImportPlaybackKeyPair</a> — Imports the public portion of a new
  #           key pair and returns its <code>arn</code> and <code>fingerprint</code>. The
  #             <code>privateKey</code> can then be used to generate viewer authorization tokens, to
  #           grant viewers access to private channels (channels enabled for playback
  #           authorization).</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>GetPlaybackKeyPair</a> — Gets a specified playback authorization
  #           key pair and returns the <code>arn</code> and <code>fingerprint</code>. The
  #             <code>privateKey</code> held by the caller can be used to generate viewer authorization
  #           tokens, to grant viewers access to private channels.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>ListPlaybackKeyPairs</a> — Gets summary information about playback
  #           key pairs.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>DeletePlaybackKeyPair</a> — Deletes a specified authorization key
  #           pair. This invalidates future viewer tokens generated using the key pair’s
  #             <code>privateKey</code>.</p>
  #             </li>
  #          </ul>
  #          <p>
  #             <b>RecordingConfiguration Endpoints</b>
  #          </p>
  #          <ul>
  #             <li>
  #                <p>
  #                   <a>CreateRecordingConfiguration</a> — Creates a new recording
  #           configuration, used to enable recording to Amazon S3.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>GetRecordingConfiguration</a> — Gets the recording-configuration
  #           metadata for the specified ARN.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>ListRecordingConfigurations</a> — Gets summary information about
  #           all recording configurations in your account, in the Amazon Web Services region where the
  #           API request is processed.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>DeleteRecordingConfiguration</a> — Deletes the recording
  #           configuration for the specified ARN.</p>
  #             </li>
  #          </ul>
  #          <p>
  #             <b>Amazon Web Services Tags Endpoints</b>
  #          </p>
  #          <ul>
  #             <li>
  #                <p>
  #                   <a>TagResource</a> — Adds or updates tags for the Amazon Web Services
  #           resource with the specified ARN.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>UntagResource</a> — Removes tags from the resource with the
  #           specified ARN.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>ListTagsForResource</a> — Gets information about Amazon Web Services tags for the specified ARN.</p>
  #             </li>
  #          </ul>
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
    def initialize(config = AWS::SDK::Ivs::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Performs <a>GetChannel</a> on multiple ARNs simultaneously.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchGetChannelInput}.
    #
    # @option params [Array<String>] :arns
    #   <p>Array of ARNs, one per channel.</p>
    #
    # @return [Types::BatchGetChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_channel(
    #     arns: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchGetChannelOutput
    #   resp.data.channels #=> Array<Channel>
    #   resp.data.channels[0] #=> Types::Channel
    #   resp.data.channels[0].arn #=> String
    #   resp.data.channels[0].name #=> String
    #   resp.data.channels[0].latency_mode #=> String, one of ["NORMAL", "LOW"]
    #   resp.data.channels[0].type #=> String, one of ["BASIC", "STANDARD"]
    #   resp.data.channels[0].recording_configuration_arn #=> String
    #   resp.data.channels[0].ingest_endpoint #=> String
    #   resp.data.channels[0].playback_url #=> String
    #   resp.data.channels[0].authorized #=> Boolean
    #   resp.data.channels[0].tags #=> Hash<String, String>
    #   resp.data.channels[0].tags['key'] #=> String
    #   resp.data.errors #=> Array<BatchError>
    #   resp.data.errors[0] #=> Types::BatchError
    #   resp.data.errors[0].arn #=> String
    #   resp.data.errors[0].code #=> String
    #   resp.data.errors[0].message #=> String
    #
    def batch_get_channel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchGetChannelInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchGetChannelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchGetChannel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::BatchGetChannel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchGetChannel,
        stubs: @stubs,
        params_class: Params::BatchGetChannelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_get_channel
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Performs <a>GetStreamKey</a> on multiple ARNs simultaneously.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchGetStreamKeyInput}.
    #
    # @option params [Array<String>] :arns
    #   <p>Array of ARNs, one per channel.</p>
    #
    # @return [Types::BatchGetStreamKeyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_stream_key(
    #     arns: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchGetStreamKeyOutput
    #   resp.data.stream_keys #=> Array<StreamKey>
    #   resp.data.stream_keys[0] #=> Types::StreamKey
    #   resp.data.stream_keys[0].arn #=> String
    #   resp.data.stream_keys[0].value #=> String
    #   resp.data.stream_keys[0].channel_arn #=> String
    #   resp.data.stream_keys[0].tags #=> Hash<String, String>
    #   resp.data.stream_keys[0].tags['key'] #=> String
    #   resp.data.errors #=> Array<BatchError>
    #   resp.data.errors[0] #=> Types::BatchError
    #   resp.data.errors[0].arn #=> String
    #   resp.data.errors[0].code #=> String
    #   resp.data.errors[0].message #=> String
    #
    def batch_get_stream_key(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchGetStreamKeyInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchGetStreamKeyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchGetStreamKey
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::BatchGetStreamKey
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchGetStreamKey,
        stubs: @stubs,
        params_class: Params::BatchGetStreamKeyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_get_stream_key
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new channel and an associated stream key to start streaming.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateChannelInput}.
    #
    # @option params [String] :name
    #   <p>Channel name.</p>
    #
    # @option params [String] :latency_mode
    #   <p>Channel latency mode. Use <code>NORMAL</code> to broadcast and deliver live video up to
    #         Full HD. Use <code>LOW</code> for near-real-time interaction with viewers. (Note: In the
    #         Amazon IVS console, <code>LOW</code> and <code>NORMAL</code> correspond to Ultra-low and
    #         Standard, respectively.) Default: <code>LOW</code>.</p>
    #
    # @option params [String] :type
    #   <p>Channel type, which determines the allowable resolution and bitrate. <i>If you
    #           exceed the allowable resolution or bitrate, the stream probably will disconnect
    #           immediately.</i> Default: <code>STANDARD</code>. Valid values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>STANDARD</code>: Multiple qualities are generated from the original input, to
    #             automatically give viewers the best experience for their devices and network conditions.
    #             Resolution can be up to 1080p and bitrate can be up to 8.5 Mbps. Audio is transcoded only
    #             for renditions 360p and below; above that, audio is passed through.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BASIC</code>: Amazon IVS delivers the original input to viewers. The viewer’s
    #             video-quality choice is limited to the original input. Resolution can be up to 480p and
    #             bitrate can be up to 1.5 Mbps.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Boolean] :authorized
    #   <p>Whether the channel is private (enabled for playback authorization). Default:
    #           <code>false</code>.</p>
    #
    # @option params [String] :recording_configuration_arn
    #   <p>Recording-configuration ARN. Default: "" (empty string, recording is disabled).</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Array of 1-50 maps, each of the form <code>string:string (key:value)</code>.</p>
    #
    # @return [Types::CreateChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_channel(
    #     name: 'name',
    #     latency_mode: 'NORMAL', # accepts ["NORMAL", "LOW"]
    #     type: 'BASIC', # accepts ["BASIC", "STANDARD"]
    #     authorized: false,
    #     recording_configuration_arn: 'recordingConfigurationArn',
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateChannelOutput
    #   resp.data.channel #=> Types::Channel
    #   resp.data.channel.arn #=> String
    #   resp.data.channel.name #=> String
    #   resp.data.channel.latency_mode #=> String, one of ["NORMAL", "LOW"]
    #   resp.data.channel.type #=> String, one of ["BASIC", "STANDARD"]
    #   resp.data.channel.recording_configuration_arn #=> String
    #   resp.data.channel.ingest_endpoint #=> String
    #   resp.data.channel.playback_url #=> String
    #   resp.data.channel.authorized #=> Boolean
    #   resp.data.channel.tags #=> Hash<String, String>
    #   resp.data.channel.tags['key'] #=> String
    #   resp.data.stream_key #=> Types::StreamKey
    #   resp.data.stream_key.arn #=> String
    #   resp.data.stream_key.value #=> String
    #   resp.data.stream_key.channel_arn #=> String
    #   resp.data.stream_key.tags #=> Hash<String, String>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::PendingVerification, Errors::ServiceQuotaExceededException, Errors::AccessDeniedException, Errors::ResourceNotFoundException]),
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

    # <p>Creates a new recording configuration, used to enable recording to Amazon S3.</p>
    #          <p>
    #             <b>Known issue:</b> In the us-east-1 region, if you use the
    #         Amazon Web Services CLI to create a recording configuration, it returns success even if the
    #       S3 bucket is in a different region. In this case, the <code>state</code> of the recording
    #       configuration is <code>CREATE_FAILED</code> (instead of <code>ACTIVE</code>). (In other
    #       regions, the CLI correctly returns failure if the bucket is in a different region.)</p>
    #          <p>
    #             <b>Workaround:</b> Ensure that your S3 bucket is in the same
    #       region as the recording configuration. If you create a recording configuration in a different
    #       region as your S3 bucket, delete that recording configuration and create a new one with an S3
    #       bucket from the correct region.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateRecordingConfigurationInput}.
    #
    # @option params [String] :name
    #   <p>Recording-configuration name. The value does not need to be unique.</p>
    #
    # @option params [DestinationConfiguration] :destination_configuration
    #   <p>A complex type that contains a destination configuration for where recorded video will be
    #         stored.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Array of 1-50 maps, each of the form <code>string:string (key:value)</code>.</p>
    #
    # @option params [ThumbnailConfiguration] :thumbnail_configuration
    #   <p>A complex type that allows you to enable/disable the recording of thumbnails for a live
    #         session and modify the interval at which thumbnails are generated for the live session.</p>
    #
    # @return [Types::CreateRecordingConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_recording_configuration(
    #     name: 'name',
    #     destination_configuration: {
    #       s3: {
    #         bucket_name: 'bucketName' # required
    #       }
    #     }, # required
    #     tags: {
    #       'key' => 'value'
    #     },
    #     thumbnail_configuration: {
    #       recording_mode: 'DISABLED', # accepts ["DISABLED", "INTERVAL"]
    #       target_interval_seconds: 1
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateRecordingConfigurationOutput
    #   resp.data.recording_configuration #=> Types::RecordingConfiguration
    #   resp.data.recording_configuration.arn #=> String
    #   resp.data.recording_configuration.name #=> String
    #   resp.data.recording_configuration.destination_configuration #=> Types::DestinationConfiguration
    #   resp.data.recording_configuration.destination_configuration.s3 #=> Types::S3DestinationConfiguration
    #   resp.data.recording_configuration.destination_configuration.s3.bucket_name #=> String
    #   resp.data.recording_configuration.state #=> String, one of ["CREATING", "CREATE_FAILED", "ACTIVE"]
    #   resp.data.recording_configuration.tags #=> Hash<String, String>
    #   resp.data.recording_configuration.tags['key'] #=> String
    #   resp.data.recording_configuration.thumbnail_configuration #=> Types::ThumbnailConfiguration
    #   resp.data.recording_configuration.thumbnail_configuration.recording_mode #=> String, one of ["DISABLED", "INTERVAL"]
    #   resp.data.recording_configuration.thumbnail_configuration.target_interval_seconds #=> Integer
    #
    def create_recording_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateRecordingConfigurationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateRecordingConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateRecordingConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ConflictException, Errors::ValidationException, Errors::PendingVerification, Errors::ServiceQuotaExceededException, Errors::AccessDeniedException]),
        data_parser: Parsers::CreateRecordingConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateRecordingConfiguration,
        stubs: @stubs,
        params_class: Params::CreateRecordingConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_recording_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a stream key, used to initiate a stream, for the specified channel ARN.</p>
    #          <p>Note that <a>CreateChannel</a> creates a stream key. If you subsequently use
    #       CreateStreamKey on the same channel, it will fail because a stream key already exists and
    #       there is a limit of 1 stream key per channel. To reset the stream key on a channel, use <a>DeleteStreamKey</a> and then CreateStreamKey.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateStreamKeyInput}.
    #
    # @option params [String] :channel_arn
    #   <p>ARN of the channel for which to create the stream key.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Array of 1-50 maps, each of the form <code>string:string (key:value)</code>.</p>
    #
    # @return [Types::CreateStreamKeyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_stream_key(
    #     channel_arn: 'channelArn', # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateStreamKeyOutput
    #   resp.data.stream_key #=> Types::StreamKey
    #   resp.data.stream_key.arn #=> String
    #   resp.data.stream_key.value #=> String
    #   resp.data.stream_key.channel_arn #=> String
    #   resp.data.stream_key.tags #=> Hash<String, String>
    #   resp.data.stream_key.tags['key'] #=> String
    #
    def create_stream_key(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateStreamKeyInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateStreamKeyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateStreamKey
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::PendingVerification, Errors::ServiceQuotaExceededException, Errors::AccessDeniedException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::CreateStreamKey
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateStreamKey,
        stubs: @stubs,
        params_class: Params::CreateStreamKeyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_stream_key
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified channel and its associated stream keys.</p>
    #          <p>If you try to delete a live channel, you will get an error (409 ConflictException). To
    #       delete a channel that is live, call <a>StopStream</a>, wait for the Amazon
    #       EventBridge "Stream End" event (to verify that the stream's state was changed from Live to
    #       Offline), then call DeleteChannel. (See <a href="https://docs.aws.amazon.com/ivs/latest/userguide/eventbridge.html"> Using EventBridge with Amazon IVS</a>.)
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteChannelInput}.
    #
    # @option params [String] :arn
    #   <p>ARN of the channel to be deleted.</p>
    #
    # @return [Types::DeleteChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_channel(
    #     arn: 'arn' # required
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ConflictException, Errors::ValidationException, Errors::PendingVerification, Errors::AccessDeniedException, Errors::ResourceNotFoundException]),
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

    # <p>Deletes a specified authorization key pair. This invalidates future viewer tokens
    #       generated using the key pair’s <code>privateKey</code>. For more information, see <a href="https://docs.aws.amazon.com/ivs/latest/userguide/private-channels.html">Setting Up Private
    #         Channels</a> in the <i>Amazon IVS User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeletePlaybackKeyPairInput}.
    #
    # @option params [String] :arn
    #   <p>ARN of the key pair to be deleted.</p>
    #
    # @return [Types::DeletePlaybackKeyPairOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_playback_key_pair(
    #     arn: 'arn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeletePlaybackKeyPairOutput
    #
    def delete_playback_key_pair(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeletePlaybackKeyPairInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeletePlaybackKeyPairInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeletePlaybackKeyPair
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::PendingVerification, Errors::AccessDeniedException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeletePlaybackKeyPair
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeletePlaybackKeyPair,
        stubs: @stubs,
        params_class: Params::DeletePlaybackKeyPairOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_playback_key_pair
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the recording configuration for the specified ARN.</p>
    #          <p>If you try to delete a recording configuration that is associated with a channel, you will
    #       get an error (409 ConflictException). To avoid this, for all channels that reference the
    #       recording configuration, first use <a>UpdateChannel</a> to set the
    #         <code>recordingConfigurationArn</code> field to an empty string, then use
    #       DeleteRecordingConfiguration.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteRecordingConfigurationInput}.
    #
    # @option params [String] :arn
    #   <p>ARN of the recording configuration to be deleted.</p>
    #
    # @return [Types::DeleteRecordingConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_recording_configuration(
    #     arn: 'arn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteRecordingConfigurationOutput
    #
    def delete_recording_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteRecordingConfigurationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteRecordingConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteRecordingConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ConflictException, Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeleteRecordingConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteRecordingConfiguration,
        stubs: @stubs,
        params_class: Params::DeleteRecordingConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_recording_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the stream key for the specified ARN, so it can no longer be used to
    #       stream.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteStreamKeyInput}.
    #
    # @option params [String] :arn
    #   <p>ARN of the stream key to be deleted.</p>
    #
    # @return [Types::DeleteStreamKeyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_stream_key(
    #     arn: 'arn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteStreamKeyOutput
    #
    def delete_stream_key(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteStreamKeyInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteStreamKeyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteStreamKey
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ValidationException, Errors::PendingVerification, Errors::AccessDeniedException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeleteStreamKey
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteStreamKey,
        stubs: @stubs,
        params_class: Params::DeleteStreamKeyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_stream_key
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the channel configuration for the specified channel ARN. See also <a>BatchGetChannel</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetChannelInput}.
    #
    # @option params [String] :arn
    #   <p>ARN of the channel for which the configuration is to be retrieved.</p>
    #
    # @return [Types::GetChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_channel(
    #     arn: 'arn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetChannelOutput
    #   resp.data.channel #=> Types::Channel
    #   resp.data.channel.arn #=> String
    #   resp.data.channel.name #=> String
    #   resp.data.channel.latency_mode #=> String, one of ["NORMAL", "LOW"]
    #   resp.data.channel.type #=> String, one of ["BASIC", "STANDARD"]
    #   resp.data.channel.recording_configuration_arn #=> String
    #   resp.data.channel.ingest_endpoint #=> String
    #   resp.data.channel.playback_url #=> String
    #   resp.data.channel.authorized #=> Boolean
    #   resp.data.channel.tags #=> Hash<String, String>
    #   resp.data.channel.tags['key'] #=> String
    #
    def get_channel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetChannelInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetChannelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetChannel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetChannel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetChannel,
        stubs: @stubs,
        params_class: Params::GetChannelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_channel
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a specified playback authorization key pair and returns the <code>arn</code> and
    #         <code>fingerprint</code>. The <code>privateKey</code> held by the caller can be used to
    #       generate viewer authorization tokens, to grant viewers access to private channels. For more
    #       information, see <a href="https://docs.aws.amazon.com/ivs/latest/userguide/private-channels.html">Setting Up Private Channels</a> in the <i>Amazon IVS User
    #       Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetPlaybackKeyPairInput}.
    #
    # @option params [String] :arn
    #   <p>ARN of the key pair to be returned.</p>
    #
    # @return [Types::GetPlaybackKeyPairOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_playback_key_pair(
    #     arn: 'arn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetPlaybackKeyPairOutput
    #   resp.data.key_pair #=> Types::PlaybackKeyPair
    #   resp.data.key_pair.arn #=> String
    #   resp.data.key_pair.name #=> String
    #   resp.data.key_pair.fingerprint #=> String
    #   resp.data.key_pair.tags #=> Hash<String, String>
    #   resp.data.key_pair.tags['key'] #=> String
    #
    def get_playback_key_pair(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetPlaybackKeyPairInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetPlaybackKeyPairInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetPlaybackKeyPair
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetPlaybackKeyPair
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetPlaybackKeyPair,
        stubs: @stubs,
        params_class: Params::GetPlaybackKeyPairOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_playback_key_pair
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the recording configuration for the specified ARN.</p>
    #
    # @param [Hash] params
    #   See {Types::GetRecordingConfigurationInput}.
    #
    # @option params [String] :arn
    #   <p>ARN of the recording configuration to be retrieved.</p>
    #
    # @return [Types::GetRecordingConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_recording_configuration(
    #     arn: 'arn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetRecordingConfigurationOutput
    #   resp.data.recording_configuration #=> Types::RecordingConfiguration
    #   resp.data.recording_configuration.arn #=> String
    #   resp.data.recording_configuration.name #=> String
    #   resp.data.recording_configuration.destination_configuration #=> Types::DestinationConfiguration
    #   resp.data.recording_configuration.destination_configuration.s3 #=> Types::S3DestinationConfiguration
    #   resp.data.recording_configuration.destination_configuration.s3.bucket_name #=> String
    #   resp.data.recording_configuration.state #=> String, one of ["CREATING", "CREATE_FAILED", "ACTIVE"]
    #   resp.data.recording_configuration.tags #=> Hash<String, String>
    #   resp.data.recording_configuration.tags['key'] #=> String
    #   resp.data.recording_configuration.thumbnail_configuration #=> Types::ThumbnailConfiguration
    #   resp.data.recording_configuration.thumbnail_configuration.recording_mode #=> String, one of ["DISABLED", "INTERVAL"]
    #   resp.data.recording_configuration.thumbnail_configuration.target_interval_seconds #=> Integer
    #
    def get_recording_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetRecordingConfigurationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetRecordingConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetRecordingConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetRecordingConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetRecordingConfiguration,
        stubs: @stubs,
        params_class: Params::GetRecordingConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_recording_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about the active (live) stream on a specified channel.</p>
    #
    # @param [Hash] params
    #   See {Types::GetStreamInput}.
    #
    # @option params [String] :channel_arn
    #   <p>Channel ARN for stream to be accessed.</p>
    #
    # @return [Types::GetStreamOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_stream(
    #     channel_arn: 'channelArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetStreamOutput
    #   resp.data.stream #=> Types::Stream
    #   resp.data.stream.channel_arn #=> String
    #   resp.data.stream.stream_id #=> String
    #   resp.data.stream.playback_url #=> String
    #   resp.data.stream.start_time #=> Time
    #   resp.data.stream.state #=> String, one of ["LIVE", "OFFLINE"]
    #   resp.data.stream.health #=> String, one of ["HEALTHY", "STARVING", "UNKNOWN"]
    #   resp.data.stream.viewer_count #=> Integer
    #
    def get_stream(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetStreamInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetStreamInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetStream
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ChannelNotBroadcasting, Errors::AccessDeniedException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetStream
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetStream,
        stubs: @stubs,
        params_class: Params::GetStreamOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_stream
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets stream-key information for a specified ARN.</p>
    #
    # @param [Hash] params
    #   See {Types::GetStreamKeyInput}.
    #
    # @option params [String] :arn
    #   <p>ARN for the stream key to be retrieved.</p>
    #
    # @return [Types::GetStreamKeyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_stream_key(
    #     arn: 'arn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetStreamKeyOutput
    #   resp.data.stream_key #=> Types::StreamKey
    #   resp.data.stream_key.arn #=> String
    #   resp.data.stream_key.value #=> String
    #   resp.data.stream_key.channel_arn #=> String
    #   resp.data.stream_key.tags #=> Hash<String, String>
    #   resp.data.stream_key.tags['key'] #=> String
    #
    def get_stream_key(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetStreamKeyInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetStreamKeyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetStreamKey
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetStreamKey
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetStreamKey,
        stubs: @stubs,
        params_class: Params::GetStreamKeyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_stream_key
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets metadata on a specified stream.</p>
    #
    # @param [Hash] params
    #   See {Types::GetStreamSessionInput}.
    #
    # @option params [String] :channel_arn
    #   <p>ARN of the channel resource</p>
    #
    # @option params [String] :stream_id
    #   <p>Unique identifier for a live or previously live stream in the specified channel. If no
    #           <code>streamId</code> is provided, this returns the most recent stream session for the
    #         channel, if it exists.</p>
    #
    # @return [Types::GetStreamSessionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_stream_session(
    #     channel_arn: 'channelArn', # required
    #     stream_id: 'streamId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetStreamSessionOutput
    #   resp.data.stream_session #=> Types::StreamSession
    #   resp.data.stream_session.stream_id #=> String
    #   resp.data.stream_session.start_time #=> Time
    #   resp.data.stream_session.end_time #=> Time
    #   resp.data.stream_session.channel #=> Types::Channel
    #   resp.data.stream_session.channel.arn #=> String
    #   resp.data.stream_session.channel.name #=> String
    #   resp.data.stream_session.channel.latency_mode #=> String, one of ["NORMAL", "LOW"]
    #   resp.data.stream_session.channel.type #=> String, one of ["BASIC", "STANDARD"]
    #   resp.data.stream_session.channel.recording_configuration_arn #=> String
    #   resp.data.stream_session.channel.ingest_endpoint #=> String
    #   resp.data.stream_session.channel.playback_url #=> String
    #   resp.data.stream_session.channel.authorized #=> Boolean
    #   resp.data.stream_session.channel.tags #=> Hash<String, String>
    #   resp.data.stream_session.channel.tags['key'] #=> String
    #   resp.data.stream_session.ingest_configuration #=> Types::IngestConfiguration
    #   resp.data.stream_session.ingest_configuration.video #=> Types::VideoConfiguration
    #   resp.data.stream_session.ingest_configuration.video.avc_profile #=> String
    #   resp.data.stream_session.ingest_configuration.video.avc_level #=> String
    #   resp.data.stream_session.ingest_configuration.video.codec #=> String
    #   resp.data.stream_session.ingest_configuration.video.encoder #=> String
    #   resp.data.stream_session.ingest_configuration.video.target_bitrate #=> Integer
    #   resp.data.stream_session.ingest_configuration.video.target_framerate #=> Integer
    #   resp.data.stream_session.ingest_configuration.video.video_height #=> Integer
    #   resp.data.stream_session.ingest_configuration.video.video_width #=> Integer
    #   resp.data.stream_session.ingest_configuration.audio #=> Types::AudioConfiguration
    #   resp.data.stream_session.ingest_configuration.audio.codec #=> String
    #   resp.data.stream_session.ingest_configuration.audio.target_bitrate #=> Integer
    #   resp.data.stream_session.ingest_configuration.audio.sample_rate #=> Integer
    #   resp.data.stream_session.ingest_configuration.audio.channels #=> Integer
    #   resp.data.stream_session.recording_configuration #=> Types::RecordingConfiguration
    #   resp.data.stream_session.recording_configuration.arn #=> String
    #   resp.data.stream_session.recording_configuration.name #=> String
    #   resp.data.stream_session.recording_configuration.destination_configuration #=> Types::DestinationConfiguration
    #   resp.data.stream_session.recording_configuration.destination_configuration.s3 #=> Types::S3DestinationConfiguration
    #   resp.data.stream_session.recording_configuration.destination_configuration.s3.bucket_name #=> String
    #   resp.data.stream_session.recording_configuration.state #=> String, one of ["CREATING", "CREATE_FAILED", "ACTIVE"]
    #   resp.data.stream_session.recording_configuration.tags #=> Hash<String, String>
    #   resp.data.stream_session.recording_configuration.thumbnail_configuration #=> Types::ThumbnailConfiguration
    #   resp.data.stream_session.recording_configuration.thumbnail_configuration.recording_mode #=> String, one of ["DISABLED", "INTERVAL"]
    #   resp.data.stream_session.recording_configuration.thumbnail_configuration.target_interval_seconds #=> Integer
    #   resp.data.stream_session.truncated_events #=> Array<StreamEvent>
    #   resp.data.stream_session.truncated_events[0] #=> Types::StreamEvent
    #   resp.data.stream_session.truncated_events[0].name #=> String
    #   resp.data.stream_session.truncated_events[0].type #=> String
    #   resp.data.stream_session.truncated_events[0].event_time #=> Time
    #
    def get_stream_session(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetStreamSessionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetStreamSessionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetStreamSession
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetStreamSession
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetStreamSession,
        stubs: @stubs,
        params_class: Params::GetStreamSessionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_stream_session
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Imports the public portion of a new key pair and returns its <code>arn</code> and
    #         <code>fingerprint</code>. The <code>privateKey</code> can then be used to generate viewer
    #       authorization tokens, to grant viewers access to private channels. For more information, see
    #         <a href="https://docs.aws.amazon.com/ivs/latest/userguide/private-channels.html">Setting Up
    #         Private Channels</a> in the <i>Amazon IVS User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::ImportPlaybackKeyPairInput}.
    #
    # @option params [String] :public_key_material
    #   <p>The public portion of a customer-generated key pair.</p>
    #
    # @option params [String] :name
    #   <p>Playback-key-pair name. The value does not need to be unique.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Any tags provided with the request are added to the playback key pair tags.</p>
    #
    # @return [Types::ImportPlaybackKeyPairOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_playback_key_pair(
    #     public_key_material: 'publicKeyMaterial', # required
    #     name: 'name',
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ImportPlaybackKeyPairOutput
    #   resp.data.key_pair #=> Types::PlaybackKeyPair
    #   resp.data.key_pair.arn #=> String
    #   resp.data.key_pair.name #=> String
    #   resp.data.key_pair.fingerprint #=> String
    #   resp.data.key_pair.tags #=> Hash<String, String>
    #   resp.data.key_pair.tags['key'] #=> String
    #
    def import_playback_key_pair(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ImportPlaybackKeyPairInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ImportPlaybackKeyPairInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ImportPlaybackKeyPair
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ValidationException, Errors::PendingVerification, Errors::ServiceQuotaExceededException, Errors::AccessDeniedException]),
        data_parser: Parsers::ImportPlaybackKeyPair
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ImportPlaybackKeyPair,
        stubs: @stubs,
        params_class: Params::ImportPlaybackKeyPairOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :import_playback_key_pair
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets summary information about all channels in your account, in the Amazon Web Services
    #       region where the API request is processed. This list can be filtered to match a specified name
    #       or recording-configuration ARN. Filters are mutually exclusive and cannot be used together. If
    #       you try to use both filters, you will get an error (409 ConflictException).</p>
    #
    # @param [Hash] params
    #   See {Types::ListChannelsInput}.
    #
    # @option params [String] :filter_by_name
    #   <p>Filters the channel list to match the specified name.</p>
    #
    # @option params [String] :filter_by_recording_configuration_arn
    #   <p>Filters the channel list to match the specified recording-configuration ARN.</p>
    #
    # @option params [String] :next_token
    #   <p>The first channel to retrieve. This is used for pagination; see the <code>nextToken</code>
    #         response field.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Maximum number of channels to return. Default: 50.</p>
    #
    # @return [Types::ListChannelsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_channels(
    #     filter_by_name: 'filterByName',
    #     filter_by_recording_configuration_arn: 'filterByRecordingConfigurationArn',
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListChannelsOutput
    #   resp.data.channels #=> Array<ChannelSummary>
    #   resp.data.channels[0] #=> Types::ChannelSummary
    #   resp.data.channels[0].arn #=> String
    #   resp.data.channels[0].name #=> String
    #   resp.data.channels[0].latency_mode #=> String, one of ["NORMAL", "LOW"]
    #   resp.data.channels[0].authorized #=> Boolean
    #   resp.data.channels[0].recording_configuration_arn #=> String
    #   resp.data.channels[0].tags #=> Hash<String, String>
    #   resp.data.channels[0].tags['key'] #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ValidationException, Errors::AccessDeniedException]),
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

    # <p>Gets summary information about playback key pairs. For more information, see <a href="https://docs.aws.amazon.com/ivs/latest/userguide/private-channels.html">Setting Up Private
    #         Channels</a> in the <i>Amazon IVS User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListPlaybackKeyPairsInput}.
    #
    # @option params [String] :next_token
    #   <p>Maximum number of key pairs to return.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The first key pair to retrieve. This is used for pagination; see the
    #           <code>nextToken</code> response field. Default: 50.</p>
    #
    # @return [Types::ListPlaybackKeyPairsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_playback_key_pairs(
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPlaybackKeyPairsOutput
    #   resp.data.key_pairs #=> Array<PlaybackKeyPairSummary>
    #   resp.data.key_pairs[0] #=> Types::PlaybackKeyPairSummary
    #   resp.data.key_pairs[0].arn #=> String
    #   resp.data.key_pairs[0].name #=> String
    #   resp.data.key_pairs[0].tags #=> Hash<String, String>
    #   resp.data.key_pairs[0].tags['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def list_playback_key_pairs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPlaybackKeyPairsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPlaybackKeyPairsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPlaybackKeyPairs
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListPlaybackKeyPairs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPlaybackKeyPairs,
        stubs: @stubs,
        params_class: Params::ListPlaybackKeyPairsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_playback_key_pairs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets summary information about all recording configurations in your account, in the
    #         Amazon Web Services region where the API request is processed.</p>
    #
    # @param [Hash] params
    #   See {Types::ListRecordingConfigurationsInput}.
    #
    # @option params [String] :next_token
    #   <p>The first recording configuration to retrieve. This is used for pagination; see the
    #           <code>nextToken</code> response field.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Maximum number of recording configurations to return. Default: 50. </p>
    #
    # @return [Types::ListRecordingConfigurationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_recording_configurations(
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListRecordingConfigurationsOutput
    #   resp.data.recording_configurations #=> Array<RecordingConfigurationSummary>
    #   resp.data.recording_configurations[0] #=> Types::RecordingConfigurationSummary
    #   resp.data.recording_configurations[0].arn #=> String
    #   resp.data.recording_configurations[0].name #=> String
    #   resp.data.recording_configurations[0].destination_configuration #=> Types::DestinationConfiguration
    #   resp.data.recording_configurations[0].destination_configuration.s3 #=> Types::S3DestinationConfiguration
    #   resp.data.recording_configurations[0].destination_configuration.s3.bucket_name #=> String
    #   resp.data.recording_configurations[0].state #=> String, one of ["CREATING", "CREATE_FAILED", "ACTIVE"]
    #   resp.data.recording_configurations[0].tags #=> Hash<String, String>
    #   resp.data.recording_configurations[0].tags['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def list_recording_configurations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListRecordingConfigurationsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListRecordingConfigurationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListRecordingConfigurations
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListRecordingConfigurations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListRecordingConfigurations,
        stubs: @stubs,
        params_class: Params::ListRecordingConfigurationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_recording_configurations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets summary information about stream keys for the specified channel.</p>
    #
    # @param [Hash] params
    #   See {Types::ListStreamKeysInput}.
    #
    # @option params [String] :channel_arn
    #   <p>Channel ARN used to filter the list.</p>
    #
    # @option params [String] :next_token
    #   <p>The first stream key to retrieve. This is used for pagination; see the
    #           <code>nextToken</code> response field.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Maximum number of streamKeys to return. Default: 50.</p>
    #
    # @return [Types::ListStreamKeysOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_stream_keys(
    #     channel_arn: 'channelArn', # required
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListStreamKeysOutput
    #   resp.data.stream_keys #=> Array<StreamKeySummary>
    #   resp.data.stream_keys[0] #=> Types::StreamKeySummary
    #   resp.data.stream_keys[0].arn #=> String
    #   resp.data.stream_keys[0].channel_arn #=> String
    #   resp.data.stream_keys[0].tags #=> Hash<String, String>
    #   resp.data.stream_keys[0].tags['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def list_stream_keys(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListStreamKeysInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListStreamKeysInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListStreamKeys
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListStreamKeys
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListStreamKeys,
        stubs: @stubs,
        params_class: Params::ListStreamKeysOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_stream_keys
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a summary of current and previous streams for a specified channel in your account, in
    #       the AWS region where the API request is processed.</p>
    #
    # @param [Hash] params
    #   See {Types::ListStreamSessionsInput}.
    #
    # @option params [String] :channel_arn
    #   <p>Channel ARN used to filter the list.</p>
    #
    # @option params [String] :next_token
    #   <p>The first stream to retrieve. This is used for pagination; see the <code>nextToken</code>
    #         response field.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Maximum number of streams to return. Default: 50.</p>
    #
    # @return [Types::ListStreamSessionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_stream_sessions(
    #     channel_arn: 'channelArn', # required
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListStreamSessionsOutput
    #   resp.data.stream_sessions #=> Array<StreamSessionSummary>
    #   resp.data.stream_sessions[0] #=> Types::StreamSessionSummary
    #   resp.data.stream_sessions[0].stream_id #=> String
    #   resp.data.stream_sessions[0].start_time #=> Time
    #   resp.data.stream_sessions[0].end_time #=> Time
    #   resp.data.stream_sessions[0].has_error_event #=> Boolean
    #   resp.data.next_token #=> String
    #
    def list_stream_sessions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListStreamSessionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListStreamSessionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListStreamSessions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListStreamSessions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListStreamSessions,
        stubs: @stubs,
        params_class: Params::ListStreamSessionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_stream_sessions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets summary information about live streams in your account, in the Amazon Web Services
    #       region where the API request is processed.</p>
    #
    # @param [Hash] params
    #   See {Types::ListStreamsInput}.
    #
    # @option params [StreamFilters] :filter_by
    #   <p>Filters the stream list to match the specified criterion.</p>
    #
    # @option params [String] :next_token
    #   <p>The first stream to retrieve. This is used for pagination; see the <code>nextToken</code>
    #         response field.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Maximum number of streams to return. Default: 50.</p>
    #
    # @return [Types::ListStreamsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_streams(
    #     filter_by: {
    #       health: 'HEALTHY' # accepts ["HEALTHY", "STARVING", "UNKNOWN"]
    #     },
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListStreamsOutput
    #   resp.data.streams #=> Array<StreamSummary>
    #   resp.data.streams[0] #=> Types::StreamSummary
    #   resp.data.streams[0].channel_arn #=> String
    #   resp.data.streams[0].stream_id #=> String
    #   resp.data.streams[0].state #=> String, one of ["LIVE", "OFFLINE"]
    #   resp.data.streams[0].health #=> String, one of ["HEALTHY", "STARVING", "UNKNOWN"]
    #   resp.data.streams[0].viewer_count #=> Integer
    #   resp.data.streams[0].start_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_streams(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListStreamsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListStreamsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListStreams
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListStreams
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListStreams,
        stubs: @stubs,
        params_class: Params::ListStreamsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_streams
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about Amazon Web Services tags for the specified ARN.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource to be retrieved.</p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     resource_arn: 'resourceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsForResourceOutput
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException]),
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

    # <p>Inserts metadata into the active stream of the specified channel. At most 5 requests per
    #       second per channel are allowed, each with a maximum 1 KB payload. (If 5 TPS is not sufficient
    #       for your needs, we recommend batching your data into a single PutMetadata call.) At most 155
    #       requests per second per account are allowed. Also see <a href="https://docs.aws.amazon.com/ivs/latest/userguide/metadata.html">Embedding Metadata within a Video Stream</a> in
    #       the <i>Amazon IVS User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::PutMetadataInput}.
    #
    # @option params [String] :channel_arn
    #   <p>ARN of the channel into which metadata is inserted. This channel must have an active
    #         stream.</p>
    #
    # @option params [String] :metadata
    #   <p>Metadata to insert into the stream. Maximum: 1 KB per request.</p>
    #
    # @return [Types::PutMetadataOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_metadata(
    #     channel_arn: 'channelArn', # required
    #     metadata: 'metadata' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutMetadataOutput
    #
    def put_metadata(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutMetadataInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutMetadataInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutMetadata
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ChannelNotBroadcasting, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::PutMetadata
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutMetadata,
        stubs: @stubs,
        params_class: Params::PutMetadataOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_metadata
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disconnects the incoming RTMPS stream for the specified channel. Can be used in
    #       conjunction with <a>DeleteStreamKey</a> to prevent further streaming to a
    #       channel.</p>
    #          <note>
    #             <p>Many streaming client-software libraries automatically reconnect a dropped RTMPS
    #         session, so to stop the stream permanently, you may want to first revoke the
    #           <code>streamKey</code> attached to the channel.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::StopStreamInput}.
    #
    # @option params [String] :channel_arn
    #   <p>ARN of the channel for which the stream is to be stopped.</p>
    #
    # @return [Types::StopStreamOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_stream(
    #     channel_arn: 'channelArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopStreamOutput
    #
    def stop_stream(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopStreamInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopStreamInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopStream
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::StreamUnavailable, Errors::ChannelNotBroadcasting, Errors::AccessDeniedException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::StopStream
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopStream,
        stubs: @stubs,
        params_class: Params::StopStreamOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_stream
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds or updates tags for the Amazon Web Services resource with the specified ARN.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>ARN of the resource for which tags are to be added or updated.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Array of tags to be added or updated.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'resourceArn', # required
    #     tags: {
    #       'key' => 'value'
    #     } # required
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException]),
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

    # <p>Removes tags from the resource with the specified ARN.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>ARN of the resource for which tags are to be removed.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>Array of tags to be removed.</p>
    #
    # @return [Types::UntagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource(
    #     resource_arn: 'resourceArn', # required
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
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException]),
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

    # <p>Updates a channel's configuration. This does not affect an ongoing stream of this channel.
    #       You must stop and restart the stream for the changes to take effect.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateChannelInput}.
    #
    # @option params [String] :arn
    #   <p>ARN of the channel to be updated.</p>
    #
    # @option params [String] :name
    #   <p>Channel name.</p>
    #
    # @option params [String] :latency_mode
    #   <p>Channel latency mode. Use <code>NORMAL</code> to broadcast and deliver live video up to
    #         Full HD. Use <code>LOW</code> for near-real-time interaction with viewers. (Note: In the
    #         Amazon IVS console, <code>LOW</code> and <code>NORMAL</code> correspond to Ultra-low and
    #         Standard, respectively.)</p>
    #
    # @option params [String] :type
    #   <p>Channel type, which determines the allowable resolution and bitrate. <i>If you
    #           exceed the allowable resolution or bitrate, the stream probably will disconnect
    #           immediately</i>. Valid values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>STANDARD</code>: Multiple qualities are generated from the original input, to
    #             automatically give viewers the best experience for their devices and network conditions.
    #             Resolution can be up to 1080p and bitrate can be up to 8.5 Mbps. Audio is transcoded only
    #             for renditions 360p and below; above that, audio is passed through.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BASIC</code>: Amazon IVS delivers the original input to viewers. The viewer’s
    #             video-quality choice is limited to the original input. Resolution can be up to 480p and
    #             bitrate can be up to 1.5 Mbps.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Boolean] :authorized
    #   <p>Whether the channel is private (enabled for playback authorization).</p>
    #
    # @option params [String] :recording_configuration_arn
    #   <p>Recording-configuration ARN. If this is set to an empty string, recording is disabled. A
    #         value other than an empty string indicates that recording is enabled</p>
    #
    # @return [Types::UpdateChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_channel(
    #     arn: 'arn', # required
    #     name: 'name',
    #     latency_mode: 'NORMAL', # accepts ["NORMAL", "LOW"]
    #     type: 'BASIC', # accepts ["BASIC", "STANDARD"]
    #     authorized: false,
    #     recording_configuration_arn: 'recordingConfigurationArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateChannelOutput
    #   resp.data.channel #=> Types::Channel
    #   resp.data.channel.arn #=> String
    #   resp.data.channel.name #=> String
    #   resp.data.channel.latency_mode #=> String, one of ["NORMAL", "LOW"]
    #   resp.data.channel.type #=> String, one of ["BASIC", "STANDARD"]
    #   resp.data.channel.recording_configuration_arn #=> String
    #   resp.data.channel.ingest_endpoint #=> String
    #   resp.data.channel.playback_url #=> String
    #   resp.data.channel.authorized #=> Boolean
    #   resp.data.channel.tags #=> Hash<String, String>
    #   resp.data.channel.tags['key'] #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ValidationException, Errors::PendingVerification, Errors::AccessDeniedException, Errors::ResourceNotFoundException]),
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

    private

    def apply_middleware(middleware_stack, middleware)
      Client.middleware.apply(middleware_stack)
      @middleware.apply(middleware_stack)
      Hearth::MiddlewareBuilder.new(middleware).apply(middleware_stack)
    end
  end
end
