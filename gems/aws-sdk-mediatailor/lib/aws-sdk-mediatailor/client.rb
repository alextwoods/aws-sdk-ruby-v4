# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::MediaTailor
  # An API client for MediaTailor
  # See {#initialize} for a full list of supported configuration options
  # <p>Use the AWS Elemental MediaTailor SDKs and CLI to configure scalable ad insertion and linear channels. With MediaTailor, you can assemble existing content into a linear stream and serve targeted ads to viewers while maintaining broadcast quality in over-the-top (OTT) video applications. For information about using the service, including detailed information about the settings covered in this guide, see the <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/">AWS Elemental MediaTailor User Guide</a>.</p> <p>Through the SDKs and the CLI you manage AWS Elemental MediaTailor configurations and channels the same as you do through the console. For example, you specify ad insertion behavior and mapping information for the origin server and the ad decision server (ADS).</p>
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
    def initialize(config = AWS::SDK::MediaTailor::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Configures Amazon CloudWatch log settings for a playback configuration.</p>
    #
    # @param [Hash] params
    #   See {Types::ConfigureLogsForPlaybackConfigurationInput}.
    #
    # @option params [Integer] :percent_enabled
    #   <p>The percentage of session logs that MediaTailor sends to your Cloudwatch Logs account. For example, if your playback configuration has 1000 sessions and percentEnabled is set to 60, MediaTailor sends logs for 600 of the sessions to CloudWatch Logs. MediaTailor decides at random which of the playback configuration sessions to send logs for. If you want to view logs for a specific session, you can use the <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/debug-log-mode.html">debug log mode</a>.</p> <p>Valid values: 0 - 100</p>
    #
    # @option params [String] :playback_configuration_name
    #   <p>The name of the playback configuration.</p>
    #
    # @return [Types::ConfigureLogsForPlaybackConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.configure_logs_for_playback_configuration(
    #     percent_enabled: 1, # required
    #     playback_configuration_name: 'PlaybackConfigurationName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ConfigureLogsForPlaybackConfigurationOutput
    #   resp.data.percent_enabled #=> Integer
    #   resp.data.playback_configuration_name #=> String
    #
    def configure_logs_for_playback_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ConfigureLogsForPlaybackConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ConfigureLogsForPlaybackConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ConfigureLogsForPlaybackConfiguration
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
        data_parser: Parsers::ConfigureLogsForPlaybackConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ConfigureLogsForPlaybackConfiguration,
        stubs: @stubs,
        params_class: Params::ConfigureLogsForPlaybackConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :configure_logs_for_playback_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a channel.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateChannelInput}.
    #
    # @option params [String] :channel_name
    #   <p>The identifier for the channel you are working on.</p>
    #
    # @option params [SlateSource] :filler_slate
    #   <p>The slate used to fill gaps between programs in the schedule. You must configure filler slate if your channel uses the LINEAR PlaybackMode. MediaTailor doesn't support filler slate for channels using the LOOP PlaybackMode.</p>
    #
    # @option params [Array<RequestOutputItem>] :outputs
    #   <p>The channel's output properties.</p>
    #
    # @option params [String] :playback_mode
    #   <p>The type of playback mode to use for this channel.</p> <p>LINEAR - The programs in the schedule play once back-to-back in the schedule.</p> <p>LOOP - The programs in the schedule play back-to-back in an endless loop. When the last program in the schedule stops playing, playback loops back to the first program in the schedule.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to assign to the channel.</p>
    #
    # @option params [String] :tier
    #   <p>The tier of the channel.</p>
    #
    # @return [Types::CreateChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_channel(
    #     channel_name: 'ChannelName', # required
    #     filler_slate: {
    #       source_location_name: 'SourceLocationName',
    #       vod_source_name: 'VodSourceName'
    #     },
    #     outputs: [
    #       {
    #         dash_playlist_settings: {
    #           manifest_window_seconds: 1,
    #           min_buffer_time_seconds: 1,
    #           min_update_period_seconds: 1,
    #           suggested_presentation_delay_seconds: 1
    #         },
    #         hls_playlist_settings: {
    #           manifest_window_seconds: 1
    #         },
    #         manifest_name: 'ManifestName', # required
    #         source_group: 'SourceGroup' # required
    #       }
    #     ], # required
    #     playback_mode: 'LOOP', # required - accepts ["LOOP", "LINEAR"]
    #     tags: {
    #       'key' => 'value'
    #     },
    #     tier: 'BASIC' # accepts ["BASIC", "STANDARD"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateChannelOutput
    #   resp.data.arn #=> String
    #   resp.data.channel_name #=> String
    #   resp.data.channel_state #=> String, one of ["RUNNING", "STOPPED"]
    #   resp.data.creation_time #=> Time
    #   resp.data.filler_slate #=> Types::SlateSource
    #   resp.data.filler_slate.source_location_name #=> String
    #   resp.data.filler_slate.vod_source_name #=> String
    #   resp.data.last_modified_time #=> Time
    #   resp.data.outputs #=> Array<ResponseOutputItem>
    #   resp.data.outputs[0] #=> Types::ResponseOutputItem
    #   resp.data.outputs[0].dash_playlist_settings #=> Types::DashPlaylistSettings
    #   resp.data.outputs[0].dash_playlist_settings.manifest_window_seconds #=> Integer
    #   resp.data.outputs[0].dash_playlist_settings.min_buffer_time_seconds #=> Integer
    #   resp.data.outputs[0].dash_playlist_settings.min_update_period_seconds #=> Integer
    #   resp.data.outputs[0].dash_playlist_settings.suggested_presentation_delay_seconds #=> Integer
    #   resp.data.outputs[0].hls_playlist_settings #=> Types::HlsPlaylistSettings
    #   resp.data.outputs[0].hls_playlist_settings.manifest_window_seconds #=> Integer
    #   resp.data.outputs[0].manifest_name #=> String
    #   resp.data.outputs[0].playback_url #=> String
    #   resp.data.outputs[0].source_group #=> String
    #   resp.data.playback_mode #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.tier #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
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

    # <p>Creates name for a specific live source in a source location.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateLiveSourceInput}.
    #
    # @option params [Array<HttpPackageConfiguration>] :http_package_configurations
    #   <p>A list of HTTP package configuration parameters for this live source.</p>
    #
    # @option params [String] :live_source_name
    #   <p>The identifier for the live source you are working on.</p>
    #
    # @option params [String] :source_location_name
    #   <p>The identifier for the source location you are working on.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to assign to the live source.</p>
    #
    # @return [Types::CreateLiveSourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_live_source(
    #     http_package_configurations: [
    #       {
    #         path: 'Path', # required
    #         source_group: 'SourceGroup', # required
    #         type: 'DASH' # required - accepts ["DASH", "HLS"]
    #       }
    #     ], # required
    #     live_source_name: 'LiveSourceName', # required
    #     source_location_name: 'SourceLocationName', # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateLiveSourceOutput
    #   resp.data.arn #=> String
    #   resp.data.creation_time #=> Time
    #   resp.data.http_package_configurations #=> Array<HttpPackageConfiguration>
    #   resp.data.http_package_configurations[0] #=> Types::HttpPackageConfiguration
    #   resp.data.http_package_configurations[0].path #=> String
    #   resp.data.http_package_configurations[0].source_group #=> String
    #   resp.data.http_package_configurations[0].type #=> String, one of ["DASH", "HLS"]
    #   resp.data.last_modified_time #=> Time
    #   resp.data.live_source_name #=> String
    #   resp.data.source_location_name #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def create_live_source(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateLiveSourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateLiveSourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateLiveSource
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
        data_parser: Parsers::CreateLiveSource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateLiveSource,
        stubs: @stubs,
        params_class: Params::CreateLiveSourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_live_source
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new prefetch schedule for the specified playback configuration.</p>
    #
    # @param [Hash] params
    #   See {Types::CreatePrefetchScheduleInput}.
    #
    # @option params [PrefetchConsumption] :consumption
    #   <p>The configuration settings for MediaTailor's <i>consumption</i> of the prefetched ads from the ad decision server. Each consumption configuration contains an end time and an optional start time that define the <i>consumption window</i>. Prefetch schedules automatically expire no earlier than seven days after the end time.</p>
    #
    # @option params [String] :name
    #   <p>The identifier for the playback configuration.</p>
    #
    # @option params [String] :playback_configuration_name
    #   <p>The name of the playback configuration.</p>
    #
    # @option params [PrefetchRetrieval] :retrieval
    #   <p>The configuration settings for retrieval of prefetched ads from the ad decision server. Only one set of prefetched ads will be retrieved and subsequently consumed for each ad break.</p>
    #
    # @option params [String] :stream_id
    #   <p>An optional stream identifier that MediaTailor uses to prefetch ads for multiple streams that use the same playback configuration. If StreamId is specified, MediaTailor returns all of the prefetch schedules with an exact match on StreamId. If not specified, MediaTailor returns all of the prefetch schedules for the playback configuration, regardless of StreamId.</p>
    #
    # @return [Types::CreatePrefetchScheduleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_prefetch_schedule(
    #     consumption: {
    #       avail_matching_criteria: [
    #         {
    #           dynamic_variable: 'DynamicVariable', # required
    #           operator: 'EQUALS' # required - accepts ["EQUALS"]
    #         }
    #       ],
    #       end_time: Time.now, # required
    #       start_time: Time.now
    #     }, # required
    #     name: 'Name', # required
    #     playback_configuration_name: 'PlaybackConfigurationName', # required
    #     retrieval: {
    #       dynamic_variables: {
    #         'key' => 'value'
    #       },
    #       end_time: Time.now, # required
    #       start_time: Time.now
    #     }, # required
    #     stream_id: 'StreamId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreatePrefetchScheduleOutput
    #   resp.data.arn #=> String
    #   resp.data.consumption #=> Types::PrefetchConsumption
    #   resp.data.consumption.avail_matching_criteria #=> Array<AvailMatchingCriteria>
    #   resp.data.consumption.avail_matching_criteria[0] #=> Types::AvailMatchingCriteria
    #   resp.data.consumption.avail_matching_criteria[0].dynamic_variable #=> String
    #   resp.data.consumption.avail_matching_criteria[0].operator #=> String, one of ["EQUALS"]
    #   resp.data.consumption.end_time #=> Time
    #   resp.data.consumption.start_time #=> Time
    #   resp.data.name #=> String
    #   resp.data.playback_configuration_name #=> String
    #   resp.data.retrieval #=> Types::PrefetchRetrieval
    #   resp.data.retrieval.dynamic_variables #=> Hash<String, String>
    #   resp.data.retrieval.dynamic_variables['key'] #=> String
    #   resp.data.retrieval.end_time #=> Time
    #   resp.data.retrieval.start_time #=> Time
    #   resp.data.stream_id #=> String
    #
    def create_prefetch_schedule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreatePrefetchScheduleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreatePrefetchScheduleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreatePrefetchSchedule
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
        data_parser: Parsers::CreatePrefetchSchedule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreatePrefetchSchedule,
        stubs: @stubs,
        params_class: Params::CreatePrefetchScheduleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_prefetch_schedule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a program.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateProgramInput}.
    #
    # @option params [Array<AdBreak>] :ad_breaks
    #   <p>The ad break configuration settings.</p>
    #
    # @option params [String] :channel_name
    #   <p>The identifier for the channel you are working on.</p>
    #
    # @option params [String] :live_source_name
    #   <p>The name of the LiveSource for this Program.</p>
    #
    # @option params [String] :program_name
    #   <p>The identifier for the program you are working on.</p>
    #
    # @option params [ScheduleConfiguration] :schedule_configuration
    #   <p>The schedule configuration settings.</p>
    #
    # @option params [String] :source_location_name
    #   <p>The name of the source location.</p>
    #
    # @option params [String] :vod_source_name
    #   <p>The name that's used to refer to a VOD source.</p>
    #
    # @return [Types::CreateProgramOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_program(
    #     ad_breaks: [
    #       {
    #         message_type: 'SPLICE_INSERT', # accepts ["SPLICE_INSERT"]
    #         offset_millis: 1,
    #         slate: {
    #           source_location_name: 'SourceLocationName',
    #           vod_source_name: 'VodSourceName'
    #         },
    #         splice_insert_message: {
    #           avail_num: 1,
    #           avails_expected: 1,
    #           splice_event_id: 1,
    #           unique_program_id: 1
    #         }
    #       }
    #     ],
    #     channel_name: 'ChannelName', # required
    #     live_source_name: 'LiveSourceName',
    #     program_name: 'ProgramName', # required
    #     schedule_configuration: {
    #       transition: {
    #         duration_millis: 1,
    #         relative_position: 'BEFORE_PROGRAM', # required - accepts ["BEFORE_PROGRAM", "AFTER_PROGRAM"]
    #         relative_program: 'RelativeProgram',
    #         scheduled_start_time_millis: 1,
    #         type: 'Type' # required
    #       } # required
    #     }, # required
    #     source_location_name: 'SourceLocationName', # required
    #     vod_source_name: 'VodSourceName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateProgramOutput
    #   resp.data.ad_breaks #=> Array<AdBreak>
    #   resp.data.ad_breaks[0] #=> Types::AdBreak
    #   resp.data.ad_breaks[0].message_type #=> String, one of ["SPLICE_INSERT"]
    #   resp.data.ad_breaks[0].offset_millis #=> Integer
    #   resp.data.ad_breaks[0].slate #=> Types::SlateSource
    #   resp.data.ad_breaks[0].slate.source_location_name #=> String
    #   resp.data.ad_breaks[0].slate.vod_source_name #=> String
    #   resp.data.ad_breaks[0].splice_insert_message #=> Types::SpliceInsertMessage
    #   resp.data.ad_breaks[0].splice_insert_message.avail_num #=> Integer
    #   resp.data.ad_breaks[0].splice_insert_message.avails_expected #=> Integer
    #   resp.data.ad_breaks[0].splice_insert_message.splice_event_id #=> Integer
    #   resp.data.ad_breaks[0].splice_insert_message.unique_program_id #=> Integer
    #   resp.data.arn #=> String
    #   resp.data.channel_name #=> String
    #   resp.data.creation_time #=> Time
    #   resp.data.live_source_name #=> String
    #   resp.data.program_name #=> String
    #   resp.data.scheduled_start_time #=> Time
    #   resp.data.source_location_name #=> String
    #   resp.data.vod_source_name #=> String
    #
    def create_program(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateProgramInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateProgramInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateProgram
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
        data_parser: Parsers::CreateProgram
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateProgram,
        stubs: @stubs,
        params_class: Params::CreateProgramOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_program
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a source location on a specific channel.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateSourceLocationInput}.
    #
    # @option params [AccessConfiguration] :access_configuration
    #   <p>Access configuration parameters. Configures the type of authentication used to access content from your source location.</p>
    #
    # @option params [DefaultSegmentDeliveryConfiguration] :default_segment_delivery_configuration
    #   <p>The optional configuration for the server that serves segments.</p>
    #
    # @option params [HttpConfiguration] :http_configuration
    #   <p>The source's HTTP package configurations.</p>
    #
    # @option params [Array<SegmentDeliveryConfiguration>] :segment_delivery_configurations
    #   <p>A list of the segment delivery configurations associated with this resource.</p>
    #
    # @option params [String] :source_location_name
    #   <p>The identifier for the source location you are working on.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to assign to the source location.</p>
    #
    # @return [Types::CreateSourceLocationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_source_location(
    #     access_configuration: {
    #       access_type: 'S3_SIGV4', # accepts ["S3_SIGV4", "SECRETS_MANAGER_ACCESS_TOKEN"]
    #       secrets_manager_access_token_configuration: {
    #         header_name: 'HeaderName',
    #         secret_arn: 'SecretArn',
    #         secret_string_key: 'SecretStringKey'
    #       }
    #     },
    #     default_segment_delivery_configuration: {
    #       base_url: 'BaseUrl'
    #     },
    #     http_configuration: {
    #       base_url: 'BaseUrl' # required
    #     }, # required
    #     segment_delivery_configurations: [
    #       {
    #         base_url: 'BaseUrl',
    #         name: 'Name'
    #       }
    #     ],
    #     source_location_name: 'SourceLocationName', # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateSourceLocationOutput
    #   resp.data.access_configuration #=> Types::AccessConfiguration
    #   resp.data.access_configuration.access_type #=> String, one of ["S3_SIGV4", "SECRETS_MANAGER_ACCESS_TOKEN"]
    #   resp.data.access_configuration.secrets_manager_access_token_configuration #=> Types::SecretsManagerAccessTokenConfiguration
    #   resp.data.access_configuration.secrets_manager_access_token_configuration.header_name #=> String
    #   resp.data.access_configuration.secrets_manager_access_token_configuration.secret_arn #=> String
    #   resp.data.access_configuration.secrets_manager_access_token_configuration.secret_string_key #=> String
    #   resp.data.arn #=> String
    #   resp.data.creation_time #=> Time
    #   resp.data.default_segment_delivery_configuration #=> Types::DefaultSegmentDeliveryConfiguration
    #   resp.data.default_segment_delivery_configuration.base_url #=> String
    #   resp.data.http_configuration #=> Types::HttpConfiguration
    #   resp.data.http_configuration.base_url #=> String
    #   resp.data.last_modified_time #=> Time
    #   resp.data.segment_delivery_configurations #=> Array<SegmentDeliveryConfiguration>
    #   resp.data.segment_delivery_configurations[0] #=> Types::SegmentDeliveryConfiguration
    #   resp.data.segment_delivery_configurations[0].base_url #=> String
    #   resp.data.segment_delivery_configurations[0].name #=> String
    #   resp.data.source_location_name #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def create_source_location(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateSourceLocationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateSourceLocationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateSourceLocation
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
        data_parser: Parsers::CreateSourceLocation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateSourceLocation,
        stubs: @stubs,
        params_class: Params::CreateSourceLocationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_source_location
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates name for a specific VOD source in a source location.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateVodSourceInput}.
    #
    # @option params [Array<HttpPackageConfiguration>] :http_package_configurations
    #   <p>A list of HTTP package configuration parameters for this VOD source.</p>
    #
    # @option params [String] :source_location_name
    #   <p>The identifier for the source location you are working on.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to assign to the VOD source.</p>
    #
    # @option params [String] :vod_source_name
    #   <p>The identifier for the VOD source you are working on.</p>
    #
    # @return [Types::CreateVodSourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_vod_source(
    #     http_package_configurations: [
    #       {
    #         path: 'Path', # required
    #         source_group: 'SourceGroup', # required
    #         type: 'DASH' # required - accepts ["DASH", "HLS"]
    #       }
    #     ], # required
    #     source_location_name: 'SourceLocationName', # required
    #     tags: {
    #       'key' => 'value'
    #     },
    #     vod_source_name: 'VodSourceName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateVodSourceOutput
    #   resp.data.arn #=> String
    #   resp.data.creation_time #=> Time
    #   resp.data.http_package_configurations #=> Array<HttpPackageConfiguration>
    #   resp.data.http_package_configurations[0] #=> Types::HttpPackageConfiguration
    #   resp.data.http_package_configurations[0].path #=> String
    #   resp.data.http_package_configurations[0].source_group #=> String
    #   resp.data.http_package_configurations[0].type #=> String, one of ["DASH", "HLS"]
    #   resp.data.last_modified_time #=> Time
    #   resp.data.source_location_name #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.vod_source_name #=> String
    #
    def create_vod_source(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateVodSourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateVodSourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateVodSource
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
        data_parser: Parsers::CreateVodSource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateVodSource,
        stubs: @stubs,
        params_class: Params::CreateVodSourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_vod_source
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a channel. You must stop the channel before it can be deleted.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteChannelInput}.
    #
    # @option params [String] :channel_name
    #   <p>The identifier for the channel you are working on.</p>
    #
    # @return [Types::DeleteChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_channel(
    #     channel_name: 'ChannelName' # required
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
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

    # <p>Deletes a channel's IAM policy.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteChannelPolicyInput}.
    #
    # @option params [String] :channel_name
    #   <p>The identifier for the channel you are working on.</p>
    #
    # @return [Types::DeleteChannelPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_channel_policy(
    #     channel_name: 'ChannelName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteChannelPolicyOutput
    #
    def delete_channel_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteChannelPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteChannelPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteChannelPolicy
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
        data_parser: Parsers::DeleteChannelPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteChannelPolicy,
        stubs: @stubs,
        params_class: Params::DeleteChannelPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_channel_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a specific live source in a specific source location.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteLiveSourceInput}.
    #
    # @option params [String] :live_source_name
    #   <p>The identifier for the live source you are working on.</p>
    #
    # @option params [String] :source_location_name
    #   <p>The identifier for the source location you are working on.</p>
    #
    # @return [Types::DeleteLiveSourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_live_source(
    #     live_source_name: 'LiveSourceName', # required
    #     source_location_name: 'SourceLocationName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteLiveSourceOutput
    #
    def delete_live_source(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteLiveSourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteLiveSourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteLiveSource
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
        data_parser: Parsers::DeleteLiveSource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteLiveSource,
        stubs: @stubs,
        params_class: Params::DeleteLiveSourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_live_source
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the playback configuration for the specified name.</p>
    #
    # @param [Hash] params
    #   See {Types::DeletePlaybackConfigurationInput}.
    #
    # @option params [String] :name
    #   <p>The identifier for the playback configuration.</p>
    #
    # @return [Types::DeletePlaybackConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_playback_configuration(
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeletePlaybackConfigurationOutput
    #
    def delete_playback_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeletePlaybackConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeletePlaybackConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeletePlaybackConfiguration
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
        data_parser: Parsers::DeletePlaybackConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeletePlaybackConfiguration,
        stubs: @stubs,
        params_class: Params::DeletePlaybackConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_playback_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a prefetch schedule for a specific playback configuration. If you call DeletePrefetchSchedule on an expired prefetch schedule, MediaTailor returns an HTTP 404 status code.</p>
    #
    # @param [Hash] params
    #   See {Types::DeletePrefetchScheduleInput}.
    #
    # @option params [String] :name
    #   <p>The identifier for the playback configuration.</p>
    #
    # @option params [String] :playback_configuration_name
    #   <p>The name of the playback configuration.</p>
    #
    # @return [Types::DeletePrefetchScheduleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_prefetch_schedule(
    #     name: 'Name', # required
    #     playback_configuration_name: 'PlaybackConfigurationName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeletePrefetchScheduleOutput
    #
    def delete_prefetch_schedule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeletePrefetchScheduleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeletePrefetchScheduleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeletePrefetchSchedule
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
        data_parser: Parsers::DeletePrefetchSchedule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeletePrefetchSchedule,
        stubs: @stubs,
        params_class: Params::DeletePrefetchScheduleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_prefetch_schedule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a specific program on a specific channel.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteProgramInput}.
    #
    # @option params [String] :channel_name
    #   <p>The identifier for the channel you are working on.</p>
    #
    # @option params [String] :program_name
    #   <p>The identifier for the program you are working on.</p>
    #
    # @return [Types::DeleteProgramOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_program(
    #     channel_name: 'ChannelName', # required
    #     program_name: 'ProgramName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteProgramOutput
    #
    def delete_program(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteProgramInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteProgramInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteProgram
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
        data_parser: Parsers::DeleteProgram
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteProgram,
        stubs: @stubs,
        params_class: Params::DeleteProgramOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_program
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a source location on a specific channel.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteSourceLocationInput}.
    #
    # @option params [String] :source_location_name
    #   <p>The identifier for the source location you are working on.</p>
    #
    # @return [Types::DeleteSourceLocationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_source_location(
    #     source_location_name: 'SourceLocationName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteSourceLocationOutput
    #
    def delete_source_location(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteSourceLocationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteSourceLocationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteSourceLocation
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
        data_parser: Parsers::DeleteSourceLocation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteSourceLocation,
        stubs: @stubs,
        params_class: Params::DeleteSourceLocationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_source_location
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a specific VOD source in a specific source location.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteVodSourceInput}.
    #
    # @option params [String] :source_location_name
    #   <p>The identifier for the source location you are working on.</p>
    #
    # @option params [String] :vod_source_name
    #   <p>The identifier for the VOD source you are working on.</p>
    #
    # @return [Types::DeleteVodSourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_vod_source(
    #     source_location_name: 'SourceLocationName', # required
    #     vod_source_name: 'VodSourceName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteVodSourceOutput
    #
    def delete_vod_source(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteVodSourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteVodSourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteVodSource
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
        data_parser: Parsers::DeleteVodSource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteVodSource,
        stubs: @stubs,
        params_class: Params::DeleteVodSourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_vod_source
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the properties of a specific channel.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeChannelInput}.
    #
    # @option params [String] :channel_name
    #   <p>The identifier for the channel you are working on.</p>
    #
    # @return [Types::DescribeChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_channel(
    #     channel_name: 'ChannelName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeChannelOutput
    #   resp.data.arn #=> String
    #   resp.data.channel_name #=> String
    #   resp.data.channel_state #=> String, one of ["RUNNING", "STOPPED"]
    #   resp.data.creation_time #=> Time
    #   resp.data.filler_slate #=> Types::SlateSource
    #   resp.data.filler_slate.source_location_name #=> String
    #   resp.data.filler_slate.vod_source_name #=> String
    #   resp.data.last_modified_time #=> Time
    #   resp.data.outputs #=> Array<ResponseOutputItem>
    #   resp.data.outputs[0] #=> Types::ResponseOutputItem
    #   resp.data.outputs[0].dash_playlist_settings #=> Types::DashPlaylistSettings
    #   resp.data.outputs[0].dash_playlist_settings.manifest_window_seconds #=> Integer
    #   resp.data.outputs[0].dash_playlist_settings.min_buffer_time_seconds #=> Integer
    #   resp.data.outputs[0].dash_playlist_settings.min_update_period_seconds #=> Integer
    #   resp.data.outputs[0].dash_playlist_settings.suggested_presentation_delay_seconds #=> Integer
    #   resp.data.outputs[0].hls_playlist_settings #=> Types::HlsPlaylistSettings
    #   resp.data.outputs[0].hls_playlist_settings.manifest_window_seconds #=> Integer
    #   resp.data.outputs[0].manifest_name #=> String
    #   resp.data.outputs[0].playback_url #=> String
    #   resp.data.outputs[0].source_group #=> String
    #   resp.data.playback_mode #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.tier #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
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

    # <p>Provides details about a specific live source in a specific source location.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeLiveSourceInput}.
    #
    # @option params [String] :live_source_name
    #   <p>The identifier for the live source you are working on.</p>
    #
    # @option params [String] :source_location_name
    #   <p>The identifier for the source location you are working on.</p>
    #
    # @return [Types::DescribeLiveSourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_live_source(
    #     live_source_name: 'LiveSourceName', # required
    #     source_location_name: 'SourceLocationName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeLiveSourceOutput
    #   resp.data.arn #=> String
    #   resp.data.creation_time #=> Time
    #   resp.data.http_package_configurations #=> Array<HttpPackageConfiguration>
    #   resp.data.http_package_configurations[0] #=> Types::HttpPackageConfiguration
    #   resp.data.http_package_configurations[0].path #=> String
    #   resp.data.http_package_configurations[0].source_group #=> String
    #   resp.data.http_package_configurations[0].type #=> String, one of ["DASH", "HLS"]
    #   resp.data.last_modified_time #=> Time
    #   resp.data.live_source_name #=> String
    #   resp.data.source_location_name #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def describe_live_source(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeLiveSourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeLiveSourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeLiveSource
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
        data_parser: Parsers::DescribeLiveSource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeLiveSource,
        stubs: @stubs,
        params_class: Params::DescribeLiveSourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_live_source
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the properties of the requested program.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeProgramInput}.
    #
    # @option params [String] :channel_name
    #   <p>The identifier for the channel you are working on.</p>
    #
    # @option params [String] :program_name
    #   <p>The identifier for the program you are working on.</p>
    #
    # @return [Types::DescribeProgramOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_program(
    #     channel_name: 'ChannelName', # required
    #     program_name: 'ProgramName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeProgramOutput
    #   resp.data.ad_breaks #=> Array<AdBreak>
    #   resp.data.ad_breaks[0] #=> Types::AdBreak
    #   resp.data.ad_breaks[0].message_type #=> String, one of ["SPLICE_INSERT"]
    #   resp.data.ad_breaks[0].offset_millis #=> Integer
    #   resp.data.ad_breaks[0].slate #=> Types::SlateSource
    #   resp.data.ad_breaks[0].slate.source_location_name #=> String
    #   resp.data.ad_breaks[0].slate.vod_source_name #=> String
    #   resp.data.ad_breaks[0].splice_insert_message #=> Types::SpliceInsertMessage
    #   resp.data.ad_breaks[0].splice_insert_message.avail_num #=> Integer
    #   resp.data.ad_breaks[0].splice_insert_message.avails_expected #=> Integer
    #   resp.data.ad_breaks[0].splice_insert_message.splice_event_id #=> Integer
    #   resp.data.ad_breaks[0].splice_insert_message.unique_program_id #=> Integer
    #   resp.data.arn #=> String
    #   resp.data.channel_name #=> String
    #   resp.data.creation_time #=> Time
    #   resp.data.live_source_name #=> String
    #   resp.data.program_name #=> String
    #   resp.data.scheduled_start_time #=> Time
    #   resp.data.source_location_name #=> String
    #   resp.data.vod_source_name #=> String
    #
    def describe_program(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeProgramInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeProgramInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeProgram
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
        data_parser: Parsers::DescribeProgram
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeProgram,
        stubs: @stubs,
        params_class: Params::DescribeProgramOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_program
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the properties of the requested source location.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeSourceLocationInput}.
    #
    # @option params [String] :source_location_name
    #   <p>The identifier for the source location you are working on.</p>
    #
    # @return [Types::DescribeSourceLocationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_source_location(
    #     source_location_name: 'SourceLocationName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeSourceLocationOutput
    #   resp.data.access_configuration #=> Types::AccessConfiguration
    #   resp.data.access_configuration.access_type #=> String, one of ["S3_SIGV4", "SECRETS_MANAGER_ACCESS_TOKEN"]
    #   resp.data.access_configuration.secrets_manager_access_token_configuration #=> Types::SecretsManagerAccessTokenConfiguration
    #   resp.data.access_configuration.secrets_manager_access_token_configuration.header_name #=> String
    #   resp.data.access_configuration.secrets_manager_access_token_configuration.secret_arn #=> String
    #   resp.data.access_configuration.secrets_manager_access_token_configuration.secret_string_key #=> String
    #   resp.data.arn #=> String
    #   resp.data.creation_time #=> Time
    #   resp.data.default_segment_delivery_configuration #=> Types::DefaultSegmentDeliveryConfiguration
    #   resp.data.default_segment_delivery_configuration.base_url #=> String
    #   resp.data.http_configuration #=> Types::HttpConfiguration
    #   resp.data.http_configuration.base_url #=> String
    #   resp.data.last_modified_time #=> Time
    #   resp.data.segment_delivery_configurations #=> Array<SegmentDeliveryConfiguration>
    #   resp.data.segment_delivery_configurations[0] #=> Types::SegmentDeliveryConfiguration
    #   resp.data.segment_delivery_configurations[0].base_url #=> String
    #   resp.data.segment_delivery_configurations[0].name #=> String
    #   resp.data.source_location_name #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def describe_source_location(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeSourceLocationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeSourceLocationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeSourceLocation
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
        data_parser: Parsers::DescribeSourceLocation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeSourceLocation,
        stubs: @stubs,
        params_class: Params::DescribeSourceLocationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_source_location
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides details about a specific VOD source in a specific source location.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeVodSourceInput}.
    #
    # @option params [String] :source_location_name
    #   <p>The identifier for the source location you are working on.</p>
    #
    # @option params [String] :vod_source_name
    #   <p>The identifier for the VOD source you are working on.</p>
    #
    # @return [Types::DescribeVodSourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_vod_source(
    #     source_location_name: 'SourceLocationName', # required
    #     vod_source_name: 'VodSourceName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeVodSourceOutput
    #   resp.data.arn #=> String
    #   resp.data.creation_time #=> Time
    #   resp.data.http_package_configurations #=> Array<HttpPackageConfiguration>
    #   resp.data.http_package_configurations[0] #=> Types::HttpPackageConfiguration
    #   resp.data.http_package_configurations[0].path #=> String
    #   resp.data.http_package_configurations[0].source_group #=> String
    #   resp.data.http_package_configurations[0].type #=> String, one of ["DASH", "HLS"]
    #   resp.data.last_modified_time #=> Time
    #   resp.data.source_location_name #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.vod_source_name #=> String
    #
    def describe_vod_source(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeVodSourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeVodSourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeVodSource
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
        data_parser: Parsers::DescribeVodSource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeVodSource,
        stubs: @stubs,
        params_class: Params::DescribeVodSourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_vod_source
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about a channel's IAM policy.</p>
    #
    # @param [Hash] params
    #   See {Types::GetChannelPolicyInput}.
    #
    # @option params [String] :channel_name
    #   <p>The identifier for the channel you are working on.</p>
    #
    # @return [Types::GetChannelPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_channel_policy(
    #     channel_name: 'ChannelName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetChannelPolicyOutput
    #   resp.data.policy #=> String
    #
    def get_channel_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetChannelPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetChannelPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetChannelPolicy
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
        data_parser: Parsers::GetChannelPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetChannelPolicy,
        stubs: @stubs,
        params_class: Params::GetChannelPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_channel_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about your channel's schedule.</p>
    #
    # @param [Hash] params
    #   See {Types::GetChannelScheduleInput}.
    #
    # @option params [String] :channel_name
    #   <p>The identifier for the channel you are working on.</p>
    #
    # @option params [String] :duration_minutes
    #   <p>The schedule duration in minutes. The maximum duration is 4320 minutes (three days).</p>
    #
    # @option params [Integer] :max_results
    #   <p>Upper bound on number of records to return. The maximum number of results is 100.</p>
    #
    # @option params [String] :next_token
    #   <p>Pagination token from the GET list request. Use the token to fetch the next page of results.</p>
    #
    # @return [Types::GetChannelScheduleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_channel_schedule(
    #     channel_name: 'ChannelName', # required
    #     duration_minutes: 'DurationMinutes',
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetChannelScheduleOutput
    #   resp.data.items #=> Array<ScheduleEntry>
    #   resp.data.items[0] #=> Types::ScheduleEntry
    #   resp.data.items[0].approximate_duration_seconds #=> Integer
    #   resp.data.items[0].approximate_start_time #=> Time
    #   resp.data.items[0].arn #=> String
    #   resp.data.items[0].channel_name #=> String
    #   resp.data.items[0].live_source_name #=> String
    #   resp.data.items[0].program_name #=> String
    #   resp.data.items[0].schedule_ad_breaks #=> Array<ScheduleAdBreak>
    #   resp.data.items[0].schedule_ad_breaks[0] #=> Types::ScheduleAdBreak
    #   resp.data.items[0].schedule_ad_breaks[0].approximate_duration_seconds #=> Integer
    #   resp.data.items[0].schedule_ad_breaks[0].approximate_start_time #=> Time
    #   resp.data.items[0].schedule_ad_breaks[0].source_location_name #=> String
    #   resp.data.items[0].schedule_ad_breaks[0].vod_source_name #=> String
    #   resp.data.items[0].schedule_entry_type #=> String, one of ["PROGRAM", "FILLER_SLATE"]
    #   resp.data.items[0].source_location_name #=> String
    #   resp.data.items[0].vod_source_name #=> String
    #   resp.data.next_token #=> String
    #
    def get_channel_schedule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetChannelScheduleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetChannelScheduleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetChannelSchedule
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
        data_parser: Parsers::GetChannelSchedule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetChannelSchedule,
        stubs: @stubs,
        params_class: Params::GetChannelScheduleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_channel_schedule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the playback configuration for the specified name.</p>
    #
    # @param [Hash] params
    #   See {Types::GetPlaybackConfigurationInput}.
    #
    # @option params [String] :name
    #   <p>The identifier for the playback configuration.</p>
    #
    # @return [Types::GetPlaybackConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_playback_configuration(
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetPlaybackConfigurationOutput
    #   resp.data.ad_decision_server_url #=> String
    #   resp.data.avail_suppression #=> Types::AvailSuppression
    #   resp.data.avail_suppression.mode #=> String, one of ["OFF", "BEHIND_LIVE_EDGE"]
    #   resp.data.avail_suppression.value #=> String
    #   resp.data.bumper #=> Types::Bumper
    #   resp.data.bumper.end_url #=> String
    #   resp.data.bumper.start_url #=> String
    #   resp.data.cdn_configuration #=> Types::CdnConfiguration
    #   resp.data.cdn_configuration.ad_segment_url_prefix #=> String
    #   resp.data.cdn_configuration.content_segment_url_prefix #=> String
    #   resp.data.configuration_aliases #=> Hash<String, Hash<String, String>>
    #   resp.data.configuration_aliases['key'] #=> Hash<String, String>
    #   resp.data.configuration_aliases['key']['key'] #=> String
    #   resp.data.dash_configuration #=> Types::DashConfiguration
    #   resp.data.dash_configuration.manifest_endpoint_prefix #=> String
    #   resp.data.dash_configuration.mpd_location #=> String
    #   resp.data.dash_configuration.origin_manifest_type #=> String, one of ["SINGLE_PERIOD", "MULTI_PERIOD"]
    #   resp.data.hls_configuration #=> Types::HlsConfiguration
    #   resp.data.hls_configuration.manifest_endpoint_prefix #=> String
    #   resp.data.live_pre_roll_configuration #=> Types::LivePreRollConfiguration
    #   resp.data.live_pre_roll_configuration.ad_decision_server_url #=> String
    #   resp.data.live_pre_roll_configuration.max_duration_seconds #=> Integer
    #   resp.data.log_configuration #=> Types::LogConfiguration
    #   resp.data.log_configuration.percent_enabled #=> Integer
    #   resp.data.manifest_processing_rules #=> Types::ManifestProcessingRules
    #   resp.data.manifest_processing_rules.ad_marker_passthrough #=> Types::AdMarkerPassthrough
    #   resp.data.manifest_processing_rules.ad_marker_passthrough.enabled #=> Boolean
    #   resp.data.name #=> String
    #   resp.data.personalization_threshold_seconds #=> Integer
    #   resp.data.playback_configuration_arn #=> String
    #   resp.data.playback_endpoint_prefix #=> String
    #   resp.data.session_initialization_endpoint_prefix #=> String
    #   resp.data.slate_ad_url #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.transcode_profile_name #=> String
    #   resp.data.video_content_source_url #=> String
    #
    def get_playback_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetPlaybackConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetPlaybackConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetPlaybackConfiguration
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
        data_parser: Parsers::GetPlaybackConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetPlaybackConfiguration,
        stubs: @stubs,
        params_class: Params::GetPlaybackConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_playback_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about the prefetch schedule for a specific playback configuration. If you call GetPrefetchSchedule on an expired prefetch schedule, MediaTailor returns an HTTP 404 status code.</p>
    #
    # @param [Hash] params
    #   See {Types::GetPrefetchScheduleInput}.
    #
    # @option params [String] :name
    #   <p>The identifier for the playback configuration.</p>
    #
    # @option params [String] :playback_configuration_name
    #   <p>The name of the playback configuration.</p>
    #
    # @return [Types::GetPrefetchScheduleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_prefetch_schedule(
    #     name: 'Name', # required
    #     playback_configuration_name: 'PlaybackConfigurationName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetPrefetchScheduleOutput
    #   resp.data.arn #=> String
    #   resp.data.consumption #=> Types::PrefetchConsumption
    #   resp.data.consumption.avail_matching_criteria #=> Array<AvailMatchingCriteria>
    #   resp.data.consumption.avail_matching_criteria[0] #=> Types::AvailMatchingCriteria
    #   resp.data.consumption.avail_matching_criteria[0].dynamic_variable #=> String
    #   resp.data.consumption.avail_matching_criteria[0].operator #=> String, one of ["EQUALS"]
    #   resp.data.consumption.end_time #=> Time
    #   resp.data.consumption.start_time #=> Time
    #   resp.data.name #=> String
    #   resp.data.playback_configuration_name #=> String
    #   resp.data.retrieval #=> Types::PrefetchRetrieval
    #   resp.data.retrieval.dynamic_variables #=> Hash<String, String>
    #   resp.data.retrieval.dynamic_variables['key'] #=> String
    #   resp.data.retrieval.end_time #=> Time
    #   resp.data.retrieval.start_time #=> Time
    #   resp.data.stream_id #=> String
    #
    def get_prefetch_schedule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetPrefetchScheduleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetPrefetchScheduleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetPrefetchSchedule
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
        data_parser: Parsers::GetPrefetchSchedule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetPrefetchSchedule,
        stubs: @stubs,
        params_class: Params::GetPrefetchScheduleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_prefetch_schedule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of alerts for the given resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAlertsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>Upper bound on number of records to return. The maximum number of results is 100.</p>
    #
    # @option params [String] :next_token
    #   <p>Pagination token from the GET list request. Use the token to fetch the next page of results.</p>
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    # @return [Types::ListAlertsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_alerts(
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     resource_arn: 'ResourceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAlertsOutput
    #   resp.data.items #=> Array<Alert>
    #   resp.data.items[0] #=> Types::Alert
    #   resp.data.items[0].alert_code #=> String
    #   resp.data.items[0].alert_message #=> String
    #   resp.data.items[0].last_modified_time #=> Time
    #   resp.data.items[0].related_resource_arns #=> Array<String>
    #   resp.data.items[0].related_resource_arns[0] #=> String
    #   resp.data.items[0].resource_arn #=> String
    #   resp.data.next_token #=> String
    #
    def list_alerts(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAlertsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAlertsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAlerts
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
        data_parser: Parsers::ListAlerts
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAlerts,
        stubs: @stubs,
        params_class: Params::ListAlertsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_alerts
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a list of channels that are associated with this account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListChannelsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>Upper bound on number of records to return. The maximum number of results is 100.</p>
    #
    # @option params [String] :next_token
    #   <p>Pagination token from the GET list request. Use the token to fetch the next page of results.</p>
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
    #   resp.data.items #=> Array<Channel>
    #   resp.data.items[0] #=> Types::Channel
    #   resp.data.items[0].arn #=> String
    #   resp.data.items[0].channel_name #=> String
    #   resp.data.items[0].channel_state #=> String
    #   resp.data.items[0].creation_time #=> Time
    #   resp.data.items[0].filler_slate #=> Types::SlateSource
    #   resp.data.items[0].filler_slate.source_location_name #=> String
    #   resp.data.items[0].filler_slate.vod_source_name #=> String
    #   resp.data.items[0].last_modified_time #=> Time
    #   resp.data.items[0].outputs #=> Array<ResponseOutputItem>
    #   resp.data.items[0].outputs[0] #=> Types::ResponseOutputItem
    #   resp.data.items[0].outputs[0].dash_playlist_settings #=> Types::DashPlaylistSettings
    #   resp.data.items[0].outputs[0].dash_playlist_settings.manifest_window_seconds #=> Integer
    #   resp.data.items[0].outputs[0].dash_playlist_settings.min_buffer_time_seconds #=> Integer
    #   resp.data.items[0].outputs[0].dash_playlist_settings.min_update_period_seconds #=> Integer
    #   resp.data.items[0].outputs[0].dash_playlist_settings.suggested_presentation_delay_seconds #=> Integer
    #   resp.data.items[0].outputs[0].hls_playlist_settings #=> Types::HlsPlaylistSettings
    #   resp.data.items[0].outputs[0].hls_playlist_settings.manifest_window_seconds #=> Integer
    #   resp.data.items[0].outputs[0].manifest_name #=> String
    #   resp.data.items[0].outputs[0].playback_url #=> String
    #   resp.data.items[0].outputs[0].source_group #=> String
    #   resp.data.items[0].playback_mode #=> String
    #   resp.data.items[0].tags #=> Hash<String, String>
    #   resp.data.items[0].tags['key'] #=> String
    #   resp.data.items[0].tier #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
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

    # <p>lists all the live sources in a source location.</p>
    #
    # @param [Hash] params
    #   See {Types::ListLiveSourcesInput}.
    #
    # @option params [Integer] :max_results
    #   <p>Upper bound on number of records to return. The maximum number of results is 100.</p>
    #
    # @option params [String] :next_token
    #   <p>Pagination token from the GET list request. Use the token to fetch the next page of results.</p>
    #
    # @option params [String] :source_location_name
    #   <p>The identifier for the source location you are working on.</p>
    #
    # @return [Types::ListLiveSourcesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_live_sources(
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     source_location_name: 'SourceLocationName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListLiveSourcesOutput
    #   resp.data.items #=> Array<LiveSource>
    #   resp.data.items[0] #=> Types::LiveSource
    #   resp.data.items[0].arn #=> String
    #   resp.data.items[0].creation_time #=> Time
    #   resp.data.items[0].http_package_configurations #=> Array<HttpPackageConfiguration>
    #   resp.data.items[0].http_package_configurations[0] #=> Types::HttpPackageConfiguration
    #   resp.data.items[0].http_package_configurations[0].path #=> String
    #   resp.data.items[0].http_package_configurations[0].source_group #=> String
    #   resp.data.items[0].http_package_configurations[0].type #=> String, one of ["DASH", "HLS"]
    #   resp.data.items[0].last_modified_time #=> Time
    #   resp.data.items[0].live_source_name #=> String
    #   resp.data.items[0].source_location_name #=> String
    #   resp.data.items[0].tags #=> Hash<String, String>
    #   resp.data.items[0].tags['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def list_live_sources(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListLiveSourcesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListLiveSourcesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListLiveSources
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
        data_parser: Parsers::ListLiveSources
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListLiveSources,
        stubs: @stubs,
        params_class: Params::ListLiveSourcesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_live_sources
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of the playback configurations defined in AWS Elemental MediaTailor. You can specify a maximum number of configurations to return at a time. The default maximum is 50. Results are returned in pagefuls. If MediaTailor has more configurations than the specified maximum, it provides parameters in the response that you can use to retrieve the next pageful.</p>
    #
    # @param [Hash] params
    #   See {Types::ListPlaybackConfigurationsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>Maximum number of records to return.</p>
    #
    # @option params [String] :next_token
    #   <p>Pagination token returned by the GET list request when results exceed the maximum allowed. Use the token to fetch the next page of results.</p>
    #
    # @return [Types::ListPlaybackConfigurationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_playback_configurations(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPlaybackConfigurationsOutput
    #   resp.data.items #=> Array<PlaybackConfiguration>
    #   resp.data.items[0] #=> Types::PlaybackConfiguration
    #   resp.data.items[0].ad_decision_server_url #=> String
    #   resp.data.items[0].avail_suppression #=> Types::AvailSuppression
    #   resp.data.items[0].avail_suppression.mode #=> String, one of ["OFF", "BEHIND_LIVE_EDGE"]
    #   resp.data.items[0].avail_suppression.value #=> String
    #   resp.data.items[0].bumper #=> Types::Bumper
    #   resp.data.items[0].bumper.end_url #=> String
    #   resp.data.items[0].bumper.start_url #=> String
    #   resp.data.items[0].cdn_configuration #=> Types::CdnConfiguration
    #   resp.data.items[0].cdn_configuration.ad_segment_url_prefix #=> String
    #   resp.data.items[0].cdn_configuration.content_segment_url_prefix #=> String
    #   resp.data.items[0].configuration_aliases #=> Hash<String, Hash<String, String>>
    #   resp.data.items[0].configuration_aliases['key'] #=> Hash<String, String>
    #   resp.data.items[0].configuration_aliases['key']['key'] #=> String
    #   resp.data.items[0].dash_configuration #=> Types::DashConfiguration
    #   resp.data.items[0].dash_configuration.manifest_endpoint_prefix #=> String
    #   resp.data.items[0].dash_configuration.mpd_location #=> String
    #   resp.data.items[0].dash_configuration.origin_manifest_type #=> String, one of ["SINGLE_PERIOD", "MULTI_PERIOD"]
    #   resp.data.items[0].hls_configuration #=> Types::HlsConfiguration
    #   resp.data.items[0].hls_configuration.manifest_endpoint_prefix #=> String
    #   resp.data.items[0].live_pre_roll_configuration #=> Types::LivePreRollConfiguration
    #   resp.data.items[0].live_pre_roll_configuration.ad_decision_server_url #=> String
    #   resp.data.items[0].live_pre_roll_configuration.max_duration_seconds #=> Integer
    #   resp.data.items[0].log_configuration #=> Types::LogConfiguration
    #   resp.data.items[0].log_configuration.percent_enabled #=> Integer
    #   resp.data.items[0].manifest_processing_rules #=> Types::ManifestProcessingRules
    #   resp.data.items[0].manifest_processing_rules.ad_marker_passthrough #=> Types::AdMarkerPassthrough
    #   resp.data.items[0].manifest_processing_rules.ad_marker_passthrough.enabled #=> Boolean
    #   resp.data.items[0].name #=> String
    #   resp.data.items[0].personalization_threshold_seconds #=> Integer
    #   resp.data.items[0].playback_configuration_arn #=> String
    #   resp.data.items[0].playback_endpoint_prefix #=> String
    #   resp.data.items[0].session_initialization_endpoint_prefix #=> String
    #   resp.data.items[0].slate_ad_url #=> String
    #   resp.data.items[0].tags #=> Hash<String, String>
    #   resp.data.items[0].transcode_profile_name #=> String
    #   resp.data.items[0].video_content_source_url #=> String
    #   resp.data.next_token #=> String
    #
    def list_playback_configurations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPlaybackConfigurationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPlaybackConfigurationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPlaybackConfigurations
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
        data_parser: Parsers::ListPlaybackConfigurations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPlaybackConfigurations,
        stubs: @stubs,
        params_class: Params::ListPlaybackConfigurationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_playback_configurations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new prefetch schedule.</p>
    #
    # @param [Hash] params
    #   See {Types::ListPrefetchSchedulesInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of prefetch schedules that you want MediaTailor to return in response to the current request. If the playback configuration has more than MaxResults prefetch schedules, use the value of NextToken in the response to get the next page of results.</p>
    #
    # @option params [String] :next_token
    #   <p>(Optional) If the playback configuration has more than MaxResults prefetch schedules, use NextToken to get the second and subsequent pages of results.</p> <p>For the first ListPrefetchSchedulesRequest request, omit this value.</p> <p>For the second and subsequent requests, get the value of NextToken from the previous response and specify that value for NextToken in the request.</p> <p>If the previous response didn't include a NextToken element, there are no more prefetch schedules to get.</p>
    #
    # @option params [String] :playback_configuration_name
    #   <p>The name of the playback configuration.</p>
    #
    # @option params [String] :stream_id
    #   <p>An optional filtering parameter whereby MediaTailor filters the prefetch schedules to include only specific streams.</p>
    #
    # @return [Types::ListPrefetchSchedulesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_prefetch_schedules(
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     playback_configuration_name: 'PlaybackConfigurationName', # required
    #     stream_id: 'StreamId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPrefetchSchedulesOutput
    #   resp.data.items #=> Array<PrefetchSchedule>
    #   resp.data.items[0] #=> Types::PrefetchSchedule
    #   resp.data.items[0].arn #=> String
    #   resp.data.items[0].consumption #=> Types::PrefetchConsumption
    #   resp.data.items[0].consumption.avail_matching_criteria #=> Array<AvailMatchingCriteria>
    #   resp.data.items[0].consumption.avail_matching_criteria[0] #=> Types::AvailMatchingCriteria
    #   resp.data.items[0].consumption.avail_matching_criteria[0].dynamic_variable #=> String
    #   resp.data.items[0].consumption.avail_matching_criteria[0].operator #=> String, one of ["EQUALS"]
    #   resp.data.items[0].consumption.end_time #=> Time
    #   resp.data.items[0].consumption.start_time #=> Time
    #   resp.data.items[0].name #=> String
    #   resp.data.items[0].playback_configuration_name #=> String
    #   resp.data.items[0].retrieval #=> Types::PrefetchRetrieval
    #   resp.data.items[0].retrieval.dynamic_variables #=> Hash<String, String>
    #   resp.data.items[0].retrieval.dynamic_variables['key'] #=> String
    #   resp.data.items[0].retrieval.end_time #=> Time
    #   resp.data.items[0].retrieval.start_time #=> Time
    #   resp.data.items[0].stream_id #=> String
    #   resp.data.next_token #=> String
    #
    def list_prefetch_schedules(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPrefetchSchedulesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPrefetchSchedulesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPrefetchSchedules
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
        data_parser: Parsers::ListPrefetchSchedules
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPrefetchSchedules,
        stubs: @stubs,
        params_class: Params::ListPrefetchSchedulesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_prefetch_schedules
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a list of source locations.</p>
    #
    # @param [Hash] params
    #   See {Types::ListSourceLocationsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>Upper bound on number of records to return. The maximum number of results is 100.</p>
    #
    # @option params [String] :next_token
    #   <p>Pagination token from the GET list request. Use the token to fetch the next page of results.</p>
    #
    # @return [Types::ListSourceLocationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_source_locations(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListSourceLocationsOutput
    #   resp.data.items #=> Array<SourceLocation>
    #   resp.data.items[0] #=> Types::SourceLocation
    #   resp.data.items[0].access_configuration #=> Types::AccessConfiguration
    #   resp.data.items[0].access_configuration.access_type #=> String, one of ["S3_SIGV4", "SECRETS_MANAGER_ACCESS_TOKEN"]
    #   resp.data.items[0].access_configuration.secrets_manager_access_token_configuration #=> Types::SecretsManagerAccessTokenConfiguration
    #   resp.data.items[0].access_configuration.secrets_manager_access_token_configuration.header_name #=> String
    #   resp.data.items[0].access_configuration.secrets_manager_access_token_configuration.secret_arn #=> String
    #   resp.data.items[0].access_configuration.secrets_manager_access_token_configuration.secret_string_key #=> String
    #   resp.data.items[0].arn #=> String
    #   resp.data.items[0].creation_time #=> Time
    #   resp.data.items[0].default_segment_delivery_configuration #=> Types::DefaultSegmentDeliveryConfiguration
    #   resp.data.items[0].default_segment_delivery_configuration.base_url #=> String
    #   resp.data.items[0].http_configuration #=> Types::HttpConfiguration
    #   resp.data.items[0].http_configuration.base_url #=> String
    #   resp.data.items[0].last_modified_time #=> Time
    #   resp.data.items[0].segment_delivery_configurations #=> Array<SegmentDeliveryConfiguration>
    #   resp.data.items[0].segment_delivery_configurations[0] #=> Types::SegmentDeliveryConfiguration
    #   resp.data.items[0].segment_delivery_configurations[0].base_url #=> String
    #   resp.data.items[0].segment_delivery_configurations[0].name #=> String
    #   resp.data.items[0].source_location_name #=> String
    #   resp.data.items[0].tags #=> Hash<String, String>
    #   resp.data.items[0].tags['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def list_source_locations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListSourceLocationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListSourceLocationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListSourceLocations
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
        data_parser: Parsers::ListSourceLocations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListSourceLocations,
        stubs: @stubs,
        params_class: Params::ListSourceLocationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_source_locations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of the tags assigned to the specified playback configuration resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) for the playback configuration. You can get this from the response to any playback configuration request.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException]),
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

    # <p>Lists all the VOD sources in a source location.</p>
    #
    # @param [Hash] params
    #   See {Types::ListVodSourcesInput}.
    #
    # @option params [Integer] :max_results
    #   <p>Upper bound on number of records to return. The maximum number of results is 100.</p>
    #
    # @option params [String] :next_token
    #   <p>Pagination token from the GET list request. Use the token to fetch the next page of results.</p>
    #
    # @option params [String] :source_location_name
    #   <p>The identifier for the source location you are working on.</p>
    #
    # @return [Types::ListVodSourcesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_vod_sources(
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     source_location_name: 'SourceLocationName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListVodSourcesOutput
    #   resp.data.items #=> Array<VodSource>
    #   resp.data.items[0] #=> Types::VodSource
    #   resp.data.items[0].arn #=> String
    #   resp.data.items[0].creation_time #=> Time
    #   resp.data.items[0].http_package_configurations #=> Array<HttpPackageConfiguration>
    #   resp.data.items[0].http_package_configurations[0] #=> Types::HttpPackageConfiguration
    #   resp.data.items[0].http_package_configurations[0].path #=> String
    #   resp.data.items[0].http_package_configurations[0].source_group #=> String
    #   resp.data.items[0].http_package_configurations[0].type #=> String, one of ["DASH", "HLS"]
    #   resp.data.items[0].last_modified_time #=> Time
    #   resp.data.items[0].source_location_name #=> String
    #   resp.data.items[0].tags #=> Hash<String, String>
    #   resp.data.items[0].tags['key'] #=> String
    #   resp.data.items[0].vod_source_name #=> String
    #   resp.data.next_token #=> String
    #
    def list_vod_sources(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListVodSourcesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListVodSourcesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListVodSources
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
        data_parser: Parsers::ListVodSources
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListVodSources,
        stubs: @stubs,
        params_class: Params::ListVodSourcesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_vod_sources
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an IAM policy for the channel.</p>
    #
    # @param [Hash] params
    #   See {Types::PutChannelPolicyInput}.
    #
    # @option params [String] :channel_name
    #   <p>The identifier for the channel you are working on.</p>
    #
    # @option params [String] :policy
    #   <p>Adds an IAM role that determines the permissions of your channel.</p>
    #
    # @return [Types::PutChannelPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_channel_policy(
    #     channel_name: 'ChannelName', # required
    #     policy: 'Policy' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutChannelPolicyOutput
    #
    def put_channel_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutChannelPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutChannelPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutChannelPolicy
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
        data_parser: Parsers::PutChannelPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutChannelPolicy,
        stubs: @stubs,
        params_class: Params::PutChannelPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_channel_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds a new playback configuration to AWS Elemental MediaTailor.</p>
    #
    # @param [Hash] params
    #   See {Types::PutPlaybackConfigurationInput}.
    #
    # @option params [String] :ad_decision_server_url
    #   <p>The URL for the ad decision server (ADS). This includes the specification of static parameters and placeholders for dynamic parameters. AWS Elemental MediaTailor substitutes player-specific and session-specific parameters as needed when calling the ADS. Alternately, for testing you can provide a static VAST URL. The maximum length is 25,000 characters.</p>
    #
    # @option params [AvailSuppression] :avail_suppression
    #   <p>The configuration for avail suppression, also known as ad suppression. For more information about ad suppression, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/ad-behavior.html">Ad Suppression</a>.</p>
    #
    # @option params [Bumper] :bumper
    #   <p>The configuration for bumpers. Bumpers are short audio or video clips that play at the start or before the end of an ad break. To learn more about bumpers, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/bumpers.html">Bumpers</a>.</p>
    #
    # @option params [CdnConfiguration] :cdn_configuration
    #   <p>The configuration for using a content delivery network (CDN), like Amazon CloudFront, for content and ad segment management.</p>
    #
    # @option params [Hash<String, Hash<String, String>>] :configuration_aliases
    #   <p>The player parameters and aliases used as dynamic variables during session initialization. For more information, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/variables-domain.html">Domain Variables</a>.</p>
    #
    # @option params [DashConfigurationForPut] :dash_configuration
    #   <p>The configuration for DASH content.</p>
    #
    # @option params [LivePreRollConfiguration] :live_pre_roll_configuration
    #   <p>The configuration for pre-roll ad insertion.</p>
    #
    # @option params [ManifestProcessingRules] :manifest_processing_rules
    #   <p>The configuration for manifest processing rules. Manifest processing rules enable customization of the personalized manifests created by MediaTailor.</p>
    #
    # @option params [String] :name
    #   <p>The identifier for the playback configuration.</p>
    #
    # @option params [Integer] :personalization_threshold_seconds
    #   <p>Defines the maximum duration of underfilled ad time (in seconds) allowed in an ad break. If the duration of underfilled ad time exceeds the personalization threshold, then the personalization of the ad break is abandoned and the underlying content is shown. This feature applies to <i>ad replacement</i> in live and VOD streams, rather than ad insertion, because it relies on an underlying content stream. For more information about ad break behavior, including ad replacement and insertion, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/ad-behavior.html">Ad Behavior in AWS Elemental MediaTailor</a>.</p>
    #
    # @option params [String] :slate_ad_url
    #   <p>The URL for a high-quality video asset to transcode and use to fill in time that's not used by ads. AWS Elemental MediaTailor shows the slate to fill in gaps in media content. Configuring the slate is optional for non-VPAID configurations. For VPAID, the slate is required because MediaTailor provides it in the slots that are designated for dynamic ad content. The slate must be a high-quality asset that contains both audio and video.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to assign to the playback configuration.</p>
    #
    # @option params [String] :transcode_profile_name
    #   <p>The name that is used to associate this playback configuration with a custom transcode profile. This overrides the dynamic transcoding defaults of MediaTailor. Use this only if you have already set up custom profiles with the help of AWS Support.</p>
    #
    # @option params [String] :video_content_source_url
    #   <p>The URL prefix for the parent manifest for the stream, minus the asset ID. The maximum length is 512 characters.</p>
    #
    # @return [Types::PutPlaybackConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_playback_configuration(
    #     ad_decision_server_url: 'AdDecisionServerUrl',
    #     avail_suppression: {
    #       mode: 'OFF', # accepts ["OFF", "BEHIND_LIVE_EDGE"]
    #       value: 'Value'
    #     },
    #     bumper: {
    #       end_url: 'EndUrl',
    #       start_url: 'StartUrl'
    #     },
    #     cdn_configuration: {
    #       ad_segment_url_prefix: 'AdSegmentUrlPrefix',
    #       content_segment_url_prefix: 'ContentSegmentUrlPrefix'
    #     },
    #     configuration_aliases: {
    #       'key' => {
    #         'key' => 'value'
    #       }
    #     },
    #     dash_configuration: {
    #       mpd_location: 'MpdLocation',
    #       origin_manifest_type: 'SINGLE_PERIOD' # accepts ["SINGLE_PERIOD", "MULTI_PERIOD"]
    #     },
    #     live_pre_roll_configuration: {
    #       ad_decision_server_url: 'AdDecisionServerUrl',
    #       max_duration_seconds: 1
    #     },
    #     manifest_processing_rules: {
    #       ad_marker_passthrough: {
    #         enabled: false
    #       }
    #     },
    #     name: 'Name',
    #     personalization_threshold_seconds: 1,
    #     slate_ad_url: 'SlateAdUrl',
    #     transcode_profile_name: 'TranscodeProfileName',
    #     video_content_source_url: 'VideoContentSourceUrl'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutPlaybackConfigurationOutput
    #   resp.data.ad_decision_server_url #=> String
    #   resp.data.avail_suppression #=> Types::AvailSuppression
    #   resp.data.avail_suppression.mode #=> String, one of ["OFF", "BEHIND_LIVE_EDGE"]
    #   resp.data.avail_suppression.value #=> String
    #   resp.data.bumper #=> Types::Bumper
    #   resp.data.bumper.end_url #=> String
    #   resp.data.bumper.start_url #=> String
    #   resp.data.cdn_configuration #=> Types::CdnConfiguration
    #   resp.data.cdn_configuration.ad_segment_url_prefix #=> String
    #   resp.data.cdn_configuration.content_segment_url_prefix #=> String
    #   resp.data.configuration_aliases #=> Hash<String, Hash<String, String>>
    #   resp.data.configuration_aliases['key'] #=> Hash<String, String>
    #   resp.data.configuration_aliases['key']['key'] #=> String
    #   resp.data.dash_configuration #=> Types::DashConfiguration
    #   resp.data.dash_configuration.manifest_endpoint_prefix #=> String
    #   resp.data.dash_configuration.mpd_location #=> String
    #   resp.data.dash_configuration.origin_manifest_type #=> String, one of ["SINGLE_PERIOD", "MULTI_PERIOD"]
    #   resp.data.hls_configuration #=> Types::HlsConfiguration
    #   resp.data.hls_configuration.manifest_endpoint_prefix #=> String
    #   resp.data.live_pre_roll_configuration #=> Types::LivePreRollConfiguration
    #   resp.data.live_pre_roll_configuration.ad_decision_server_url #=> String
    #   resp.data.live_pre_roll_configuration.max_duration_seconds #=> Integer
    #   resp.data.log_configuration #=> Types::LogConfiguration
    #   resp.data.log_configuration.percent_enabled #=> Integer
    #   resp.data.manifest_processing_rules #=> Types::ManifestProcessingRules
    #   resp.data.manifest_processing_rules.ad_marker_passthrough #=> Types::AdMarkerPassthrough
    #   resp.data.manifest_processing_rules.ad_marker_passthrough.enabled #=> Boolean
    #   resp.data.name #=> String
    #   resp.data.personalization_threshold_seconds #=> Integer
    #   resp.data.playback_configuration_arn #=> String
    #   resp.data.playback_endpoint_prefix #=> String
    #   resp.data.session_initialization_endpoint_prefix #=> String
    #   resp.data.slate_ad_url #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.transcode_profile_name #=> String
    #   resp.data.video_content_source_url #=> String
    #
    def put_playback_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutPlaybackConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutPlaybackConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutPlaybackConfiguration
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
        data_parser: Parsers::PutPlaybackConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutPlaybackConfiguration,
        stubs: @stubs,
        params_class: Params::PutPlaybackConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_playback_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts a specific channel.</p>
    #
    # @param [Hash] params
    #   See {Types::StartChannelInput}.
    #
    # @option params [String] :channel_name
    #   <p>The identifier for the channel you are working on.</p>
    #
    # @return [Types::StartChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_channel(
    #     channel_name: 'ChannelName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartChannelOutput
    #
    def start_channel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartChannelInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartChannelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartChannel
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
        data_parser: Parsers::StartChannel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartChannel,
        stubs: @stubs,
        params_class: Params::StartChannelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_channel
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Stops a specific channel.</p>
    #
    # @param [Hash] params
    #   See {Types::StopChannelInput}.
    #
    # @option params [String] :channel_name
    #   <p>The identifier for the channel you are working on.</p>
    #
    # @return [Types::StopChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_channel(
    #     channel_name: 'ChannelName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopChannelOutput
    #
    def stop_channel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopChannelInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopChannelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopChannel
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
        data_parser: Parsers::StopChannel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopChannel,
        stubs: @stubs,
        params_class: Params::StopChannelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_channel
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds tags to the specified playback configuration resource. You can specify one or more tags to add.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) for the playback configuration. You can get this from the response to any playback configuration request.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>A comma-separated list of tag key:value pairs.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::BadRequestException]),
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

    # <p>Removes tags from the specified playback configuration resource. You can specify one or more tags to remove.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) for the playback configuration. You can get this from the response to any playback configuration request.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>A comma-separated list of the tag keys to remove from the playback configuration.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::BadRequestException]),
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

    # <p>Updates an existing channel.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateChannelInput}.
    #
    # @option params [String] :channel_name
    #   <p>The identifier for the channel you are working on.</p>
    #
    # @option params [SlateSource] :filler_slate
    #   <p>The slate used to fill gaps between programs in the schedule. You must configure filler slate if your channel uses the LINEAR PlaybackMode. MediaTailor doesn't support filler slate for channels using the LOOP PlaybackMode.</p>
    #
    # @option params [Array<RequestOutputItem>] :outputs
    #   <p>The channel's output properties.</p>
    #
    # @return [Types::UpdateChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_channel(
    #     channel_name: 'ChannelName', # required
    #     filler_slate: {
    #       source_location_name: 'SourceLocationName',
    #       vod_source_name: 'VodSourceName'
    #     },
    #     outputs: [
    #       {
    #         dash_playlist_settings: {
    #           manifest_window_seconds: 1,
    #           min_buffer_time_seconds: 1,
    #           min_update_period_seconds: 1,
    #           suggested_presentation_delay_seconds: 1
    #         },
    #         hls_playlist_settings: {
    #           manifest_window_seconds: 1
    #         },
    #         manifest_name: 'ManifestName', # required
    #         source_group: 'SourceGroup' # required
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateChannelOutput
    #   resp.data.arn #=> String
    #   resp.data.channel_name #=> String
    #   resp.data.channel_state #=> String, one of ["RUNNING", "STOPPED"]
    #   resp.data.creation_time #=> Time
    #   resp.data.filler_slate #=> Types::SlateSource
    #   resp.data.filler_slate.source_location_name #=> String
    #   resp.data.filler_slate.vod_source_name #=> String
    #   resp.data.last_modified_time #=> Time
    #   resp.data.outputs #=> Array<ResponseOutputItem>
    #   resp.data.outputs[0] #=> Types::ResponseOutputItem
    #   resp.data.outputs[0].dash_playlist_settings #=> Types::DashPlaylistSettings
    #   resp.data.outputs[0].dash_playlist_settings.manifest_window_seconds #=> Integer
    #   resp.data.outputs[0].dash_playlist_settings.min_buffer_time_seconds #=> Integer
    #   resp.data.outputs[0].dash_playlist_settings.min_update_period_seconds #=> Integer
    #   resp.data.outputs[0].dash_playlist_settings.suggested_presentation_delay_seconds #=> Integer
    #   resp.data.outputs[0].hls_playlist_settings #=> Types::HlsPlaylistSettings
    #   resp.data.outputs[0].hls_playlist_settings.manifest_window_seconds #=> Integer
    #   resp.data.outputs[0].manifest_name #=> String
    #   resp.data.outputs[0].playback_url #=> String
    #   resp.data.outputs[0].source_group #=> String
    #   resp.data.playback_mode #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.tier #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
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

    # <p>Updates a specific live source in a specific source location.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateLiveSourceInput}.
    #
    # @option params [Array<HttpPackageConfiguration>] :http_package_configurations
    #   <p>A list of HTTP package configurations for the live source on this account.</p>
    #
    # @option params [String] :live_source_name
    #   <p>The identifier for the live source you are working on.</p>
    #
    # @option params [String] :source_location_name
    #   <p>The identifier for the source location you are working on.</p>
    #
    # @return [Types::UpdateLiveSourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_live_source(
    #     http_package_configurations: [
    #       {
    #         path: 'Path', # required
    #         source_group: 'SourceGroup', # required
    #         type: 'DASH' # required - accepts ["DASH", "HLS"]
    #       }
    #     ], # required
    #     live_source_name: 'LiveSourceName', # required
    #     source_location_name: 'SourceLocationName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateLiveSourceOutput
    #   resp.data.arn #=> String
    #   resp.data.creation_time #=> Time
    #   resp.data.http_package_configurations #=> Array<HttpPackageConfiguration>
    #   resp.data.http_package_configurations[0] #=> Types::HttpPackageConfiguration
    #   resp.data.http_package_configurations[0].path #=> String
    #   resp.data.http_package_configurations[0].source_group #=> String
    #   resp.data.http_package_configurations[0].type #=> String, one of ["DASH", "HLS"]
    #   resp.data.last_modified_time #=> Time
    #   resp.data.live_source_name #=> String
    #   resp.data.source_location_name #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def update_live_source(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateLiveSourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateLiveSourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateLiveSource
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
        data_parser: Parsers::UpdateLiveSource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateLiveSource,
        stubs: @stubs,
        params_class: Params::UpdateLiveSourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_live_source
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a source location on a specific channel.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateSourceLocationInput}.
    #
    # @option params [AccessConfiguration] :access_configuration
    #   <p>Access configuration parameters. Configures the type of authentication used to access content from your source location.</p>
    #
    # @option params [DefaultSegmentDeliveryConfiguration] :default_segment_delivery_configuration
    #   <p>The optional configuration for the host server that serves segments.</p>
    #
    # @option params [HttpConfiguration] :http_configuration
    #   <p>The HTTP configuration for the source location.</p>
    #
    # @option params [Array<SegmentDeliveryConfiguration>] :segment_delivery_configurations
    #   <p>A list of the segment delivery configurations associated with this resource.</p>
    #
    # @option params [String] :source_location_name
    #   <p>The identifier for the source location you are working on.</p>
    #
    # @return [Types::UpdateSourceLocationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_source_location(
    #     access_configuration: {
    #       access_type: 'S3_SIGV4', # accepts ["S3_SIGV4", "SECRETS_MANAGER_ACCESS_TOKEN"]
    #       secrets_manager_access_token_configuration: {
    #         header_name: 'HeaderName',
    #         secret_arn: 'SecretArn',
    #         secret_string_key: 'SecretStringKey'
    #       }
    #     },
    #     default_segment_delivery_configuration: {
    #       base_url: 'BaseUrl'
    #     },
    #     http_configuration: {
    #       base_url: 'BaseUrl' # required
    #     }, # required
    #     segment_delivery_configurations: [
    #       {
    #         base_url: 'BaseUrl',
    #         name: 'Name'
    #       }
    #     ],
    #     source_location_name: 'SourceLocationName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateSourceLocationOutput
    #   resp.data.access_configuration #=> Types::AccessConfiguration
    #   resp.data.access_configuration.access_type #=> String, one of ["S3_SIGV4", "SECRETS_MANAGER_ACCESS_TOKEN"]
    #   resp.data.access_configuration.secrets_manager_access_token_configuration #=> Types::SecretsManagerAccessTokenConfiguration
    #   resp.data.access_configuration.secrets_manager_access_token_configuration.header_name #=> String
    #   resp.data.access_configuration.secrets_manager_access_token_configuration.secret_arn #=> String
    #   resp.data.access_configuration.secrets_manager_access_token_configuration.secret_string_key #=> String
    #   resp.data.arn #=> String
    #   resp.data.creation_time #=> Time
    #   resp.data.default_segment_delivery_configuration #=> Types::DefaultSegmentDeliveryConfiguration
    #   resp.data.default_segment_delivery_configuration.base_url #=> String
    #   resp.data.http_configuration #=> Types::HttpConfiguration
    #   resp.data.http_configuration.base_url #=> String
    #   resp.data.last_modified_time #=> Time
    #   resp.data.segment_delivery_configurations #=> Array<SegmentDeliveryConfiguration>
    #   resp.data.segment_delivery_configurations[0] #=> Types::SegmentDeliveryConfiguration
    #   resp.data.segment_delivery_configurations[0].base_url #=> String
    #   resp.data.segment_delivery_configurations[0].name #=> String
    #   resp.data.source_location_name #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def update_source_location(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateSourceLocationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateSourceLocationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateSourceLocation
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
        data_parser: Parsers::UpdateSourceLocation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateSourceLocation,
        stubs: @stubs,
        params_class: Params::UpdateSourceLocationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_source_location
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a specific VOD source in a specific source location.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateVodSourceInput}.
    #
    # @option params [Array<HttpPackageConfiguration>] :http_package_configurations
    #   <p>A list of HTTP package configurations for the VOD source on this account.</p>
    #
    # @option params [String] :source_location_name
    #   <p>The identifier for the source location you are working on.</p>
    #
    # @option params [String] :vod_source_name
    #   <p>The identifier for the VOD source you are working on.</p>
    #
    # @return [Types::UpdateVodSourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_vod_source(
    #     http_package_configurations: [
    #       {
    #         path: 'Path', # required
    #         source_group: 'SourceGroup', # required
    #         type: 'DASH' # required - accepts ["DASH", "HLS"]
    #       }
    #     ], # required
    #     source_location_name: 'SourceLocationName', # required
    #     vod_source_name: 'VodSourceName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateVodSourceOutput
    #   resp.data.arn #=> String
    #   resp.data.creation_time #=> Time
    #   resp.data.http_package_configurations #=> Array<HttpPackageConfiguration>
    #   resp.data.http_package_configurations[0] #=> Types::HttpPackageConfiguration
    #   resp.data.http_package_configurations[0].path #=> String
    #   resp.data.http_package_configurations[0].source_group #=> String
    #   resp.data.http_package_configurations[0].type #=> String, one of ["DASH", "HLS"]
    #   resp.data.last_modified_time #=> Time
    #   resp.data.source_location_name #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.vod_source_name #=> String
    #
    def update_vod_source(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateVodSourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateVodSourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateVodSource
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
        data_parser: Parsers::UpdateVodSource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateVodSource,
        stubs: @stubs,
        params_class: Params::UpdateVodSourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_vod_source
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
