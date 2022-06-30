# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::GroundStation
  module Types

    # Includes enum constants for AngleUnits
    #
    module AngleUnits
      # No documentation available.
      #
      DEGREE_ANGLE = "DEGREE_ANGLE"

      # No documentation available.
      #
      RADIAN = "RADIAN"
    end

    # <p>Details about an antenna demod decode <code>Config</code> used in a contact.</p>
    #
    # @!attribute output_node
    #   <p>Name of an antenna demod decode output node used in a contact.</p>
    #
    #   @return [String]
    #
    AntennaDemodDecodeDetails = ::Struct.new(
      :output_node,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about how AWS Ground Station should configure an
    #          antenna for downlink during a contact.</p>
    #
    # @!attribute spectrum_config
    #   <p>Object that describes a spectral <code>Config</code>.</p>
    #
    #   @return [SpectrumConfig]
    #
    AntennaDownlinkConfig = ::Struct.new(
      :spectrum_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about how AWS Ground Station should conﬁgure an antenna for downlink demod decode during a contact.</p>
    #
    # @!attribute spectrum_config
    #   <p>Information about the spectral <code>Config</code>.</p>
    #
    #   @return [SpectrumConfig]
    #
    # @!attribute demodulation_config
    #   <p>Information about the demodulation <code>Config</code>.</p>
    #
    #   @return [DemodulationConfig]
    #
    # @!attribute decode_config
    #   <p>Information about the decode <code>Config</code>.</p>
    #
    #   @return [DecodeConfig]
    #
    AntennaDownlinkDemodDecodeConfig = ::Struct.new(
      :spectrum_config,
      :demodulation_config,
      :decode_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the uplink <code>Config</code> of an antenna.</p>
    #
    # @!attribute transmit_disabled
    #   <p>Whether or not uplink transmit is disabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute spectrum_config
    #   <p>Information about the uplink spectral <code>Config</code>.</p>
    #
    #   @return [UplinkSpectrumConfig]
    #
    # @!attribute target_eirp
    #   <p>EIRP of the target.</p>
    #
    #   @return [Eirp]
    #
    AntennaUplinkConfig = ::Struct.new(
      :transmit_disabled,
      :spectrum_config,
      :target_eirp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for BandwidthUnits
    #
    module BandwidthUnits
      # No documentation available.
      #
      GHZ = "GHz"

      # No documentation available.
      #
      MHZ = "MHz"

      # No documentation available.
      #
      KHZ = "kHz"
    end

    # <p/>
    #
    # @!attribute contact_id
    #   <p>UUID of a contact.</p>
    #
    #   @return [String]
    #
    CancelContactInput = ::Struct.new(
      :contact_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p/>
    #
    # @!attribute contact_id
    #   <p>UUID of a contact.</p>
    #
    #   @return [String]
    #
    CancelContactOutput = ::Struct.new(
      :contact_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ConfigCapabilityType
    #
    module ConfigCapabilityType
      # No documentation available.
      #
      ANTENNA_DOWNLINK = "antenna-downlink"

      # No documentation available.
      #
      ANTENNA_DOWNLINK_DEMOD_DECODE = "antenna-downlink-demod-decode"

      # No documentation available.
      #
      ANTENNA_UPLINK = "antenna-uplink"

      # No documentation available.
      #
      DATAFLOW_ENDPOINT = "dataflow-endpoint"

      # No documentation available.
      #
      TRACKING = "tracking"

      # No documentation available.
      #
      UPLINK_ECHO = "uplink-echo"

      # No documentation available.
      #
      S3_RECORDING = "s3-recording"
    end

    # <p>Details for certain <code>Config</code> object types in a contact.</p>
    #
    class ConfigDetails < Hearth::Union
      # <p>Information about the endpoint details.</p>
      #
      class EndpointDetails < ConfigDetails
        def to_h
          { endpoint_details: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::GroundStation::Types::EndpointDetails #{__getobj__ || 'nil'}>"
        end
      end

      # <p>Details for antenna demod decode <code>Config</code> in a contact.</p>
      #
      class AntennaDemodDecodeDetails < ConfigDetails
        def to_h
          { antenna_demod_decode_details: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::GroundStation::Types::AntennaDemodDecodeDetails #{__getobj__ || 'nil'}>"
        end
      end

      # <p>Details for an S3 recording <code>Config</code> in a contact.</p>
      #
      class S3RecordingDetails < ConfigDetails
        def to_h
          { s3_recording_details: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::GroundStation::Types::S3RecordingDetails #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < ConfigDetails
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::GroundStation::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # <p>An item in a list of <code>Config</code> objects.</p>
    #
    # @!attribute config_id
    #   <p>UUID of a <code>Config</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute config_type
    #   <p>Type of a <code>Config</code>.</p>
    #
    #   Enum, one of: ["antenna-downlink", "antenna-downlink-demod-decode", "antenna-uplink", "dataflow-endpoint", "tracking", "uplink-echo", "s3-recording"]
    #
    #   @return [String]
    #
    # @!attribute config_arn
    #   <p>ARN of a <code>Config</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>Name of a <code>Config</code>.</p>
    #
    #   @return [String]
    #
    ConfigListItem = ::Struct.new(
      :config_id,
      :config_type,
      :config_arn,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Object containing the parameters of a <code>Config</code>.</p>
    #          <p>See the subtype definitions for what each type of <code>Config</code> contains.</p>
    #
    class ConfigTypeData < Hearth::Union
      # <p>Information about how AWS Ground Station should configure an antenna for downlink during a contact.</p>
      #
      class AntennaDownlinkConfig < ConfigTypeData
        def to_h
          { antenna_downlink_config: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::GroundStation::Types::AntennaDownlinkConfig #{__getobj__ || 'nil'}>"
        end
      end

      # <p>Object that determines whether tracking should be used during a contact executed with this <code>Config</code> in the mission profile. </p>
      #
      class TrackingConfig < ConfigTypeData
        def to_h
          { tracking_config: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::GroundStation::Types::TrackingConfig #{__getobj__ || 'nil'}>"
        end
      end

      # <p>Information about the dataflow endpoint <code>Config</code>.</p>
      #
      class DataflowEndpointConfig < ConfigTypeData
        def to_h
          { dataflow_endpoint_config: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::GroundStation::Types::DataflowEndpointConfig #{__getobj__ || 'nil'}>"
        end
      end

      # <p>Information about how AWS Ground Station should conﬁgure an antenna for downlink demod decode during a contact.</p>
      #
      class AntennaDownlinkDemodDecodeConfig < ConfigTypeData
        def to_h
          { antenna_downlink_demod_decode_config: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::GroundStation::Types::AntennaDownlinkDemodDecodeConfig #{__getobj__ || 'nil'}>"
        end
      end

      # <p>Information about how AWS Ground Station should conﬁgure an antenna for uplink during a contact.</p>
      #
      class AntennaUplinkConfig < ConfigTypeData
        def to_h
          { antenna_uplink_config: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::GroundStation::Types::AntennaUplinkConfig #{__getobj__ || 'nil'}>"
        end
      end

      # <p>Information about an uplink echo <code>Config</code>.</p>
      #          <p>Parameters from the <code>AntennaUplinkConfig</code>, corresponding to the specified <code>AntennaUplinkConfigArn</code>, are used when this <code>UplinkEchoConfig</code> is used in a contact.</p>
      #
      class UplinkEchoConfig < ConfigTypeData
        def to_h
          { uplink_echo_config: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::GroundStation::Types::UplinkEchoConfig #{__getobj__ || 'nil'}>"
        end
      end

      # <p>Information about an S3 recording <code>Config</code>.</p>
      #
      class S3RecordingConfig < ConfigTypeData
        def to_h
          { s3_recording_config: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::GroundStation::Types::S3RecordingConfig #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < ConfigTypeData
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::GroundStation::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # <p>Data describing a contact.</p>
    #
    # @!attribute contact_id
    #   <p>UUID of a contact.</p>
    #
    #   @return [String]
    #
    # @!attribute mission_profile_arn
    #   <p>ARN of a mission profile.</p>
    #
    #   @return [String]
    #
    # @!attribute satellite_arn
    #   <p>ARN of a satellite.</p>
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>Start time of a contact.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>End time of a contact.</p>
    #
    #   @return [Time]
    #
    # @!attribute pre_pass_start_time
    #   <p>Amount of time prior to contact start you’d like to receive a CloudWatch event indicating an upcoming pass.</p>
    #
    #   @return [Time]
    #
    # @!attribute post_pass_end_time
    #   <p>Amount of time after a contact ends that you’d like to receive a CloudWatch event indicating the pass has finished.</p>
    #
    #   @return [Time]
    #
    # @!attribute ground_station
    #   <p>Name of a ground station.</p>
    #
    #   @return [String]
    #
    # @!attribute contact_status
    #   <p>Status of a contact.</p>
    #
    #   Enum, one of: ["AVAILABLE", "AWS_CANCELLED", "AWS_FAILED", "CANCELLED", "CANCELLING", "COMPLETED", "FAILED", "FAILED_TO_SCHEDULE", "PASS", "POSTPASS", "PREPASS", "SCHEDULED", "SCHEDULING"]
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>Error message of a contact.</p>
    #
    #   @return [String]
    #
    # @!attribute maximum_elevation
    #   <p>Maximum elevation angle of a contact.</p>
    #
    #   @return [Elevation]
    #
    # @!attribute region
    #   <p>Region of a contact.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Tags assigned to a contact.</p>
    #
    #   @return [Hash<String, String>]
    #
    ContactData = ::Struct.new(
      :contact_id,
      :mission_profile_arn,
      :satellite_arn,
      :start_time,
      :end_time,
      :pre_pass_start_time,
      :post_pass_end_time,
      :ground_station,
      :contact_status,
      :error_message,
      :maximum_elevation,
      :region,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ContactStatus
    #
    module ContactStatus
      # No documentation available.
      #
      AVAILABLE = "AVAILABLE"

      # No documentation available.
      #
      AWS_CANCELLED = "AWS_CANCELLED"

      # No documentation available.
      #
      AWS_FAILED = "AWS_FAILED"

      # No documentation available.
      #
      CANCELLED = "CANCELLED"

      # No documentation available.
      #
      CANCELLING = "CANCELLING"

      # No documentation available.
      #
      COMPLETED = "COMPLETED"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      FAILED_TO_SCHEDULE = "FAILED_TO_SCHEDULE"

      # No documentation available.
      #
      PASS = "PASS"

      # No documentation available.
      #
      POSTPASS = "POSTPASS"

      # No documentation available.
      #
      PREPASS = "PREPASS"

      # No documentation available.
      #
      SCHEDULED = "SCHEDULED"

      # No documentation available.
      #
      SCHEDULING = "SCHEDULING"
    end

    # <p/>
    #
    # @!attribute name
    #   <p>Name of a <code>Config</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute config_data
    #   <p>Parameters of a <code>Config</code>.</p>
    #
    #   @return [ConfigTypeData]
    #
    # @!attribute tags
    #   <p>Tags assigned to a <code>Config</code>.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateConfigInput = ::Struct.new(
      :name,
      :config_data,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p/>
    #
    # @!attribute config_id
    #   <p>UUID of a <code>Config</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute config_type
    #   <p>Type of a <code>Config</code>.</p>
    #
    #   Enum, one of: ["antenna-downlink", "antenna-downlink-demod-decode", "antenna-uplink", "dataflow-endpoint", "tracking", "uplink-echo", "s3-recording"]
    #
    #   @return [String]
    #
    # @!attribute config_arn
    #   <p>ARN of a <code>Config</code>.</p>
    #
    #   @return [String]
    #
    CreateConfigOutput = ::Struct.new(
      :config_id,
      :config_type,
      :config_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p/>
    #
    # @!attribute endpoint_details
    #   <p>Endpoint details of each endpoint in the dataflow endpoint group.</p>
    #
    #   @return [Array<EndpointDetails>]
    #
    # @!attribute tags
    #   <p>Tags of a dataflow endpoint group.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateDataflowEndpointGroupInput = ::Struct.new(
      :endpoint_details,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p/>
    #
    # @!attribute dataflow_endpoint_group_id
    #   <p>UUID of a dataflow endpoint group.</p>
    #
    #   @return [String]
    #
    CreateDataflowEndpointGroupOutput = ::Struct.new(
      :dataflow_endpoint_group_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p/>
    #
    # @!attribute name
    #   <p>Name of a mission profile.</p>
    #
    #   @return [String]
    #
    # @!attribute contact_pre_pass_duration_seconds
    #   <p>Amount of time prior to contact start you’d like to receive a CloudWatch event indicating an upcoming pass.</p>
    #
    #   @return [Integer]
    #
    # @!attribute contact_post_pass_duration_seconds
    #   <p>Amount of time after a contact ends that you’d like to receive a CloudWatch event indicating the pass has finished.</p>
    #
    #   @return [Integer]
    #
    # @!attribute minimum_viable_contact_duration_seconds
    #   <p>Smallest amount of time in seconds that you’d like to see for an available contact. AWS Ground Station will not present you with contacts shorter than this duration.</p>
    #
    #   @return [Integer]
    #
    # @!attribute dataflow_edges
    #   <p>A list of lists of ARNs. Each list of ARNs is an edge, with a <i>from</i>
    #               <code>Config</code> and a <i>to</i>
    #               <code>Config</code>.</p>
    #
    #   @return [Array<Array<String>>]
    #
    # @!attribute tracking_config_arn
    #   <p>ARN of a tracking <code>Config</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Tags assigned to a mission profile.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateMissionProfileInput = ::Struct.new(
      :name,
      :contact_pre_pass_duration_seconds,
      :contact_post_pass_duration_seconds,
      :minimum_viable_contact_duration_seconds,
      :dataflow_edges,
      :tracking_config_arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p/>
    #
    # @!attribute mission_profile_id
    #   <p>UUID of a mission profile.</p>
    #
    #   @return [String]
    #
    CreateMissionProfileOutput = ::Struct.new(
      :mission_profile_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Criticality
    #
    module Criticality
      # No documentation available.
      #
      PREFERRED = "PREFERRED"

      # No documentation available.
      #
      REMOVED = "REMOVED"

      # No documentation available.
      #
      REQUIRED = "REQUIRED"
    end

    # <p>Information about a dataflow edge used in a contact.</p>
    #
    # @!attribute source
    #   <p>Dataflow details for the source side.</p>
    #
    #   @return [Source]
    #
    # @!attribute destination
    #   <p>Dataflow details for the destination side.</p>
    #
    #   @return [Destination]
    #
    # @!attribute error_message
    #   <p>Error message for a dataflow.</p>
    #
    #   @return [String]
    #
    DataflowDetail = ::Struct.new(
      :source,
      :destination,
      :error_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a dataflow endpoint.</p>
    #
    # @!attribute name
    #   <p>Name of a dataflow endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute address
    #   <p>Socket address of a dataflow endpoint.</p>
    #
    #   @return [SocketAddress]
    #
    # @!attribute status
    #   <p>Status of a dataflow endpoint.</p>
    #
    #   Enum, one of: ["created", "creating", "deleted", "deleting", "failed"]
    #
    #   @return [String]
    #
    # @!attribute mtu
    #   <p>Maximum transmission unit (MTU) size in bytes of a dataflow endpoint.</p>
    #
    #   @return [Integer]
    #
    DataflowEndpoint = ::Struct.new(
      :name,
      :address,
      :status,
      :mtu,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the dataflow endpoint <code>Config</code>.</p>
    #
    # @!attribute dataflow_endpoint_name
    #   <p>Name of a dataflow endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute dataflow_endpoint_region
    #   <p>Region of a dataflow endpoint.</p>
    #
    #   @return [String]
    #
    DataflowEndpointConfig = ::Struct.new(
      :dataflow_endpoint_name,
      :dataflow_endpoint_region,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Item in a list of <code>DataflowEndpoint</code> groups.</p>
    #
    # @!attribute dataflow_endpoint_group_id
    #   <p>UUID of a dataflow endpoint group.</p>
    #
    #   @return [String]
    #
    # @!attribute dataflow_endpoint_group_arn
    #   <p>ARN of a dataflow endpoint group.</p>
    #
    #   @return [String]
    #
    DataflowEndpointListItem = ::Struct.new(
      :dataflow_endpoint_group_id,
      :dataflow_endpoint_group_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the decode <code>Config</code>.</p>
    #
    # @!attribute unvalidated_json
    #   <p>Unvalidated JSON of a decode <code>Config</code>.</p>
    #
    #   @return [String]
    #
    DecodeConfig = ::Struct.new(
      :unvalidated_json,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p/>
    #
    # @!attribute config_id
    #   <p>UUID of a <code>Config</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute config_type
    #   <p>Type of a <code>Config</code>.</p>
    #
    #   Enum, one of: ["antenna-downlink", "antenna-downlink-demod-decode", "antenna-uplink", "dataflow-endpoint", "tracking", "uplink-echo", "s3-recording"]
    #
    #   @return [String]
    #
    DeleteConfigInput = ::Struct.new(
      :config_id,
      :config_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p/>
    #
    # @!attribute config_id
    #   <p>UUID of a <code>Config</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute config_type
    #   <p>Type of a <code>Config</code>.</p>
    #
    #   Enum, one of: ["antenna-downlink", "antenna-downlink-demod-decode", "antenna-uplink", "dataflow-endpoint", "tracking", "uplink-echo", "s3-recording"]
    #
    #   @return [String]
    #
    # @!attribute config_arn
    #   <p>ARN of a <code>Config</code>.</p>
    #
    #   @return [String]
    #
    DeleteConfigOutput = ::Struct.new(
      :config_id,
      :config_type,
      :config_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p/>
    #
    # @!attribute dataflow_endpoint_group_id
    #   <p>UUID of a dataflow endpoint group.</p>
    #
    #   @return [String]
    #
    DeleteDataflowEndpointGroupInput = ::Struct.new(
      :dataflow_endpoint_group_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p/>
    #
    # @!attribute dataflow_endpoint_group_id
    #   <p>UUID of a dataflow endpoint group.</p>
    #
    #   @return [String]
    #
    DeleteDataflowEndpointGroupOutput = ::Struct.new(
      :dataflow_endpoint_group_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p/>
    #
    # @!attribute mission_profile_id
    #   <p>UUID of a mission profile.</p>
    #
    #   @return [String]
    #
    DeleteMissionProfileInput = ::Struct.new(
      :mission_profile_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p/>
    #
    # @!attribute mission_profile_id
    #   <p>UUID of a mission profile.</p>
    #
    #   @return [String]
    #
    DeleteMissionProfileOutput = ::Struct.new(
      :mission_profile_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the demodulation <code>Config</code>.</p>
    #
    # @!attribute unvalidated_json
    #   <p>Unvalidated JSON of a demodulation <code>Config</code>.</p>
    #
    #   @return [String]
    #
    DemodulationConfig = ::Struct.new(
      :unvalidated_json,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Dependency encountered an error.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute parameter_name
    #   <p/>
    #
    #   @return [String]
    #
    DependencyException = ::Struct.new(
      :message,
      :parameter_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p/>
    #
    # @!attribute contact_id
    #   <p>UUID of a contact.</p>
    #
    #   @return [String]
    #
    DescribeContactInput = ::Struct.new(
      :contact_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p/>
    #
    # @!attribute contact_id
    #   <p>UUID of a contact.</p>
    #
    #   @return [String]
    #
    # @!attribute mission_profile_arn
    #   <p>ARN of a mission profile.</p>
    #
    #   @return [String]
    #
    # @!attribute satellite_arn
    #   <p>ARN of a satellite.</p>
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>Start time of a contact.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>End time of a contact.</p>
    #
    #   @return [Time]
    #
    # @!attribute pre_pass_start_time
    #   <p>Amount of time prior to contact start you’d like to receive a CloudWatch event indicating an upcoming pass.</p>
    #
    #   @return [Time]
    #
    # @!attribute post_pass_end_time
    #   <p>Amount of time after a contact ends that you’d like to receive a CloudWatch event indicating the pass has finished.</p>
    #
    #   @return [Time]
    #
    # @!attribute ground_station
    #   <p>Ground station for a contact.</p>
    #
    #   @return [String]
    #
    # @!attribute contact_status
    #   <p>Status of a contact.</p>
    #
    #   Enum, one of: ["AVAILABLE", "AWS_CANCELLED", "AWS_FAILED", "CANCELLED", "CANCELLING", "COMPLETED", "FAILED", "FAILED_TO_SCHEDULE", "PASS", "POSTPASS", "PREPASS", "SCHEDULED", "SCHEDULING"]
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>Error message for a contact.</p>
    #
    #   @return [String]
    #
    # @!attribute maximum_elevation
    #   <p>Maximum elevation angle of a contact.</p>
    #
    #   @return [Elevation]
    #
    # @!attribute tags
    #   <p>Tags assigned to a contact.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute region
    #   <p>Region of a contact.</p>
    #
    #   @return [String]
    #
    # @!attribute dataflow_list
    #   <p>List describing source and destination details for each dataflow edge.</p>
    #
    #   @return [Array<DataflowDetail>]
    #
    DescribeContactOutput = ::Struct.new(
      :contact_id,
      :mission_profile_arn,
      :satellite_arn,
      :start_time,
      :end_time,
      :pre_pass_start_time,
      :post_pass_end_time,
      :ground_station,
      :contact_status,
      :error_message,
      :maximum_elevation,
      :tags,
      :region,
      :dataflow_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Dataflow details for the destination side.</p>
    #
    # @!attribute config_type
    #   <p>Type of a <code>Config</code>.</p>
    #
    #   Enum, one of: ["antenna-downlink", "antenna-downlink-demod-decode", "antenna-uplink", "dataflow-endpoint", "tracking", "uplink-echo", "s3-recording"]
    #
    #   @return [String]
    #
    # @!attribute config_id
    #   <p>UUID of a <code>Config</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute config_details
    #   <p>Additional details for a <code>Config</code>, if type is dataflow endpoint or antenna demod decode.</p>
    #
    #   @return [ConfigDetails]
    #
    # @!attribute dataflow_destination_region
    #   <p>Region of a dataflow destination.</p>
    #
    #   @return [String]
    #
    Destination = ::Struct.new(
      :config_type,
      :config_id,
      :config_details,
      :dataflow_destination_region,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Object that represents EIRP.</p>
    #
    # @!attribute value
    #   <p>Value of an EIRP. Valid values are between 20.0 to 50.0 dBW.</p>
    #
    #   @return [Float]
    #
    # @!attribute units
    #   <p>Units of an EIRP.</p>
    #
    #   Enum, one of: ["dBW"]
    #
    #   @return [String]
    #
    Eirp = ::Struct.new(
      :value,
      :units,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EirpUnits
    #
    module EirpUnits
      # No documentation available.
      #
      DBW = "dBW"
    end

    # <p>Elevation angle of the satellite in the sky during a contact.</p>
    #
    # @!attribute value
    #   <p>Elevation angle value.</p>
    #
    #   @return [Float]
    #
    # @!attribute unit
    #   <p>Elevation angle units.</p>
    #
    #   Enum, one of: ["DEGREE_ANGLE", "RADIAN"]
    #
    #   @return [String]
    #
    Elevation = ::Struct.new(
      :value,
      :unit,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the endpoint details.</p>
    #
    # @!attribute security_details
    #   <p>Endpoint security details.</p>
    #
    #   @return [SecurityDetails]
    #
    # @!attribute endpoint
    #   <p>A dataflow endpoint.</p>
    #
    #   @return [DataflowEndpoint]
    #
    EndpointDetails = ::Struct.new(
      :security_details,
      :endpoint,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EndpointStatus
    #
    module EndpointStatus
      # No documentation available.
      #
      created = "created"

      # No documentation available.
      #
      creating = "creating"

      # No documentation available.
      #
      deleted = "deleted"

      # No documentation available.
      #
      deleting = "deleting"

      # No documentation available.
      #
      failed = "failed"
    end

    # <p>Object that describes the frequency.</p>
    #
    # @!attribute value
    #   <p>Frequency value. Valid values are between 2200 to 2300 MHz and 7750 to 8400 MHz for downlink and 2025 to 2120 MHz for uplink.</p>
    #
    #   @return [Float]
    #
    # @!attribute units
    #   <p>Frequency units.</p>
    #
    #   Enum, one of: ["GHz", "MHz", "kHz"]
    #
    #   @return [String]
    #
    Frequency = ::Struct.new(
      :value,
      :units,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Object that describes the frequency bandwidth. </p>
    #
    # @!attribute value
    #   <p>Frequency bandwidth value. AWS Ground Station currently has the following bandwidth limitations:</p>
    #               <ul>
    #               <li>
    #                  <p>For <code>AntennaDownlinkDemodDecodeconfig</code>, valid values are between 125 kHz to 650 MHz.</p>
    #               </li>
    #               <li>
    #                  <p>For <code>AntennaDownlinkconfig</code>, valid values are between 10 kHz to 54 MHz.</p>
    #               </li>
    #               <li>
    #                  <p>For <code>AntennaUplinkConfig</code>, valid values are between 10 kHz to 54 MHz.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Float]
    #
    # @!attribute units
    #   <p>Frequency bandwidth units.</p>
    #
    #   Enum, one of: ["GHz", "MHz", "kHz"]
    #
    #   @return [String]
    #
    FrequencyBandwidth = ::Struct.new(
      :value,
      :units,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FrequencyUnits
    #
    module FrequencyUnits
      # No documentation available.
      #
      GHZ = "GHz"

      # No documentation available.
      #
      MHZ = "MHz"

      # No documentation available.
      #
      KHZ = "kHz"
    end

    # <p/>
    #
    # @!attribute config_id
    #   <p>UUID of a <code>Config</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute config_type
    #   <p>Type of a <code>Config</code>.</p>
    #
    #   Enum, one of: ["antenna-downlink", "antenna-downlink-demod-decode", "antenna-uplink", "dataflow-endpoint", "tracking", "uplink-echo", "s3-recording"]
    #
    #   @return [String]
    #
    GetConfigInput = ::Struct.new(
      :config_id,
      :config_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p/>
    #
    # @!attribute config_id
    #   <p>UUID of a <code>Config</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute config_arn
    #   <p>ARN of a <code>Config</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>Name of a <code>Config</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute config_type
    #   <p>Type of a <code>Config</code>.</p>
    #
    #   Enum, one of: ["antenna-downlink", "antenna-downlink-demod-decode", "antenna-uplink", "dataflow-endpoint", "tracking", "uplink-echo", "s3-recording"]
    #
    #   @return [String]
    #
    # @!attribute config_data
    #   <p>Data elements in a <code>Config</code>.</p>
    #
    #   @return [ConfigTypeData]
    #
    # @!attribute tags
    #   <p>Tags assigned to a <code>Config</code>.</p>
    #
    #   @return [Hash<String, String>]
    #
    GetConfigOutput = ::Struct.new(
      :config_id,
      :config_arn,
      :name,
      :config_type,
      :config_data,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p/>
    #
    # @!attribute dataflow_endpoint_group_id
    #   <p>UUID of a dataflow endpoint group.</p>
    #
    #   @return [String]
    #
    GetDataflowEndpointGroupInput = ::Struct.new(
      :dataflow_endpoint_group_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p/>
    #
    # @!attribute dataflow_endpoint_group_id
    #   <p>UUID of a dataflow endpoint group.</p>
    #
    #   @return [String]
    #
    # @!attribute dataflow_endpoint_group_arn
    #   <p>ARN of a dataflow endpoint group.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoints_details
    #   <p>Details of a dataflow endpoint.</p>
    #
    #   @return [Array<EndpointDetails>]
    #
    # @!attribute tags
    #   <p>Tags assigned to a dataflow endpoint group.</p>
    #
    #   @return [Hash<String, String>]
    #
    GetDataflowEndpointGroupOutput = ::Struct.new(
      :dataflow_endpoint_group_id,
      :dataflow_endpoint_group_arn,
      :endpoints_details,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p/>
    #
    # @!attribute month
    #   <p>The month being requested, with a value of 1-12.</p>
    #
    #   @return [Integer]
    #
    # @!attribute year
    #   <p>The year being requested, in the format of YYYY.</p>
    #
    #   @return [Integer]
    #
    GetMinuteUsageInput = ::Struct.new(
      :month,
      :year,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p/>
    #
    # @!attribute is_reserved_minutes_customer
    #   <p>Returns whether or not an account has signed up for the reserved minutes pricing plan, specific to the month being requested.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute total_reserved_minute_allocation
    #   <p>Total number of reserved minutes allocated, specific to the month being requested.</p>
    #
    #   @return [Integer]
    #
    # @!attribute upcoming_minutes_scheduled
    #   <p>Upcoming minutes scheduled for an account, specific to the month being requested.</p>
    #
    #   @return [Integer]
    #
    # @!attribute total_scheduled_minutes
    #   <p>Total scheduled minutes for an account, specific to the month being requested.</p>
    #
    #   @return [Integer]
    #
    # @!attribute estimated_minutes_remaining
    #   <p>Estimated number of minutes remaining for an account, specific to the month being requested.</p>
    #
    #   @return [Integer]
    #
    GetMinuteUsageOutput = ::Struct.new(
      :is_reserved_minutes_customer,
      :total_reserved_minute_allocation,
      :upcoming_minutes_scheduled,
      :total_scheduled_minutes,
      :estimated_minutes_remaining,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p/>
    #
    # @!attribute mission_profile_id
    #   <p>UUID of a mission profile.</p>
    #
    #   @return [String]
    #
    GetMissionProfileInput = ::Struct.new(
      :mission_profile_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p/>
    #
    # @!attribute mission_profile_id
    #   <p>UUID of a mission profile.</p>
    #
    #   @return [String]
    #
    # @!attribute mission_profile_arn
    #   <p>ARN of a mission profile.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>Name of a mission profile.</p>
    #
    #   @return [String]
    #
    # @!attribute region
    #   <p>Region of a mission profile.</p>
    #
    #   @return [String]
    #
    # @!attribute contact_pre_pass_duration_seconds
    #   <p>Amount of time prior to contact start you’d like to receive a CloudWatch event indicating an upcoming pass.</p>
    #
    #   @return [Integer]
    #
    # @!attribute contact_post_pass_duration_seconds
    #   <p>Amount of time after a contact ends that you’d like to receive a CloudWatch event indicating the pass has finished.</p>
    #
    #   @return [Integer]
    #
    # @!attribute minimum_viable_contact_duration_seconds
    #   <p>Smallest amount of time in seconds that you’d like to see for an available contact. AWS Ground Station will not present you with contacts shorter than this duration.</p>
    #
    #   @return [Integer]
    #
    # @!attribute dataflow_edges
    #   <p>A list of lists of ARNs. Each list of ARNs is an edge, with a <i>from</i>
    #               <code>Config</code> and a <i>to</i>
    #               <code>Config</code>.</p>
    #
    #   @return [Array<Array<String>>]
    #
    # @!attribute tracking_config_arn
    #   <p>ARN of a tracking <code>Config</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Tags assigned to a mission profile.</p>
    #
    #   @return [Hash<String, String>]
    #
    GetMissionProfileOutput = ::Struct.new(
      :mission_profile_id,
      :mission_profile_arn,
      :name,
      :region,
      :contact_pre_pass_duration_seconds,
      :contact_post_pass_duration_seconds,
      :minimum_viable_contact_duration_seconds,
      :dataflow_edges,
      :tracking_config_arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p/>
    #
    # @!attribute satellite_id
    #   <p>UUID of a satellite.</p>
    #
    #   @return [String]
    #
    GetSatelliteInput = ::Struct.new(
      :satellite_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p/>
    #
    # @!attribute satellite_id
    #   <p>UUID of a satellite.</p>
    #
    #   @return [String]
    #
    # @!attribute satellite_arn
    #   <p>ARN of a satellite.</p>
    #
    #   @return [String]
    #
    # @!attribute norad_satellite_id
    #   <p>NORAD satellite ID number.</p>
    #
    #   @return [Integer]
    #
    # @!attribute ground_stations
    #   <p>A list of ground stations to which the satellite is on-boarded.</p>
    #
    #   @return [Array<String>]
    #
    GetSatelliteOutput = ::Struct.new(
      :satellite_id,
      :satellite_arn,
      :norad_satellite_id,
      :ground_stations,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.norad_satellite_id ||= 0
      end

    end

    # <p>Information about the ground station data.</p>
    #
    # @!attribute ground_station_id
    #   <p>UUID of a ground station.</p>
    #
    #   @return [String]
    #
    # @!attribute ground_station_name
    #   <p>Name of a ground station.</p>
    #
    #   @return [String]
    #
    # @!attribute region
    #   <p>Ground station Region.</p>
    #
    #   @return [String]
    #
    GroundStationData = ::Struct.new(
      :ground_station_id,
      :ground_station_name,
      :region,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>One or more parameters are not valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute parameter_name
    #   <p/>
    #
    #   @return [String]
    #
    InvalidParameterException = ::Struct.new(
      :message,
      :parameter_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p/>
    #
    # @!attribute max_results
    #   <p>Maximum number of <code>Configs</code> returned.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>Next token returned in the request of a previous <code>ListConfigs</code> call. Used to get the next page of results.</p>
    #
    #   @return [String]
    #
    ListConfigsInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p/>
    #
    # @!attribute next_token
    #   <p>Next token returned in the response of a previous <code>ListConfigs</code> call. Used to get the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute config_list
    #   <p>List of <code>Config</code> items.</p>
    #
    #   @return [Array<ConfigListItem>]
    #
    ListConfigsOutput = ::Struct.new(
      :next_token,
      :config_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p/>
    #
    # @!attribute max_results
    #   <p>Maximum number of contacts returned.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>Next token returned in the request of a previous <code>ListContacts</code> call. Used to get the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute status_list
    #   <p>Status of a contact reservation.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute start_time
    #   <p>Start time of a contact.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>End time of a contact.</p>
    #
    #   @return [Time]
    #
    # @!attribute ground_station
    #   <p>Name of a ground station.</p>
    #
    #   @return [String]
    #
    # @!attribute satellite_arn
    #   <p>ARN of a satellite.</p>
    #
    #   @return [String]
    #
    # @!attribute mission_profile_arn
    #   <p>ARN of a mission profile.</p>
    #
    #   @return [String]
    #
    ListContactsInput = ::Struct.new(
      :max_results,
      :next_token,
      :status_list,
      :start_time,
      :end_time,
      :ground_station,
      :satellite_arn,
      :mission_profile_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p/>
    #
    # @!attribute next_token
    #   <p>Next token returned in the response of a previous <code>ListContacts</code> call. Used to get the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute contact_list
    #   <p>List of contacts.</p>
    #
    #   @return [Array<ContactData>]
    #
    ListContactsOutput = ::Struct.new(
      :next_token,
      :contact_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p/>
    #
    # @!attribute max_results
    #   <p>Maximum number of dataflow endpoint groups returned.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>Next token returned in the request of a previous <code>ListDataflowEndpointGroups</code> call. Used to get the next page of results.</p>
    #
    #   @return [String]
    #
    ListDataflowEndpointGroupsInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p/>
    #
    # @!attribute next_token
    #   <p>Next token returned in the response of a previous <code>ListDataflowEndpointGroups</code> call. Used to get the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute dataflow_endpoint_group_list
    #   <p>A list of dataflow endpoint groups.</p>
    #
    #   @return [Array<DataflowEndpointListItem>]
    #
    ListDataflowEndpointGroupsOutput = ::Struct.new(
      :next_token,
      :dataflow_endpoint_group_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p/>
    #
    # @!attribute satellite_id
    #   <p>Satellite ID to retrieve on-boarded ground stations.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Maximum number of ground stations returned.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>Next token that can be supplied in the next call to get the next page of ground stations.</p>
    #
    #   @return [String]
    #
    ListGroundStationsInput = ::Struct.new(
      :satellite_id,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p/>
    #
    # @!attribute next_token
    #   <p>Next token that can be supplied in the next call to get the next page of ground stations.</p>
    #
    #   @return [String]
    #
    # @!attribute ground_station_list
    #   <p>List of ground stations.</p>
    #
    #   @return [Array<GroundStationData>]
    #
    ListGroundStationsOutput = ::Struct.new(
      :next_token,
      :ground_station_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p/>
    #
    # @!attribute max_results
    #   <p>Maximum number of mission profiles returned.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>Next token returned in the request of a previous <code>ListMissionProfiles</code> call. Used to get the next page of results.</p>
    #
    #   @return [String]
    #
    ListMissionProfilesInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p/>
    #
    # @!attribute next_token
    #   <p>Next token returned in the response of a previous <code>ListMissionProfiles</code> call. Used to get the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute mission_profile_list
    #   <p>List of mission profiles.</p>
    #
    #   @return [Array<MissionProfileListItem>]
    #
    ListMissionProfilesOutput = ::Struct.new(
      :next_token,
      :mission_profile_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p/>
    #
    # @!attribute max_results
    #   <p>Maximum number of satellites returned.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>Next token that can be supplied in the next call to get the next page of satellites.</p>
    #
    #   @return [String]
    #
    ListSatellitesInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p/>
    #
    # @!attribute next_token
    #   <p>Next token that can be supplied in the next call to get the next page of satellites.</p>
    #
    #   @return [String]
    #
    # @!attribute satellites
    #   <p>List of satellites.</p>
    #
    #   @return [Array<SatelliteListItem>]
    #
    ListSatellitesOutput = ::Struct.new(
      :next_token,
      :satellites,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p/>
    #
    # @!attribute resource_arn
    #   <p>ARN of a resource.</p>
    #
    #   @return [String]
    #
    ListTagsForResourceInput = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p/>
    #
    # @!attribute tags
    #   <p>Tags assigned to a resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Item in a list of mission profiles.</p>
    #
    # @!attribute mission_profile_id
    #   <p>UUID of a mission profile.</p>
    #
    #   @return [String]
    #
    # @!attribute mission_profile_arn
    #   <p>ARN of a mission profile.</p>
    #
    #   @return [String]
    #
    # @!attribute region
    #   <p>Region of a mission profile.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>Name of a mission profile.</p>
    #
    #   @return [String]
    #
    MissionProfileListItem = ::Struct.new(
      :mission_profile_id,
      :mission_profile_arn,
      :region,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Polarization
    #
    module Polarization
      # No documentation available.
      #
      LEFT_HAND = "LEFT_HAND"

      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      RIGHT_HAND = "RIGHT_HAND"
    end

    # <p/>
    #
    # @!attribute mission_profile_arn
    #   <p>ARN of a mission profile.</p>
    #
    #   @return [String]
    #
    # @!attribute satellite_arn
    #   <p>ARN of a satellite</p>
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>Start time of a contact.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>End time of a contact.</p>
    #
    #   @return [Time]
    #
    # @!attribute ground_station
    #   <p>Name of a ground station.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Tags assigned to a contact.</p>
    #
    #   @return [Hash<String, String>]
    #
    ReserveContactInput = ::Struct.new(
      :mission_profile_arn,
      :satellite_arn,
      :start_time,
      :end_time,
      :ground_station,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p/>
    #
    # @!attribute contact_id
    #   <p>UUID of a contact.</p>
    #
    #   @return [String]
    #
    ReserveContactOutput = ::Struct.new(
      :contact_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Account limits for this resource have been exceeded.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute parameter_name
    #   <p/>
    #
    #   @return [String]
    #
    ResourceLimitExceededException = ::Struct.new(
      :message,
      :parameter_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Resource was not found.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about an S3 recording <code>Config</code>.</p>
    #
    # @!attribute bucket_arn
    #   <p>ARN of the bucket to record to.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>ARN of the role Ground Station assumes to write data to the bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute prefix
    #   <p>S3 Key prefix to prefice data files.</p>
    #
    #   @return [String]
    #
    S3RecordingConfig = ::Struct.new(
      :bucket_arn,
      :role_arn,
      :prefix,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about an S3 recording <code>Config</code> used in a contact.</p>
    #
    # @!attribute bucket_arn
    #   <p>ARN of the bucket used.</p>
    #
    #   @return [String]
    #
    # @!attribute key_template
    #   <p>Template of the S3 key used.</p>
    #
    #   @return [String]
    #
    S3RecordingDetails = ::Struct.new(
      :bucket_arn,
      :key_template,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Item in a list of satellites.</p>
    #
    # @!attribute satellite_id
    #   <p>UUID of a satellite.</p>
    #
    #   @return [String]
    #
    # @!attribute satellite_arn
    #   <p>ARN of a satellite.</p>
    #
    #   @return [String]
    #
    # @!attribute norad_satellite_id
    #   <p>NORAD satellite ID number.</p>
    #
    #   @return [Integer]
    #
    # @!attribute ground_stations
    #   <p>A list of ground stations to which the satellite is on-boarded.</p>
    #
    #   @return [Array<String>]
    #
    SatelliteListItem = ::Struct.new(
      :satellite_id,
      :satellite_arn,
      :norad_satellite_id,
      :ground_stations,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.norad_satellite_id ||= 0
      end

    end

    # <p>Information about endpoints.</p>
    #
    # @!attribute subnet_ids
    #   <p>A list of subnets where AWS Ground Station places elastic network interfaces to send streams to your instances.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute security_group_ids
    #   <p>The security groups to attach to the elastic network interfaces.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute role_arn
    #   <p>ARN to a role needed for connecting streams to your instances. </p>
    #
    #   @return [String]
    #
    SecurityDetails = ::Struct.new(
      :subnet_ids,
      :security_group_ids,
      :role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the socket address.</p>
    #
    # @!attribute name
    #   <p>Name of a socket address.</p>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>Port of a socket address.</p>
    #
    #   @return [Integer]
    #
    SocketAddress = ::Struct.new(
      :name,
      :port,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Dataflow details for the source side.</p>
    #
    # @!attribute config_type
    #   <p>Type of a <code>Config</code>.</p>
    #
    #   Enum, one of: ["antenna-downlink", "antenna-downlink-demod-decode", "antenna-uplink", "dataflow-endpoint", "tracking", "uplink-echo", "s3-recording"]
    #
    #   @return [String]
    #
    # @!attribute config_id
    #   <p>UUID of a <code>Config</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute config_details
    #   <p>Additional details for a <code>Config</code>, if type is dataflow endpoint or antenna demod decode.</p>
    #
    #   @return [ConfigDetails]
    #
    # @!attribute dataflow_source_region
    #   <p>Region of a dataflow source.</p>
    #
    #   @return [String]
    #
    Source = ::Struct.new(
      :config_type,
      :config_id,
      :config_details,
      :dataflow_source_region,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Object that describes a spectral <code>Config</code>.</p>
    #
    # @!attribute center_frequency
    #   <p>Center frequency of a spectral <code>Config</code>. Valid values are between 2200 to 2300 MHz and 7750 to 8400 MHz for downlink and 2025 to 2120 MHz for uplink.</p>
    #
    #   @return [Frequency]
    #
    # @!attribute bandwidth
    #   <p>Bandwidth of a spectral <code>Config</code>. AWS Ground Station currently has the following bandwidth limitations:</p>
    #               <ul>
    #               <li>
    #                  <p>For <code>AntennaDownlinkDemodDecodeconfig</code>, valid values are between 125 kHz to 650 MHz.</p>
    #               </li>
    #               <li>
    #                  <p>For <code>AntennaDownlinkconfig</code> valid values are between 10 kHz to 54 MHz.</p>
    #               </li>
    #               <li>
    #                  <p>For <code>AntennaUplinkConfig</code>, valid values are between 10 kHz to 54 MHz.</p>
    #               </li>
    #            </ul>
    #
    #   @return [FrequencyBandwidth]
    #
    # @!attribute polarization
    #   <p>Polarization of a spectral <code>Config</code>. Capturing both <code>"RIGHT_HAND"</code> and <code>"LEFT_HAND"</code> polarization requires two separate configs.</p>
    #
    #   Enum, one of: ["LEFT_HAND", "NONE", "RIGHT_HAND"]
    #
    #   @return [String]
    #
    SpectrumConfig = ::Struct.new(
      :center_frequency,
      :bandwidth,
      :polarization,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p/>
    #
    # @!attribute resource_arn
    #   <p>ARN of a resource tag.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Tags assigned to a resource.</p>
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

    # <p/>
    #
    TagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Object that determines whether tracking should be used during a contact
    #          executed with this <code>Config</code> in the mission profile.</p>
    #
    # @!attribute autotrack
    #   <p>Current setting for autotrack.</p>
    #
    #   Enum, one of: ["PREFERRED", "REMOVED", "REQUIRED"]
    #
    #   @return [String]
    #
    TrackingConfig = ::Struct.new(
      :autotrack,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p/>
    #
    # @!attribute resource_arn
    #   <p>ARN of a resource.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>Keys of a resource tag.</p>
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

    # <p/>
    #
    UntagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p/>
    #
    # @!attribute config_id
    #   <p>UUID of a <code>Config</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>Name of a <code>Config</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute config_type
    #   <p>Type of a <code>Config</code>.</p>
    #
    #   Enum, one of: ["antenna-downlink", "antenna-downlink-demod-decode", "antenna-uplink", "dataflow-endpoint", "tracking", "uplink-echo", "s3-recording"]
    #
    #   @return [String]
    #
    # @!attribute config_data
    #   <p>Parameters of a <code>Config</code>.</p>
    #
    #   @return [ConfigTypeData]
    #
    UpdateConfigInput = ::Struct.new(
      :config_id,
      :name,
      :config_type,
      :config_data,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p/>
    #
    # @!attribute config_id
    #   <p>UUID of a <code>Config</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute config_type
    #   <p>Type of a <code>Config</code>.</p>
    #
    #   Enum, one of: ["antenna-downlink", "antenna-downlink-demod-decode", "antenna-uplink", "dataflow-endpoint", "tracking", "uplink-echo", "s3-recording"]
    #
    #   @return [String]
    #
    # @!attribute config_arn
    #   <p>ARN of a <code>Config</code>.</p>
    #
    #   @return [String]
    #
    UpdateConfigOutput = ::Struct.new(
      :config_id,
      :config_type,
      :config_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p/>
    #
    # @!attribute mission_profile_id
    #   <p>UUID of a mission profile.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>Name of a mission profile.</p>
    #
    #   @return [String]
    #
    # @!attribute contact_pre_pass_duration_seconds
    #   <p>Amount of time after a contact ends that you’d like to receive a CloudWatch event indicating the pass has finished.</p>
    #
    #   @return [Integer]
    #
    # @!attribute contact_post_pass_duration_seconds
    #   <p>Amount of time after a contact ends that you’d like to receive a CloudWatch event indicating the pass has finished.</p>
    #
    #   @return [Integer]
    #
    # @!attribute minimum_viable_contact_duration_seconds
    #   <p>Smallest amount of time in seconds that you’d like to see for an available contact. AWS Ground Station will not present you with contacts shorter than this duration.</p>
    #
    #   @return [Integer]
    #
    # @!attribute dataflow_edges
    #   <p>A list of lists of ARNs. Each list of ARNs is an edge, with a <i>from</i>
    #               <code>Config</code> and a <i>to</i>
    #               <code>Config</code>.</p>
    #
    #   @return [Array<Array<String>>]
    #
    # @!attribute tracking_config_arn
    #   <p>ARN of a tracking <code>Config</code>.</p>
    #
    #   @return [String]
    #
    UpdateMissionProfileInput = ::Struct.new(
      :mission_profile_id,
      :name,
      :contact_pre_pass_duration_seconds,
      :contact_post_pass_duration_seconds,
      :minimum_viable_contact_duration_seconds,
      :dataflow_edges,
      :tracking_config_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p/>
    #
    # @!attribute mission_profile_id
    #   <p>UUID of a mission profile.</p>
    #
    #   @return [String]
    #
    UpdateMissionProfileOutput = ::Struct.new(
      :mission_profile_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about an uplink echo <code>Config</code>.</p>
    #          <p>Parameters from the <code>AntennaUplinkConfig</code>, corresponding to the
    #          specified <code>AntennaUplinkConfigArn</code>, are used when this <code>UplinkEchoConfig</code>
    #          is used in a contact.</p>
    #
    # @!attribute enabled
    #   <p>Whether or not an uplink <code>Config</code> is enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute antenna_uplink_config_arn
    #   <p>ARN of an uplink <code>Config</code>.</p>
    #
    #   @return [String]
    #
    UplinkEchoConfig = ::Struct.new(
      :enabled,
      :antenna_uplink_config_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the uplink spectral <code>Config</code>.</p>
    #
    # @!attribute center_frequency
    #   <p>Center frequency of an uplink spectral <code>Config</code>. Valid values are between 2025 to 2120 MHz.</p>
    #
    #   @return [Frequency]
    #
    # @!attribute polarization
    #   <p>Polarization of an uplink spectral <code>Config</code>. Capturing both <code>"RIGHT_HAND"</code> and <code>"LEFT_HAND"</code> polarization requires two separate configs.</p>
    #
    #   Enum, one of: ["LEFT_HAND", "NONE", "RIGHT_HAND"]
    #
    #   @return [String]
    #
    UplinkSpectrumConfig = ::Struct.new(
      :center_frequency,
      :polarization,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
