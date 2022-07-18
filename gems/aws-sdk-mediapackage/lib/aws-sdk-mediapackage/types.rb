# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::MediaPackage
  module Types

    # Includes enum constants for AdMarkers
    #
    module AdMarkers
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      SCTE35_ENHANCED = "SCTE35_ENHANCED"

      # No documentation available.
      #
      PASSTHROUGH = "PASSTHROUGH"

      # No documentation available.
      #
      DATERANGE = "DATERANGE"
    end

    # Includes enum constants for AdsOnDeliveryRestrictions
    #
    module AdsOnDeliveryRestrictions
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      RESTRICTED = "RESTRICTED"

      # No documentation available.
      #
      UNRESTRICTED = "UNRESTRICTED"

      # No documentation available.
      #
      BOTH = "BOTH"
    end

    # CDN Authorization credentials
    #
    # @!attribute cdn_identifier_secret
    #   The Amazon Resource Name (ARN) for the secret in Secrets Manager that your Content Distribution Network (CDN) uses for authorization to access your endpoint.
    #
    #   @return [String]
    #
    # @!attribute secrets_role_arn
    #   The Amazon Resource Name (ARN) for the IAM role that allows MediaPackage to communicate with AWS Secrets Manager.
    #
    #   @return [String]
    #
    Authorization = ::Struct.new(
      :cdn_identifier_secret,
      :secrets_role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # A Channel resource configuration.
    #
    # @!attribute arn
    #   The Amazon Resource Name (ARN) assigned to the Channel.
    #
    #   @return [String]
    #
    # @!attribute description
    #   A short text description of the Channel.
    #
    #   @return [String]
    #
    # @!attribute egress_access_logs
    #   Configure egress access logging.
    #
    #   @return [EgressAccessLogs]
    #
    # @!attribute hls_ingest
    #   An HTTP Live Streaming (HLS) ingest resource configuration.
    #
    #   @return [HlsIngest]
    #
    # @!attribute id
    #   The ID of the Channel.
    #
    #   @return [String]
    #
    # @!attribute ingress_access_logs
    #   Configure ingress access logging.
    #
    #   @return [IngressAccessLogs]
    #
    # @!attribute tags
    #   A collection of tags associated with a resource
    #
    #   @return [Hash<String, String>]
    #
    Channel = ::Struct.new(
      :arn,
      :description,
      :egress_access_logs,
      :hls_ingest,
      :id,
      :ingress_access_logs,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # A Common Media Application Format (CMAF) encryption configuration.
    #
    # @!attribute constant_initialization_vector
    #   An optional 128-bit, 16-byte hex value represented by a 32-character string, used in conjunction with the key for encrypting blocks. If you don't specify a value, then MediaPackage creates the constant initialization vector (IV).
    #
    #   @return [String]
    #
    # @!attribute key_rotation_interval_seconds
    #   Time (in seconds) between each encryption key rotation.
    #
    #   @return [Integer]
    #
    # @!attribute speke_key_provider
    #   A configuration for accessing an external Secure Packager and Encoder Key Exchange (SPEKE) service that will provide encryption keys.
    #
    #   @return [SpekeKeyProvider]
    #
    CmafEncryption = ::Struct.new(
      :constant_initialization_vector,
      :key_rotation_interval_seconds,
      :speke_key_provider,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.key_rotation_interval_seconds ||= 0
      end
    end

    # A Common Media Application Format (CMAF) packaging configuration.
    #
    # @!attribute encryption
    #   A Common Media Application Format (CMAF) encryption configuration.
    #
    #   @return [CmafEncryption]
    #
    # @!attribute hls_manifests
    #   A list of HLS manifest configurations
    #
    #   @return [Array<HlsManifest>]
    #
    # @!attribute segment_duration_seconds
    #   Duration (in seconds) of each segment. Actual segments will be
    #   rounded to the nearest multiple of the source segment duration.
    #
    #   @return [Integer]
    #
    # @!attribute segment_prefix
    #   An optional custom string that is prepended to the name of each segment. If not specified, it defaults to the ChannelId.
    #
    #   @return [String]
    #
    # @!attribute stream_selection
    #   A StreamSelection configuration.
    #
    #   @return [StreamSelection]
    #
    CmafPackage = ::Struct.new(
      :encryption,
      :hls_manifests,
      :segment_duration_seconds,
      :segment_prefix,
      :stream_selection,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.segment_duration_seconds ||= 0
      end
    end

    # A Common Media Application Format (CMAF) packaging configuration.
    #
    # @!attribute encryption
    #   A Common Media Application Format (CMAF) encryption configuration.
    #
    #   @return [CmafEncryption]
    #
    # @!attribute hls_manifests
    #   A list of HLS manifest configurations
    #
    #   @return [Array<HlsManifestCreateOrUpdateParameters>]
    #
    # @!attribute segment_duration_seconds
    #   Duration (in seconds) of each segment. Actual segments will be
    #   rounded to the nearest multiple of the source segment duration.
    #
    #   @return [Integer]
    #
    # @!attribute segment_prefix
    #   An optional custom string that is prepended to the name of each segment. If not specified, it defaults to the ChannelId.
    #
    #   @return [String]
    #
    # @!attribute stream_selection
    #   A StreamSelection configuration.
    #
    #   @return [StreamSelection]
    #
    CmafPackageCreateOrUpdateParameters = ::Struct.new(
      :encryption,
      :hls_manifests,
      :segment_duration_seconds,
      :segment_prefix,
      :stream_selection,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.segment_duration_seconds ||= 0
      end
    end

    # the option to configure log subscription.
    #
    # @!attribute egress_access_logs
    #   Configure egress access logging.
    #
    #   @return [EgressAccessLogs]
    #
    # @!attribute id
    #   The ID of the channel to log subscription.
    #
    #   @return [String]
    #
    # @!attribute ingress_access_logs
    #   Configure ingress access logging.
    #
    #   @return [IngressAccessLogs]
    #
    ConfigureLogsInput = ::Struct.new(
      :egress_access_logs,
      :id,
      :ingress_access_logs,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   The Amazon Resource Name (ARN) assigned to the Channel.
    #
    #   @return [String]
    #
    # @!attribute description
    #   A short text description of the Channel.
    #
    #   @return [String]
    #
    # @!attribute egress_access_logs
    #   Configure egress access logging.
    #
    #   @return [EgressAccessLogs]
    #
    # @!attribute hls_ingest
    #   An HTTP Live Streaming (HLS) ingest resource configuration.
    #
    #   @return [HlsIngest]
    #
    # @!attribute id
    #   The ID of the Channel.
    #
    #   @return [String]
    #
    # @!attribute ingress_access_logs
    #   Configure ingress access logging.
    #
    #   @return [IngressAccessLogs]
    #
    # @!attribute tags
    #   A collection of tags associated with a resource
    #
    #   @return [Hash<String, String>]
    #
    ConfigureLogsOutput = ::Struct.new(
      :arn,
      :description,
      :egress_access_logs,
      :hls_ingest,
      :id,
      :ingress_access_logs,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # A new Channel configuration.
    #
    # @!attribute description
    #   A short text description of the Channel.
    #
    #   @return [String]
    #
    # @!attribute id
    #   The ID of the Channel. The ID must be unique within the region and it
    #   cannot be changed after a Channel is created.
    #
    #   @return [String]
    #
    # @!attribute tags
    #   A collection of tags associated with a resource
    #
    #   @return [Hash<String, String>]
    #
    CreateChannelInput = ::Struct.new(
      :description,
      :id,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   The Amazon Resource Name (ARN) assigned to the Channel.
    #
    #   @return [String]
    #
    # @!attribute description
    #   A short text description of the Channel.
    #
    #   @return [String]
    #
    # @!attribute egress_access_logs
    #   Configure egress access logging.
    #
    #   @return [EgressAccessLogs]
    #
    # @!attribute hls_ingest
    #   An HTTP Live Streaming (HLS) ingest resource configuration.
    #
    #   @return [HlsIngest]
    #
    # @!attribute id
    #   The ID of the Channel.
    #
    #   @return [String]
    #
    # @!attribute ingress_access_logs
    #   Configure ingress access logging.
    #
    #   @return [IngressAccessLogs]
    #
    # @!attribute tags
    #   A collection of tags associated with a resource
    #
    #   @return [Hash<String, String>]
    #
    CreateChannelOutput = ::Struct.new(
      :arn,
      :description,
      :egress_access_logs,
      :hls_ingest,
      :id,
      :ingress_access_logs,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Configuration parameters used to create a new HarvestJob.
    #
    # @!attribute end_time
    #   The end of the time-window which will be harvested
    #
    #   @return [String]
    #
    # @!attribute id
    #   The ID of the HarvestJob. The ID must be unique within the region
    #   and it cannot be changed after the HarvestJob is submitted
    #
    #   @return [String]
    #
    # @!attribute origin_endpoint_id
    #   The ID of the OriginEndpoint that the HarvestJob will harvest from.
    #   This cannot be changed after the HarvestJob is submitted.
    #
    #   @return [String]
    #
    # @!attribute s3_destination
    #   Configuration parameters for where in an S3 bucket to place the harvested content
    #
    #   @return [S3Destination]
    #
    # @!attribute start_time
    #   The start of the time-window which will be harvested
    #
    #   @return [String]
    #
    CreateHarvestJobInput = ::Struct.new(
      :end_time,
      :id,
      :origin_endpoint_id,
      :s3_destination,
      :start_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   The Amazon Resource Name (ARN) assigned to the HarvestJob.
    #
    #   @return [String]
    #
    # @!attribute channel_id
    #   The ID of the Channel that the HarvestJob will harvest from.
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   The time the HarvestJob was submitted
    #
    #   @return [String]
    #
    # @!attribute end_time
    #   The end of the time-window which will be harvested.
    #
    #   @return [String]
    #
    # @!attribute id
    #   The ID of the HarvestJob. The ID must be unique within the region
    #   and it cannot be changed after the HarvestJob is submitted.
    #
    #   @return [String]
    #
    # @!attribute origin_endpoint_id
    #   The ID of the OriginEndpoint that the HarvestJob will harvest from.
    #   This cannot be changed after the HarvestJob is submitted.
    #
    #   @return [String]
    #
    # @!attribute s3_destination
    #   Configuration parameters for where in an S3 bucket to place the harvested content
    #
    #   @return [S3Destination]
    #
    # @!attribute start_time
    #   The start of the time-window which will be harvested.
    #
    #   @return [String]
    #
    # @!attribute status
    #   The current status of the HarvestJob. Consider setting up a CloudWatch Event to listen for
    #   HarvestJobs as they succeed or fail. In the event of failure, the CloudWatch Event will
    #   include an explanation of why the HarvestJob failed.
    #
    #   Enum, one of: ["IN_PROGRESS", "SUCCEEDED", "FAILED"]
    #
    #   @return [String]
    #
    CreateHarvestJobOutput = ::Struct.new(
      :arn,
      :channel_id,
      :created_at,
      :end_time,
      :id,
      :origin_endpoint_id,
      :s3_destination,
      :start_time,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Configuration parameters used to create a new OriginEndpoint.
    #
    # @!attribute authorization
    #   CDN Authorization credentials
    #
    #   @return [Authorization]
    #
    # @!attribute channel_id
    #   The ID of the Channel that the OriginEndpoint will be associated with.
    #   This cannot be changed after the OriginEndpoint is created.
    #
    #   @return [String]
    #
    # @!attribute cmaf_package
    #   A Common Media Application Format (CMAF) packaging configuration.
    #
    #   @return [CmafPackageCreateOrUpdateParameters]
    #
    # @!attribute dash_package
    #   A Dynamic Adaptive Streaming over HTTP (DASH) packaging configuration.
    #
    #   @return [DashPackage]
    #
    # @!attribute description
    #   A short text description of the OriginEndpoint.
    #
    #   @return [String]
    #
    # @!attribute hls_package
    #   An HTTP Live Streaming (HLS) packaging configuration.
    #
    #   @return [HlsPackage]
    #
    # @!attribute id
    #   The ID of the OriginEndpoint.  The ID must be unique within the region
    #   and it cannot be changed after the OriginEndpoint is created.
    #
    #   @return [String]
    #
    # @!attribute manifest_name
    #   A short string that will be used as the filename of the OriginEndpoint URL (defaults to "index").
    #
    #   @return [String]
    #
    # @!attribute mss_package
    #   A Microsoft Smooth Streaming (MSS) packaging configuration.
    #
    #   @return [MssPackage]
    #
    # @!attribute origination
    #   Control whether origination of video is allowed for this OriginEndpoint. If set to ALLOW, the OriginEndpoint
    #   may by requested, pursuant to any other form of access control. If set to DENY, the OriginEndpoint may not be
    #   requested. This can be helpful for Live to VOD harvesting, or for temporarily disabling origination
    #
    #   Enum, one of: ["ALLOW", "DENY"]
    #
    #   @return [String]
    #
    # @!attribute startover_window_seconds
    #   Maximum duration (seconds) of content to retain for startover playback.
    #   If not specified, startover playback will be disabled for the OriginEndpoint.
    #
    #   @return [Integer]
    #
    # @!attribute tags
    #   A collection of tags associated with a resource
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute time_delay_seconds
    #   Amount of delay (seconds) to enforce on the playback of live content.
    #   If not specified, there will be no time delay in effect for the OriginEndpoint.
    #
    #   @return [Integer]
    #
    # @!attribute whitelist
    #   A list of source IP CIDR blocks that will be allowed to access the OriginEndpoint.
    #
    #   @return [Array<String>]
    #
    CreateOriginEndpointInput = ::Struct.new(
      :authorization,
      :channel_id,
      :cmaf_package,
      :dash_package,
      :description,
      :hls_package,
      :id,
      :manifest_name,
      :mss_package,
      :origination,
      :startover_window_seconds,
      :tags,
      :time_delay_seconds,
      :whitelist,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.startover_window_seconds ||= 0
        self.time_delay_seconds ||= 0
      end
    end

    # @!attribute arn
    #   The Amazon Resource Name (ARN) assigned to the OriginEndpoint.
    #
    #   @return [String]
    #
    # @!attribute authorization
    #   CDN Authorization credentials
    #
    #   @return [Authorization]
    #
    # @!attribute channel_id
    #   The ID of the Channel the OriginEndpoint is associated with.
    #
    #   @return [String]
    #
    # @!attribute cmaf_package
    #   A Common Media Application Format (CMAF) packaging configuration.
    #
    #   @return [CmafPackage]
    #
    # @!attribute dash_package
    #   A Dynamic Adaptive Streaming over HTTP (DASH) packaging configuration.
    #
    #   @return [DashPackage]
    #
    # @!attribute description
    #   A short text description of the OriginEndpoint.
    #
    #   @return [String]
    #
    # @!attribute hls_package
    #   An HTTP Live Streaming (HLS) packaging configuration.
    #
    #   @return [HlsPackage]
    #
    # @!attribute id
    #   The ID of the OriginEndpoint.
    #
    #   @return [String]
    #
    # @!attribute manifest_name
    #   A short string appended to the end of the OriginEndpoint URL.
    #
    #   @return [String]
    #
    # @!attribute mss_package
    #   A Microsoft Smooth Streaming (MSS) packaging configuration.
    #
    #   @return [MssPackage]
    #
    # @!attribute origination
    #   Control whether origination of video is allowed for this OriginEndpoint. If set to ALLOW, the OriginEndpoint
    #   may by requested, pursuant to any other form of access control. If set to DENY, the OriginEndpoint may not be
    #   requested. This can be helpful for Live to VOD harvesting, or for temporarily disabling origination
    #
    #   Enum, one of: ["ALLOW", "DENY"]
    #
    #   @return [String]
    #
    # @!attribute startover_window_seconds
    #   Maximum duration (seconds) of content to retain for startover playback.
    #   If not specified, startover playback will be disabled for the OriginEndpoint.
    #
    #   @return [Integer]
    #
    # @!attribute tags
    #   A collection of tags associated with a resource
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute time_delay_seconds
    #   Amount of delay (seconds) to enforce on the playback of live content.
    #   If not specified, there will be no time delay in effect for the OriginEndpoint.
    #
    #   @return [Integer]
    #
    # @!attribute url
    #   The URL of the packaged OriginEndpoint for consumption.
    #
    #   @return [String]
    #
    # @!attribute whitelist
    #   A list of source IP CIDR blocks that will be allowed to access the OriginEndpoint.
    #
    #   @return [Array<String>]
    #
    CreateOriginEndpointOutput = ::Struct.new(
      :arn,
      :authorization,
      :channel_id,
      :cmaf_package,
      :dash_package,
      :description,
      :hls_package,
      :id,
      :manifest_name,
      :mss_package,
      :origination,
      :startover_window_seconds,
      :tags,
      :time_delay_seconds,
      :url,
      :whitelist,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.startover_window_seconds ||= 0
        self.time_delay_seconds ||= 0
      end
    end

    # A Dynamic Adaptive Streaming over HTTP (DASH) encryption configuration.
    #
    # @!attribute key_rotation_interval_seconds
    #   Time (in seconds) between each encryption key rotation.
    #
    #   @return [Integer]
    #
    # @!attribute speke_key_provider
    #   A configuration for accessing an external Secure Packager and Encoder Key Exchange (SPEKE) service that will provide encryption keys.
    #
    #   @return [SpekeKeyProvider]
    #
    DashEncryption = ::Struct.new(
      :key_rotation_interval_seconds,
      :speke_key_provider,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.key_rotation_interval_seconds ||= 0
      end
    end

    # A Dynamic Adaptive Streaming over HTTP (DASH) packaging configuration.
    #
    # @!attribute ad_triggers
    #   A list of SCTE-35 message types that are treated as ad markers in the output.  If empty, no
    #   ad markers are output.  Specify multiple items to create ad markers for all of the included
    #   message types.
    #
    #   @return [Array<String>]
    #
    # @!attribute ads_on_delivery_restrictions
    #   This setting allows the delivery restriction flags on SCTE-35 segmentation descriptors to
    #   determine whether a message signals an ad.  Choosing "NONE" means no SCTE-35 messages become
    #   ads.  Choosing "RESTRICTED" means SCTE-35 messages of the types specified in AdTriggers that
    #   contain delivery restrictions will be treated as ads.  Choosing "UNRESTRICTED" means SCTE-35
    #   messages of the types specified in AdTriggers that do not contain delivery restrictions will
    #   be treated as ads.  Choosing "BOTH" means all SCTE-35 messages of the types specified in
    #   AdTriggers will be treated as ads.  Note that Splice Insert messages do not have these flags
    #   and are always treated as ads if specified in AdTriggers.
    #
    #   Enum, one of: ["NONE", "RESTRICTED", "UNRESTRICTED", "BOTH"]
    #
    #   @return [String]
    #
    # @!attribute encryption
    #   A Dynamic Adaptive Streaming over HTTP (DASH) encryption configuration.
    #
    #   @return [DashEncryption]
    #
    # @!attribute manifest_layout
    #   Determines the position of some tags in the Media Presentation Description (MPD).  When set to FULL, elements like SegmentTemplate and ContentProtection are included in each Representation.  When set to COMPACT, duplicate elements are combined and presented at the AdaptationSet level.
    #
    #   Enum, one of: ["FULL", "COMPACT"]
    #
    #   @return [String]
    #
    # @!attribute manifest_window_seconds
    #   Time window (in seconds) contained in each manifest.
    #
    #   @return [Integer]
    #
    # @!attribute min_buffer_time_seconds
    #   Minimum duration (in seconds) that a player will buffer media before starting the presentation.
    #
    #   @return [Integer]
    #
    # @!attribute min_update_period_seconds
    #   Minimum duration (in seconds) between potential changes to the Dynamic Adaptive Streaming over HTTP (DASH) Media Presentation Description (MPD).
    #
    #   @return [Integer]
    #
    # @!attribute period_triggers
    #   A list of triggers that controls when the outgoing Dynamic Adaptive Streaming over HTTP (DASH)
    #   Media Presentation Description (MPD) will be partitioned into multiple periods. If empty, the content will not
    #   be partitioned into more than one period. If the list contains "ADS", new periods will be created where
    #   the Channel source contains SCTE-35 ad markers.
    #
    #   @return [Array<String>]
    #
    # @!attribute profile
    #   The Dynamic Adaptive Streaming over HTTP (DASH) profile type.  When set to "HBBTV_1_5", HbbTV 1.5 compliant output is enabled. When set to "DVB-DASH_2014", DVB-DASH 2014 compliant output is enabled.
    #
    #   Enum, one of: ["NONE", "HBBTV_1_5", "HYBRIDCAST", "DVB_DASH_2014"]
    #
    #   @return [String]
    #
    # @!attribute segment_duration_seconds
    #   Duration (in seconds) of each segment. Actual segments will be
    #   rounded to the nearest multiple of the source segment duration.
    #
    #   @return [Integer]
    #
    # @!attribute segment_template_format
    #   Determines the type of SegmentTemplate included in the Media Presentation Description (MPD).  When set to NUMBER_WITH_TIMELINE, a full timeline is presented in each SegmentTemplate, with $Number$ media URLs.  When set to TIME_WITH_TIMELINE, a full timeline is presented in each SegmentTemplate, with $Time$ media URLs. When set to NUMBER_WITH_DURATION, only a duration is included in each SegmentTemplate, with $Number$ media URLs.
    #
    #   Enum, one of: ["NUMBER_WITH_TIMELINE", "TIME_WITH_TIMELINE", "NUMBER_WITH_DURATION"]
    #
    #   @return [String]
    #
    # @!attribute stream_selection
    #   A StreamSelection configuration.
    #
    #   @return [StreamSelection]
    #
    # @!attribute suggested_presentation_delay_seconds
    #   Duration (in seconds) to delay live content before presentation.
    #
    #   @return [Integer]
    #
    # @!attribute utc_timing
    #   Determines the type of UTCTiming included in the Media Presentation Description (MPD)
    #
    #   Enum, one of: ["NONE", "HTTP-HEAD", "HTTP-ISO", "HTTP-XSDATE"]
    #
    #   @return [String]
    #
    # @!attribute utc_timing_uri
    #   Specifies the value attribute of the UTCTiming field when utcTiming is set to HTTP-ISO, HTTP-HEAD or HTTP-XSDATE
    #
    #   @return [String]
    #
    DashPackage = ::Struct.new(
      :ad_triggers,
      :ads_on_delivery_restrictions,
      :encryption,
      :manifest_layout,
      :manifest_window_seconds,
      :min_buffer_time_seconds,
      :min_update_period_seconds,
      :period_triggers,
      :profile,
      :segment_duration_seconds,
      :segment_template_format,
      :stream_selection,
      :suggested_presentation_delay_seconds,
      :utc_timing,
      :utc_timing_uri,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.manifest_window_seconds ||= 0
        self.min_buffer_time_seconds ||= 0
        self.min_update_period_seconds ||= 0
        self.segment_duration_seconds ||= 0
        self.suggested_presentation_delay_seconds ||= 0
      end
    end

    # @!attribute id
    #   The ID of the Channel to delete.
    #
    #   @return [String]
    #
    DeleteChannelInput = ::Struct.new(
      :id,
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

    # @!attribute id
    #   The ID of the OriginEndpoint to delete.
    #
    #   @return [String]
    #
    DeleteOriginEndpointInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteOriginEndpointOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   The ID of a Channel.
    #
    #   @return [String]
    #
    DescribeChannelInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   The Amazon Resource Name (ARN) assigned to the Channel.
    #
    #   @return [String]
    #
    # @!attribute description
    #   A short text description of the Channel.
    #
    #   @return [String]
    #
    # @!attribute egress_access_logs
    #   Configure egress access logging.
    #
    #   @return [EgressAccessLogs]
    #
    # @!attribute hls_ingest
    #   An HTTP Live Streaming (HLS) ingest resource configuration.
    #
    #   @return [HlsIngest]
    #
    # @!attribute id
    #   The ID of the Channel.
    #
    #   @return [String]
    #
    # @!attribute ingress_access_logs
    #   Configure ingress access logging.
    #
    #   @return [IngressAccessLogs]
    #
    # @!attribute tags
    #   A collection of tags associated with a resource
    #
    #   @return [Hash<String, String>]
    #
    DescribeChannelOutput = ::Struct.new(
      :arn,
      :description,
      :egress_access_logs,
      :hls_ingest,
      :id,
      :ingress_access_logs,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   The ID of the HarvestJob.
    #
    #   @return [String]
    #
    DescribeHarvestJobInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   The Amazon Resource Name (ARN) assigned to the HarvestJob.
    #
    #   @return [String]
    #
    # @!attribute channel_id
    #   The ID of the Channel that the HarvestJob will harvest from.
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   The time the HarvestJob was submitted
    #
    #   @return [String]
    #
    # @!attribute end_time
    #   The end of the time-window which will be harvested.
    #
    #   @return [String]
    #
    # @!attribute id
    #   The ID of the HarvestJob. The ID must be unique within the region
    #   and it cannot be changed after the HarvestJob is submitted.
    #
    #   @return [String]
    #
    # @!attribute origin_endpoint_id
    #   The ID of the OriginEndpoint that the HarvestJob will harvest from.
    #   This cannot be changed after the HarvestJob is submitted.
    #
    #   @return [String]
    #
    # @!attribute s3_destination
    #   Configuration parameters for where in an S3 bucket to place the harvested content
    #
    #   @return [S3Destination]
    #
    # @!attribute start_time
    #   The start of the time-window which will be harvested.
    #
    #   @return [String]
    #
    # @!attribute status
    #   The current status of the HarvestJob. Consider setting up a CloudWatch Event to listen for
    #   HarvestJobs as they succeed or fail. In the event of failure, the CloudWatch Event will
    #   include an explanation of why the HarvestJob failed.
    #
    #   Enum, one of: ["IN_PROGRESS", "SUCCEEDED", "FAILED"]
    #
    #   @return [String]
    #
    DescribeHarvestJobOutput = ::Struct.new(
      :arn,
      :channel_id,
      :created_at,
      :end_time,
      :id,
      :origin_endpoint_id,
      :s3_destination,
      :start_time,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   The ID of the OriginEndpoint.
    #
    #   @return [String]
    #
    DescribeOriginEndpointInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   The Amazon Resource Name (ARN) assigned to the OriginEndpoint.
    #
    #   @return [String]
    #
    # @!attribute authorization
    #   CDN Authorization credentials
    #
    #   @return [Authorization]
    #
    # @!attribute channel_id
    #   The ID of the Channel the OriginEndpoint is associated with.
    #
    #   @return [String]
    #
    # @!attribute cmaf_package
    #   A Common Media Application Format (CMAF) packaging configuration.
    #
    #   @return [CmafPackage]
    #
    # @!attribute dash_package
    #   A Dynamic Adaptive Streaming over HTTP (DASH) packaging configuration.
    #
    #   @return [DashPackage]
    #
    # @!attribute description
    #   A short text description of the OriginEndpoint.
    #
    #   @return [String]
    #
    # @!attribute hls_package
    #   An HTTP Live Streaming (HLS) packaging configuration.
    #
    #   @return [HlsPackage]
    #
    # @!attribute id
    #   The ID of the OriginEndpoint.
    #
    #   @return [String]
    #
    # @!attribute manifest_name
    #   A short string appended to the end of the OriginEndpoint URL.
    #
    #   @return [String]
    #
    # @!attribute mss_package
    #   A Microsoft Smooth Streaming (MSS) packaging configuration.
    #
    #   @return [MssPackage]
    #
    # @!attribute origination
    #   Control whether origination of video is allowed for this OriginEndpoint. If set to ALLOW, the OriginEndpoint
    #   may by requested, pursuant to any other form of access control. If set to DENY, the OriginEndpoint may not be
    #   requested. This can be helpful for Live to VOD harvesting, or for temporarily disabling origination
    #
    #   Enum, one of: ["ALLOW", "DENY"]
    #
    #   @return [String]
    #
    # @!attribute startover_window_seconds
    #   Maximum duration (seconds) of content to retain for startover playback.
    #   If not specified, startover playback will be disabled for the OriginEndpoint.
    #
    #   @return [Integer]
    #
    # @!attribute tags
    #   A collection of tags associated with a resource
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute time_delay_seconds
    #   Amount of delay (seconds) to enforce on the playback of live content.
    #   If not specified, there will be no time delay in effect for the OriginEndpoint.
    #
    #   @return [Integer]
    #
    # @!attribute url
    #   The URL of the packaged OriginEndpoint for consumption.
    #
    #   @return [String]
    #
    # @!attribute whitelist
    #   A list of source IP CIDR blocks that will be allowed to access the OriginEndpoint.
    #
    #   @return [Array<String>]
    #
    DescribeOriginEndpointOutput = ::Struct.new(
      :arn,
      :authorization,
      :channel_id,
      :cmaf_package,
      :dash_package,
      :description,
      :hls_package,
      :id,
      :manifest_name,
      :mss_package,
      :origination,
      :startover_window_seconds,
      :tags,
      :time_delay_seconds,
      :url,
      :whitelist,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.startover_window_seconds ||= 0
        self.time_delay_seconds ||= 0
      end
    end

    # Configure egress access logging.
    #
    # @!attribute log_group_name
    #   Customize the log group name.
    #
    #   @return [String]
    #
    EgressAccessLogs = ::Struct.new(
      :log_group_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Use encryptionContractConfiguration to configure one or more content encryption keys for your endpoints that use SPEKE 2.0.
    # The encryption contract defines which content keys are used to encrypt the audio and video tracks in your stream.
    # To configure the encryption contract, specify which audio and video encryption presets to use.
    # Note the following considerations when using encryptionContractConfiguration:
    # encryptionContractConfiguration can be used for DASH or CMAF endpoints that use SPEKE 2.0. SPEKE 2.0 relies on the CPIX 2.3 specification.
    # You must disable key rotation for this endpoint by setting keyRotationIntervalSeconds to 0.
    #
    # @!attribute preset_speke20_audio
    #   A collection of audio encryption presets.
    #
    #   Enum, one of: ["PRESET-AUDIO-1"]
    #
    #   @return [String]
    #
    # @!attribute preset_speke20_video
    #   A collection of video encryption presets.
    #
    #   Enum, one of: ["PRESET-VIDEO-1"]
    #
    #   @return [String]
    #
    EncryptionContractConfiguration = ::Struct.new(
      :preset_speke20_audio,
      :preset_speke20_video,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EncryptionMethod
    #
    module EncryptionMethod
      # No documentation available.
      #
      AES_128 = "AES_128"

      # No documentation available.
      #
      SAMPLE_AES = "SAMPLE_AES"
    end

    # The client is not authorized to access the requested resource.
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ForbiddenException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # A HarvestJob resource configuration
    #
    # @!attribute arn
    #   The Amazon Resource Name (ARN) assigned to the HarvestJob.
    #
    #   @return [String]
    #
    # @!attribute channel_id
    #   The ID of the Channel that the HarvestJob will harvest from.
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   The time the HarvestJob was submitted
    #
    #   @return [String]
    #
    # @!attribute end_time
    #   The end of the time-window which will be harvested.
    #
    #   @return [String]
    #
    # @!attribute id
    #   The ID of the HarvestJob. The ID must be unique within the region
    #   and it cannot be changed after the HarvestJob is submitted.
    #
    #   @return [String]
    #
    # @!attribute origin_endpoint_id
    #   The ID of the OriginEndpoint that the HarvestJob will harvest from.
    #   This cannot be changed after the HarvestJob is submitted.
    #
    #   @return [String]
    #
    # @!attribute s3_destination
    #   Configuration parameters for where in an S3 bucket to place the harvested content
    #
    #   @return [S3Destination]
    #
    # @!attribute start_time
    #   The start of the time-window which will be harvested.
    #
    #   @return [String]
    #
    # @!attribute status
    #   The current status of the HarvestJob. Consider setting up a CloudWatch Event to listen for
    #   HarvestJobs as they succeed or fail. In the event of failure, the CloudWatch Event will
    #   include an explanation of why the HarvestJob failed.
    #
    #   Enum, one of: ["IN_PROGRESS", "SUCCEEDED", "FAILED"]
    #
    #   @return [String]
    #
    HarvestJob = ::Struct.new(
      :arn,
      :channel_id,
      :created_at,
      :end_time,
      :id,
      :origin_endpoint_id,
      :s3_destination,
      :start_time,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # An HTTP Live Streaming (HLS) encryption configuration.
    #
    # @!attribute constant_initialization_vector
    #   A constant initialization vector for encryption (optional).
    #   When not specified the initialization vector will be periodically rotated.
    #
    #   @return [String]
    #
    # @!attribute encryption_method
    #   The encryption method to use.
    #
    #   Enum, one of: ["AES_128", "SAMPLE_AES"]
    #
    #   @return [String]
    #
    # @!attribute key_rotation_interval_seconds
    #   Interval (in seconds) between each encryption key rotation.
    #
    #   @return [Integer]
    #
    # @!attribute repeat_ext_x_key
    #   When enabled, the EXT-X-KEY tag will be repeated in output manifests.
    #
    #   @return [Boolean]
    #
    # @!attribute speke_key_provider
    #   A configuration for accessing an external Secure Packager and Encoder Key Exchange (SPEKE) service that will provide encryption keys.
    #
    #   @return [SpekeKeyProvider]
    #
    HlsEncryption = ::Struct.new(
      :constant_initialization_vector,
      :encryption_method,
      :key_rotation_interval_seconds,
      :repeat_ext_x_key,
      :speke_key_provider,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.key_rotation_interval_seconds ||= 0
        self.repeat_ext_x_key ||= false
      end
    end

    # An HTTP Live Streaming (HLS) ingest resource configuration.
    #
    # @!attribute ingest_endpoints
    #   A list of endpoints to which the source stream should be sent.
    #
    #   @return [Array<IngestEndpoint>]
    #
    HlsIngest = ::Struct.new(
      :ingest_endpoints,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # A HTTP Live Streaming (HLS) manifest configuration.
    #
    # @!attribute ad_markers
    #   This setting controls how ad markers are included in the packaged OriginEndpoint.
    #   "NONE" will omit all SCTE-35 ad markers from the output.
    #   "PASSTHROUGH" causes the manifest to contain a copy of the SCTE-35 ad
    #   markers (comments) taken directly from the input HTTP Live Streaming (HLS) manifest.
    #   "SCTE35_ENHANCED" generates ad markers and blackout tags based on SCTE-35
    #   messages in the input source.
    #   "DATERANGE" inserts EXT-X-DATERANGE tags to signal ad and program transition events
    #   in HLS and CMAF manifests. For this option, you must set a programDateTimeIntervalSeconds value
    #   that is greater than 0.
    #
    #   Enum, one of: ["NONE", "SCTE35_ENHANCED", "PASSTHROUGH", "DATERANGE"]
    #
    #   @return [String]
    #
    # @!attribute id
    #   The ID of the manifest. The ID must be unique within the OriginEndpoint and it cannot be changed after it is created.
    #
    #   @return [String]
    #
    # @!attribute include_iframe_only_stream
    #   When enabled, an I-Frame only stream will be included in the output.
    #
    #   @return [Boolean]
    #
    # @!attribute manifest_name
    #   An optional short string appended to the end of the OriginEndpoint URL. If not specified, defaults to the manifestName for the OriginEndpoint.
    #
    #   @return [String]
    #
    # @!attribute playlist_type
    #   The HTTP Live Streaming (HLS) playlist type.
    #   When either "EVENT" or "VOD" is specified, a corresponding EXT-X-PLAYLIST-TYPE
    #   entry will be included in the media playlist.
    #
    #   Enum, one of: ["NONE", "EVENT", "VOD"]
    #
    #   @return [String]
    #
    # @!attribute playlist_window_seconds
    #   Time window (in seconds) contained in each parent manifest.
    #
    #   @return [Integer]
    #
    # @!attribute program_date_time_interval_seconds
    #   The interval (in seconds) between each EXT-X-PROGRAM-DATE-TIME tag
    #   inserted into manifests. Additionally, when an interval is specified
    #   ID3Timed Metadata messages will be generated every 5 seconds using the
    #   ingest time of the content.
    #   If the interval is not specified, or set to 0, then
    #   no EXT-X-PROGRAM-DATE-TIME tags will be inserted into manifests and no
    #   ID3Timed Metadata messages will be generated. Note that irrespective
    #   of this parameter, if any ID3 Timed Metadata is found in HTTP Live Streaming (HLS) input,
    #   it will be passed through to HLS output.
    #
    #   @return [Integer]
    #
    # @!attribute url
    #   The URL of the packaged OriginEndpoint for consumption.
    #
    #   @return [String]
    #
    HlsManifest = ::Struct.new(
      :ad_markers,
      :id,
      :include_iframe_only_stream,
      :manifest_name,
      :playlist_type,
      :playlist_window_seconds,
      :program_date_time_interval_seconds,
      :url,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.include_iframe_only_stream ||= false
        self.playlist_window_seconds ||= 0
        self.program_date_time_interval_seconds ||= 0
      end
    end

    # A HTTP Live Streaming (HLS) manifest configuration.
    #
    # @!attribute ad_markers
    #   This setting controls how ad markers are included in the packaged OriginEndpoint.
    #   "NONE" will omit all SCTE-35 ad markers from the output.
    #   "PASSTHROUGH" causes the manifest to contain a copy of the SCTE-35 ad
    #   markers (comments) taken directly from the input HTTP Live Streaming (HLS) manifest.
    #   "SCTE35_ENHANCED" generates ad markers and blackout tags based on SCTE-35
    #   messages in the input source.
    #   "DATERANGE" inserts EXT-X-DATERANGE tags to signal ad and program transition events
    #   in HLS and CMAF manifests. For this option, you must set a programDateTimeIntervalSeconds value
    #   that is greater than 0.
    #
    #   Enum, one of: ["NONE", "SCTE35_ENHANCED", "PASSTHROUGH", "DATERANGE"]
    #
    #   @return [String]
    #
    # @!attribute ad_triggers
    #   A list of SCTE-35 message types that are treated as ad markers in the output.  If empty, no
    #   ad markers are output.  Specify multiple items to create ad markers for all of the included
    #   message types.
    #
    #   @return [Array<String>]
    #
    # @!attribute ads_on_delivery_restrictions
    #   This setting allows the delivery restriction flags on SCTE-35 segmentation descriptors to
    #   determine whether a message signals an ad.  Choosing "NONE" means no SCTE-35 messages become
    #   ads.  Choosing "RESTRICTED" means SCTE-35 messages of the types specified in AdTriggers that
    #   contain delivery restrictions will be treated as ads.  Choosing "UNRESTRICTED" means SCTE-35
    #   messages of the types specified in AdTriggers that do not contain delivery restrictions will
    #   be treated as ads.  Choosing "BOTH" means all SCTE-35 messages of the types specified in
    #   AdTriggers will be treated as ads.  Note that Splice Insert messages do not have these flags
    #   and are always treated as ads if specified in AdTriggers.
    #
    #   Enum, one of: ["NONE", "RESTRICTED", "UNRESTRICTED", "BOTH"]
    #
    #   @return [String]
    #
    # @!attribute id
    #   The ID of the manifest. The ID must be unique within the OriginEndpoint and it cannot be changed after it is created.
    #
    #   @return [String]
    #
    # @!attribute include_iframe_only_stream
    #   When enabled, an I-Frame only stream will be included in the output.
    #
    #   @return [Boolean]
    #
    # @!attribute manifest_name
    #   An optional short string appended to the end of the OriginEndpoint URL. If not specified, defaults to the manifestName for the OriginEndpoint.
    #
    #   @return [String]
    #
    # @!attribute playlist_type
    #   The HTTP Live Streaming (HLS) playlist type.
    #   When either "EVENT" or "VOD" is specified, a corresponding EXT-X-PLAYLIST-TYPE
    #   entry will be included in the media playlist.
    #
    #   Enum, one of: ["NONE", "EVENT", "VOD"]
    #
    #   @return [String]
    #
    # @!attribute playlist_window_seconds
    #   Time window (in seconds) contained in each parent manifest.
    #
    #   @return [Integer]
    #
    # @!attribute program_date_time_interval_seconds
    #   The interval (in seconds) between each EXT-X-PROGRAM-DATE-TIME tag
    #   inserted into manifests. Additionally, when an interval is specified
    #   ID3Timed Metadata messages will be generated every 5 seconds using the
    #   ingest time of the content.
    #   If the interval is not specified, or set to 0, then
    #   no EXT-X-PROGRAM-DATE-TIME tags will be inserted into manifests and no
    #   ID3Timed Metadata messages will be generated. Note that irrespective
    #   of this parameter, if any ID3 Timed Metadata is found in HTTP Live Streaming (HLS) input,
    #   it will be passed through to HLS output.
    #
    #   @return [Integer]
    #
    HlsManifestCreateOrUpdateParameters = ::Struct.new(
      :ad_markers,
      :ad_triggers,
      :ads_on_delivery_restrictions,
      :id,
      :include_iframe_only_stream,
      :manifest_name,
      :playlist_type,
      :playlist_window_seconds,
      :program_date_time_interval_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.include_iframe_only_stream ||= false
        self.playlist_window_seconds ||= 0
        self.program_date_time_interval_seconds ||= 0
      end
    end

    # An HTTP Live Streaming (HLS) packaging configuration.
    #
    # @!attribute ad_markers
    #   This setting controls how ad markers are included in the packaged OriginEndpoint.
    #   "NONE" will omit all SCTE-35 ad markers from the output.
    #   "PASSTHROUGH" causes the manifest to contain a copy of the SCTE-35 ad
    #   markers (comments) taken directly from the input HTTP Live Streaming (HLS) manifest.
    #   "SCTE35_ENHANCED" generates ad markers and blackout tags based on SCTE-35
    #   messages in the input source.
    #   "DATERANGE" inserts EXT-X-DATERANGE tags to signal ad and program transition events
    #   in HLS and CMAF manifests. For this option, you must set a programDateTimeIntervalSeconds value
    #   that is greater than 0.
    #
    #   Enum, one of: ["NONE", "SCTE35_ENHANCED", "PASSTHROUGH", "DATERANGE"]
    #
    #   @return [String]
    #
    # @!attribute ad_triggers
    #   A list of SCTE-35 message types that are treated as ad markers in the output.  If empty, no
    #   ad markers are output.  Specify multiple items to create ad markers for all of the included
    #   message types.
    #
    #   @return [Array<String>]
    #
    # @!attribute ads_on_delivery_restrictions
    #   This setting allows the delivery restriction flags on SCTE-35 segmentation descriptors to
    #   determine whether a message signals an ad.  Choosing "NONE" means no SCTE-35 messages become
    #   ads.  Choosing "RESTRICTED" means SCTE-35 messages of the types specified in AdTriggers that
    #   contain delivery restrictions will be treated as ads.  Choosing "UNRESTRICTED" means SCTE-35
    #   messages of the types specified in AdTriggers that do not contain delivery restrictions will
    #   be treated as ads.  Choosing "BOTH" means all SCTE-35 messages of the types specified in
    #   AdTriggers will be treated as ads.  Note that Splice Insert messages do not have these flags
    #   and are always treated as ads if specified in AdTriggers.
    #
    #   Enum, one of: ["NONE", "RESTRICTED", "UNRESTRICTED", "BOTH"]
    #
    #   @return [String]
    #
    # @!attribute encryption
    #   An HTTP Live Streaming (HLS) encryption configuration.
    #
    #   @return [HlsEncryption]
    #
    # @!attribute include_dvb_subtitles
    #   When enabled, MediaPackage passes through digital video broadcasting (DVB) subtitles into the output.
    #
    #   @return [Boolean]
    #
    # @!attribute include_iframe_only_stream
    #   When enabled, an I-Frame only stream will be included in the output.
    #
    #   @return [Boolean]
    #
    # @!attribute playlist_type
    #   The HTTP Live Streaming (HLS) playlist type.
    #   When either "EVENT" or "VOD" is specified, a corresponding EXT-X-PLAYLIST-TYPE
    #   entry will be included in the media playlist.
    #
    #   Enum, one of: ["NONE", "EVENT", "VOD"]
    #
    #   @return [String]
    #
    # @!attribute playlist_window_seconds
    #   Time window (in seconds) contained in each parent manifest.
    #
    #   @return [Integer]
    #
    # @!attribute program_date_time_interval_seconds
    #   The interval (in seconds) between each EXT-X-PROGRAM-DATE-TIME tag
    #   inserted into manifests. Additionally, when an interval is specified
    #   ID3Timed Metadata messages will be generated every 5 seconds using the
    #   ingest time of the content.
    #   If the interval is not specified, or set to 0, then
    #   no EXT-X-PROGRAM-DATE-TIME tags will be inserted into manifests and no
    #   ID3Timed Metadata messages will be generated. Note that irrespective
    #   of this parameter, if any ID3 Timed Metadata is found in HTTP Live Streaming (HLS) input,
    #   it will be passed through to HLS output.
    #
    #   @return [Integer]
    #
    # @!attribute segment_duration_seconds
    #   Duration (in seconds) of each fragment. Actual fragments will be
    #   rounded to the nearest multiple of the source fragment duration.
    #
    #   @return [Integer]
    #
    # @!attribute stream_selection
    #   A StreamSelection configuration.
    #
    #   @return [StreamSelection]
    #
    # @!attribute use_audio_rendition_group
    #   When enabled, audio streams will be placed in rendition groups in the output.
    #
    #   @return [Boolean]
    #
    HlsPackage = ::Struct.new(
      :ad_markers,
      :ad_triggers,
      :ads_on_delivery_restrictions,
      :encryption,
      :include_dvb_subtitles,
      :include_iframe_only_stream,
      :playlist_type,
      :playlist_window_seconds,
      :program_date_time_interval_seconds,
      :segment_duration_seconds,
      :stream_selection,
      :use_audio_rendition_group,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.include_dvb_subtitles ||= false
        self.include_iframe_only_stream ||= false
        self.playlist_window_seconds ||= 0
        self.program_date_time_interval_seconds ||= 0
        self.segment_duration_seconds ||= 0
        self.use_audio_rendition_group ||= false
      end
    end

    # An endpoint for ingesting source content for a Channel.
    #
    # @!attribute id
    #   The system generated unique identifier for the IngestEndpoint
    #
    #   @return [String]
    #
    # @!attribute password
    #   The system generated password for ingest authentication.
    #
    #   @return [String]
    #
    # @!attribute url
    #   The ingest URL to which the source stream should be sent.
    #
    #   @return [String]
    #
    # @!attribute username
    #   The system generated username for ingest authentication.
    #
    #   @return [String]
    #
    IngestEndpoint = ::Struct.new(
      :id,
      :password,
      :url,
      :username,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Configure ingress access logging.
    #
    # @!attribute log_group_name
    #   Customize the log group name.
    #
    #   @return [String]
    #
    IngressAccessLogs = ::Struct.new(
      :log_group_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # An unexpected error occurred.
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InternalServerErrorException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   Upper bound on number of records to return.
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   A token used to resume pagination from the end of a previous request.
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

    # @!attribute channels
    #   A list of Channel records.
    #
    #   @return [Array<Channel>]
    #
    # @!attribute next_token
    #   A token that can be used to resume pagination from the end of the collection.
    #
    #   @return [String]
    #
    ListChannelsOutput = ::Struct.new(
      :channels,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute include_channel_id
    #   When specified, the request will return only HarvestJobs associated with the given Channel ID.
    #
    #   @return [String]
    #
    # @!attribute include_status
    #   When specified, the request will return only HarvestJobs in the given status.
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   The upper bound on the number of records to return.
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   A token used to resume pagination from the end of a previous request.
    #
    #   @return [String]
    #
    ListHarvestJobsInput = ::Struct.new(
      :include_channel_id,
      :include_status,
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

    # @!attribute harvest_jobs
    #   A list of HarvestJob records.
    #
    #   @return [Array<HarvestJob>]
    #
    # @!attribute next_token
    #   A token that can be used to resume pagination from the end of the collection.
    #
    #   @return [String]
    #
    ListHarvestJobsOutput = ::Struct.new(
      :harvest_jobs,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channel_id
    #   When specified, the request will return only OriginEndpoints associated with the given Channel ID.
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   The upper bound on the number of records to return.
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   A token used to resume pagination from the end of a previous request.
    #
    #   @return [String]
    #
    ListOriginEndpointsInput = ::Struct.new(
      :channel_id,
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

    # @!attribute next_token
    #   A token that can be used to resume pagination from the end of the collection.
    #
    #   @return [String]
    #
    # @!attribute origin_endpoints
    #   A list of OriginEndpoint records.
    #
    #   @return [Array<OriginEndpoint>]
    #
    ListOriginEndpointsOutput = ::Struct.new(
      :next_token,
      :origin_endpoints,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
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
    #
    #   @return [Hash<String, String>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ManifestLayout
    #
    module ManifestLayout
      # No documentation available.
      #
      FULL = "FULL"

      # No documentation available.
      #
      COMPACT = "COMPACT"
    end

    # A Microsoft Smooth Streaming (MSS) encryption configuration.
    #
    # @!attribute speke_key_provider
    #   A configuration for accessing an external Secure Packager and Encoder Key Exchange (SPEKE) service that will provide encryption keys.
    #
    #   @return [SpekeKeyProvider]
    #
    MssEncryption = ::Struct.new(
      :speke_key_provider,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # A Microsoft Smooth Streaming (MSS) packaging configuration.
    #
    # @!attribute encryption
    #   A Microsoft Smooth Streaming (MSS) encryption configuration.
    #
    #   @return [MssEncryption]
    #
    # @!attribute manifest_window_seconds
    #   The time window (in seconds) contained in each manifest.
    #
    #   @return [Integer]
    #
    # @!attribute segment_duration_seconds
    #   The duration (in seconds) of each segment.
    #
    #   @return [Integer]
    #
    # @!attribute stream_selection
    #   A StreamSelection configuration.
    #
    #   @return [StreamSelection]
    #
    MssPackage = ::Struct.new(
      :encryption,
      :manifest_window_seconds,
      :segment_duration_seconds,
      :stream_selection,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.manifest_window_seconds ||= 0
        self.segment_duration_seconds ||= 0
      end
    end

    # The requested resource does not exist.
    #
    # @!attribute message
    #
    #   @return [String]
    #
    NotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # An OriginEndpoint resource configuration.
    #
    # @!attribute arn
    #   The Amazon Resource Name (ARN) assigned to the OriginEndpoint.
    #
    #   @return [String]
    #
    # @!attribute authorization
    #   CDN Authorization credentials
    #
    #   @return [Authorization]
    #
    # @!attribute channel_id
    #   The ID of the Channel the OriginEndpoint is associated with.
    #
    #   @return [String]
    #
    # @!attribute cmaf_package
    #   A Common Media Application Format (CMAF) packaging configuration.
    #
    #   @return [CmafPackage]
    #
    # @!attribute dash_package
    #   A Dynamic Adaptive Streaming over HTTP (DASH) packaging configuration.
    #
    #   @return [DashPackage]
    #
    # @!attribute description
    #   A short text description of the OriginEndpoint.
    #
    #   @return [String]
    #
    # @!attribute hls_package
    #   An HTTP Live Streaming (HLS) packaging configuration.
    #
    #   @return [HlsPackage]
    #
    # @!attribute id
    #   The ID of the OriginEndpoint.
    #
    #   @return [String]
    #
    # @!attribute manifest_name
    #   A short string appended to the end of the OriginEndpoint URL.
    #
    #   @return [String]
    #
    # @!attribute mss_package
    #   A Microsoft Smooth Streaming (MSS) packaging configuration.
    #
    #   @return [MssPackage]
    #
    # @!attribute origination
    #   Control whether origination of video is allowed for this OriginEndpoint. If set to ALLOW, the OriginEndpoint
    #   may by requested, pursuant to any other form of access control. If set to DENY, the OriginEndpoint may not be
    #   requested. This can be helpful for Live to VOD harvesting, or for temporarily disabling origination
    #
    #   Enum, one of: ["ALLOW", "DENY"]
    #
    #   @return [String]
    #
    # @!attribute startover_window_seconds
    #   Maximum duration (seconds) of content to retain for startover playback.
    #   If not specified, startover playback will be disabled for the OriginEndpoint.
    #
    #   @return [Integer]
    #
    # @!attribute tags
    #   A collection of tags associated with a resource
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute time_delay_seconds
    #   Amount of delay (seconds) to enforce on the playback of live content.
    #   If not specified, there will be no time delay in effect for the OriginEndpoint.
    #
    #   @return [Integer]
    #
    # @!attribute url
    #   The URL of the packaged OriginEndpoint for consumption.
    #
    #   @return [String]
    #
    # @!attribute whitelist
    #   A list of source IP CIDR blocks that will be allowed to access the OriginEndpoint.
    #
    #   @return [Array<String>]
    #
    OriginEndpoint = ::Struct.new(
      :arn,
      :authorization,
      :channel_id,
      :cmaf_package,
      :dash_package,
      :description,
      :hls_package,
      :id,
      :manifest_name,
      :mss_package,
      :origination,
      :startover_window_seconds,
      :tags,
      :time_delay_seconds,
      :url,
      :whitelist,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.startover_window_seconds ||= 0
        self.time_delay_seconds ||= 0
      end
    end

    # Includes enum constants for Origination
    #
    module Origination
      # No documentation available.
      #
      ALLOW = "ALLOW"

      # No documentation available.
      #
      DENY = "DENY"
    end

    # Includes enum constants for PlaylistType
    #
    module PlaylistType
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      EVENT = "EVENT"

      # No documentation available.
      #
      VOD = "VOD"
    end

    # Includes enum constants for PresetSpeke20Audio
    #
    module PresetSpeke20Audio
      # No documentation available.
      #
      PRESET_AUDIO_1 = "PRESET-AUDIO-1"
    end

    # Includes enum constants for PresetSpeke20Video
    #
    module PresetSpeke20Video
      # No documentation available.
      #
      PRESET_VIDEO_1 = "PRESET-VIDEO-1"
    end

    # Includes enum constants for Profile
    #
    module Profile
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      HBBTV_1_5 = "HBBTV_1_5"

      # No documentation available.
      #
      HYBRIDCAST = "HYBRIDCAST"

      # No documentation available.
      #
      DVB_DASH_2014 = "DVB_DASH_2014"
    end

    # @deprecated
    #
    # @!attribute id
    #   The ID of the channel to update.
    #
    #   @return [String]
    #
    RotateChannelCredentialsInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @deprecated
    #
    # @!attribute arn
    #   The Amazon Resource Name (ARN) assigned to the Channel.
    #
    #   @return [String]
    #
    # @!attribute description
    #   A short text description of the Channel.
    #
    #   @return [String]
    #
    # @!attribute egress_access_logs
    #   Configure egress access logging.
    #
    #   @return [EgressAccessLogs]
    #
    # @!attribute hls_ingest
    #   An HTTP Live Streaming (HLS) ingest resource configuration.
    #
    #   @return [HlsIngest]
    #
    # @!attribute id
    #   The ID of the Channel.
    #
    #   @return [String]
    #
    # @!attribute ingress_access_logs
    #   Configure ingress access logging.
    #
    #   @return [IngressAccessLogs]
    #
    # @!attribute tags
    #   A collection of tags associated with a resource
    #
    #   @return [Hash<String, String>]
    #
    RotateChannelCredentialsOutput = ::Struct.new(
      :arn,
      :description,
      :egress_access_logs,
      :hls_ingest,
      :id,
      :ingress_access_logs,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   The ID of the channel the IngestEndpoint is on.
    #
    #   @return [String]
    #
    # @!attribute ingest_endpoint_id
    #   The id of the IngestEndpoint whose credentials should be rotated
    #
    #   @return [String]
    #
    RotateIngestEndpointCredentialsInput = ::Struct.new(
      :id,
      :ingest_endpoint_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   The Amazon Resource Name (ARN) assigned to the Channel.
    #
    #   @return [String]
    #
    # @!attribute description
    #   A short text description of the Channel.
    #
    #   @return [String]
    #
    # @!attribute egress_access_logs
    #   Configure egress access logging.
    #
    #   @return [EgressAccessLogs]
    #
    # @!attribute hls_ingest
    #   An HTTP Live Streaming (HLS) ingest resource configuration.
    #
    #   @return [HlsIngest]
    #
    # @!attribute id
    #   The ID of the Channel.
    #
    #   @return [String]
    #
    # @!attribute ingress_access_logs
    #   Configure ingress access logging.
    #
    #   @return [IngressAccessLogs]
    #
    # @!attribute tags
    #   A collection of tags associated with a resource
    #
    #   @return [Hash<String, String>]
    #
    RotateIngestEndpointCredentialsOutput = ::Struct.new(
      :arn,
      :description,
      :egress_access_logs,
      :hls_ingest,
      :id,
      :ingress_access_logs,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Configuration parameters for where in an S3 bucket to place the harvested content
    #
    # @!attribute bucket_name
    #   The name of an S3 bucket within which harvested content will be exported
    #
    #   @return [String]
    #
    # @!attribute manifest_key
    #   The key in the specified S3 bucket where the harvested top-level manifest will be placed.
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   The IAM role used to write to the specified S3 bucket
    #
    #   @return [String]
    #
    S3Destination = ::Struct.new(
      :bucket_name,
      :manifest_key,
      :role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SegmentTemplateFormat
    #
    module SegmentTemplateFormat
      # No documentation available.
      #
      NUMBER_WITH_TIMELINE = "NUMBER_WITH_TIMELINE"

      # No documentation available.
      #
      TIME_WITH_TIMELINE = "TIME_WITH_TIMELINE"

      # No documentation available.
      #
      NUMBER_WITH_DURATION = "NUMBER_WITH_DURATION"
    end

    # An unexpected error occurred.
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ServiceUnavailableException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # A configuration for accessing an external Secure Packager and Encoder Key Exchange (SPEKE) service that will provide encryption keys.
    #
    # @!attribute certificate_arn
    #   An Amazon Resource Name (ARN) of a Certificate Manager certificate
    #   that MediaPackage will use for enforcing secure end-to-end data
    #   transfer with the key provider service.
    #
    #   @return [String]
    #
    # @!attribute encryption_contract_configuration
    #   Use encryptionContractConfiguration to configure one or more content encryption keys for your endpoints that use SPEKE 2.0.
    #   The encryption contract defines which content keys are used to encrypt the audio and video tracks in your stream.
    #   To configure the encryption contract, specify which audio and video encryption presets to use.
    #   Note the following considerations when using encryptionContractConfiguration:
    #   encryptionContractConfiguration can be used for DASH or CMAF endpoints that use SPEKE 2.0. SPEKE 2.0 relies on the CPIX 2.3 specification.
    #   You must disable key rotation for this endpoint by setting keyRotationIntervalSeconds to 0.
    #
    #   @return [EncryptionContractConfiguration]
    #
    # @!attribute resource_id
    #   The resource ID to include in key requests.
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   An Amazon Resource Name (ARN) of an IAM role that AWS Elemental
    #   MediaPackage will assume when accessing the key provider service.
    #
    #   @return [String]
    #
    # @!attribute system_ids
    #   The system IDs to include in key requests.
    #
    #   @return [Array<String>]
    #
    # @!attribute url
    #   The URL of the external key provider service.
    #
    #   @return [String]
    #
    SpekeKeyProvider = ::Struct.new(
      :certificate_arn,
      :encryption_contract_configuration,
      :resource_id,
      :role_arn,
      :system_ids,
      :url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Status
    #
    module Status
      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"

      # No documentation available.
      #
      SUCCEEDED = "SUCCEEDED"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # Includes enum constants for StreamOrder
    #
    module StreamOrder
      # No documentation available.
      #
      ORIGINAL = "ORIGINAL"

      # No documentation available.
      #
      VIDEO_BITRATE_ASCENDING = "VIDEO_BITRATE_ASCENDING"

      # No documentation available.
      #
      VIDEO_BITRATE_DESCENDING = "VIDEO_BITRATE_DESCENDING"
    end

    # A StreamSelection configuration.
    #
    # @!attribute max_video_bits_per_second
    #   The maximum video bitrate (bps) to include in output.
    #
    #   @return [Integer]
    #
    # @!attribute min_video_bits_per_second
    #   The minimum video bitrate (bps) to include in output.
    #
    #   @return [Integer]
    #
    # @!attribute stream_order
    #   A directive that determines the order of streams in the output.
    #
    #   Enum, one of: ["ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"]
    #
    #   @return [String]
    #
    StreamSelection = ::Struct.new(
      :max_video_bits_per_second,
      :min_video_bits_per_second,
      :stream_order,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_video_bits_per_second ||= 0
        self.min_video_bits_per_second ||= 0
      end
    end

    # @!attribute resource_arn
    #
    #   @return [String]
    #
    # @!attribute tags
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

    # The client has exceeded their resource or throttling limits.
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyRequestsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # The parameters sent in the request are not valid.
    #
    # @!attribute message
    #
    #   @return [String]
    #
    UnprocessableEntityException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   The key(s) of tag to be deleted
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

    # Configuration parameters used to update the Channel.
    #
    # @!attribute description
    #   A short text description of the Channel.
    #
    #   @return [String]
    #
    # @!attribute id
    #   The ID of the Channel to update.
    #
    #   @return [String]
    #
    UpdateChannelInput = ::Struct.new(
      :description,
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   The Amazon Resource Name (ARN) assigned to the Channel.
    #
    #   @return [String]
    #
    # @!attribute description
    #   A short text description of the Channel.
    #
    #   @return [String]
    #
    # @!attribute egress_access_logs
    #   Configure egress access logging.
    #
    #   @return [EgressAccessLogs]
    #
    # @!attribute hls_ingest
    #   An HTTP Live Streaming (HLS) ingest resource configuration.
    #
    #   @return [HlsIngest]
    #
    # @!attribute id
    #   The ID of the Channel.
    #
    #   @return [String]
    #
    # @!attribute ingress_access_logs
    #   Configure ingress access logging.
    #
    #   @return [IngressAccessLogs]
    #
    # @!attribute tags
    #   A collection of tags associated with a resource
    #
    #   @return [Hash<String, String>]
    #
    UpdateChannelOutput = ::Struct.new(
      :arn,
      :description,
      :egress_access_logs,
      :hls_ingest,
      :id,
      :ingress_access_logs,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Configuration parameters used to update an existing OriginEndpoint.
    #
    # @!attribute authorization
    #   CDN Authorization credentials
    #
    #   @return [Authorization]
    #
    # @!attribute cmaf_package
    #   A Common Media Application Format (CMAF) packaging configuration.
    #
    #   @return [CmafPackageCreateOrUpdateParameters]
    #
    # @!attribute dash_package
    #   A Dynamic Adaptive Streaming over HTTP (DASH) packaging configuration.
    #
    #   @return [DashPackage]
    #
    # @!attribute description
    #   A short text description of the OriginEndpoint.
    #
    #   @return [String]
    #
    # @!attribute hls_package
    #   An HTTP Live Streaming (HLS) packaging configuration.
    #
    #   @return [HlsPackage]
    #
    # @!attribute id
    #   The ID of the OriginEndpoint to update.
    #
    #   @return [String]
    #
    # @!attribute manifest_name
    #   A short string that will be appended to the end of the Endpoint URL.
    #
    #   @return [String]
    #
    # @!attribute mss_package
    #   A Microsoft Smooth Streaming (MSS) packaging configuration.
    #
    #   @return [MssPackage]
    #
    # @!attribute origination
    #   Control whether origination of video is allowed for this OriginEndpoint. If set to ALLOW, the OriginEndpoint
    #   may by requested, pursuant to any other form of access control. If set to DENY, the OriginEndpoint may not be
    #   requested. This can be helpful for Live to VOD harvesting, or for temporarily disabling origination
    #
    #   Enum, one of: ["ALLOW", "DENY"]
    #
    #   @return [String]
    #
    # @!attribute startover_window_seconds
    #   Maximum duration (in seconds) of content to retain for startover playback.
    #   If not specified, startover playback will be disabled for the OriginEndpoint.
    #
    #   @return [Integer]
    #
    # @!attribute time_delay_seconds
    #   Amount of delay (in seconds) to enforce on the playback of live content.
    #   If not specified, there will be no time delay in effect for the OriginEndpoint.
    #
    #   @return [Integer]
    #
    # @!attribute whitelist
    #   A list of source IP CIDR blocks that will be allowed to access the OriginEndpoint.
    #
    #   @return [Array<String>]
    #
    UpdateOriginEndpointInput = ::Struct.new(
      :authorization,
      :cmaf_package,
      :dash_package,
      :description,
      :hls_package,
      :id,
      :manifest_name,
      :mss_package,
      :origination,
      :startover_window_seconds,
      :time_delay_seconds,
      :whitelist,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.startover_window_seconds ||= 0
        self.time_delay_seconds ||= 0
      end
    end

    # @!attribute arn
    #   The Amazon Resource Name (ARN) assigned to the OriginEndpoint.
    #
    #   @return [String]
    #
    # @!attribute authorization
    #   CDN Authorization credentials
    #
    #   @return [Authorization]
    #
    # @!attribute channel_id
    #   The ID of the Channel the OriginEndpoint is associated with.
    #
    #   @return [String]
    #
    # @!attribute cmaf_package
    #   A Common Media Application Format (CMAF) packaging configuration.
    #
    #   @return [CmafPackage]
    #
    # @!attribute dash_package
    #   A Dynamic Adaptive Streaming over HTTP (DASH) packaging configuration.
    #
    #   @return [DashPackage]
    #
    # @!attribute description
    #   A short text description of the OriginEndpoint.
    #
    #   @return [String]
    #
    # @!attribute hls_package
    #   An HTTP Live Streaming (HLS) packaging configuration.
    #
    #   @return [HlsPackage]
    #
    # @!attribute id
    #   The ID of the OriginEndpoint.
    #
    #   @return [String]
    #
    # @!attribute manifest_name
    #   A short string appended to the end of the OriginEndpoint URL.
    #
    #   @return [String]
    #
    # @!attribute mss_package
    #   A Microsoft Smooth Streaming (MSS) packaging configuration.
    #
    #   @return [MssPackage]
    #
    # @!attribute origination
    #   Control whether origination of video is allowed for this OriginEndpoint. If set to ALLOW, the OriginEndpoint
    #   may by requested, pursuant to any other form of access control. If set to DENY, the OriginEndpoint may not be
    #   requested. This can be helpful for Live to VOD harvesting, or for temporarily disabling origination
    #
    #   Enum, one of: ["ALLOW", "DENY"]
    #
    #   @return [String]
    #
    # @!attribute startover_window_seconds
    #   Maximum duration (seconds) of content to retain for startover playback.
    #   If not specified, startover playback will be disabled for the OriginEndpoint.
    #
    #   @return [Integer]
    #
    # @!attribute tags
    #   A collection of tags associated with a resource
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute time_delay_seconds
    #   Amount of delay (seconds) to enforce on the playback of live content.
    #   If not specified, there will be no time delay in effect for the OriginEndpoint.
    #
    #   @return [Integer]
    #
    # @!attribute url
    #   The URL of the packaged OriginEndpoint for consumption.
    #
    #   @return [String]
    #
    # @!attribute whitelist
    #   A list of source IP CIDR blocks that will be allowed to access the OriginEndpoint.
    #
    #   @return [Array<String>]
    #
    UpdateOriginEndpointOutput = ::Struct.new(
      :arn,
      :authorization,
      :channel_id,
      :cmaf_package,
      :dash_package,
      :description,
      :hls_package,
      :id,
      :manifest_name,
      :mss_package,
      :origination,
      :startover_window_seconds,
      :tags,
      :time_delay_seconds,
      :url,
      :whitelist,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.startover_window_seconds ||= 0
        self.time_delay_seconds ||= 0
      end
    end

    # Includes enum constants for UtcTiming
    #
    module UtcTiming
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      HTTP_HEAD = "HTTP-HEAD"

      # No documentation available.
      #
      HTTP_ISO = "HTTP-ISO"

      # No documentation available.
      #
      HTTP_XSDATE = "HTTP-XSDATE"
    end

    # Includes enum constants for String____AdTriggersElement
    #
    module String____AdTriggersElement
      # No documentation available.
      #
      SPLICE_INSERT = "SPLICE_INSERT"

      # No documentation available.
      #
      BREAK = "BREAK"

      # No documentation available.
      #
      PROVIDER_ADVERTISEMENT = "PROVIDER_ADVERTISEMENT"

      # No documentation available.
      #
      DISTRIBUTOR_ADVERTISEMENT = "DISTRIBUTOR_ADVERTISEMENT"

      # No documentation available.
      #
      PROVIDER_PLACEMENT_OPPORTUNITY = "PROVIDER_PLACEMENT_OPPORTUNITY"

      # No documentation available.
      #
      DISTRIBUTOR_PLACEMENT_OPPORTUNITY = "DISTRIBUTOR_PLACEMENT_OPPORTUNITY"

      # No documentation available.
      #
      PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY = "PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY"

      # No documentation available.
      #
      DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY = "DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY"
    end

    # Includes enum constants for String____PeriodTriggersElement
    #
    module String____PeriodTriggersElement
      # No documentation available.
      #
      ADS = "ADS"
    end

  end
end
