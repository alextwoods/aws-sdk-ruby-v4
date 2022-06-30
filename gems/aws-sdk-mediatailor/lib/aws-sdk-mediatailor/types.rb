# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::MediaTailor
  module Types

    # <p>Access configuration parameters.</p>
    #
    # @!attribute access_type
    #   <p>The type of authentication used to access content from HttpConfiguration::BaseUrl on your source location. Accepted value: S3_SIGV4.</p> <p>S3_SIGV4 - AWS Signature Version 4 authentication for Amazon S3 hosted virtual-style access. If your source location base URL is an Amazon S3 bucket, MediaTailor can use AWS Signature Version 4 (SigV4) authentication to access the bucket where your source content is stored. Your MediaTailor source location baseURL must follow the S3 virtual hosted-style request URL format. For example, https://bucket-name.s3.Region.amazonaws.com/key-name.</p> <p>Before you can use S3_SIGV4, you must meet these requirements:</p> <p>• You must allow MediaTailor to access your S3 bucket by granting mediatailor.amazonaws.com principal access in IAM. For information about configuring access in IAM, see Access management in the IAM User Guide.</p> <p>• The mediatailor.amazonaws.com service principal must have permissions to read all top level manifests referenced by the VodSource packaging configurations.</p> <p>• The caller of the API must have s3:GetObject IAM permissions to read all top level manifests referenced by your MediaTailor VodSource packaging configurations.</p>
    #
    #   Enum, one of: ["S3_SIGV4", "SECRETS_MANAGER_ACCESS_TOKEN"]
    #
    #   @return [String]
    #
    # @!attribute secrets_manager_access_token_configuration
    #   <p>AWS Secrets Manager access token configuration parameters.</p>
    #
    #   @return [SecretsManagerAccessTokenConfiguration]
    #
    AccessConfiguration = ::Struct.new(
      :access_type,
      :secrets_manager_access_token_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AccessType
    #
    module AccessType
      # No documentation available.
      #
      S3_SIGV4 = "S3_SIGV4"

      # No documentation available.
      #
      SECRETS_MANAGER_ACCESS_TOKEN = "SECRETS_MANAGER_ACCESS_TOKEN"
    end

    # <p>Ad break configuration parameters.</p>
    #
    # @!attribute message_type
    #   <p>The SCTE-35 ad insertion type. Accepted value: SPLICE_INSERT.</p>
    #
    #   Enum, one of: ["SPLICE_INSERT"]
    #
    #   @return [String]
    #
    # @!attribute offset_millis
    #   <p>How long (in milliseconds) after the beginning of the program that an ad starts. This value must fall within 100ms of a segment boundary, otherwise the ad break will be skipped.</p>
    #
    #   @return [Integer]
    #
    # @!attribute slate
    #   <p>Ad break slate configuration.</p>
    #
    #   @return [SlateSource]
    #
    # @!attribute splice_insert_message
    #   <p>This defines the SCTE-35 splice_insert() message inserted around the ad. For information about using splice_insert(), see the SCTE-35 specficiaiton, section 9.7.3.1.</p>
    #
    #   @return [SpliceInsertMessage]
    #
    AdBreak = ::Struct.new(
      :message_type,
      :offset_millis,
      :slate,
      :splice_insert_message,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.offset_millis ||= 0
      end

    end

    # <p>For HLS, when set to true, MediaTailor passes through EXT-X-CUE-IN, EXT-X-CUE-OUT, and EXT-X-SPLICEPOINT-SCTE35 ad markers from the origin manifest to the MediaTailor personalized manifest.</p> <p>No logic is applied to these ad markers. For example, if EXT-X-CUE-OUT has a value of 60, but no ads are filled for that ad break, MediaTailor will not set the value to 0.</p>
    #
    # @!attribute enabled
    #   <p>Enables ad marker passthrough for your configuration.</p>
    #
    #   @return [Boolean]
    #
    AdMarkerPassthrough = ::Struct.new(
      :enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.enabled ||= false
      end

    end

    # <p>Alert configuration parameters.</p>
    #
    # @!attribute alert_code
    #   <p>The code for the alert. For example, NOT_PROCESSED.</p>
    #
    #   @return [String]
    #
    # @!attribute alert_message
    #   <p>If an alert is generated for a resource, an explanation of the reason for the alert.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified_time
    #   <p>The timestamp when the alert was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute related_resource_arns
    #   <p>The Amazon Resource Names (ARNs) related to this alert.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    #   @return [String]
    #
    Alert = ::Struct.new(
      :alert_code,
      :alert_message,
      :last_modified_time,
      :related_resource_arns,
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>MediaTailor only places (consumes) prefetched ads if the ad break meets the criteria defined by the dynamic variables. This gives you granular control over which ad break to place the prefetched ads into.</p> <p>As an example, let's say that you set DynamicVariable to scte.event_id and Operator to EQUALS, and your playback configuration has an ADS URL of https://my.ads.server.com/path?&amp;podId=[scte.avail_num]&amp;event=[scte.event_id]&amp;duration=[session.avail_duration_secs]. And the prefetch request to the ADS contains these values https://my.ads.server.com/path?&amp;podId=3&amp;event=my-awesome-event&amp;duration=30. MediaTailor will only insert the prefetched ads into the ad break if has a SCTE marker with an event id of my-awesome-event, since it must match the event id that MediaTailor uses to query the ADS.</p> <p>You can specify up to five AvailMatchingCriteria. If you specify multiple AvailMatchingCriteria, MediaTailor combines them to match using a logical AND. You can model logical OR combinations by creating multiple prefetch schedules.</p>
    #
    # @!attribute dynamic_variable
    #   <p>The dynamic variable(s) that MediaTailor should use as avail matching criteria. MediaTailor only places the prefetched ads into the avail if the avail matches the criteria defined by the dynamic variable. For information about dynamic variables, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/variables.html">Using dynamic ad variables</a> in the <i>MediaTailor User Guide</i>.</p> <p>You can include up to 100 dynamic variables.</p>
    #
    #   @return [String]
    #
    # @!attribute operator
    #   <p>For the DynamicVariable specified in AvailMatchingCriteria, the Operator that is used for the comparison.</p>
    #
    #   Enum, one of: ["EQUALS"]
    #
    #   @return [String]
    #
    AvailMatchingCriteria = ::Struct.new(
      :dynamic_variable,
      :operator,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The configuration for avail suppression, also known as ad suppression. For more information about ad suppression, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/ad-behavior.html">Ad Suppression</a>.</p>
    #
    # @!attribute mode
    #   <p>Sets the ad suppression mode. By default, ad suppression is off and all ad breaks are filled with ads or slate. When Mode is set to BEHIND_LIVE_EDGE, ad suppression is active and MediaTailor won't fill ad breaks on or behind the ad suppression Value time in the manifest lookback window.</p>
    #
    #   Enum, one of: ["OFF", "BEHIND_LIVE_EDGE"]
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>A live edge offset time in HH:MM:SS. MediaTailor won't fill ad breaks on or behind this time in the manifest lookback window. If Value is set to 00:00:00, it is in sync with the live edge, and MediaTailor won't fill any ad breaks on or behind the live edge. If you set a Value time, MediaTailor won't fill any ad breaks on or behind this time in the manifest lookback window. For example, if you set 00:45:00, then MediaTailor will fill ad breaks that occur within 45 minutes behind the live edge, but won't fill ad breaks on or behind 45 minutes behind the live edge.</p>
    #
    #   @return [String]
    #
    AvailSuppression = ::Struct.new(
      :mode,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Invalid request parameters.
    #
    # @!attribute message
    #
    #   @return [String]
    #
    BadRequestException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The configuration for bumpers. Bumpers are short audio or video clips that play at the start or before the end of an ad break. To learn more about bumpers, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/bumpers.html">Bumpers</a>.</p>
    #
    # @!attribute end_url
    #   <p>The URL for the end bumper asset.</p>
    #
    #   @return [String]
    #
    # @!attribute start_url
    #   <p>The URL for the start bumper asset.</p>
    #
    #   @return [String]
    #
    Bumper = ::Struct.new(
      :end_url,
      :start_url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The configuration for using a content delivery network (CDN), like Amazon CloudFront, for content and ad segment management.</p>
    #
    # @!attribute ad_segment_url_prefix
    #   <p>A non-default content delivery network (CDN) to serve ad segments. By default, AWS Elemental MediaTailor uses Amazon CloudFront with default cache settings as its CDN for ad segments. To set up an alternate CDN, create a rule in your CDN for the origin ads.mediatailor.&amp;lt;region>.amazonaws.com. Then specify the rule's name in this AdSegmentUrlPrefix. When AWS Elemental MediaTailor serves a manifest, it reports your CDN as the source for ad segments.</p>
    #
    #   @return [String]
    #
    # @!attribute content_segment_url_prefix
    #   <p>A content delivery network (CDN) to cache content segments, so that content requests don’t always have to go to the origin server. First, create a rule in your CDN for the content segment origin server. Then specify the rule's name in this ContentSegmentUrlPrefix. When AWS Elemental MediaTailor serves a manifest, it reports your CDN as the source for content segments.</p>
    #
    #   @return [String]
    #
    CdnConfiguration = ::Struct.new(
      :ad_segment_url_prefix,
      :content_segment_url_prefix,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The configuration parameters for a channel.</p>
    #
    # @!attribute arn
    #   <p>The ARN of the channel.</p>
    #
    #   @return [String]
    #
    # @!attribute channel_name
    #   <p>The name of the channel.</p>
    #
    #   @return [String]
    #
    # @!attribute channel_state
    #   <p>Returns the state whether the channel is running or not.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The timestamp of when the channel was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute filler_slate
    #   <p>The slate used to fill gaps between programs in the schedule. You must configure filler slate if your channel uses the LINEAR PlaybackMode. MediaTailor doesn't support filler slate for channels using the LOOP PlaybackMode.</p>
    #
    #   @return [SlateSource]
    #
    # @!attribute last_modified_time
    #   <p>The timestamp of when the channel was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute outputs
    #   <p>The channel's output properties.</p>
    #
    #   @return [Array<ResponseOutputItem>]
    #
    # @!attribute playback_mode
    #   <p>The type of playback mode for this channel.</p> <p>LINEAR - Programs play back-to-back only once.</p> <p>LOOP - Programs play back-to-back in an endless loop. When the last program in the schedule plays, playback loops back to the first program in the schedule.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to assign to the channel.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute tier
    #   <p>The tier for this channel. STANDARD tier channels can contain live programs.</p>
    #
    #   @return [String]
    #
    Channel = ::Struct.new(
      :arn,
      :channel_name,
      :channel_state,
      :creation_time,
      :filler_slate,
      :last_modified_time,
      :outputs,
      :playback_mode,
      :tags,
      :tier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ChannelState
    #
    module ChannelState
      # No documentation available.
      #
      RUNNING = "RUNNING"

      # No documentation available.
      #
      STOPPED = "STOPPED"
    end

    # <p>Configures Amazon CloudWatch log settings for a playback configuration.</p>
    #
    # @!attribute percent_enabled
    #   <p>The percentage of session logs that MediaTailor sends to your Cloudwatch Logs account. For example, if your playback configuration has 1000 sessions and percentEnabled is set to 60, MediaTailor sends logs for 600 of the sessions to CloudWatch Logs. MediaTailor decides at random which of the playback configuration sessions to send logs for. If you want to view logs for a specific session, you can use the <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/debug-log-mode.html">debug log mode</a>.</p> <p>Valid values: 0 - 100</p>
    #
    #   @return [Integer]
    #
    # @!attribute playback_configuration_name
    #   <p>The name of the playback configuration.</p>
    #
    #   @return [String]
    #
    ConfigureLogsForPlaybackConfigurationInput = ::Struct.new(
      :percent_enabled,
      :playback_configuration_name,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.percent_enabled ||= 0
      end

    end

    # @!attribute percent_enabled
    #   <p>The percentage of session logs that MediaTailor sends to your Cloudwatch Logs account.</p>
    #
    #   @return [Integer]
    #
    # @!attribute playback_configuration_name
    #   <p>The name of the playback configuration.</p>
    #
    #   @return [String]
    #
    ConfigureLogsForPlaybackConfigurationOutput = ::Struct.new(
      :percent_enabled,
      :playback_configuration_name,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.percent_enabled ||= 0
      end

    end

    # @!attribute channel_name
    #   <p>The identifier for the channel you are working on.</p>
    #
    #   @return [String]
    #
    # @!attribute filler_slate
    #   <p>The slate used to fill gaps between programs in the schedule. You must configure filler slate if your channel uses the LINEAR PlaybackMode. MediaTailor doesn't support filler slate for channels using the LOOP PlaybackMode.</p>
    #
    #   @return [SlateSource]
    #
    # @!attribute outputs
    #   <p>The channel's output properties.</p>
    #
    #   @return [Array<RequestOutputItem>]
    #
    # @!attribute playback_mode
    #   <p>The type of playback mode to use for this channel.</p> <p>LINEAR - The programs in the schedule play once back-to-back in the schedule.</p> <p>LOOP - The programs in the schedule play back-to-back in an endless loop. When the last program in the schedule stops playing, playback loops back to the first program in the schedule.</p>
    #
    #   Enum, one of: ["LOOP", "LINEAR"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to assign to the channel.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute tier
    #   <p>The tier of the channel.</p>
    #
    #   Enum, one of: ["BASIC", "STANDARD"]
    #
    #   @return [String]
    #
    CreateChannelInput = ::Struct.new(
      :channel_name,
      :filler_slate,
      :outputs,
      :playback_mode,
      :tags,
      :tier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the channel.</p>
    #
    #   @return [String]
    #
    # @!attribute channel_name
    #   <p>The name of the channel.</p>
    #
    #   @return [String]
    #
    # @!attribute channel_state
    #   <p>Indicates whether the channel is in a running state or not.</p>
    #
    #   Enum, one of: ["RUNNING", "STOPPED"]
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The timestamp of when the channel was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute filler_slate
    #   <p>Contains information about the slate used to fill gaps between programs in the schedule.</p>
    #
    #   @return [SlateSource]
    #
    # @!attribute last_modified_time
    #   <p>The timestamp of when the channel was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute outputs
    #   <p>The channel's output properties.</p>
    #
    #   @return [Array<ResponseOutputItem>]
    #
    # @!attribute playback_mode
    #   <p>The channel's playback mode.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags assigned to the channel.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute tier
    #   <p>The channel's tier.</p>
    #
    #   @return [String]
    #
    CreateChannelOutput = ::Struct.new(
      :arn,
      :channel_name,
      :channel_state,
      :creation_time,
      :filler_slate,
      :last_modified_time,
      :outputs,
      :playback_mode,
      :tags,
      :tier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute http_package_configurations
    #   <p>A list of HTTP package configuration parameters for this live source.</p>
    #
    #   @return [Array<HttpPackageConfiguration>]
    #
    # @!attribute live_source_name
    #   <p>The identifier for the live source you are working on.</p>
    #
    #   @return [String]
    #
    # @!attribute source_location_name
    #   <p>The identifier for the source location you are working on.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to assign to the live source.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateLiveSourceInput = ::Struct.new(
      :http_package_configurations,
      :live_source_name,
      :source_location_name,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the live source.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The timestamp that indicates when the live source was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute http_package_configurations
    #   <p>The HTTP package configurations.</p>
    #
    #   @return [Array<HttpPackageConfiguration>]
    #
    # @!attribute last_modified_time
    #   <p>The timestamp that indicates when the live source was modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute live_source_name
    #   <p>The name of the live source.</p>
    #
    #   @return [String]
    #
    # @!attribute source_location_name
    #   <p>The name of the source location associated with the VOD source.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags assigned to the live source.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateLiveSourceOutput = ::Struct.new(
      :arn,
      :creation_time,
      :http_package_configurations,
      :last_modified_time,
      :live_source_name,
      :source_location_name,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute consumption
    #   <p>The configuration settings for MediaTailor's <i>consumption</i> of the prefetched ads from the ad decision server. Each consumption configuration contains an end time and an optional start time that define the <i>consumption window</i>. Prefetch schedules automatically expire no earlier than seven days after the end time.</p>
    #
    #   @return [PrefetchConsumption]
    #
    # @!attribute name
    #   <p>The identifier for the playback configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute playback_configuration_name
    #   <p>The name of the playback configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute retrieval
    #   <p>The configuration settings for retrieval of prefetched ads from the ad decision server. Only one set of prefetched ads will be retrieved and subsequently consumed for each ad break.</p>
    #
    #   @return [PrefetchRetrieval]
    #
    # @!attribute stream_id
    #   <p>An optional stream identifier that MediaTailor uses to prefetch ads for multiple streams that use the same playback configuration. If StreamId is specified, MediaTailor returns all of the prefetch schedules with an exact match on StreamId. If not specified, MediaTailor returns all of the prefetch schedules for the playback configuration, regardless of StreamId.</p>
    #
    #   @return [String]
    #
    CreatePrefetchScheduleInput = ::Struct.new(
      :consumption,
      :name,
      :playback_configuration_name,
      :retrieval,
      :stream_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the prefetch schedule.</p>
    #
    #   @return [String]
    #
    # @!attribute consumption
    #   <p>Consumption settings determine how, and when, MediaTailor places the prefetched ads into ad breaks. Ad consumption occurs within a span of time that you define, called a <i>consumption window</i>. You can designate which ad breaks that MediaTailor fills with prefetch ads by setting avail matching criteria.</p>
    #
    #   @return [PrefetchConsumption]
    #
    # @!attribute name
    #   <p>The name of the prefetch schedule. The name must be unique among all prefetch schedules that are associated with the specified playback configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute playback_configuration_name
    #   <p>The name of the playback configuration to create the prefetch schedule for.</p>
    #
    #   @return [String]
    #
    # @!attribute retrieval
    #   <p>A complex type that contains settings for prefetch retrieval from the ad decision server (ADS).</p>
    #
    #   @return [PrefetchRetrieval]
    #
    # @!attribute stream_id
    #   <p>An optional stream identifier that you can specify in order to prefetch for multiple streams that use the same playback configuration.</p>
    #
    #   @return [String]
    #
    CreatePrefetchScheduleOutput = ::Struct.new(
      :arn,
      :consumption,
      :name,
      :playback_configuration_name,
      :retrieval,
      :stream_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute ad_breaks
    #   <p>The ad break configuration settings.</p>
    #
    #   @return [Array<AdBreak>]
    #
    # @!attribute channel_name
    #   <p>The identifier for the channel you are working on.</p>
    #
    #   @return [String]
    #
    # @!attribute live_source_name
    #   <p>The name of the LiveSource for this Program.</p>
    #
    #   @return [String]
    #
    # @!attribute program_name
    #   <p>The identifier for the program you are working on.</p>
    #
    #   @return [String]
    #
    # @!attribute schedule_configuration
    #   <p>The schedule configuration settings.</p>
    #
    #   @return [ScheduleConfiguration]
    #
    # @!attribute source_location_name
    #   <p>The name of the source location.</p>
    #
    #   @return [String]
    #
    # @!attribute vod_source_name
    #   <p>The name that's used to refer to a VOD source.</p>
    #
    #   @return [String]
    #
    CreateProgramInput = ::Struct.new(
      :ad_breaks,
      :channel_name,
      :live_source_name,
      :program_name,
      :schedule_configuration,
      :source_location_name,
      :vod_source_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute ad_breaks
    #   <p>The ad break configuration settings.</p>
    #
    #   @return [Array<AdBreak>]
    #
    # @!attribute arn
    #   <p>The ARN of the program.</p>
    #
    #   @return [String]
    #
    # @!attribute channel_name
    #   <p>The name of the channel that the program belongs to.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The timestamp of when the program was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute live_source_name
    #   <p>The name of the LiveSource for this Program.</p>
    #
    #   @return [String]
    #
    # @!attribute program_name
    #   <p>The name of the program.</p>
    #
    #   @return [String]
    #
    # @!attribute scheduled_start_time
    #   <p>The date and time that the program is scheduled to start in ISO 8601 format and Coordinated Universal Time (UTC). For example, the value 2021-03-27T17:48:16.751Z represents March 27, 2021 at 17:48:16.751 UTC.</p>
    #
    #   @return [Time]
    #
    # @!attribute source_location_name
    #   <p>The source location name.</p>
    #
    #   @return [String]
    #
    # @!attribute vod_source_name
    #   <p>The name that's used to refer to a VOD source.</p>
    #
    #   @return [String]
    #
    CreateProgramOutput = ::Struct.new(
      :ad_breaks,
      :arn,
      :channel_name,
      :creation_time,
      :live_source_name,
      :program_name,
      :scheduled_start_time,
      :source_location_name,
      :vod_source_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute access_configuration
    #   <p>Access configuration parameters. Configures the type of authentication used to access content from your source location.</p>
    #
    #   @return [AccessConfiguration]
    #
    # @!attribute default_segment_delivery_configuration
    #   <p>The optional configuration for the server that serves segments.</p>
    #
    #   @return [DefaultSegmentDeliveryConfiguration]
    #
    # @!attribute http_configuration
    #   <p>The source's HTTP package configurations.</p>
    #
    #   @return [HttpConfiguration]
    #
    # @!attribute segment_delivery_configurations
    #   <p>A list of the segment delivery configurations associated with this resource.</p>
    #
    #   @return [Array<SegmentDeliveryConfiguration>]
    #
    # @!attribute source_location_name
    #   <p>The identifier for the source location you are working on.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to assign to the source location.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateSourceLocationInput = ::Struct.new(
      :access_configuration,
      :default_segment_delivery_configuration,
      :http_configuration,
      :segment_delivery_configurations,
      :source_location_name,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute access_configuration
    #   <p>The access configuration for the source location.</p>
    #
    #   @return [AccessConfiguration]
    #
    # @!attribute arn
    #   <p>The ARN of the source location.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The timestamp that indicates when the source location was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute default_segment_delivery_configuration
    #   <p>The default segment delivery configuration settings.</p>
    #
    #   @return [DefaultSegmentDeliveryConfiguration]
    #
    # @!attribute http_configuration
    #   <p>The HTTP package configuration settings for the source location.</p>
    #
    #   @return [HttpConfiguration]
    #
    # @!attribute last_modified_time
    #   <p>The timestamp that indicates when the source location was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute segment_delivery_configurations
    #   <p>A list of the segment delivery configurations associated with this resource.</p>
    #
    #   @return [Array<SegmentDeliveryConfiguration>]
    #
    # @!attribute source_location_name
    #   <p>The name of the source location.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags assigned to the source location.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateSourceLocationOutput = ::Struct.new(
      :access_configuration,
      :arn,
      :creation_time,
      :default_segment_delivery_configuration,
      :http_configuration,
      :last_modified_time,
      :segment_delivery_configurations,
      :source_location_name,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute http_package_configurations
    #   <p>A list of HTTP package configuration parameters for this VOD source.</p>
    #
    #   @return [Array<HttpPackageConfiguration>]
    #
    # @!attribute source_location_name
    #   <p>The identifier for the source location you are working on.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to assign to the VOD source.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute vod_source_name
    #   <p>The identifier for the VOD source you are working on.</p>
    #
    #   @return [String]
    #
    CreateVodSourceInput = ::Struct.new(
      :http_package_configurations,
      :source_location_name,
      :tags,
      :vod_source_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the VOD source.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The timestamp that indicates when the VOD source was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute http_package_configurations
    #   <p>The HTTP package configurations.</p>
    #
    #   @return [Array<HttpPackageConfiguration>]
    #
    # @!attribute last_modified_time
    #   <p>The last modified time of the VOD source.</p>
    #
    #   @return [Time]
    #
    # @!attribute source_location_name
    #   <p>The name of the source location associated with the VOD source.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags assigned to the VOD source.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute vod_source_name
    #   <p>The name of the VOD source.</p>
    #
    #   @return [String]
    #
    CreateVodSourceOutput = ::Struct.new(
      :arn,
      :creation_time,
      :http_package_configurations,
      :last_modified_time,
      :source_location_name,
      :tags,
      :vod_source_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The configuration for DASH content.</p>
    #
    # @!attribute manifest_endpoint_prefix
    #   <p>The URL generated by MediaTailor to initiate a playback session. The session uses server-side reporting. This setting is ignored in PUT operations.</p>
    #
    #   @return [String]
    #
    # @!attribute mpd_location
    #   <p>The setting that controls whether MediaTailor includes the Location tag in DASH manifests. MediaTailor populates the Location tag with the URL for manifest update requests, to be used by players that don't support sticky redirects. Disable this if you have CDN routing rules set up for accessing MediaTailor manifests, and you are either using client-side reporting or your players support sticky HTTP redirects. Valid values are DISABLED and EMT_DEFAULT. The EMT_DEFAULT setting enables the inclusion of the tag and is the default value.</p>
    #
    #   @return [String]
    #
    # @!attribute origin_manifest_type
    #   <p>The setting that controls whether MediaTailor handles manifests from the origin server as multi-period manifests or single-period manifests. If your origin server produces single-period manifests, set this to SINGLE_PERIOD. The default setting is MULTI_PERIOD. For multi-period manifests, omit this setting or set it to MULTI_PERIOD.</p>
    #
    #   Enum, one of: ["SINGLE_PERIOD", "MULTI_PERIOD"]
    #
    #   @return [String]
    #
    DashConfiguration = ::Struct.new(
      :manifest_endpoint_prefix,
      :mpd_location,
      :origin_manifest_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The configuration for DASH PUT operations.</p>
    #
    # @!attribute mpd_location
    #   <p>The setting that controls whether MediaTailor includes the Location tag in DASH manifests. MediaTailor populates the Location tag with the URL for manifest update requests, to be used by players that don't support sticky redirects. Disable this if you have CDN routing rules set up for accessing MediaTailor manifests, and you are either using client-side reporting or your players support sticky HTTP redirects. Valid values are DISABLED and EMT_DEFAULT. The EMT_DEFAULT setting enables the inclusion of the tag and is the default value.</p>
    #
    #   @return [String]
    #
    # @!attribute origin_manifest_type
    #   <p>The setting that controls whether MediaTailor handles manifests from the origin server as multi-period manifests or single-period manifests. If your origin server produces single-period manifests, set this to SINGLE_PERIOD. The default setting is MULTI_PERIOD. For multi-period manifests, omit this setting or set it to MULTI_PERIOD.</p>
    #
    #   Enum, one of: ["SINGLE_PERIOD", "MULTI_PERIOD"]
    #
    #   @return [String]
    #
    DashConfigurationForPut = ::Struct.new(
      :mpd_location,
      :origin_manifest_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Dash manifest configuration parameters.</p>
    #
    # @!attribute manifest_window_seconds
    #   <p>The total duration (in seconds) of each manifest. Minimum value: 30 seconds. Maximum value: 3600 seconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute min_buffer_time_seconds
    #   <p>Minimum amount of content (measured in seconds) that a player must keep available in the buffer. Minimum value: 2 seconds. Maximum value: 60 seconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute min_update_period_seconds
    #   <p>Minimum amount of time (in seconds) that the player should wait before requesting updates to the manifest. Minimum value: 2 seconds. Maximum value: 60 seconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute suggested_presentation_delay_seconds
    #   <p>Amount of time (in seconds) that the player should be from the live point at the end of the manifest. Minimum value: 2 seconds. Maximum value: 60 seconds.</p>
    #
    #   @return [Integer]
    #
    DashPlaylistSettings = ::Struct.new(
      :manifest_window_seconds,
      :min_buffer_time_seconds,
      :min_update_period_seconds,
      :suggested_presentation_delay_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.manifest_window_seconds ||= 0
        self.min_buffer_time_seconds ||= 0
        self.min_update_period_seconds ||= 0
        self.suggested_presentation_delay_seconds ||= 0
      end

    end

    # <p>The optional configuration for a server that serves segments. Use this if you want the segment delivery server to be different from the source location server. For example, you can configure your source location server to be an origination server, such as MediaPackage, and the segment delivery server to be a content delivery network (CDN), such as CloudFront. If you don't specify a segment delivery server, then the source location server is used.</p>
    #
    # @!attribute base_url
    #   <p>The hostname of the server that will be used to serve segments. This string must include the protocol, such as <b>https://</b>.</p>
    #
    #   @return [String]
    #
    DefaultSegmentDeliveryConfiguration = ::Struct.new(
      :base_url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel_name
    #   <p>The identifier for the channel you are working on.</p>
    #
    #   @return [String]
    #
    DeleteChannelInput = ::Struct.new(
      :channel_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteChannelOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel_name
    #   <p>The identifier for the channel you are working on.</p>
    #
    #   @return [String]
    #
    DeleteChannelPolicyInput = ::Struct.new(
      :channel_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteChannelPolicyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute live_source_name
    #   <p>The identifier for the live source you are working on.</p>
    #
    #   @return [String]
    #
    # @!attribute source_location_name
    #   <p>The identifier for the source location you are working on.</p>
    #
    #   @return [String]
    #
    DeleteLiveSourceInput = ::Struct.new(
      :live_source_name,
      :source_location_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteLiveSourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The identifier for the playback configuration.</p>
    #
    #   @return [String]
    #
    DeletePlaybackConfigurationInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeletePlaybackConfigurationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The identifier for the playback configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute playback_configuration_name
    #   <p>The name of the playback configuration.</p>
    #
    #   @return [String]
    #
    DeletePrefetchScheduleInput = ::Struct.new(
      :name,
      :playback_configuration_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeletePrefetchScheduleOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel_name
    #   <p>The identifier for the channel you are working on.</p>
    #
    #   @return [String]
    #
    # @!attribute program_name
    #   <p>The identifier for the program you are working on.</p>
    #
    #   @return [String]
    #
    DeleteProgramInput = ::Struct.new(
      :channel_name,
      :program_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteProgramOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute source_location_name
    #   <p>The identifier for the source location you are working on.</p>
    #
    #   @return [String]
    #
    DeleteSourceLocationInput = ::Struct.new(
      :source_location_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteSourceLocationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute source_location_name
    #   <p>The identifier for the source location you are working on.</p>
    #
    #   @return [String]
    #
    # @!attribute vod_source_name
    #   <p>The identifier for the VOD source you are working on.</p>
    #
    #   @return [String]
    #
    DeleteVodSourceInput = ::Struct.new(
      :source_location_name,
      :vod_source_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteVodSourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel_name
    #   <p>The identifier for the channel you are working on.</p>
    #
    #   @return [String]
    #
    DescribeChannelInput = ::Struct.new(
      :channel_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the channel.</p>
    #
    #   @return [String]
    #
    # @!attribute channel_name
    #   <p>The name of the channel.</p>
    #
    #   @return [String]
    #
    # @!attribute channel_state
    #   <p>Indicates whether the channel is in a running state or not.</p>
    #
    #   Enum, one of: ["RUNNING", "STOPPED"]
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The timestamp of when the channel was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute filler_slate
    #   <p>Contains information about the slate used to fill gaps between programs in the schedule.</p>
    #
    #   @return [SlateSource]
    #
    # @!attribute last_modified_time
    #   <p>The timestamp of when the channel was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute outputs
    #   <p>The channel's output properties.</p>
    #
    #   @return [Array<ResponseOutputItem>]
    #
    # @!attribute playback_mode
    #   <p>The channel's playback mode.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags assigned to the channel.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute tier
    #   <p>The channel's tier.</p>
    #
    #   @return [String]
    #
    DescribeChannelOutput = ::Struct.new(
      :arn,
      :channel_name,
      :channel_state,
      :creation_time,
      :filler_slate,
      :last_modified_time,
      :outputs,
      :playback_mode,
      :tags,
      :tier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute live_source_name
    #   <p>The identifier for the live source you are working on.</p>
    #
    #   @return [String]
    #
    # @!attribute source_location_name
    #   <p>The identifier for the source location you are working on.</p>
    #
    #   @return [String]
    #
    DescribeLiveSourceInput = ::Struct.new(
      :live_source_name,
      :source_location_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the live source.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The timestamp that indicates when the live source was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute http_package_configurations
    #   <p>The HTTP package configurations.</p>
    #
    #   @return [Array<HttpPackageConfiguration>]
    #
    # @!attribute last_modified_time
    #   <p>The timestamp that indicates when the live source was modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute live_source_name
    #   <p>The name of the live source.</p>
    #
    #   @return [String]
    #
    # @!attribute source_location_name
    #   <p>The name of the source location associated with the VOD source.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags assigned to the live source.</p>
    #
    #   @return [Hash<String, String>]
    #
    DescribeLiveSourceOutput = ::Struct.new(
      :arn,
      :creation_time,
      :http_package_configurations,
      :last_modified_time,
      :live_source_name,
      :source_location_name,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel_name
    #   <p>The identifier for the channel you are working on.</p>
    #
    #   @return [String]
    #
    # @!attribute program_name
    #   <p>The identifier for the program you are working on.</p>
    #
    #   @return [String]
    #
    DescribeProgramInput = ::Struct.new(
      :channel_name,
      :program_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute ad_breaks
    #   <p>The ad break configuration settings.</p>
    #
    #   @return [Array<AdBreak>]
    #
    # @!attribute arn
    #   <p>The ARN of the program.</p>
    #
    #   @return [String]
    #
    # @!attribute channel_name
    #   <p>The name of the channel that the program belongs to.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The timestamp of when the program was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute live_source_name
    #   <p>The name of the LiveSource for this Program.</p>
    #
    #   @return [String]
    #
    # @!attribute program_name
    #   <p>The name of the program.</p>
    #
    #   @return [String]
    #
    # @!attribute scheduled_start_time
    #   <p>The date and time that the program is scheduled to start in ISO 8601 format and Coordinated Universal Time (UTC). For example, the value 2021-03-27T17:48:16.751Z represents March 27, 2021 at 17:48:16.751 UTC.</p>
    #
    #   @return [Time]
    #
    # @!attribute source_location_name
    #   <p>The source location name.</p>
    #
    #   @return [String]
    #
    # @!attribute vod_source_name
    #   <p>The name that's used to refer to a VOD source.</p>
    #
    #   @return [String]
    #
    DescribeProgramOutput = ::Struct.new(
      :ad_breaks,
      :arn,
      :channel_name,
      :creation_time,
      :live_source_name,
      :program_name,
      :scheduled_start_time,
      :source_location_name,
      :vod_source_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute source_location_name
    #   <p>The identifier for the source location you are working on.</p>
    #
    #   @return [String]
    #
    DescribeSourceLocationInput = ::Struct.new(
      :source_location_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute access_configuration
    #   <p>The access configuration for the source location.</p>
    #
    #   @return [AccessConfiguration]
    #
    # @!attribute arn
    #   <p>The ARN of the source location.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The timestamp that indicates when the source location was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute default_segment_delivery_configuration
    #   <p>The default segment delivery configuration settings.</p>
    #
    #   @return [DefaultSegmentDeliveryConfiguration]
    #
    # @!attribute http_configuration
    #   <p>The HTTP package configuration settings for the source location.</p>
    #
    #   @return [HttpConfiguration]
    #
    # @!attribute last_modified_time
    #   <p>The timestamp that indicates when the source location was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute segment_delivery_configurations
    #   <p>A list of the segment delivery configurations associated with this resource.</p>
    #
    #   @return [Array<SegmentDeliveryConfiguration>]
    #
    # @!attribute source_location_name
    #   <p>The name of the source location.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags assigned to the source location.</p>
    #
    #   @return [Hash<String, String>]
    #
    DescribeSourceLocationOutput = ::Struct.new(
      :access_configuration,
      :arn,
      :creation_time,
      :default_segment_delivery_configuration,
      :http_configuration,
      :last_modified_time,
      :segment_delivery_configurations,
      :source_location_name,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute source_location_name
    #   <p>The identifier for the source location you are working on.</p>
    #
    #   @return [String]
    #
    # @!attribute vod_source_name
    #   <p>The identifier for the VOD source you are working on.</p>
    #
    #   @return [String]
    #
    DescribeVodSourceInput = ::Struct.new(
      :source_location_name,
      :vod_source_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the VOD source.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The timestamp that indicates when the VOD source was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute http_package_configurations
    #   <p>The HTTP package configurations.</p>
    #
    #   @return [Array<HttpPackageConfiguration>]
    #
    # @!attribute last_modified_time
    #   <p>The last modified time of the VOD source.</p>
    #
    #   @return [Time]
    #
    # @!attribute source_location_name
    #   <p>The name of the source location associated with the VOD source.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags assigned to the VOD source.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute vod_source_name
    #   <p>The name of the VOD source.</p>
    #
    #   @return [String]
    #
    DescribeVodSourceOutput = ::Struct.new(
      :arn,
      :creation_time,
      :http_package_configurations,
      :last_modified_time,
      :source_location_name,
      :tags,
      :vod_source_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel_name
    #   <p>The identifier for the channel you are working on.</p>
    #
    #   @return [String]
    #
    GetChannelPolicyInput = ::Struct.new(
      :channel_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy
    #   <p>The IAM policy for the channel.</p>
    #
    #   @return [String]
    #
    GetChannelPolicyOutput = ::Struct.new(
      :policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel_name
    #   <p>The identifier for the channel you are working on.</p>
    #
    #   @return [String]
    #
    # @!attribute duration_minutes
    #   <p>The schedule duration in minutes. The maximum duration is 4320 minutes (three days).</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Upper bound on number of records to return. The maximum number of results is 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>Pagination token from the GET list request. Use the token to fetch the next page of results.</p>
    #
    #   @return [String]
    #
    GetChannelScheduleInput = ::Struct.new(
      :channel_name,
      :duration_minutes,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_results ||= 0
      end

    end

    # @!attribute items
    #   <p>A list of schedule entries for the channel.</p>
    #
    #   @return [Array<ScheduleEntry>]
    #
    # @!attribute next_token
    #   <p>Pagination token from the GET list request. Use the token to fetch the next page of results.</p>
    #
    #   @return [String]
    #
    GetChannelScheduleOutput = ::Struct.new(
      :items,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The identifier for the playback configuration.</p>
    #
    #   @return [String]
    #
    GetPlaybackConfigurationInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute ad_decision_server_url
    #   <p>The URL for the ad decision server (ADS). This includes the specification of static parameters and placeholders for dynamic parameters. AWS Elemental MediaTailor substitutes player-specific and session-specific parameters as needed when calling the ADS. Alternately, for testing, you can provide a static VAST URL. The maximum length is 25,000 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute avail_suppression
    #   <p>The configuration for avail suppression, also known as ad suppression. For more information about ad suppression, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/ad-behavior.html">Ad Suppression</a>.</p>
    #
    #   @return [AvailSuppression]
    #
    # @!attribute bumper
    #   <p>The configuration for bumpers. Bumpers are short audio or video clips that play at the start or before the end of an ad break. To learn more about bumpers, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/bumpers.html">Bumpers</a>.</p>
    #
    #   @return [Bumper]
    #
    # @!attribute cdn_configuration
    #   <p>The configuration for using a content delivery network (CDN), like Amazon CloudFront, for content and ad segment management.</p>
    #
    #   @return [CdnConfiguration]
    #
    # @!attribute configuration_aliases
    #   <p>The player parameters and aliases used as dynamic variables during session initialization. For more information, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/variables-domain.html">Domain Variables</a>.</p>
    #
    #   @return [Hash<String, Hash<String, String>>]
    #
    # @!attribute dash_configuration
    #   <p>The configuration for DASH content.</p>
    #
    #   @return [DashConfiguration]
    #
    # @!attribute hls_configuration
    #   <p>The configuration for HLS content.</p>
    #
    #   @return [HlsConfiguration]
    #
    # @!attribute live_pre_roll_configuration
    #   <p>The configuration for pre-roll ad insertion.</p>
    #
    #   @return [LivePreRollConfiguration]
    #
    # @!attribute log_configuration
    #   <p>The Amazon CloudWatch log settings for a playback configuration.</p>
    #
    #   @return [LogConfiguration]
    #
    # @!attribute manifest_processing_rules
    #   <p>The configuration for manifest processing rules. Manifest processing rules enable customization of the personalized manifests created by MediaTailor.</p>
    #
    #   @return [ManifestProcessingRules]
    #
    # @!attribute name
    #   <p>The identifier for the playback configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute personalization_threshold_seconds
    #   <p>Defines the maximum duration of underfilled ad time (in seconds) allowed in an ad break. If the duration of underfilled ad time exceeds the personalization threshold, then the personalization of the ad break is abandoned and the underlying content is shown. This feature applies to <i>ad replacement</i> in live and VOD streams, rather than ad insertion, because it relies on an underlying content stream. For more information about ad break behavior, including ad replacement and insertion, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/ad-behavior.html">Ad Behavior in AWS Elemental MediaTailor</a>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute playback_configuration_arn
    #   <p>The Amazon Resource Name (ARN) for the playback configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute playback_endpoint_prefix
    #   <p>The URL that the player accesses to get a manifest from AWS Elemental MediaTailor. This session will use server-side reporting.</p>
    #
    #   @return [String]
    #
    # @!attribute session_initialization_endpoint_prefix
    #   <p>The URL that the player uses to initialize a session that uses client-side reporting.</p>
    #
    #   @return [String]
    #
    # @!attribute slate_ad_url
    #   <p>The URL for a high-quality video asset to transcode and use to fill in time that's not used by ads. AWS Elemental MediaTailor shows the slate to fill in gaps in media content. Configuring the slate is optional for non-VPAID playback configurations. For VPAID, the slate is required because MediaTailor provides it in the slots designated for dynamic ad content. The slate must be a high-quality asset that contains both audio and video.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags assigned to the playback configuration.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute transcode_profile_name
    #   <p>The name that is used to associate this playback configuration with a custom transcode profile. This overrides the dynamic transcoding defaults of MediaTailor. Use this only if you have already set up custom profiles with the help of AWS Support.</p>
    #
    #   @return [String]
    #
    # @!attribute video_content_source_url
    #   <p>The URL prefix for the parent manifest for the stream, minus the asset ID. The maximum length is 512 characters.</p>
    #
    #   @return [String]
    #
    GetPlaybackConfigurationOutput = ::Struct.new(
      :ad_decision_server_url,
      :avail_suppression,
      :bumper,
      :cdn_configuration,
      :configuration_aliases,
      :dash_configuration,
      :hls_configuration,
      :live_pre_roll_configuration,
      :log_configuration,
      :manifest_processing_rules,
      :name,
      :personalization_threshold_seconds,
      :playback_configuration_arn,
      :playback_endpoint_prefix,
      :session_initialization_endpoint_prefix,
      :slate_ad_url,
      :tags,
      :transcode_profile_name,
      :video_content_source_url,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.personalization_threshold_seconds ||= 0
      end

    end

    # @!attribute name
    #   <p>The identifier for the playback configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute playback_configuration_name
    #   <p>The name of the playback configuration.</p>
    #
    #   @return [String]
    #
    GetPrefetchScheduleInput = ::Struct.new(
      :name,
      :playback_configuration_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the prefetch schedule.</p>
    #
    #   @return [String]
    #
    # @!attribute consumption
    #   <p>Consumption settings determine how, and when, MediaTailor places the prefetched ads into ad breaks. Ad consumption occurs within a span of time that you define, called a <i>consumption window</i>. You can designate which ad breaks that MediaTailor fills with prefetch ads by setting avail matching criteria.</p>
    #
    #   @return [PrefetchConsumption]
    #
    # @!attribute name
    #   <p>The name of the prefetch schedule. The name must be unique among all prefetch schedules that are associated with the specified playback configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute playback_configuration_name
    #   <p>The name of the playback configuration to create the prefetch schedule for.</p>
    #
    #   @return [String]
    #
    # @!attribute retrieval
    #   <p>A complex type that contains settings for prefetch retrieval from the ad decision server (ADS).</p>
    #
    #   @return [PrefetchRetrieval]
    #
    # @!attribute stream_id
    #   <p>An optional stream identifier that you can specify in order to prefetch for multiple streams that use the same playback configuration.</p>
    #
    #   @return [String]
    #
    GetPrefetchScheduleOutput = ::Struct.new(
      :arn,
      :consumption,
      :name,
      :playback_configuration_name,
      :retrieval,
      :stream_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The configuration for HLS content.</p>
    #
    # @!attribute manifest_endpoint_prefix
    #   <p>The URL that is used to initiate a playback session for devices that support Apple HLS. The session uses server-side reporting.</p>
    #
    #   @return [String]
    #
    HlsConfiguration = ::Struct.new(
      :manifest_endpoint_prefix,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>HLS playlist configuration parameters.</p>
    #
    # @!attribute manifest_window_seconds
    #   <p>The total duration (in seconds) of each manifest. Minimum value: 30 seconds. Maximum value: 3600 seconds.</p>
    #
    #   @return [Integer]
    #
    HlsPlaylistSettings = ::Struct.new(
      :manifest_window_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.manifest_window_seconds ||= 0
      end

    end

    # <p>The HTTP configuration for the source location.</p>
    #
    # @!attribute base_url
    #   <p>The base URL for the source location host server. This string must include the protocol, such as <b>https://</b>.</p>
    #
    #   @return [String]
    #
    HttpConfiguration = ::Struct.new(
      :base_url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The HTTP package configuration properties for the requested VOD source.</p>
    #
    # @!attribute path
    #   <p>The relative path to the URL for this VOD source. This is combined with SourceLocation::HttpConfiguration::BaseUrl to form a valid URL.</p>
    #
    #   @return [String]
    #
    # @!attribute source_group
    #   <p>The name of the source group. This has to match one of the Channel::Outputs::SourceGroup.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The streaming protocol for this package configuration. Supported values are HLS and DASH.</p>
    #
    #   Enum, one of: ["DASH", "HLS"]
    #
    #   @return [String]
    #
    HttpPackageConfiguration = ::Struct.new(
      :path,
      :source_group,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>Upper bound on number of records to return. The maximum number of results is 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>Pagination token from the GET list request. Use the token to fetch the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    #   @return [String]
    #
    ListAlertsInput = ::Struct.new(
      :max_results,
      :next_token,
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_results ||= 0
      end

    end

    # @!attribute items
    #   <p>A list of alerts that are associated with this resource.</p>
    #
    #   @return [Array<Alert>]
    #
    # @!attribute next_token
    #   <p>Pagination token from the list request. Use the token to fetch the next page of results.</p>
    #
    #   @return [String]
    #
    ListAlertsOutput = ::Struct.new(
      :items,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>Upper bound on number of records to return. The maximum number of results is 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>Pagination token from the GET list request. Use the token to fetch the next page of results.</p>
    #
    #   @return [String]
    #
    ListChannelsInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_results ||= 0
      end

    end

    # @!attribute items
    #   <p>A list of channels that are associated with this account.</p>
    #
    #   @return [Array<Channel>]
    #
    # @!attribute next_token
    #   <p>Pagination token returned by the list request when results exceed the maximum allowed. Use the token to fetch the next page of results.</p>
    #
    #   @return [String]
    #
    ListChannelsOutput = ::Struct.new(
      :items,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>Upper bound on number of records to return. The maximum number of results is 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>Pagination token from the GET list request. Use the token to fetch the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute source_location_name
    #   <p>The identifier for the source location you are working on.</p>
    #
    #   @return [String]
    #
    ListLiveSourcesInput = ::Struct.new(
      :max_results,
      :next_token,
      :source_location_name,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_results ||= 0
      end

    end

    # @!attribute items
    #   <p>Lists the live sources.</p>
    #
    #   @return [Array<LiveSource>]
    #
    # @!attribute next_token
    #   <p>Pagination token from the list request. Use the token to fetch the next page of results.</p>
    #
    #   @return [String]
    #
    ListLiveSourcesOutput = ::Struct.new(
      :items,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>Maximum number of records to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>Pagination token returned by the GET list request when results exceed the maximum allowed. Use the token to fetch the next page of results.</p>
    #
    #   @return [String]
    #
    ListPlaybackConfigurationsInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_results ||= 0
      end

    end

    # @!attribute items
    #   <p>Array of playback configurations. This might be all the available configurations or a subset, depending on the settings that you provide and the total number of configurations stored.</p>
    #
    #   @return [Array<PlaybackConfiguration>]
    #
    # @!attribute next_token
    #   <p>Pagination token returned by the GET list request when results exceed the maximum allowed. Use the token to fetch the next page of results.</p>
    #
    #   @return [String]
    #
    ListPlaybackConfigurationsOutput = ::Struct.new(
      :items,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of prefetch schedules that you want MediaTailor to return in response to the current request. If the playback configuration has more than MaxResults prefetch schedules, use the value of NextToken in the response to get the next page of results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>(Optional) If the playback configuration has more than MaxResults prefetch schedules, use NextToken to get the second and subsequent pages of results.</p> <p>For the first ListPrefetchSchedulesRequest request, omit this value.</p> <p>For the second and subsequent requests, get the value of NextToken from the previous response and specify that value for NextToken in the request.</p> <p>If the previous response didn't include a NextToken element, there are no more prefetch schedules to get.</p>
    #
    #   @return [String]
    #
    # @!attribute playback_configuration_name
    #   <p>The name of the playback configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute stream_id
    #   <p>An optional filtering parameter whereby MediaTailor filters the prefetch schedules to include only specific streams.</p>
    #
    #   @return [String]
    #
    ListPrefetchSchedulesInput = ::Struct.new(
      :max_results,
      :next_token,
      :playback_configuration_name,
      :stream_id,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_results ||= 0
      end

    end

    # @!attribute items
    #   <p>Lists the prefetch schedules. An empty Items list doesn't mean there aren't more items to fetch, just that that page was empty.</p>
    #
    #   @return [Array<PrefetchSchedule>]
    #
    # @!attribute next_token
    #   <p>The value that you will use forNextToken in the next ListPrefetchSchedulesRequest request.</p>
    #
    #   @return [String]
    #
    ListPrefetchSchedulesOutput = ::Struct.new(
      :items,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>Upper bound on number of records to return. The maximum number of results is 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>Pagination token from the GET list request. Use the token to fetch the next page of results.</p>
    #
    #   @return [String]
    #
    ListSourceLocationsInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_results ||= 0
      end

    end

    # @!attribute items
    #   <p>A list of source locations.</p>
    #
    #   @return [Array<SourceLocation>]
    #
    # @!attribute next_token
    #   <p>Pagination token from the list request. Use the token to fetch the next page of results.</p>
    #
    #   @return [String]
    #
    ListSourceLocationsOutput = ::Struct.new(
      :items,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) for the playback configuration. You can get this from the response to any playback configuration request.</p>
    #
    #   @return [String]
    #
    ListTagsForResourceInput = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tags
    #   <p>A comma-separated list of tag key:value pairs.</p>
    #
    #   @return [Hash<String, String>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>Upper bound on number of records to return. The maximum number of results is 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>Pagination token from the GET list request. Use the token to fetch the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute source_location_name
    #   <p>The identifier for the source location you are working on.</p>
    #
    #   @return [String]
    #
    ListVodSourcesInput = ::Struct.new(
      :max_results,
      :next_token,
      :source_location_name,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_results ||= 0
      end

    end

    # @!attribute items
    #   <p>Lists the VOD sources.</p>
    #
    #   @return [Array<VodSource>]
    #
    # @!attribute next_token
    #   <p>Pagination token from the list request. Use the token to fetch the next page of results.</p>
    #
    #   @return [String]
    #
    ListVodSourcesOutput = ::Struct.new(
      :items,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The configuration for pre-roll ad insertion.</p>
    #
    # @!attribute ad_decision_server_url
    #   <p>The URL for the ad decision server (ADS) for pre-roll ads. This includes the specification of static parameters and placeholders for dynamic parameters. AWS Elemental MediaTailor substitutes player-specific and session-specific parameters as needed when calling the ADS. Alternately, for testing, you can provide a static VAST URL. The maximum length is 25,000 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute max_duration_seconds
    #   The maximum allowed duration for the pre-roll ad avail. AWS Elemental MediaTailor won't play pre-roll ads to exceed this duration, regardless of the total duration of ads that the ADS returns.
    #
    #   @return [Integer]
    #
    LivePreRollConfiguration = ::Struct.new(
      :ad_decision_server_url,
      :max_duration_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_duration_seconds ||= 0
      end

    end

    # <p>Live source configuration parameters.</p>
    #
    # @!attribute arn
    #   <p>The ARN for the live source.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The timestamp that indicates when the live source was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute http_package_configurations
    #   <p>The HTTP package configurations for the live source.</p>
    #
    #   @return [Array<HttpPackageConfiguration>]
    #
    # @!attribute last_modified_time
    #   <p>The timestamp that indicates when the live source was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute live_source_name
    #   <p>The name that's used to refer to a live source.</p>
    #
    #   @return [String]
    #
    # @!attribute source_location_name
    #   <p>The name of the source location.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags assigned to the live source.</p>
    #
    #   @return [Hash<String, String>]
    #
    LiveSource = ::Struct.new(
      :arn,
      :creation_time,
      :http_package_configurations,
      :last_modified_time,
      :live_source_name,
      :source_location_name,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns Amazon CloudWatch log settings for a playback configuration.</p>
    #
    # @!attribute percent_enabled
    #   <p>The percentage of session logs that MediaTailor sends to your Cloudwatch Logs account. For example, if your playback configuration has 1000 sessions and percentEnabled is set to 60, MediaTailor sends logs for 600 of the sessions to CloudWatch Logs. MediaTailor decides at random which of the playback configuration sessions to send logs for. If you want to view logs for a specific session, you can use the <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/debug-log-mode.html">debug log mode</a>.</p> <p>Valid values: 0 - 100</p>
    #
    #   @return [Integer]
    #
    LogConfiguration = ::Struct.new(
      :percent_enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.percent_enabled ||= 0
      end

    end

    # <p>The configuration for manifest processing rules. Manifest processing rules enable customization of the personalized manifests created by MediaTailor.</p>
    #
    # @!attribute ad_marker_passthrough
    #   <p>For HLS, when set to true, MediaTailor passes through EXT-X-CUE-IN, EXT-X-CUE-OUT, and EXT-X-SPLICEPOINT-SCTE35 ad markers from the origin manifest to the MediaTailor personalized manifest.</p> <p>No logic is applied to these ad markers. For example, if EXT-X-CUE-OUT has a value of 60, but no ads are filled for that ad break, MediaTailor will not set the value to 0.</p>
    #
    #   @return [AdMarkerPassthrough]
    #
    ManifestProcessingRules = ::Struct.new(
      :ad_marker_passthrough,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for MessageType
    #
    module MessageType
      # No documentation available.
      #
      SPLICE_INSERT = "SPLICE_INSERT"
    end

    # Includes enum constants for Mode
    #
    module Mode
      # No documentation available.
      #
      OFF = "OFF"

      # No documentation available.
      #
      BEHIND_LIVE_EDGE = "BEHIND_LIVE_EDGE"
    end

    # Includes enum constants for Operator
    #
    module Operator
      # No documentation available.
      #
      EQUALS = "EQUALS"
    end

    # Includes enum constants for OriginManifestType
    #
    module OriginManifestType
      # No documentation available.
      #
      SINGLE_PERIOD = "SINGLE_PERIOD"

      # No documentation available.
      #
      MULTI_PERIOD = "MULTI_PERIOD"
    end

    # <p>Creates a playback configuration. For information about MediaTailor configurations, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/configurations.html">Working with configurations in AWS Elemental MediaTailor</a>.</p>
    #
    # @!attribute ad_decision_server_url
    #   <p>The URL for the ad decision server (ADS). This includes the specification of static parameters and placeholders for dynamic parameters. AWS Elemental MediaTailor substitutes player-specific and session-specific parameters as needed when calling the ADS. Alternately, for testing you can provide a static VAST URL. The maximum length is 25,000 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute avail_suppression
    #   <p>The configuration for avail suppression, also known as ad suppression. For more information about ad suppression, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/ad-behavior.html">Ad Suppression</a>.</p>
    #
    #   @return [AvailSuppression]
    #
    # @!attribute bumper
    #   <p>The configuration for bumpers. Bumpers are short audio or video clips that play at the start or before the end of an ad break. To learn more about bumpers, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/bumpers.html">Bumpers</a>.</p>
    #
    #   @return [Bumper]
    #
    # @!attribute cdn_configuration
    #   <p>The configuration for using a content delivery network (CDN), like Amazon CloudFront, for content and ad segment management.</p>
    #
    #   @return [CdnConfiguration]
    #
    # @!attribute configuration_aliases
    #   <p>The player parameters and aliases used as dynamic variables during session initialization. For more information, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/variables-domain.html">Domain Variables</a>.</p>
    #
    #   @return [Hash<String, Hash<String, String>>]
    #
    # @!attribute dash_configuration
    #   <p>The configuration for a DASH source.</p>
    #
    #   @return [DashConfiguration]
    #
    # @!attribute hls_configuration
    #   <p>The configuration for HLS content.</p>
    #
    #   @return [HlsConfiguration]
    #
    # @!attribute live_pre_roll_configuration
    #   <p>The configuration for pre-roll ad insertion.</p>
    #
    #   @return [LivePreRollConfiguration]
    #
    # @!attribute log_configuration
    #   <p>The Amazon CloudWatch log settings for a playback configuration.</p>
    #
    #   @return [LogConfiguration]
    #
    # @!attribute manifest_processing_rules
    #   <p>The configuration for manifest processing rules. Manifest processing rules enable customization of the personalized manifests created by MediaTailor.</p>
    #
    #   @return [ManifestProcessingRules]
    #
    # @!attribute name
    #   <p>The identifier for the playback configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute personalization_threshold_seconds
    #   <p>Defines the maximum duration of underfilled ad time (in seconds) allowed in an ad break. If the duration of underfilled ad time exceeds the personalization threshold, then the personalization of the ad break is abandoned and the underlying content is shown. This feature applies to <i>ad replacement</i> in live and VOD streams, rather than ad insertion, because it relies on an underlying content stream. For more information about ad break behavior, including ad replacement and insertion, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/ad-behavior.html">Ad Behavior in AWS Elemental MediaTailor</a>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute playback_configuration_arn
    #   <p>The Amazon Resource Name (ARN) for the playback configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute playback_endpoint_prefix
    #   <p>The URL that the player accesses to get a manifest from AWS Elemental MediaTailor.</p>
    #
    #   @return [String]
    #
    # @!attribute session_initialization_endpoint_prefix
    #   <p>The URL that the player uses to initialize a session that uses client-side reporting.</p>
    #
    #   @return [String]
    #
    # @!attribute slate_ad_url
    #   <p>The URL for a video asset to transcode and use to fill in time that's not used by ads. AWS Elemental MediaTailor shows the slate to fill in gaps in media content. Configuring the slate is optional for non-VPAID playback configurations. For VPAID, the slate is required because MediaTailor provides it in the slots designated for dynamic ad content. The slate must be a high-quality asset that contains both audio and video.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to assign to the playback configuration.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute transcode_profile_name
    #   <p>The name that is used to associate this playback configuration with a custom transcode profile. This overrides the dynamic transcoding defaults of MediaTailor. Use this only if you have already set up custom profiles with the help of AWS Support.</p>
    #
    #   @return [String]
    #
    # @!attribute video_content_source_url
    #   <p>The URL prefix for the parent manifest for the stream, minus the asset ID. The maximum length is 512 characters.</p>
    #
    #   @return [String]
    #
    PlaybackConfiguration = ::Struct.new(
      :ad_decision_server_url,
      :avail_suppression,
      :bumper,
      :cdn_configuration,
      :configuration_aliases,
      :dash_configuration,
      :hls_configuration,
      :live_pre_roll_configuration,
      :log_configuration,
      :manifest_processing_rules,
      :name,
      :personalization_threshold_seconds,
      :playback_configuration_arn,
      :playback_endpoint_prefix,
      :session_initialization_endpoint_prefix,
      :slate_ad_url,
      :tags,
      :transcode_profile_name,
      :video_content_source_url,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.personalization_threshold_seconds ||= 0
      end

    end

    # Includes enum constants for PlaybackMode
    #
    module PlaybackMode
      # No documentation available.
      #
      LOOP = "LOOP"

      # No documentation available.
      #
      LINEAR = "LINEAR"
    end

    # <p>A complex type that contains settings that determine how and when that MediaTailor places prefetched ads into upcoming ad breaks.</p>
    #
    # @!attribute avail_matching_criteria
    #   <p>If you only want MediaTailor to insert prefetched ads into avails (ad breaks) that match specific dynamic variables, such as scte.event_id, set the avail matching criteria.</p>
    #
    #   @return [Array<AvailMatchingCriteria>]
    #
    # @!attribute end_time
    #   <p>The time when MediaTailor no longer considers the prefetched ads for use in an ad break. MediaTailor automatically deletes prefetch schedules no less than seven days after the end time. If you'd like to manually delete the prefetch schedule, you can call DeletePrefetchSchedule.</p>
    #
    #   @return [Time]
    #
    # @!attribute start_time
    #   <p>The time when prefetched ads are considered for use in an ad break. If you don't specify StartTime, the prefetched ads are available after MediaTailor retrives them from the ad decision server.</p>
    #
    #   @return [Time]
    #
    PrefetchConsumption = ::Struct.new(
      :avail_matching_criteria,
      :end_time,
      :start_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A complex type that contains settings governing when MediaTailor prefetches ads, and which dynamic variables that MediaTailor includes in the request to the ad decision server.</p>
    #
    # @!attribute dynamic_variables
    #   <p>The dynamic variables to use for substitution during prefetch requests to the ad decision server (ADS).</p> <p>You intially configure <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/variables.html">dynamic variables</a> for the ADS URL when you set up your playback configuration. When you specify DynamicVariables for prefetch retrieval, MediaTailor includes the dynamic variables in the request to the ADS.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute end_time
    #   <p>The time when prefetch retrieval ends for the ad break. Prefetching will be attempted for manifest requests that occur at or before this time.</p>
    #
    #   @return [Time]
    #
    # @!attribute start_time
    #   <p>The time when prefetch retrievals can start for this break. Ad prefetching will be attempted for manifest requests that occur at or after this time. Defaults to the current time. If not specified, the prefetch retrieval starts as soon as possible.</p>
    #
    #   @return [Time]
    #
    PrefetchRetrieval = ::Struct.new(
      :dynamic_variables,
      :end_time,
      :start_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A complex type that contains prefetch schedule information.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the prefetch schedule.</p>
    #
    #   @return [String]
    #
    # @!attribute consumption
    #   <p>Consumption settings determine how, and when, MediaTailor places the prefetched ads into ad breaks. Ad consumption occurs within a span of time that you define, called a <i>consumption window</i>. You can designate which ad breaks that MediaTailor fills with prefetch ads by setting avail matching criteria.</p>
    #
    #   @return [PrefetchConsumption]
    #
    # @!attribute name
    #   <p>The name of the prefetch schedule. The name must be unique among all prefetch schedules that are associated with the specified playback configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute playback_configuration_name
    #   <p>The name of the playback configuration to create the prefetch schedule for.</p>
    #
    #   @return [String]
    #
    # @!attribute retrieval
    #   <p>A complex type that contains settings for prefetch retrieval from the ad decision server (ADS).</p>
    #
    #   @return [PrefetchRetrieval]
    #
    # @!attribute stream_id
    #   <p>An optional stream identifier that you can specify in order to prefetch for multiple streams that use the same playback configuration.</p>
    #
    #   @return [String]
    #
    PrefetchSchedule = ::Struct.new(
      :arn,
      :consumption,
      :name,
      :playback_configuration_name,
      :retrieval,
      :stream_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel_name
    #   <p>The identifier for the channel you are working on.</p>
    #
    #   @return [String]
    #
    # @!attribute policy
    #   <p>Adds an IAM role that determines the permissions of your channel.</p>
    #
    #   @return [String]
    #
    PutChannelPolicyInput = ::Struct.new(
      :channel_name,
      :policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutChannelPolicyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute ad_decision_server_url
    #   <p>The URL for the ad decision server (ADS). This includes the specification of static parameters and placeholders for dynamic parameters. AWS Elemental MediaTailor substitutes player-specific and session-specific parameters as needed when calling the ADS. Alternately, for testing you can provide a static VAST URL. The maximum length is 25,000 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute avail_suppression
    #   <p>The configuration for avail suppression, also known as ad suppression. For more information about ad suppression, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/ad-behavior.html">Ad Suppression</a>.</p>
    #
    #   @return [AvailSuppression]
    #
    # @!attribute bumper
    #   <p>The configuration for bumpers. Bumpers are short audio or video clips that play at the start or before the end of an ad break. To learn more about bumpers, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/bumpers.html">Bumpers</a>.</p>
    #
    #   @return [Bumper]
    #
    # @!attribute cdn_configuration
    #   <p>The configuration for using a content delivery network (CDN), like Amazon CloudFront, for content and ad segment management.</p>
    #
    #   @return [CdnConfiguration]
    #
    # @!attribute configuration_aliases
    #   <p>The player parameters and aliases used as dynamic variables during session initialization. For more information, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/variables-domain.html">Domain Variables</a>.</p>
    #
    #   @return [Hash<String, Hash<String, String>>]
    #
    # @!attribute dash_configuration
    #   <p>The configuration for DASH content.</p>
    #
    #   @return [DashConfigurationForPut]
    #
    # @!attribute live_pre_roll_configuration
    #   <p>The configuration for pre-roll ad insertion.</p>
    #
    #   @return [LivePreRollConfiguration]
    #
    # @!attribute manifest_processing_rules
    #   <p>The configuration for manifest processing rules. Manifest processing rules enable customization of the personalized manifests created by MediaTailor.</p>
    #
    #   @return [ManifestProcessingRules]
    #
    # @!attribute name
    #   <p>The identifier for the playback configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute personalization_threshold_seconds
    #   <p>Defines the maximum duration of underfilled ad time (in seconds) allowed in an ad break. If the duration of underfilled ad time exceeds the personalization threshold, then the personalization of the ad break is abandoned and the underlying content is shown. This feature applies to <i>ad replacement</i> in live and VOD streams, rather than ad insertion, because it relies on an underlying content stream. For more information about ad break behavior, including ad replacement and insertion, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/ad-behavior.html">Ad Behavior in AWS Elemental MediaTailor</a>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute slate_ad_url
    #   <p>The URL for a high-quality video asset to transcode and use to fill in time that's not used by ads. AWS Elemental MediaTailor shows the slate to fill in gaps in media content. Configuring the slate is optional for non-VPAID configurations. For VPAID, the slate is required because MediaTailor provides it in the slots that are designated for dynamic ad content. The slate must be a high-quality asset that contains both audio and video.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to assign to the playback configuration.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute transcode_profile_name
    #   <p>The name that is used to associate this playback configuration with a custom transcode profile. This overrides the dynamic transcoding defaults of MediaTailor. Use this only if you have already set up custom profiles with the help of AWS Support.</p>
    #
    #   @return [String]
    #
    # @!attribute video_content_source_url
    #   <p>The URL prefix for the parent manifest for the stream, minus the asset ID. The maximum length is 512 characters.</p>
    #
    #   @return [String]
    #
    PutPlaybackConfigurationInput = ::Struct.new(
      :ad_decision_server_url,
      :avail_suppression,
      :bumper,
      :cdn_configuration,
      :configuration_aliases,
      :dash_configuration,
      :live_pre_roll_configuration,
      :manifest_processing_rules,
      :name,
      :personalization_threshold_seconds,
      :slate_ad_url,
      :tags,
      :transcode_profile_name,
      :video_content_source_url,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.personalization_threshold_seconds ||= 0
      end

    end

    # @!attribute ad_decision_server_url
    #   <p>The URL for the ad decision server (ADS). This includes the specification of static parameters and placeholders for dynamic parameters. AWS Elemental MediaTailor substitutes player-specific and session-specific parameters as needed when calling the ADS. Alternately, for testing, you can provide a static VAST URL. The maximum length is 25,000 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute avail_suppression
    #   <p>The configuration for avail suppression, also known as ad suppression. For more information about ad suppression, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/ad-behavior.html">Ad Suppression</a>.</p>
    #
    #   @return [AvailSuppression]
    #
    # @!attribute bumper
    #   <p>The configuration for bumpers. Bumpers are short audio or video clips that play at the start or before the end of an ad break. To learn more about bumpers, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/bumpers.html">Bumpers</a>.</p>
    #
    #   @return [Bumper]
    #
    # @!attribute cdn_configuration
    #   <p>The configuration for using a content delivery network (CDN), like Amazon CloudFront, for content and ad segment management.</p>
    #
    #   @return [CdnConfiguration]
    #
    # @!attribute configuration_aliases
    #   <p>The player parameters and aliases used as dynamic variables during session initialization. For more information, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/variables-domain.html">Domain Variables</a>.</p>
    #
    #   @return [Hash<String, Hash<String, String>>]
    #
    # @!attribute dash_configuration
    #   <p>The configuration for DASH content.</p>
    #
    #   @return [DashConfiguration]
    #
    # @!attribute hls_configuration
    #   <p>The configuration for HLS content.</p>
    #
    #   @return [HlsConfiguration]
    #
    # @!attribute live_pre_roll_configuration
    #   <p>The configuration for pre-roll ad insertion.</p>
    #
    #   @return [LivePreRollConfiguration]
    #
    # @!attribute log_configuration
    #   <p>The Amazon CloudWatch log settings for a playback configuration.</p>
    #
    #   @return [LogConfiguration]
    #
    # @!attribute manifest_processing_rules
    #   <p>The configuration for manifest processing rules. Manifest processing rules enable customization of the personalized manifests created by MediaTailor.</p>
    #
    #   @return [ManifestProcessingRules]
    #
    # @!attribute name
    #   <p>The identifier for the playback configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute personalization_threshold_seconds
    #   <p>Defines the maximum duration of underfilled ad time (in seconds) allowed in an ad break. If the duration of underfilled ad time exceeds the personalization threshold, then the personalization of the ad break is abandoned and the underlying content is shown. This feature applies to <i>ad replacement</i> in live and VOD streams, rather than ad insertion, because it relies on an underlying content stream. For more information about ad break behavior, including ad replacement and insertion, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/ad-behavior.html">Ad Behavior in AWS Elemental MediaTailor</a>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute playback_configuration_arn
    #   <p>The Amazon Resource Name (ARN) for the playback configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute playback_endpoint_prefix
    #   <p>The URL that the player accesses to get a manifest from AWS Elemental MediaTailor. This session will use server-side reporting.</p>
    #
    #   @return [String]
    #
    # @!attribute session_initialization_endpoint_prefix
    #   <p>The URL that the player uses to initialize a session that uses client-side reporting.</p>
    #
    #   @return [String]
    #
    # @!attribute slate_ad_url
    #   <p>The URL for a high-quality video asset to transcode and use to fill in time that's not used by ads. AWS Elemental MediaTailor shows the slate to fill in gaps in media content. Configuring the slate is optional for non-VPAID playback configurations. For VPAID, the slate is required because MediaTailor provides it in the slots designated for dynamic ad content. The slate must be a high-quality asset that contains both audio and video.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags assigned to the playback configuration.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute transcode_profile_name
    #   <p>The name that is used to associate this playback configuration with a custom transcode profile. This overrides the dynamic transcoding defaults of MediaTailor. Use this only if you have already set up custom profiles with the help of AWS Support.</p>
    #
    #   @return [String]
    #
    # @!attribute video_content_source_url
    #   <p>The URL prefix for the parent manifest for the stream, minus the asset ID. The maximum length is 512 characters.</p>
    #
    #   @return [String]
    #
    PutPlaybackConfigurationOutput = ::Struct.new(
      :ad_decision_server_url,
      :avail_suppression,
      :bumper,
      :cdn_configuration,
      :configuration_aliases,
      :dash_configuration,
      :hls_configuration,
      :live_pre_roll_configuration,
      :log_configuration,
      :manifest_processing_rules,
      :name,
      :personalization_threshold_seconds,
      :playback_configuration_arn,
      :playback_endpoint_prefix,
      :session_initialization_endpoint_prefix,
      :slate_ad_url,
      :tags,
      :transcode_profile_name,
      :video_content_source_url,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.personalization_threshold_seconds ||= 0
      end

    end

    # Includes enum constants for RelativePosition
    #
    module RelativePosition
      # No documentation available.
      #
      BEFORE_PROGRAM = "BEFORE_PROGRAM"

      # No documentation available.
      #
      AFTER_PROGRAM = "AFTER_PROGRAM"
    end

    # <p>The output configuration for this channel.</p>
    #
    # @!attribute dash_playlist_settings
    #   <p>DASH manifest configuration parameters.</p>
    #
    #   @return [DashPlaylistSettings]
    #
    # @!attribute hls_playlist_settings
    #   <p>HLS playlist configuration parameters.</p>
    #
    #   @return [HlsPlaylistSettings]
    #
    # @!attribute manifest_name
    #   <p>The name of the manifest for the channel. The name appears in the PlaybackUrl.</p>
    #
    #   @return [String]
    #
    # @!attribute source_group
    #   <p>A string used to match which HttpPackageConfiguration is used for each VodSource.</p>
    #
    #   @return [String]
    #
    RequestOutputItem = ::Struct.new(
      :dash_playlist_settings,
      :hls_playlist_settings,
      :manifest_name,
      :source_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This response includes only the "property" : "type" property.</p>
    #
    # @!attribute dash_playlist_settings
    #   <p>DASH manifest configuration settings.</p>
    #
    #   @return [DashPlaylistSettings]
    #
    # @!attribute hls_playlist_settings
    #   <p>HLS manifest configuration settings.</p>
    #
    #   @return [HlsPlaylistSettings]
    #
    # @!attribute manifest_name
    #   <p>The name of the manifest for the channel that will appear in the channel output's playback URL.</p>
    #
    #   @return [String]
    #
    # @!attribute playback_url
    #   <p>The URL used for playback by content players.</p>
    #
    #   @return [String]
    #
    # @!attribute source_group
    #   <p>A string used to associate a package configuration source group with a channel output.</p>
    #
    #   @return [String]
    #
    ResponseOutputItem = ::Struct.new(
      :dash_playlist_settings,
      :hls_playlist_settings,
      :manifest_name,
      :playback_url,
      :source_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The schedule's ad break properties.</p>
    #
    # @!attribute approximate_duration_seconds
    #   <p>The approximate duration of the ad break, in seconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute approximate_start_time
    #   <p>The approximate time that the ad will start playing.</p>
    #
    #   @return [Time]
    #
    # @!attribute source_location_name
    #   <p>The name of the source location containing the VOD source used for the ad break.</p>
    #
    #   @return [String]
    #
    # @!attribute vod_source_name
    #   <p>The name of the VOD source used for the ad break.</p>
    #
    #   @return [String]
    #
    ScheduleAdBreak = ::Struct.new(
      :approximate_duration_seconds,
      :approximate_start_time,
      :source_location_name,
      :vod_source_name,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.approximate_duration_seconds ||= 0
      end

    end

    # <p>Schedule configuration parameters. A channel must be stopped before changes can be made to the schedule.</p>
    #
    # @!attribute transition
    #   <p>Program transition configurations.</p>
    #
    #   @return [Transition]
    #
    ScheduleConfiguration = ::Struct.new(
      :transition,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The properties for a schedule.</p>
    #
    # @!attribute approximate_duration_seconds
    #   <p>The approximate duration of this program, in seconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute approximate_start_time
    #   <p>The approximate time that the program will start playing.</p>
    #
    #   @return [Time]
    #
    # @!attribute arn
    #   <p>The ARN of the program.</p>
    #
    #   @return [String]
    #
    # @!attribute channel_name
    #   <p>The name of the channel that uses this schedule.</p>
    #
    #   @return [String]
    #
    # @!attribute live_source_name
    #   <p>The name of the live source used for the program.</p>
    #
    #   @return [String]
    #
    # @!attribute program_name
    #   <p>The name of the program.</p>
    #
    #   @return [String]
    #
    # @!attribute schedule_ad_breaks
    #   <p>The schedule's ad break properties.</p>
    #
    #   @return [Array<ScheduleAdBreak>]
    #
    # @!attribute schedule_entry_type
    #   <p>The type of schedule entry.</p> <p>Valid values: PROGRAM or FILLER_SLATE.</p>
    #
    #   Enum, one of: ["PROGRAM", "FILLER_SLATE"]
    #
    #   @return [String]
    #
    # @!attribute source_location_name
    #   <p>The name of the source location.</p>
    #
    #   @return [String]
    #
    # @!attribute vod_source_name
    #   <p>The name of the VOD source.</p>
    #
    #   @return [String]
    #
    ScheduleEntry = ::Struct.new(
      :approximate_duration_seconds,
      :approximate_start_time,
      :arn,
      :channel_name,
      :live_source_name,
      :program_name,
      :schedule_ad_breaks,
      :schedule_entry_type,
      :source_location_name,
      :vod_source_name,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.approximate_duration_seconds ||= 0
      end

    end

    # Includes enum constants for ScheduleEntryType
    #
    module ScheduleEntryType
      # No documentation available.
      #
      PROGRAM = "PROGRAM"

      # No documentation available.
      #
      FILLER_SLATE = "FILLER_SLATE"
    end

    # <p>AWS Secrets Manager access token configuration parameters. For information about Secrets Manager access token authentication, see <a href="https://docs.aws.amazon.com/mediatailor/latest/ug/channel-assembly-access-configuration-access-token.html">Working with AWS Secrets Manager access token authentication</a>.</p>
    #
    # @!attribute header_name
    #   <p>The name of the HTTP header used to supply the access token in requests to the source location.</p>
    #
    #   @return [String]
    #
    # @!attribute secret_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS Secrets Manager secret that contains the access token.</p>
    #
    #   @return [String]
    #
    # @!attribute secret_string_key
    #   <p>The AWS Secrets Manager <a href="https://docs.aws.amazon.com/secretsmanager/latest/apireference/API_CreateSecret.html SecretsManager-CreateSecret-request-SecretString.html">SecretString</a> key associated with the access token. MediaTailor uses the key to look up SecretString key and value pair containing the access token.</p>
    #
    #   @return [String]
    #
    SecretsManagerAccessTokenConfiguration = ::Struct.new(
      :header_name,
      :secret_arn,
      :secret_string_key,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The base URL of the host or path of the segment delivery server that you're using to serve segments. This is typically a content delivery network (CDN). The URL can be absolute or relative. To use an absolute URL include the protocol, such as https://example.com/some/path. To use a relative URL specify the relative path, such as /some/path*.</p>
    #
    # @!attribute base_url
    #   <p>The base URL of the host or path of the segment delivery server that you're using to serve segments. This is typically a content delivery network (CDN). The URL can be absolute or relative. To use an absolute URL include the protocol, such as https://example.com/some/path. To use a relative URL specify the relative path, such as /some/path*.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A unique identifier used to distinguish between multiple segment delivery configurations in a source location.</p>
    #
    #   @return [String]
    #
    SegmentDeliveryConfiguration = ::Struct.new(
      :base_url,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Slate VOD source configuration.</p>
    #
    # @!attribute source_location_name
    #   <p>The name of the source location where the slate VOD source is stored.</p>
    #
    #   @return [String]
    #
    # @!attribute vod_source_name
    #   <p>The slate VOD source name. The VOD source must already exist in a source location before it can be used for slate.</p>
    #
    #   @return [String]
    #
    SlateSource = ::Struct.new(
      :source_location_name,
      :vod_source_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This response includes only the "type" : "object" property.</p>
    #
    # @!attribute access_configuration
    #   <p>The access configuration for the source location.</p>
    #
    #   @return [AccessConfiguration]
    #
    # @!attribute arn
    #   <p>The ARN of the SourceLocation.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The timestamp that indicates when the source location was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute default_segment_delivery_configuration
    #   <p>The default segment delivery configuration.</p>
    #
    #   @return [DefaultSegmentDeliveryConfiguration]
    #
    # @!attribute http_configuration
    #   <p>The HTTP configuration for the source location.</p>
    #
    #   @return [HttpConfiguration]
    #
    # @!attribute last_modified_time
    #   <p>The timestamp that indicates when the source location was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute segment_delivery_configurations
    #   <p>The segment delivery configurations for the source location.</p>
    #
    #   @return [Array<SegmentDeliveryConfiguration>]
    #
    # @!attribute source_location_name
    #   <p>The name of the source location.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags assigned to the source location.</p>
    #
    #   @return [Hash<String, String>]
    #
    SourceLocation = ::Struct.new(
      :access_configuration,
      :arn,
      :creation_time,
      :default_segment_delivery_configuration,
      :http_configuration,
      :last_modified_time,
      :segment_delivery_configurations,
      :source_location_name,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Splice insert message configuration.</p>
    #
    # @!attribute avail_num
    #   <p>This is written to splice_insert.avail_num, as defined in section 9.7.3.1 of the SCTE-35 specification. The default value is 0. Values must be between 0 and 256, inclusive.</p>
    #
    #   @return [Integer]
    #
    # @!attribute avails_expected
    #   <p>This is written to splice_insert.avails_expected, as defined in section 9.7.3.1 of the SCTE-35 specification. The default value is 0. Values must be between 0 and 256, inclusive.</p>
    #
    #   @return [Integer]
    #
    # @!attribute splice_event_id
    #   <p>This is written to splice_insert.splice_event_id, as defined in section 9.7.3.1 of the SCTE-35 specification. The default value is 1.</p>
    #
    #   @return [Integer]
    #
    # @!attribute unique_program_id
    #   <p>This is written to splice_insert.unique_program_id, as defined in section 9.7.3.1 of the SCTE-35 specification. The default value is 0. Values must be between 0 and 256, inclusive.</p>
    #
    #   @return [Integer]
    #
    SpliceInsertMessage = ::Struct.new(
      :avail_num,
      :avails_expected,
      :splice_event_id,
      :unique_program_id,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.avail_num ||= 0
        self.avails_expected ||= 0
        self.splice_event_id ||= 0
        self.unique_program_id ||= 0
      end

    end

    # @!attribute channel_name
    #   <p>The identifier for the channel you are working on.</p>
    #
    #   @return [String]
    #
    StartChannelInput = ::Struct.new(
      :channel_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    StartChannelOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel_name
    #   <p>The identifier for the channel you are working on.</p>
    #
    #   @return [String]
    #
    StopChannelInput = ::Struct.new(
      :channel_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    StopChannelOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) for the playback configuration. You can get this from the response to any playback configuration request.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A comma-separated list of tag key:value pairs.</p>
    #
    #   @return [Hash<String, String>]
    #
    TagResourceInput = ::Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    TagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Tier
    #
    module Tier
      # No documentation available.
      #
      BASIC = "BASIC"

      # No documentation available.
      #
      STANDARD = "STANDARD"
    end

    # <p>Program transition configuration.</p>
    #
    # @!attribute duration_millis
    #   <p>The duration of the live program in seconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute relative_position
    #   <p>The position where this program will be inserted relative to the RelativePosition.</p>
    #
    #   Enum, one of: ["BEFORE_PROGRAM", "AFTER_PROGRAM"]
    #
    #   @return [String]
    #
    # @!attribute relative_program
    #   <p>The name of the program that this program will be inserted next to, as defined by RelativePosition.</p>
    #
    #   @return [String]
    #
    # @!attribute scheduled_start_time_millis
    #   <p>The date and time that the program is scheduled to start, in epoch milliseconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute type
    #   <p>Defines when the program plays in the schedule. You can set the value to ABSOLUTE or RELATIVE.</p> <p>ABSOLUTE - The program plays at a specific wall clock time. This setting can only be used for channels using the LINEAR PlaybackMode.</p> <p>Note the following considerations when using ABSOLUTE transitions:</p> <p>If the preceding program in the schedule has a duration that extends past the wall clock time, MediaTailor truncates the preceding program on a common segment boundary.</p> <p>If there are gaps in playback, MediaTailor plays the FillerSlate you configured for your linear channel.</p> <p>RELATIVE - The program is inserted into the schedule either before or after a program that you specify via RelativePosition.</p>
    #
    #   @return [String]
    #
    Transition = ::Struct.new(
      :duration_millis,
      :relative_position,
      :relative_program,
      :scheduled_start_time_millis,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.duration_millis ||= 0
        self.scheduled_start_time_millis ||= 0
      end

    end

    # Includes enum constants for Type
    #
    module Type
      # No documentation available.
      #
      DASH = "DASH"

      # No documentation available.
      #
      HLS = "HLS"
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) for the playback configuration. You can get this from the response to any playback configuration request.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>A comma-separated list of the tag keys to remove from the playback configuration.</p>
    #
    #   @return [Array<String>]
    #
    UntagResourceInput = ::Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UntagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel_name
    #   <p>The identifier for the channel you are working on.</p>
    #
    #   @return [String]
    #
    # @!attribute filler_slate
    #   <p>The slate used to fill gaps between programs in the schedule. You must configure filler slate if your channel uses the LINEAR PlaybackMode. MediaTailor doesn't support filler slate for channels using the LOOP PlaybackMode.</p>
    #
    #   @return [SlateSource]
    #
    # @!attribute outputs
    #   <p>The channel's output properties.</p>
    #
    #   @return [Array<RequestOutputItem>]
    #
    UpdateChannelInput = ::Struct.new(
      :channel_name,
      :filler_slate,
      :outputs,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the channel.</p>
    #
    #   @return [String]
    #
    # @!attribute channel_name
    #   <p>The name of the channel.</p>
    #
    #   @return [String]
    #
    # @!attribute channel_state
    #   <p>Indicates whether the channel is in a running state or not.</p>
    #
    #   Enum, one of: ["RUNNING", "STOPPED"]
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The timestamp of when the channel was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute filler_slate
    #   <p>Contains information about the slate used to fill gaps between programs in the schedule.</p>
    #
    #   @return [SlateSource]
    #
    # @!attribute last_modified_time
    #   <p>The timestamp of when the channel was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute outputs
    #   <p>The channel's output properties.</p>
    #
    #   @return [Array<ResponseOutputItem>]
    #
    # @!attribute playback_mode
    #   <p>The channel's playback mode.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags assigned to the channel.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute tier
    #   <p>The channel's tier.</p>
    #
    #   @return [String]
    #
    UpdateChannelOutput = ::Struct.new(
      :arn,
      :channel_name,
      :channel_state,
      :creation_time,
      :filler_slate,
      :last_modified_time,
      :outputs,
      :playback_mode,
      :tags,
      :tier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute http_package_configurations
    #   <p>A list of HTTP package configurations for the live source on this account.</p>
    #
    #   @return [Array<HttpPackageConfiguration>]
    #
    # @!attribute live_source_name
    #   <p>The identifier for the live source you are working on.</p>
    #
    #   @return [String]
    #
    # @!attribute source_location_name
    #   <p>The identifier for the source location you are working on.</p>
    #
    #   @return [String]
    #
    UpdateLiveSourceInput = ::Struct.new(
      :http_package_configurations,
      :live_source_name,
      :source_location_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the live source.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The timestamp that indicates when the live source was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute http_package_configurations
    #   <p>The HTTP package configurations.</p>
    #
    #   @return [Array<HttpPackageConfiguration>]
    #
    # @!attribute last_modified_time
    #   <p>The timestamp that indicates when the live source was modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute live_source_name
    #   <p>The name of the live source.</p>
    #
    #   @return [String]
    #
    # @!attribute source_location_name
    #   <p>The name of the source location associated with the VOD source.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags assigned to the live source.</p>
    #
    #   @return [Hash<String, String>]
    #
    UpdateLiveSourceOutput = ::Struct.new(
      :arn,
      :creation_time,
      :http_package_configurations,
      :last_modified_time,
      :live_source_name,
      :source_location_name,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute access_configuration
    #   <p>Access configuration parameters. Configures the type of authentication used to access content from your source location.</p>
    #
    #   @return [AccessConfiguration]
    #
    # @!attribute default_segment_delivery_configuration
    #   <p>The optional configuration for the host server that serves segments.</p>
    #
    #   @return [DefaultSegmentDeliveryConfiguration]
    #
    # @!attribute http_configuration
    #   <p>The HTTP configuration for the source location.</p>
    #
    #   @return [HttpConfiguration]
    #
    # @!attribute segment_delivery_configurations
    #   <p>A list of the segment delivery configurations associated with this resource.</p>
    #
    #   @return [Array<SegmentDeliveryConfiguration>]
    #
    # @!attribute source_location_name
    #   <p>The identifier for the source location you are working on.</p>
    #
    #   @return [String]
    #
    UpdateSourceLocationInput = ::Struct.new(
      :access_configuration,
      :default_segment_delivery_configuration,
      :http_configuration,
      :segment_delivery_configurations,
      :source_location_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute access_configuration
    #   <p>The access configuration for the source location.</p>
    #
    #   @return [AccessConfiguration]
    #
    # @!attribute arn
    #   <p>The ARN of the source location.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The timestamp that indicates when the source location was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute default_segment_delivery_configuration
    #   <p>The default segment delivery configuration settings.</p>
    #
    #   @return [DefaultSegmentDeliveryConfiguration]
    #
    # @!attribute http_configuration
    #   <p>The HTTP package configuration settings for the source location.</p>
    #
    #   @return [HttpConfiguration]
    #
    # @!attribute last_modified_time
    #   <p>The timestamp that indicates when the source location was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute segment_delivery_configurations
    #   <p>A list of the segment delivery configurations associated with this resource.</p>
    #
    #   @return [Array<SegmentDeliveryConfiguration>]
    #
    # @!attribute source_location_name
    #   <p>The name of the source location.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags assigned to the source location.</p>
    #
    #   @return [Hash<String, String>]
    #
    UpdateSourceLocationOutput = ::Struct.new(
      :access_configuration,
      :arn,
      :creation_time,
      :default_segment_delivery_configuration,
      :http_configuration,
      :last_modified_time,
      :segment_delivery_configurations,
      :source_location_name,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute http_package_configurations
    #   <p>A list of HTTP package configurations for the VOD source on this account.</p>
    #
    #   @return [Array<HttpPackageConfiguration>]
    #
    # @!attribute source_location_name
    #   <p>The identifier for the source location you are working on.</p>
    #
    #   @return [String]
    #
    # @!attribute vod_source_name
    #   <p>The identifier for the VOD source you are working on.</p>
    #
    #   @return [String]
    #
    UpdateVodSourceInput = ::Struct.new(
      :http_package_configurations,
      :source_location_name,
      :vod_source_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the VOD source.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The timestamp that indicates when the VOD source was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute http_package_configurations
    #   <p>The HTTP package configurations.</p>
    #
    #   @return [Array<HttpPackageConfiguration>]
    #
    # @!attribute last_modified_time
    #   <p>The last modified time of the VOD source.</p>
    #
    #   @return [Time]
    #
    # @!attribute source_location_name
    #   <p>The name of the source location associated with the VOD source.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags assigned to the VOD source.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute vod_source_name
    #   <p>The name of the VOD source.</p>
    #
    #   @return [String]
    #
    UpdateVodSourceOutput = ::Struct.new(
      :arn,
      :creation_time,
      :http_package_configurations,
      :last_modified_time,
      :source_location_name,
      :tags,
      :vod_source_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>VOD source configuration parameters.</p>
    #
    # @!attribute arn
    #   <p>The ARN for the VOD source.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The timestamp that indicates when the VOD source was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute http_package_configurations
    #   <p>The HTTP package configurations for the VOD source.</p>
    #
    #   @return [Array<HttpPackageConfiguration>]
    #
    # @!attribute last_modified_time
    #   <p>The timestamp that indicates when the VOD source was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute source_location_name
    #   <p>The name of the source location that the VOD source is associated with.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags assigned to the VOD source.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute vod_source_name
    #   <p>The name of the VOD source.</p>
    #
    #   @return [String]
    #
    VodSource = ::Struct.new(
      :arn,
      :creation_time,
      :http_package_configurations,
      :last_modified_time,
      :source_location_name,
      :tags,
      :vod_source_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
