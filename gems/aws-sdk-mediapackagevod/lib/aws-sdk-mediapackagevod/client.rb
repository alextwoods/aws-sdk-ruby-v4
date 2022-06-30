# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::MediaPackageVod
  # An API client for MediaPackageVod
  # See {#initialize} for a full list of supported configuration options
  # AWS Elemental MediaPackage VOD
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
    def initialize(config = AWS::SDK::MediaPackageVod::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # Changes the packaging group's properities to configure log subscription
    #
    # @param [Hash] params
    #   See {Types::ConfigureLogsInput}.
    #
    # @option params [EgressAccessLogs] :egress_access_logs
    #   Configure egress access logging.
    #
    # @option params [String] :id
    #   The ID of a MediaPackage VOD PackagingGroup resource.
    #
    # @return [Types::ConfigureLogsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.configure_logs(
    #     egress_access_logs: {
    #       log_group_name: 'LogGroupName'
    #     },
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ConfigureLogsOutput
    #   resp.data.arn #=> String
    #   resp.data.authorization #=> Types::Authorization
    #   resp.data.authorization.cdn_identifier_secret #=> String
    #   resp.data.authorization.secrets_role_arn #=> String
    #   resp.data.domain_name #=> String
    #   resp.data.egress_access_logs #=> Types::EgressAccessLogs
    #   resp.data.egress_access_logs.log_group_name #=> String
    #   resp.data.id #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def configure_logs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ConfigureLogsInput.build(params)
      response_body = StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceUnavailableException, Errors::TooManyRequestsException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::NotFoundException, Errors::UnprocessableEntityException]),
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

    # Creates a new MediaPackage VOD Asset resource.
    #
    # @param [Hash] params
    #   See {Types::CreateAssetInput}.
    #
    # @option params [String] :id
    #   The unique identifier for the Asset.
    #
    # @option params [String] :packaging_group_id
    #   The ID of the PackagingGroup for the Asset.
    #
    # @option params [String] :resource_id
    #   The resource ID to include in SPEKE key requests.
    #
    # @option params [String] :source_arn
    #   ARN of the source object in S3.
    #
    # @option params [String] :source_role_arn
    #   The IAM role ARN used to access the source S3 bucket.
    #
    # @option params [Hash<String, String>] :tags
    #   A collection of tags associated with a resource
    #
    # @return [Types::CreateAssetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_asset(
    #     id: 'Id', # required
    #     packaging_group_id: 'PackagingGroupId', # required
    #     resource_id: 'ResourceId',
    #     source_arn: 'SourceArn', # required
    #     source_role_arn: 'SourceRoleArn', # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateAssetOutput
    #   resp.data.arn #=> String
    #   resp.data.created_at #=> String
    #   resp.data.egress_endpoints #=> Array<EgressEndpoint>
    #   resp.data.egress_endpoints[0] #=> Types::EgressEndpoint
    #   resp.data.egress_endpoints[0].packaging_configuration_id #=> String
    #   resp.data.egress_endpoints[0].status #=> String
    #   resp.data.egress_endpoints[0].url #=> String
    #   resp.data.id #=> String
    #   resp.data.packaging_group_id #=> String
    #   resp.data.resource_id #=> String
    #   resp.data.source_arn #=> String
    #   resp.data.source_role_arn #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def create_asset(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateAssetInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateAssetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateAsset
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceUnavailableException, Errors::TooManyRequestsException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::NotFoundException, Errors::UnprocessableEntityException]),
        data_parser: Parsers::CreateAsset
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateAsset,
        stubs: @stubs,
        params_class: Params::CreateAssetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_asset
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Creates a new MediaPackage VOD PackagingConfiguration resource.
    #
    # @param [Hash] params
    #   See {Types::CreatePackagingConfigurationInput}.
    #
    # @option params [CmafPackage] :cmaf_package
    #   A CMAF packaging configuration.
    #
    # @option params [DashPackage] :dash_package
    #   A Dynamic Adaptive Streaming over HTTP (DASH) packaging configuration.
    #
    # @option params [HlsPackage] :hls_package
    #   An HTTP Live Streaming (HLS) packaging configuration.
    #
    # @option params [String] :id
    #   The ID of the PackagingConfiguration.
    #
    # @option params [MssPackage] :mss_package
    #   A Microsoft Smooth Streaming (MSS) PackagingConfiguration.
    #
    # @option params [String] :packaging_group_id
    #   The ID of a PackagingGroup.
    #
    # @option params [Hash<String, String>] :tags
    #   A collection of tags associated with a resource
    #
    # @return [Types::CreatePackagingConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_packaging_configuration(
    #     cmaf_package: {
    #       encryption: {
    #         constant_initialization_vector: 'ConstantInitializationVector',
    #         speke_key_provider: {
    #           role_arn: 'RoleArn', # required
    #           system_ids: [
    #             'member'
    #           ], # required
    #           url: 'Url' # required
    #         } # required
    #       },
    #       hls_manifests: [
    #         {
    #           ad_markers: 'NONE', # accepts ["NONE", "SCTE35_ENHANCED", "PASSTHROUGH"]
    #           include_iframe_only_stream: false,
    #           manifest_name: 'ManifestName',
    #           program_date_time_interval_seconds: 1,
    #           repeat_ext_x_key: false,
    #           stream_selection: {
    #             max_video_bits_per_second: 1,
    #             min_video_bits_per_second: 1,
    #             stream_order: 'ORIGINAL' # accepts ["ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"]
    #           }
    #         }
    #       ], # required
    #       include_encoder_configuration_in_segments: false,
    #       segment_duration_seconds: 1
    #     },
    #     dash_package: {
    #       dash_manifests: [
    #         {
    #           manifest_layout: 'FULL', # accepts ["FULL", "COMPACT"]
    #           manifest_name: 'ManifestName',
    #           min_buffer_time_seconds: 1,
    #           profile: 'NONE', # accepts ["NONE", "HBBTV_1_5"]
    #           scte_markers_source: 'SEGMENTS', # accepts ["SEGMENTS", "MANIFEST"]
    #         }
    #       ], # required
    #       encryption: {
    #       },
    #       include_encoder_configuration_in_segments: false,
    #       period_triggers: [
    #         'ADS' # accepts ["ADS"]
    #       ],
    #       segment_duration_seconds: 1,
    #       segment_template_format: 'NUMBER_WITH_TIMELINE' # accepts ["NUMBER_WITH_TIMELINE", "TIME_WITH_TIMELINE", "NUMBER_WITH_DURATION"]
    #     },
    #     hls_package: {
    #       encryption: {
    #         constant_initialization_vector: 'ConstantInitializationVector',
    #         encryption_method: 'AES_128', # accepts ["AES_128", "SAMPLE_AES"]
    #       },
    #       include_dvb_subtitles: false,
    #       segment_duration_seconds: 1,
    #       use_audio_rendition_group: false
    #     },
    #     id: 'Id', # required
    #     mss_package: {
    #       encryption: {
    #       },
    #       mss_manifests: [
    #         {
    #           manifest_name: 'ManifestName',
    #         }
    #       ], # required
    #       segment_duration_seconds: 1
    #     },
    #     packaging_group_id: 'PackagingGroupId', # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreatePackagingConfigurationOutput
    #   resp.data.arn #=> String
    #   resp.data.cmaf_package #=> Types::CmafPackage
    #   resp.data.cmaf_package.encryption #=> Types::CmafEncryption
    #   resp.data.cmaf_package.encryption.constant_initialization_vector #=> String
    #   resp.data.cmaf_package.encryption.speke_key_provider #=> Types::SpekeKeyProvider
    #   resp.data.cmaf_package.encryption.speke_key_provider.role_arn #=> String
    #   resp.data.cmaf_package.encryption.speke_key_provider.system_ids #=> Array<String>
    #   resp.data.cmaf_package.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.data.cmaf_package.encryption.speke_key_provider.url #=> String
    #   resp.data.cmaf_package.hls_manifests #=> Array<HlsManifest>
    #   resp.data.cmaf_package.hls_manifests[0] #=> Types::HlsManifest
    #   resp.data.cmaf_package.hls_manifests[0].ad_markers #=> String, one of ["NONE", "SCTE35_ENHANCED", "PASSTHROUGH"]
    #   resp.data.cmaf_package.hls_manifests[0].include_iframe_only_stream #=> Boolean
    #   resp.data.cmaf_package.hls_manifests[0].manifest_name #=> String
    #   resp.data.cmaf_package.hls_manifests[0].program_date_time_interval_seconds #=> Integer
    #   resp.data.cmaf_package.hls_manifests[0].repeat_ext_x_key #=> Boolean
    #   resp.data.cmaf_package.hls_manifests[0].stream_selection #=> Types::StreamSelection
    #   resp.data.cmaf_package.hls_manifests[0].stream_selection.max_video_bits_per_second #=> Integer
    #   resp.data.cmaf_package.hls_manifests[0].stream_selection.min_video_bits_per_second #=> Integer
    #   resp.data.cmaf_package.hls_manifests[0].stream_selection.stream_order #=> String, one of ["ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"]
    #   resp.data.cmaf_package.include_encoder_configuration_in_segments #=> Boolean
    #   resp.data.cmaf_package.segment_duration_seconds #=> Integer
    #   resp.data.dash_package #=> Types::DashPackage
    #   resp.data.dash_package.dash_manifests #=> Array<DashManifest>
    #   resp.data.dash_package.dash_manifests[0] #=> Types::DashManifest
    #   resp.data.dash_package.dash_manifests[0].manifest_layout #=> String, one of ["FULL", "COMPACT"]
    #   resp.data.dash_package.dash_manifests[0].manifest_name #=> String
    #   resp.data.dash_package.dash_manifests[0].min_buffer_time_seconds #=> Integer
    #   resp.data.dash_package.dash_manifests[0].profile #=> String, one of ["NONE", "HBBTV_1_5"]
    #   resp.data.dash_package.dash_manifests[0].scte_markers_source #=> String, one of ["SEGMENTS", "MANIFEST"]
    #   resp.data.dash_package.dash_manifests[0].stream_selection #=> Types::StreamSelection
    #   resp.data.dash_package.encryption #=> Types::DashEncryption
    #   resp.data.dash_package.encryption.speke_key_provider #=> Types::SpekeKeyProvider
    #   resp.data.dash_package.include_encoder_configuration_in_segments #=> Boolean
    #   resp.data.dash_package.period_triggers #=> Array<String>
    #   resp.data.dash_package.period_triggers[0] #=> String, one of ["ADS"]
    #   resp.data.dash_package.segment_duration_seconds #=> Integer
    #   resp.data.dash_package.segment_template_format #=> String, one of ["NUMBER_WITH_TIMELINE", "TIME_WITH_TIMELINE", "NUMBER_WITH_DURATION"]
    #   resp.data.hls_package #=> Types::HlsPackage
    #   resp.data.hls_package.encryption #=> Types::HlsEncryption
    #   resp.data.hls_package.encryption.constant_initialization_vector #=> String
    #   resp.data.hls_package.encryption.encryption_method #=> String, one of ["AES_128", "SAMPLE_AES"]
    #   resp.data.hls_package.encryption.speke_key_provider #=> Types::SpekeKeyProvider
    #   resp.data.hls_package.hls_manifests #=> Array<HlsManifest>
    #   resp.data.hls_package.include_dvb_subtitles #=> Boolean
    #   resp.data.hls_package.segment_duration_seconds #=> Integer
    #   resp.data.hls_package.use_audio_rendition_group #=> Boolean
    #   resp.data.id #=> String
    #   resp.data.mss_package #=> Types::MssPackage
    #   resp.data.mss_package.encryption #=> Types::MssEncryption
    #   resp.data.mss_package.encryption.speke_key_provider #=> Types::SpekeKeyProvider
    #   resp.data.mss_package.mss_manifests #=> Array<MssManifest>
    #   resp.data.mss_package.mss_manifests[0] #=> Types::MssManifest
    #   resp.data.mss_package.mss_manifests[0].manifest_name #=> String
    #   resp.data.mss_package.mss_manifests[0].stream_selection #=> Types::StreamSelection
    #   resp.data.mss_package.segment_duration_seconds #=> Integer
    #   resp.data.packaging_group_id #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def create_packaging_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreatePackagingConfigurationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreatePackagingConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreatePackagingConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceUnavailableException, Errors::TooManyRequestsException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::NotFoundException, Errors::UnprocessableEntityException]),
        data_parser: Parsers::CreatePackagingConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreatePackagingConfiguration,
        stubs: @stubs,
        params_class: Params::CreatePackagingConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_packaging_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Creates a new MediaPackage VOD PackagingGroup resource.
    #
    # @param [Hash] params
    #   See {Types::CreatePackagingGroupInput}.
    #
    # @option params [Authorization] :authorization
    #   CDN Authorization credentials
    #
    # @option params [EgressAccessLogs] :egress_access_logs
    #   Configure egress access logging.
    #
    # @option params [String] :id
    #   The ID of the PackagingGroup.
    #
    # @option params [Hash<String, String>] :tags
    #   A collection of tags associated with a resource
    #
    # @return [Types::CreatePackagingGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_packaging_group(
    #     authorization: {
    #       cdn_identifier_secret: 'CdnIdentifierSecret', # required
    #       secrets_role_arn: 'SecretsRoleArn' # required
    #     },
    #     egress_access_logs: {
    #       log_group_name: 'LogGroupName'
    #     },
    #     id: 'Id', # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreatePackagingGroupOutput
    #   resp.data.arn #=> String
    #   resp.data.authorization #=> Types::Authorization
    #   resp.data.authorization.cdn_identifier_secret #=> String
    #   resp.data.authorization.secrets_role_arn #=> String
    #   resp.data.domain_name #=> String
    #   resp.data.egress_access_logs #=> Types::EgressAccessLogs
    #   resp.data.egress_access_logs.log_group_name #=> String
    #   resp.data.id #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def create_packaging_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreatePackagingGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreatePackagingGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreatePackagingGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceUnavailableException, Errors::TooManyRequestsException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::NotFoundException, Errors::UnprocessableEntityException]),
        data_parser: Parsers::CreatePackagingGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreatePackagingGroup,
        stubs: @stubs,
        params_class: Params::CreatePackagingGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_packaging_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Deletes an existing MediaPackage VOD Asset resource.
    #
    # @param [Hash] params
    #   See {Types::DeleteAssetInput}.
    #
    # @option params [String] :id
    #   The ID of the MediaPackage VOD Asset resource to delete.
    #
    # @return [Types::DeleteAssetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_asset(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAssetOutput
    #
    def delete_asset(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAssetInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAssetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAsset
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::ServiceUnavailableException, Errors::TooManyRequestsException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::NotFoundException, Errors::UnprocessableEntityException]),
        data_parser: Parsers::DeleteAsset
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAsset,
        stubs: @stubs,
        params_class: Params::DeleteAssetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_asset
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Deletes a MediaPackage VOD PackagingConfiguration resource.
    #
    # @param [Hash] params
    #   See {Types::DeletePackagingConfigurationInput}.
    #
    # @option params [String] :id
    #   The ID of the MediaPackage VOD PackagingConfiguration resource to delete.
    #
    # @return [Types::DeletePackagingConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_packaging_configuration(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeletePackagingConfigurationOutput
    #
    def delete_packaging_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeletePackagingConfigurationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeletePackagingConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeletePackagingConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::ServiceUnavailableException, Errors::TooManyRequestsException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::NotFoundException, Errors::UnprocessableEntityException]),
        data_parser: Parsers::DeletePackagingConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeletePackagingConfiguration,
        stubs: @stubs,
        params_class: Params::DeletePackagingConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_packaging_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Deletes a MediaPackage VOD PackagingGroup resource.
    #
    # @param [Hash] params
    #   See {Types::DeletePackagingGroupInput}.
    #
    # @option params [String] :id
    #   The ID of the MediaPackage VOD PackagingGroup resource to delete.
    #
    # @return [Types::DeletePackagingGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_packaging_group(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeletePackagingGroupOutput
    #
    def delete_packaging_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeletePackagingGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeletePackagingGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeletePackagingGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::ServiceUnavailableException, Errors::TooManyRequestsException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::NotFoundException, Errors::UnprocessableEntityException]),
        data_parser: Parsers::DeletePackagingGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeletePackagingGroup,
        stubs: @stubs,
        params_class: Params::DeletePackagingGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_packaging_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Returns a description of a MediaPackage VOD Asset resource.
    #
    # @param [Hash] params
    #   See {Types::DescribeAssetInput}.
    #
    # @option params [String] :id
    #   The ID of an MediaPackage VOD Asset resource.
    #
    # @return [Types::DescribeAssetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_asset(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAssetOutput
    #   resp.data.arn #=> String
    #   resp.data.created_at #=> String
    #   resp.data.egress_endpoints #=> Array<EgressEndpoint>
    #   resp.data.egress_endpoints[0] #=> Types::EgressEndpoint
    #   resp.data.egress_endpoints[0].packaging_configuration_id #=> String
    #   resp.data.egress_endpoints[0].status #=> String
    #   resp.data.egress_endpoints[0].url #=> String
    #   resp.data.id #=> String
    #   resp.data.packaging_group_id #=> String
    #   resp.data.resource_id #=> String
    #   resp.data.source_arn #=> String
    #   resp.data.source_role_arn #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def describe_asset(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAssetInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAssetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAsset
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceUnavailableException, Errors::TooManyRequestsException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::NotFoundException, Errors::UnprocessableEntityException]),
        data_parser: Parsers::DescribeAsset
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAsset,
        stubs: @stubs,
        params_class: Params::DescribeAssetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_asset
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Returns a description of a MediaPackage VOD PackagingConfiguration resource.
    #
    # @param [Hash] params
    #   See {Types::DescribePackagingConfigurationInput}.
    #
    # @option params [String] :id
    #   The ID of a MediaPackage VOD PackagingConfiguration resource.
    #
    # @return [Types::DescribePackagingConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_packaging_configuration(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribePackagingConfigurationOutput
    #   resp.data.arn #=> String
    #   resp.data.cmaf_package #=> Types::CmafPackage
    #   resp.data.cmaf_package.encryption #=> Types::CmafEncryption
    #   resp.data.cmaf_package.encryption.constant_initialization_vector #=> String
    #   resp.data.cmaf_package.encryption.speke_key_provider #=> Types::SpekeKeyProvider
    #   resp.data.cmaf_package.encryption.speke_key_provider.role_arn #=> String
    #   resp.data.cmaf_package.encryption.speke_key_provider.system_ids #=> Array<String>
    #   resp.data.cmaf_package.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.data.cmaf_package.encryption.speke_key_provider.url #=> String
    #   resp.data.cmaf_package.hls_manifests #=> Array<HlsManifest>
    #   resp.data.cmaf_package.hls_manifests[0] #=> Types::HlsManifest
    #   resp.data.cmaf_package.hls_manifests[0].ad_markers #=> String, one of ["NONE", "SCTE35_ENHANCED", "PASSTHROUGH"]
    #   resp.data.cmaf_package.hls_manifests[0].include_iframe_only_stream #=> Boolean
    #   resp.data.cmaf_package.hls_manifests[0].manifest_name #=> String
    #   resp.data.cmaf_package.hls_manifests[0].program_date_time_interval_seconds #=> Integer
    #   resp.data.cmaf_package.hls_manifests[0].repeat_ext_x_key #=> Boolean
    #   resp.data.cmaf_package.hls_manifests[0].stream_selection #=> Types::StreamSelection
    #   resp.data.cmaf_package.hls_manifests[0].stream_selection.max_video_bits_per_second #=> Integer
    #   resp.data.cmaf_package.hls_manifests[0].stream_selection.min_video_bits_per_second #=> Integer
    #   resp.data.cmaf_package.hls_manifests[0].stream_selection.stream_order #=> String, one of ["ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"]
    #   resp.data.cmaf_package.include_encoder_configuration_in_segments #=> Boolean
    #   resp.data.cmaf_package.segment_duration_seconds #=> Integer
    #   resp.data.dash_package #=> Types::DashPackage
    #   resp.data.dash_package.dash_manifests #=> Array<DashManifest>
    #   resp.data.dash_package.dash_manifests[0] #=> Types::DashManifest
    #   resp.data.dash_package.dash_manifests[0].manifest_layout #=> String, one of ["FULL", "COMPACT"]
    #   resp.data.dash_package.dash_manifests[0].manifest_name #=> String
    #   resp.data.dash_package.dash_manifests[0].min_buffer_time_seconds #=> Integer
    #   resp.data.dash_package.dash_manifests[0].profile #=> String, one of ["NONE", "HBBTV_1_5"]
    #   resp.data.dash_package.dash_manifests[0].scte_markers_source #=> String, one of ["SEGMENTS", "MANIFEST"]
    #   resp.data.dash_package.dash_manifests[0].stream_selection #=> Types::StreamSelection
    #   resp.data.dash_package.encryption #=> Types::DashEncryption
    #   resp.data.dash_package.encryption.speke_key_provider #=> Types::SpekeKeyProvider
    #   resp.data.dash_package.include_encoder_configuration_in_segments #=> Boolean
    #   resp.data.dash_package.period_triggers #=> Array<String>
    #   resp.data.dash_package.period_triggers[0] #=> String, one of ["ADS"]
    #   resp.data.dash_package.segment_duration_seconds #=> Integer
    #   resp.data.dash_package.segment_template_format #=> String, one of ["NUMBER_WITH_TIMELINE", "TIME_WITH_TIMELINE", "NUMBER_WITH_DURATION"]
    #   resp.data.hls_package #=> Types::HlsPackage
    #   resp.data.hls_package.encryption #=> Types::HlsEncryption
    #   resp.data.hls_package.encryption.constant_initialization_vector #=> String
    #   resp.data.hls_package.encryption.encryption_method #=> String, one of ["AES_128", "SAMPLE_AES"]
    #   resp.data.hls_package.encryption.speke_key_provider #=> Types::SpekeKeyProvider
    #   resp.data.hls_package.hls_manifests #=> Array<HlsManifest>
    #   resp.data.hls_package.include_dvb_subtitles #=> Boolean
    #   resp.data.hls_package.segment_duration_seconds #=> Integer
    #   resp.data.hls_package.use_audio_rendition_group #=> Boolean
    #   resp.data.id #=> String
    #   resp.data.mss_package #=> Types::MssPackage
    #   resp.data.mss_package.encryption #=> Types::MssEncryption
    #   resp.data.mss_package.encryption.speke_key_provider #=> Types::SpekeKeyProvider
    #   resp.data.mss_package.mss_manifests #=> Array<MssManifest>
    #   resp.data.mss_package.mss_manifests[0] #=> Types::MssManifest
    #   resp.data.mss_package.mss_manifests[0].manifest_name #=> String
    #   resp.data.mss_package.mss_manifests[0].stream_selection #=> Types::StreamSelection
    #   resp.data.mss_package.segment_duration_seconds #=> Integer
    #   resp.data.packaging_group_id #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def describe_packaging_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribePackagingConfigurationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribePackagingConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribePackagingConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceUnavailableException, Errors::TooManyRequestsException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::NotFoundException, Errors::UnprocessableEntityException]),
        data_parser: Parsers::DescribePackagingConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribePackagingConfiguration,
        stubs: @stubs,
        params_class: Params::DescribePackagingConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_packaging_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Returns a description of a MediaPackage VOD PackagingGroup resource.
    #
    # @param [Hash] params
    #   See {Types::DescribePackagingGroupInput}.
    #
    # @option params [String] :id
    #   The ID of a MediaPackage VOD PackagingGroup resource.
    #
    # @return [Types::DescribePackagingGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_packaging_group(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribePackagingGroupOutput
    #   resp.data.arn #=> String
    #   resp.data.authorization #=> Types::Authorization
    #   resp.data.authorization.cdn_identifier_secret #=> String
    #   resp.data.authorization.secrets_role_arn #=> String
    #   resp.data.domain_name #=> String
    #   resp.data.egress_access_logs #=> Types::EgressAccessLogs
    #   resp.data.egress_access_logs.log_group_name #=> String
    #   resp.data.id #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def describe_packaging_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribePackagingGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribePackagingGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribePackagingGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceUnavailableException, Errors::TooManyRequestsException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::NotFoundException, Errors::UnprocessableEntityException]),
        data_parser: Parsers::DescribePackagingGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribePackagingGroup,
        stubs: @stubs,
        params_class: Params::DescribePackagingGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_packaging_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Returns a collection of MediaPackage VOD Asset resources.
    #
    # @param [Hash] params
    #   See {Types::ListAssetsInput}.
    #
    # @option params [Integer] :max_results
    #   Upper bound on number of records to return.
    #
    # @option params [String] :next_token
    #   A token used to resume pagination from the end of a previous request.
    #
    # @option params [String] :packaging_group_id
    #   Returns Assets associated with the specified PackagingGroup.
    #
    # @return [Types::ListAssetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_assets(
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     packaging_group_id: 'PackagingGroupId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAssetsOutput
    #   resp.data.assets #=> Array<AssetShallow>
    #   resp.data.assets[0] #=> Types::AssetShallow
    #   resp.data.assets[0].arn #=> String
    #   resp.data.assets[0].created_at #=> String
    #   resp.data.assets[0].id #=> String
    #   resp.data.assets[0].packaging_group_id #=> String
    #   resp.data.assets[0].resource_id #=> String
    #   resp.data.assets[0].source_arn #=> String
    #   resp.data.assets[0].source_role_arn #=> String
    #   resp.data.assets[0].tags #=> Hash<String, String>
    #   resp.data.assets[0].tags['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def list_assets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAssetsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAssetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAssets
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceUnavailableException, Errors::TooManyRequestsException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::NotFoundException, Errors::UnprocessableEntityException]),
        data_parser: Parsers::ListAssets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAssets,
        stubs: @stubs,
        params_class: Params::ListAssetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_assets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Returns a collection of MediaPackage VOD PackagingConfiguration resources.
    #
    # @param [Hash] params
    #   See {Types::ListPackagingConfigurationsInput}.
    #
    # @option params [Integer] :max_results
    #   Upper bound on number of records to return.
    #
    # @option params [String] :next_token
    #   A token used to resume pagination from the end of a previous request.
    #
    # @option params [String] :packaging_group_id
    #   Returns MediaPackage VOD PackagingConfigurations associated with the specified PackagingGroup.
    #
    # @return [Types::ListPackagingConfigurationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_packaging_configurations(
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     packaging_group_id: 'PackagingGroupId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPackagingConfigurationsOutput
    #   resp.data.next_token #=> String
    #   resp.data.packaging_configurations #=> Array<PackagingConfiguration>
    #   resp.data.packaging_configurations[0] #=> Types::PackagingConfiguration
    #   resp.data.packaging_configurations[0].arn #=> String
    #   resp.data.packaging_configurations[0].cmaf_package #=> Types::CmafPackage
    #   resp.data.packaging_configurations[0].cmaf_package.encryption #=> Types::CmafEncryption
    #   resp.data.packaging_configurations[0].cmaf_package.encryption.constant_initialization_vector #=> String
    #   resp.data.packaging_configurations[0].cmaf_package.encryption.speke_key_provider #=> Types::SpekeKeyProvider
    #   resp.data.packaging_configurations[0].cmaf_package.encryption.speke_key_provider.role_arn #=> String
    #   resp.data.packaging_configurations[0].cmaf_package.encryption.speke_key_provider.system_ids #=> Array<String>
    #   resp.data.packaging_configurations[0].cmaf_package.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.data.packaging_configurations[0].cmaf_package.encryption.speke_key_provider.url #=> String
    #   resp.data.packaging_configurations[0].cmaf_package.hls_manifests #=> Array<HlsManifest>
    #   resp.data.packaging_configurations[0].cmaf_package.hls_manifests[0] #=> Types::HlsManifest
    #   resp.data.packaging_configurations[0].cmaf_package.hls_manifests[0].ad_markers #=> String, one of ["NONE", "SCTE35_ENHANCED", "PASSTHROUGH"]
    #   resp.data.packaging_configurations[0].cmaf_package.hls_manifests[0].include_iframe_only_stream #=> Boolean
    #   resp.data.packaging_configurations[0].cmaf_package.hls_manifests[0].manifest_name #=> String
    #   resp.data.packaging_configurations[0].cmaf_package.hls_manifests[0].program_date_time_interval_seconds #=> Integer
    #   resp.data.packaging_configurations[0].cmaf_package.hls_manifests[0].repeat_ext_x_key #=> Boolean
    #   resp.data.packaging_configurations[0].cmaf_package.hls_manifests[0].stream_selection #=> Types::StreamSelection
    #   resp.data.packaging_configurations[0].cmaf_package.hls_manifests[0].stream_selection.max_video_bits_per_second #=> Integer
    #   resp.data.packaging_configurations[0].cmaf_package.hls_manifests[0].stream_selection.min_video_bits_per_second #=> Integer
    #   resp.data.packaging_configurations[0].cmaf_package.hls_manifests[0].stream_selection.stream_order #=> String, one of ["ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"]
    #   resp.data.packaging_configurations[0].cmaf_package.include_encoder_configuration_in_segments #=> Boolean
    #   resp.data.packaging_configurations[0].cmaf_package.segment_duration_seconds #=> Integer
    #   resp.data.packaging_configurations[0].dash_package #=> Types::DashPackage
    #   resp.data.packaging_configurations[0].dash_package.dash_manifests #=> Array<DashManifest>
    #   resp.data.packaging_configurations[0].dash_package.dash_manifests[0] #=> Types::DashManifest
    #   resp.data.packaging_configurations[0].dash_package.dash_manifests[0].manifest_layout #=> String, one of ["FULL", "COMPACT"]
    #   resp.data.packaging_configurations[0].dash_package.dash_manifests[0].manifest_name #=> String
    #   resp.data.packaging_configurations[0].dash_package.dash_manifests[0].min_buffer_time_seconds #=> Integer
    #   resp.data.packaging_configurations[0].dash_package.dash_manifests[0].profile #=> String, one of ["NONE", "HBBTV_1_5"]
    #   resp.data.packaging_configurations[0].dash_package.dash_manifests[0].scte_markers_source #=> String, one of ["SEGMENTS", "MANIFEST"]
    #   resp.data.packaging_configurations[0].dash_package.dash_manifests[0].stream_selection #=> Types::StreamSelection
    #   resp.data.packaging_configurations[0].dash_package.encryption #=> Types::DashEncryption
    #   resp.data.packaging_configurations[0].dash_package.encryption.speke_key_provider #=> Types::SpekeKeyProvider
    #   resp.data.packaging_configurations[0].dash_package.include_encoder_configuration_in_segments #=> Boolean
    #   resp.data.packaging_configurations[0].dash_package.period_triggers #=> Array<String>
    #   resp.data.packaging_configurations[0].dash_package.period_triggers[0] #=> String, one of ["ADS"]
    #   resp.data.packaging_configurations[0].dash_package.segment_duration_seconds #=> Integer
    #   resp.data.packaging_configurations[0].dash_package.segment_template_format #=> String, one of ["NUMBER_WITH_TIMELINE", "TIME_WITH_TIMELINE", "NUMBER_WITH_DURATION"]
    #   resp.data.packaging_configurations[0].hls_package #=> Types::HlsPackage
    #   resp.data.packaging_configurations[0].hls_package.encryption #=> Types::HlsEncryption
    #   resp.data.packaging_configurations[0].hls_package.encryption.constant_initialization_vector #=> String
    #   resp.data.packaging_configurations[0].hls_package.encryption.encryption_method #=> String, one of ["AES_128", "SAMPLE_AES"]
    #   resp.data.packaging_configurations[0].hls_package.encryption.speke_key_provider #=> Types::SpekeKeyProvider
    #   resp.data.packaging_configurations[0].hls_package.hls_manifests #=> Array<HlsManifest>
    #   resp.data.packaging_configurations[0].hls_package.include_dvb_subtitles #=> Boolean
    #   resp.data.packaging_configurations[0].hls_package.segment_duration_seconds #=> Integer
    #   resp.data.packaging_configurations[0].hls_package.use_audio_rendition_group #=> Boolean
    #   resp.data.packaging_configurations[0].id #=> String
    #   resp.data.packaging_configurations[0].mss_package #=> Types::MssPackage
    #   resp.data.packaging_configurations[0].mss_package.encryption #=> Types::MssEncryption
    #   resp.data.packaging_configurations[0].mss_package.encryption.speke_key_provider #=> Types::SpekeKeyProvider
    #   resp.data.packaging_configurations[0].mss_package.mss_manifests #=> Array<MssManifest>
    #   resp.data.packaging_configurations[0].mss_package.mss_manifests[0] #=> Types::MssManifest
    #   resp.data.packaging_configurations[0].mss_package.mss_manifests[0].manifest_name #=> String
    #   resp.data.packaging_configurations[0].mss_package.mss_manifests[0].stream_selection #=> Types::StreamSelection
    #   resp.data.packaging_configurations[0].mss_package.segment_duration_seconds #=> Integer
    #   resp.data.packaging_configurations[0].packaging_group_id #=> String
    #   resp.data.packaging_configurations[0].tags #=> Hash<String, String>
    #   resp.data.packaging_configurations[0].tags['key'] #=> String
    #
    def list_packaging_configurations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPackagingConfigurationsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPackagingConfigurationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPackagingConfigurations
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceUnavailableException, Errors::TooManyRequestsException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::NotFoundException, Errors::UnprocessableEntityException]),
        data_parser: Parsers::ListPackagingConfigurations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPackagingConfigurations,
        stubs: @stubs,
        params_class: Params::ListPackagingConfigurationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_packaging_configurations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Returns a collection of MediaPackage VOD PackagingGroup resources.
    #
    # @param [Hash] params
    #   See {Types::ListPackagingGroupsInput}.
    #
    # @option params [Integer] :max_results
    #   Upper bound on number of records to return.
    #
    # @option params [String] :next_token
    #   A token used to resume pagination from the end of a previous request.
    #
    # @return [Types::ListPackagingGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_packaging_groups(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPackagingGroupsOutput
    #   resp.data.next_token #=> String
    #   resp.data.packaging_groups #=> Array<PackagingGroup>
    #   resp.data.packaging_groups[0] #=> Types::PackagingGroup
    #   resp.data.packaging_groups[0].arn #=> String
    #   resp.data.packaging_groups[0].authorization #=> Types::Authorization
    #   resp.data.packaging_groups[0].authorization.cdn_identifier_secret #=> String
    #   resp.data.packaging_groups[0].authorization.secrets_role_arn #=> String
    #   resp.data.packaging_groups[0].domain_name #=> String
    #   resp.data.packaging_groups[0].egress_access_logs #=> Types::EgressAccessLogs
    #   resp.data.packaging_groups[0].egress_access_logs.log_group_name #=> String
    #   resp.data.packaging_groups[0].id #=> String
    #   resp.data.packaging_groups[0].tags #=> Hash<String, String>
    #   resp.data.packaging_groups[0].tags['key'] #=> String
    #
    def list_packaging_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPackagingGroupsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPackagingGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPackagingGroups
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceUnavailableException, Errors::TooManyRequestsException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::NotFoundException, Errors::UnprocessableEntityException]),
        data_parser: Parsers::ListPackagingGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPackagingGroups,
        stubs: @stubs,
        params_class: Params::ListPackagingGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_packaging_groups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # Returns a list of the tags assigned to the specified resource.
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   The Amazon Resource Name (ARN) for the resource. You can get this from the response to any request to the resource.
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

    # Adds tags to the specified resource. You can specify one or more tags to add.
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   The Amazon Resource Name (ARN) for the resource. You can get this from the response to any request to the resource.
    #
    # @option params [Hash<String, String>] :tags
    #   A collection of tags associated with a resource
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

    # Removes tags from the specified resource. You can specify one or more tags to remove.
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   The Amazon Resource Name (ARN) for the resource. You can get this from the response to any request to the resource.
    #
    # @option params [Array<String>] :tag_keys
    #   A comma-separated list of the tag keys to remove from the resource.
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

    # Updates a specific packaging group. You can't change the id attribute or any other system-generated attributes.
    #
    # @param [Hash] params
    #   See {Types::UpdatePackagingGroupInput}.
    #
    # @option params [Authorization] :authorization
    #   CDN Authorization credentials
    #
    # @option params [String] :id
    #   The ID of a MediaPackage VOD PackagingGroup resource.
    #
    # @return [Types::UpdatePackagingGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_packaging_group(
    #     authorization: {
    #       cdn_identifier_secret: 'CdnIdentifierSecret', # required
    #       secrets_role_arn: 'SecretsRoleArn' # required
    #     },
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdatePackagingGroupOutput
    #   resp.data.arn #=> String
    #   resp.data.authorization #=> Types::Authorization
    #   resp.data.authorization.cdn_identifier_secret #=> String
    #   resp.data.authorization.secrets_role_arn #=> String
    #   resp.data.domain_name #=> String
    #   resp.data.egress_access_logs #=> Types::EgressAccessLogs
    #   resp.data.egress_access_logs.log_group_name #=> String
    #   resp.data.id #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def update_packaging_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdatePackagingGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdatePackagingGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdatePackagingGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceUnavailableException, Errors::TooManyRequestsException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::NotFoundException, Errors::UnprocessableEntityException]),
        data_parser: Parsers::UpdatePackagingGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdatePackagingGroup,
        stubs: @stubs,
        params_class: Params::UpdatePackagingGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_packaging_group
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
