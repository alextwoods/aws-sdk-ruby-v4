# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::MediaConnect
  module Types

    # A request to add media streams to the flow.
    #
    # @!attribute flow_arn
    #   The Amazon Resource Name (ARN) of the flow.
    #
    #   @return [String]
    #
    # @!attribute media_streams
    #   The media streams that you want to add to the flow.
    #
    #   @return [Array<AddMediaStreamRequest>]
    #
    AddFlowMediaStreamsInput = ::Struct.new(
      :flow_arn,
      :media_streams,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute flow_arn
    #   The ARN of the flow that you added media streams to.
    #
    #   @return [String]
    #
    # @!attribute media_streams
    #   The media streams that you added to the flow.
    #
    #   @return [Array<MediaStream>]
    #
    AddFlowMediaStreamsOutput = ::Struct.new(
      :flow_arn,
      :media_streams,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Exception raised by AWS Elemental MediaConnect. See the error message and documentation for the operation for more information on the cause of this exception.
    #
    # @!attribute message
    #   The error message returned by AWS Elemental MediaConnect.
    #
    #   @return [String]
    #
    AddFlowOutputs420Exception = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # A request to add outputs to the specified flow.
    #
    # @!attribute flow_arn
    #   The flow that you want to add outputs to.
    #
    #   @return [String]
    #
    # @!attribute outputs
    #   A list of outputs that you want to add.
    #
    #   @return [Array<AddOutputRequest>]
    #
    AddFlowOutputsInput = ::Struct.new(
      :flow_arn,
      :outputs,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute flow_arn
    #   The ARN of the flow that these outputs were added to.
    #
    #   @return [String]
    #
    # @!attribute outputs
    #   The details of the newly added outputs.
    #
    #   @return [Array<Output>]
    #
    AddFlowOutputsOutput = ::Struct.new(
      :flow_arn,
      :outputs,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # A request to add sources to the flow.
    #
    # @!attribute flow_arn
    #   The flow that you want to mutate.
    #
    #   @return [String]
    #
    # @!attribute sources
    #   A list of sources that you want to add.
    #
    #   @return [Array<SetSourceRequest>]
    #
    AddFlowSourcesInput = ::Struct.new(
      :flow_arn,
      :sources,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute flow_arn
    #   The ARN of the flow that these sources were added to.
    #
    #   @return [String]
    #
    # @!attribute sources
    #   The details of the newly added sources.
    #
    #   @return [Array<Source>]
    #
    AddFlowSourcesOutput = ::Struct.new(
      :flow_arn,
      :sources,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # A request to add VPC interfaces to the flow.
    #
    # @!attribute flow_arn
    #   The flow that you want to mutate.
    #
    #   @return [String]
    #
    # @!attribute vpc_interfaces
    #   A list of VPC interfaces that you want to add.
    #
    #   @return [Array<VpcInterfaceRequest>]
    #
    AddFlowVpcInterfacesInput = ::Struct.new(
      :flow_arn,
      :vpc_interfaces,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute flow_arn
    #   The ARN of the flow that these VPC interfaces were added to.
    #
    #   @return [String]
    #
    # @!attribute vpc_interfaces
    #   The details of the newly added VPC interfaces.
    #
    #   @return [Array<VpcInterface>]
    #
    AddFlowVpcInterfacesOutput = ::Struct.new(
      :flow_arn,
      :vpc_interfaces,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Create maintenance setting for a flow
    #
    # @!attribute maintenance_day
    #   A day of a week when the maintenance will happen. Use Monday/Tuesday/Wednesday/Thursday/Friday/Saturday/Sunday.
    #
    #   Enum, one of: ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
    #
    #   @return [String]
    #
    # @!attribute maintenance_start_hour
    #   UTC time when the maintenance will happen. Use 24-hour HH:MM format. Minutes must be 00. Example: 13:00. The default value is 02:00.
    #
    #   @return [String]
    #
    AddMaintenance = ::Struct.new(
      :maintenance_day,
      :maintenance_start_hour,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # The media stream that you want to add to the flow.
    #
    # @!attribute attributes
    #   The attributes that you want to assign to the new media stream.
    #
    #   @return [MediaStreamAttributesRequest]
    #
    # @!attribute clock_rate
    #   The sample rate (in Hz) for the stream. If the media stream type is video or ancillary data, set this value to 90000. If the media stream type is audio, set this value to either 48000 or 96000.
    #
    #   @return [Integer]
    #
    # @!attribute description
    #   A description that can help you quickly identify what your media stream is used for.
    #
    #   @return [String]
    #
    # @!attribute media_stream_id
    #   A unique identifier for the media stream.
    #
    #   @return [Integer]
    #
    # @!attribute media_stream_name
    #   A name that helps you distinguish one media stream from another.
    #
    #   @return [String]
    #
    # @!attribute media_stream_type
    #   The type of media stream.
    #
    #   Enum, one of: ["video", "audio", "ancillary-data"]
    #
    #   @return [String]
    #
    # @!attribute video_format
    #   The resolution of the video.
    #
    #   @return [String]
    #
    AddMediaStreamRequest = ::Struct.new(
      :attributes,
      :clock_rate,
      :description,
      :media_stream_id,
      :media_stream_name,
      :media_stream_type,
      :video_format,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.clock_rate ||= 0
        self.media_stream_id ||= 0
      end
    end

    # The output that you want to add to this flow.
    #
    # @!attribute cidr_allow_list
    #   The range of IP addresses that should be allowed to initiate output requests to this flow. These IP addresses should be in the form of a Classless Inter-Domain Routing (CIDR) block; for example, 10.0.0.0/16.
    #
    #   @return [Array<String>]
    #
    # @!attribute description
    #   A description of the output. This description appears only on the AWS Elemental MediaConnect console and will not be seen by the end user.
    #
    #   @return [String]
    #
    # @!attribute destination
    #   The IP address from which video will be sent to output destinations.
    #
    #   @return [String]
    #
    # @!attribute encryption
    #   The type of key used for the encryption. If no keyType is provided, the service will use the default setting (static-key).
    #
    #   @return [Encryption]
    #
    # @!attribute max_latency
    #   The maximum latency in milliseconds. This parameter applies only to RIST-based, Zixi-based, and Fujitsu-based streams.
    #
    #   @return [Integer]
    #
    # @!attribute media_stream_output_configurations
    #   The media streams that are associated with the output, and the parameters for those associations.
    #
    #   @return [Array<MediaStreamOutputConfigurationRequest>]
    #
    # @!attribute min_latency
    #   The minimum latency in milliseconds for SRT-based streams. In streams that use the SRT protocol, this value that you set on your MediaConnect source or output represents the minimal potential latency of that connection. The latency of the stream is set to the highest number between the sender’s minimum latency and the receiver’s minimum latency.
    #
    #   @return [Integer]
    #
    # @!attribute name
    #   The name of the output. This value must be unique within the current flow.
    #
    #   @return [String]
    #
    # @!attribute port
    #   The port to use when content is distributed to this output.
    #
    #   @return [Integer]
    #
    # @!attribute protocol
    #   The protocol to use for the output.
    #
    #   Enum, one of: ["zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "fujitsu-qos"]
    #
    #   @return [String]
    #
    # @!attribute remote_id
    #   The remote ID for the Zixi-pull output stream.
    #
    #   @return [String]
    #
    # @!attribute sender_control_port
    #   The port that the flow uses to send outbound requests to initiate connection with the sender.
    #
    #   @return [Integer]
    #
    # @!attribute smoothing_latency
    #   The smoothing latency in milliseconds for RIST, RTP, and RTP-FEC streams.
    #
    #   @return [Integer]
    #
    # @!attribute stream_id
    #   The stream ID that you want to use for this transport. This parameter applies only to Zixi-based streams.
    #
    #   @return [String]
    #
    # @!attribute vpc_interface_attachment
    #   The name of the VPC interface attachment to use for this output.
    #
    #   @return [VpcInterfaceAttachment]
    #
    AddOutputRequest = ::Struct.new(
      :cidr_allow_list,
      :description,
      :destination,
      :encryption,
      :max_latency,
      :media_stream_output_configurations,
      :min_latency,
      :name,
      :port,
      :protocol,
      :remote_id,
      :sender_control_port,
      :smoothing_latency,
      :stream_id,
      :vpc_interface_attachment,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_latency ||= 0
        self.min_latency ||= 0
        self.port ||= 0
        self.sender_control_port ||= 0
        self.smoothing_latency ||= 0
      end
    end

    # Includes enum constants for Algorithm
    #
    module Algorithm
      # No documentation available.
      #
      aes128 = "aes128"

      # No documentation available.
      #
      aes192 = "aes192"

      # No documentation available.
      #
      aes256 = "aes256"
    end

    # Exception raised by AWS Elemental MediaConnect. See the error message and documentation for the operation for more information on the cause of this exception.
    #
    # @!attribute message
    #   The error message returned by AWS Elemental MediaConnect.
    #
    #   @return [String]
    #
    BadRequestException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Colorimetry
    #
    module Colorimetry
      # No documentation available.
      #
      BT601 = "BT601"

      # No documentation available.
      #
      BT709 = "BT709"

      # No documentation available.
      #
      BT2020 = "BT2020"

      # No documentation available.
      #
      BT2100 = "BT2100"

      # No documentation available.
      #
      ST2065_1 = "ST2065-1"

      # No documentation available.
      #
      ST2065_3 = "ST2065-3"

      # No documentation available.
      #
      XYZ = "XYZ"
    end

    # Exception raised by AWS Elemental MediaConnect. See the error message and documentation for the operation for more information on the cause of this exception.
    #
    # @!attribute message
    #   The error message returned by AWS Elemental MediaConnect.
    #
    #   @return [String]
    #
    CreateFlow420Exception = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Creates a new flow. The request must include one source. The request optionally can include outputs (up to 50) and entitlements (up to 50).
    #
    # @!attribute availability_zone
    #   The Availability Zone that you want to create the flow in. These options are limited to the Availability Zones within the current AWS Region.
    #
    #   @return [String]
    #
    # @!attribute entitlements
    #   The entitlements that you want to grant on a flow.
    #
    #   @return [Array<GrantEntitlementRequest>]
    #
    # @!attribute media_streams
    #   The media streams that you want to add to the flow. You can associate these media streams with sources and outputs on the flow.
    #
    #   @return [Array<AddMediaStreamRequest>]
    #
    # @!attribute name
    #   The name of the flow.
    #
    #   @return [String]
    #
    # @!attribute outputs
    #   The outputs that you want to add to this flow.
    #
    #   @return [Array<AddOutputRequest>]
    #
    # @!attribute source
    #   The settings for the source of the flow.
    #
    #   @return [SetSourceRequest]
    #
    # @!attribute source_failover_config
    #   The settings for source failover.
    #
    #   @return [FailoverConfig]
    #
    # @!attribute sources
    #
    #   @return [Array<SetSourceRequest>]
    #
    # @!attribute vpc_interfaces
    #   The VPC interfaces you want on the flow.
    #
    #   @return [Array<VpcInterfaceRequest>]
    #
    # @!attribute maintenance
    #   Create maintenance setting for a flow
    #
    #   @return [AddMaintenance]
    #
    CreateFlowInput = ::Struct.new(
      :availability_zone,
      :entitlements,
      :media_streams,
      :name,
      :outputs,
      :source,
      :source_failover_config,
      :sources,
      :vpc_interfaces,
      :maintenance,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute flow
    #   The settings for a flow, including its source, outputs, and entitlements.
    #
    #   @return [Flow]
    #
    CreateFlowOutput = ::Struct.new(
      :flow,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute flow_arn
    #   The ARN of the flow that you want to delete.
    #
    #   @return [String]
    #
    DeleteFlowInput = ::Struct.new(
      :flow_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute flow_arn
    #   The ARN of the flow that was deleted.
    #
    #   @return [String]
    #
    # @!attribute status
    #   The status of the flow when the DeleteFlow process begins.
    #
    #   Enum, one of: ["STANDBY", "ACTIVE", "UPDATING", "DELETING", "STARTING", "STOPPING", "ERROR"]
    #
    #   @return [String]
    #
    DeleteFlowOutput = ::Struct.new(
      :flow_arn,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute flow_arn
    #   The ARN of the flow that you want to describe.
    #
    #   @return [String]
    #
    DescribeFlowInput = ::Struct.new(
      :flow_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute flow
    #   The settings for a flow, including its source, outputs, and entitlements.
    #
    #   @return [Flow]
    #
    # @!attribute messages
    #   Messages that provide the state of the flow.
    #
    #   @return [Messages]
    #
    DescribeFlowOutput = ::Struct.new(
      :flow,
      :messages,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute offering_arn
    #   The Amazon Resource Name (ARN) of the offering.
    #
    #   @return [String]
    #
    DescribeOfferingInput = ::Struct.new(
      :offering_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute offering
    #   A savings plan that reserves a certain amount of outbound bandwidth usage at a discounted rate each month over a period of time.
    #
    #   @return [Offering]
    #
    DescribeOfferingOutput = ::Struct.new(
      :offering,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute reservation_arn
    #   The Amazon Resource Name (ARN) of the reservation.
    #
    #   @return [String]
    #
    DescribeReservationInput = ::Struct.new(
      :reservation_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute reservation
    #   A pricing agreement for a discounted rate for a specific outbound bandwidth that your MediaConnect account will use each month over a specific time period. The discounted rate in the reservation applies to outbound bandwidth for all flows from your account until your account reaches the amount of bandwidth in your reservation. If you use more outbound bandwidth than the agreed upon amount in a single month, the overage is charged at the on-demand rate.
    #
    #   @return [Reservation]
    #
    DescribeReservationOutput = ::Struct.new(
      :reservation,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # The transport parameters that are associated with an outbound media stream.
    #
    # @!attribute destination_ip
    #   The IP address where contents of the media stream will be sent.
    #
    #   @return [String]
    #
    # @!attribute destination_port
    #   The port to use when the content of the media stream is distributed to the output.
    #
    #   @return [Integer]
    #
    # @!attribute interface
    #   The VPC interface that is used for the media stream associated with the output.
    #
    #   @return [Interface]
    #
    # @!attribute outbound_ip
    #   The IP address that the receiver requires in order to establish a connection with the flow. This value is represented by the elastic network interface IP address of the VPC. This field applies only to outputs that use the CDI or ST 2110 JPEG XS protocol.
    #
    #   @return [String]
    #
    DestinationConfiguration = ::Struct.new(
      :destination_ip,
      :destination_port,
      :interface,
      :outbound_ip,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.destination_port ||= 0
      end
    end

    # The transport parameters that you want to associate with an outbound media stream.
    #
    # @!attribute destination_ip
    #   The IP address where you want MediaConnect to send contents of the media stream.
    #
    #   @return [String]
    #
    # @!attribute destination_port
    #   The port that you want MediaConnect to use when it distributes the media stream to the output.
    #
    #   @return [Integer]
    #
    # @!attribute interface
    #   The VPC interface that you want to use for the media stream associated with the output.
    #
    #   @return [InterfaceRequest]
    #
    DestinationConfigurationRequest = ::Struct.new(
      :destination_ip,
      :destination_port,
      :interface,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.destination_port ||= 0
      end
    end

    # Includes enum constants for DurationUnits
    #
    module DurationUnits
      # No documentation available.
      #
      MONTHS = "MONTHS"
    end

    # Includes enum constants for EncoderProfile
    #
    module EncoderProfile
      # No documentation available.
      #
      main = "main"

      # No documentation available.
      #
      high = "high"
    end

    # Includes enum constants for EncodingName
    #
    module EncodingName
      # No documentation available.
      #
      jxsv = "jxsv"

      # No documentation available.
      #
      raw = "raw"

      # No documentation available.
      #
      smpte291 = "smpte291"

      # No documentation available.
      #
      pcm = "pcm"
    end

    # A collection of parameters that determine how MediaConnect will convert the content. These fields only apply to outputs on flows that have a CDI source.
    #
    # @!attribute compression_factor
    #   A value that is used to calculate compression for an output. The bitrate of the output is calculated as follows: Output bitrate = (1 / compressionFactor) * (source bitrate) This property only applies to outputs that use the ST 2110 JPEG XS protocol, with a flow source that uses the CDI protocol. Valid values are floating point numbers in the range of 3.0 to 10.0, inclusive.
    #
    #   @return [Float]
    #
    # @!attribute encoder_profile
    #   A setting on the encoder that drives compression settings. This property only applies to video media streams associated with outputs that use the ST 2110 JPEG XS protocol, with a flow source that uses the CDI protocol.
    #
    #   Enum, one of: ["main", "high"]
    #
    #   @return [String]
    #
    EncodingParameters = ::Struct.new(
      :compression_factor,
      :encoder_profile,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.compression_factor ||= 0
      end
    end

    # A collection of parameters that determine how MediaConnect will convert the content. These fields only apply to outputs on flows that have a CDI source.
    #
    # @!attribute compression_factor
    #   A value that is used to calculate compression for an output. The bitrate of the output is calculated as follows: Output bitrate = (1 / compressionFactor) * (source bitrate) This property only applies to outputs that use the ST 2110 JPEG XS protocol, with a flow source that uses the CDI protocol. Valid values are floating point numbers in the range of 3.0 to 10.0, inclusive.
    #
    #   @return [Float]
    #
    # @!attribute encoder_profile
    #   A setting on the encoder that drives compression settings. This property only applies to video media streams associated with outputs that use the ST 2110 JPEG XS protocol, if at least one source on the flow uses the CDI protocol.
    #
    #   Enum, one of: ["main", "high"]
    #
    #   @return [String]
    #
    EncodingParametersRequest = ::Struct.new(
      :compression_factor,
      :encoder_profile,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.compression_factor ||= 0
      end
    end

    # Information about the encryption of the flow.
    #
    # @!attribute algorithm
    #   The type of algorithm that is used for the encryption (such as aes128, aes192, or aes256).
    #
    #   Enum, one of: ["aes128", "aes192", "aes256"]
    #
    #   @return [String]
    #
    # @!attribute constant_initialization_vector
    #   A 128-bit, 16-byte hex value represented by a 32-character string, to be used with the key for encrypting content. This parameter is not valid for static key encryption.
    #
    #   @return [String]
    #
    # @!attribute device_id
    #   The value of one of the devices that you configured with your digital rights management (DRM) platform key provider. This parameter is required for SPEKE encryption and is not valid for static key encryption.
    #
    #   @return [String]
    #
    # @!attribute key_type
    #   The type of key that is used for the encryption. If no keyType is provided, the service will use the default setting (static-key).
    #
    #   Enum, one of: ["speke", "static-key", "srt-password"]
    #
    #   @return [String]
    #
    # @!attribute region
    #   The AWS Region that the API Gateway proxy endpoint was created in. This parameter is required for SPEKE encryption and is not valid for static key encryption.
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   An identifier for the content. The service sends this value to the key server to identify the current endpoint. The resource ID is also known as the content ID. This parameter is required for SPEKE encryption and is not valid for static key encryption.
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   The ARN of the role that you created during setup (when you set up AWS Elemental MediaConnect as a trusted entity).
    #
    #   @return [String]
    #
    # @!attribute secret_arn
    #   The ARN of the secret that you created in AWS Secrets Manager to store the encryption key. This parameter is required for static key encryption and is not valid for SPEKE encryption.
    #
    #   @return [String]
    #
    # @!attribute url
    #   The URL from the API Gateway proxy that you set up to talk to your key server. This parameter is required for SPEKE encryption and is not valid for static key encryption.
    #
    #   @return [String]
    #
    Encryption = ::Struct.new(
      :algorithm,
      :constant_initialization_vector,
      :device_id,
      :key_type,
      :region,
      :resource_id,
      :role_arn,
      :secret_arn,
      :url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # The settings for a flow entitlement.
    #
    # @!attribute data_transfer_subscriber_fee_percent
    #   Percentage from 0-100 of the data transfer cost to be billed to the subscriber.
    #
    #   @return [Integer]
    #
    # @!attribute description
    #   A description of the entitlement.
    #
    #   @return [String]
    #
    # @!attribute encryption
    #   The type of encryption that will be used on the output that is associated with this entitlement.
    #
    #   @return [Encryption]
    #
    # @!attribute entitlement_arn
    #   The ARN of the entitlement.
    #
    #   @return [String]
    #
    # @!attribute entitlement_status
    #   An indication of whether the entitlement is enabled.
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute name
    #   The name of the entitlement.
    #
    #   @return [String]
    #
    # @!attribute subscribers
    #   The AWS account IDs that you want to share your content with. The receiving accounts (subscribers) will be allowed to create their own flow using your content as the source.
    #
    #   @return [Array<String>]
    #
    Entitlement = ::Struct.new(
      :data_transfer_subscriber_fee_percent,
      :description,
      :encryption,
      :entitlement_arn,
      :entitlement_status,
      :name,
      :subscribers,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.data_transfer_subscriber_fee_percent ||= 0
      end
    end

    # Includes enum constants for EntitlementStatus
    #
    module EntitlementStatus
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # The settings for source failover.
    #
    # @!attribute failover_mode
    #   The type of failover you choose for this flow. MERGE combines the source streams into a single stream, allowing graceful recovery from any single-source loss. FAILOVER allows switching between different streams.
    #
    #   Enum, one of: ["MERGE", "FAILOVER"]
    #
    #   @return [String]
    #
    # @!attribute recovery_window
    #   Search window time to look for dash-7 packets
    #
    #   @return [Integer]
    #
    # @!attribute source_priority
    #   The priority you want to assign to a source. You can have a primary stream and a backup stream or two equally prioritized streams.
    #
    #   @return [SourcePriority]
    #
    # @!attribute state
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    FailoverConfig = ::Struct.new(
      :failover_mode,
      :recovery_window,
      :source_priority,
      :state,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.recovery_window ||= 0
      end
    end

    # Includes enum constants for FailoverMode
    #
    module FailoverMode
      # No documentation available.
      #
      MERGE = "MERGE"

      # No documentation available.
      #
      FAILOVER = "FAILOVER"
    end

    # The settings for a flow, including its source, outputs, and entitlements.
    #
    # @!attribute availability_zone
    #   The Availability Zone that you want to create the flow in. These options are limited to the Availability Zones within the current AWS.
    #
    #   @return [String]
    #
    # @!attribute description
    #   A description of the flow. This value is not used or seen outside of the current AWS Elemental MediaConnect account.
    #
    #   @return [String]
    #
    # @!attribute egress_ip
    #   The IP address from which video will be sent to output destinations.
    #
    #   @return [String]
    #
    # @!attribute entitlements
    #   The entitlements in this flow.
    #
    #   @return [Array<Entitlement>]
    #
    # @!attribute flow_arn
    #   The Amazon Resource Name (ARN), a unique identifier for any AWS resource, of the flow.
    #
    #   @return [String]
    #
    # @!attribute media_streams
    #   The media streams that are associated with the flow. After you associate a media stream with a source, you can also associate it with outputs on the flow.
    #
    #   @return [Array<MediaStream>]
    #
    # @!attribute name
    #   The name of the flow.
    #
    #   @return [String]
    #
    # @!attribute outputs
    #   The outputs in this flow.
    #
    #   @return [Array<Output>]
    #
    # @!attribute source
    #   The settings for the source of the flow.
    #
    #   @return [Source]
    #
    # @!attribute source_failover_config
    #   The settings for source failover.
    #
    #   @return [FailoverConfig]
    #
    # @!attribute sources
    #
    #   @return [Array<Source>]
    #
    # @!attribute status
    #   The current status of the flow.
    #
    #   Enum, one of: ["STANDBY", "ACTIVE", "UPDATING", "DELETING", "STARTING", "STOPPING", "ERROR"]
    #
    #   @return [String]
    #
    # @!attribute vpc_interfaces
    #   The VPC Interfaces for this flow.
    #
    #   @return [Array<VpcInterface>]
    #
    # @!attribute maintenance
    #   The maintenance setting of a flow
    #
    #   @return [Maintenance]
    #
    Flow = ::Struct.new(
      :availability_zone,
      :description,
      :egress_ip,
      :entitlements,
      :flow_arn,
      :media_streams,
      :name,
      :outputs,
      :source,
      :source_failover_config,
      :sources,
      :status,
      :vpc_interfaces,
      :maintenance,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # FMTP
    #
    # @!attribute channel_order
    #   The format of the audio channel.
    #
    #   @return [String]
    #
    # @!attribute colorimetry
    #   The format that is used for the representation of color.
    #
    #   Enum, one of: ["BT601", "BT709", "BT2020", "BT2100", "ST2065-1", "ST2065-3", "XYZ"]
    #
    #   @return [String]
    #
    # @!attribute exact_framerate
    #   The frame rate for the video stream, in frames/second. For example: 60000/1001. If you specify a whole number, MediaConnect uses a ratio of N/1. For example, if you specify 60, MediaConnect uses 60/1 as the exactFramerate.
    #
    #   @return [String]
    #
    # @!attribute par
    #   The pixel aspect ratio (PAR) of the video.
    #
    #   @return [String]
    #
    # @!attribute range
    #   The encoding range of the video.
    #
    #   Enum, one of: ["NARROW", "FULL", "FULLPROTECT"]
    #
    #   @return [String]
    #
    # @!attribute scan_mode
    #   The type of compression that was used to smooth the video’s appearance
    #
    #   Enum, one of: ["progressive", "interlace", "progressive-segmented-frame"]
    #
    #   @return [String]
    #
    # @!attribute tcs
    #   The transfer characteristic system (TCS) that is used in the video.
    #
    #   Enum, one of: ["SDR", "PQ", "HLG", "LINEAR", "BT2100LINPQ", "BT2100LINHLG", "ST2065-1", "ST428-1", "DENSITY"]
    #
    #   @return [String]
    #
    Fmtp = ::Struct.new(
      :channel_order,
      :colorimetry,
      :exact_framerate,
      :par,
      :range,
      :scan_mode,
      :tcs,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # The settings that you want to use to define the media stream.
    #
    # @!attribute channel_order
    #   The format of the audio channel.
    #
    #   @return [String]
    #
    # @!attribute colorimetry
    #   The format that is used for the representation of color.
    #
    #   Enum, one of: ["BT601", "BT709", "BT2020", "BT2100", "ST2065-1", "ST2065-3", "XYZ"]
    #
    #   @return [String]
    #
    # @!attribute exact_framerate
    #   The frame rate for the video stream, in frames/second. For example: 60000/1001. If you specify a whole number, MediaConnect uses a ratio of N/1. For example, if you specify 60, MediaConnect uses 60/1 as the exactFramerate.
    #
    #   @return [String]
    #
    # @!attribute par
    #   The pixel aspect ratio (PAR) of the video.
    #
    #   @return [String]
    #
    # @!attribute range
    #   The encoding range of the video.
    #
    #   Enum, one of: ["NARROW", "FULL", "FULLPROTECT"]
    #
    #   @return [String]
    #
    # @!attribute scan_mode
    #   The type of compression that was used to smooth the video’s appearance.
    #
    #   Enum, one of: ["progressive", "interlace", "progressive-segmented-frame"]
    #
    #   @return [String]
    #
    # @!attribute tcs
    #   The transfer characteristic system (TCS) that is used in the video.
    #
    #   Enum, one of: ["SDR", "PQ", "HLG", "LINEAR", "BT2100LINPQ", "BT2100LINHLG", "ST2065-1", "ST428-1", "DENSITY"]
    #
    #   @return [String]
    #
    FmtpRequest = ::Struct.new(
      :channel_order,
      :colorimetry,
      :exact_framerate,
      :par,
      :range,
      :scan_mode,
      :tcs,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Exception raised by AWS Elemental MediaConnect. See the error message and documentation for the operation for more information on the cause of this exception.
    #
    # @!attribute message
    #   The error message returned by AWS Elemental MediaConnect.
    #
    #   @return [String]
    #
    ForbiddenException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # The entitlements that you want to grant on a flow.
    #
    # @!attribute data_transfer_subscriber_fee_percent
    #   Percentage from 0-100 of the data transfer cost to be billed to the subscriber.
    #
    #   @return [Integer]
    #
    # @!attribute description
    #   A description of the entitlement. This description appears only on the AWS Elemental MediaConnect console and will not be seen by the subscriber or end user.
    #
    #   @return [String]
    #
    # @!attribute encryption
    #   The type of encryption that will be used on the output that is associated with this entitlement.
    #
    #   @return [Encryption]
    #
    # @!attribute entitlement_status
    #   An indication of whether the new entitlement should be enabled or disabled as soon as it is created. If you don’t specify the entitlementStatus field in your request, MediaConnect sets it to ENABLED.
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute name
    #   The name of the entitlement. This value must be unique within the current flow.
    #
    #   @return [String]
    #
    # @!attribute subscribers
    #   The AWS account IDs that you want to share your content with. The receiving accounts (subscribers) will be allowed to create their own flows using your content as the source.
    #
    #   @return [Array<String>]
    #
    GrantEntitlementRequest = ::Struct.new(
      :data_transfer_subscriber_fee_percent,
      :description,
      :encryption,
      :entitlement_status,
      :name,
      :subscribers,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.data_transfer_subscriber_fee_percent ||= 0
      end
    end

    # Exception raised by AWS Elemental MediaConnect. See the error message and documentation for the operation for more information on the cause of this exception.
    #
    # @!attribute message
    #   The error message returned by AWS Elemental MediaConnect.
    #
    #   @return [String]
    #
    GrantFlowEntitlements420Exception = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # A request to grant entitlements on a flow.
    #
    # @!attribute entitlements
    #   The list of entitlements that you want to grant.
    #
    #   @return [Array<GrantEntitlementRequest>]
    #
    # @!attribute flow_arn
    #   The flow that you want to grant entitlements on.
    #
    #   @return [String]
    #
    GrantFlowEntitlementsInput = ::Struct.new(
      :entitlements,
      :flow_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute entitlements
    #   The entitlements that were just granted.
    #
    #   @return [Array<Entitlement>]
    #
    # @!attribute flow_arn
    #   The ARN of the flow that these entitlements were granted to.
    #
    #   @return [String]
    #
    GrantFlowEntitlementsOutput = ::Struct.new(
      :entitlements,
      :flow_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # The transport parameters that are associated with an incoming media stream.
    #
    # @!attribute input_ip
    #   The IP address that the flow listens on for incoming content for a media stream.
    #
    #   @return [String]
    #
    # @!attribute input_port
    #   The port that the flow listens on for an incoming media stream.
    #
    #   @return [Integer]
    #
    # @!attribute interface
    #   The VPC interface where the media stream comes in from.
    #
    #   @return [Interface]
    #
    InputConfiguration = ::Struct.new(
      :input_ip,
      :input_port,
      :interface,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.input_port ||= 0
      end
    end

    # The transport parameters that you want to associate with an incoming media stream.
    #
    # @!attribute input_port
    #   The port that you want the flow to listen on for an incoming media stream.
    #
    #   @return [Integer]
    #
    # @!attribute interface
    #   The VPC interface that you want to use for the incoming media stream.
    #
    #   @return [InterfaceRequest]
    #
    InputConfigurationRequest = ::Struct.new(
      :input_port,
      :interface,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.input_port ||= 0
      end
    end

    # The VPC interface that is used for the media stream associated with the source or output.
    #
    # @!attribute name
    #   The name of the VPC interface.
    #
    #   @return [String]
    #
    Interface = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # The VPC interface that you want to designate where the media stream is coming from or going to.
    #
    # @!attribute name
    #   The name of the VPC interface.
    #
    #   @return [String]
    #
    InterfaceRequest = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Exception raised by AWS Elemental MediaConnect. See the error message and documentation for the operation for more information on the cause of this exception.
    #
    # @!attribute message
    #   The error message returned by AWS Elemental MediaConnect.
    #
    #   @return [String]
    #
    InternalServerErrorException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for KeyType
    #
    module KeyType
      # No documentation available.
      #
      speke = "speke"

      # No documentation available.
      #
      static_key = "static-key"

      # No documentation available.
      #
      srt_password = "srt-password"
    end

    # @!attribute max_results
    #   The maximum number of results to return per API request. For example, you submit a ListEntitlements request with MaxResults set at 5. Although 20 items match your request, the service returns no more than the first 5 items. (The service also returns a NextToken value that you can use to fetch the next batch of results.) The service might return fewer results than the MaxResults value. If MaxResults is not included in the request, the service defaults to pagination with a maximum of 20 results per page.
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   The token that identifies which batch of results that you want to see. For example, you submit a ListEntitlements request with MaxResults set at 5. The service returns the first batch of results (up to 5) and a NextToken value. To see the next batch of results, you can submit the ListEntitlements request a second time and specify the NextToken value.
    #
    #   @return [String]
    #
    ListEntitlementsInput = ::Struct.new(
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

    # @!attribute entitlements
    #   A list of entitlements that have been granted to you from other AWS accounts.
    #
    #   @return [Array<ListedEntitlement>]
    #
    # @!attribute next_token
    #   The token that identifies which batch of results that you want to see. For example, you submit a ListEntitlements request with MaxResults set at 5. The service returns the first batch of results (up to 5) and a NextToken value. To see the next batch of results, you can submit the ListEntitlements request a second time and specify the NextToken value.
    #
    #   @return [String]
    #
    ListEntitlementsOutput = ::Struct.new(
      :entitlements,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   The maximum number of results to return per API request. For example, you submit a ListFlows request with MaxResults set at 5. Although 20 items match your request, the service returns no more than the first 5 items. (The service also returns a NextToken value that you can use to fetch the next batch of results.) The service might return fewer results than the MaxResults value. If MaxResults is not included in the request, the service defaults to pagination with a maximum of 10 results per page.
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   The token that identifies which batch of results that you want to see. For example, you submit a ListFlows request with MaxResults set at 5. The service returns the first batch of results (up to 5) and a NextToken value. To see the next batch of results, you can submit the ListFlows request a second time and specify the NextToken value.
    #
    #   @return [String]
    #
    ListFlowsInput = ::Struct.new(
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

    # @!attribute flows
    #   A list of flow summaries.
    #
    #   @return [Array<ListedFlow>]
    #
    # @!attribute next_token
    #   The token that identifies which batch of results that you want to see. For example, you submit a ListFlows request with MaxResults set at 5. The service returns the first batch of results (up to 5) and a NextToken value. To see the next batch of results, you can submit the ListFlows request a second time and specify the NextToken value.
    #
    #   @return [String]
    #
    ListFlowsOutput = ::Struct.new(
      :flows,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   The maximum number of results to return per API request. For example, you submit a ListOfferings request with MaxResults set at 5. Although 20 items match your request, the service returns no more than the first 5 items. (The service also returns a NextToken value that you can use to fetch the next batch of results.) The service might return fewer results than the MaxResults value. If MaxResults is not included in the request, the service defaults to pagination with a maximum of 10 results per page.
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   The token that identifies which batch of results that you want to see. For example, you submit a ListOfferings request with MaxResults set at 5. The service returns the first batch of results (up to 5) and a NextToken value. To see the next batch of results, you can submit the ListOfferings request a second time and specify the NextToken value.
    #
    #   @return [String]
    #
    ListOfferingsInput = ::Struct.new(
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
    #   The token that identifies which batch of results that you want to see. For example, you submit a ListOfferings request with MaxResults set at 5. The service returns the first batch of results (up to 5) and a NextToken value. To see the next batch of results, you can submit the ListOfferings request a second time and specify the NextToken value.
    #
    #   @return [String]
    #
    # @!attribute offerings
    #   A list of offerings that are available to this account in the current AWS Region.
    #
    #   @return [Array<Offering>]
    #
    ListOfferingsOutput = ::Struct.new(
      :next_token,
      :offerings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   The maximum number of results to return per API request. For example, you submit a ListReservations request with MaxResults set at 5. Although 20 items match your request, the service returns no more than the first 5 items. (The service also returns a NextToken value that you can use to fetch the next batch of results.) The service might return fewer results than the MaxResults value. If MaxResults is not included in the request, the service defaults to pagination with a maximum of 10 results per page.
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   The token that identifies which batch of results that you want to see. For example, you submit a ListReservations request with MaxResults set at 5. The service returns the first batch of results (up to 5) and a NextToken value. To see the next batch of results, you can submit the ListOfferings request a second time and specify the NextToken value.
    #
    #   @return [String]
    #
    ListReservationsInput = ::Struct.new(
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
    #   The token that identifies which batch of results that you want to see. For example, you submit a ListReservations request with MaxResults set at 5. The service returns the first batch of results (up to 5) and a NextToken value. To see the next batch of results, you can submit the ListReservations request a second time and specify the NextToken value.
    #
    #   @return [String]
    #
    # @!attribute reservations
    #   A list of all reservations that have been purchased by this account in the current AWS Region.
    #
    #   @return [Array<Reservation>]
    #
    ListReservationsOutput = ::Struct.new(
      :next_token,
      :reservations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   The Amazon Resource Name (ARN) that identifies the AWS Elemental MediaConnect resource for which to list the tags.
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
    #   A map from tag keys to values. Tag keys can have a maximum character length of 128 characters, and tag values can have a maximum length of 256 characters.
    #
    #   @return [Hash<String, String>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # An entitlement that has been granted to you from other AWS accounts.
    #
    # @!attribute data_transfer_subscriber_fee_percent
    #   Percentage from 0-100 of the data transfer cost to be billed to the subscriber.
    #
    #   @return [Integer]
    #
    # @!attribute entitlement_arn
    #   The ARN of the entitlement.
    #
    #   @return [String]
    #
    # @!attribute entitlement_name
    #   The name of the entitlement.
    #
    #   @return [String]
    #
    ListedEntitlement = ::Struct.new(
      :data_transfer_subscriber_fee_percent,
      :entitlement_arn,
      :entitlement_name,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.data_transfer_subscriber_fee_percent ||= 0
      end
    end

    # Provides a summary of a flow, including its ARN, Availability Zone, and source type.
    #
    # @!attribute availability_zone
    #   The Availability Zone that the flow was created in.
    #
    #   @return [String]
    #
    # @!attribute description
    #   A description of the flow.
    #
    #   @return [String]
    #
    # @!attribute flow_arn
    #   The ARN of the flow.
    #
    #   @return [String]
    #
    # @!attribute name
    #   The name of the flow.
    #
    #   @return [String]
    #
    # @!attribute source_type
    #   The type of source. This value is either owned (originated somewhere other than an AWS Elemental MediaConnect flow owned by another AWS account) or entitled (originated at an AWS Elemental MediaConnect flow owned by another AWS account).
    #
    #   Enum, one of: ["OWNED", "ENTITLED"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   The current status of the flow.
    #
    #   Enum, one of: ["STANDBY", "ACTIVE", "UPDATING", "DELETING", "STARTING", "STOPPING", "ERROR"]
    #
    #   @return [String]
    #
    # @!attribute maintenance
    #   The maintenance setting of a flow
    #
    #   @return [Maintenance]
    #
    ListedFlow = ::Struct.new(
      :availability_zone,
      :description,
      :flow_arn,
      :name,
      :source_type,
      :status,
      :maintenance,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # The maintenance setting of a flow
    #
    # @!attribute maintenance_day
    #   A day of a week when the maintenance will happen. Use Monday/Tuesday/Wednesday/Thursday/Friday/Saturday/Sunday.
    #
    #   Enum, one of: ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
    #
    #   @return [String]
    #
    # @!attribute maintenance_deadline
    #   The Maintenance has to be performed before this deadline in ISO UTC format. Example: 2021-01-30T08:30:00Z.
    #
    #   @return [String]
    #
    # @!attribute maintenance_scheduled_date
    #   A scheduled date in ISO UTC format when the maintenance will happen. Use YYYY-MM-DD format. Example: 2021-01-30.
    #
    #   @return [String]
    #
    # @!attribute maintenance_start_hour
    #   UTC time when the maintenance will happen. Use 24-hour HH:MM format. Minutes must be 00. Example: 13:00. The default value is 02:00.
    #
    #   @return [String]
    #
    Maintenance = ::Struct.new(
      :maintenance_day,
      :maintenance_deadline,
      :maintenance_scheduled_date,
      :maintenance_start_hour,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for MaintenanceDay
    #
    module MaintenanceDay
      # No documentation available.
      #
      Monday = "Monday"

      # No documentation available.
      #
      Tuesday = "Tuesday"

      # No documentation available.
      #
      Wednesday = "Wednesday"

      # No documentation available.
      #
      Thursday = "Thursday"

      # No documentation available.
      #
      Friday = "Friday"

      # No documentation available.
      #
      Saturday = "Saturday"

      # No documentation available.
      #
      Sunday = "Sunday"
    end

    # A single track or stream of media that contains video, audio, or ancillary data. After you add a media stream to a flow, you can associate it with sources and outputs on that flow, as long as they use the CDI protocol or the ST 2110 JPEG XS protocol. Each source or output can consist of one or many media streams.
    #
    # @!attribute attributes
    #   Attributes that are related to the media stream.
    #
    #   @return [MediaStreamAttributes]
    #
    # @!attribute clock_rate
    #   The sample rate for the stream. This value is measured in Hz.
    #
    #   @return [Integer]
    #
    # @!attribute description
    #   A description that can help you quickly identify what your media stream is used for.
    #
    #   @return [String]
    #
    # @!attribute fmt
    #   The format type number (sometimes referred to as RTP payload type) of the media stream. MediaConnect assigns this value to the media stream. For ST 2110 JPEG XS outputs, you need to provide this value to the receiver.
    #
    #   @return [Integer]
    #
    # @!attribute media_stream_id
    #   A unique identifier for the media stream.
    #
    #   @return [Integer]
    #
    # @!attribute media_stream_name
    #   A name that helps you distinguish one media stream from another.
    #
    #   @return [String]
    #
    # @!attribute media_stream_type
    #   The type of media stream.
    #
    #   Enum, one of: ["video", "audio", "ancillary-data"]
    #
    #   @return [String]
    #
    # @!attribute video_format
    #   The resolution of the video.
    #
    #   @return [String]
    #
    MediaStream = ::Struct.new(
      :attributes,
      :clock_rate,
      :description,
      :fmt,
      :media_stream_id,
      :media_stream_name,
      :media_stream_type,
      :video_format,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.clock_rate ||= 0
        self.fmt ||= 0
        self.media_stream_id ||= 0
      end
    end

    # Attributes that are related to the media stream.
    #
    # @!attribute fmtp
    #   A set of parameters that define the media stream.
    #
    #   @return [Fmtp]
    #
    # @!attribute lang
    #   The audio language, in a format that is recognized by the receiver.
    #
    #   @return [String]
    #
    MediaStreamAttributes = ::Struct.new(
      :fmtp,
      :lang,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Attributes that are related to the media stream.
    #
    # @!attribute fmtp
    #   The settings that you want to use to define the media stream.
    #
    #   @return [FmtpRequest]
    #
    # @!attribute lang
    #   The audio language, in a format that is recognized by the receiver.
    #
    #   @return [String]
    #
    MediaStreamAttributesRequest = ::Struct.new(
      :fmtp,
      :lang,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # The media stream that is associated with the output, and the parameters for that association.
    #
    # @!attribute destination_configurations
    #   The transport parameters that are associated with each outbound media stream.
    #
    #   @return [Array<DestinationConfiguration>]
    #
    # @!attribute encoding_name
    #   The format that was used to encode the data. For ancillary data streams, set the encoding name to smpte291. For audio streams, set the encoding name to pcm. For video, 2110 streams, set the encoding name to raw. For video, JPEG XS streams, set the encoding name to jxsv.
    #
    #   Enum, one of: ["jxsv", "raw", "smpte291", "pcm"]
    #
    #   @return [String]
    #
    # @!attribute encoding_parameters
    #   Encoding parameters
    #
    #   @return [EncodingParameters]
    #
    # @!attribute media_stream_name
    #   The name of the media stream.
    #
    #   @return [String]
    #
    MediaStreamOutputConfiguration = ::Struct.new(
      :destination_configurations,
      :encoding_name,
      :encoding_parameters,
      :media_stream_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # The media stream that you want to associate with the output, and the parameters for that association.
    #
    # @!attribute destination_configurations
    #   The transport parameters that you want to associate with the media stream.
    #
    #   @return [Array<DestinationConfigurationRequest>]
    #
    # @!attribute encoding_name
    #   The format that will be used to encode the data. For ancillary data streams, set the encoding name to smpte291. For audio streams, set the encoding name to pcm. For video, 2110 streams, set the encoding name to raw. For video, JPEG XS streams, set the encoding name to jxsv.
    #
    #   Enum, one of: ["jxsv", "raw", "smpte291", "pcm"]
    #
    #   @return [String]
    #
    # @!attribute encoding_parameters
    #   A collection of parameters that determine how MediaConnect will convert the content. These fields only apply to outputs on flows that have a CDI source.
    #
    #   @return [EncodingParametersRequest]
    #
    # @!attribute media_stream_name
    #   The name of the media stream that is associated with the output.
    #
    #   @return [String]
    #
    MediaStreamOutputConfigurationRequest = ::Struct.new(
      :destination_configurations,
      :encoding_name,
      :encoding_parameters,
      :media_stream_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # The media stream that is associated with the source, and the parameters for that association.
    #
    # @!attribute encoding_name
    #   The format that was used to encode the data. For ancillary data streams, set the encoding name to smpte291. For audio streams, set the encoding name to pcm. For video, 2110 streams, set the encoding name to raw. For video, JPEG XS streams, set the encoding name to jxsv.
    #
    #   Enum, one of: ["jxsv", "raw", "smpte291", "pcm"]
    #
    #   @return [String]
    #
    # @!attribute input_configurations
    #   The transport parameters that are associated with an incoming media stream.
    #
    #   @return [Array<InputConfiguration>]
    #
    # @!attribute media_stream_name
    #   The name of the media stream.
    #
    #   @return [String]
    #
    MediaStreamSourceConfiguration = ::Struct.new(
      :encoding_name,
      :input_configurations,
      :media_stream_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # The definition of a media stream that you want to associate with the source.
    #
    # @!attribute encoding_name
    #   The format you want to use to encode the data. For ancillary data streams, set the encoding name to smpte291. For audio streams, set the encoding name to pcm. For video, 2110 streams, set the encoding name to raw. For video, JPEG XS streams, set the encoding name to jxsv.
    #
    #   Enum, one of: ["jxsv", "raw", "smpte291", "pcm"]
    #
    #   @return [String]
    #
    # @!attribute input_configurations
    #   The transport parameters that you want to associate with the media stream.
    #
    #   @return [Array<InputConfigurationRequest>]
    #
    # @!attribute media_stream_name
    #   The name of the media stream.
    #
    #   @return [String]
    #
    MediaStreamSourceConfigurationRequest = ::Struct.new(
      :encoding_name,
      :input_configurations,
      :media_stream_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for MediaStreamType
    #
    module MediaStreamType
      # No documentation available.
      #
      video = "video"

      # No documentation available.
      #
      audio = "audio"

      # No documentation available.
      #
      ancillary_data = "ancillary-data"
    end

    # Messages that provide the state of the flow.
    #
    # @!attribute errors
    #   A list of errors that might have been generated from processes on this flow.
    #
    #   @return [Array<String>]
    #
    Messages = ::Struct.new(
      :errors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for NetworkInterfaceType
    #
    module NetworkInterfaceType
      # No documentation available.
      #
      ena = "ena"

      # No documentation available.
      #
      efa = "efa"
    end

    # Exception raised by AWS Elemental MediaConnect. See the error message and documentation for the operation for more information on the cause of this exception.
    #
    # @!attribute message
    #   The error message returned by AWS Elemental MediaConnect.
    #
    #   @return [String]
    #
    NotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # A savings plan that reserves a certain amount of outbound bandwidth usage at a discounted rate each month over a period of time.
    #
    # @!attribute currency_code
    #   The type of currency that is used for billing. The currencyCode used for all reservations is US dollars.
    #
    #   @return [String]
    #
    # @!attribute duration
    #   The length of time that your reservation would be active.
    #
    #   @return [Integer]
    #
    # @!attribute duration_units
    #   The unit of measurement for the duration of the offering.
    #
    #   Enum, one of: ["MONTHS"]
    #
    #   @return [String]
    #
    # @!attribute offering_arn
    #   The Amazon Resource Name (ARN) that MediaConnect assigns to the offering.
    #
    #   @return [String]
    #
    # @!attribute offering_description
    #   A description of the offering.
    #
    #   @return [String]
    #
    # @!attribute price_per_unit
    #   The cost of a single unit. This value, in combination with priceUnits, makes up the rate.
    #
    #   @return [String]
    #
    # @!attribute price_units
    #   The unit of measurement that is used for billing. This value, in combination with pricePerUnit, makes up the rate.
    #
    #   Enum, one of: ["HOURLY"]
    #
    #   @return [String]
    #
    # @!attribute resource_specification
    #   A definition of the amount of outbound bandwidth that you would be reserving if you purchase the offering.
    #
    #   @return [ResourceSpecification]
    #
    Offering = ::Struct.new(
      :currency_code,
      :duration,
      :duration_units,
      :offering_arn,
      :offering_description,
      :price_per_unit,
      :price_units,
      :resource_specification,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.duration ||= 0
      end
    end

    # The settings for an output.
    #
    # @!attribute data_transfer_subscriber_fee_percent
    #   Percentage from 0-100 of the data transfer cost to be billed to the subscriber.
    #
    #   @return [Integer]
    #
    # @!attribute description
    #   A description of the output.
    #
    #   @return [String]
    #
    # @!attribute destination
    #   The address where you want to send the output.
    #
    #   @return [String]
    #
    # @!attribute encryption
    #   The type of key used for the encryption. If no keyType is provided, the service will use the default setting (static-key).
    #
    #   @return [Encryption]
    #
    # @!attribute entitlement_arn
    #   The ARN of the entitlement on the originator''s flow. This value is relevant only on entitled flows.
    #
    #   @return [String]
    #
    # @!attribute listener_address
    #   The IP address that the receiver requires in order to establish a connection with the flow. For public networking, the ListenerAddress is represented by the elastic IP address of the flow. For private networking, the ListenerAddress is represented by the elastic network interface IP address of the VPC. This field applies only to outputs that use the Zixi pull or SRT listener protocol.
    #
    #   @return [String]
    #
    # @!attribute media_live_input_arn
    #   The input ARN of the AWS Elemental MediaLive channel. This parameter is relevant only for outputs that were added by creating a MediaLive input.
    #
    #   @return [String]
    #
    # @!attribute media_stream_output_configurations
    #   The configuration for each media stream that is associated with the output.
    #
    #   @return [Array<MediaStreamOutputConfiguration>]
    #
    # @!attribute name
    #   The name of the output. This value must be unique within the current flow.
    #
    #   @return [String]
    #
    # @!attribute output_arn
    #   The ARN of the output.
    #
    #   @return [String]
    #
    # @!attribute port
    #   The port to use when content is distributed to this output.
    #
    #   @return [Integer]
    #
    # @!attribute transport
    #   Attributes related to the transport stream that are used in the output.
    #
    #   @return [Transport]
    #
    # @!attribute vpc_interface_attachment
    #   The name of the VPC interface attachment to use for this output.
    #
    #   @return [VpcInterfaceAttachment]
    #
    Output = ::Struct.new(
      :data_transfer_subscriber_fee_percent,
      :description,
      :destination,
      :encryption,
      :entitlement_arn,
      :listener_address,
      :media_live_input_arn,
      :media_stream_output_configurations,
      :name,
      :output_arn,
      :port,
      :transport,
      :vpc_interface_attachment,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.data_transfer_subscriber_fee_percent ||= 0
        self.port ||= 0
      end
    end

    # Includes enum constants for PriceUnits
    #
    module PriceUnits
      # No documentation available.
      #
      HOURLY = "HOURLY"
    end

    # Includes enum constants for Protocol
    #
    module Protocol
      # No documentation available.
      #
      zixi_push = "zixi-push"

      # No documentation available.
      #
      rtp_fec = "rtp-fec"

      # No documentation available.
      #
      rtp = "rtp"

      # No documentation available.
      #
      zixi_pull = "zixi-pull"

      # No documentation available.
      #
      rist = "rist"

      # No documentation available.
      #
      st2110_jpegxs = "st2110-jpegxs"

      # No documentation available.
      #
      cdi = "cdi"

      # No documentation available.
      #
      srt_listener = "srt-listener"

      # No documentation available.
      #
      fujitsu_qos = "fujitsu-qos"
    end

    # A request to purchase a offering.
    #
    # @!attribute offering_arn
    #   The Amazon Resource Name (ARN) of the offering.
    #
    #   @return [String]
    #
    # @!attribute reservation_name
    #   The name that you want to use for the reservation.
    #
    #   @return [String]
    #
    # @!attribute start
    #   The date and time that you want the reservation to begin, in Coordinated Universal Time (UTC). You can specify any date and time between 12:00am on the first day of the current month to the current time on today's date, inclusive. Specify the start in a 24-hour notation. Use the following format: YYYY-MM-DDTHH:mm:SSZ, where T and Z are literal characters. For example, to specify 11:30pm on March 5, 2020, enter 2020-03-05T23:30:00Z.
    #
    #   @return [String]
    #
    PurchaseOfferingInput = ::Struct.new(
      :offering_arn,
      :reservation_name,
      :start,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute reservation
    #   A pricing agreement for a discounted rate for a specific outbound bandwidth that your MediaConnect account will use each month over a specific time period. The discounted rate in the reservation applies to outbound bandwidth for all flows from your account until your account reaches the amount of bandwidth in your reservation. If you use more outbound bandwidth than the agreed upon amount in a single month, the overage is charged at the on-demand rate.
    #
    #   @return [Reservation]
    #
    PurchaseOfferingOutput = ::Struct.new(
      :reservation,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Range
    #
    module Range
      # No documentation available.
      #
      NARROW = "NARROW"

      # No documentation available.
      #
      FULL = "FULL"

      # No documentation available.
      #
      FULLPROTECT = "FULLPROTECT"
    end

    # @!attribute flow_arn
    #   The Amazon Resource Name (ARN) of the flow.
    #
    #   @return [String]
    #
    # @!attribute media_stream_name
    #   The name of the media stream that you want to remove.
    #
    #   @return [String]
    #
    RemoveFlowMediaStreamInput = ::Struct.new(
      :flow_arn,
      :media_stream_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute flow_arn
    #   The Amazon Resource Name (ARN) of the flow.
    #
    #   @return [String]
    #
    # @!attribute media_stream_name
    #   The name of the media stream that was removed.
    #
    #   @return [String]
    #
    RemoveFlowMediaStreamOutput = ::Struct.new(
      :flow_arn,
      :media_stream_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute flow_arn
    #   The flow that you want to remove an output from.
    #
    #   @return [String]
    #
    # @!attribute output_arn
    #   The ARN of the output that you want to remove.
    #
    #   @return [String]
    #
    RemoveFlowOutputInput = ::Struct.new(
      :flow_arn,
      :output_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute flow_arn
    #   The ARN of the flow that is associated with the output you removed.
    #
    #   @return [String]
    #
    # @!attribute output_arn
    #   The ARN of the output that was removed.
    #
    #   @return [String]
    #
    RemoveFlowOutputOutput = ::Struct.new(
      :flow_arn,
      :output_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute flow_arn
    #   The flow that you want to remove a source from.
    #
    #   @return [String]
    #
    # @!attribute source_arn
    #   The ARN of the source that you want to remove.
    #
    #   @return [String]
    #
    RemoveFlowSourceInput = ::Struct.new(
      :flow_arn,
      :source_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute flow_arn
    #   The ARN of the flow that is associated with the source you removed.
    #
    #   @return [String]
    #
    # @!attribute source_arn
    #   The ARN of the source that was removed.
    #
    #   @return [String]
    #
    RemoveFlowSourceOutput = ::Struct.new(
      :flow_arn,
      :source_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute flow_arn
    #   The flow that you want to remove a VPC interface from.
    #
    #   @return [String]
    #
    # @!attribute vpc_interface_name
    #   The name of the VPC interface that you want to remove.
    #
    #   @return [String]
    #
    RemoveFlowVpcInterfaceInput = ::Struct.new(
      :flow_arn,
      :vpc_interface_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute flow_arn
    #   The ARN of the flow that is associated with the VPC interface you removed.
    #
    #   @return [String]
    #
    # @!attribute non_deleted_network_interface_ids
    #   IDs of network interfaces associated with the removed VPC interface that Media Connect was unable to remove.
    #
    #   @return [Array<String>]
    #
    # @!attribute vpc_interface_name
    #   The name of the VPC interface that was removed.
    #
    #   @return [String]
    #
    RemoveFlowVpcInterfaceOutput = ::Struct.new(
      :flow_arn,
      :non_deleted_network_interface_ids,
      :vpc_interface_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # A pricing agreement for a discounted rate for a specific outbound bandwidth that your MediaConnect account will use each month over a specific time period. The discounted rate in the reservation applies to outbound bandwidth for all flows from your account until your account reaches the amount of bandwidth in your reservation. If you use more outbound bandwidth than the agreed upon amount in a single month, the overage is charged at the on-demand rate.
    #
    # @!attribute currency_code
    #   The type of currency that is used for billing. The currencyCode used for your reservation is US dollars.
    #
    #   @return [String]
    #
    # @!attribute duration
    #   The length of time that this reservation is active. MediaConnect defines this value in the offering.
    #
    #   @return [Integer]
    #
    # @!attribute duration_units
    #   The unit of measurement for the duration of the reservation. MediaConnect defines this value in the offering.
    #
    #   Enum, one of: ["MONTHS"]
    #
    #   @return [String]
    #
    # @!attribute end
    #   The day and time that this reservation expires. This value is calculated based on the start date and time that you set and the offering's duration.
    #
    #   @return [String]
    #
    # @!attribute offering_arn
    #   The Amazon Resource Name (ARN) that MediaConnect assigns to the offering.
    #
    #   @return [String]
    #
    # @!attribute offering_description
    #   A description of the offering. MediaConnect defines this value in the offering.
    #
    #   @return [String]
    #
    # @!attribute price_per_unit
    #   The cost of a single unit. This value, in combination with priceUnits, makes up the rate. MediaConnect defines this value in the offering.
    #
    #   @return [String]
    #
    # @!attribute price_units
    #   The unit of measurement that is used for billing. This value, in combination with pricePerUnit, makes up the rate. MediaConnect defines this value in the offering.
    #
    #   Enum, one of: ["HOURLY"]
    #
    #   @return [String]
    #
    # @!attribute reservation_arn
    #   The Amazon Resource Name (ARN) that MediaConnect assigns to the reservation when you purchase an offering.
    #
    #   @return [String]
    #
    # @!attribute reservation_name
    #   The name that you assigned to the reservation when you purchased the offering.
    #
    #   @return [String]
    #
    # @!attribute reservation_state
    #   The status of your reservation.
    #
    #   Enum, one of: ["ACTIVE", "EXPIRED", "PROCESSING", "CANCELED"]
    #
    #   @return [String]
    #
    # @!attribute resource_specification
    #   A definition of the amount of outbound bandwidth that you would be reserving if you purchase the offering. MediaConnect defines the values that make up the resourceSpecification in the offering.
    #
    #   @return [ResourceSpecification]
    #
    # @!attribute start
    #   The day and time that the reservation becomes active. You set this value when you purchase the offering.
    #
    #   @return [String]
    #
    Reservation = ::Struct.new(
      :currency_code,
      :duration,
      :duration_units,
      :end,
      :offering_arn,
      :offering_description,
      :price_per_unit,
      :price_units,
      :reservation_arn,
      :reservation_name,
      :reservation_state,
      :resource_specification,
      :start,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.duration ||= 0
      end
    end

    # Includes enum constants for ReservationState
    #
    module ReservationState
      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      EXPIRED = "EXPIRED"

      # No documentation available.
      #
      PROCESSING = "PROCESSING"

      # No documentation available.
      #
      CANCELED = "CANCELED"
    end

    # A definition of what is being billed for, including the type and amount.
    #
    # @!attribute reserved_bitrate
    #   The amount of outbound bandwidth that is discounted in the offering.
    #
    #   @return [Integer]
    #
    # @!attribute resource_type
    #   The type of resource and the unit that is being billed for.
    #
    #   Enum, one of: ["Mbps_Outbound_Bandwidth"]
    #
    #   @return [String]
    #
    ResourceSpecification = ::Struct.new(
      :reserved_bitrate,
      :resource_type,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.reserved_bitrate ||= 0
      end
    end

    # Includes enum constants for ResourceType
    #
    module ResourceType
      # No documentation available.
      #
      Mbps_Outbound_Bandwidth = "Mbps_Outbound_Bandwidth"
    end

    # @!attribute entitlement_arn
    #   The ARN of the entitlement that you want to revoke.
    #
    #   @return [String]
    #
    # @!attribute flow_arn
    #   The flow that you want to revoke an entitlement from.
    #
    #   @return [String]
    #
    RevokeFlowEntitlementInput = ::Struct.new(
      :entitlement_arn,
      :flow_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute entitlement_arn
    #   The ARN of the entitlement that was revoked.
    #
    #   @return [String]
    #
    # @!attribute flow_arn
    #   The ARN of the flow that the entitlement was revoked from.
    #
    #   @return [String]
    #
    RevokeFlowEntitlementOutput = ::Struct.new(
      :entitlement_arn,
      :flow_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ScanMode
    #
    module ScanMode
      # No documentation available.
      #
      progressive = "progressive"

      # No documentation available.
      #
      interlace = "interlace"

      # No documentation available.
      #
      progressive_segmented_frame = "progressive-segmented-frame"
    end

    # Exception raised by AWS Elemental MediaConnect. See the error message and documentation for the operation for more information on the cause of this exception.
    #
    # @!attribute message
    #   The error message returned by AWS Elemental MediaConnect.
    #
    #   @return [String]
    #
    ServiceUnavailableException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # The settings for the source of the flow.
    #
    # @!attribute decryption
    #   The type of encryption that is used on the content ingested from this source.
    #
    #   @return [Encryption]
    #
    # @!attribute description
    #   A description for the source. This value is not used or seen outside of the current AWS Elemental MediaConnect account.
    #
    #   @return [String]
    #
    # @!attribute entitlement_arn
    #   The ARN of the entitlement that allows you to subscribe to this flow. The entitlement is set by the flow originator, and the ARN is generated as part of the originator's flow.
    #
    #   @return [String]
    #
    # @!attribute ingest_port
    #   The port that the flow will be listening on for incoming content.
    #
    #   @return [Integer]
    #
    # @!attribute max_bitrate
    #   The smoothing max bitrate for RIST, RTP, and RTP-FEC streams.
    #
    #   @return [Integer]
    #
    # @!attribute max_latency
    #   The maximum latency in milliseconds. This parameter applies only to RIST-based, Zixi-based, and Fujitsu-based streams.
    #
    #   @return [Integer]
    #
    # @!attribute max_sync_buffer
    #   The size of the buffer (in milliseconds) to use to sync incoming source data.
    #
    #   @return [Integer]
    #
    # @!attribute media_stream_source_configurations
    #   The media streams that are associated with the source, and the parameters for those associations.
    #
    #   @return [Array<MediaStreamSourceConfigurationRequest>]
    #
    # @!attribute min_latency
    #   The minimum latency in milliseconds for SRT-based streams. In streams that use the SRT protocol, this value that you set on your MediaConnect source or output represents the minimal potential latency of that connection. The latency of the stream is set to the highest number between the sender’s minimum latency and the receiver’s minimum latency.
    #
    #   @return [Integer]
    #
    # @!attribute name
    #   The name of the source.
    #
    #   @return [String]
    #
    # @!attribute protocol
    #   The protocol that is used by the source.
    #
    #   Enum, one of: ["zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "fujitsu-qos"]
    #
    #   @return [String]
    #
    # @!attribute sender_control_port
    #   The port that the flow uses to send outbound requests to initiate connection with the sender.
    #
    #   @return [Integer]
    #
    # @!attribute sender_ip_address
    #   The IP address that the flow communicates with to initiate connection with the sender.
    #
    #   @return [String]
    #
    # @!attribute stream_id
    #   The stream ID that you want to use for this transport. This parameter applies only to Zixi-based streams.
    #
    #   @return [String]
    #
    # @!attribute vpc_interface_name
    #   The name of the VPC interface to use for this source.
    #
    #   @return [String]
    #
    # @!attribute whitelist_cidr
    #   The range of IP addresses that should be allowed to contribute content to your source. These IP addresses should be in the form of a Classless Inter-Domain Routing (CIDR) block; for example, 10.0.0.0/16.
    #
    #   @return [String]
    #
    SetSourceRequest = ::Struct.new(
      :decryption,
      :description,
      :entitlement_arn,
      :ingest_port,
      :max_bitrate,
      :max_latency,
      :max_sync_buffer,
      :media_stream_source_configurations,
      :min_latency,
      :name,
      :protocol,
      :sender_control_port,
      :sender_ip_address,
      :stream_id,
      :vpc_interface_name,
      :whitelist_cidr,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.ingest_port ||= 0
        self.max_bitrate ||= 0
        self.max_latency ||= 0
        self.max_sync_buffer ||= 0
        self.min_latency ||= 0
        self.sender_control_port ||= 0
      end
    end

    # The settings for the source of the flow.
    #
    # @!attribute data_transfer_subscriber_fee_percent
    #   Percentage from 0-100 of the data transfer cost to be billed to the subscriber.
    #
    #   @return [Integer]
    #
    # @!attribute decryption
    #   The type of encryption that is used on the content ingested from this source.
    #
    #   @return [Encryption]
    #
    # @!attribute description
    #   A description for the source. This value is not used or seen outside of the current AWS Elemental MediaConnect account.
    #
    #   @return [String]
    #
    # @!attribute entitlement_arn
    #   The ARN of the entitlement that allows you to subscribe to content that comes from another AWS account. The entitlement is set by the content originator and the ARN is generated as part of the originator's flow.
    #
    #   @return [String]
    #
    # @!attribute ingest_ip
    #   The IP address that the flow will be listening on for incoming content.
    #
    #   @return [String]
    #
    # @!attribute ingest_port
    #   The port that the flow will be listening on for incoming content.
    #
    #   @return [Integer]
    #
    # @!attribute media_stream_source_configurations
    #   The media streams that are associated with the source, and the parameters for those associations.
    #
    #   @return [Array<MediaStreamSourceConfiguration>]
    #
    # @!attribute name
    #   The name of the source.
    #
    #   @return [String]
    #
    # @!attribute sender_control_port
    #   The port that the flow uses to send outbound requests to initiate connection with the sender.
    #
    #   @return [Integer]
    #
    # @!attribute sender_ip_address
    #   The IP address that the flow communicates with to initiate connection with the sender.
    #
    #   @return [String]
    #
    # @!attribute source_arn
    #   The ARN of the source.
    #
    #   @return [String]
    #
    # @!attribute transport
    #   Attributes related to the transport stream that are used in the source.
    #
    #   @return [Transport]
    #
    # @!attribute vpc_interface_name
    #   The name of the VPC interface that is used for this source.
    #
    #   @return [String]
    #
    # @!attribute whitelist_cidr
    #   The range of IP addresses that should be allowed to contribute content to your source. These IP addresses should be in the form of a Classless Inter-Domain Routing (CIDR) block; for example, 10.0.0.0/16.
    #
    #   @return [String]
    #
    Source = ::Struct.new(
      :data_transfer_subscriber_fee_percent,
      :decryption,
      :description,
      :entitlement_arn,
      :ingest_ip,
      :ingest_port,
      :media_stream_source_configurations,
      :name,
      :sender_control_port,
      :sender_ip_address,
      :source_arn,
      :transport,
      :vpc_interface_name,
      :whitelist_cidr,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.data_transfer_subscriber_fee_percent ||= 0
        self.ingest_port ||= 0
        self.sender_control_port ||= 0
      end
    end

    # The priority you want to assign to a source. You can have a primary stream and a backup stream or two equally prioritized streams.
    #
    # @!attribute primary_source
    #   The name of the source you choose as the primary source for this flow.
    #
    #   @return [String]
    #
    SourcePriority = ::Struct.new(
      :primary_source,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SourceType
    #
    module SourceType
      # No documentation available.
      #
      OWNED = "OWNED"

      # No documentation available.
      #
      ENTITLED = "ENTITLED"
    end

    # @!attribute flow_arn
    #   The ARN of the flow that you want to start.
    #
    #   @return [String]
    #
    StartFlowInput = ::Struct.new(
      :flow_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute flow_arn
    #   The ARN of the flow that you started.
    #
    #   @return [String]
    #
    # @!attribute status
    #   The status of the flow when the StartFlow process begins.
    #
    #   Enum, one of: ["STANDBY", "ACTIVE", "UPDATING", "DELETING", "STARTING", "STOPPING", "ERROR"]
    #
    #   @return [String]
    #
    StartFlowOutput = ::Struct.new(
      :flow_arn,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for State
    #
    module State
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # Includes enum constants for Status
    #
    module Status
      # No documentation available.
      #
      STANDBY = "STANDBY"

      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      UPDATING = "UPDATING"

      # No documentation available.
      #
      DELETING = "DELETING"

      # No documentation available.
      #
      STARTING = "STARTING"

      # No documentation available.
      #
      STOPPING = "STOPPING"

      # No documentation available.
      #
      ERROR = "ERROR"
    end

    # @!attribute flow_arn
    #   The ARN of the flow that you want to stop.
    #
    #   @return [String]
    #
    StopFlowInput = ::Struct.new(
      :flow_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute flow_arn
    #   The ARN of the flow that you stopped.
    #
    #   @return [String]
    #
    # @!attribute status
    #   The status of the flow when the StopFlow process begins.
    #
    #   Enum, one of: ["STANDBY", "ACTIVE", "UPDATING", "DELETING", "STARTING", "STOPPING", "ERROR"]
    #
    #   @return [String]
    #
    StopFlowOutput = ::Struct.new(
      :flow_arn,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # The tags to add to the resource. A tag is an array of key-value pairs. Tag keys can have a maximum character length of 128 characters, and tag values can have a maximum length of 256 characters.
    #
    # @!attribute resource_arn
    #   The Amazon Resource Name (ARN) that identifies the AWS Elemental MediaConnect resource to which to add tags.
    #
    #   @return [String]
    #
    # @!attribute tags
    #   A map from tag keys to values. Tag keys can have a maximum character length of 128 characters, and tag values can have a maximum length of 256 characters.
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

    # Includes enum constants for Tcs
    #
    module Tcs
      # No documentation available.
      #
      SDR = "SDR"

      # No documentation available.
      #
      PQ = "PQ"

      # No documentation available.
      #
      HLG = "HLG"

      # No documentation available.
      #
      LINEAR = "LINEAR"

      # No documentation available.
      #
      BT2100LINPQ = "BT2100LINPQ"

      # No documentation available.
      #
      BT2100LINHLG = "BT2100LINHLG"

      # No documentation available.
      #
      ST2065_1 = "ST2065-1"

      # No documentation available.
      #
      ST428_1 = "ST428-1"

      # No documentation available.
      #
      DENSITY = "DENSITY"
    end

    # Exception raised by AWS Elemental MediaConnect. See the error message and documentation for the operation for more information on the cause of this exception.
    #
    # @!attribute message
    #   The error message returned by AWS Elemental MediaConnect.
    #
    #   @return [String]
    #
    TooManyRequestsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Attributes related to the transport stream that are used in a source or output.
    #
    # @!attribute cidr_allow_list
    #   The range of IP addresses that should be allowed to initiate output requests to this flow. These IP addresses should be in the form of a Classless Inter-Domain Routing (CIDR) block; for example, 10.0.0.0/16.
    #
    #   @return [Array<String>]
    #
    # @!attribute max_bitrate
    #   The smoothing max bitrate for RIST, RTP, and RTP-FEC streams.
    #
    #   @return [Integer]
    #
    # @!attribute max_latency
    #   The maximum latency in milliseconds. This parameter applies only to RIST-based, Zixi-based, and Fujitsu-based streams.
    #
    #   @return [Integer]
    #
    # @!attribute max_sync_buffer
    #   The size of the buffer (in milliseconds) to use to sync incoming source data.
    #
    #   @return [Integer]
    #
    # @!attribute min_latency
    #   The minimum latency in milliseconds for SRT-based streams. In streams that use the SRT protocol, this value that you set on your MediaConnect source or output represents the minimal potential latency of that connection. The latency of the stream is set to the highest number between the sender’s minimum latency and the receiver’s minimum latency.
    #
    #   @return [Integer]
    #
    # @!attribute protocol
    #   The protocol that is used by the source or output.
    #
    #   Enum, one of: ["zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "fujitsu-qos"]
    #
    #   @return [String]
    #
    # @!attribute remote_id
    #   The remote ID for the Zixi-pull stream.
    #
    #   @return [String]
    #
    # @!attribute sender_control_port
    #   The port that the flow uses to send outbound requests to initiate connection with the sender.
    #
    #   @return [Integer]
    #
    # @!attribute sender_ip_address
    #   The IP address that the flow communicates with to initiate connection with the sender.
    #
    #   @return [String]
    #
    # @!attribute smoothing_latency
    #   The smoothing latency in milliseconds for RIST, RTP, and RTP-FEC streams.
    #
    #   @return [Integer]
    #
    # @!attribute stream_id
    #   The stream ID that you want to use for this transport. This parameter applies only to Zixi-based streams.
    #
    #   @return [String]
    #
    Transport = ::Struct.new(
      :cidr_allow_list,
      :max_bitrate,
      :max_latency,
      :max_sync_buffer,
      :min_latency,
      :protocol,
      :remote_id,
      :sender_control_port,
      :sender_ip_address,
      :smoothing_latency,
      :stream_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_bitrate ||= 0
        self.max_latency ||= 0
        self.max_sync_buffer ||= 0
        self.min_latency ||= 0
        self.sender_control_port ||= 0
        self.smoothing_latency ||= 0
      end
    end

    # @!attribute resource_arn
    #   The Amazon Resource Name (ARN) that identifies the AWS Elemental MediaConnect resource from which to delete tags.
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   The keys of the tags to be removed.
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

    # Information about the encryption of the flow.
    #
    # @!attribute algorithm
    #   The type of algorithm that is used for the encryption (such as aes128, aes192, or aes256).
    #
    #   Enum, one of: ["aes128", "aes192", "aes256"]
    #
    #   @return [String]
    #
    # @!attribute constant_initialization_vector
    #   A 128-bit, 16-byte hex value represented by a 32-character string, to be used with the key for encrypting content. This parameter is not valid for static key encryption.
    #
    #   @return [String]
    #
    # @!attribute device_id
    #   The value of one of the devices that you configured with your digital rights management (DRM) platform key provider. This parameter is required for SPEKE encryption and is not valid for static key encryption.
    #
    #   @return [String]
    #
    # @!attribute key_type
    #   The type of key that is used for the encryption. If no keyType is provided, the service will use the default setting (static-key).
    #
    #   Enum, one of: ["speke", "static-key", "srt-password"]
    #
    #   @return [String]
    #
    # @!attribute region
    #   The AWS Region that the API Gateway proxy endpoint was created in. This parameter is required for SPEKE encryption and is not valid for static key encryption.
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   An identifier for the content. The service sends this value to the key server to identify the current endpoint. The resource ID is also known as the content ID. This parameter is required for SPEKE encryption and is not valid for static key encryption.
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   The ARN of the role that you created during setup (when you set up AWS Elemental MediaConnect as a trusted entity).
    #
    #   @return [String]
    #
    # @!attribute secret_arn
    #   The ARN of the secret that you created in AWS Secrets Manager to store the encryption key. This parameter is required for static key encryption and is not valid for SPEKE encryption.
    #
    #   @return [String]
    #
    # @!attribute url
    #   The URL from the API Gateway proxy that you set up to talk to your key server. This parameter is required for SPEKE encryption and is not valid for static key encryption.
    #
    #   @return [String]
    #
    UpdateEncryption = ::Struct.new(
      :algorithm,
      :constant_initialization_vector,
      :device_id,
      :key_type,
      :region,
      :resource_id,
      :role_arn,
      :secret_arn,
      :url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # The settings for source failover.
    #
    # @!attribute failover_mode
    #   The type of failover you choose for this flow. MERGE combines the source streams into a single stream, allowing graceful recovery from any single-source loss. FAILOVER allows switching between different streams.
    #
    #   Enum, one of: ["MERGE", "FAILOVER"]
    #
    #   @return [String]
    #
    # @!attribute recovery_window
    #   Recovery window time to look for dash-7 packets
    #
    #   @return [Integer]
    #
    # @!attribute source_priority
    #   The priority you want to assign to a source. You can have a primary stream and a backup stream or two equally prioritized streams.
    #
    #   @return [SourcePriority]
    #
    # @!attribute state
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    UpdateFailoverConfig = ::Struct.new(
      :failover_mode,
      :recovery_window,
      :source_priority,
      :state,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.recovery_window ||= 0
      end
    end

    # The entitlement fields that you want to update.
    #
    # @!attribute description
    #   A description of the entitlement. This description appears only on the AWS Elemental MediaConnect console and will not be seen by the subscriber or end user.
    #
    #   @return [String]
    #
    # @!attribute encryption
    #   The type of encryption that will be used on the output associated with this entitlement.
    #
    #   @return [UpdateEncryption]
    #
    # @!attribute entitlement_arn
    #   The ARN of the entitlement that you want to update.
    #
    #   @return [String]
    #
    # @!attribute entitlement_status
    #   An indication of whether you want to enable the entitlement to allow access, or disable it to stop streaming content to the subscriber’s flow temporarily. If you don’t specify the entitlementStatus field in your request, MediaConnect leaves the value unchanged.
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute flow_arn
    #   The flow that is associated with the entitlement that you want to update.
    #
    #   @return [String]
    #
    # @!attribute subscribers
    #   The AWS account IDs that you want to share your content with. The receiving accounts (subscribers) will be allowed to create their own flow using your content as the source.
    #
    #   @return [Array<String>]
    #
    UpdateFlowEntitlementInput = ::Struct.new(
      :description,
      :encryption,
      :entitlement_arn,
      :entitlement_status,
      :flow_arn,
      :subscribers,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute entitlement
    #   The new configuration of the entitlement that you updated.
    #
    #   @return [Entitlement]
    #
    # @!attribute flow_arn
    #   The ARN of the flow that this entitlement was granted on.
    #
    #   @return [String]
    #
    UpdateFlowEntitlementOutput = ::Struct.new(
      :entitlement,
      :flow_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # A request to update flow.
    #
    # @!attribute flow_arn
    #   The flow that you want to update.
    #
    #   @return [String]
    #
    # @!attribute source_failover_config
    #   The settings for source failover.
    #
    #   @return [UpdateFailoverConfig]
    #
    # @!attribute maintenance
    #   Update maintenance setting for a flow
    #
    #   @return [UpdateMaintenance]
    #
    UpdateFlowInput = ::Struct.new(
      :flow_arn,
      :source_failover_config,
      :maintenance,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # The fields that you want to update in the media stream.
    #
    # @!attribute attributes
    #   The attributes that you want to assign to the media stream.
    #
    #   @return [MediaStreamAttributesRequest]
    #
    # @!attribute clock_rate
    #   The sample rate (in Hz) for the stream. If the media stream type is video or ancillary data, set this value to 90000. If the media stream type is audio, set this value to either 48000 or 96000.
    #
    #   @return [Integer]
    #
    # @!attribute description
    #   Description
    #
    #   @return [String]
    #
    # @!attribute flow_arn
    #   The Amazon Resource Name (ARN) of the flow.
    #
    #   @return [String]
    #
    # @!attribute media_stream_name
    #   The name of the media stream that you want to update.
    #
    #   @return [String]
    #
    # @!attribute media_stream_type
    #   The type of media stream.
    #
    #   Enum, one of: ["video", "audio", "ancillary-data"]
    #
    #   @return [String]
    #
    # @!attribute video_format
    #   The resolution of the video.
    #
    #   @return [String]
    #
    UpdateFlowMediaStreamInput = ::Struct.new(
      :attributes,
      :clock_rate,
      :description,
      :flow_arn,
      :media_stream_name,
      :media_stream_type,
      :video_format,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.clock_rate ||= 0
      end
    end

    # @!attribute flow_arn
    #   The ARN of the flow that is associated with the media stream that you updated.
    #
    #   @return [String]
    #
    # @!attribute media_stream
    #   The media stream that you updated.
    #
    #   @return [MediaStream]
    #
    UpdateFlowMediaStreamOutput = ::Struct.new(
      :flow_arn,
      :media_stream,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute flow
    #   The settings for a flow, including its source, outputs, and entitlements.
    #
    #   @return [Flow]
    #
    UpdateFlowOperationOutput = ::Struct.new(
      :flow,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # The fields that you want to update in the output.
    #
    # @!attribute cidr_allow_list
    #   The range of IP addresses that should be allowed to initiate output requests to this flow. These IP addresses should be in the form of a Classless Inter-Domain Routing (CIDR) block; for example, 10.0.0.0/16.
    #
    #   @return [Array<String>]
    #
    # @!attribute description
    #   A description of the output. This description appears only on the AWS Elemental MediaConnect console and will not be seen by the end user.
    #
    #   @return [String]
    #
    # @!attribute destination
    #   The IP address where you want to send the output.
    #
    #   @return [String]
    #
    # @!attribute encryption
    #   The type of key used for the encryption. If no keyType is provided, the service will use the default setting (static-key).
    #
    #   @return [UpdateEncryption]
    #
    # @!attribute flow_arn
    #   The flow that is associated with the output that you want to update.
    #
    #   @return [String]
    #
    # @!attribute max_latency
    #   The maximum latency in milliseconds. This parameter applies only to RIST-based, Zixi-based, and Fujitsu-based streams.
    #
    #   @return [Integer]
    #
    # @!attribute media_stream_output_configurations
    #   The media streams that are associated with the output, and the parameters for those associations.
    #
    #   @return [Array<MediaStreamOutputConfigurationRequest>]
    #
    # @!attribute min_latency
    #   The minimum latency in milliseconds for SRT-based streams. In streams that use the SRT protocol, this value that you set on your MediaConnect source or output represents the minimal potential latency of that connection. The latency of the stream is set to the highest number between the sender’s minimum latency and the receiver’s minimum latency.
    #
    #   @return [Integer]
    #
    # @!attribute output_arn
    #   The ARN of the output that you want to update.
    #
    #   @return [String]
    #
    # @!attribute port
    #   The port to use when content is distributed to this output.
    #
    #   @return [Integer]
    #
    # @!attribute protocol
    #   The protocol to use for the output.
    #
    #   Enum, one of: ["zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "fujitsu-qos"]
    #
    #   @return [String]
    #
    # @!attribute remote_id
    #   The remote ID for the Zixi-pull stream.
    #
    #   @return [String]
    #
    # @!attribute sender_control_port
    #   The port that the flow uses to send outbound requests to initiate connection with the sender.
    #
    #   @return [Integer]
    #
    # @!attribute sender_ip_address
    #   The IP address that the flow communicates with to initiate connection with the sender.
    #
    #   @return [String]
    #
    # @!attribute smoothing_latency
    #   The smoothing latency in milliseconds for RIST, RTP, and RTP-FEC streams.
    #
    #   @return [Integer]
    #
    # @!attribute stream_id
    #   The stream ID that you want to use for this transport. This parameter applies only to Zixi-based streams.
    #
    #   @return [String]
    #
    # @!attribute vpc_interface_attachment
    #   The name of the VPC interface attachment to use for this output.
    #
    #   @return [VpcInterfaceAttachment]
    #
    UpdateFlowOutputInput = ::Struct.new(
      :cidr_allow_list,
      :description,
      :destination,
      :encryption,
      :flow_arn,
      :max_latency,
      :media_stream_output_configurations,
      :min_latency,
      :output_arn,
      :port,
      :protocol,
      :remote_id,
      :sender_control_port,
      :sender_ip_address,
      :smoothing_latency,
      :stream_id,
      :vpc_interface_attachment,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_latency ||= 0
        self.min_latency ||= 0
        self.port ||= 0
        self.sender_control_port ||= 0
        self.smoothing_latency ||= 0
      end
    end

    # @!attribute flow_arn
    #   The ARN of the flow that is associated with the updated output.
    #
    #   @return [String]
    #
    # @!attribute output
    #   The new settings of the output that you updated.
    #
    #   @return [Output]
    #
    UpdateFlowOutputOutput = ::Struct.new(
      :flow_arn,
      :output,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # A request to update the source of a flow.
    #
    # @!attribute decryption
    #   The type of encryption used on the content ingested from this source.
    #
    #   @return [UpdateEncryption]
    #
    # @!attribute description
    #   A description for the source. This value is not used or seen outside of the current AWS Elemental MediaConnect account.
    #
    #   @return [String]
    #
    # @!attribute entitlement_arn
    #   The ARN of the entitlement that allows you to subscribe to this flow. The entitlement is set by the flow originator, and the ARN is generated as part of the originator's flow.
    #
    #   @return [String]
    #
    # @!attribute flow_arn
    #   The flow that is associated with the source that you want to update.
    #
    #   @return [String]
    #
    # @!attribute ingest_port
    #   The port that the flow will be listening on for incoming content.
    #
    #   @return [Integer]
    #
    # @!attribute max_bitrate
    #   The smoothing max bitrate for RIST, RTP, and RTP-FEC streams.
    #
    #   @return [Integer]
    #
    # @!attribute max_latency
    #   The maximum latency in milliseconds. This parameter applies only to RIST-based, Zixi-based, and Fujitsu-based streams.
    #
    #   @return [Integer]
    #
    # @!attribute max_sync_buffer
    #   The size of the buffer (in milliseconds) to use to sync incoming source data.
    #
    #   @return [Integer]
    #
    # @!attribute media_stream_source_configurations
    #   The media streams that are associated with the source, and the parameters for those associations.
    #
    #   @return [Array<MediaStreamSourceConfigurationRequest>]
    #
    # @!attribute min_latency
    #   The minimum latency in milliseconds for SRT-based streams. In streams that use the SRT protocol, this value that you set on your MediaConnect source or output represents the minimal potential latency of that connection. The latency of the stream is set to the highest number between the sender’s minimum latency and the receiver’s minimum latency.
    #
    #   @return [Integer]
    #
    # @!attribute protocol
    #   The protocol that is used by the source.
    #
    #   Enum, one of: ["zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "fujitsu-qos"]
    #
    #   @return [String]
    #
    # @!attribute sender_control_port
    #   The port that the flow uses to send outbound requests to initiate connection with the sender.
    #
    #   @return [Integer]
    #
    # @!attribute sender_ip_address
    #   The IP address that the flow communicates with to initiate connection with the sender.
    #
    #   @return [String]
    #
    # @!attribute source_arn
    #   The ARN of the source that you want to update.
    #
    #   @return [String]
    #
    # @!attribute stream_id
    #   The stream ID that you want to use for this transport. This parameter applies only to Zixi-based streams.
    #
    #   @return [String]
    #
    # @!attribute vpc_interface_name
    #   The name of the VPC interface to use for this source.
    #
    #   @return [String]
    #
    # @!attribute whitelist_cidr
    #   The range of IP addresses that should be allowed to contribute content to your source. These IP addresses should be in the form of a Classless Inter-Domain Routing (CIDR) block; for example, 10.0.0.0/16.
    #
    #   @return [String]
    #
    UpdateFlowSourceInput = ::Struct.new(
      :decryption,
      :description,
      :entitlement_arn,
      :flow_arn,
      :ingest_port,
      :max_bitrate,
      :max_latency,
      :max_sync_buffer,
      :media_stream_source_configurations,
      :min_latency,
      :protocol,
      :sender_control_port,
      :sender_ip_address,
      :source_arn,
      :stream_id,
      :vpc_interface_name,
      :whitelist_cidr,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.ingest_port ||= 0
        self.max_bitrate ||= 0
        self.max_latency ||= 0
        self.max_sync_buffer ||= 0
        self.min_latency ||= 0
        self.sender_control_port ||= 0
      end
    end

    # @!attribute flow_arn
    #   The ARN of the flow that you want to update.
    #
    #   @return [String]
    #
    # @!attribute source
    #   The settings for the source of the flow.
    #
    #   @return [Source]
    #
    UpdateFlowSourceOutput = ::Struct.new(
      :flow_arn,
      :source,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Update maintenance setting for a flow
    #
    # @!attribute maintenance_day
    #   A day of a week when the maintenance will happen. use Monday/Tuesday/Wednesday/Thursday/Friday/Saturday/Sunday.
    #
    #   Enum, one of: ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
    #
    #   @return [String]
    #
    # @!attribute maintenance_scheduled_date
    #   A scheduled date in ISO UTC format when the maintenance will happen. Use YYYY-MM-DD format. Example: 2021-01-30.
    #
    #   @return [String]
    #
    # @!attribute maintenance_start_hour
    #   UTC time when the maintenance will happen. Use 24-hour HH:MM format. Minutes must be 00. Example: 13:00. The default value is 02:00.
    #
    #   @return [String]
    #
    UpdateMaintenance = ::Struct.new(
      :maintenance_day,
      :maintenance_scheduled_date,
      :maintenance_start_hour,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # The settings for a VPC Source.
    #
    # @!attribute name
    #   Immutable and has to be a unique against other VpcInterfaces in this Flow.
    #
    #   @return [String]
    #
    # @!attribute network_interface_ids
    #   IDs of the network interfaces created in customer's account by MediaConnect.
    #
    #   @return [Array<String>]
    #
    # @!attribute network_interface_type
    #   The type of network interface.
    #
    #   Enum, one of: ["ena", "efa"]
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   Role Arn MediaConnect can assumes to create ENIs in customer's account
    #
    #   @return [String]
    #
    # @!attribute security_group_ids
    #   Security Group IDs to be used on ENI.
    #
    #   @return [Array<String>]
    #
    # @!attribute subnet_id
    #   Subnet must be in the AZ of the Flow
    #
    #   @return [String]
    #
    VpcInterface = ::Struct.new(
      :name,
      :network_interface_ids,
      :network_interface_type,
      :role_arn,
      :security_group_ids,
      :subnet_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # The settings for attaching a VPC interface to an output.
    #
    # @!attribute vpc_interface_name
    #   The name of the VPC interface to use for this output.
    #
    #   @return [String]
    #
    VpcInterfaceAttachment = ::Struct.new(
      :vpc_interface_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Desired VPC Interface for a Flow
    #
    # @!attribute name
    #   The name of the VPC Interface. This value must be unique within the current flow.
    #
    #   @return [String]
    #
    # @!attribute network_interface_type
    #   The type of network interface. If this value is not included in the request, MediaConnect uses ENA as the networkInterfaceType.
    #
    #   Enum, one of: ["ena", "efa"]
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   Role Arn MediaConnect can assumes to create ENIs in customer's account
    #
    #   @return [String]
    #
    # @!attribute security_group_ids
    #   Security Group IDs to be used on ENI.
    #
    #   @return [Array<String>]
    #
    # @!attribute subnet_id
    #   Subnet must be in the AZ of the Flow
    #
    #   @return [String]
    #
    VpcInterfaceRequest = ::Struct.new(
      :name,
      :network_interface_type,
      :role_arn,
      :security_group_ids,
      :subnet_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
