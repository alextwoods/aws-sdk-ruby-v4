# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::MediaConnect
  # An API client for MediaConnect
  # See {#initialize} for a full list of supported configuration options
  # API for AWS Elemental MediaConnect
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
    def initialize(config = AWS::SDK::MediaConnect::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # Adds media streams to an existing flow. After you add a media stream to a flow, you can associate it with a source and/or an output that uses the ST 2110 JPEG XS or CDI protocol.
    #
    # @param [Hash] params
    #   See {Types::AddFlowMediaStreamsInput}.
    #
    # @option params [String] :flow_arn
    #   The Amazon Resource Name (ARN) of the flow.
    #
    # @option params [Array<AddMediaStreamRequest>] :media_streams
    #   The media streams that you want to add to the flow.
    #
    # @return [Types::AddFlowMediaStreamsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_flow_media_streams(
    #     flow_arn: 'FlowArn', # required
    #     media_streams: [
    #       {
    #         attributes: {
    #           fmtp: {
    #             channel_order: 'ChannelOrder',
    #             colorimetry: 'BT601', # accepts ["BT601", "BT709", "BT2020", "BT2100", "ST2065-1", "ST2065-3", "XYZ"]
    #             exact_framerate: 'ExactFramerate',
    #             par: 'Par',
    #             range: 'NARROW', # accepts ["NARROW", "FULL", "FULLPROTECT"]
    #             scan_mode: 'progressive', # accepts ["progressive", "interlace", "progressive-segmented-frame"]
    #             tcs: 'SDR' # accepts ["SDR", "PQ", "HLG", "LINEAR", "BT2100LINPQ", "BT2100LINHLG", "ST2065-1", "ST428-1", "DENSITY"]
    #           },
    #           lang: 'Lang'
    #         },
    #         clock_rate: 1,
    #         description: 'Description',
    #         media_stream_id: 1, # required
    #         media_stream_name: 'MediaStreamName', # required
    #         media_stream_type: 'video', # required - accepts ["video", "audio", "ancillary-data"]
    #         video_format: 'VideoFormat'
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AddFlowMediaStreamsOutput
    #   resp.data.flow_arn #=> String
    #   resp.data.media_streams #=> Array<MediaStream>
    #   resp.data.media_streams[0] #=> Types::MediaStream
    #   resp.data.media_streams[0].attributes #=> Types::MediaStreamAttributes
    #   resp.data.media_streams[0].attributes.fmtp #=> Types::Fmtp
    #   resp.data.media_streams[0].attributes.fmtp.channel_order #=> String
    #   resp.data.media_streams[0].attributes.fmtp.colorimetry #=> String, one of ["BT601", "BT709", "BT2020", "BT2100", "ST2065-1", "ST2065-3", "XYZ"]
    #   resp.data.media_streams[0].attributes.fmtp.exact_framerate #=> String
    #   resp.data.media_streams[0].attributes.fmtp.par #=> String
    #   resp.data.media_streams[0].attributes.fmtp.range #=> String, one of ["NARROW", "FULL", "FULLPROTECT"]
    #   resp.data.media_streams[0].attributes.fmtp.scan_mode #=> String, one of ["progressive", "interlace", "progressive-segmented-frame"]
    #   resp.data.media_streams[0].attributes.fmtp.tcs #=> String, one of ["SDR", "PQ", "HLG", "LINEAR", "BT2100LINPQ", "BT2100LINHLG", "ST2065-1", "ST428-1", "DENSITY"]
    #   resp.data.media_streams[0].attributes.lang #=> String
    #   resp.data.media_streams[0].clock_rate #=> Integer
    #   resp.data.media_streams[0].description #=> String
    #   resp.data.media_streams[0].fmt #=> Integer
    #   resp.data.media_streams[0].media_stream_id #=> Integer
    #   resp.data.media_streams[0].media_stream_name #=> String
    #   resp.data.media_streams[0].media_stream_type #=> String, one of ["video", "audio", "ancillary-data"]
    #   resp.data.media_streams[0].video_format #=> String
    #
    def add_flow_media_streams(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AddFlowMediaStreamsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AddFlowMediaStreamsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AddFlowMediaStreams
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::BadRequestException, Errors::NotFoundException, Errors::ServiceUnavailableException, Errors::InternalServerErrorException, Errors::ForbiddenException, Errors::TooManyRequestsException]),
        data_parser: Parsers::AddFlowMediaStreams
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AddFlowMediaStreams,
        stubs: @stubs,
        params_class: Params::AddFlowMediaStreamsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :add_flow_media_streams
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Adds outputs to an existing flow. You can create up to 50 outputs per flow.
    #
    # @param [Hash] params
    #   See {Types::AddFlowOutputsInput}.
    #
    # @option params [String] :flow_arn
    #   The flow that you want to add outputs to.
    #
    # @option params [Array<AddOutputRequest>] :outputs
    #   A list of outputs that you want to add.
    #
    # @return [Types::AddFlowOutputsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_flow_outputs(
    #     flow_arn: 'FlowArn', # required
    #     outputs: [
    #       {
    #         cidr_allow_list: [
    #           'member'
    #         ],
    #         description: 'Description',
    #         destination: 'Destination',
    #         encryption: {
    #           algorithm: 'aes128', # accepts ["aes128", "aes192", "aes256"]
    #           constant_initialization_vector: 'ConstantInitializationVector',
    #           device_id: 'DeviceId',
    #           key_type: 'speke', # accepts ["speke", "static-key", "srt-password"]
    #           region: 'Region',
    #           resource_id: 'ResourceId',
    #           role_arn: 'RoleArn', # required
    #           secret_arn: 'SecretArn',
    #           url: 'Url'
    #         },
    #         max_latency: 1,
    #         media_stream_output_configurations: [
    #           {
    #             destination_configurations: [
    #               {
    #                 destination_ip: 'DestinationIp', # required
    #                 destination_port: 1, # required
    #                 interface: {
    #                   name: 'Name' # required
    #                 } # required
    #               }
    #             ],
    #             encoding_name: 'jxsv', # required - accepts ["jxsv", "raw", "smpte291", "pcm"]
    #             encoding_parameters: {
    #               compression_factor: 1.0, # required
    #               encoder_profile: 'main' # required - accepts ["main", "high"]
    #             },
    #             media_stream_name: 'MediaStreamName' # required
    #           }
    #         ],
    #         min_latency: 1,
    #         name: 'Name',
    #         port: 1,
    #         protocol: 'zixi-push', # required - accepts ["zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "fujitsu-qos"]
    #         remote_id: 'RemoteId',
    #         sender_control_port: 1,
    #         smoothing_latency: 1,
    #         stream_id: 'StreamId',
    #         vpc_interface_attachment: {
    #           vpc_interface_name: 'VpcInterfaceName'
    #         }
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AddFlowOutputsOutput
    #   resp.data.flow_arn #=> String
    #   resp.data.outputs #=> Array<Output>
    #   resp.data.outputs[0] #=> Types::Output
    #   resp.data.outputs[0].data_transfer_subscriber_fee_percent #=> Integer
    #   resp.data.outputs[0].description #=> String
    #   resp.data.outputs[0].destination #=> String
    #   resp.data.outputs[0].encryption #=> Types::Encryption
    #   resp.data.outputs[0].encryption.algorithm #=> String, one of ["aes128", "aes192", "aes256"]
    #   resp.data.outputs[0].encryption.constant_initialization_vector #=> String
    #   resp.data.outputs[0].encryption.device_id #=> String
    #   resp.data.outputs[0].encryption.key_type #=> String, one of ["speke", "static-key", "srt-password"]
    #   resp.data.outputs[0].encryption.region #=> String
    #   resp.data.outputs[0].encryption.resource_id #=> String
    #   resp.data.outputs[0].encryption.role_arn #=> String
    #   resp.data.outputs[0].encryption.secret_arn #=> String
    #   resp.data.outputs[0].encryption.url #=> String
    #   resp.data.outputs[0].entitlement_arn #=> String
    #   resp.data.outputs[0].listener_address #=> String
    #   resp.data.outputs[0].media_live_input_arn #=> String
    #   resp.data.outputs[0].media_stream_output_configurations #=> Array<MediaStreamOutputConfiguration>
    #   resp.data.outputs[0].media_stream_output_configurations[0] #=> Types::MediaStreamOutputConfiguration
    #   resp.data.outputs[0].media_stream_output_configurations[0].destination_configurations #=> Array<DestinationConfiguration>
    #   resp.data.outputs[0].media_stream_output_configurations[0].destination_configurations[0] #=> Types::DestinationConfiguration
    #   resp.data.outputs[0].media_stream_output_configurations[0].destination_configurations[0].destination_ip #=> String
    #   resp.data.outputs[0].media_stream_output_configurations[0].destination_configurations[0].destination_port #=> Integer
    #   resp.data.outputs[0].media_stream_output_configurations[0].destination_configurations[0].interface #=> Types::Interface
    #   resp.data.outputs[0].media_stream_output_configurations[0].destination_configurations[0].interface.name #=> String
    #   resp.data.outputs[0].media_stream_output_configurations[0].destination_configurations[0].outbound_ip #=> String
    #   resp.data.outputs[0].media_stream_output_configurations[0].encoding_name #=> String, one of ["jxsv", "raw", "smpte291", "pcm"]
    #   resp.data.outputs[0].media_stream_output_configurations[0].encoding_parameters #=> Types::EncodingParameters
    #   resp.data.outputs[0].media_stream_output_configurations[0].encoding_parameters.compression_factor #=> Float
    #   resp.data.outputs[0].media_stream_output_configurations[0].encoding_parameters.encoder_profile #=> String, one of ["main", "high"]
    #   resp.data.outputs[0].media_stream_output_configurations[0].media_stream_name #=> String
    #   resp.data.outputs[0].name #=> String
    #   resp.data.outputs[0].output_arn #=> String
    #   resp.data.outputs[0].port #=> Integer
    #   resp.data.outputs[0].transport #=> Types::Transport
    #   resp.data.outputs[0].transport.cidr_allow_list #=> Array<String>
    #   resp.data.outputs[0].transport.cidr_allow_list[0] #=> String
    #   resp.data.outputs[0].transport.max_bitrate #=> Integer
    #   resp.data.outputs[0].transport.max_latency #=> Integer
    #   resp.data.outputs[0].transport.max_sync_buffer #=> Integer
    #   resp.data.outputs[0].transport.min_latency #=> Integer
    #   resp.data.outputs[0].transport.protocol #=> String, one of ["zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "fujitsu-qos"]
    #   resp.data.outputs[0].transport.remote_id #=> String
    #   resp.data.outputs[0].transport.sender_control_port #=> Integer
    #   resp.data.outputs[0].transport.sender_ip_address #=> String
    #   resp.data.outputs[0].transport.smoothing_latency #=> Integer
    #   resp.data.outputs[0].transport.stream_id #=> String
    #   resp.data.outputs[0].vpc_interface_attachment #=> Types::VpcInterfaceAttachment
    #   resp.data.outputs[0].vpc_interface_attachment.vpc_interface_name #=> String
    #
    def add_flow_outputs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AddFlowOutputsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AddFlowOutputsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AddFlowOutputs
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::BadRequestException, Errors::NotFoundException, Errors::ServiceUnavailableException, Errors::InternalServerErrorException, Errors::ForbiddenException, Errors::AddFlowOutputs420Exception, Errors::TooManyRequestsException]),
        data_parser: Parsers::AddFlowOutputs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AddFlowOutputs,
        stubs: @stubs,
        params_class: Params::AddFlowOutputsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :add_flow_outputs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Adds Sources to flow
    #
    # @param [Hash] params
    #   See {Types::AddFlowSourcesInput}.
    #
    # @option params [String] :flow_arn
    #   The flow that you want to mutate.
    #
    # @option params [Array<SetSourceRequest>] :sources
    #   A list of sources that you want to add.
    #
    # @return [Types::AddFlowSourcesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_flow_sources(
    #     flow_arn: 'FlowArn', # required
    #     sources: [
    #       {
    #         decryption: {
    #           algorithm: 'aes128', # accepts ["aes128", "aes192", "aes256"]
    #           constant_initialization_vector: 'ConstantInitializationVector',
    #           device_id: 'DeviceId',
    #           key_type: 'speke', # accepts ["speke", "static-key", "srt-password"]
    #           region: 'Region',
    #           resource_id: 'ResourceId',
    #           role_arn: 'RoleArn', # required
    #           secret_arn: 'SecretArn',
    #           url: 'Url'
    #         },
    #         description: 'Description',
    #         entitlement_arn: 'EntitlementArn',
    #         ingest_port: 1,
    #         max_bitrate: 1,
    #         max_latency: 1,
    #         max_sync_buffer: 1,
    #         media_stream_source_configurations: [
    #           {
    #             encoding_name: 'jxsv', # required - accepts ["jxsv", "raw", "smpte291", "pcm"]
    #             input_configurations: [
    #               {
    #                 input_port: 1, # required
    #                 interface: {
    #                   name: 'Name' # required
    #                 } # required
    #               }
    #             ],
    #             media_stream_name: 'MediaStreamName' # required
    #           }
    #         ],
    #         min_latency: 1,
    #         name: 'Name',
    #         protocol: 'zixi-push', # accepts ["zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "fujitsu-qos"]
    #         sender_control_port: 1,
    #         sender_ip_address: 'SenderIpAddress',
    #         stream_id: 'StreamId',
    #         vpc_interface_name: 'VpcInterfaceName',
    #         whitelist_cidr: 'WhitelistCidr'
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AddFlowSourcesOutput
    #   resp.data.flow_arn #=> String
    #   resp.data.sources #=> Array<Source>
    #   resp.data.sources[0] #=> Types::Source
    #   resp.data.sources[0].data_transfer_subscriber_fee_percent #=> Integer
    #   resp.data.sources[0].decryption #=> Types::Encryption
    #   resp.data.sources[0].decryption.algorithm #=> String, one of ["aes128", "aes192", "aes256"]
    #   resp.data.sources[0].decryption.constant_initialization_vector #=> String
    #   resp.data.sources[0].decryption.device_id #=> String
    #   resp.data.sources[0].decryption.key_type #=> String, one of ["speke", "static-key", "srt-password"]
    #   resp.data.sources[0].decryption.region #=> String
    #   resp.data.sources[0].decryption.resource_id #=> String
    #   resp.data.sources[0].decryption.role_arn #=> String
    #   resp.data.sources[0].decryption.secret_arn #=> String
    #   resp.data.sources[0].decryption.url #=> String
    #   resp.data.sources[0].description #=> String
    #   resp.data.sources[0].entitlement_arn #=> String
    #   resp.data.sources[0].ingest_ip #=> String
    #   resp.data.sources[0].ingest_port #=> Integer
    #   resp.data.sources[0].media_stream_source_configurations #=> Array<MediaStreamSourceConfiguration>
    #   resp.data.sources[0].media_stream_source_configurations[0] #=> Types::MediaStreamSourceConfiguration
    #   resp.data.sources[0].media_stream_source_configurations[0].encoding_name #=> String, one of ["jxsv", "raw", "smpte291", "pcm"]
    #   resp.data.sources[0].media_stream_source_configurations[0].input_configurations #=> Array<InputConfiguration>
    #   resp.data.sources[0].media_stream_source_configurations[0].input_configurations[0] #=> Types::InputConfiguration
    #   resp.data.sources[0].media_stream_source_configurations[0].input_configurations[0].input_ip #=> String
    #   resp.data.sources[0].media_stream_source_configurations[0].input_configurations[0].input_port #=> Integer
    #   resp.data.sources[0].media_stream_source_configurations[0].input_configurations[0].interface #=> Types::Interface
    #   resp.data.sources[0].media_stream_source_configurations[0].input_configurations[0].interface.name #=> String
    #   resp.data.sources[0].media_stream_source_configurations[0].media_stream_name #=> String
    #   resp.data.sources[0].name #=> String
    #   resp.data.sources[0].sender_control_port #=> Integer
    #   resp.data.sources[0].sender_ip_address #=> String
    #   resp.data.sources[0].source_arn #=> String
    #   resp.data.sources[0].transport #=> Types::Transport
    #   resp.data.sources[0].transport.cidr_allow_list #=> Array<String>
    #   resp.data.sources[0].transport.cidr_allow_list[0] #=> String
    #   resp.data.sources[0].transport.max_bitrate #=> Integer
    #   resp.data.sources[0].transport.max_latency #=> Integer
    #   resp.data.sources[0].transport.max_sync_buffer #=> Integer
    #   resp.data.sources[0].transport.min_latency #=> Integer
    #   resp.data.sources[0].transport.protocol #=> String, one of ["zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "fujitsu-qos"]
    #   resp.data.sources[0].transport.remote_id #=> String
    #   resp.data.sources[0].transport.sender_control_port #=> Integer
    #   resp.data.sources[0].transport.sender_ip_address #=> String
    #   resp.data.sources[0].transport.smoothing_latency #=> Integer
    #   resp.data.sources[0].transport.stream_id #=> String
    #   resp.data.sources[0].vpc_interface_name #=> String
    #   resp.data.sources[0].whitelist_cidr #=> String
    #
    def add_flow_sources(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AddFlowSourcesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AddFlowSourcesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AddFlowSources
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::BadRequestException, Errors::NotFoundException, Errors::ServiceUnavailableException, Errors::InternalServerErrorException, Errors::ForbiddenException, Errors::TooManyRequestsException]),
        data_parser: Parsers::AddFlowSources
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AddFlowSources,
        stubs: @stubs,
        params_class: Params::AddFlowSourcesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :add_flow_sources
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Adds VPC interfaces to flow
    #
    # @param [Hash] params
    #   See {Types::AddFlowVpcInterfacesInput}.
    #
    # @option params [String] :flow_arn
    #   The flow that you want to mutate.
    #
    # @option params [Array<VpcInterfaceRequest>] :vpc_interfaces
    #   A list of VPC interfaces that you want to add.
    #
    # @return [Types::AddFlowVpcInterfacesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_flow_vpc_interfaces(
    #     flow_arn: 'FlowArn', # required
    #     vpc_interfaces: [
    #       {
    #         name: 'Name', # required
    #         network_interface_type: 'ena', # accepts ["ena", "efa"]
    #         role_arn: 'RoleArn', # required
    #         security_group_ids: [
    #           'member'
    #         ], # required
    #         subnet_id: 'SubnetId' # required
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AddFlowVpcInterfacesOutput
    #   resp.data.flow_arn #=> String
    #   resp.data.vpc_interfaces #=> Array<VpcInterface>
    #   resp.data.vpc_interfaces[0] #=> Types::VpcInterface
    #   resp.data.vpc_interfaces[0].name #=> String
    #   resp.data.vpc_interfaces[0].network_interface_ids #=> Array<String>
    #   resp.data.vpc_interfaces[0].network_interface_ids[0] #=> String
    #   resp.data.vpc_interfaces[0].network_interface_type #=> String, one of ["ena", "efa"]
    #   resp.data.vpc_interfaces[0].role_arn #=> String
    #   resp.data.vpc_interfaces[0].security_group_ids #=> Array<String>
    #   resp.data.vpc_interfaces[0].subnet_id #=> String
    #
    def add_flow_vpc_interfaces(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AddFlowVpcInterfacesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AddFlowVpcInterfacesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AddFlowVpcInterfaces
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::BadRequestException, Errors::NotFoundException, Errors::ServiceUnavailableException, Errors::InternalServerErrorException, Errors::ForbiddenException, Errors::TooManyRequestsException]),
        data_parser: Parsers::AddFlowVpcInterfaces
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AddFlowVpcInterfaces,
        stubs: @stubs,
        params_class: Params::AddFlowVpcInterfacesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :add_flow_vpc_interfaces
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Creates a new flow. The request must include one source. The request optionally can include outputs (up to 50) and entitlements (up to 50).
    #
    # @param [Hash] params
    #   See {Types::CreateFlowInput}.
    #
    # @option params [String] :availability_zone
    #   The Availability Zone that you want to create the flow in. These options are limited to the Availability Zones within the current AWS Region.
    #
    # @option params [Array<GrantEntitlementRequest>] :entitlements
    #   The entitlements that you want to grant on a flow.
    #
    # @option params [Array<AddMediaStreamRequest>] :media_streams
    #   The media streams that you want to add to the flow. You can associate these media streams with sources and outputs on the flow.
    #
    # @option params [String] :name
    #   The name of the flow.
    #
    # @option params [Array<AddOutputRequest>] :outputs
    #   The outputs that you want to add to this flow.
    #
    # @option params [SetSourceRequest] :source
    #   The settings for the source of the flow.
    #
    # @option params [FailoverConfig] :source_failover_config
    #   The settings for source failover.
    #
    # @option params [Array<VpcInterfaceRequest>] :vpc_interfaces
    #   The VPC interfaces you want on the flow.
    #
    # @option params [AddMaintenance] :maintenance
    #   Create maintenance setting for a flow
    #
    # @return [Types::CreateFlowOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_flow(
    #     availability_zone: 'AvailabilityZone',
    #     entitlements: [
    #       {
    #         data_transfer_subscriber_fee_percent: 1,
    #         description: 'Description',
    #         encryption: {
    #           algorithm: 'aes128', # accepts ["aes128", "aes192", "aes256"]
    #           constant_initialization_vector: 'ConstantInitializationVector',
    #           device_id: 'DeviceId',
    #           key_type: 'speke', # accepts ["speke", "static-key", "srt-password"]
    #           region: 'Region',
    #           resource_id: 'ResourceId',
    #           role_arn: 'RoleArn', # required
    #           secret_arn: 'SecretArn',
    #           url: 'Url'
    #         },
    #         entitlement_status: 'ENABLED', # accepts ["ENABLED", "DISABLED"]
    #         name: 'Name',
    #         subscribers: [
    #           'member'
    #         ] # required
    #       }
    #     ],
    #     media_streams: [
    #       {
    #         attributes: {
    #           fmtp: {
    #             channel_order: 'ChannelOrder',
    #             colorimetry: 'BT601', # accepts ["BT601", "BT709", "BT2020", "BT2100", "ST2065-1", "ST2065-3", "XYZ"]
    #             exact_framerate: 'ExactFramerate',
    #             par: 'Par',
    #             range: 'NARROW', # accepts ["NARROW", "FULL", "FULLPROTECT"]
    #             scan_mode: 'progressive', # accepts ["progressive", "interlace", "progressive-segmented-frame"]
    #             tcs: 'SDR' # accepts ["SDR", "PQ", "HLG", "LINEAR", "BT2100LINPQ", "BT2100LINHLG", "ST2065-1", "ST428-1", "DENSITY"]
    #           },
    #           lang: 'Lang'
    #         },
    #         clock_rate: 1,
    #         description: 'Description',
    #         media_stream_id: 1, # required
    #         media_stream_name: 'MediaStreamName', # required
    #         media_stream_type: 'video', # required - accepts ["video", "audio", "ancillary-data"]
    #         video_format: 'VideoFormat'
    #       }
    #     ],
    #     name: 'Name', # required
    #     outputs: [
    #       {
    #         description: 'Description',
    #         destination: 'Destination',
    #         max_latency: 1,
    #         media_stream_output_configurations: [
    #           {
    #             destination_configurations: [
    #               {
    #                 destination_ip: 'DestinationIp', # required
    #                 destination_port: 1, # required
    #                 interface: {
    #                   name: 'Name' # required
    #                 } # required
    #               }
    #             ],
    #             encoding_name: 'jxsv', # required - accepts ["jxsv", "raw", "smpte291", "pcm"]
    #             encoding_parameters: {
    #               compression_factor: 1.0, # required
    #               encoder_profile: 'main' # required - accepts ["main", "high"]
    #             },
    #             media_stream_name: 'MediaStreamName' # required
    #           }
    #         ],
    #         min_latency: 1,
    #         name: 'Name',
    #         port: 1,
    #         protocol: 'zixi-push', # required - accepts ["zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "fujitsu-qos"]
    #         remote_id: 'RemoteId',
    #         sender_control_port: 1,
    #         smoothing_latency: 1,
    #         stream_id: 'StreamId',
    #         vpc_interface_attachment: {
    #           vpc_interface_name: 'VpcInterfaceName'
    #         }
    #       }
    #     ],
    #     source: {
    #       description: 'Description',
    #       entitlement_arn: 'EntitlementArn',
    #       ingest_port: 1,
    #       max_bitrate: 1,
    #       max_latency: 1,
    #       max_sync_buffer: 1,
    #       media_stream_source_configurations: [
    #         {
    #           encoding_name: 'jxsv', # required - accepts ["jxsv", "raw", "smpte291", "pcm"]
    #           input_configurations: [
    #             {
    #               input_port: 1, # required
    #             }
    #           ],
    #           media_stream_name: 'MediaStreamName' # required
    #         }
    #       ],
    #       min_latency: 1,
    #       name: 'Name',
    #       protocol: 'zixi-push', # accepts ["zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "fujitsu-qos"]
    #       sender_control_port: 1,
    #       sender_ip_address: 'SenderIpAddress',
    #       stream_id: 'StreamId',
    #       vpc_interface_name: 'VpcInterfaceName',
    #       whitelist_cidr: 'WhitelistCidr'
    #     },
    #     source_failover_config: {
    #       failover_mode: 'MERGE', # accepts ["MERGE", "FAILOVER"]
    #       recovery_window: 1,
    #       source_priority: {
    #         primary_source: 'PrimarySource'
    #       },
    #       state: 'ENABLED' # accepts ["ENABLED", "DISABLED"]
    #     },
    #     vpc_interfaces: [
    #       {
    #         name: 'Name', # required
    #         network_interface_type: 'ena', # accepts ["ena", "efa"]
    #         role_arn: 'RoleArn', # required
    #         subnet_id: 'SubnetId' # required
    #       }
    #     ],
    #     maintenance: {
    #       maintenance_day: 'Monday', # required - accepts ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
    #       maintenance_start_hour: 'MaintenanceStartHour' # required
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateFlowOutput
    #   resp.data.flow #=> Types::Flow
    #   resp.data.flow.availability_zone #=> String
    #   resp.data.flow.description #=> String
    #   resp.data.flow.egress_ip #=> String
    #   resp.data.flow.entitlements #=> Array<Entitlement>
    #   resp.data.flow.entitlements[0] #=> Types::Entitlement
    #   resp.data.flow.entitlements[0].data_transfer_subscriber_fee_percent #=> Integer
    #   resp.data.flow.entitlements[0].description #=> String
    #   resp.data.flow.entitlements[0].encryption #=> Types::Encryption
    #   resp.data.flow.entitlements[0].encryption.algorithm #=> String, one of ["aes128", "aes192", "aes256"]
    #   resp.data.flow.entitlements[0].encryption.constant_initialization_vector #=> String
    #   resp.data.flow.entitlements[0].encryption.device_id #=> String
    #   resp.data.flow.entitlements[0].encryption.key_type #=> String, one of ["speke", "static-key", "srt-password"]
    #   resp.data.flow.entitlements[0].encryption.region #=> String
    #   resp.data.flow.entitlements[0].encryption.resource_id #=> String
    #   resp.data.flow.entitlements[0].encryption.role_arn #=> String
    #   resp.data.flow.entitlements[0].encryption.secret_arn #=> String
    #   resp.data.flow.entitlements[0].encryption.url #=> String
    #   resp.data.flow.entitlements[0].entitlement_arn #=> String
    #   resp.data.flow.entitlements[0].entitlement_status #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.flow.entitlements[0].name #=> String
    #   resp.data.flow.entitlements[0].subscribers #=> Array<String>
    #   resp.data.flow.entitlements[0].subscribers[0] #=> String
    #   resp.data.flow.flow_arn #=> String
    #   resp.data.flow.media_streams #=> Array<MediaStream>
    #   resp.data.flow.media_streams[0] #=> Types::MediaStream
    #   resp.data.flow.media_streams[0].attributes #=> Types::MediaStreamAttributes
    #   resp.data.flow.media_streams[0].attributes.fmtp #=> Types::Fmtp
    #   resp.data.flow.media_streams[0].attributes.fmtp.channel_order #=> String
    #   resp.data.flow.media_streams[0].attributes.fmtp.colorimetry #=> String, one of ["BT601", "BT709", "BT2020", "BT2100", "ST2065-1", "ST2065-3", "XYZ"]
    #   resp.data.flow.media_streams[0].attributes.fmtp.exact_framerate #=> String
    #   resp.data.flow.media_streams[0].attributes.fmtp.par #=> String
    #   resp.data.flow.media_streams[0].attributes.fmtp.range #=> String, one of ["NARROW", "FULL", "FULLPROTECT"]
    #   resp.data.flow.media_streams[0].attributes.fmtp.scan_mode #=> String, one of ["progressive", "interlace", "progressive-segmented-frame"]
    #   resp.data.flow.media_streams[0].attributes.fmtp.tcs #=> String, one of ["SDR", "PQ", "HLG", "LINEAR", "BT2100LINPQ", "BT2100LINHLG", "ST2065-1", "ST428-1", "DENSITY"]
    #   resp.data.flow.media_streams[0].attributes.lang #=> String
    #   resp.data.flow.media_streams[0].clock_rate #=> Integer
    #   resp.data.flow.media_streams[0].description #=> String
    #   resp.data.flow.media_streams[0].fmt #=> Integer
    #   resp.data.flow.media_streams[0].media_stream_id #=> Integer
    #   resp.data.flow.media_streams[0].media_stream_name #=> String
    #   resp.data.flow.media_streams[0].media_stream_type #=> String, one of ["video", "audio", "ancillary-data"]
    #   resp.data.flow.media_streams[0].video_format #=> String
    #   resp.data.flow.name #=> String
    #   resp.data.flow.outputs #=> Array<Output>
    #   resp.data.flow.outputs[0] #=> Types::Output
    #   resp.data.flow.outputs[0].data_transfer_subscriber_fee_percent #=> Integer
    #   resp.data.flow.outputs[0].description #=> String
    #   resp.data.flow.outputs[0].destination #=> String
    #   resp.data.flow.outputs[0].encryption #=> Types::Encryption
    #   resp.data.flow.outputs[0].entitlement_arn #=> String
    #   resp.data.flow.outputs[0].listener_address #=> String
    #   resp.data.flow.outputs[0].media_live_input_arn #=> String
    #   resp.data.flow.outputs[0].media_stream_output_configurations #=> Array<MediaStreamOutputConfiguration>
    #   resp.data.flow.outputs[0].media_stream_output_configurations[0] #=> Types::MediaStreamOutputConfiguration
    #   resp.data.flow.outputs[0].media_stream_output_configurations[0].destination_configurations #=> Array<DestinationConfiguration>
    #   resp.data.flow.outputs[0].media_stream_output_configurations[0].destination_configurations[0] #=> Types::DestinationConfiguration
    #   resp.data.flow.outputs[0].media_stream_output_configurations[0].destination_configurations[0].destination_ip #=> String
    #   resp.data.flow.outputs[0].media_stream_output_configurations[0].destination_configurations[0].destination_port #=> Integer
    #   resp.data.flow.outputs[0].media_stream_output_configurations[0].destination_configurations[0].interface #=> Types::Interface
    #   resp.data.flow.outputs[0].media_stream_output_configurations[0].destination_configurations[0].interface.name #=> String
    #   resp.data.flow.outputs[0].media_stream_output_configurations[0].destination_configurations[0].outbound_ip #=> String
    #   resp.data.flow.outputs[0].media_stream_output_configurations[0].encoding_name #=> String, one of ["jxsv", "raw", "smpte291", "pcm"]
    #   resp.data.flow.outputs[0].media_stream_output_configurations[0].encoding_parameters #=> Types::EncodingParameters
    #   resp.data.flow.outputs[0].media_stream_output_configurations[0].encoding_parameters.compression_factor #=> Float
    #   resp.data.flow.outputs[0].media_stream_output_configurations[0].encoding_parameters.encoder_profile #=> String, one of ["main", "high"]
    #   resp.data.flow.outputs[0].media_stream_output_configurations[0].media_stream_name #=> String
    #   resp.data.flow.outputs[0].name #=> String
    #   resp.data.flow.outputs[0].output_arn #=> String
    #   resp.data.flow.outputs[0].port #=> Integer
    #   resp.data.flow.outputs[0].transport #=> Types::Transport
    #   resp.data.flow.outputs[0].transport.cidr_allow_list #=> Array<String>
    #   resp.data.flow.outputs[0].transport.max_bitrate #=> Integer
    #   resp.data.flow.outputs[0].transport.max_latency #=> Integer
    #   resp.data.flow.outputs[0].transport.max_sync_buffer #=> Integer
    #   resp.data.flow.outputs[0].transport.min_latency #=> Integer
    #   resp.data.flow.outputs[0].transport.protocol #=> String, one of ["zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "fujitsu-qos"]
    #   resp.data.flow.outputs[0].transport.remote_id #=> String
    #   resp.data.flow.outputs[0].transport.sender_control_port #=> Integer
    #   resp.data.flow.outputs[0].transport.sender_ip_address #=> String
    #   resp.data.flow.outputs[0].transport.smoothing_latency #=> Integer
    #   resp.data.flow.outputs[0].transport.stream_id #=> String
    #   resp.data.flow.outputs[0].vpc_interface_attachment #=> Types::VpcInterfaceAttachment
    #   resp.data.flow.outputs[0].vpc_interface_attachment.vpc_interface_name #=> String
    #   resp.data.flow.source #=> Types::Source
    #   resp.data.flow.source.data_transfer_subscriber_fee_percent #=> Integer
    #   resp.data.flow.source.decryption #=> Types::Encryption
    #   resp.data.flow.source.description #=> String
    #   resp.data.flow.source.entitlement_arn #=> String
    #   resp.data.flow.source.ingest_ip #=> String
    #   resp.data.flow.source.ingest_port #=> Integer
    #   resp.data.flow.source.media_stream_source_configurations #=> Array<MediaStreamSourceConfiguration>
    #   resp.data.flow.source.media_stream_source_configurations[0] #=> Types::MediaStreamSourceConfiguration
    #   resp.data.flow.source.media_stream_source_configurations[0].encoding_name #=> String, one of ["jxsv", "raw", "smpte291", "pcm"]
    #   resp.data.flow.source.media_stream_source_configurations[0].input_configurations #=> Array<InputConfiguration>
    #   resp.data.flow.source.media_stream_source_configurations[0].input_configurations[0] #=> Types::InputConfiguration
    #   resp.data.flow.source.media_stream_source_configurations[0].input_configurations[0].input_ip #=> String
    #   resp.data.flow.source.media_stream_source_configurations[0].input_configurations[0].input_port #=> Integer
    #   resp.data.flow.source.media_stream_source_configurations[0].input_configurations[0].interface #=> Types::Interface
    #   resp.data.flow.source.media_stream_source_configurations[0].media_stream_name #=> String
    #   resp.data.flow.source.name #=> String
    #   resp.data.flow.source.sender_control_port #=> Integer
    #   resp.data.flow.source.sender_ip_address #=> String
    #   resp.data.flow.source.source_arn #=> String
    #   resp.data.flow.source.transport #=> Types::Transport
    #   resp.data.flow.source.vpc_interface_name #=> String
    #   resp.data.flow.source.whitelist_cidr #=> String
    #   resp.data.flow.source_failover_config #=> Types::FailoverConfig
    #   resp.data.flow.source_failover_config.failover_mode #=> String, one of ["MERGE", "FAILOVER"]
    #   resp.data.flow.source_failover_config.recovery_window #=> Integer
    #   resp.data.flow.source_failover_config.source_priority #=> Types::SourcePriority
    #   resp.data.flow.source_failover_config.source_priority.primary_source #=> String
    #   resp.data.flow.source_failover_config.state #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.flow.sources #=> Array<Source>
    #   resp.data.flow.status #=> String, one of ["STANDBY", "ACTIVE", "UPDATING", "DELETING", "STARTING", "STOPPING", "ERROR"]
    #   resp.data.flow.vpc_interfaces #=> Array<VpcInterface>
    #   resp.data.flow.vpc_interfaces[0] #=> Types::VpcInterface
    #   resp.data.flow.vpc_interfaces[0].name #=> String
    #   resp.data.flow.vpc_interfaces[0].network_interface_ids #=> Array<String>
    #   resp.data.flow.vpc_interfaces[0].network_interface_type #=> String, one of ["ena", "efa"]
    #   resp.data.flow.vpc_interfaces[0].role_arn #=> String
    #   resp.data.flow.vpc_interfaces[0].security_group_ids #=> Array<String>
    #   resp.data.flow.vpc_interfaces[0].subnet_id #=> String
    #   resp.data.flow.maintenance #=> Types::Maintenance
    #   resp.data.flow.maintenance.maintenance_day #=> String, one of ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
    #   resp.data.flow.maintenance.maintenance_deadline #=> String
    #   resp.data.flow.maintenance.maintenance_scheduled_date #=> String
    #   resp.data.flow.maintenance.maintenance_start_hour #=> String
    #
    def create_flow(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateFlowInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateFlowInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateFlow
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::BadRequestException, Errors::CreateFlow420Exception, Errors::ServiceUnavailableException, Errors::InternalServerErrorException, Errors::ForbiddenException, Errors::TooManyRequestsException]),
        data_parser: Parsers::CreateFlow
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateFlow,
        stubs: @stubs,
        params_class: Params::CreateFlowOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_flow
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Deletes a flow. Before you can delete a flow, you must stop the flow.
    #
    # @param [Hash] params
    #   See {Types::DeleteFlowInput}.
    #
    # @option params [String] :flow_arn
    #   The ARN of the flow that you want to delete.
    #
    # @return [Types::DeleteFlowOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_flow(
    #     flow_arn: 'FlowArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteFlowOutput
    #   resp.data.flow_arn #=> String
    #   resp.data.status #=> String, one of ["STANDBY", "ACTIVE", "UPDATING", "DELETING", "STARTING", "STOPPING", "ERROR"]
    #
    def delete_flow(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteFlowInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteFlowInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteFlow
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::BadRequestException, Errors::NotFoundException, Errors::ServiceUnavailableException, Errors::InternalServerErrorException, Errors::ForbiddenException, Errors::TooManyRequestsException]),
        data_parser: Parsers::DeleteFlow
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteFlow,
        stubs: @stubs,
        params_class: Params::DeleteFlowOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_flow
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Displays the details of a flow. The response includes the flow ARN, name, and Availability Zone, as well as details about the source, outputs, and entitlements.
    #
    # @param [Hash] params
    #   See {Types::DescribeFlowInput}.
    #
    # @option params [String] :flow_arn
    #   The ARN of the flow that you want to describe.
    #
    # @return [Types::DescribeFlowOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_flow(
    #     flow_arn: 'FlowArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeFlowOutput
    #   resp.data.flow #=> Types::Flow
    #   resp.data.flow.availability_zone #=> String
    #   resp.data.flow.description #=> String
    #   resp.data.flow.egress_ip #=> String
    #   resp.data.flow.entitlements #=> Array<Entitlement>
    #   resp.data.flow.entitlements[0] #=> Types::Entitlement
    #   resp.data.flow.entitlements[0].data_transfer_subscriber_fee_percent #=> Integer
    #   resp.data.flow.entitlements[0].description #=> String
    #   resp.data.flow.entitlements[0].encryption #=> Types::Encryption
    #   resp.data.flow.entitlements[0].encryption.algorithm #=> String, one of ["aes128", "aes192", "aes256"]
    #   resp.data.flow.entitlements[0].encryption.constant_initialization_vector #=> String
    #   resp.data.flow.entitlements[0].encryption.device_id #=> String
    #   resp.data.flow.entitlements[0].encryption.key_type #=> String, one of ["speke", "static-key", "srt-password"]
    #   resp.data.flow.entitlements[0].encryption.region #=> String
    #   resp.data.flow.entitlements[0].encryption.resource_id #=> String
    #   resp.data.flow.entitlements[0].encryption.role_arn #=> String
    #   resp.data.flow.entitlements[0].encryption.secret_arn #=> String
    #   resp.data.flow.entitlements[0].encryption.url #=> String
    #   resp.data.flow.entitlements[0].entitlement_arn #=> String
    #   resp.data.flow.entitlements[0].entitlement_status #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.flow.entitlements[0].name #=> String
    #   resp.data.flow.entitlements[0].subscribers #=> Array<String>
    #   resp.data.flow.entitlements[0].subscribers[0] #=> String
    #   resp.data.flow.flow_arn #=> String
    #   resp.data.flow.media_streams #=> Array<MediaStream>
    #   resp.data.flow.media_streams[0] #=> Types::MediaStream
    #   resp.data.flow.media_streams[0].attributes #=> Types::MediaStreamAttributes
    #   resp.data.flow.media_streams[0].attributes.fmtp #=> Types::Fmtp
    #   resp.data.flow.media_streams[0].attributes.fmtp.channel_order #=> String
    #   resp.data.flow.media_streams[0].attributes.fmtp.colorimetry #=> String, one of ["BT601", "BT709", "BT2020", "BT2100", "ST2065-1", "ST2065-3", "XYZ"]
    #   resp.data.flow.media_streams[0].attributes.fmtp.exact_framerate #=> String
    #   resp.data.flow.media_streams[0].attributes.fmtp.par #=> String
    #   resp.data.flow.media_streams[0].attributes.fmtp.range #=> String, one of ["NARROW", "FULL", "FULLPROTECT"]
    #   resp.data.flow.media_streams[0].attributes.fmtp.scan_mode #=> String, one of ["progressive", "interlace", "progressive-segmented-frame"]
    #   resp.data.flow.media_streams[0].attributes.fmtp.tcs #=> String, one of ["SDR", "PQ", "HLG", "LINEAR", "BT2100LINPQ", "BT2100LINHLG", "ST2065-1", "ST428-1", "DENSITY"]
    #   resp.data.flow.media_streams[0].attributes.lang #=> String
    #   resp.data.flow.media_streams[0].clock_rate #=> Integer
    #   resp.data.flow.media_streams[0].description #=> String
    #   resp.data.flow.media_streams[0].fmt #=> Integer
    #   resp.data.flow.media_streams[0].media_stream_id #=> Integer
    #   resp.data.flow.media_streams[0].media_stream_name #=> String
    #   resp.data.flow.media_streams[0].media_stream_type #=> String, one of ["video", "audio", "ancillary-data"]
    #   resp.data.flow.media_streams[0].video_format #=> String
    #   resp.data.flow.name #=> String
    #   resp.data.flow.outputs #=> Array<Output>
    #   resp.data.flow.outputs[0] #=> Types::Output
    #   resp.data.flow.outputs[0].data_transfer_subscriber_fee_percent #=> Integer
    #   resp.data.flow.outputs[0].description #=> String
    #   resp.data.flow.outputs[0].destination #=> String
    #   resp.data.flow.outputs[0].encryption #=> Types::Encryption
    #   resp.data.flow.outputs[0].entitlement_arn #=> String
    #   resp.data.flow.outputs[0].listener_address #=> String
    #   resp.data.flow.outputs[0].media_live_input_arn #=> String
    #   resp.data.flow.outputs[0].media_stream_output_configurations #=> Array<MediaStreamOutputConfiguration>
    #   resp.data.flow.outputs[0].media_stream_output_configurations[0] #=> Types::MediaStreamOutputConfiguration
    #   resp.data.flow.outputs[0].media_stream_output_configurations[0].destination_configurations #=> Array<DestinationConfiguration>
    #   resp.data.flow.outputs[0].media_stream_output_configurations[0].destination_configurations[0] #=> Types::DestinationConfiguration
    #   resp.data.flow.outputs[0].media_stream_output_configurations[0].destination_configurations[0].destination_ip #=> String
    #   resp.data.flow.outputs[0].media_stream_output_configurations[0].destination_configurations[0].destination_port #=> Integer
    #   resp.data.flow.outputs[0].media_stream_output_configurations[0].destination_configurations[0].interface #=> Types::Interface
    #   resp.data.flow.outputs[0].media_stream_output_configurations[0].destination_configurations[0].interface.name #=> String
    #   resp.data.flow.outputs[0].media_stream_output_configurations[0].destination_configurations[0].outbound_ip #=> String
    #   resp.data.flow.outputs[0].media_stream_output_configurations[0].encoding_name #=> String, one of ["jxsv", "raw", "smpte291", "pcm"]
    #   resp.data.flow.outputs[0].media_stream_output_configurations[0].encoding_parameters #=> Types::EncodingParameters
    #   resp.data.flow.outputs[0].media_stream_output_configurations[0].encoding_parameters.compression_factor #=> Float
    #   resp.data.flow.outputs[0].media_stream_output_configurations[0].encoding_parameters.encoder_profile #=> String, one of ["main", "high"]
    #   resp.data.flow.outputs[0].media_stream_output_configurations[0].media_stream_name #=> String
    #   resp.data.flow.outputs[0].name #=> String
    #   resp.data.flow.outputs[0].output_arn #=> String
    #   resp.data.flow.outputs[0].port #=> Integer
    #   resp.data.flow.outputs[0].transport #=> Types::Transport
    #   resp.data.flow.outputs[0].transport.cidr_allow_list #=> Array<String>
    #   resp.data.flow.outputs[0].transport.max_bitrate #=> Integer
    #   resp.data.flow.outputs[0].transport.max_latency #=> Integer
    #   resp.data.flow.outputs[0].transport.max_sync_buffer #=> Integer
    #   resp.data.flow.outputs[0].transport.min_latency #=> Integer
    #   resp.data.flow.outputs[0].transport.protocol #=> String, one of ["zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "fujitsu-qos"]
    #   resp.data.flow.outputs[0].transport.remote_id #=> String
    #   resp.data.flow.outputs[0].transport.sender_control_port #=> Integer
    #   resp.data.flow.outputs[0].transport.sender_ip_address #=> String
    #   resp.data.flow.outputs[0].transport.smoothing_latency #=> Integer
    #   resp.data.flow.outputs[0].transport.stream_id #=> String
    #   resp.data.flow.outputs[0].vpc_interface_attachment #=> Types::VpcInterfaceAttachment
    #   resp.data.flow.outputs[0].vpc_interface_attachment.vpc_interface_name #=> String
    #   resp.data.flow.source #=> Types::Source
    #   resp.data.flow.source.data_transfer_subscriber_fee_percent #=> Integer
    #   resp.data.flow.source.decryption #=> Types::Encryption
    #   resp.data.flow.source.description #=> String
    #   resp.data.flow.source.entitlement_arn #=> String
    #   resp.data.flow.source.ingest_ip #=> String
    #   resp.data.flow.source.ingest_port #=> Integer
    #   resp.data.flow.source.media_stream_source_configurations #=> Array<MediaStreamSourceConfiguration>
    #   resp.data.flow.source.media_stream_source_configurations[0] #=> Types::MediaStreamSourceConfiguration
    #   resp.data.flow.source.media_stream_source_configurations[0].encoding_name #=> String, one of ["jxsv", "raw", "smpte291", "pcm"]
    #   resp.data.flow.source.media_stream_source_configurations[0].input_configurations #=> Array<InputConfiguration>
    #   resp.data.flow.source.media_stream_source_configurations[0].input_configurations[0] #=> Types::InputConfiguration
    #   resp.data.flow.source.media_stream_source_configurations[0].input_configurations[0].input_ip #=> String
    #   resp.data.flow.source.media_stream_source_configurations[0].input_configurations[0].input_port #=> Integer
    #   resp.data.flow.source.media_stream_source_configurations[0].input_configurations[0].interface #=> Types::Interface
    #   resp.data.flow.source.media_stream_source_configurations[0].media_stream_name #=> String
    #   resp.data.flow.source.name #=> String
    #   resp.data.flow.source.sender_control_port #=> Integer
    #   resp.data.flow.source.sender_ip_address #=> String
    #   resp.data.flow.source.source_arn #=> String
    #   resp.data.flow.source.transport #=> Types::Transport
    #   resp.data.flow.source.vpc_interface_name #=> String
    #   resp.data.flow.source.whitelist_cidr #=> String
    #   resp.data.flow.source_failover_config #=> Types::FailoverConfig
    #   resp.data.flow.source_failover_config.failover_mode #=> String, one of ["MERGE", "FAILOVER"]
    #   resp.data.flow.source_failover_config.recovery_window #=> Integer
    #   resp.data.flow.source_failover_config.source_priority #=> Types::SourcePriority
    #   resp.data.flow.source_failover_config.source_priority.primary_source #=> String
    #   resp.data.flow.source_failover_config.state #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.flow.sources #=> Array<Source>
    #   resp.data.flow.status #=> String, one of ["STANDBY", "ACTIVE", "UPDATING", "DELETING", "STARTING", "STOPPING", "ERROR"]
    #   resp.data.flow.vpc_interfaces #=> Array<VpcInterface>
    #   resp.data.flow.vpc_interfaces[0] #=> Types::VpcInterface
    #   resp.data.flow.vpc_interfaces[0].name #=> String
    #   resp.data.flow.vpc_interfaces[0].network_interface_ids #=> Array<String>
    #   resp.data.flow.vpc_interfaces[0].network_interface_type #=> String, one of ["ena", "efa"]
    #   resp.data.flow.vpc_interfaces[0].role_arn #=> String
    #   resp.data.flow.vpc_interfaces[0].security_group_ids #=> Array<String>
    #   resp.data.flow.vpc_interfaces[0].subnet_id #=> String
    #   resp.data.flow.maintenance #=> Types::Maintenance
    #   resp.data.flow.maintenance.maintenance_day #=> String, one of ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
    #   resp.data.flow.maintenance.maintenance_deadline #=> String
    #   resp.data.flow.maintenance.maintenance_scheduled_date #=> String
    #   resp.data.flow.maintenance.maintenance_start_hour #=> String
    #   resp.data.messages #=> Types::Messages
    #   resp.data.messages.errors #=> Array<String>
    #
    def describe_flow(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeFlowInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeFlowInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeFlow
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::NotFoundException, Errors::ServiceUnavailableException, Errors::InternalServerErrorException, Errors::ForbiddenException, Errors::TooManyRequestsException]),
        data_parser: Parsers::DescribeFlow
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeFlow,
        stubs: @stubs,
        params_class: Params::DescribeFlowOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_flow
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Displays the details of an offering. The response includes the offering description, duration, outbound bandwidth, price, and Amazon Resource Name (ARN).
    #
    # @param [Hash] params
    #   See {Types::DescribeOfferingInput}.
    #
    # @option params [String] :offering_arn
    #   The Amazon Resource Name (ARN) of the offering.
    #
    # @return [Types::DescribeOfferingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_offering(
    #     offering_arn: 'OfferingArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeOfferingOutput
    #   resp.data.offering #=> Types::Offering
    #   resp.data.offering.currency_code #=> String
    #   resp.data.offering.duration #=> Integer
    #   resp.data.offering.duration_units #=> String, one of ["MONTHS"]
    #   resp.data.offering.offering_arn #=> String
    #   resp.data.offering.offering_description #=> String
    #   resp.data.offering.price_per_unit #=> String
    #   resp.data.offering.price_units #=> String, one of ["HOURLY"]
    #   resp.data.offering.resource_specification #=> Types::ResourceSpecification
    #   resp.data.offering.resource_specification.reserved_bitrate #=> Integer
    #   resp.data.offering.resource_specification.resource_type #=> String, one of ["Mbps_Outbound_Bandwidth"]
    #
    def describe_offering(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeOfferingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeOfferingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeOffering
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::NotFoundException, Errors::ServiceUnavailableException, Errors::InternalServerErrorException, Errors::TooManyRequestsException]),
        data_parser: Parsers::DescribeOffering
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeOffering,
        stubs: @stubs,
        params_class: Params::DescribeOfferingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_offering
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Displays the details of a reservation. The response includes the reservation name, state, start date and time, and the details of the offering that make up the rest of the reservation (such as price, duration, and outbound bandwidth).
    #
    # @param [Hash] params
    #   See {Types::DescribeReservationInput}.
    #
    # @option params [String] :reservation_arn
    #   The Amazon Resource Name (ARN) of the reservation.
    #
    # @return [Types::DescribeReservationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_reservation(
    #     reservation_arn: 'ReservationArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeReservationOutput
    #   resp.data.reservation #=> Types::Reservation
    #   resp.data.reservation.currency_code #=> String
    #   resp.data.reservation.duration #=> Integer
    #   resp.data.reservation.duration_units #=> String, one of ["MONTHS"]
    #   resp.data.reservation.end #=> String
    #   resp.data.reservation.offering_arn #=> String
    #   resp.data.reservation.offering_description #=> String
    #   resp.data.reservation.price_per_unit #=> String
    #   resp.data.reservation.price_units #=> String, one of ["HOURLY"]
    #   resp.data.reservation.reservation_arn #=> String
    #   resp.data.reservation.reservation_name #=> String
    #   resp.data.reservation.reservation_state #=> String, one of ["ACTIVE", "EXPIRED", "PROCESSING", "CANCELED"]
    #   resp.data.reservation.resource_specification #=> Types::ResourceSpecification
    #   resp.data.reservation.resource_specification.reserved_bitrate #=> Integer
    #   resp.data.reservation.resource_specification.resource_type #=> String, one of ["Mbps_Outbound_Bandwidth"]
    #   resp.data.reservation.start #=> String
    #
    def describe_reservation(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeReservationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeReservationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeReservation
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::NotFoundException, Errors::ServiceUnavailableException, Errors::InternalServerErrorException, Errors::TooManyRequestsException]),
        data_parser: Parsers::DescribeReservation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeReservation,
        stubs: @stubs,
        params_class: Params::DescribeReservationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_reservation
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Grants entitlements to an existing flow.
    #
    # @param [Hash] params
    #   See {Types::GrantFlowEntitlementsInput}.
    #
    # @option params [Array<GrantEntitlementRequest>] :entitlements
    #   The list of entitlements that you want to grant.
    #
    # @option params [String] :flow_arn
    #   The flow that you want to grant entitlements on.
    #
    # @return [Types::GrantFlowEntitlementsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.grant_flow_entitlements(
    #     entitlements: [
    #       {
    #         data_transfer_subscriber_fee_percent: 1,
    #         description: 'Description',
    #         encryption: {
    #           algorithm: 'aes128', # accepts ["aes128", "aes192", "aes256"]
    #           constant_initialization_vector: 'ConstantInitializationVector',
    #           device_id: 'DeviceId',
    #           key_type: 'speke', # accepts ["speke", "static-key", "srt-password"]
    #           region: 'Region',
    #           resource_id: 'ResourceId',
    #           role_arn: 'RoleArn', # required
    #           secret_arn: 'SecretArn',
    #           url: 'Url'
    #         },
    #         entitlement_status: 'ENABLED', # accepts ["ENABLED", "DISABLED"]
    #         name: 'Name',
    #         subscribers: [
    #           'member'
    #         ] # required
    #       }
    #     ], # required
    #     flow_arn: 'FlowArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GrantFlowEntitlementsOutput
    #   resp.data.entitlements #=> Array<Entitlement>
    #   resp.data.entitlements[0] #=> Types::Entitlement
    #   resp.data.entitlements[0].data_transfer_subscriber_fee_percent #=> Integer
    #   resp.data.entitlements[0].description #=> String
    #   resp.data.entitlements[0].encryption #=> Types::Encryption
    #   resp.data.entitlements[0].encryption.algorithm #=> String, one of ["aes128", "aes192", "aes256"]
    #   resp.data.entitlements[0].encryption.constant_initialization_vector #=> String
    #   resp.data.entitlements[0].encryption.device_id #=> String
    #   resp.data.entitlements[0].encryption.key_type #=> String, one of ["speke", "static-key", "srt-password"]
    #   resp.data.entitlements[0].encryption.region #=> String
    #   resp.data.entitlements[0].encryption.resource_id #=> String
    #   resp.data.entitlements[0].encryption.role_arn #=> String
    #   resp.data.entitlements[0].encryption.secret_arn #=> String
    #   resp.data.entitlements[0].encryption.url #=> String
    #   resp.data.entitlements[0].entitlement_arn #=> String
    #   resp.data.entitlements[0].entitlement_status #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.entitlements[0].name #=> String
    #   resp.data.entitlements[0].subscribers #=> Array<String>
    #   resp.data.entitlements[0].subscribers[0] #=> String
    #   resp.data.flow_arn #=> String
    #
    def grant_flow_entitlements(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GrantFlowEntitlementsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GrantFlowEntitlementsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GrantFlowEntitlements
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::GrantFlowEntitlements420Exception, Errors::BadRequestException, Errors::NotFoundException, Errors::ServiceUnavailableException, Errors::InternalServerErrorException, Errors::ForbiddenException, Errors::TooManyRequestsException]),
        data_parser: Parsers::GrantFlowEntitlements
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GrantFlowEntitlements,
        stubs: @stubs,
        params_class: Params::GrantFlowEntitlementsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :grant_flow_entitlements
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Displays a list of all entitlements that have been granted to this account. This request returns 20 results per page.
    #
    # @param [Hash] params
    #   See {Types::ListEntitlementsInput}.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per API request. For example, you submit a ListEntitlements request with MaxResults set at 5. Although 20 items match your request, the service returns no more than the first 5 items. (The service also returns a NextToken value that you can use to fetch the next batch of results.) The service might return fewer results than the MaxResults value. If MaxResults is not included in the request, the service defaults to pagination with a maximum of 20 results per page.
    #
    # @option params [String] :next_token
    #   The token that identifies which batch of results that you want to see. For example, you submit a ListEntitlements request with MaxResults set at 5. The service returns the first batch of results (up to 5) and a NextToken value. To see the next batch of results, you can submit the ListEntitlements request a second time and specify the NextToken value.
    #
    # @return [Types::ListEntitlementsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_entitlements(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListEntitlementsOutput
    #   resp.data.entitlements #=> Array<ListedEntitlement>
    #   resp.data.entitlements[0] #=> Types::ListedEntitlement
    #   resp.data.entitlements[0].data_transfer_subscriber_fee_percent #=> Integer
    #   resp.data.entitlements[0].entitlement_arn #=> String
    #   resp.data.entitlements[0].entitlement_name #=> String
    #   resp.data.next_token #=> String
    #
    def list_entitlements(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListEntitlementsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListEntitlementsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListEntitlements
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::InternalServerErrorException, Errors::TooManyRequestsException]),
        data_parser: Parsers::ListEntitlements
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListEntitlements,
        stubs: @stubs,
        params_class: Params::ListEntitlementsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_entitlements
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Displays a list of flows that are associated with this account. This request returns a paginated result.
    #
    # @param [Hash] params
    #   See {Types::ListFlowsInput}.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per API request. For example, you submit a ListFlows request with MaxResults set at 5. Although 20 items match your request, the service returns no more than the first 5 items. (The service also returns a NextToken value that you can use to fetch the next batch of results.) The service might return fewer results than the MaxResults value. If MaxResults is not included in the request, the service defaults to pagination with a maximum of 10 results per page.
    #
    # @option params [String] :next_token
    #   The token that identifies which batch of results that you want to see. For example, you submit a ListFlows request with MaxResults set at 5. The service returns the first batch of results (up to 5) and a NextToken value. To see the next batch of results, you can submit the ListFlows request a second time and specify the NextToken value.
    #
    # @return [Types::ListFlowsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_flows(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListFlowsOutput
    #   resp.data.flows #=> Array<ListedFlow>
    #   resp.data.flows[0] #=> Types::ListedFlow
    #   resp.data.flows[0].availability_zone #=> String
    #   resp.data.flows[0].description #=> String
    #   resp.data.flows[0].flow_arn #=> String
    #   resp.data.flows[0].name #=> String
    #   resp.data.flows[0].source_type #=> String, one of ["OWNED", "ENTITLED"]
    #   resp.data.flows[0].status #=> String, one of ["STANDBY", "ACTIVE", "UPDATING", "DELETING", "STARTING", "STOPPING", "ERROR"]
    #   resp.data.flows[0].maintenance #=> Types::Maintenance
    #   resp.data.flows[0].maintenance.maintenance_day #=> String, one of ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
    #   resp.data.flows[0].maintenance.maintenance_deadline #=> String
    #   resp.data.flows[0].maintenance.maintenance_scheduled_date #=> String
    #   resp.data.flows[0].maintenance.maintenance_start_hour #=> String
    #   resp.data.next_token #=> String
    #
    def list_flows(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListFlowsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListFlowsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListFlows
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::InternalServerErrorException, Errors::TooManyRequestsException]),
        data_parser: Parsers::ListFlows
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListFlows,
        stubs: @stubs,
        params_class: Params::ListFlowsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_flows
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Displays a list of all offerings that are available to this account in the current AWS Region. If you have an active reservation (which means you've purchased an offering that has already started and hasn't expired yet), your account isn't eligible for other offerings.
    #
    # @param [Hash] params
    #   See {Types::ListOfferingsInput}.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per API request. For example, you submit a ListOfferings request with MaxResults set at 5. Although 20 items match your request, the service returns no more than the first 5 items. (The service also returns a NextToken value that you can use to fetch the next batch of results.) The service might return fewer results than the MaxResults value. If MaxResults is not included in the request, the service defaults to pagination with a maximum of 10 results per page.
    #
    # @option params [String] :next_token
    #   The token that identifies which batch of results that you want to see. For example, you submit a ListOfferings request with MaxResults set at 5. The service returns the first batch of results (up to 5) and a NextToken value. To see the next batch of results, you can submit the ListOfferings request a second time and specify the NextToken value.
    #
    # @return [Types::ListOfferingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_offerings(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListOfferingsOutput
    #   resp.data.next_token #=> String
    #   resp.data.offerings #=> Array<Offering>
    #   resp.data.offerings[0] #=> Types::Offering
    #   resp.data.offerings[0].currency_code #=> String
    #   resp.data.offerings[0].duration #=> Integer
    #   resp.data.offerings[0].duration_units #=> String, one of ["MONTHS"]
    #   resp.data.offerings[0].offering_arn #=> String
    #   resp.data.offerings[0].offering_description #=> String
    #   resp.data.offerings[0].price_per_unit #=> String
    #   resp.data.offerings[0].price_units #=> String, one of ["HOURLY"]
    #   resp.data.offerings[0].resource_specification #=> Types::ResourceSpecification
    #   resp.data.offerings[0].resource_specification.reserved_bitrate #=> Integer
    #   resp.data.offerings[0].resource_specification.resource_type #=> String, one of ["Mbps_Outbound_Bandwidth"]
    #
    def list_offerings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListOfferingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListOfferingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListOfferings
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::InternalServerErrorException, Errors::TooManyRequestsException]),
        data_parser: Parsers::ListOfferings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListOfferings,
        stubs: @stubs,
        params_class: Params::ListOfferingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_offerings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Displays a list of all reservations that have been purchased by this account in the current AWS Region. This list includes all reservations in all states (such as active and expired).
    #
    # @param [Hash] params
    #   See {Types::ListReservationsInput}.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per API request. For example, you submit a ListReservations request with MaxResults set at 5. Although 20 items match your request, the service returns no more than the first 5 items. (The service also returns a NextToken value that you can use to fetch the next batch of results.) The service might return fewer results than the MaxResults value. If MaxResults is not included in the request, the service defaults to pagination with a maximum of 10 results per page.
    #
    # @option params [String] :next_token
    #   The token that identifies which batch of results that you want to see. For example, you submit a ListReservations request with MaxResults set at 5. The service returns the first batch of results (up to 5) and a NextToken value. To see the next batch of results, you can submit the ListOfferings request a second time and specify the NextToken value.
    #
    # @return [Types::ListReservationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_reservations(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListReservationsOutput
    #   resp.data.next_token #=> String
    #   resp.data.reservations #=> Array<Reservation>
    #   resp.data.reservations[0] #=> Types::Reservation
    #   resp.data.reservations[0].currency_code #=> String
    #   resp.data.reservations[0].duration #=> Integer
    #   resp.data.reservations[0].duration_units #=> String, one of ["MONTHS"]
    #   resp.data.reservations[0].end #=> String
    #   resp.data.reservations[0].offering_arn #=> String
    #   resp.data.reservations[0].offering_description #=> String
    #   resp.data.reservations[0].price_per_unit #=> String
    #   resp.data.reservations[0].price_units #=> String, one of ["HOURLY"]
    #   resp.data.reservations[0].reservation_arn #=> String
    #   resp.data.reservations[0].reservation_name #=> String
    #   resp.data.reservations[0].reservation_state #=> String, one of ["ACTIVE", "EXPIRED", "PROCESSING", "CANCELED"]
    #   resp.data.reservations[0].resource_specification #=> Types::ResourceSpecification
    #   resp.data.reservations[0].resource_specification.reserved_bitrate #=> Integer
    #   resp.data.reservations[0].resource_specification.resource_type #=> String, one of ["Mbps_Outbound_Bandwidth"]
    #   resp.data.reservations[0].start #=> String
    #
    def list_reservations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListReservationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListReservationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListReservations
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ServiceUnavailableException, Errors::InternalServerErrorException, Errors::TooManyRequestsException]),
        data_parser: Parsers::ListReservations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListReservations,
        stubs: @stubs,
        params_class: Params::ListReservationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_reservations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # List all tags on an AWS Elemental MediaConnect resource
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   The Amazon Resource Name (ARN) that identifies the AWS Elemental MediaConnect resource for which to list the tags.
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::NotFoundException, Errors::InternalServerErrorException]),
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

    # Submits a request to purchase an offering. If you already have an active reservation, you can't purchase another offering.
    #
    # @param [Hash] params
    #   See {Types::PurchaseOfferingInput}.
    #
    # @option params [String] :offering_arn
    #   The Amazon Resource Name (ARN) of the offering.
    #
    # @option params [String] :reservation_name
    #   The name that you want to use for the reservation.
    #
    # @option params [String] :start
    #   The date and time that you want the reservation to begin, in Coordinated Universal Time (UTC). You can specify any date and time between 12:00am on the first day of the current month to the current time on today's date, inclusive. Specify the start in a 24-hour notation. Use the following format: YYYY-MM-DDTHH:mm:SSZ, where T and Z are literal characters. For example, to specify 11:30pm on March 5, 2020, enter 2020-03-05T23:30:00Z.
    #
    # @return [Types::PurchaseOfferingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.purchase_offering(
    #     offering_arn: 'OfferingArn', # required
    #     reservation_name: 'ReservationName', # required
    #     start: 'Start' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PurchaseOfferingOutput
    #   resp.data.reservation #=> Types::Reservation
    #   resp.data.reservation.currency_code #=> String
    #   resp.data.reservation.duration #=> Integer
    #   resp.data.reservation.duration_units #=> String, one of ["MONTHS"]
    #   resp.data.reservation.end #=> String
    #   resp.data.reservation.offering_arn #=> String
    #   resp.data.reservation.offering_description #=> String
    #   resp.data.reservation.price_per_unit #=> String
    #   resp.data.reservation.price_units #=> String, one of ["HOURLY"]
    #   resp.data.reservation.reservation_arn #=> String
    #   resp.data.reservation.reservation_name #=> String
    #   resp.data.reservation.reservation_state #=> String, one of ["ACTIVE", "EXPIRED", "PROCESSING", "CANCELED"]
    #   resp.data.reservation.resource_specification #=> Types::ResourceSpecification
    #   resp.data.reservation.resource_specification.reserved_bitrate #=> Integer
    #   resp.data.reservation.resource_specification.resource_type #=> String, one of ["Mbps_Outbound_Bandwidth"]
    #   resp.data.reservation.start #=> String
    #
    def purchase_offering(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PurchaseOfferingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PurchaseOfferingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PurchaseOffering
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::BadRequestException, Errors::NotFoundException, Errors::ServiceUnavailableException, Errors::InternalServerErrorException, Errors::ForbiddenException, Errors::TooManyRequestsException]),
        data_parser: Parsers::PurchaseOffering
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PurchaseOffering,
        stubs: @stubs,
        params_class: Params::PurchaseOfferingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :purchase_offering
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Removes a media stream from a flow. This action is only available if the media stream is not associated with a source or output.
    #
    # @param [Hash] params
    #   See {Types::RemoveFlowMediaStreamInput}.
    #
    # @option params [String] :flow_arn
    #   The Amazon Resource Name (ARN) of the flow.
    #
    # @option params [String] :media_stream_name
    #   The name of the media stream that you want to remove.
    #
    # @return [Types::RemoveFlowMediaStreamOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_flow_media_stream(
    #     flow_arn: 'FlowArn', # required
    #     media_stream_name: 'MediaStreamName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RemoveFlowMediaStreamOutput
    #   resp.data.flow_arn #=> String
    #   resp.data.media_stream_name #=> String
    #
    def remove_flow_media_stream(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RemoveFlowMediaStreamInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RemoveFlowMediaStreamInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RemoveFlowMediaStream
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::NotFoundException, Errors::ServiceUnavailableException, Errors::InternalServerErrorException, Errors::ForbiddenException, Errors::TooManyRequestsException]),
        data_parser: Parsers::RemoveFlowMediaStream
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RemoveFlowMediaStream,
        stubs: @stubs,
        params_class: Params::RemoveFlowMediaStreamOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :remove_flow_media_stream
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Removes an output from an existing flow. This request can be made only on an output that does not have an entitlement associated with it. If the output has an entitlement, you must revoke the entitlement instead. When an entitlement is revoked from a flow, the service automatically removes the associated output.
    #
    # @param [Hash] params
    #   See {Types::RemoveFlowOutputInput}.
    #
    # @option params [String] :flow_arn
    #   The flow that you want to remove an output from.
    #
    # @option params [String] :output_arn
    #   The ARN of the output that you want to remove.
    #
    # @return [Types::RemoveFlowOutputOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_flow_output(
    #     flow_arn: 'FlowArn', # required
    #     output_arn: 'OutputArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RemoveFlowOutputOutput
    #   resp.data.flow_arn #=> String
    #   resp.data.output_arn #=> String
    #
    def remove_flow_output(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RemoveFlowOutputInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RemoveFlowOutputInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RemoveFlowOutput
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::BadRequestException, Errors::NotFoundException, Errors::ServiceUnavailableException, Errors::InternalServerErrorException, Errors::ForbiddenException, Errors::TooManyRequestsException]),
        data_parser: Parsers::RemoveFlowOutput
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RemoveFlowOutput,
        stubs: @stubs,
        params_class: Params::RemoveFlowOutputOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :remove_flow_output
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Removes a source from an existing flow. This request can be made only if there is more than one source on the flow.
    #
    # @param [Hash] params
    #   See {Types::RemoveFlowSourceInput}.
    #
    # @option params [String] :flow_arn
    #   The flow that you want to remove a source from.
    #
    # @option params [String] :source_arn
    #   The ARN of the source that you want to remove.
    #
    # @return [Types::RemoveFlowSourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_flow_source(
    #     flow_arn: 'FlowArn', # required
    #     source_arn: 'SourceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RemoveFlowSourceOutput
    #   resp.data.flow_arn #=> String
    #   resp.data.source_arn #=> String
    #
    def remove_flow_source(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RemoveFlowSourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RemoveFlowSourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RemoveFlowSource
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::BadRequestException, Errors::NotFoundException, Errors::ServiceUnavailableException, Errors::InternalServerErrorException, Errors::ForbiddenException, Errors::TooManyRequestsException]),
        data_parser: Parsers::RemoveFlowSource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RemoveFlowSource,
        stubs: @stubs,
        params_class: Params::RemoveFlowSourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :remove_flow_source
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Removes a VPC Interface from an existing flow. This request can be made only on a VPC interface that does not have a Source or Output associated with it. If the VPC interface is referenced by a Source or Output, you must first delete or update the Source or Output to no longer reference the VPC interface.
    #
    # @param [Hash] params
    #   See {Types::RemoveFlowVpcInterfaceInput}.
    #
    # @option params [String] :flow_arn
    #   The flow that you want to remove a VPC interface from.
    #
    # @option params [String] :vpc_interface_name
    #   The name of the VPC interface that you want to remove.
    #
    # @return [Types::RemoveFlowVpcInterfaceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_flow_vpc_interface(
    #     flow_arn: 'FlowArn', # required
    #     vpc_interface_name: 'VpcInterfaceName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RemoveFlowVpcInterfaceOutput
    #   resp.data.flow_arn #=> String
    #   resp.data.non_deleted_network_interface_ids #=> Array<String>
    #   resp.data.non_deleted_network_interface_ids[0] #=> String
    #   resp.data.vpc_interface_name #=> String
    #
    def remove_flow_vpc_interface(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RemoveFlowVpcInterfaceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RemoveFlowVpcInterfaceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RemoveFlowVpcInterface
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::NotFoundException, Errors::ServiceUnavailableException, Errors::InternalServerErrorException, Errors::ForbiddenException, Errors::TooManyRequestsException]),
        data_parser: Parsers::RemoveFlowVpcInterface
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RemoveFlowVpcInterface,
        stubs: @stubs,
        params_class: Params::RemoveFlowVpcInterfaceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :remove_flow_vpc_interface
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Revokes an entitlement from a flow. Once an entitlement is revoked, the content becomes unavailable to the subscriber and the associated output is removed.
    #
    # @param [Hash] params
    #   See {Types::RevokeFlowEntitlementInput}.
    #
    # @option params [String] :entitlement_arn
    #   The ARN of the entitlement that you want to revoke.
    #
    # @option params [String] :flow_arn
    #   The flow that you want to revoke an entitlement from.
    #
    # @return [Types::RevokeFlowEntitlementOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.revoke_flow_entitlement(
    #     entitlement_arn: 'EntitlementArn', # required
    #     flow_arn: 'FlowArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RevokeFlowEntitlementOutput
    #   resp.data.entitlement_arn #=> String
    #   resp.data.flow_arn #=> String
    #
    def revoke_flow_entitlement(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RevokeFlowEntitlementInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RevokeFlowEntitlementInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RevokeFlowEntitlement
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::BadRequestException, Errors::NotFoundException, Errors::ServiceUnavailableException, Errors::InternalServerErrorException, Errors::ForbiddenException, Errors::TooManyRequestsException]),
        data_parser: Parsers::RevokeFlowEntitlement
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RevokeFlowEntitlement,
        stubs: @stubs,
        params_class: Params::RevokeFlowEntitlementOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :revoke_flow_entitlement
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Starts a flow.
    #
    # @param [Hash] params
    #   See {Types::StartFlowInput}.
    #
    # @option params [String] :flow_arn
    #   The ARN of the flow that you want to start.
    #
    # @return [Types::StartFlowOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_flow(
    #     flow_arn: 'FlowArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartFlowOutput
    #   resp.data.flow_arn #=> String
    #   resp.data.status #=> String, one of ["STANDBY", "ACTIVE", "UPDATING", "DELETING", "STARTING", "STOPPING", "ERROR"]
    #
    def start_flow(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartFlowInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartFlowInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartFlow
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::BadRequestException, Errors::NotFoundException, Errors::ServiceUnavailableException, Errors::InternalServerErrorException, Errors::ForbiddenException, Errors::TooManyRequestsException]),
        data_parser: Parsers::StartFlow
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartFlow,
        stubs: @stubs,
        params_class: Params::StartFlowOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_flow
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Stops a flow.
    #
    # @param [Hash] params
    #   See {Types::StopFlowInput}.
    #
    # @option params [String] :flow_arn
    #   The ARN of the flow that you want to stop.
    #
    # @return [Types::StopFlowOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_flow(
    #     flow_arn: 'FlowArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopFlowOutput
    #   resp.data.flow_arn #=> String
    #   resp.data.status #=> String, one of ["STANDBY", "ACTIVE", "UPDATING", "DELETING", "STARTING", "STOPPING", "ERROR"]
    #
    def stop_flow(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopFlowInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopFlowInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopFlow
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::BadRequestException, Errors::NotFoundException, Errors::ServiceUnavailableException, Errors::InternalServerErrorException, Errors::ForbiddenException, Errors::TooManyRequestsException]),
        data_parser: Parsers::StopFlow
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopFlow,
        stubs: @stubs,
        params_class: Params::StopFlowOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_flow
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Associates the specified tags to a resource with the specified resourceArn. If existing tags on a resource are not specified in the request parameters, they are not changed. When a resource is deleted, the tags associated with that resource are deleted as well.
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   The Amazon Resource Name (ARN) that identifies the AWS Elemental MediaConnect resource to which to add tags.
    #
    # @option params [Hash<String, String>] :tags
    #   A map from tag keys to values. Tag keys can have a maximum character length of 128 characters, and tag values can have a maximum length of 256 characters.
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'ResourceArn', # required
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::BadRequestException, Errors::NotFoundException, Errors::InternalServerErrorException]),
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

    # Deletes specified tags from a resource.
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   The Amazon Resource Name (ARN) that identifies the AWS Elemental MediaConnect resource from which to delete tags.
    #
    # @option params [Array<String>] :tag_keys
    #   The keys of the tags to be removed.
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::BadRequestException, Errors::NotFoundException, Errors::InternalServerErrorException]),
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

    # Updates flow
    #
    # @param [Hash] params
    #   See {Types::UpdateFlowInput}.
    #
    # @option params [String] :flow_arn
    #   The flow that you want to update.
    #
    # @option params [UpdateFailoverConfig] :source_failover_config
    #   The settings for source failover.
    #
    # @option params [UpdateMaintenance] :maintenance
    #   Update maintenance setting for a flow
    #
    # @return [Types::UpdateFlowOperationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_flow(
    #     flow_arn: 'FlowArn', # required
    #     source_failover_config: {
    #       failover_mode: 'MERGE', # accepts ["MERGE", "FAILOVER"]
    #       recovery_window: 1,
    #       source_priority: {
    #         primary_source: 'PrimarySource'
    #       },
    #       state: 'ENABLED' # accepts ["ENABLED", "DISABLED"]
    #     },
    #     maintenance: {
    #       maintenance_day: 'Monday', # accepts ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
    #       maintenance_scheduled_date: 'MaintenanceScheduledDate',
    #       maintenance_start_hour: 'MaintenanceStartHour'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateFlowOperationOutput
    #   resp.data.flow #=> Types::Flow
    #   resp.data.flow.availability_zone #=> String
    #   resp.data.flow.description #=> String
    #   resp.data.flow.egress_ip #=> String
    #   resp.data.flow.entitlements #=> Array<Entitlement>
    #   resp.data.flow.entitlements[0] #=> Types::Entitlement
    #   resp.data.flow.entitlements[0].data_transfer_subscriber_fee_percent #=> Integer
    #   resp.data.flow.entitlements[0].description #=> String
    #   resp.data.flow.entitlements[0].encryption #=> Types::Encryption
    #   resp.data.flow.entitlements[0].encryption.algorithm #=> String, one of ["aes128", "aes192", "aes256"]
    #   resp.data.flow.entitlements[0].encryption.constant_initialization_vector #=> String
    #   resp.data.flow.entitlements[0].encryption.device_id #=> String
    #   resp.data.flow.entitlements[0].encryption.key_type #=> String, one of ["speke", "static-key", "srt-password"]
    #   resp.data.flow.entitlements[0].encryption.region #=> String
    #   resp.data.flow.entitlements[0].encryption.resource_id #=> String
    #   resp.data.flow.entitlements[0].encryption.role_arn #=> String
    #   resp.data.flow.entitlements[0].encryption.secret_arn #=> String
    #   resp.data.flow.entitlements[0].encryption.url #=> String
    #   resp.data.flow.entitlements[0].entitlement_arn #=> String
    #   resp.data.flow.entitlements[0].entitlement_status #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.flow.entitlements[0].name #=> String
    #   resp.data.flow.entitlements[0].subscribers #=> Array<String>
    #   resp.data.flow.entitlements[0].subscribers[0] #=> String
    #   resp.data.flow.flow_arn #=> String
    #   resp.data.flow.media_streams #=> Array<MediaStream>
    #   resp.data.flow.media_streams[0] #=> Types::MediaStream
    #   resp.data.flow.media_streams[0].attributes #=> Types::MediaStreamAttributes
    #   resp.data.flow.media_streams[0].attributes.fmtp #=> Types::Fmtp
    #   resp.data.flow.media_streams[0].attributes.fmtp.channel_order #=> String
    #   resp.data.flow.media_streams[0].attributes.fmtp.colorimetry #=> String, one of ["BT601", "BT709", "BT2020", "BT2100", "ST2065-1", "ST2065-3", "XYZ"]
    #   resp.data.flow.media_streams[0].attributes.fmtp.exact_framerate #=> String
    #   resp.data.flow.media_streams[0].attributes.fmtp.par #=> String
    #   resp.data.flow.media_streams[0].attributes.fmtp.range #=> String, one of ["NARROW", "FULL", "FULLPROTECT"]
    #   resp.data.flow.media_streams[0].attributes.fmtp.scan_mode #=> String, one of ["progressive", "interlace", "progressive-segmented-frame"]
    #   resp.data.flow.media_streams[0].attributes.fmtp.tcs #=> String, one of ["SDR", "PQ", "HLG", "LINEAR", "BT2100LINPQ", "BT2100LINHLG", "ST2065-1", "ST428-1", "DENSITY"]
    #   resp.data.flow.media_streams[0].attributes.lang #=> String
    #   resp.data.flow.media_streams[0].clock_rate #=> Integer
    #   resp.data.flow.media_streams[0].description #=> String
    #   resp.data.flow.media_streams[0].fmt #=> Integer
    #   resp.data.flow.media_streams[0].media_stream_id #=> Integer
    #   resp.data.flow.media_streams[0].media_stream_name #=> String
    #   resp.data.flow.media_streams[0].media_stream_type #=> String, one of ["video", "audio", "ancillary-data"]
    #   resp.data.flow.media_streams[0].video_format #=> String
    #   resp.data.flow.name #=> String
    #   resp.data.flow.outputs #=> Array<Output>
    #   resp.data.flow.outputs[0] #=> Types::Output
    #   resp.data.flow.outputs[0].data_transfer_subscriber_fee_percent #=> Integer
    #   resp.data.flow.outputs[0].description #=> String
    #   resp.data.flow.outputs[0].destination #=> String
    #   resp.data.flow.outputs[0].encryption #=> Types::Encryption
    #   resp.data.flow.outputs[0].entitlement_arn #=> String
    #   resp.data.flow.outputs[0].listener_address #=> String
    #   resp.data.flow.outputs[0].media_live_input_arn #=> String
    #   resp.data.flow.outputs[0].media_stream_output_configurations #=> Array<MediaStreamOutputConfiguration>
    #   resp.data.flow.outputs[0].media_stream_output_configurations[0] #=> Types::MediaStreamOutputConfiguration
    #   resp.data.flow.outputs[0].media_stream_output_configurations[0].destination_configurations #=> Array<DestinationConfiguration>
    #   resp.data.flow.outputs[0].media_stream_output_configurations[0].destination_configurations[0] #=> Types::DestinationConfiguration
    #   resp.data.flow.outputs[0].media_stream_output_configurations[0].destination_configurations[0].destination_ip #=> String
    #   resp.data.flow.outputs[0].media_stream_output_configurations[0].destination_configurations[0].destination_port #=> Integer
    #   resp.data.flow.outputs[0].media_stream_output_configurations[0].destination_configurations[0].interface #=> Types::Interface
    #   resp.data.flow.outputs[0].media_stream_output_configurations[0].destination_configurations[0].interface.name #=> String
    #   resp.data.flow.outputs[0].media_stream_output_configurations[0].destination_configurations[0].outbound_ip #=> String
    #   resp.data.flow.outputs[0].media_stream_output_configurations[0].encoding_name #=> String, one of ["jxsv", "raw", "smpte291", "pcm"]
    #   resp.data.flow.outputs[0].media_stream_output_configurations[0].encoding_parameters #=> Types::EncodingParameters
    #   resp.data.flow.outputs[0].media_stream_output_configurations[0].encoding_parameters.compression_factor #=> Float
    #   resp.data.flow.outputs[0].media_stream_output_configurations[0].encoding_parameters.encoder_profile #=> String, one of ["main", "high"]
    #   resp.data.flow.outputs[0].media_stream_output_configurations[0].media_stream_name #=> String
    #   resp.data.flow.outputs[0].name #=> String
    #   resp.data.flow.outputs[0].output_arn #=> String
    #   resp.data.flow.outputs[0].port #=> Integer
    #   resp.data.flow.outputs[0].transport #=> Types::Transport
    #   resp.data.flow.outputs[0].transport.cidr_allow_list #=> Array<String>
    #   resp.data.flow.outputs[0].transport.max_bitrate #=> Integer
    #   resp.data.flow.outputs[0].transport.max_latency #=> Integer
    #   resp.data.flow.outputs[0].transport.max_sync_buffer #=> Integer
    #   resp.data.flow.outputs[0].transport.min_latency #=> Integer
    #   resp.data.flow.outputs[0].transport.protocol #=> String, one of ["zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "fujitsu-qos"]
    #   resp.data.flow.outputs[0].transport.remote_id #=> String
    #   resp.data.flow.outputs[0].transport.sender_control_port #=> Integer
    #   resp.data.flow.outputs[0].transport.sender_ip_address #=> String
    #   resp.data.flow.outputs[0].transport.smoothing_latency #=> Integer
    #   resp.data.flow.outputs[0].transport.stream_id #=> String
    #   resp.data.flow.outputs[0].vpc_interface_attachment #=> Types::VpcInterfaceAttachment
    #   resp.data.flow.outputs[0].vpc_interface_attachment.vpc_interface_name #=> String
    #   resp.data.flow.source #=> Types::Source
    #   resp.data.flow.source.data_transfer_subscriber_fee_percent #=> Integer
    #   resp.data.flow.source.decryption #=> Types::Encryption
    #   resp.data.flow.source.description #=> String
    #   resp.data.flow.source.entitlement_arn #=> String
    #   resp.data.flow.source.ingest_ip #=> String
    #   resp.data.flow.source.ingest_port #=> Integer
    #   resp.data.flow.source.media_stream_source_configurations #=> Array<MediaStreamSourceConfiguration>
    #   resp.data.flow.source.media_stream_source_configurations[0] #=> Types::MediaStreamSourceConfiguration
    #   resp.data.flow.source.media_stream_source_configurations[0].encoding_name #=> String, one of ["jxsv", "raw", "smpte291", "pcm"]
    #   resp.data.flow.source.media_stream_source_configurations[0].input_configurations #=> Array<InputConfiguration>
    #   resp.data.flow.source.media_stream_source_configurations[0].input_configurations[0] #=> Types::InputConfiguration
    #   resp.data.flow.source.media_stream_source_configurations[0].input_configurations[0].input_ip #=> String
    #   resp.data.flow.source.media_stream_source_configurations[0].input_configurations[0].input_port #=> Integer
    #   resp.data.flow.source.media_stream_source_configurations[0].input_configurations[0].interface #=> Types::Interface
    #   resp.data.flow.source.media_stream_source_configurations[0].media_stream_name #=> String
    #   resp.data.flow.source.name #=> String
    #   resp.data.flow.source.sender_control_port #=> Integer
    #   resp.data.flow.source.sender_ip_address #=> String
    #   resp.data.flow.source.source_arn #=> String
    #   resp.data.flow.source.transport #=> Types::Transport
    #   resp.data.flow.source.vpc_interface_name #=> String
    #   resp.data.flow.source.whitelist_cidr #=> String
    #   resp.data.flow.source_failover_config #=> Types::FailoverConfig
    #   resp.data.flow.source_failover_config.failover_mode #=> String, one of ["MERGE", "FAILOVER"]
    #   resp.data.flow.source_failover_config.recovery_window #=> Integer
    #   resp.data.flow.source_failover_config.source_priority #=> Types::SourcePriority
    #   resp.data.flow.source_failover_config.source_priority.primary_source #=> String
    #   resp.data.flow.source_failover_config.state #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.flow.sources #=> Array<Source>
    #   resp.data.flow.status #=> String, one of ["STANDBY", "ACTIVE", "UPDATING", "DELETING", "STARTING", "STOPPING", "ERROR"]
    #   resp.data.flow.vpc_interfaces #=> Array<VpcInterface>
    #   resp.data.flow.vpc_interfaces[0] #=> Types::VpcInterface
    #   resp.data.flow.vpc_interfaces[0].name #=> String
    #   resp.data.flow.vpc_interfaces[0].network_interface_ids #=> Array<String>
    #   resp.data.flow.vpc_interfaces[0].network_interface_type #=> String, one of ["ena", "efa"]
    #   resp.data.flow.vpc_interfaces[0].role_arn #=> String
    #   resp.data.flow.vpc_interfaces[0].security_group_ids #=> Array<String>
    #   resp.data.flow.vpc_interfaces[0].subnet_id #=> String
    #   resp.data.flow.maintenance #=> Types::Maintenance
    #   resp.data.flow.maintenance.maintenance_day #=> String, one of ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
    #   resp.data.flow.maintenance.maintenance_deadline #=> String
    #   resp.data.flow.maintenance.maintenance_scheduled_date #=> String
    #   resp.data.flow.maintenance.maintenance_start_hour #=> String
    #
    def update_flow(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateFlowInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateFlowInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateFlow
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::BadRequestException, Errors::NotFoundException, Errors::ServiceUnavailableException, Errors::InternalServerErrorException, Errors::ForbiddenException, Errors::TooManyRequestsException]),
        data_parser: Parsers::UpdateFlow
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateFlow,
        stubs: @stubs,
        params_class: Params::UpdateFlowOperationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_flow
        )
      )
      raise resp.error if resp.error
      resp
    end

    # You can change an entitlement's description, subscribers, and encryption. If you change the subscribers, the service will remove the outputs that are are used by the subscribers that are removed.
    #
    # @param [Hash] params
    #   See {Types::UpdateFlowEntitlementInput}.
    #
    # @option params [String] :description
    #   A description of the entitlement. This description appears only on the AWS Elemental MediaConnect console and will not be seen by the subscriber or end user.
    #
    # @option params [UpdateEncryption] :encryption
    #   The type of encryption that will be used on the output associated with this entitlement.
    #
    # @option params [String] :entitlement_arn
    #   The ARN of the entitlement that you want to update.
    #
    # @option params [String] :entitlement_status
    #   An indication of whether you want to enable the entitlement to allow access, or disable it to stop streaming content to the subscriber’s flow temporarily. If you don’t specify the entitlementStatus field in your request, MediaConnect leaves the value unchanged.
    #
    # @option params [String] :flow_arn
    #   The flow that is associated with the entitlement that you want to update.
    #
    # @option params [Array<String>] :subscribers
    #   The AWS account IDs that you want to share your content with. The receiving accounts (subscribers) will be allowed to create their own flow using your content as the source.
    #
    # @return [Types::UpdateFlowEntitlementOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_flow_entitlement(
    #     description: 'Description',
    #     encryption: {
    #       algorithm: 'aes128', # accepts ["aes128", "aes192", "aes256"]
    #       constant_initialization_vector: 'ConstantInitializationVector',
    #       device_id: 'DeviceId',
    #       key_type: 'speke', # accepts ["speke", "static-key", "srt-password"]
    #       region: 'Region',
    #       resource_id: 'ResourceId',
    #       role_arn: 'RoleArn',
    #       secret_arn: 'SecretArn',
    #       url: 'Url'
    #     },
    #     entitlement_arn: 'EntitlementArn', # required
    #     entitlement_status: 'ENABLED', # accepts ["ENABLED", "DISABLED"]
    #     flow_arn: 'FlowArn', # required
    #     subscribers: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateFlowEntitlementOutput
    #   resp.data.entitlement #=> Types::Entitlement
    #   resp.data.entitlement.data_transfer_subscriber_fee_percent #=> Integer
    #   resp.data.entitlement.description #=> String
    #   resp.data.entitlement.encryption #=> Types::Encryption
    #   resp.data.entitlement.encryption.algorithm #=> String, one of ["aes128", "aes192", "aes256"]
    #   resp.data.entitlement.encryption.constant_initialization_vector #=> String
    #   resp.data.entitlement.encryption.device_id #=> String
    #   resp.data.entitlement.encryption.key_type #=> String, one of ["speke", "static-key", "srt-password"]
    #   resp.data.entitlement.encryption.region #=> String
    #   resp.data.entitlement.encryption.resource_id #=> String
    #   resp.data.entitlement.encryption.role_arn #=> String
    #   resp.data.entitlement.encryption.secret_arn #=> String
    #   resp.data.entitlement.encryption.url #=> String
    #   resp.data.entitlement.entitlement_arn #=> String
    #   resp.data.entitlement.entitlement_status #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.entitlement.name #=> String
    #   resp.data.entitlement.subscribers #=> Array<String>
    #   resp.data.entitlement.subscribers[0] #=> String
    #   resp.data.flow_arn #=> String
    #
    def update_flow_entitlement(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateFlowEntitlementInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateFlowEntitlementInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateFlowEntitlement
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::BadRequestException, Errors::NotFoundException, Errors::ServiceUnavailableException, Errors::InternalServerErrorException, Errors::ForbiddenException, Errors::TooManyRequestsException]),
        data_parser: Parsers::UpdateFlowEntitlement
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateFlowEntitlement,
        stubs: @stubs,
        params_class: Params::UpdateFlowEntitlementOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_flow_entitlement
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Updates an existing media stream.
    #
    # @param [Hash] params
    #   See {Types::UpdateFlowMediaStreamInput}.
    #
    # @option params [MediaStreamAttributesRequest] :attributes
    #   The attributes that you want to assign to the media stream.
    #
    # @option params [Integer] :clock_rate
    #   The sample rate (in Hz) for the stream. If the media stream type is video or ancillary data, set this value to 90000. If the media stream type is audio, set this value to either 48000 or 96000.
    #
    # @option params [String] :description
    #   Description
    #
    # @option params [String] :flow_arn
    #   The Amazon Resource Name (ARN) of the flow.
    #
    # @option params [String] :media_stream_name
    #   The name of the media stream that you want to update.
    #
    # @option params [String] :media_stream_type
    #   The type of media stream.
    #
    # @option params [String] :video_format
    #   The resolution of the video.
    #
    # @return [Types::UpdateFlowMediaStreamOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_flow_media_stream(
    #     attributes: {
    #       fmtp: {
    #         channel_order: 'ChannelOrder',
    #         colorimetry: 'BT601', # accepts ["BT601", "BT709", "BT2020", "BT2100", "ST2065-1", "ST2065-3", "XYZ"]
    #         exact_framerate: 'ExactFramerate',
    #         par: 'Par',
    #         range: 'NARROW', # accepts ["NARROW", "FULL", "FULLPROTECT"]
    #         scan_mode: 'progressive', # accepts ["progressive", "interlace", "progressive-segmented-frame"]
    #         tcs: 'SDR' # accepts ["SDR", "PQ", "HLG", "LINEAR", "BT2100LINPQ", "BT2100LINHLG", "ST2065-1", "ST428-1", "DENSITY"]
    #       },
    #       lang: 'Lang'
    #     },
    #     clock_rate: 1,
    #     description: 'Description',
    #     flow_arn: 'FlowArn', # required
    #     media_stream_name: 'MediaStreamName', # required
    #     media_stream_type: 'video', # accepts ["video", "audio", "ancillary-data"]
    #     video_format: 'VideoFormat'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateFlowMediaStreamOutput
    #   resp.data.flow_arn #=> String
    #   resp.data.media_stream #=> Types::MediaStream
    #   resp.data.media_stream.attributes #=> Types::MediaStreamAttributes
    #   resp.data.media_stream.attributes.fmtp #=> Types::Fmtp
    #   resp.data.media_stream.attributes.fmtp.channel_order #=> String
    #   resp.data.media_stream.attributes.fmtp.colorimetry #=> String, one of ["BT601", "BT709", "BT2020", "BT2100", "ST2065-1", "ST2065-3", "XYZ"]
    #   resp.data.media_stream.attributes.fmtp.exact_framerate #=> String
    #   resp.data.media_stream.attributes.fmtp.par #=> String
    #   resp.data.media_stream.attributes.fmtp.range #=> String, one of ["NARROW", "FULL", "FULLPROTECT"]
    #   resp.data.media_stream.attributes.fmtp.scan_mode #=> String, one of ["progressive", "interlace", "progressive-segmented-frame"]
    #   resp.data.media_stream.attributes.fmtp.tcs #=> String, one of ["SDR", "PQ", "HLG", "LINEAR", "BT2100LINPQ", "BT2100LINHLG", "ST2065-1", "ST428-1", "DENSITY"]
    #   resp.data.media_stream.attributes.lang #=> String
    #   resp.data.media_stream.clock_rate #=> Integer
    #   resp.data.media_stream.description #=> String
    #   resp.data.media_stream.fmt #=> Integer
    #   resp.data.media_stream.media_stream_id #=> Integer
    #   resp.data.media_stream.media_stream_name #=> String
    #   resp.data.media_stream.media_stream_type #=> String, one of ["video", "audio", "ancillary-data"]
    #   resp.data.media_stream.video_format #=> String
    #
    def update_flow_media_stream(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateFlowMediaStreamInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateFlowMediaStreamInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateFlowMediaStream
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::BadRequestException, Errors::NotFoundException, Errors::ServiceUnavailableException, Errors::InternalServerErrorException, Errors::ForbiddenException, Errors::TooManyRequestsException]),
        data_parser: Parsers::UpdateFlowMediaStream
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateFlowMediaStream,
        stubs: @stubs,
        params_class: Params::UpdateFlowMediaStreamOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_flow_media_stream
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Updates an existing flow output.
    #
    # @param [Hash] params
    #   See {Types::UpdateFlowOutputInput}.
    #
    # @option params [Array<String>] :cidr_allow_list
    #   The range of IP addresses that should be allowed to initiate output requests to this flow. These IP addresses should be in the form of a Classless Inter-Domain Routing (CIDR) block; for example, 10.0.0.0/16.
    #
    # @option params [String] :description
    #   A description of the output. This description appears only on the AWS Elemental MediaConnect console and will not be seen by the end user.
    #
    # @option params [String] :destination
    #   The IP address where you want to send the output.
    #
    # @option params [UpdateEncryption] :encryption
    #   The type of key used for the encryption. If no keyType is provided, the service will use the default setting (static-key).
    #
    # @option params [String] :flow_arn
    #   The flow that is associated with the output that you want to update.
    #
    # @option params [Integer] :max_latency
    #   The maximum latency in milliseconds. This parameter applies only to RIST-based, Zixi-based, and Fujitsu-based streams.
    #
    # @option params [Array<MediaStreamOutputConfigurationRequest>] :media_stream_output_configurations
    #   The media streams that are associated with the output, and the parameters for those associations.
    #
    # @option params [Integer] :min_latency
    #   The minimum latency in milliseconds for SRT-based streams. In streams that use the SRT protocol, this value that you set on your MediaConnect source or output represents the minimal potential latency of that connection. The latency of the stream is set to the highest number between the sender’s minimum latency and the receiver’s minimum latency.
    #
    # @option params [String] :output_arn
    #   The ARN of the output that you want to update.
    #
    # @option params [Integer] :port
    #   The port to use when content is distributed to this output.
    #
    # @option params [String] :protocol
    #   The protocol to use for the output.
    #
    # @option params [String] :remote_id
    #   The remote ID for the Zixi-pull stream.
    #
    # @option params [Integer] :sender_control_port
    #   The port that the flow uses to send outbound requests to initiate connection with the sender.
    #
    # @option params [String] :sender_ip_address
    #   The IP address that the flow communicates with to initiate connection with the sender.
    #
    # @option params [Integer] :smoothing_latency
    #   The smoothing latency in milliseconds for RIST, RTP, and RTP-FEC streams.
    #
    # @option params [String] :stream_id
    #   The stream ID that you want to use for this transport. This parameter applies only to Zixi-based streams.
    #
    # @option params [VpcInterfaceAttachment] :vpc_interface_attachment
    #   The name of the VPC interface attachment to use for this output.
    #
    # @return [Types::UpdateFlowOutputOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_flow_output(
    #     cidr_allow_list: [
    #       'member'
    #     ],
    #     description: 'Description',
    #     destination: 'Destination',
    #     encryption: {
    #       algorithm: 'aes128', # accepts ["aes128", "aes192", "aes256"]
    #       constant_initialization_vector: 'ConstantInitializationVector',
    #       device_id: 'DeviceId',
    #       key_type: 'speke', # accepts ["speke", "static-key", "srt-password"]
    #       region: 'Region',
    #       resource_id: 'ResourceId',
    #       role_arn: 'RoleArn',
    #       secret_arn: 'SecretArn',
    #       url: 'Url'
    #     },
    #     flow_arn: 'FlowArn', # required
    #     max_latency: 1,
    #     media_stream_output_configurations: [
    #       {
    #         destination_configurations: [
    #           {
    #             destination_ip: 'DestinationIp', # required
    #             destination_port: 1, # required
    #             interface: {
    #               name: 'Name' # required
    #             } # required
    #           }
    #         ],
    #         encoding_name: 'jxsv', # required - accepts ["jxsv", "raw", "smpte291", "pcm"]
    #         encoding_parameters: {
    #           compression_factor: 1.0, # required
    #           encoder_profile: 'main' # required - accepts ["main", "high"]
    #         },
    #         media_stream_name: 'MediaStreamName' # required
    #       }
    #     ],
    #     min_latency: 1,
    #     output_arn: 'OutputArn', # required
    #     port: 1,
    #     protocol: 'zixi-push', # accepts ["zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "fujitsu-qos"]
    #     remote_id: 'RemoteId',
    #     sender_control_port: 1,
    #     sender_ip_address: 'SenderIpAddress',
    #     smoothing_latency: 1,
    #     stream_id: 'StreamId',
    #     vpc_interface_attachment: {
    #       vpc_interface_name: 'VpcInterfaceName'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateFlowOutputOutput
    #   resp.data.flow_arn #=> String
    #   resp.data.output #=> Types::Output
    #   resp.data.output.data_transfer_subscriber_fee_percent #=> Integer
    #   resp.data.output.description #=> String
    #   resp.data.output.destination #=> String
    #   resp.data.output.encryption #=> Types::Encryption
    #   resp.data.output.encryption.algorithm #=> String, one of ["aes128", "aes192", "aes256"]
    #   resp.data.output.encryption.constant_initialization_vector #=> String
    #   resp.data.output.encryption.device_id #=> String
    #   resp.data.output.encryption.key_type #=> String, one of ["speke", "static-key", "srt-password"]
    #   resp.data.output.encryption.region #=> String
    #   resp.data.output.encryption.resource_id #=> String
    #   resp.data.output.encryption.role_arn #=> String
    #   resp.data.output.encryption.secret_arn #=> String
    #   resp.data.output.encryption.url #=> String
    #   resp.data.output.entitlement_arn #=> String
    #   resp.data.output.listener_address #=> String
    #   resp.data.output.media_live_input_arn #=> String
    #   resp.data.output.media_stream_output_configurations #=> Array<MediaStreamOutputConfiguration>
    #   resp.data.output.media_stream_output_configurations[0] #=> Types::MediaStreamOutputConfiguration
    #   resp.data.output.media_stream_output_configurations[0].destination_configurations #=> Array<DestinationConfiguration>
    #   resp.data.output.media_stream_output_configurations[0].destination_configurations[0] #=> Types::DestinationConfiguration
    #   resp.data.output.media_stream_output_configurations[0].destination_configurations[0].destination_ip #=> String
    #   resp.data.output.media_stream_output_configurations[0].destination_configurations[0].destination_port #=> Integer
    #   resp.data.output.media_stream_output_configurations[0].destination_configurations[0].interface #=> Types::Interface
    #   resp.data.output.media_stream_output_configurations[0].destination_configurations[0].interface.name #=> String
    #   resp.data.output.media_stream_output_configurations[0].destination_configurations[0].outbound_ip #=> String
    #   resp.data.output.media_stream_output_configurations[0].encoding_name #=> String, one of ["jxsv", "raw", "smpte291", "pcm"]
    #   resp.data.output.media_stream_output_configurations[0].encoding_parameters #=> Types::EncodingParameters
    #   resp.data.output.media_stream_output_configurations[0].encoding_parameters.compression_factor #=> Float
    #   resp.data.output.media_stream_output_configurations[0].encoding_parameters.encoder_profile #=> String, one of ["main", "high"]
    #   resp.data.output.media_stream_output_configurations[0].media_stream_name #=> String
    #   resp.data.output.name #=> String
    #   resp.data.output.output_arn #=> String
    #   resp.data.output.port #=> Integer
    #   resp.data.output.transport #=> Types::Transport
    #   resp.data.output.transport.cidr_allow_list #=> Array<String>
    #   resp.data.output.transport.cidr_allow_list[0] #=> String
    #   resp.data.output.transport.max_bitrate #=> Integer
    #   resp.data.output.transport.max_latency #=> Integer
    #   resp.data.output.transport.max_sync_buffer #=> Integer
    #   resp.data.output.transport.min_latency #=> Integer
    #   resp.data.output.transport.protocol #=> String, one of ["zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "fujitsu-qos"]
    #   resp.data.output.transport.remote_id #=> String
    #   resp.data.output.transport.sender_control_port #=> Integer
    #   resp.data.output.transport.sender_ip_address #=> String
    #   resp.data.output.transport.smoothing_latency #=> Integer
    #   resp.data.output.transport.stream_id #=> String
    #   resp.data.output.vpc_interface_attachment #=> Types::VpcInterfaceAttachment
    #   resp.data.output.vpc_interface_attachment.vpc_interface_name #=> String
    #
    def update_flow_output(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateFlowOutputInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateFlowOutputInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateFlowOutput
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::BadRequestException, Errors::NotFoundException, Errors::ServiceUnavailableException, Errors::InternalServerErrorException, Errors::ForbiddenException, Errors::TooManyRequestsException]),
        data_parser: Parsers::UpdateFlowOutput
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateFlowOutput,
        stubs: @stubs,
        params_class: Params::UpdateFlowOutputOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_flow_output
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Updates the source of a flow.
    #
    # @param [Hash] params
    #   See {Types::UpdateFlowSourceInput}.
    #
    # @option params [UpdateEncryption] :decryption
    #   The type of encryption used on the content ingested from this source.
    #
    # @option params [String] :description
    #   A description for the source. This value is not used or seen outside of the current AWS Elemental MediaConnect account.
    #
    # @option params [String] :entitlement_arn
    #   The ARN of the entitlement that allows you to subscribe to this flow. The entitlement is set by the flow originator, and the ARN is generated as part of the originator's flow.
    #
    # @option params [String] :flow_arn
    #   The flow that is associated with the source that you want to update.
    #
    # @option params [Integer] :ingest_port
    #   The port that the flow will be listening on for incoming content.
    #
    # @option params [Integer] :max_bitrate
    #   The smoothing max bitrate for RIST, RTP, and RTP-FEC streams.
    #
    # @option params [Integer] :max_latency
    #   The maximum latency in milliseconds. This parameter applies only to RIST-based, Zixi-based, and Fujitsu-based streams.
    #
    # @option params [Integer] :max_sync_buffer
    #   The size of the buffer (in milliseconds) to use to sync incoming source data.
    #
    # @option params [Array<MediaStreamSourceConfigurationRequest>] :media_stream_source_configurations
    #   The media streams that are associated with the source, and the parameters for those associations.
    #
    # @option params [Integer] :min_latency
    #   The minimum latency in milliseconds for SRT-based streams. In streams that use the SRT protocol, this value that you set on your MediaConnect source or output represents the minimal potential latency of that connection. The latency of the stream is set to the highest number between the sender’s minimum latency and the receiver’s minimum latency.
    #
    # @option params [String] :protocol
    #   The protocol that is used by the source.
    #
    # @option params [Integer] :sender_control_port
    #   The port that the flow uses to send outbound requests to initiate connection with the sender.
    #
    # @option params [String] :sender_ip_address
    #   The IP address that the flow communicates with to initiate connection with the sender.
    #
    # @option params [String] :source_arn
    #   The ARN of the source that you want to update.
    #
    # @option params [String] :stream_id
    #   The stream ID that you want to use for this transport. This parameter applies only to Zixi-based streams.
    #
    # @option params [String] :vpc_interface_name
    #   The name of the VPC interface to use for this source.
    #
    # @option params [String] :whitelist_cidr
    #   The range of IP addresses that should be allowed to contribute content to your source. These IP addresses should be in the form of a Classless Inter-Domain Routing (CIDR) block; for example, 10.0.0.0/16.
    #
    # @return [Types::UpdateFlowSourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_flow_source(
    #     decryption: {
    #       algorithm: 'aes128', # accepts ["aes128", "aes192", "aes256"]
    #       constant_initialization_vector: 'ConstantInitializationVector',
    #       device_id: 'DeviceId',
    #       key_type: 'speke', # accepts ["speke", "static-key", "srt-password"]
    #       region: 'Region',
    #       resource_id: 'ResourceId',
    #       role_arn: 'RoleArn',
    #       secret_arn: 'SecretArn',
    #       url: 'Url'
    #     },
    #     description: 'Description',
    #     entitlement_arn: 'EntitlementArn',
    #     flow_arn: 'FlowArn', # required
    #     ingest_port: 1,
    #     max_bitrate: 1,
    #     max_latency: 1,
    #     max_sync_buffer: 1,
    #     media_stream_source_configurations: [
    #       {
    #         encoding_name: 'jxsv', # required - accepts ["jxsv", "raw", "smpte291", "pcm"]
    #         input_configurations: [
    #           {
    #             input_port: 1, # required
    #             interface: {
    #               name: 'Name' # required
    #             } # required
    #           }
    #         ],
    #         media_stream_name: 'MediaStreamName' # required
    #       }
    #     ],
    #     min_latency: 1,
    #     protocol: 'zixi-push', # accepts ["zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "fujitsu-qos"]
    #     sender_control_port: 1,
    #     sender_ip_address: 'SenderIpAddress',
    #     source_arn: 'SourceArn', # required
    #     stream_id: 'StreamId',
    #     vpc_interface_name: 'VpcInterfaceName',
    #     whitelist_cidr: 'WhitelistCidr'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateFlowSourceOutput
    #   resp.data.flow_arn #=> String
    #   resp.data.source #=> Types::Source
    #   resp.data.source.data_transfer_subscriber_fee_percent #=> Integer
    #   resp.data.source.decryption #=> Types::Encryption
    #   resp.data.source.decryption.algorithm #=> String, one of ["aes128", "aes192", "aes256"]
    #   resp.data.source.decryption.constant_initialization_vector #=> String
    #   resp.data.source.decryption.device_id #=> String
    #   resp.data.source.decryption.key_type #=> String, one of ["speke", "static-key", "srt-password"]
    #   resp.data.source.decryption.region #=> String
    #   resp.data.source.decryption.resource_id #=> String
    #   resp.data.source.decryption.role_arn #=> String
    #   resp.data.source.decryption.secret_arn #=> String
    #   resp.data.source.decryption.url #=> String
    #   resp.data.source.description #=> String
    #   resp.data.source.entitlement_arn #=> String
    #   resp.data.source.ingest_ip #=> String
    #   resp.data.source.ingest_port #=> Integer
    #   resp.data.source.media_stream_source_configurations #=> Array<MediaStreamSourceConfiguration>
    #   resp.data.source.media_stream_source_configurations[0] #=> Types::MediaStreamSourceConfiguration
    #   resp.data.source.media_stream_source_configurations[0].encoding_name #=> String, one of ["jxsv", "raw", "smpte291", "pcm"]
    #   resp.data.source.media_stream_source_configurations[0].input_configurations #=> Array<InputConfiguration>
    #   resp.data.source.media_stream_source_configurations[0].input_configurations[0] #=> Types::InputConfiguration
    #   resp.data.source.media_stream_source_configurations[0].input_configurations[0].input_ip #=> String
    #   resp.data.source.media_stream_source_configurations[0].input_configurations[0].input_port #=> Integer
    #   resp.data.source.media_stream_source_configurations[0].input_configurations[0].interface #=> Types::Interface
    #   resp.data.source.media_stream_source_configurations[0].input_configurations[0].interface.name #=> String
    #   resp.data.source.media_stream_source_configurations[0].media_stream_name #=> String
    #   resp.data.source.name #=> String
    #   resp.data.source.sender_control_port #=> Integer
    #   resp.data.source.sender_ip_address #=> String
    #   resp.data.source.source_arn #=> String
    #   resp.data.source.transport #=> Types::Transport
    #   resp.data.source.transport.cidr_allow_list #=> Array<String>
    #   resp.data.source.transport.cidr_allow_list[0] #=> String
    #   resp.data.source.transport.max_bitrate #=> Integer
    #   resp.data.source.transport.max_latency #=> Integer
    #   resp.data.source.transport.max_sync_buffer #=> Integer
    #   resp.data.source.transport.min_latency #=> Integer
    #   resp.data.source.transport.protocol #=> String, one of ["zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "fujitsu-qos"]
    #   resp.data.source.transport.remote_id #=> String
    #   resp.data.source.transport.sender_control_port #=> Integer
    #   resp.data.source.transport.sender_ip_address #=> String
    #   resp.data.source.transport.smoothing_latency #=> Integer
    #   resp.data.source.transport.stream_id #=> String
    #   resp.data.source.vpc_interface_name #=> String
    #   resp.data.source.whitelist_cidr #=> String
    #
    def update_flow_source(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateFlowSourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateFlowSourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateFlowSource
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::BadRequestException, Errors::NotFoundException, Errors::ServiceUnavailableException, Errors::InternalServerErrorException, Errors::ForbiddenException, Errors::TooManyRequestsException]),
        data_parser: Parsers::UpdateFlowSource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateFlowSource,
        stubs: @stubs,
        params_class: Params::UpdateFlowSourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_flow_source
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
