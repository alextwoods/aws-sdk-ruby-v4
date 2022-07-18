# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Route53RecoveryCluster
  module Types

    # <p>You don't have sufficient permissions to perform this action.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AccessDeniedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>There was a conflict with this request. Try again.</p>
    #
    # @!attribute message
    #   Description of the ConflictException error
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   Identifier of the resource in use
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   Type of the resource in use
    #
    #   @return [String]
    #
    ConflictException = ::Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The cluster endpoint isn't available. Try another cluster endpoint.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    EndpointTemporarilyUnavailableException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute routing_control_arn
    #   <p>The Amazon Resource Name (ARN) for the routing control that you want to get the state for.</p>
    #
    #   @return [String]
    #
    GetRoutingControlStateInput = ::Struct.new(
      :routing_control_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute routing_control_arn
    #   <p>The Amazon Resource Name (ARN) of the response.</p>
    #
    #   @return [String]
    #
    # @!attribute routing_control_state
    #   <p>The state of the routing control.</p>
    #
    #   Enum, one of: ["On", "Off"]
    #
    #   @return [String]
    #
    # @!attribute routing_control_name
    #   <p>The routing control name.</p>
    #
    #   @return [String]
    #
    GetRoutingControlStateOutput = ::Struct.new(
      :routing_control_arn,
      :routing_control_state,
      :routing_control_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>There was an unexpected error during processing of the request.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute retry_after_seconds
    #   Advice to clients on when the call can be safely retried
    #
    #   @return [Integer]
    #
    InternalServerException = ::Struct.new(
      :message,
      :retry_after_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.retry_after_seconds ||= 0
      end
    end

    # @!attribute control_panel_arn
    #   <p>The Amazon Resource Name (ARN) of the control panel of the routing controls to list.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The number of routing controls objects that you want to return with this call. The default value is 500.</p>
    #
    #   @return [Integer]
    #
    ListRoutingControlsInput = ::Struct.new(
      :control_panel_arn,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute routing_controls
    #   <p>The list of routing controls.</p>
    #
    #   @return [Array<RoutingControl>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    #
    #   @return [String]
    #
    ListRoutingControlsOutput = ::Struct.new(
      :routing_controls,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request references a routing control or control panel that was not found.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   Hypothetical resource identifier that was not found
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   Hypothetical resource type that was not found
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A routing control, which is a simple on/off switch that you
    # 			can use to route traffic to cells. When a routing control state is On, traffic flows to a cell. When
    # 			the state is Off, traffic does not flow. </p>
    #
    # @!attribute control_panel_arn
    #   <p>The Amazon Resource Name (ARN) of the control panel where the routing control is located.</p>
    #
    #   @return [String]
    #
    # @!attribute control_panel_name
    #   <p>The name of the control panel where the routing control is located.</p>
    #
    #   @return [String]
    #
    # @!attribute routing_control_arn
    #   <p>The Amazon Resource Name (ARN) of the routing control.</p>
    #
    #   @return [String]
    #
    # @!attribute routing_control_name
    #   <p>The name of the routing control.</p>
    #
    #   @return [String]
    #
    # @!attribute routing_control_state
    #   <p>The current state of the routing control. When a routing control state is On, traffic flows to a cell. When
    #   			the state is Off, traffic does not flow. </p>
    #
    #   Enum, one of: ["On", "Off"]
    #
    #   @return [String]
    #
    RoutingControl = ::Struct.new(
      :control_panel_arn,
      :control_panel_name,
      :routing_control_arn,
      :routing_control_name,
      :routing_control_state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RoutingControlState
    #
    module RoutingControlState
      # No documentation available.
      #
      On = "On"

      # No documentation available.
      #
      Off = "Off"
    end

    # <p>The request can't update that many routing control states at the same time. Try again with fewer routing control states.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The resource identifier of the limit that was exceeded.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The resource type of the limit that was exceeded.</p>
    #
    #   @return [String]
    #
    # @!attribute limit_code
    #   <p>The code of the limit that was exceeded.</p>
    #
    #   @return [String]
    #
    # @!attribute service_code
    #   <p>The service code of the limit that was exceeded.</p>
    #
    #   @return [String]
    #
    ServiceLimitExceededException = ::Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :limit_code,
      :service_code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request was denied because of request throttling.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute retry_after_seconds
    #   Advice to clients on when the call can be safely retried
    #
    #   @return [Integer]
    #
    ThrottlingException = ::Struct.new(
      :message,
      :retry_after_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.retry_after_seconds ||= 0
      end
    end

    # <p>A routing control state entry.</p>
    #
    # @!attribute routing_control_arn
    #   <p>The Amazon Resource Name (ARN) for a routing control state entry.</p>
    #
    #   @return [String]
    #
    # @!attribute routing_control_state
    #   <p>The routing control state in a set of routing control state entries.</p>
    #
    #   Enum, one of: ["On", "Off"]
    #
    #   @return [String]
    #
    UpdateRoutingControlStateEntry = ::Struct.new(
      :routing_control_arn,
      :routing_control_state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute routing_control_arn
    #   <p>The Amazon Resource Name (ARN) for the routing control that you want to update the state for.</p>
    #
    #   @return [String]
    #
    # @!attribute routing_control_state
    #   <p>The state of the routing control. You can set the value to be On or Off.</p>
    #
    #   Enum, one of: ["On", "Off"]
    #
    #   @return [String]
    #
    # @!attribute safety_rules_to_override
    #   <p>The Amazon Resource Names (ARNs) for the safety rules that you want to override when you're updating the state of
    #   			a routing control. You can override one safety rule or multiple safety rules by including one or more ARNs, separated
    #   			by commas.</p>
    #   		       <p>For more information, see <a href="https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.override-safety-rule.html">
    #   			Override safety rules to reroute traffic</a> in the Amazon Route 53 Application Recovery Controller Developer Guide.</p>
    #
    #   @return [Array<String>]
    #
    UpdateRoutingControlStateInput = ::Struct.new(
      :routing_control_arn,
      :routing_control_state,
      :safety_rules_to_override,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateRoutingControlStateOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute update_routing_control_state_entries
    #   <p>A set of routing control entries that you want to update.</p>
    #
    #   @return [Array<UpdateRoutingControlStateEntry>]
    #
    # @!attribute safety_rules_to_override
    #   <p>The Amazon Resource Names (ARNs) for the safety rules that you want to override when you're updating routing
    #   			control states. You can override one safety rule or multiple safety rules by including one or more ARNs, separated
    #   			by commas.</p>
    #   		       <p>For more information, see <a href="https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.override-safety-rule.html">
    #   			Override safety rules to reroute traffic</a> in the Amazon Route 53 Application Recovery Controller Developer Guide.</p>
    #
    #   @return [Array<String>]
    #
    UpdateRoutingControlStatesInput = ::Struct.new(
      :update_routing_control_state_entries,
      :safety_rules_to_override,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateRoutingControlStatesOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>There was a validation error on the request.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute reason
    #   Reason the request failed validation
    #
    #   Enum, one of: ["unknownOperation", "cannotParse", "fieldValidationFailed", "other"]
    #
    #   @return [String]
    #
    # @!attribute fields
    #   The fields that caused the error, if applicable
    #
    #   @return [Array<ValidationExceptionField>]
    #
    ValidationException = ::Struct.new(
      :message,
      :reason,
      :fields,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>There was a validation error on the request.</p>
    #
    # @!attribute name
    #   <p>The field that had the validation exception.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>Information about the validation exception.</p>
    #
    #   @return [String]
    #
    ValidationExceptionField = ::Struct.new(
      :name,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ValidationExceptionReason
    #
    module ValidationExceptionReason
      # No documentation available.
      #
      UNKNOWN_OPERATION = "unknownOperation"

      # No documentation available.
      #
      CANNOT_PARSE = "cannotParse"

      # No documentation available.
      #
      FIELD_VALIDATION_FAILED = "fieldValidationFailed"

      # No documentation available.
      #
      OTHER = "other"
    end

  end
end
