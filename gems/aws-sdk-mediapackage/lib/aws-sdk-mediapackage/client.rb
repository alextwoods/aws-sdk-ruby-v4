# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::MediaPackage
  # An API client for MediaPackage
  # See {#initialize} for a full list of supported configuration options
  # AWS Elemental MediaPackage
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
    def initialize(config = AWS::SDK::MediaPackage::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # Changes the Channel's properities to configure log subscription
    #
    # @param [Hash] params
    #   See {Types::ConfigureLogsInput}.
    #
    # @option params [EgressAccessLogs] :egress_access_logs
    #   Configure egress access logging.
    #
    # @option params [String] :id
    #   The ID of the channel to log subscription.
    #
    # @option params [IngressAccessLogs] :ingress_access_logs
    #   Configure ingress access logging.
    #
    # @return [Types::ConfigureLogsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.configure_logs(
    #     egress_access_logs: {
    #       log_group_name: 'LogGroupName'
    #     },
    #     id: 'Id', # required
    #     ingress_access_logs: {
    #       log_group_name: 'LogGroupName'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ConfigureLogsOutput
    #   resp.data.arn #=> String
    #   resp.data.description #=> String
    #   resp.data.egress_access_logs #=> Types::EgressAccessLogs
    #   resp.data.egress_access_logs.log_group_name #=> String
    #   resp.data.hls_ingest #=> Types::HlsIngest
    #   resp.data.hls_ingest.ingest_endpoints #=> Array<IngestEndpoint>
    #   resp.data.hls_ingest.ingest_endpoints[0] #=> Types::IngestEndpoint
    #   resp.data.hls_ingest.ingest_endpoints[0].id #=> String
    #   resp.data.hls_ingest.ingest_endpoints[0].password #=> String
    #   resp.data.hls_ingest.ingest_endpoints[0].url #=> String
    #   resp.data.hls_ingest.ingest_endpoints[0].username #=> String
    #   resp.data.id #=> String
    #   resp.data.ingress_access_logs #=> Types::IngressAccessLogs
    #   resp.data.ingress_access_logs.log_group_name #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def configure_logs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ConfigureLogsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ConfigureLogsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ConfigureLogs
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceUnavailableException, Errors::TooManyRequestsException, Errors::InternalServerErrorException, Errors::UnprocessableEntityException, Errors::ForbiddenException, Errors::NotFoundException]),
        data_parser: Parsers::ConfigureLogs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ConfigureLogs,
        stubs: @stubs,
        params_class: Params::ConfigureLogsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :configure_logs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Creates a new Channel.
    #
    # @param [Hash] params
    #   See {Types::CreateChannelInput}.
    #
    # @option params [String] :description
    #   A short text description of the Channel.
    #
    # @option params [String] :id
    #   The ID of the Channel. The ID must be unique within the region and it
    #   cannot be changed after a Channel is created.
    #
    # @option params [Hash<String, String>] :tags
    #   A collection of tags associated with a resource
    #
    # @return [Types::CreateChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_channel(
    #     description: 'Description',
    #     id: 'Id', # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateChannelOutput
    #   resp.data.arn #=> String
    #   resp.data.description #=> String
    #   resp.data.egress_access_logs #=> Types::EgressAccessLogs
    #   resp.data.egress_access_logs.log_group_name #=> String
    #   resp.data.hls_ingest #=> Types::HlsIngest
    #   resp.data.hls_ingest.ingest_endpoints #=> Array<IngestEndpoint>
    #   resp.data.hls_ingest.ingest_endpoints[0] #=> Types::IngestEndpoint
    #   resp.data.hls_ingest.ingest_endpoints[0].id #=> String
    #   resp.data.hls_ingest.ingest_endpoints[0].password #=> String
    #   resp.data.hls_ingest.ingest_endpoints[0].url #=> String
    #   resp.data.hls_ingest.ingest_endpoints[0].username #=> String
    #   resp.data.id #=> String
    #   resp.data.ingress_access_logs #=> Types::IngressAccessLogs
    #   resp.data.ingress_access_logs.log_group_name #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def create_channel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateChannelInput.build(params)
      response_body = ::StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceUnavailableException, Errors::TooManyRequestsException, Errors::InternalServerErrorException, Errors::UnprocessableEntityException, Errors::ForbiddenException, Errors::NotFoundException]),
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

    # Creates a new HarvestJob record.
    #
    # @param [Hash] params
    #   See {Types::CreateHarvestJobInput}.
    #
    # @option params [String] :end_time
    #   The end of the time-window which will be harvested
    #
    # @option params [String] :id
    #   The ID of the HarvestJob. The ID must be unique within the region
    #   and it cannot be changed after the HarvestJob is submitted
    #
    # @option params [String] :origin_endpoint_id
    #   The ID of the OriginEndpoint that the HarvestJob will harvest from.
    #   This cannot be changed after the HarvestJob is submitted.
    #
    # @option params [S3Destination] :s3_destination
    #   Configuration parameters for where in an S3 bucket to place the harvested content
    #
    # @option params [String] :start_time
    #   The start of the time-window which will be harvested
    #
    # @return [Types::CreateHarvestJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_harvest_job(
    #     end_time: 'EndTime', # required
    #     id: 'Id', # required
    #     origin_endpoint_id: 'OriginEndpointId', # required
    #     s3_destination: {
    #       bucket_name: 'BucketName', # required
    #       manifest_key: 'ManifestKey', # required
    #       role_arn: 'RoleArn' # required
    #     }, # required
    #     start_time: 'StartTime' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateHarvestJobOutput
    #   resp.data.arn #=> String
    #   resp.data.channel_id #=> String
    #   resp.data.created_at #=> String
    #   resp.data.end_time #=> String
    #   resp.data.id #=> String
    #   resp.data.origin_endpoint_id #=> String
    #   resp.data.s3_destination #=> Types::S3Destination
    #   resp.data.s3_destination.bucket_name #=> String
    #   resp.data.s3_destination.manifest_key #=> String
    #   resp.data.s3_destination.role_arn #=> String
    #   resp.data.start_time #=> String
    #   resp.data.status #=> String, one of ["IN_PROGRESS", "SUCCEEDED", "FAILED"]
    #
    def create_harvest_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateHarvestJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateHarvestJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateHarvestJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceUnavailableException, Errors::TooManyRequestsException, Errors::InternalServerErrorException, Errors::UnprocessableEntityException, Errors::ForbiddenException, Errors::NotFoundException]),
        data_parser: Parsers::CreateHarvestJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateHarvestJob,
        stubs: @stubs,
        params_class: Params::CreateHarvestJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_harvest_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Creates a new OriginEndpoint record.
    #
    # @param [Hash] params
    #   See {Types::CreateOriginEndpointInput}.
    #
    # @option params [Authorization] :authorization
    #   CDN Authorization credentials
    #
    # @option params [String] :channel_id
    #   The ID of the Channel that the OriginEndpoint will be associated with.
    #   This cannot be changed after the OriginEndpoint is created.
    #
    # @option params [CmafPackageCreateOrUpdateParameters] :cmaf_package
    #   A Common Media Application Format (CMAF) packaging configuration.
    #
    # @option params [DashPackage] :dash_package
    #   A Dynamic Adaptive Streaming over HTTP (DASH) packaging configuration.
    #
    # @option params [String] :description
    #   A short text description of the OriginEndpoint.
    #
    # @option params [HlsPackage] :hls_package
    #   An HTTP Live Streaming (HLS) packaging configuration.
    #
    # @option params [String] :id
    #   The ID of the OriginEndpoint.  The ID must be unique within the region
    #   and it cannot be changed after the OriginEndpoint is created.
    #
    # @option params [String] :manifest_name
    #   A short string that will be used as the filename of the OriginEndpoint URL (defaults to "index").
    #
    # @option params [MssPackage] :mss_package
    #   A Microsoft Smooth Streaming (MSS) packaging configuration.
    #
    # @option params [String] :origination
    #   Control whether origination of video is allowed for this OriginEndpoint. If set to ALLOW, the OriginEndpoint
    #   may by requested, pursuant to any other form of access control. If set to DENY, the OriginEndpoint may not be
    #   requested. This can be helpful for Live to VOD harvesting, or for temporarily disabling origination
    #
    # @option params [Integer] :startover_window_seconds
    #   Maximum duration (seconds) of content to retain for startover playback.
    #   If not specified, startover playback will be disabled for the OriginEndpoint.
    #
    # @option params [Hash<String, String>] :tags
    #   A collection of tags associated with a resource
    #
    # @option params [Integer] :time_delay_seconds
    #   Amount of delay (seconds) to enforce on the playback of live content.
    #   If not specified, there will be no time delay in effect for the OriginEndpoint.
    #
    # @option params [Array<String>] :whitelist
    #   A list of source IP CIDR blocks that will be allowed to access the OriginEndpoint.
    #
    # @return [Types::CreateOriginEndpointOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_origin_endpoint(
    #     authorization: {
    #       cdn_identifier_secret: 'CdnIdentifierSecret', # required
    #       secrets_role_arn: 'SecretsRoleArn' # required
    #     },
    #     channel_id: 'ChannelId', # required
    #     cmaf_package: {
    #       encryption: {
    #         constant_initialization_vector: 'ConstantInitializationVector',
    #         key_rotation_interval_seconds: 1,
    #         speke_key_provider: {
    #           certificate_arn: 'CertificateArn',
    #           encryption_contract_configuration: {
    #             preset_speke20_audio: 'PRESET-AUDIO-1', # required - accepts ["PRESET-AUDIO-1"]
    #             preset_speke20_video: 'PRESET-VIDEO-1' # required - accepts ["PRESET-VIDEO-1"]
    #           },
    #           resource_id: 'ResourceId', # required
    #           role_arn: 'RoleArn', # required
    #           system_ids: [
    #             'member'
    #           ], # required
    #           url: 'Url' # required
    #         } # required
    #       },
    #       hls_manifests: [
    #         {
    #           ad_markers: 'NONE', # accepts ["NONE", "SCTE35_ENHANCED", "PASSTHROUGH", "DATERANGE"]
    #           ad_triggers: [
    #             'SPLICE_INSERT' # accepts ["SPLICE_INSERT", "BREAK", "PROVIDER_ADVERTISEMENT", "DISTRIBUTOR_ADVERTISEMENT", "PROVIDER_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_PLACEMENT_OPPORTUNITY", "PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY"]
    #           ],
    #           ads_on_delivery_restrictions: 'NONE', # accepts ["NONE", "RESTRICTED", "UNRESTRICTED", "BOTH"]
    #           id: 'Id', # required
    #           include_iframe_only_stream: false,
    #           manifest_name: 'ManifestName',
    #           playlist_type: 'NONE', # accepts ["NONE", "EVENT", "VOD"]
    #           playlist_window_seconds: 1,
    #           program_date_time_interval_seconds: 1
    #         }
    #       ],
    #       segment_duration_seconds: 1,
    #       segment_prefix: 'SegmentPrefix',
    #       stream_selection: {
    #         max_video_bits_per_second: 1,
    #         min_video_bits_per_second: 1,
    #         stream_order: 'ORIGINAL' # accepts ["ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"]
    #       }
    #     },
    #     dash_package: {
    #       ads_on_delivery_restrictions: 'NONE', # accepts ["NONE", "RESTRICTED", "UNRESTRICTED", "BOTH"]
    #       encryption: {
    #         key_rotation_interval_seconds: 1,
    #       },
    #       manifest_layout: 'FULL', # accepts ["FULL", "COMPACT"]
    #       manifest_window_seconds: 1,
    #       min_buffer_time_seconds: 1,
    #       min_update_period_seconds: 1,
    #       period_triggers: [
    #         'ADS' # accepts ["ADS"]
    #       ],
    #       profile: 'NONE', # accepts ["NONE", "HBBTV_1_5", "HYBRIDCAST", "DVB_DASH_2014"]
    #       segment_duration_seconds: 1,
    #       segment_template_format: 'NUMBER_WITH_TIMELINE', # accepts ["NUMBER_WITH_TIMELINE", "TIME_WITH_TIMELINE", "NUMBER_WITH_DURATION"]
    #       suggested_presentation_delay_seconds: 1,
    #       utc_timing: 'NONE', # accepts ["NONE", "HTTP-HEAD", "HTTP-ISO", "HTTP-XSDATE"]
    #       utc_timing_uri: 'UtcTimingUri'
    #     },
    #     description: 'Description',
    #     hls_package: {
    #       ad_markers: 'NONE', # accepts ["NONE", "SCTE35_ENHANCED", "PASSTHROUGH", "DATERANGE"]
    #       ads_on_delivery_restrictions: 'NONE', # accepts ["NONE", "RESTRICTED", "UNRESTRICTED", "BOTH"]
    #       encryption: {
    #         constant_initialization_vector: 'ConstantInitializationVector',
    #         encryption_method: 'AES_128', # accepts ["AES_128", "SAMPLE_AES"]
    #         key_rotation_interval_seconds: 1,
    #         repeat_ext_x_key: false,
    #       },
    #       include_dvb_subtitles: false,
    #       include_iframe_only_stream: false,
    #       playlist_type: 'NONE', # accepts ["NONE", "EVENT", "VOD"]
    #       playlist_window_seconds: 1,
    #       program_date_time_interval_seconds: 1,
    #       segment_duration_seconds: 1,
    #       use_audio_rendition_group: false
    #     },
    #     id: 'Id', # required
    #     manifest_name: 'ManifestName',
    #     mss_package: {
    #       encryption: {
    #       },
    #       manifest_window_seconds: 1,
    #       segment_duration_seconds: 1,
    #     },
    #     origination: 'ALLOW', # accepts ["ALLOW", "DENY"]
    #     startover_window_seconds: 1,
    #     tags: {
    #       'key' => 'value'
    #     },
    #     time_delay_seconds: 1,
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateOriginEndpointOutput
    #   resp.data.arn #=> String
    #   resp.data.authorization #=> Types::Authorization
    #   resp.data.authorization.cdn_identifier_secret #=> String
    #   resp.data.authorization.secrets_role_arn #=> String
    #   resp.data.channel_id #=> String
    #   resp.data.cmaf_package #=> Types::CmafPackage
    #   resp.data.cmaf_package.encryption #=> Types::CmafEncryption
    #   resp.data.cmaf_package.encryption.constant_initialization_vector #=> String
    #   resp.data.cmaf_package.encryption.key_rotation_interval_seconds #=> Integer
    #   resp.data.cmaf_package.encryption.speke_key_provider #=> Types::SpekeKeyProvider
    #   resp.data.cmaf_package.encryption.speke_key_provider.certificate_arn #=> String
    #   resp.data.cmaf_package.encryption.speke_key_provider.encryption_contract_configuration #=> Types::EncryptionContractConfiguration
    #   resp.data.cmaf_package.encryption.speke_key_provider.encryption_contract_configuration.preset_speke20_audio #=> String, one of ["PRESET-AUDIO-1"]
    #   resp.data.cmaf_package.encryption.speke_key_provider.encryption_contract_configuration.preset_speke20_video #=> String, one of ["PRESET-VIDEO-1"]
    #   resp.data.cmaf_package.encryption.speke_key_provider.resource_id #=> String
    #   resp.data.cmaf_package.encryption.speke_key_provider.role_arn #=> String
    #   resp.data.cmaf_package.encryption.speke_key_provider.system_ids #=> Array<String>
    #   resp.data.cmaf_package.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.data.cmaf_package.encryption.speke_key_provider.url #=> String
    #   resp.data.cmaf_package.hls_manifests #=> Array<HlsManifest>
    #   resp.data.cmaf_package.hls_manifests[0] #=> Types::HlsManifest
    #   resp.data.cmaf_package.hls_manifests[0].ad_markers #=> String, one of ["NONE", "SCTE35_ENHANCED", "PASSTHROUGH", "DATERANGE"]
    #   resp.data.cmaf_package.hls_manifests[0].id #=> String
    #   resp.data.cmaf_package.hls_manifests[0].include_iframe_only_stream #=> Boolean
    #   resp.data.cmaf_package.hls_manifests[0].manifest_name #=> String
    #   resp.data.cmaf_package.hls_manifests[0].playlist_type #=> String, one of ["NONE", "EVENT", "VOD"]
    #   resp.data.cmaf_package.hls_manifests[0].playlist_window_seconds #=> Integer
    #   resp.data.cmaf_package.hls_manifests[0].program_date_time_interval_seconds #=> Integer
    #   resp.data.cmaf_package.hls_manifests[0].url #=> String
    #   resp.data.cmaf_package.segment_duration_seconds #=> Integer
    #   resp.data.cmaf_package.segment_prefix #=> String
    #   resp.data.cmaf_package.stream_selection #=> Types::StreamSelection
    #   resp.data.cmaf_package.stream_selection.max_video_bits_per_second #=> Integer
    #   resp.data.cmaf_package.stream_selection.min_video_bits_per_second #=> Integer
    #   resp.data.cmaf_package.stream_selection.stream_order #=> String, one of ["ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"]
    #   resp.data.dash_package #=> Types::DashPackage
    #   resp.data.dash_package.ad_triggers #=> Array<String>
    #   resp.data.dash_package.ad_triggers[0] #=> String, one of ["SPLICE_INSERT", "BREAK", "PROVIDER_ADVERTISEMENT", "DISTRIBUTOR_ADVERTISEMENT", "PROVIDER_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_PLACEMENT_OPPORTUNITY", "PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY"]
    #   resp.data.dash_package.ads_on_delivery_restrictions #=> String, one of ["NONE", "RESTRICTED", "UNRESTRICTED", "BOTH"]
    #   resp.data.dash_package.encryption #=> Types::DashEncryption
    #   resp.data.dash_package.encryption.key_rotation_interval_seconds #=> Integer
    #   resp.data.dash_package.encryption.speke_key_provider #=> Types::SpekeKeyProvider
    #   resp.data.dash_package.manifest_layout #=> String, one of ["FULL", "COMPACT"]
    #   resp.data.dash_package.manifest_window_seconds #=> Integer
    #   resp.data.dash_package.min_buffer_time_seconds #=> Integer
    #   resp.data.dash_package.min_update_period_seconds #=> Integer
    #   resp.data.dash_package.period_triggers #=> Array<String>
    #   resp.data.dash_package.period_triggers[0] #=> String, one of ["ADS"]
    #   resp.data.dash_package.profile #=> String, one of ["NONE", "HBBTV_1_5", "HYBRIDCAST", "DVB_DASH_2014"]
    #   resp.data.dash_package.segment_duration_seconds #=> Integer
    #   resp.data.dash_package.segment_template_format #=> String, one of ["NUMBER_WITH_TIMELINE", "TIME_WITH_TIMELINE", "NUMBER_WITH_DURATION"]
    #   resp.data.dash_package.stream_selection #=> Types::StreamSelection
    #   resp.data.dash_package.suggested_presentation_delay_seconds #=> Integer
    #   resp.data.dash_package.utc_timing #=> String, one of ["NONE", "HTTP-HEAD", "HTTP-ISO", "HTTP-XSDATE"]
    #   resp.data.dash_package.utc_timing_uri #=> String
    #   resp.data.description #=> String
    #   resp.data.hls_package #=> Types::HlsPackage
    #   resp.data.hls_package.ad_markers #=> String, one of ["NONE", "SCTE35_ENHANCED", "PASSTHROUGH", "DATERANGE"]
    #   resp.data.hls_package.ad_triggers #=> Array<String>
    #   resp.data.hls_package.ads_on_delivery_restrictions #=> String, one of ["NONE", "RESTRICTED", "UNRESTRICTED", "BOTH"]
    #   resp.data.hls_package.encryption #=> Types::HlsEncryption
    #   resp.data.hls_package.encryption.constant_initialization_vector #=> String
    #   resp.data.hls_package.encryption.encryption_method #=> String, one of ["AES_128", "SAMPLE_AES"]
    #   resp.data.hls_package.encryption.key_rotation_interval_seconds #=> Integer
    #   resp.data.hls_package.encryption.repeat_ext_x_key #=> Boolean
    #   resp.data.hls_package.encryption.speke_key_provider #=> Types::SpekeKeyProvider
    #   resp.data.hls_package.include_dvb_subtitles #=> Boolean
    #   resp.data.hls_package.include_iframe_only_stream #=> Boolean
    #   resp.data.hls_package.playlist_type #=> String, one of ["NONE", "EVENT", "VOD"]
    #   resp.data.hls_package.playlist_window_seconds #=> Integer
    #   resp.data.hls_package.program_date_time_interval_seconds #=> Integer
    #   resp.data.hls_package.segment_duration_seconds #=> Integer
    #   resp.data.hls_package.stream_selection #=> Types::StreamSelection
    #   resp.data.hls_package.use_audio_rendition_group #=> Boolean
    #   resp.data.id #=> String
    #   resp.data.manifest_name #=> String
    #   resp.data.mss_package #=> Types::MssPackage
    #   resp.data.mss_package.encryption #=> Types::MssEncryption
    #   resp.data.mss_package.encryption.speke_key_provider #=> Types::SpekeKeyProvider
    #   resp.data.mss_package.manifest_window_seconds #=> Integer
    #   resp.data.mss_package.segment_duration_seconds #=> Integer
    #   resp.data.mss_package.stream_selection #=> Types::StreamSelection
    #   resp.data.origination #=> String, one of ["ALLOW", "DENY"]
    #   resp.data.startover_window_seconds #=> Integer
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.time_delay_seconds #=> Integer
    #   resp.data.url #=> String
    #   resp.data.whitelist #=> Array<String>
    #
    def create_origin_endpoint(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateOriginEndpointInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateOriginEndpointInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateOriginEndpoint
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceUnavailableException, Errors::TooManyRequestsException, Errors::InternalServerErrorException, Errors::UnprocessableEntityException, Errors::ForbiddenException, Errors::NotFoundException]),
        data_parser: Parsers::CreateOriginEndpoint
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateOriginEndpoint,
        stubs: @stubs,
        params_class: Params::CreateOriginEndpointOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_origin_endpoint
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Deletes an existing Channel.
    #
    # @param [Hash] params
    #   See {Types::DeleteChannelInput}.
    #
    # @option params [String] :id
    #   The ID of the Channel to delete.
    #
    # @return [Types::DeleteChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_channel(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteChannelOutput
    #
    def delete_channel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteChannelInput.build(params)
      response_body = ::StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::ServiceUnavailableException, Errors::TooManyRequestsException, Errors::InternalServerErrorException, Errors::UnprocessableEntityException, Errors::ForbiddenException, Errors::NotFoundException]),
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

    # Deletes an existing OriginEndpoint.
    #
    # @param [Hash] params
    #   See {Types::DeleteOriginEndpointInput}.
    #
    # @option params [String] :id
    #   The ID of the OriginEndpoint to delete.
    #
    # @return [Types::DeleteOriginEndpointOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_origin_endpoint(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteOriginEndpointOutput
    #
    def delete_origin_endpoint(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteOriginEndpointInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteOriginEndpointInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteOriginEndpoint
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::ServiceUnavailableException, Errors::TooManyRequestsException, Errors::InternalServerErrorException, Errors::UnprocessableEntityException, Errors::ForbiddenException, Errors::NotFoundException]),
        data_parser: Parsers::DeleteOriginEndpoint
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteOriginEndpoint,
        stubs: @stubs,
        params_class: Params::DeleteOriginEndpointOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_origin_endpoint
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Gets details about a Channel.
    #
    # @param [Hash] params
    #   See {Types::DescribeChannelInput}.
    #
    # @option params [String] :id
    #   The ID of a Channel.
    #
    # @return [Types::DescribeChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_channel(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeChannelOutput
    #   resp.data.arn #=> String
    #   resp.data.description #=> String
    #   resp.data.egress_access_logs #=> Types::EgressAccessLogs
    #   resp.data.egress_access_logs.log_group_name #=> String
    #   resp.data.hls_ingest #=> Types::HlsIngest
    #   resp.data.hls_ingest.ingest_endpoints #=> Array<IngestEndpoint>
    #   resp.data.hls_ingest.ingest_endpoints[0] #=> Types::IngestEndpoint
    #   resp.data.hls_ingest.ingest_endpoints[0].id #=> String
    #   resp.data.hls_ingest.ingest_endpoints[0].password #=> String
    #   resp.data.hls_ingest.ingest_endpoints[0].url #=> String
    #   resp.data.hls_ingest.ingest_endpoints[0].username #=> String
    #   resp.data.id #=> String
    #   resp.data.ingress_access_logs #=> Types::IngressAccessLogs
    #   resp.data.ingress_access_logs.log_group_name #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def describe_channel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeChannelInput.build(params)
      response_body = ::StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceUnavailableException, Errors::TooManyRequestsException, Errors::InternalServerErrorException, Errors::UnprocessableEntityException, Errors::ForbiddenException, Errors::NotFoundException]),
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

    # Gets details about an existing HarvestJob.
    #
    # @param [Hash] params
    #   See {Types::DescribeHarvestJobInput}.
    #
    # @option params [String] :id
    #   The ID of the HarvestJob.
    #
    # @return [Types::DescribeHarvestJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_harvest_job(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeHarvestJobOutput
    #   resp.data.arn #=> String
    #   resp.data.channel_id #=> String
    #   resp.data.created_at #=> String
    #   resp.data.end_time #=> String
    #   resp.data.id #=> String
    #   resp.data.origin_endpoint_id #=> String
    #   resp.data.s3_destination #=> Types::S3Destination
    #   resp.data.s3_destination.bucket_name #=> String
    #   resp.data.s3_destination.manifest_key #=> String
    #   resp.data.s3_destination.role_arn #=> String
    #   resp.data.start_time #=> String
    #   resp.data.status #=> String, one of ["IN_PROGRESS", "SUCCEEDED", "FAILED"]
    #
    def describe_harvest_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeHarvestJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeHarvestJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeHarvestJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceUnavailableException, Errors::TooManyRequestsException, Errors::InternalServerErrorException, Errors::UnprocessableEntityException, Errors::ForbiddenException, Errors::NotFoundException]),
        data_parser: Parsers::DescribeHarvestJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeHarvestJob,
        stubs: @stubs,
        params_class: Params::DescribeHarvestJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_harvest_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Gets details about an existing OriginEndpoint.
    #
    # @param [Hash] params
    #   See {Types::DescribeOriginEndpointInput}.
    #
    # @option params [String] :id
    #   The ID of the OriginEndpoint.
    #
    # @return [Types::DescribeOriginEndpointOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_origin_endpoint(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeOriginEndpointOutput
    #   resp.data.arn #=> String
    #   resp.data.authorization #=> Types::Authorization
    #   resp.data.authorization.cdn_identifier_secret #=> String
    #   resp.data.authorization.secrets_role_arn #=> String
    #   resp.data.channel_id #=> String
    #   resp.data.cmaf_package #=> Types::CmafPackage
    #   resp.data.cmaf_package.encryption #=> Types::CmafEncryption
    #   resp.data.cmaf_package.encryption.constant_initialization_vector #=> String
    #   resp.data.cmaf_package.encryption.key_rotation_interval_seconds #=> Integer
    #   resp.data.cmaf_package.encryption.speke_key_provider #=> Types::SpekeKeyProvider
    #   resp.data.cmaf_package.encryption.speke_key_provider.certificate_arn #=> String
    #   resp.data.cmaf_package.encryption.speke_key_provider.encryption_contract_configuration #=> Types::EncryptionContractConfiguration
    #   resp.data.cmaf_package.encryption.speke_key_provider.encryption_contract_configuration.preset_speke20_audio #=> String, one of ["PRESET-AUDIO-1"]
    #   resp.data.cmaf_package.encryption.speke_key_provider.encryption_contract_configuration.preset_speke20_video #=> String, one of ["PRESET-VIDEO-1"]
    #   resp.data.cmaf_package.encryption.speke_key_provider.resource_id #=> String
    #   resp.data.cmaf_package.encryption.speke_key_provider.role_arn #=> String
    #   resp.data.cmaf_package.encryption.speke_key_provider.system_ids #=> Array<String>
    #   resp.data.cmaf_package.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.data.cmaf_package.encryption.speke_key_provider.url #=> String
    #   resp.data.cmaf_package.hls_manifests #=> Array<HlsManifest>
    #   resp.data.cmaf_package.hls_manifests[0] #=> Types::HlsManifest
    #   resp.data.cmaf_package.hls_manifests[0].ad_markers #=> String, one of ["NONE", "SCTE35_ENHANCED", "PASSTHROUGH", "DATERANGE"]
    #   resp.data.cmaf_package.hls_manifests[0].id #=> String
    #   resp.data.cmaf_package.hls_manifests[0].include_iframe_only_stream #=> Boolean
    #   resp.data.cmaf_package.hls_manifests[0].manifest_name #=> String
    #   resp.data.cmaf_package.hls_manifests[0].playlist_type #=> String, one of ["NONE", "EVENT", "VOD"]
    #   resp.data.cmaf_package.hls_manifests[0].playlist_window_seconds #=> Integer
    #   resp.data.cmaf_package.hls_manifests[0].program_date_time_interval_seconds #=> Integer
    #   resp.data.cmaf_package.hls_manifests[0].url #=> String
    #   resp.data.cmaf_package.segment_duration_seconds #=> Integer
    #   resp.data.cmaf_package.segment_prefix #=> String
    #   resp.data.cmaf_package.stream_selection #=> Types::StreamSelection
    #   resp.data.cmaf_package.stream_selection.max_video_bits_per_second #=> Integer
    #   resp.data.cmaf_package.stream_selection.min_video_bits_per_second #=> Integer
    #   resp.data.cmaf_package.stream_selection.stream_order #=> String, one of ["ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"]
    #   resp.data.dash_package #=> Types::DashPackage
    #   resp.data.dash_package.ad_triggers #=> Array<String>
    #   resp.data.dash_package.ad_triggers[0] #=> String, one of ["SPLICE_INSERT", "BREAK", "PROVIDER_ADVERTISEMENT", "DISTRIBUTOR_ADVERTISEMENT", "PROVIDER_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_PLACEMENT_OPPORTUNITY", "PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY"]
    #   resp.data.dash_package.ads_on_delivery_restrictions #=> String, one of ["NONE", "RESTRICTED", "UNRESTRICTED", "BOTH"]
    #   resp.data.dash_package.encryption #=> Types::DashEncryption
    #   resp.data.dash_package.encryption.key_rotation_interval_seconds #=> Integer
    #   resp.data.dash_package.encryption.speke_key_provider #=> Types::SpekeKeyProvider
    #   resp.data.dash_package.manifest_layout #=> String, one of ["FULL", "COMPACT"]
    #   resp.data.dash_package.manifest_window_seconds #=> Integer
    #   resp.data.dash_package.min_buffer_time_seconds #=> Integer
    #   resp.data.dash_package.min_update_period_seconds #=> Integer
    #   resp.data.dash_package.period_triggers #=> Array<String>
    #   resp.data.dash_package.period_triggers[0] #=> String, one of ["ADS"]
    #   resp.data.dash_package.profile #=> String, one of ["NONE", "HBBTV_1_5", "HYBRIDCAST", "DVB_DASH_2014"]
    #   resp.data.dash_package.segment_duration_seconds #=> Integer
    #   resp.data.dash_package.segment_template_format #=> String, one of ["NUMBER_WITH_TIMELINE", "TIME_WITH_TIMELINE", "NUMBER_WITH_DURATION"]
    #   resp.data.dash_package.stream_selection #=> Types::StreamSelection
    #   resp.data.dash_package.suggested_presentation_delay_seconds #=> Integer
    #   resp.data.dash_package.utc_timing #=> String, one of ["NONE", "HTTP-HEAD", "HTTP-ISO", "HTTP-XSDATE"]
    #   resp.data.dash_package.utc_timing_uri #=> String
    #   resp.data.description #=> String
    #   resp.data.hls_package #=> Types::HlsPackage
    #   resp.data.hls_package.ad_markers #=> String, one of ["NONE", "SCTE35_ENHANCED", "PASSTHROUGH", "DATERANGE"]
    #   resp.data.hls_package.ad_triggers #=> Array<String>
    #   resp.data.hls_package.ads_on_delivery_restrictions #=> String, one of ["NONE", "RESTRICTED", "UNRESTRICTED", "BOTH"]
    #   resp.data.hls_package.encryption #=> Types::HlsEncryption
    #   resp.data.hls_package.encryption.constant_initialization_vector #=> String
    #   resp.data.hls_package.encryption.encryption_method #=> String, one of ["AES_128", "SAMPLE_AES"]
    #   resp.data.hls_package.encryption.key_rotation_interval_seconds #=> Integer
    #   resp.data.hls_package.encryption.repeat_ext_x_key #=> Boolean
    #   resp.data.hls_package.encryption.speke_key_provider #=> Types::SpekeKeyProvider
    #   resp.data.hls_package.include_dvb_subtitles #=> Boolean
    #   resp.data.hls_package.include_iframe_only_stream #=> Boolean
    #   resp.data.hls_package.playlist_type #=> String, one of ["NONE", "EVENT", "VOD"]
    #   resp.data.hls_package.playlist_window_seconds #=> Integer
    #   resp.data.hls_package.program_date_time_interval_seconds #=> Integer
    #   resp.data.hls_package.segment_duration_seconds #=> Integer
    #   resp.data.hls_package.stream_selection #=> Types::StreamSelection
    #   resp.data.hls_package.use_audio_rendition_group #=> Boolean
    #   resp.data.id #=> String
    #   resp.data.manifest_name #=> String
    #   resp.data.mss_package #=> Types::MssPackage
    #   resp.data.mss_package.encryption #=> Types::MssEncryption
    #   resp.data.mss_package.encryption.speke_key_provider #=> Types::SpekeKeyProvider
    #   resp.data.mss_package.manifest_window_seconds #=> Integer
    #   resp.data.mss_package.segment_duration_seconds #=> Integer
    #   resp.data.mss_package.stream_selection #=> Types::StreamSelection
    #   resp.data.origination #=> String, one of ["ALLOW", "DENY"]
    #   resp.data.startover_window_seconds #=> Integer
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.time_delay_seconds #=> Integer
    #   resp.data.url #=> String
    #   resp.data.whitelist #=> Array<String>
    #
    def describe_origin_endpoint(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeOriginEndpointInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeOriginEndpointInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeOriginEndpoint
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceUnavailableException, Errors::TooManyRequestsException, Errors::InternalServerErrorException, Errors::UnprocessableEntityException, Errors::ForbiddenException, Errors::NotFoundException]),
        data_parser: Parsers::DescribeOriginEndpoint
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeOriginEndpoint,
        stubs: @stubs,
        params_class: Params::DescribeOriginEndpointOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_origin_endpoint
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Returns a collection of Channels.
    #
    # @param [Hash] params
    #   See {Types::ListChannelsInput}.
    #
    # @option params [Integer] :max_results
    #   Upper bound on number of records to return.
    #
    # @option params [String] :next_token
    #   A token used to resume pagination from the end of a previous request.
    #
    # @return [Types::ListChannelsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_channels(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListChannelsOutput
    #   resp.data.channels #=> Array<Channel>
    #   resp.data.channels[0] #=> Types::Channel
    #   resp.data.channels[0].arn #=> String
    #   resp.data.channels[0].description #=> String
    #   resp.data.channels[0].egress_access_logs #=> Types::EgressAccessLogs
    #   resp.data.channels[0].egress_access_logs.log_group_name #=> String
    #   resp.data.channels[0].hls_ingest #=> Types::HlsIngest
    #   resp.data.channels[0].hls_ingest.ingest_endpoints #=> Array<IngestEndpoint>
    #   resp.data.channels[0].hls_ingest.ingest_endpoints[0] #=> Types::IngestEndpoint
    #   resp.data.channels[0].hls_ingest.ingest_endpoints[0].id #=> String
    #   resp.data.channels[0].hls_ingest.ingest_endpoints[0].password #=> String
    #   resp.data.channels[0].hls_ingest.ingest_endpoints[0].url #=> String
    #   resp.data.channels[0].hls_ingest.ingest_endpoints[0].username #=> String
    #   resp.data.channels[0].id #=> String
    #   resp.data.channels[0].ingress_access_logs #=> Types::IngressAccessLogs
    #   resp.data.channels[0].ingress_access_logs.log_group_name #=> String
    #   resp.data.channels[0].tags #=> Hash<String, String>
    #   resp.data.channels[0].tags['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def list_channels(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListChannelsInput.build(params)
      response_body = ::StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceUnavailableException, Errors::TooManyRequestsException, Errors::InternalServerErrorException, Errors::UnprocessableEntityException, Errors::ForbiddenException, Errors::NotFoundException]),
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

    # Returns a collection of HarvestJob records.
    #
    # @param [Hash] params
    #   See {Types::ListHarvestJobsInput}.
    #
    # @option params [String] :include_channel_id
    #   When specified, the request will return only HarvestJobs associated with the given Channel ID.
    #
    # @option params [String] :include_status
    #   When specified, the request will return only HarvestJobs in the given status.
    #
    # @option params [Integer] :max_results
    #   The upper bound on the number of records to return.
    #
    # @option params [String] :next_token
    #   A token used to resume pagination from the end of a previous request.
    #
    # @return [Types::ListHarvestJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_harvest_jobs(
    #     include_channel_id: 'IncludeChannelId',
    #     include_status: 'IncludeStatus',
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListHarvestJobsOutput
    #   resp.data.harvest_jobs #=> Array<HarvestJob>
    #   resp.data.harvest_jobs[0] #=> Types::HarvestJob
    #   resp.data.harvest_jobs[0].arn #=> String
    #   resp.data.harvest_jobs[0].channel_id #=> String
    #   resp.data.harvest_jobs[0].created_at #=> String
    #   resp.data.harvest_jobs[0].end_time #=> String
    #   resp.data.harvest_jobs[0].id #=> String
    #   resp.data.harvest_jobs[0].origin_endpoint_id #=> String
    #   resp.data.harvest_jobs[0].s3_destination #=> Types::S3Destination
    #   resp.data.harvest_jobs[0].s3_destination.bucket_name #=> String
    #   resp.data.harvest_jobs[0].s3_destination.manifest_key #=> String
    #   resp.data.harvest_jobs[0].s3_destination.role_arn #=> String
    #   resp.data.harvest_jobs[0].start_time #=> String
    #   resp.data.harvest_jobs[0].status #=> String, one of ["IN_PROGRESS", "SUCCEEDED", "FAILED"]
    #   resp.data.next_token #=> String
    #
    def list_harvest_jobs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListHarvestJobsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListHarvestJobsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListHarvestJobs
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceUnavailableException, Errors::TooManyRequestsException, Errors::InternalServerErrorException, Errors::UnprocessableEntityException, Errors::ForbiddenException, Errors::NotFoundException]),
        data_parser: Parsers::ListHarvestJobs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListHarvestJobs,
        stubs: @stubs,
        params_class: Params::ListHarvestJobsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_harvest_jobs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Returns a collection of OriginEndpoint records.
    #
    # @param [Hash] params
    #   See {Types::ListOriginEndpointsInput}.
    #
    # @option params [String] :channel_id
    #   When specified, the request will return only OriginEndpoints associated with the given Channel ID.
    #
    # @option params [Integer] :max_results
    #   The upper bound on the number of records to return.
    #
    # @option params [String] :next_token
    #   A token used to resume pagination from the end of a previous request.
    #
    # @return [Types::ListOriginEndpointsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_origin_endpoints(
    #     channel_id: 'ChannelId',
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListOriginEndpointsOutput
    #   resp.data.next_token #=> String
    #   resp.data.origin_endpoints #=> Array<OriginEndpoint>
    #   resp.data.origin_endpoints[0] #=> Types::OriginEndpoint
    #   resp.data.origin_endpoints[0].arn #=> String
    #   resp.data.origin_endpoints[0].authorization #=> Types::Authorization
    #   resp.data.origin_endpoints[0].authorization.cdn_identifier_secret #=> String
    #   resp.data.origin_endpoints[0].authorization.secrets_role_arn #=> String
    #   resp.data.origin_endpoints[0].channel_id #=> String
    #   resp.data.origin_endpoints[0].cmaf_package #=> Types::CmafPackage
    #   resp.data.origin_endpoints[0].cmaf_package.encryption #=> Types::CmafEncryption
    #   resp.data.origin_endpoints[0].cmaf_package.encryption.constant_initialization_vector #=> String
    #   resp.data.origin_endpoints[0].cmaf_package.encryption.key_rotation_interval_seconds #=> Integer
    #   resp.data.origin_endpoints[0].cmaf_package.encryption.speke_key_provider #=> Types::SpekeKeyProvider
    #   resp.data.origin_endpoints[0].cmaf_package.encryption.speke_key_provider.certificate_arn #=> String
    #   resp.data.origin_endpoints[0].cmaf_package.encryption.speke_key_provider.encryption_contract_configuration #=> Types::EncryptionContractConfiguration
    #   resp.data.origin_endpoints[0].cmaf_package.encryption.speke_key_provider.encryption_contract_configuration.preset_speke20_audio #=> String, one of ["PRESET-AUDIO-1"]
    #   resp.data.origin_endpoints[0].cmaf_package.encryption.speke_key_provider.encryption_contract_configuration.preset_speke20_video #=> String, one of ["PRESET-VIDEO-1"]
    #   resp.data.origin_endpoints[0].cmaf_package.encryption.speke_key_provider.resource_id #=> String
    #   resp.data.origin_endpoints[0].cmaf_package.encryption.speke_key_provider.role_arn #=> String
    #   resp.data.origin_endpoints[0].cmaf_package.encryption.speke_key_provider.system_ids #=> Array<String>
    #   resp.data.origin_endpoints[0].cmaf_package.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.data.origin_endpoints[0].cmaf_package.encryption.speke_key_provider.url #=> String
    #   resp.data.origin_endpoints[0].cmaf_package.hls_manifests #=> Array<HlsManifest>
    #   resp.data.origin_endpoints[0].cmaf_package.hls_manifests[0] #=> Types::HlsManifest
    #   resp.data.origin_endpoints[0].cmaf_package.hls_manifests[0].ad_markers #=> String, one of ["NONE", "SCTE35_ENHANCED", "PASSTHROUGH", "DATERANGE"]
    #   resp.data.origin_endpoints[0].cmaf_package.hls_manifests[0].id #=> String
    #   resp.data.origin_endpoints[0].cmaf_package.hls_manifests[0].include_iframe_only_stream #=> Boolean
    #   resp.data.origin_endpoints[0].cmaf_package.hls_manifests[0].manifest_name #=> String
    #   resp.data.origin_endpoints[0].cmaf_package.hls_manifests[0].playlist_type #=> String, one of ["NONE", "EVENT", "VOD"]
    #   resp.data.origin_endpoints[0].cmaf_package.hls_manifests[0].playlist_window_seconds #=> Integer
    #   resp.data.origin_endpoints[0].cmaf_package.hls_manifests[0].program_date_time_interval_seconds #=> Integer
    #   resp.data.origin_endpoints[0].cmaf_package.hls_manifests[0].url #=> String
    #   resp.data.origin_endpoints[0].cmaf_package.segment_duration_seconds #=> Integer
    #   resp.data.origin_endpoints[0].cmaf_package.segment_prefix #=> String
    #   resp.data.origin_endpoints[0].cmaf_package.stream_selection #=> Types::StreamSelection
    #   resp.data.origin_endpoints[0].cmaf_package.stream_selection.max_video_bits_per_second #=> Integer
    #   resp.data.origin_endpoints[0].cmaf_package.stream_selection.min_video_bits_per_second #=> Integer
    #   resp.data.origin_endpoints[0].cmaf_package.stream_selection.stream_order #=> String, one of ["ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"]
    #   resp.data.origin_endpoints[0].dash_package #=> Types::DashPackage
    #   resp.data.origin_endpoints[0].dash_package.ad_triggers #=> Array<String>
    #   resp.data.origin_endpoints[0].dash_package.ad_triggers[0] #=> String, one of ["SPLICE_INSERT", "BREAK", "PROVIDER_ADVERTISEMENT", "DISTRIBUTOR_ADVERTISEMENT", "PROVIDER_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_PLACEMENT_OPPORTUNITY", "PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY"]
    #   resp.data.origin_endpoints[0].dash_package.ads_on_delivery_restrictions #=> String, one of ["NONE", "RESTRICTED", "UNRESTRICTED", "BOTH"]
    #   resp.data.origin_endpoints[0].dash_package.encryption #=> Types::DashEncryption
    #   resp.data.origin_endpoints[0].dash_package.encryption.key_rotation_interval_seconds #=> Integer
    #   resp.data.origin_endpoints[0].dash_package.encryption.speke_key_provider #=> Types::SpekeKeyProvider
    #   resp.data.origin_endpoints[0].dash_package.manifest_layout #=> String, one of ["FULL", "COMPACT"]
    #   resp.data.origin_endpoints[0].dash_package.manifest_window_seconds #=> Integer
    #   resp.data.origin_endpoints[0].dash_package.min_buffer_time_seconds #=> Integer
    #   resp.data.origin_endpoints[0].dash_package.min_update_period_seconds #=> Integer
    #   resp.data.origin_endpoints[0].dash_package.period_triggers #=> Array<String>
    #   resp.data.origin_endpoints[0].dash_package.period_triggers[0] #=> String, one of ["ADS"]
    #   resp.data.origin_endpoints[0].dash_package.profile #=> String, one of ["NONE", "HBBTV_1_5", "HYBRIDCAST", "DVB_DASH_2014"]
    #   resp.data.origin_endpoints[0].dash_package.segment_duration_seconds #=> Integer
    #   resp.data.origin_endpoints[0].dash_package.segment_template_format #=> String, one of ["NUMBER_WITH_TIMELINE", "TIME_WITH_TIMELINE", "NUMBER_WITH_DURATION"]
    #   resp.data.origin_endpoints[0].dash_package.stream_selection #=> Types::StreamSelection
    #   resp.data.origin_endpoints[0].dash_package.suggested_presentation_delay_seconds #=> Integer
    #   resp.data.origin_endpoints[0].dash_package.utc_timing #=> String, one of ["NONE", "HTTP-HEAD", "HTTP-ISO", "HTTP-XSDATE"]
    #   resp.data.origin_endpoints[0].dash_package.utc_timing_uri #=> String
    #   resp.data.origin_endpoints[0].description #=> String
    #   resp.data.origin_endpoints[0].hls_package #=> Types::HlsPackage
    #   resp.data.origin_endpoints[0].hls_package.ad_markers #=> String, one of ["NONE", "SCTE35_ENHANCED", "PASSTHROUGH", "DATERANGE"]
    #   resp.data.origin_endpoints[0].hls_package.ad_triggers #=> Array<String>
    #   resp.data.origin_endpoints[0].hls_package.ads_on_delivery_restrictions #=> String, one of ["NONE", "RESTRICTED", "UNRESTRICTED", "BOTH"]
    #   resp.data.origin_endpoints[0].hls_package.encryption #=> Types::HlsEncryption
    #   resp.data.origin_endpoints[0].hls_package.encryption.constant_initialization_vector #=> String
    #   resp.data.origin_endpoints[0].hls_package.encryption.encryption_method #=> String, one of ["AES_128", "SAMPLE_AES"]
    #   resp.data.origin_endpoints[0].hls_package.encryption.key_rotation_interval_seconds #=> Integer
    #   resp.data.origin_endpoints[0].hls_package.encryption.repeat_ext_x_key #=> Boolean
    #   resp.data.origin_endpoints[0].hls_package.encryption.speke_key_provider #=> Types::SpekeKeyProvider
    #   resp.data.origin_endpoints[0].hls_package.include_dvb_subtitles #=> Boolean
    #   resp.data.origin_endpoints[0].hls_package.include_iframe_only_stream #=> Boolean
    #   resp.data.origin_endpoints[0].hls_package.playlist_type #=> String, one of ["NONE", "EVENT", "VOD"]
    #   resp.data.origin_endpoints[0].hls_package.playlist_window_seconds #=> Integer
    #   resp.data.origin_endpoints[0].hls_package.program_date_time_interval_seconds #=> Integer
    #   resp.data.origin_endpoints[0].hls_package.segment_duration_seconds #=> Integer
    #   resp.data.origin_endpoints[0].hls_package.stream_selection #=> Types::StreamSelection
    #   resp.data.origin_endpoints[0].hls_package.use_audio_rendition_group #=> Boolean
    #   resp.data.origin_endpoints[0].id #=> String
    #   resp.data.origin_endpoints[0].manifest_name #=> String
    #   resp.data.origin_endpoints[0].mss_package #=> Types::MssPackage
    #   resp.data.origin_endpoints[0].mss_package.encryption #=> Types::MssEncryption
    #   resp.data.origin_endpoints[0].mss_package.encryption.speke_key_provider #=> Types::SpekeKeyProvider
    #   resp.data.origin_endpoints[0].mss_package.manifest_window_seconds #=> Integer
    #   resp.data.origin_endpoints[0].mss_package.segment_duration_seconds #=> Integer
    #   resp.data.origin_endpoints[0].mss_package.stream_selection #=> Types::StreamSelection
    #   resp.data.origin_endpoints[0].origination #=> String, one of ["ALLOW", "DENY"]
    #   resp.data.origin_endpoints[0].startover_window_seconds #=> Integer
    #   resp.data.origin_endpoints[0].tags #=> Hash<String, String>
    #   resp.data.origin_endpoints[0].tags['key'] #=> String
    #   resp.data.origin_endpoints[0].time_delay_seconds #=> Integer
    #   resp.data.origin_endpoints[0].url #=> String
    #   resp.data.origin_endpoints[0].whitelist #=> Array<String>
    #
    def list_origin_endpoints(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListOriginEndpointsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListOriginEndpointsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListOriginEndpoints
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceUnavailableException, Errors::TooManyRequestsException, Errors::InternalServerErrorException, Errors::UnprocessableEntityException, Errors::ForbiddenException, Errors::NotFoundException]),
        data_parser: Parsers::ListOriginEndpoints
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListOriginEndpoints,
        stubs: @stubs,
        params_class: Params::ListOriginEndpointsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_origin_endpoints
        )
      )
      raise resp.error if resp.error
      resp
    end

    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
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

    # Changes the Channel's first IngestEndpoint's username and password. WARNING - This API is deprecated. Please use RotateIngestEndpointCredentials instead
    #
    # @deprecated
    #   This API is deprecated. Please use RotateIngestEndpointCredentials instead
    #
    # @param [Hash] params
    #   See {Types::RotateChannelCredentialsInput}.
    #
    # @option params [String] :id
    #   The ID of the channel to update.
    #
    # @return [Types::RotateChannelCredentialsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.rotate_channel_credentials(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RotateChannelCredentialsOutput
    #   resp.data.arn #=> String
    #   resp.data.description #=> String
    #   resp.data.egress_access_logs #=> Types::EgressAccessLogs
    #   resp.data.egress_access_logs.log_group_name #=> String
    #   resp.data.hls_ingest #=> Types::HlsIngest
    #   resp.data.hls_ingest.ingest_endpoints #=> Array<IngestEndpoint>
    #   resp.data.hls_ingest.ingest_endpoints[0] #=> Types::IngestEndpoint
    #   resp.data.hls_ingest.ingest_endpoints[0].id #=> String
    #   resp.data.hls_ingest.ingest_endpoints[0].password #=> String
    #   resp.data.hls_ingest.ingest_endpoints[0].url #=> String
    #   resp.data.hls_ingest.ingest_endpoints[0].username #=> String
    #   resp.data.id #=> String
    #   resp.data.ingress_access_logs #=> Types::IngressAccessLogs
    #   resp.data.ingress_access_logs.log_group_name #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def rotate_channel_credentials(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RotateChannelCredentialsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RotateChannelCredentialsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RotateChannelCredentials
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceUnavailableException, Errors::TooManyRequestsException, Errors::InternalServerErrorException, Errors::UnprocessableEntityException, Errors::ForbiddenException, Errors::NotFoundException]),
        data_parser: Parsers::RotateChannelCredentials
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RotateChannelCredentials,
        stubs: @stubs,
        params_class: Params::RotateChannelCredentialsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :rotate_channel_credentials
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Rotate the IngestEndpoint's username and password, as specified by the IngestEndpoint's id.
    #
    # @param [Hash] params
    #   See {Types::RotateIngestEndpointCredentialsInput}.
    #
    # @option params [String] :id
    #   The ID of the channel the IngestEndpoint is on.
    #
    # @option params [String] :ingest_endpoint_id
    #   The id of the IngestEndpoint whose credentials should be rotated
    #
    # @return [Types::RotateIngestEndpointCredentialsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.rotate_ingest_endpoint_credentials(
    #     id: 'Id', # required
    #     ingest_endpoint_id: 'IngestEndpointId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RotateIngestEndpointCredentialsOutput
    #   resp.data.arn #=> String
    #   resp.data.description #=> String
    #   resp.data.egress_access_logs #=> Types::EgressAccessLogs
    #   resp.data.egress_access_logs.log_group_name #=> String
    #   resp.data.hls_ingest #=> Types::HlsIngest
    #   resp.data.hls_ingest.ingest_endpoints #=> Array<IngestEndpoint>
    #   resp.data.hls_ingest.ingest_endpoints[0] #=> Types::IngestEndpoint
    #   resp.data.hls_ingest.ingest_endpoints[0].id #=> String
    #   resp.data.hls_ingest.ingest_endpoints[0].password #=> String
    #   resp.data.hls_ingest.ingest_endpoints[0].url #=> String
    #   resp.data.hls_ingest.ingest_endpoints[0].username #=> String
    #   resp.data.id #=> String
    #   resp.data.ingress_access_logs #=> Types::IngressAccessLogs
    #   resp.data.ingress_access_logs.log_group_name #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def rotate_ingest_endpoint_credentials(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RotateIngestEndpointCredentialsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RotateIngestEndpointCredentialsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RotateIngestEndpointCredentials
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceUnavailableException, Errors::TooManyRequestsException, Errors::InternalServerErrorException, Errors::UnprocessableEntityException, Errors::ForbiddenException, Errors::NotFoundException]),
        data_parser: Parsers::RotateIngestEndpointCredentials
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RotateIngestEndpointCredentials,
        stubs: @stubs,
        params_class: Params::RotateIngestEndpointCredentialsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :rotate_ingest_endpoint_credentials
        )
      )
      raise resp.error if resp.error
      resp
    end

    # @param [Hash] params
    #   See {Types::TagResourceInput}.
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: []),
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

    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [Array<String>] :tag_keys
    #   The key(s) of tag to be deleted
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: []),
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

    # Updates an existing Channel.
    #
    # @param [Hash] params
    #   See {Types::UpdateChannelInput}.
    #
    # @option params [String] :description
    #   A short text description of the Channel.
    #
    # @option params [String] :id
    #   The ID of the Channel to update.
    #
    # @return [Types::UpdateChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_channel(
    #     description: 'Description',
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateChannelOutput
    #   resp.data.arn #=> String
    #   resp.data.description #=> String
    #   resp.data.egress_access_logs #=> Types::EgressAccessLogs
    #   resp.data.egress_access_logs.log_group_name #=> String
    #   resp.data.hls_ingest #=> Types::HlsIngest
    #   resp.data.hls_ingest.ingest_endpoints #=> Array<IngestEndpoint>
    #   resp.data.hls_ingest.ingest_endpoints[0] #=> Types::IngestEndpoint
    #   resp.data.hls_ingest.ingest_endpoints[0].id #=> String
    #   resp.data.hls_ingest.ingest_endpoints[0].password #=> String
    #   resp.data.hls_ingest.ingest_endpoints[0].url #=> String
    #   resp.data.hls_ingest.ingest_endpoints[0].username #=> String
    #   resp.data.id #=> String
    #   resp.data.ingress_access_logs #=> Types::IngressAccessLogs
    #   resp.data.ingress_access_logs.log_group_name #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def update_channel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateChannelInput.build(params)
      response_body = ::StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceUnavailableException, Errors::TooManyRequestsException, Errors::InternalServerErrorException, Errors::UnprocessableEntityException, Errors::ForbiddenException, Errors::NotFoundException]),
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

    # Updates an existing OriginEndpoint.
    #
    # @param [Hash] params
    #   See {Types::UpdateOriginEndpointInput}.
    #
    # @option params [Authorization] :authorization
    #   CDN Authorization credentials
    #
    # @option params [CmafPackageCreateOrUpdateParameters] :cmaf_package
    #   A Common Media Application Format (CMAF) packaging configuration.
    #
    # @option params [DashPackage] :dash_package
    #   A Dynamic Adaptive Streaming over HTTP (DASH) packaging configuration.
    #
    # @option params [String] :description
    #   A short text description of the OriginEndpoint.
    #
    # @option params [HlsPackage] :hls_package
    #   An HTTP Live Streaming (HLS) packaging configuration.
    #
    # @option params [String] :id
    #   The ID of the OriginEndpoint to update.
    #
    # @option params [String] :manifest_name
    #   A short string that will be appended to the end of the Endpoint URL.
    #
    # @option params [MssPackage] :mss_package
    #   A Microsoft Smooth Streaming (MSS) packaging configuration.
    #
    # @option params [String] :origination
    #   Control whether origination of video is allowed for this OriginEndpoint. If set to ALLOW, the OriginEndpoint
    #   may by requested, pursuant to any other form of access control. If set to DENY, the OriginEndpoint may not be
    #   requested. This can be helpful for Live to VOD harvesting, or for temporarily disabling origination
    #
    # @option params [Integer] :startover_window_seconds
    #   Maximum duration (in seconds) of content to retain for startover playback.
    #   If not specified, startover playback will be disabled for the OriginEndpoint.
    #
    # @option params [Integer] :time_delay_seconds
    #   Amount of delay (in seconds) to enforce on the playback of live content.
    #   If not specified, there will be no time delay in effect for the OriginEndpoint.
    #
    # @option params [Array<String>] :whitelist
    #   A list of source IP CIDR blocks that will be allowed to access the OriginEndpoint.
    #
    # @return [Types::UpdateOriginEndpointOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_origin_endpoint(
    #     authorization: {
    #       cdn_identifier_secret: 'CdnIdentifierSecret', # required
    #       secrets_role_arn: 'SecretsRoleArn' # required
    #     },
    #     cmaf_package: {
    #       encryption: {
    #         constant_initialization_vector: 'ConstantInitializationVector',
    #         key_rotation_interval_seconds: 1,
    #         speke_key_provider: {
    #           certificate_arn: 'CertificateArn',
    #           encryption_contract_configuration: {
    #             preset_speke20_audio: 'PRESET-AUDIO-1', # required - accepts ["PRESET-AUDIO-1"]
    #             preset_speke20_video: 'PRESET-VIDEO-1' # required - accepts ["PRESET-VIDEO-1"]
    #           },
    #           resource_id: 'ResourceId', # required
    #           role_arn: 'RoleArn', # required
    #           system_ids: [
    #             'member'
    #           ], # required
    #           url: 'Url' # required
    #         } # required
    #       },
    #       hls_manifests: [
    #         {
    #           ad_markers: 'NONE', # accepts ["NONE", "SCTE35_ENHANCED", "PASSTHROUGH", "DATERANGE"]
    #           ad_triggers: [
    #             'SPLICE_INSERT' # accepts ["SPLICE_INSERT", "BREAK", "PROVIDER_ADVERTISEMENT", "DISTRIBUTOR_ADVERTISEMENT", "PROVIDER_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_PLACEMENT_OPPORTUNITY", "PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY"]
    #           ],
    #           ads_on_delivery_restrictions: 'NONE', # accepts ["NONE", "RESTRICTED", "UNRESTRICTED", "BOTH"]
    #           id: 'Id', # required
    #           include_iframe_only_stream: false,
    #           manifest_name: 'ManifestName',
    #           playlist_type: 'NONE', # accepts ["NONE", "EVENT", "VOD"]
    #           playlist_window_seconds: 1,
    #           program_date_time_interval_seconds: 1
    #         }
    #       ],
    #       segment_duration_seconds: 1,
    #       segment_prefix: 'SegmentPrefix',
    #       stream_selection: {
    #         max_video_bits_per_second: 1,
    #         min_video_bits_per_second: 1,
    #         stream_order: 'ORIGINAL' # accepts ["ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"]
    #       }
    #     },
    #     dash_package: {
    #       ads_on_delivery_restrictions: 'NONE', # accepts ["NONE", "RESTRICTED", "UNRESTRICTED", "BOTH"]
    #       encryption: {
    #         key_rotation_interval_seconds: 1,
    #       },
    #       manifest_layout: 'FULL', # accepts ["FULL", "COMPACT"]
    #       manifest_window_seconds: 1,
    #       min_buffer_time_seconds: 1,
    #       min_update_period_seconds: 1,
    #       period_triggers: [
    #         'ADS' # accepts ["ADS"]
    #       ],
    #       profile: 'NONE', # accepts ["NONE", "HBBTV_1_5", "HYBRIDCAST", "DVB_DASH_2014"]
    #       segment_duration_seconds: 1,
    #       segment_template_format: 'NUMBER_WITH_TIMELINE', # accepts ["NUMBER_WITH_TIMELINE", "TIME_WITH_TIMELINE", "NUMBER_WITH_DURATION"]
    #       suggested_presentation_delay_seconds: 1,
    #       utc_timing: 'NONE', # accepts ["NONE", "HTTP-HEAD", "HTTP-ISO", "HTTP-XSDATE"]
    #       utc_timing_uri: 'UtcTimingUri'
    #     },
    #     description: 'Description',
    #     hls_package: {
    #       ad_markers: 'NONE', # accepts ["NONE", "SCTE35_ENHANCED", "PASSTHROUGH", "DATERANGE"]
    #       ads_on_delivery_restrictions: 'NONE', # accepts ["NONE", "RESTRICTED", "UNRESTRICTED", "BOTH"]
    #       encryption: {
    #         constant_initialization_vector: 'ConstantInitializationVector',
    #         encryption_method: 'AES_128', # accepts ["AES_128", "SAMPLE_AES"]
    #         key_rotation_interval_seconds: 1,
    #         repeat_ext_x_key: false,
    #       },
    #       include_dvb_subtitles: false,
    #       include_iframe_only_stream: false,
    #       playlist_type: 'NONE', # accepts ["NONE", "EVENT", "VOD"]
    #       playlist_window_seconds: 1,
    #       program_date_time_interval_seconds: 1,
    #       segment_duration_seconds: 1,
    #       use_audio_rendition_group: false
    #     },
    #     id: 'Id', # required
    #     manifest_name: 'ManifestName',
    #     mss_package: {
    #       encryption: {
    #       },
    #       manifest_window_seconds: 1,
    #       segment_duration_seconds: 1,
    #     },
    #     origination: 'ALLOW', # accepts ["ALLOW", "DENY"]
    #     startover_window_seconds: 1,
    #     time_delay_seconds: 1,
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateOriginEndpointOutput
    #   resp.data.arn #=> String
    #   resp.data.authorization #=> Types::Authorization
    #   resp.data.authorization.cdn_identifier_secret #=> String
    #   resp.data.authorization.secrets_role_arn #=> String
    #   resp.data.channel_id #=> String
    #   resp.data.cmaf_package #=> Types::CmafPackage
    #   resp.data.cmaf_package.encryption #=> Types::CmafEncryption
    #   resp.data.cmaf_package.encryption.constant_initialization_vector #=> String
    #   resp.data.cmaf_package.encryption.key_rotation_interval_seconds #=> Integer
    #   resp.data.cmaf_package.encryption.speke_key_provider #=> Types::SpekeKeyProvider
    #   resp.data.cmaf_package.encryption.speke_key_provider.certificate_arn #=> String
    #   resp.data.cmaf_package.encryption.speke_key_provider.encryption_contract_configuration #=> Types::EncryptionContractConfiguration
    #   resp.data.cmaf_package.encryption.speke_key_provider.encryption_contract_configuration.preset_speke20_audio #=> String, one of ["PRESET-AUDIO-1"]
    #   resp.data.cmaf_package.encryption.speke_key_provider.encryption_contract_configuration.preset_speke20_video #=> String, one of ["PRESET-VIDEO-1"]
    #   resp.data.cmaf_package.encryption.speke_key_provider.resource_id #=> String
    #   resp.data.cmaf_package.encryption.speke_key_provider.role_arn #=> String
    #   resp.data.cmaf_package.encryption.speke_key_provider.system_ids #=> Array<String>
    #   resp.data.cmaf_package.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.data.cmaf_package.encryption.speke_key_provider.url #=> String
    #   resp.data.cmaf_package.hls_manifests #=> Array<HlsManifest>
    #   resp.data.cmaf_package.hls_manifests[0] #=> Types::HlsManifest
    #   resp.data.cmaf_package.hls_manifests[0].ad_markers #=> String, one of ["NONE", "SCTE35_ENHANCED", "PASSTHROUGH", "DATERANGE"]
    #   resp.data.cmaf_package.hls_manifests[0].id #=> String
    #   resp.data.cmaf_package.hls_manifests[0].include_iframe_only_stream #=> Boolean
    #   resp.data.cmaf_package.hls_manifests[0].manifest_name #=> String
    #   resp.data.cmaf_package.hls_manifests[0].playlist_type #=> String, one of ["NONE", "EVENT", "VOD"]
    #   resp.data.cmaf_package.hls_manifests[0].playlist_window_seconds #=> Integer
    #   resp.data.cmaf_package.hls_manifests[0].program_date_time_interval_seconds #=> Integer
    #   resp.data.cmaf_package.hls_manifests[0].url #=> String
    #   resp.data.cmaf_package.segment_duration_seconds #=> Integer
    #   resp.data.cmaf_package.segment_prefix #=> String
    #   resp.data.cmaf_package.stream_selection #=> Types::StreamSelection
    #   resp.data.cmaf_package.stream_selection.max_video_bits_per_second #=> Integer
    #   resp.data.cmaf_package.stream_selection.min_video_bits_per_second #=> Integer
    #   resp.data.cmaf_package.stream_selection.stream_order #=> String, one of ["ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"]
    #   resp.data.dash_package #=> Types::DashPackage
    #   resp.data.dash_package.ad_triggers #=> Array<String>
    #   resp.data.dash_package.ad_triggers[0] #=> String, one of ["SPLICE_INSERT", "BREAK", "PROVIDER_ADVERTISEMENT", "DISTRIBUTOR_ADVERTISEMENT", "PROVIDER_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_PLACEMENT_OPPORTUNITY", "PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY"]
    #   resp.data.dash_package.ads_on_delivery_restrictions #=> String, one of ["NONE", "RESTRICTED", "UNRESTRICTED", "BOTH"]
    #   resp.data.dash_package.encryption #=> Types::DashEncryption
    #   resp.data.dash_package.encryption.key_rotation_interval_seconds #=> Integer
    #   resp.data.dash_package.encryption.speke_key_provider #=> Types::SpekeKeyProvider
    #   resp.data.dash_package.manifest_layout #=> String, one of ["FULL", "COMPACT"]
    #   resp.data.dash_package.manifest_window_seconds #=> Integer
    #   resp.data.dash_package.min_buffer_time_seconds #=> Integer
    #   resp.data.dash_package.min_update_period_seconds #=> Integer
    #   resp.data.dash_package.period_triggers #=> Array<String>
    #   resp.data.dash_package.period_triggers[0] #=> String, one of ["ADS"]
    #   resp.data.dash_package.profile #=> String, one of ["NONE", "HBBTV_1_5", "HYBRIDCAST", "DVB_DASH_2014"]
    #   resp.data.dash_package.segment_duration_seconds #=> Integer
    #   resp.data.dash_package.segment_template_format #=> String, one of ["NUMBER_WITH_TIMELINE", "TIME_WITH_TIMELINE", "NUMBER_WITH_DURATION"]
    #   resp.data.dash_package.stream_selection #=> Types::StreamSelection
    #   resp.data.dash_package.suggested_presentation_delay_seconds #=> Integer
    #   resp.data.dash_package.utc_timing #=> String, one of ["NONE", "HTTP-HEAD", "HTTP-ISO", "HTTP-XSDATE"]
    #   resp.data.dash_package.utc_timing_uri #=> String
    #   resp.data.description #=> String
    #   resp.data.hls_package #=> Types::HlsPackage
    #   resp.data.hls_package.ad_markers #=> String, one of ["NONE", "SCTE35_ENHANCED", "PASSTHROUGH", "DATERANGE"]
    #   resp.data.hls_package.ad_triggers #=> Array<String>
    #   resp.data.hls_package.ads_on_delivery_restrictions #=> String, one of ["NONE", "RESTRICTED", "UNRESTRICTED", "BOTH"]
    #   resp.data.hls_package.encryption #=> Types::HlsEncryption
    #   resp.data.hls_package.encryption.constant_initialization_vector #=> String
    #   resp.data.hls_package.encryption.encryption_method #=> String, one of ["AES_128", "SAMPLE_AES"]
    #   resp.data.hls_package.encryption.key_rotation_interval_seconds #=> Integer
    #   resp.data.hls_package.encryption.repeat_ext_x_key #=> Boolean
    #   resp.data.hls_package.encryption.speke_key_provider #=> Types::SpekeKeyProvider
    #   resp.data.hls_package.include_dvb_subtitles #=> Boolean
    #   resp.data.hls_package.include_iframe_only_stream #=> Boolean
    #   resp.data.hls_package.playlist_type #=> String, one of ["NONE", "EVENT", "VOD"]
    #   resp.data.hls_package.playlist_window_seconds #=> Integer
    #   resp.data.hls_package.program_date_time_interval_seconds #=> Integer
    #   resp.data.hls_package.segment_duration_seconds #=> Integer
    #   resp.data.hls_package.stream_selection #=> Types::StreamSelection
    #   resp.data.hls_package.use_audio_rendition_group #=> Boolean
    #   resp.data.id #=> String
    #   resp.data.manifest_name #=> String
    #   resp.data.mss_package #=> Types::MssPackage
    #   resp.data.mss_package.encryption #=> Types::MssEncryption
    #   resp.data.mss_package.encryption.speke_key_provider #=> Types::SpekeKeyProvider
    #   resp.data.mss_package.manifest_window_seconds #=> Integer
    #   resp.data.mss_package.segment_duration_seconds #=> Integer
    #   resp.data.mss_package.stream_selection #=> Types::StreamSelection
    #   resp.data.origination #=> String, one of ["ALLOW", "DENY"]
    #   resp.data.startover_window_seconds #=> Integer
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.time_delay_seconds #=> Integer
    #   resp.data.url #=> String
    #   resp.data.whitelist #=> Array<String>
    #
    def update_origin_endpoint(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateOriginEndpointInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateOriginEndpointInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateOriginEndpoint
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceUnavailableException, Errors::TooManyRequestsException, Errors::InternalServerErrorException, Errors::UnprocessableEntityException, Errors::ForbiddenException, Errors::NotFoundException]),
        data_parser: Parsers::UpdateOriginEndpoint
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateOriginEndpoint,
        stubs: @stubs,
        params_class: Params::UpdateOriginEndpointOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_origin_endpoint
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
