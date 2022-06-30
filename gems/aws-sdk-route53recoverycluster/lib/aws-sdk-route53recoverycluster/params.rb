# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::Route53RecoveryCluster
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module Arns
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module EndpointTemporarilyUnavailableException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EndpointTemporarilyUnavailableException, context: context)
        type = Types::EndpointTemporarilyUnavailableException.new
        type.message = params[:message]
        type
      end
    end

    module GetRoutingControlStateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRoutingControlStateInput, context: context)
        type = Types::GetRoutingControlStateInput.new
        type.routing_control_arn = params[:routing_control_arn]
        type
      end
    end

    module GetRoutingControlStateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRoutingControlStateOutput, context: context)
        type = Types::GetRoutingControlStateOutput.new
        type.routing_control_arn = params[:routing_control_arn]
        type.routing_control_state = params[:routing_control_state]
        type.routing_control_name = params[:routing_control_name]
        type
      end
    end

    module InternalServerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerException, context: context)
        type = Types::InternalServerException.new
        type.message = params[:message]
        type.retry_after_seconds = params[:retry_after_seconds]
        type
      end
    end

    module ListRoutingControlsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRoutingControlsInput, context: context)
        type = Types::ListRoutingControlsInput.new
        type.control_panel_arn = params[:control_panel_arn]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListRoutingControlsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRoutingControlsOutput, context: context)
        type = Types::ListRoutingControlsOutput.new
        type.routing_controls = RoutingControls.build(params[:routing_controls], context: "#{context}[:routing_controls]") unless params[:routing_controls].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module RoutingControl
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RoutingControl, context: context)
        type = Types::RoutingControl.new
        type.control_panel_arn = params[:control_panel_arn]
        type.control_panel_name = params[:control_panel_name]
        type.routing_control_arn = params[:routing_control_arn]
        type.routing_control_name = params[:routing_control_name]
        type.routing_control_state = params[:routing_control_state]
        type
      end
    end

    module RoutingControls
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RoutingControl.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ServiceLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceLimitExceededException, context: context)
        type = Types::ServiceLimitExceededException.new
        type.message = params[:message]
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type.limit_code = params[:limit_code]
        type.service_code = params[:service_code]
        type
      end
    end

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.message = params[:message]
        type.retry_after_seconds = params[:retry_after_seconds]
        type
      end
    end

    module UpdateRoutingControlStateEntries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UpdateRoutingControlStateEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UpdateRoutingControlStateEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRoutingControlStateEntry, context: context)
        type = Types::UpdateRoutingControlStateEntry.new
        type.routing_control_arn = params[:routing_control_arn]
        type.routing_control_state = params[:routing_control_state]
        type
      end
    end

    module UpdateRoutingControlStateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRoutingControlStateInput, context: context)
        type = Types::UpdateRoutingControlStateInput.new
        type.routing_control_arn = params[:routing_control_arn]
        type.routing_control_state = params[:routing_control_state]
        type.safety_rules_to_override = Arns.build(params[:safety_rules_to_override], context: "#{context}[:safety_rules_to_override]") unless params[:safety_rules_to_override].nil?
        type
      end
    end

    module UpdateRoutingControlStateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRoutingControlStateOutput, context: context)
        type = Types::UpdateRoutingControlStateOutput.new
        type
      end
    end

    module UpdateRoutingControlStatesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRoutingControlStatesInput, context: context)
        type = Types::UpdateRoutingControlStatesInput.new
        type.update_routing_control_state_entries = UpdateRoutingControlStateEntries.build(params[:update_routing_control_state_entries], context: "#{context}[:update_routing_control_state_entries]") unless params[:update_routing_control_state_entries].nil?
        type.safety_rules_to_override = Arns.build(params[:safety_rules_to_override], context: "#{context}[:safety_rules_to_override]") unless params[:safety_rules_to_override].nil?
        type
      end
    end

    module UpdateRoutingControlStatesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRoutingControlStatesOutput, context: context)
        type = Types::UpdateRoutingControlStatesOutput.new
        type
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type.reason = params[:reason]
        type.fields = ValidationExceptionFieldList.build(params[:fields], context: "#{context}[:fields]") unless params[:fields].nil?
        type
      end
    end

    module ValidationExceptionField
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationExceptionField, context: context)
        type = Types::ValidationExceptionField.new
        type.name = params[:name]
        type.message = params[:message]
        type
      end
    end

    module ValidationExceptionFieldList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ValidationExceptionField.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

  end
end
