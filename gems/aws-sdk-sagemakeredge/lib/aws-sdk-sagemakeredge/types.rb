# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SagemakerEdge
  module Types

    # <p>Information required for edge device metrics.</p>
    #
    # @!attribute dimension
    #   <p>The dimension of metrics published.</p>
    #
    #   @return [String]
    #
    # @!attribute metric_name
    #   <p>Returns the name of the metric.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>Returns the value of the metric.</p>
    #
    #   @return [Float]
    #
    # @!attribute timestamp
    #   <p>Timestamp of when the metric was requested.</p>
    #
    #   @return [Time]
    #
    EdgeMetric = ::Struct.new(
      :dimension,
      :metric_name,
      :value,
      :timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.value ||= 0
      end

    end

    # @!attribute device_name
    #   <p>The unique name of the device you want to get the registration status from.</p>
    #
    #   @return [String]
    #
    # @!attribute device_fleet_name
    #   <p>The name of the fleet that the device belongs to.</p>
    #
    #   @return [String]
    #
    GetDeviceRegistrationInput = ::Struct.new(
      :device_name,
      :device_fleet_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute device_registration
    #   <p>Describes if the device is currently registered with SageMaker Edge Manager.</p>
    #
    #   @return [String]
    #
    # @!attribute cache_ttl
    #   <p>The amount of time, in seconds, that the registration status is stored on the device’s cache before it is refreshed.</p>
    #
    #   @return [String]
    #
    GetDeviceRegistrationOutput = ::Struct.new(
      :device_registration,
      :cache_ttl,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An internal failure occurred. Try your request again. If the problem
    #       persists, contact AWS customer support.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InternalServiceException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a model deployed on an edge device that is registered with SageMaker Edge Manager.</p>
    #
    # @!attribute model_name
    #   <p>The name of the model.</p>
    #
    #   @return [String]
    #
    # @!attribute model_version
    #   <p>The version of the model.</p>
    #
    #   @return [String]
    #
    # @!attribute latest_sample_time
    #   <p>The timestamp of the last data sample taken.</p>
    #
    #   @return [Time]
    #
    # @!attribute latest_inference
    #   <p>The timestamp of the last inference that was made.</p>
    #
    #   @return [Time]
    #
    # @!attribute model_metrics
    #   <p>Information required for model metrics.</p>
    #
    #   @return [Array<EdgeMetric>]
    #
    Model = ::Struct.new(
      :model_name,
      :model_version,
      :latest_sample_time,
      :latest_inference,
      :model_metrics,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute agent_metrics
    #   <p>For internal use. Returns a list of SageMaker Edge Manager agent operating metrics.</p>
    #
    #   @return [Array<EdgeMetric>]
    #
    # @!attribute models
    #   <p>Returns a list of models deployed on the the device.</p>
    #
    #   @return [Array<Model>]
    #
    # @!attribute agent_version
    #   <p>Returns the version of the agent.</p>
    #
    #   @return [String]
    #
    # @!attribute device_name
    #   <p>The unique name of the device.</p>
    #
    #   @return [String]
    #
    # @!attribute device_fleet_name
    #   <p>The name of the fleet that the device belongs to.</p>
    #
    #   @return [String]
    #
    SendHeartbeatInput = ::Struct.new(
      :agent_metrics,
      :models,
      :agent_version,
      :device_name,
      :device_fleet_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    SendHeartbeatOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
