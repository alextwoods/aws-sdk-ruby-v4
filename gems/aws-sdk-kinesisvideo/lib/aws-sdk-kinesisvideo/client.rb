# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::KinesisVideo
  # An API client for KinesisVideo_20170930
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
    def initialize(config = AWS::SDK::KinesisVideo::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Creates a signaling channel. </p>
    #         <p>
    #             <code>CreateSignalingChannel</code> is an asynchronous operation.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateSignalingChannelInput}.
    #
    # @option params [String] :channel_name
    #   <p>A name for the signaling channel that you are creating. It must be unique for each Amazon Web Services account and Amazon Web Services Region.</p>
    #
    # @option params [String] :channel_type
    #   <p>A type of the signaling channel that you are creating. Currently,
    #                   <code>SINGLE_MASTER</code> is the only supported channel type. </p>
    #
    # @option params [SingleMasterConfiguration] :single_master_configuration
    #   <p>A structure containing the configuration for the <code>SINGLE_MASTER</code> channel
    #               type. </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A set of tags (key-value pairs) that you want to associate with this channel.</p>
    #
    # @return [Types::CreateSignalingChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_signaling_channel(
    #     channel_name: 'ChannelName', # required
    #     channel_type: 'SINGLE_MASTER', # accepts ["SINGLE_MASTER", "FULL_MESH"]
    #     single_master_configuration: {
    #       message_ttl_seconds: 1
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
    #   resp.data #=> Types::CreateSignalingChannelOutput
    #   resp.data.channel_arn #=> String
    #
    def create_signaling_channel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateSignalingChannelInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateSignalingChannelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateSignalingChannel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::AccountChannelLimitExceededException, Errors::ClientLimitExceededException, Errors::InvalidArgumentException, Errors::ResourceInUseException, Errors::TagsPerResourceExceededLimitException]),
        data_parser: Parsers::CreateSignalingChannel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateSignalingChannel,
        stubs: @stubs,
        params_class: Params::CreateSignalingChannelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_signaling_channel
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new Kinesis video stream. </p>
    #
    #         <p>When you create a new stream, Kinesis Video Streams assigns it a version number.
    #             When you change the stream's metadata, Kinesis Video Streams updates the version. </p>
    #         <p>
    #             <code>CreateStream</code> is an asynchronous operation.</p>
    #         <p>For information about how the service works, see <a href="https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/how-it-works.html">How it Works</a>. </p>
    #         <p>You must have permissions for the <code>KinesisVideo:CreateStream</code>
    #             action.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateStreamInput}.
    #
    # @option params [String] :device_name
    #   <p>The name of the device that is writing to the stream. </p>
    #           <note>
    #               <p>In the current implementation, Kinesis Video Streams does not use this
    #                   name.</p>
    #           </note>
    #
    # @option params [String] :stream_name
    #   <p>A name for the stream that you are creating.</p>
    #           <p>The stream name is an identifier for the stream, and must be unique for each
    #               account and region.</p>
    #
    # @option params [String] :media_type
    #   <p>The media type of the stream. Consumers of the stream can use this information when
    #               processing the stream. For more information about media types, see <a href="http://www.iana.org/assignments/media-types/media-types.xhtml">Media
    #                   Types</a>. If you choose to specify the <code>MediaType</code>, see <a href="https://tools.ietf.org/html/rfc6838#section-4.2">Naming Requirements</a>
    #               for guidelines.</p>
    #
    #           <p>Example valid values include "video/h264" and "video/h264,audio/aac".</p>
    #           <p>This parameter is optional; the default value is <code>null</code> (or empty in
    #               JSON).</p>
    #
    # @option params [String] :kms_key_id
    #   <p>The ID of the Key Management Service (KMS) key that you want Kinesis Video
    #               Streams to use to encrypt stream data.</p>
    #           <p>If no key ID is specified, the default, Kinesis Video-managed key
    #                   (<code>aws/kinesisvideo</code>) is used.</p>
    #           <p> For more information, see <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_DescribeKey.html#API_DescribeKey_RequestParameters">DescribeKey</a>. </p>
    #
    # @option params [Integer] :data_retention_in_hours
    #   <p>The number of hours that you want to retain the data in the stream. Kinesis Video Streams retains the data in a data store that is associated with the stream.</p>
    #           <p>The default value is 0, indicating that the stream does not persist data.</p>
    #           <p>When the <code>DataRetentionInHours</code> value is 0, consumers can still consume
    #               the fragments that remain in the service host buffer, which has a retention time limit
    #               of 5 minutes and a retention memory limit of 200 MB. Fragments are removed from the
    #               buffer when either limit is reached.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>A list of tags to associate with the specified stream. Each tag is a key-value pair
    #               (the value is optional).</p>
    #
    # @return [Types::CreateStreamOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_stream(
    #     device_name: 'DeviceName',
    #     stream_name: 'StreamName', # required
    #     media_type: 'MediaType',
    #     kms_key_id: 'KmsKeyId',
    #     data_retention_in_hours: 1,
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateStreamOutput
    #   resp.data.stream_arn #=> String
    #
    def create_stream(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateStreamInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateStreamInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateStream
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccountStreamLimitExceededException, Errors::ClientLimitExceededException, Errors::DeviceStreamLimitExceededException, Errors::InvalidArgumentException, Errors::InvalidDeviceException, Errors::ResourceInUseException, Errors::TagsPerResourceExceededLimitException]),
        data_parser: Parsers::CreateStream
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateStream,
        stubs: @stubs,
        params_class: Params::CreateStreamOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_stream
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a specified signaling channel. <code>DeleteSignalingChannel</code> is an
    #             asynchronous operation. If you don't specify the channel's current version, the most
    #             recent version is deleted.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteSignalingChannelInput}.
    #
    # @option params [String] :channel_arn
    #   <p>The Amazon Resource Name (ARN) of the signaling channel that you want to
    #               delete.</p>
    #
    # @option params [String] :current_version
    #   <p>The current version of the signaling channel that you want to delete. You can obtain
    #               the current version by invoking the <code>DescribeSignalingChannel</code> or
    #                   <code>ListSignalingChannels</code> API operations.</p>
    #
    # @return [Types::DeleteSignalingChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_signaling_channel(
    #     channel_arn: 'ChannelARN', # required
    #     current_version: 'CurrentVersion'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteSignalingChannelOutput
    #
    def delete_signaling_channel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteSignalingChannelInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteSignalingChannelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteSignalingChannel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ClientLimitExceededException, Errors::InvalidArgumentException, Errors::ResourceInUseException, Errors::ResourceNotFoundException, Errors::VersionMismatchException]),
        data_parser: Parsers::DeleteSignalingChannel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteSignalingChannel,
        stubs: @stubs,
        params_class: Params::DeleteSignalingChannelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_signaling_channel
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a Kinesis video stream and the data contained in the stream. </p>
    #         <p>This method marks the stream for deletion, and makes the data in the stream
    #             inaccessible immediately.</p>
    #         <p> </p>
    #         <p> To ensure that you have the latest version of the stream before deleting it, you
    #             can specify the stream version. Kinesis Video Streams assigns a version to each stream.
    #             When you update a stream, Kinesis Video Streams assigns a new version number. To get the
    #             latest stream version, use the <code>DescribeStream</code> API. </p>
    #         <p>This operation requires permission for the <code>KinesisVideo:DeleteStream</code>
    #             action.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteStreamInput}.
    #
    # @option params [String] :stream_arn
    #   <p>The Amazon Resource Name (ARN) of the stream that you want to delete. </p>
    #
    # @option params [String] :current_version
    #   <p>Optional: The version of the stream that you want to delete. </p>
    #           <p>Specify the version as a safeguard to ensure that your are deleting the correct
    #               stream. To get the stream version, use the <code>DescribeStream</code> API.</p>
    #           <p>If not specified, only the <code>CreationTime</code> is checked before deleting the
    #               stream.</p>
    #
    # @return [Types::DeleteStreamOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_stream(
    #     stream_arn: 'StreamARN', # required
    #     current_version: 'CurrentVersion'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteStreamOutput
    #
    def delete_stream(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteStreamInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteStreamInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteStream
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClientLimitExceededException, Errors::InvalidArgumentException, Errors::NotAuthorizedException, Errors::ResourceInUseException, Errors::ResourceNotFoundException, Errors::VersionMismatchException]),
        data_parser: Parsers::DeleteStream
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteStream,
        stubs: @stubs,
        params_class: Params::DeleteStreamOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_stream
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the <code>ImageGenerationConfiguration</code> for a given Kinesis video stream.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeImageGenerationConfigurationInput}.
    #
    # @option params [String] :stream_name
    #   <p>The name of the stream from which to retrieve the image generation configuration. You must specify either the <code>StreamName</code> or the <code>StreamARN</code>.  </p>
    #
    # @option params [String] :stream_arn
    #   <p>The Amazon Resource Name (ARN) of the Kinesis video stream from which to retrieve the image generation configuration. You must specify either the <code>StreamName</code> or the <code>StreamARN</code>.</p>
    #
    # @return [Types::DescribeImageGenerationConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_image_generation_configuration(
    #     stream_name: 'StreamName',
    #     stream_arn: 'StreamARN'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeImageGenerationConfigurationOutput
    #   resp.data.image_generation_configuration #=> Types::ImageGenerationConfiguration
    #   resp.data.image_generation_configuration.status #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.image_generation_configuration.image_selector_type #=> String, one of ["SERVER_TIMESTAMP", "PRODUCER_TIMESTAMP"]
    #   resp.data.image_generation_configuration.destination_config #=> Types::ImageGenerationDestinationConfig
    #   resp.data.image_generation_configuration.destination_config.uri #=> String
    #   resp.data.image_generation_configuration.destination_config.destination_region #=> String
    #   resp.data.image_generation_configuration.sampling_interval #=> Integer
    #   resp.data.image_generation_configuration.format #=> String, one of ["JPEG", "PNG"]
    #   resp.data.image_generation_configuration.format_config #=> Hash<String, String>
    #   resp.data.image_generation_configuration.format_config['key'] #=> String
    #   resp.data.image_generation_configuration.width_pixels #=> Integer
    #   resp.data.image_generation_configuration.height_pixels #=> Integer
    #
    def describe_image_generation_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeImageGenerationConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeImageGenerationConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeImageGenerationConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ClientLimitExceededException, Errors::InvalidArgumentException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeImageGenerationConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeImageGenerationConfiguration,
        stubs: @stubs,
        params_class: Params::DescribeImageGenerationConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_image_generation_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the <code>NotificationConfiguration</code> for a given Kinesis video stream.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeNotificationConfigurationInput}.
    #
    # @option params [String] :stream_name
    #   <p>The name of the stream from which to retrieve the notification configuration. You must specify either the <code>StreamName</code> or the <code>StreamARN</code>.</p>
    #
    # @option params [String] :stream_arn
    #   <p>The Amazon Resource Name (ARN) of the Kinesis video stream from where you want to retrieve the notification configuration. You must specify either the <code>StreamName</code> or the StreamARN.</p>
    #
    # @return [Types::DescribeNotificationConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_notification_configuration(
    #     stream_name: 'StreamName',
    #     stream_arn: 'StreamARN'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeNotificationConfigurationOutput
    #   resp.data.notification_configuration #=> Types::NotificationConfiguration
    #   resp.data.notification_configuration.status #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.notification_configuration.destination_config #=> Types::NotificationDestinationConfig
    #   resp.data.notification_configuration.destination_config.uri #=> String
    #
    def describe_notification_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeNotificationConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeNotificationConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeNotificationConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ClientLimitExceededException, Errors::InvalidArgumentException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeNotificationConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeNotificationConfiguration,
        stubs: @stubs,
        params_class: Params::DescribeNotificationConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_notification_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the most current information about the signaling channel. You must specify
    #             either the name or the Amazon Resource Name (ARN) of the channel that you want to
    #             describe.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeSignalingChannelInput}.
    #
    # @option params [String] :channel_name
    #   <p>The name of the signaling channel that you want to describe.</p>
    #
    # @option params [String] :channel_arn
    #   <p>The ARN of the signaling channel that you want to describe.</p>
    #
    # @return [Types::DescribeSignalingChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_signaling_channel(
    #     channel_name: 'ChannelName',
    #     channel_arn: 'ChannelARN'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeSignalingChannelOutput
    #   resp.data.channel_info #=> Types::ChannelInfo
    #   resp.data.channel_info.channel_name #=> String
    #   resp.data.channel_info.channel_arn #=> String
    #   resp.data.channel_info.channel_type #=> String, one of ["SINGLE_MASTER", "FULL_MESH"]
    #   resp.data.channel_info.channel_status #=> String, one of ["CREATING", "ACTIVE", "UPDATING", "DELETING"]
    #   resp.data.channel_info.creation_time #=> Time
    #   resp.data.channel_info.single_master_configuration #=> Types::SingleMasterConfiguration
    #   resp.data.channel_info.single_master_configuration.message_ttl_seconds #=> Integer
    #   resp.data.channel_info.version #=> String
    #
    def describe_signaling_channel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeSignalingChannelInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeSignalingChannelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeSignalingChannel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ClientLimitExceededException, Errors::InvalidArgumentException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeSignalingChannel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeSignalingChannel,
        stubs: @stubs,
        params_class: Params::DescribeSignalingChannelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_signaling_channel
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the most current information about the specified stream. You must specify
    #             either the <code>StreamName</code> or the <code>StreamARN</code>. </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeStreamInput}.
    #
    # @option params [String] :stream_name
    #   <p>The name of the stream.</p>
    #
    # @option params [String] :stream_arn
    #   <p>The Amazon Resource Name (ARN) of the stream.</p>
    #
    # @return [Types::DescribeStreamOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_stream(
    #     stream_name: 'StreamName',
    #     stream_arn: 'StreamARN'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeStreamOutput
    #   resp.data.stream_info #=> Types::StreamInfo
    #   resp.data.stream_info.device_name #=> String
    #   resp.data.stream_info.stream_name #=> String
    #   resp.data.stream_info.stream_arn #=> String
    #   resp.data.stream_info.media_type #=> String
    #   resp.data.stream_info.kms_key_id #=> String
    #   resp.data.stream_info.version #=> String
    #   resp.data.stream_info.status #=> String, one of ["CREATING", "ACTIVE", "UPDATING", "DELETING"]
    #   resp.data.stream_info.creation_time #=> Time
    #   resp.data.stream_info.data_retention_in_hours #=> Integer
    #
    def describe_stream(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeStreamInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeStreamInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeStream
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClientLimitExceededException, Errors::InvalidArgumentException, Errors::NotAuthorizedException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeStream
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeStream,
        stubs: @stubs,
        params_class: Params::DescribeStreamOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_stream
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets an endpoint for a specified stream for either reading or writing. Use this
    #             endpoint in your application to read from the specified stream (using the
    #                 <code>GetMedia</code> or <code>GetMediaForFragmentList</code> operations) or write
    #             to it (using the <code>PutMedia</code> operation).
    #             </p>
    #         <note>
    #             <p>The returned endpoint does not have the API name appended. The client needs to
    #                 add the API name to the returned endpoint.</p>
    #         </note>
    #
    #         <p>In the request, specify the stream either by <code>StreamName</code> or
    #                 <code>StreamARN</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDataEndpointInput}.
    #
    # @option params [String] :stream_name
    #   <p>The name of the stream that you want to get the endpoint for. You must specify
    #               either this parameter or a <code>StreamARN</code> in the request.</p>
    #
    # @option params [String] :stream_arn
    #   <p>The Amazon Resource Name (ARN) of the stream that you want to get the endpoint for.
    #               You must specify either this parameter or a <code>StreamName</code> in the request.
    #           </p>
    #
    # @option params [String] :api_name
    #   <p>The name of the API action for which to get an endpoint.</p>
    #
    # @return [Types::GetDataEndpointOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_data_endpoint(
    #     stream_name: 'StreamName',
    #     stream_arn: 'StreamARN',
    #     api_name: 'PUT_MEDIA' # required - accepts ["PUT_MEDIA", "GET_MEDIA", "LIST_FRAGMENTS", "GET_MEDIA_FOR_FRAGMENT_LIST", "GET_HLS_STREAMING_SESSION_URL", "GET_DASH_STREAMING_SESSION_URL", "GET_CLIP", "GET_IMAGES"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDataEndpointOutput
    #   resp.data.data_endpoint #=> String
    #
    def get_data_endpoint(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDataEndpointInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDataEndpointInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDataEndpoint
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClientLimitExceededException, Errors::InvalidArgumentException, Errors::NotAuthorizedException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetDataEndpoint
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDataEndpoint,
        stubs: @stubs,
        params_class: Params::GetDataEndpointOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_data_endpoint
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides an endpoint for the specified signaling channel to send and receive messages.
    #             This API uses the <code>SingleMasterChannelEndpointConfiguration</code> input parameter,
    #             which consists of the <code>Protocols</code> and <code>Role</code> properties.</p>
    #         <p>
    #             <code>Protocols</code> is used to determine the communication mechanism. For example,
    #             if you specify <code>WSS</code> as the protocol, this API produces a secure websocket
    #             endpoint. If you specify <code>HTTPS</code> as the protocol, this API generates an HTTPS
    #             endpoint. </p>
    #         <p>
    #             <code>Role</code> determines the messaging permissions. A <code>MASTER</code> role
    #             results in this API generating an endpoint that a client can use to communicate with any
    #             of the viewers on the channel. A <code>VIEWER</code> role results in this API generating
    #             an endpoint that a client can use to communicate only with a <code>MASTER</code>.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::GetSignalingChannelEndpointInput}.
    #
    # @option params [String] :channel_arn
    #   <p>The Amazon Resource Name (ARN) of the signalling channel for which you want to get an
    #               endpoint.</p>
    #
    # @option params [SingleMasterChannelEndpointConfiguration] :single_master_channel_endpoint_configuration
    #   <p>A structure containing the endpoint configuration for the <code>SINGLE_MASTER</code>
    #               channel type.</p>
    #
    # @return [Types::GetSignalingChannelEndpointOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_signaling_channel_endpoint(
    #     channel_arn: 'ChannelARN', # required
    #     single_master_channel_endpoint_configuration: {
    #       protocols: [
    #         'WSS' # accepts ["WSS", "HTTPS"]
    #       ],
    #       role: 'MASTER' # accepts ["MASTER", "VIEWER"]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSignalingChannelEndpointOutput
    #   resp.data.resource_endpoint_list #=> Array<ResourceEndpointListItem>
    #   resp.data.resource_endpoint_list[0] #=> Types::ResourceEndpointListItem
    #   resp.data.resource_endpoint_list[0].protocol #=> String, one of ["WSS", "HTTPS"]
    #   resp.data.resource_endpoint_list[0].resource_endpoint #=> String
    #
    def get_signaling_channel_endpoint(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSignalingChannelEndpointInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSignalingChannelEndpointInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetSignalingChannelEndpoint
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ClientLimitExceededException, Errors::InvalidArgumentException, Errors::ResourceInUseException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetSignalingChannelEndpoint
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetSignalingChannelEndpoint,
        stubs: @stubs,
        params_class: Params::GetSignalingChannelEndpointOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_signaling_channel_endpoint
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns an array of <code>ChannelInfo</code> objects. Each object describes a
    #             signaling channel. To retrieve only those channels that satisfy a specific condition,
    #             you can specify a <code>ChannelNameCondition</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListSignalingChannelsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of channels to return in the response. The default is 500.</p>
    #
    # @option params [String] :next_token
    #   <p>If you specify this parameter, when the result of a <code>ListSignalingChannels</code>
    #               operation is truncated, the call returns the <code>NextToken</code> in the response. To
    #               get another batch of channels, provide this token in your next request.</p>
    #
    # @option params [ChannelNameCondition] :channel_name_condition
    #   <p>Optional: Returns only the channels that satisfy a specific condition.</p>
    #
    # @return [Types::ListSignalingChannelsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_signaling_channels(
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     channel_name_condition: {
    #       comparison_operator: 'BEGINS_WITH', # accepts ["BEGINS_WITH"]
    #       comparison_value: 'ComparisonValue'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListSignalingChannelsOutput
    #   resp.data.channel_info_list #=> Array<ChannelInfo>
    #   resp.data.channel_info_list[0] #=> Types::ChannelInfo
    #   resp.data.channel_info_list[0].channel_name #=> String
    #   resp.data.channel_info_list[0].channel_arn #=> String
    #   resp.data.channel_info_list[0].channel_type #=> String, one of ["SINGLE_MASTER", "FULL_MESH"]
    #   resp.data.channel_info_list[0].channel_status #=> String, one of ["CREATING", "ACTIVE", "UPDATING", "DELETING"]
    #   resp.data.channel_info_list[0].creation_time #=> Time
    #   resp.data.channel_info_list[0].single_master_configuration #=> Types::SingleMasterConfiguration
    #   resp.data.channel_info_list[0].single_master_configuration.message_ttl_seconds #=> Integer
    #   resp.data.channel_info_list[0].version #=> String
    #   resp.data.next_token #=> String
    #
    def list_signaling_channels(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListSignalingChannelsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListSignalingChannelsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListSignalingChannels
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ClientLimitExceededException, Errors::InvalidArgumentException]),
        data_parser: Parsers::ListSignalingChannels
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListSignalingChannels,
        stubs: @stubs,
        params_class: Params::ListSignalingChannelsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_signaling_channels
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns an array of <code>StreamInfo</code> objects. Each object describes a
    #             stream. To retrieve only streams that satisfy a specific condition, you can specify a
    #                 <code>StreamNameCondition</code>. </p>
    #
    # @param [Hash] params
    #   See {Types::ListStreamsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of streams to return in the response. The default is
    #               10,000.</p>
    #
    # @option params [String] :next_token
    #   <p>If you specify this parameter, when the result of a <code>ListStreams</code>
    #               operation is truncated, the call returns the <code>NextToken</code> in the response. To
    #               get another batch of streams, provide this token in your next request.</p>
    #
    # @option params [StreamNameCondition] :stream_name_condition
    #   <p>Optional: Returns only streams that satisfy a specific condition. Currently, you
    #               can specify only the prefix of a stream name as a condition. </p>
    #
    # @return [Types::ListStreamsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_streams(
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     stream_name_condition: {
    #       comparison_operator: 'BEGINS_WITH', # accepts ["BEGINS_WITH"]
    #       comparison_value: 'ComparisonValue'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListStreamsOutput
    #   resp.data.stream_info_list #=> Array<StreamInfo>
    #   resp.data.stream_info_list[0] #=> Types::StreamInfo
    #   resp.data.stream_info_list[0].device_name #=> String
    #   resp.data.stream_info_list[0].stream_name #=> String
    #   resp.data.stream_info_list[0].stream_arn #=> String
    #   resp.data.stream_info_list[0].media_type #=> String
    #   resp.data.stream_info_list[0].kms_key_id #=> String
    #   resp.data.stream_info_list[0].version #=> String
    #   resp.data.stream_info_list[0].status #=> String, one of ["CREATING", "ACTIVE", "UPDATING", "DELETING"]
    #   resp.data.stream_info_list[0].creation_time #=> Time
    #   resp.data.stream_info_list[0].data_retention_in_hours #=> Integer
    #   resp.data.next_token #=> String
    #
    def list_streams(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListStreamsInput.build(params)
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClientLimitExceededException, Errors::InvalidArgumentException]),
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

    # <p>Returns a list of tags associated with the specified signaling channel.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :next_token
    #   <p>If you specify this parameter and the result of a <code>ListTagsForResource</code>
    #               call is truncated, the response includes a token that you can use in the next request to
    #               fetch the next batch of tags. </p>
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the signaling channel for which you want to list
    #               tags.</p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     next_token: 'NextToken',
    #     resource_arn: 'ResourceARN' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsForResourceOutput
    #   resp.data.next_token #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ClientLimitExceededException, Errors::InvalidArgumentException, Errors::ResourceNotFoundException]),
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

    # <p>Returns a list of tags associated with the specified stream.</p>
    #         <p>In the request, you must specify either the <code>StreamName</code> or the
    #                 <code>StreamARN</code>. </p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForStreamInput}.
    #
    # @option params [String] :next_token
    #   <p>If you specify this parameter and the result of a <code>ListTagsForStream</code>
    #               call is truncated, the response includes a token that you can use in the next request to
    #               fetch the next batch of tags.</p>
    #
    # @option params [String] :stream_arn
    #   <p>The Amazon Resource Name (ARN) of the stream that you want to list tags
    #               for.</p>
    #
    # @option params [String] :stream_name
    #   <p>The name of the stream that you want to list tags for.</p>
    #
    # @return [Types::ListTagsForStreamOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_stream(
    #     next_token: 'NextToken',
    #     stream_arn: 'StreamARN',
    #     stream_name: 'StreamName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsForStreamOutput
    #   resp.data.next_token #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def list_tags_for_stream(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTagsForStreamInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTagsForStreamInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTagsForStream
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClientLimitExceededException, Errors::InvalidArgumentException, Errors::InvalidResourceFormatException, Errors::NotAuthorizedException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListTagsForStream
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTagsForStream,
        stubs: @stubs,
        params_class: Params::ListTagsForStreamOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_tags_for_stream
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds one or more tags to a signaling channel. A <i>tag</i> is a
    #             key-value pair (the value is optional) that you can define and assign to Amazon Web Services resources.
    #             If you specify a tag that already exists, the tag value is replaced with the value that
    #             you specify in the request. For more information, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html">Using Cost Allocation
    #                 Tags</a> in the <i>Billing and Cost Management and Cost Management User
    #             Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the signaling channel to which you want to add
    #               tags.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of tags to associate with the specified signaling channel. Each tag is a
    #               key-value pair.</p>
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ClientLimitExceededException, Errors::InvalidArgumentException, Errors::ResourceNotFoundException, Errors::TagsPerResourceExceededLimitException]),
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

    # <p>Adds one or more tags to a stream. A <i>tag</i> is a key-value pair
    #             (the value is optional) that you can define and assign to Amazon Web Services resources. If you specify
    #             a tag that already exists, the tag value is replaced with the value that you specify in
    #             the request. For more information, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html">Using Cost Allocation
    #                 Tags</a> in the <i>Billing and Cost Management and Cost Management User Guide</i>. </p>
    #         <p>You must provide either the <code>StreamName</code> or the
    #             <code>StreamARN</code>.</p>
    #         <p>This operation requires permission for the <code>KinesisVideo:TagStream</code>
    #             action.</p>
    #         <p>A Kinesis video stream can support up to 50 tags.</p>
    #
    # @param [Hash] params
    #   See {Types::TagStreamInput}.
    #
    # @option params [String] :stream_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to add the tag or tags
    #               to.</p>
    #
    # @option params [String] :stream_name
    #   <p>The name of the stream that you want to add the tag or tags to.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>A list of tags to associate with the specified stream. Each tag is a key-value pair
    #               (the value is optional).</p>
    #
    # @return [Types::TagStreamOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_stream(
    #     stream_arn: 'StreamARN',
    #     stream_name: 'StreamName',
    #     tags: {
    #       'key' => 'value'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::TagStreamOutput
    #
    def tag_stream(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TagStreamInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TagStreamInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TagStream
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClientLimitExceededException, Errors::InvalidArgumentException, Errors::InvalidResourceFormatException, Errors::NotAuthorizedException, Errors::ResourceNotFoundException, Errors::TagsPerResourceExceededLimitException]),
        data_parser: Parsers::TagStream
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::TagStream,
        stubs: @stubs,
        params_class: Params::TagStreamOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :tag_stream
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes one or more tags from a signaling channel. In the request, specify only a tag
    #             key or keys; don't specify the value. If you specify a tag key that does not exist, it's
    #             ignored.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the signaling channel from which you want to remove
    #               tags.</p>
    #
    # @option params [Array<String>] :tag_key_list
    #   <p>A list of the keys of the tags that you want to remove.</p>
    #
    # @return [Types::UntagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource(
    #     resource_arn: 'ResourceARN', # required
    #     tag_key_list: [
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ClientLimitExceededException, Errors::InvalidArgumentException, Errors::ResourceNotFoundException]),
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

    # <p>Removes one or more tags from a stream. In the request, specify only a tag key or
    #             keys; don't specify the value. If you specify a tag key that does not exist, it's
    #             ignored.</p>
    #         <p>In the request, you must provide the <code>StreamName</code> or
    #                 <code>StreamARN</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagStreamInput}.
    #
    # @option params [String] :stream_arn
    #   <p>The Amazon Resource Name (ARN) of the stream that you want to remove tags
    #               from.</p>
    #
    # @option params [String] :stream_name
    #   <p>The name of the stream that you want to remove tags from.</p>
    #
    # @option params [Array<String>] :tag_key_list
    #   <p>A list of the keys of the tags that you want to remove.</p>
    #
    # @return [Types::UntagStreamOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_stream(
    #     stream_arn: 'StreamARN',
    #     stream_name: 'StreamName',
    #     tag_key_list: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UntagStreamOutput
    #
    def untag_stream(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UntagStreamInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UntagStreamInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UntagStream
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClientLimitExceededException, Errors::InvalidArgumentException, Errors::InvalidResourceFormatException, Errors::NotAuthorizedException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::UntagStream
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UntagStream,
        stubs: @stubs,
        params_class: Params::UntagStreamOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :untag_stream
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Increases or decreases the stream's data retention period by the value that you
    #             specify. To indicate whether you want to increase or decrease the data retention period,
    #             specify the <code>Operation</code> parameter in the request body. In the request, you
    #             must specify either the <code>StreamName</code> or the <code>StreamARN</code>. </p>
    #         <note>
    #             <p>The retention period that you specify replaces the current value.</p>
    #         </note>
    #
    #         <p>This operation requires permission for the
    #                 <code>KinesisVideo:UpdateDataRetention</code> action.</p>
    #
    #         <p>Changing the data retention period affects the data in the stream as
    #             follows:</p>
    #         <ul>
    #             <li>
    #                 <p>If the data retention period is increased, existing data is retained for
    #                     the new retention period. For example, if the data retention period is increased
    #                     from one hour to seven hours, all existing data is retained for seven
    #                     hours.</p>
    #             </li>
    #             <li>
    #                 <p>If the data retention period is decreased, existing data is retained for
    #                     the new retention period. For example, if the data retention period is decreased
    #                     from seven hours to one hour, all existing data is retained for one hour, and
    #                     any data older than one hour is deleted immediately.</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::UpdateDataRetentionInput}.
    #
    # @option params [String] :stream_name
    #   <p>The name of the stream whose retention period you want to change.</p>
    #
    # @option params [String] :stream_arn
    #   <p>The Amazon Resource Name (ARN) of the stream whose retention period you want to
    #               change.</p>
    #
    # @option params [String] :current_version
    #   <p>The version of the stream whose retention period you want to change. To get the
    #               version, call either the <code>DescribeStream</code> or the <code>ListStreams</code>
    #               API.</p>
    #
    # @option params [String] :operation
    #   <p>Indicates whether you want to increase or decrease the retention period.</p>
    #
    # @option params [Integer] :data_retention_change_in_hours
    #   <p>The retention period, in hours. The value you specify replaces the current value.
    #               The maximum value for this parameter is 87600 (ten years).</p>
    #
    # @return [Types::UpdateDataRetentionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_data_retention(
    #     stream_name: 'StreamName',
    #     stream_arn: 'StreamARN',
    #     current_version: 'CurrentVersion', # required
    #     operation: 'INCREASE_DATA_RETENTION', # required - accepts ["INCREASE_DATA_RETENTION", "DECREASE_DATA_RETENTION"]
    #     data_retention_change_in_hours: 1 # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateDataRetentionOutput
    #
    def update_data_retention(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateDataRetentionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateDataRetentionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateDataRetention
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClientLimitExceededException, Errors::InvalidArgumentException, Errors::NotAuthorizedException, Errors::ResourceInUseException, Errors::ResourceNotFoundException, Errors::VersionMismatchException]),
        data_parser: Parsers::UpdateDataRetention
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateDataRetention,
        stubs: @stubs,
        params_class: Params::UpdateDataRetentionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_data_retention
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the <code>StreamInfo</code> and <code>ImageProcessingConfiguration</code> fields.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateImageGenerationConfigurationInput}.
    #
    # @option params [String] :stream_name
    #   <p>The name of the stream from which to update the image generation configuration. You must specify either the <code>StreamName</code> or the <code>StreamARN</code>.</p>
    #
    # @option params [String] :stream_arn
    #   <p>The Amazon Resource Name (ARN) of the Kinesis video stream from where you want to update the image generation configuration. You must specify either the <code>StreamName</code>
    #               or the <code>StreamARN</code>.</p>
    #
    # @option params [ImageGenerationConfiguration] :image_generation_configuration
    #   <p>The structure that contains the information required for the KVS images delivery. If the structure is null, the configuration will be deleted from the stream.</p>
    #
    # @return [Types::UpdateImageGenerationConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_image_generation_configuration(
    #     stream_name: 'StreamName',
    #     stream_arn: 'StreamARN',
    #     image_generation_configuration: {
    #       status: 'ENABLED', # required - accepts ["ENABLED", "DISABLED"]
    #       image_selector_type: 'SERVER_TIMESTAMP', # required - accepts ["SERVER_TIMESTAMP", "PRODUCER_TIMESTAMP"]
    #       destination_config: {
    #         uri: 'Uri', # required
    #         destination_region: 'DestinationRegion' # required
    #       }, # required
    #       sampling_interval: 1, # required
    #       format: 'JPEG', # required - accepts ["JPEG", "PNG"]
    #       format_config: {
    #         'key' => 'value'
    #       },
    #       width_pixels: 1,
    #       height_pixels: 1
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateImageGenerationConfigurationOutput
    #
    def update_image_generation_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateImageGenerationConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateImageGenerationConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateImageGenerationConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ClientLimitExceededException, Errors::InvalidArgumentException, Errors::NoDataRetentionException, Errors::ResourceInUseException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::UpdateImageGenerationConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateImageGenerationConfiguration,
        stubs: @stubs,
        params_class: Params::UpdateImageGenerationConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_image_generation_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the notification information for a stream.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateNotificationConfigurationInput}.
    #
    # @option params [String] :stream_name
    #   <p>The name of the stream from which to update the notification configuration. You must specify either the <code>StreamName</code> or the <code>StreamARN</code>.</p>
    #
    # @option params [String] :stream_arn
    #   <p>The Amazon Resource Name (ARN) of the Kinesis video stream from where you want to update the notification configuration. You must specify either the <code>StreamName</code> or the <code>StreamARN</code>.</p>
    #
    # @option params [NotificationConfiguration] :notification_configuration
    #   <p>The structure containing the information required for notifications. If the structure is null, the configuration will be deleted from the stream.</p>
    #
    # @return [Types::UpdateNotificationConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_notification_configuration(
    #     stream_name: 'StreamName',
    #     stream_arn: 'StreamARN',
    #     notification_configuration: {
    #       status: 'ENABLED', # required - accepts ["ENABLED", "DISABLED"]
    #       destination_config: {
    #         uri: 'Uri' # required
    #       } # required
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateNotificationConfigurationOutput
    #
    def update_notification_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateNotificationConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateNotificationConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateNotificationConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ClientLimitExceededException, Errors::InvalidArgumentException, Errors::NoDataRetentionException, Errors::ResourceInUseException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::UpdateNotificationConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateNotificationConfiguration,
        stubs: @stubs,
        params_class: Params::UpdateNotificationConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_notification_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the existing signaling channel. This is an asynchronous operation and takes
    #             time to complete. </p>
    #         <p>If the <code>MessageTtlSeconds</code> value is updated (either increased or reduced),
    #             it only applies to new messages sent via this channel after it's been updated. Existing
    #             messages are still expired as per the previous <code>MessageTtlSeconds</code>
    #             value.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateSignalingChannelInput}.
    #
    # @option params [String] :channel_arn
    #   <p>The Amazon Resource Name (ARN) of the signaling channel that you want to
    #               update.</p>
    #
    # @option params [String] :current_version
    #   <p>The current version of the signaling channel that you want to update.</p>
    #
    # @option params [SingleMasterConfiguration] :single_master_configuration
    #   <p>The structure containing the configuration for the <code>SINGLE_MASTER</code> type of
    #               the signaling channel that you want to update. </p>
    #
    # @return [Types::UpdateSignalingChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_signaling_channel(
    #     channel_arn: 'ChannelARN', # required
    #     current_version: 'CurrentVersion', # required
    #     single_master_configuration: {
    #       message_ttl_seconds: 1
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateSignalingChannelOutput
    #
    def update_signaling_channel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateSignalingChannelInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateSignalingChannelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateSignalingChannel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ClientLimitExceededException, Errors::InvalidArgumentException, Errors::ResourceInUseException, Errors::ResourceNotFoundException, Errors::VersionMismatchException]),
        data_parser: Parsers::UpdateSignalingChannel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateSignalingChannel,
        stubs: @stubs,
        params_class: Params::UpdateSignalingChannelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_signaling_channel
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates stream metadata, such as the device name and media type.</p>
    #         <p>You must provide the stream name or the Amazon Resource Name (ARN) of the
    #             stream.</p>
    #         <p>To make sure that you have the latest version of the stream before updating it, you
    #             can specify the stream version. Kinesis Video Streams assigns a version to each stream.
    #             When you update a stream, Kinesis Video Streams assigns a new version number. To get the
    #             latest stream version, use the <code>DescribeStream</code> API. </p>
    #         <p>
    #             <code>UpdateStream</code> is an asynchronous operation, and takes time to
    #             complete.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateStreamInput}.
    #
    # @option params [String] :stream_name
    #   <p>The name of the stream whose metadata you want to update.</p>
    #           <p>The stream name is an identifier for the stream, and must be unique for each
    #               account and region.</p>
    #
    # @option params [String] :stream_arn
    #   <p>The ARN of the stream whose metadata you want to update.</p>
    #
    # @option params [String] :current_version
    #   <p>The version of the stream whose metadata you want to update.</p>
    #
    # @option params [String] :device_name
    #   <p>The name of the device that is writing to the stream. </p>
    #           <note>
    #               <p> In the current implementation, Kinesis Video Streams does not use this name.
    #               </p>
    #           </note>
    #
    # @option params [String] :media_type
    #   <p>The stream's media type. Use <code>MediaType</code> to specify the type of content
    #               that the stream contains to the consumers of the stream. For more information about
    #               media types, see <a href="http://www.iana.org/assignments/media-types/media-types.xhtml">Media
    #                   Types</a>. If you choose to specify the <code>MediaType</code>, see <a href="https://tools.ietf.org/html/rfc6838#section-4.2">Naming
    #               Requirements</a>.</p>
    #           <p>To play video on the console, you must specify the correct video type. For example,
    #               if the video in the stream is H.264, specify <code>video/h264</code> as the
    #                   <code>MediaType</code>.</p>
    #
    # @return [Types::UpdateStreamOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_stream(
    #     stream_name: 'StreamName',
    #     stream_arn: 'StreamARN',
    #     current_version: 'CurrentVersion', # required
    #     device_name: 'DeviceName',
    #     media_type: 'MediaType'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateStreamOutput
    #
    def update_stream(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateStreamInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateStreamInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateStream
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClientLimitExceededException, Errors::InvalidArgumentException, Errors::NotAuthorizedException, Errors::ResourceInUseException, Errors::ResourceNotFoundException, Errors::VersionMismatchException]),
        data_parser: Parsers::UpdateStream
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateStream,
        stubs: @stubs,
        params_class: Params::UpdateStreamOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_stream
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
