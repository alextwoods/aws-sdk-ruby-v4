# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Route53RecoveryCluster
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Arns
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class EndpointTemporarilyUnavailableException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EndpointTemporarilyUnavailableException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class GetRoutingControlStateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRoutingControlStateInput, context: context)
        Hearth::Validator.validate!(input[:routing_control_arn], ::String, context: "#{context}[:routing_control_arn]")
      end
    end

    class GetRoutingControlStateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRoutingControlStateOutput, context: context)
        Hearth::Validator.validate!(input[:routing_control_arn], ::String, context: "#{context}[:routing_control_arn]")
        Hearth::Validator.validate!(input[:routing_control_state], ::String, context: "#{context}[:routing_control_state]")
        Hearth::Validator.validate!(input[:routing_control_name], ::String, context: "#{context}[:routing_control_name]")
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:retry_after_seconds], ::Integer, context: "#{context}[:retry_after_seconds]")
      end
    end

    class ListRoutingControlsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRoutingControlsInput, context: context)
        Hearth::Validator.validate!(input[:control_panel_arn], ::String, context: "#{context}[:control_panel_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListRoutingControlsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRoutingControlsOutput, context: context)
        Validators::RoutingControls.validate!(input[:routing_controls], context: "#{context}[:routing_controls]") unless input[:routing_controls].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class RoutingControl
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RoutingControl, context: context)
        Hearth::Validator.validate!(input[:control_panel_arn], ::String, context: "#{context}[:control_panel_arn]")
        Hearth::Validator.validate!(input[:control_panel_name], ::String, context: "#{context}[:control_panel_name]")
        Hearth::Validator.validate!(input[:routing_control_arn], ::String, context: "#{context}[:routing_control_arn]")
        Hearth::Validator.validate!(input[:routing_control_name], ::String, context: "#{context}[:routing_control_name]")
        Hearth::Validator.validate!(input[:routing_control_state], ::String, context: "#{context}[:routing_control_state]")
      end
    end

    class RoutingControls
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RoutingControl.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ServiceLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:limit_code], ::String, context: "#{context}[:limit_code]")
        Hearth::Validator.validate!(input[:service_code], ::String, context: "#{context}[:service_code]")
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:retry_after_seconds], ::Integer, context: "#{context}[:retry_after_seconds]")
      end
    end

    class UpdateRoutingControlStateEntries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::UpdateRoutingControlStateEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UpdateRoutingControlStateEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRoutingControlStateEntry, context: context)
        Hearth::Validator.validate!(input[:routing_control_arn], ::String, context: "#{context}[:routing_control_arn]")
        Hearth::Validator.validate!(input[:routing_control_state], ::String, context: "#{context}[:routing_control_state]")
      end
    end

    class UpdateRoutingControlStateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRoutingControlStateInput, context: context)
        Hearth::Validator.validate!(input[:routing_control_arn], ::String, context: "#{context}[:routing_control_arn]")
        Hearth::Validator.validate!(input[:routing_control_state], ::String, context: "#{context}[:routing_control_state]")
        Validators::Arns.validate!(input[:safety_rules_to_override], context: "#{context}[:safety_rules_to_override]") unless input[:safety_rules_to_override].nil?
      end
    end

    class UpdateRoutingControlStateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRoutingControlStateOutput, context: context)
      end
    end

    class UpdateRoutingControlStatesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRoutingControlStatesInput, context: context)
        Validators::UpdateRoutingControlStateEntries.validate!(input[:update_routing_control_state_entries], context: "#{context}[:update_routing_control_state_entries]") unless input[:update_routing_control_state_entries].nil?
        Validators::Arns.validate!(input[:safety_rules_to_override], context: "#{context}[:safety_rules_to_override]") unless input[:safety_rules_to_override].nil?
      end
    end

    class UpdateRoutingControlStatesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRoutingControlStatesOutput, context: context)
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
        Validators::ValidationExceptionFieldList.validate!(input[:fields], context: "#{context}[:fields]") unless input[:fields].nil?
      end
    end

    class ValidationExceptionField
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationExceptionField, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ValidationExceptionFieldList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ValidationExceptionField.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

  end
end
