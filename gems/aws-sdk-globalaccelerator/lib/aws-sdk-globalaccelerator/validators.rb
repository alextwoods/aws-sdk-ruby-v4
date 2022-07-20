# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::GlobalAccelerator
  module Validators

    class Accelerator
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Accelerator, context: context)
        Hearth::Validator.validate!(input[:accelerator_arn], ::String, context: "#{context}[:accelerator_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:ip_address_type], ::String, context: "#{context}[:ip_address_type]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        IpSets.validate!(input[:ip_sets], context: "#{context}[:ip_sets]") unless input[:ip_sets].nil?
        Hearth::Validator.validate!(input[:dns_name], ::String, context: "#{context}[:dns_name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
      end
    end

    class AcceleratorAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AcceleratorAttributes, context: context)
        Hearth::Validator.validate!(input[:flow_logs_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:flow_logs_enabled]")
        Hearth::Validator.validate!(input[:flow_logs_s3_bucket], ::String, context: "#{context}[:flow_logs_s3_bucket]")
        Hearth::Validator.validate!(input[:flow_logs_s3_prefix], ::String, context: "#{context}[:flow_logs_s3_prefix]")
      end
    end

    class AcceleratorNotDisabledException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AcceleratorNotDisabledException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AcceleratorNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AcceleratorNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Accelerators
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Accelerator.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AddCustomRoutingEndpointsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddCustomRoutingEndpointsInput, context: context)
        CustomRoutingEndpointConfigurations.validate!(input[:endpoint_configurations], context: "#{context}[:endpoint_configurations]") unless input[:endpoint_configurations].nil?
        Hearth::Validator.validate!(input[:endpoint_group_arn], ::String, context: "#{context}[:endpoint_group_arn]")
      end
    end

    class AddCustomRoutingEndpointsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddCustomRoutingEndpointsOutput, context: context)
        CustomRoutingEndpointDescriptions.validate!(input[:endpoint_descriptions], context: "#{context}[:endpoint_descriptions]") unless input[:endpoint_descriptions].nil?
        Hearth::Validator.validate!(input[:endpoint_group_arn], ::String, context: "#{context}[:endpoint_group_arn]")
      end
    end

    class AdvertiseByoipCidrInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdvertiseByoipCidrInput, context: context)
        Hearth::Validator.validate!(input[:cidr], ::String, context: "#{context}[:cidr]")
      end
    end

    class AdvertiseByoipCidrOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdvertiseByoipCidrOutput, context: context)
        ByoipCidr.validate!(input[:byoip_cidr], context: "#{context}[:byoip_cidr]") unless input[:byoip_cidr].nil?
      end
    end

    class AllowCustomRoutingTrafficInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AllowCustomRoutingTrafficInput, context: context)
        Hearth::Validator.validate!(input[:endpoint_group_arn], ::String, context: "#{context}[:endpoint_group_arn]")
        Hearth::Validator.validate!(input[:endpoint_id], ::String, context: "#{context}[:endpoint_id]")
        DestinationAddresses.validate!(input[:destination_addresses], context: "#{context}[:destination_addresses]") unless input[:destination_addresses].nil?
        DestinationPorts.validate!(input[:destination_ports], context: "#{context}[:destination_ports]") unless input[:destination_ports].nil?
        Hearth::Validator.validate!(input[:allow_all_traffic_to_endpoint], ::TrueClass, ::FalseClass, context: "#{context}[:allow_all_traffic_to_endpoint]")
      end
    end

    class AllowCustomRoutingTrafficOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AllowCustomRoutingTrafficOutput, context: context)
      end
    end

    class AssociatedEndpointGroupFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociatedEndpointGroupFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AssociatedListenerFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociatedListenerFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ByoipCidr
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ByoipCidr, context: context)
        Hearth::Validator.validate!(input[:cidr], ::String, context: "#{context}[:cidr]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        ByoipCidrEvents.validate!(input[:events], context: "#{context}[:events]") unless input[:events].nil?
      end
    end

    class ByoipCidrEvent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ByoipCidrEvent, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:timestamp], ::Time, context: "#{context}[:timestamp]")
      end
    end

    class ByoipCidrEvents
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ByoipCidrEvent.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ByoipCidrNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ByoipCidrNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ByoipCidrs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ByoipCidr.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CidrAuthorizationContext
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CidrAuthorizationContext, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:signature], ::String, context: "#{context}[:signature]")
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CreateAcceleratorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAcceleratorInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:ip_address_type], ::String, context: "#{context}[:ip_address_type]")
        IpAddresses.validate!(input[:ip_addresses], context: "#{context}[:ip_addresses]") unless input[:ip_addresses].nil?
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:idempotency_token], ::String, context: "#{context}[:idempotency_token]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateAcceleratorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAcceleratorOutput, context: context)
        Accelerator.validate!(input[:accelerator], context: "#{context}[:accelerator]") unless input[:accelerator].nil?
      end
    end

    class CreateCustomRoutingAcceleratorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCustomRoutingAcceleratorInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:ip_address_type], ::String, context: "#{context}[:ip_address_type]")
        IpAddresses.validate!(input[:ip_addresses], context: "#{context}[:ip_addresses]") unless input[:ip_addresses].nil?
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:idempotency_token], ::String, context: "#{context}[:idempotency_token]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateCustomRoutingAcceleratorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCustomRoutingAcceleratorOutput, context: context)
        CustomRoutingAccelerator.validate!(input[:accelerator], context: "#{context}[:accelerator]") unless input[:accelerator].nil?
      end
    end

    class CreateCustomRoutingEndpointGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCustomRoutingEndpointGroupInput, context: context)
        Hearth::Validator.validate!(input[:listener_arn], ::String, context: "#{context}[:listener_arn]")
        Hearth::Validator.validate!(input[:endpoint_group_region], ::String, context: "#{context}[:endpoint_group_region]")
        CustomRoutingDestinationConfigurations.validate!(input[:destination_configurations], context: "#{context}[:destination_configurations]") unless input[:destination_configurations].nil?
        Hearth::Validator.validate!(input[:idempotency_token], ::String, context: "#{context}[:idempotency_token]")
      end
    end

    class CreateCustomRoutingEndpointGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCustomRoutingEndpointGroupOutput, context: context)
        CustomRoutingEndpointGroup.validate!(input[:endpoint_group], context: "#{context}[:endpoint_group]") unless input[:endpoint_group].nil?
      end
    end

    class CreateCustomRoutingListenerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCustomRoutingListenerInput, context: context)
        Hearth::Validator.validate!(input[:accelerator_arn], ::String, context: "#{context}[:accelerator_arn]")
        PortRanges.validate!(input[:port_ranges], context: "#{context}[:port_ranges]") unless input[:port_ranges].nil?
        Hearth::Validator.validate!(input[:idempotency_token], ::String, context: "#{context}[:idempotency_token]")
      end
    end

    class CreateCustomRoutingListenerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCustomRoutingListenerOutput, context: context)
        CustomRoutingListener.validate!(input[:listener], context: "#{context}[:listener]") unless input[:listener].nil?
      end
    end

    class CreateEndpointGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEndpointGroupInput, context: context)
        Hearth::Validator.validate!(input[:listener_arn], ::String, context: "#{context}[:listener_arn]")
        Hearth::Validator.validate!(input[:endpoint_group_region], ::String, context: "#{context}[:endpoint_group_region]")
        EndpointConfigurations.validate!(input[:endpoint_configurations], context: "#{context}[:endpoint_configurations]") unless input[:endpoint_configurations].nil?
        Hearth::Validator.validate!(input[:traffic_dial_percentage], ::Float, context: "#{context}[:traffic_dial_percentage]")
        Hearth::Validator.validate!(input[:health_check_port], ::Integer, context: "#{context}[:health_check_port]")
        Hearth::Validator.validate!(input[:health_check_protocol], ::String, context: "#{context}[:health_check_protocol]")
        Hearth::Validator.validate!(input[:health_check_path], ::String, context: "#{context}[:health_check_path]")
        Hearth::Validator.validate!(input[:health_check_interval_seconds], ::Integer, context: "#{context}[:health_check_interval_seconds]")
        Hearth::Validator.validate!(input[:threshold_count], ::Integer, context: "#{context}[:threshold_count]")
        Hearth::Validator.validate!(input[:idempotency_token], ::String, context: "#{context}[:idempotency_token]")
        PortOverrides.validate!(input[:port_overrides], context: "#{context}[:port_overrides]") unless input[:port_overrides].nil?
      end
    end

    class CreateEndpointGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEndpointGroupOutput, context: context)
        EndpointGroup.validate!(input[:endpoint_group], context: "#{context}[:endpoint_group]") unless input[:endpoint_group].nil?
      end
    end

    class CreateListenerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateListenerInput, context: context)
        Hearth::Validator.validate!(input[:accelerator_arn], ::String, context: "#{context}[:accelerator_arn]")
        PortRanges.validate!(input[:port_ranges], context: "#{context}[:port_ranges]") unless input[:port_ranges].nil?
        Hearth::Validator.validate!(input[:protocol], ::String, context: "#{context}[:protocol]")
        Hearth::Validator.validate!(input[:client_affinity], ::String, context: "#{context}[:client_affinity]")
        Hearth::Validator.validate!(input[:idempotency_token], ::String, context: "#{context}[:idempotency_token]")
      end
    end

    class CreateListenerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateListenerOutput, context: context)
        Listener.validate!(input[:listener], context: "#{context}[:listener]") unless input[:listener].nil?
      end
    end

    class CustomRoutingAccelerator
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomRoutingAccelerator, context: context)
        Hearth::Validator.validate!(input[:accelerator_arn], ::String, context: "#{context}[:accelerator_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:ip_address_type], ::String, context: "#{context}[:ip_address_type]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        IpSets.validate!(input[:ip_sets], context: "#{context}[:ip_sets]") unless input[:ip_sets].nil?
        Hearth::Validator.validate!(input[:dns_name], ::String, context: "#{context}[:dns_name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
      end
    end

    class CustomRoutingAcceleratorAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomRoutingAcceleratorAttributes, context: context)
        Hearth::Validator.validate!(input[:flow_logs_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:flow_logs_enabled]")
        Hearth::Validator.validate!(input[:flow_logs_s3_bucket], ::String, context: "#{context}[:flow_logs_s3_bucket]")
        Hearth::Validator.validate!(input[:flow_logs_s3_prefix], ::String, context: "#{context}[:flow_logs_s3_prefix]")
      end
    end

    class CustomRoutingAccelerators
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CustomRoutingAccelerator.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CustomRoutingDestinationConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomRoutingDestinationConfiguration, context: context)
        Hearth::Validator.validate!(input[:from_port], ::Integer, context: "#{context}[:from_port]")
        Hearth::Validator.validate!(input[:to_port], ::Integer, context: "#{context}[:to_port]")
        CustomRoutingProtocols.validate!(input[:protocols], context: "#{context}[:protocols]") unless input[:protocols].nil?
      end
    end

    class CustomRoutingDestinationConfigurations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CustomRoutingDestinationConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CustomRoutingDestinationDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomRoutingDestinationDescription, context: context)
        Hearth::Validator.validate!(input[:from_port], ::Integer, context: "#{context}[:from_port]")
        Hearth::Validator.validate!(input[:to_port], ::Integer, context: "#{context}[:to_port]")
        Protocols.validate!(input[:protocols], context: "#{context}[:protocols]") unless input[:protocols].nil?
      end
    end

    class CustomRoutingDestinationDescriptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CustomRoutingDestinationDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CustomRoutingEndpointConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomRoutingEndpointConfiguration, context: context)
        Hearth::Validator.validate!(input[:endpoint_id], ::String, context: "#{context}[:endpoint_id]")
      end
    end

    class CustomRoutingEndpointConfigurations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CustomRoutingEndpointConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CustomRoutingEndpointDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomRoutingEndpointDescription, context: context)
        Hearth::Validator.validate!(input[:endpoint_id], ::String, context: "#{context}[:endpoint_id]")
      end
    end

    class CustomRoutingEndpointDescriptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CustomRoutingEndpointDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CustomRoutingEndpointGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomRoutingEndpointGroup, context: context)
        Hearth::Validator.validate!(input[:endpoint_group_arn], ::String, context: "#{context}[:endpoint_group_arn]")
        Hearth::Validator.validate!(input[:endpoint_group_region], ::String, context: "#{context}[:endpoint_group_region]")
        CustomRoutingDestinationDescriptions.validate!(input[:destination_descriptions], context: "#{context}[:destination_descriptions]") unless input[:destination_descriptions].nil?
        CustomRoutingEndpointDescriptions.validate!(input[:endpoint_descriptions], context: "#{context}[:endpoint_descriptions]") unless input[:endpoint_descriptions].nil?
      end
    end

    class CustomRoutingEndpointGroups
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CustomRoutingEndpointGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CustomRoutingListener
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomRoutingListener, context: context)
        Hearth::Validator.validate!(input[:listener_arn], ::String, context: "#{context}[:listener_arn]")
        PortRanges.validate!(input[:port_ranges], context: "#{context}[:port_ranges]") unless input[:port_ranges].nil?
      end
    end

    class CustomRoutingListeners
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CustomRoutingListener.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CustomRoutingProtocols
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DeleteAcceleratorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAcceleratorInput, context: context)
        Hearth::Validator.validate!(input[:accelerator_arn], ::String, context: "#{context}[:accelerator_arn]")
      end
    end

    class DeleteAcceleratorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAcceleratorOutput, context: context)
      end
    end

    class DeleteCustomRoutingAcceleratorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCustomRoutingAcceleratorInput, context: context)
        Hearth::Validator.validate!(input[:accelerator_arn], ::String, context: "#{context}[:accelerator_arn]")
      end
    end

    class DeleteCustomRoutingAcceleratorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCustomRoutingAcceleratorOutput, context: context)
      end
    end

    class DeleteCustomRoutingEndpointGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCustomRoutingEndpointGroupInput, context: context)
        Hearth::Validator.validate!(input[:endpoint_group_arn], ::String, context: "#{context}[:endpoint_group_arn]")
      end
    end

    class DeleteCustomRoutingEndpointGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCustomRoutingEndpointGroupOutput, context: context)
      end
    end

    class DeleteCustomRoutingListenerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCustomRoutingListenerInput, context: context)
        Hearth::Validator.validate!(input[:listener_arn], ::String, context: "#{context}[:listener_arn]")
      end
    end

    class DeleteCustomRoutingListenerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCustomRoutingListenerOutput, context: context)
      end
    end

    class DeleteEndpointGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEndpointGroupInput, context: context)
        Hearth::Validator.validate!(input[:endpoint_group_arn], ::String, context: "#{context}[:endpoint_group_arn]")
      end
    end

    class DeleteEndpointGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEndpointGroupOutput, context: context)
      end
    end

    class DeleteListenerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteListenerInput, context: context)
        Hearth::Validator.validate!(input[:listener_arn], ::String, context: "#{context}[:listener_arn]")
      end
    end

    class DeleteListenerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteListenerOutput, context: context)
      end
    end

    class DenyCustomRoutingTrafficInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DenyCustomRoutingTrafficInput, context: context)
        Hearth::Validator.validate!(input[:endpoint_group_arn], ::String, context: "#{context}[:endpoint_group_arn]")
        Hearth::Validator.validate!(input[:endpoint_id], ::String, context: "#{context}[:endpoint_id]")
        DestinationAddresses.validate!(input[:destination_addresses], context: "#{context}[:destination_addresses]") unless input[:destination_addresses].nil?
        DestinationPorts.validate!(input[:destination_ports], context: "#{context}[:destination_ports]") unless input[:destination_ports].nil?
        Hearth::Validator.validate!(input[:deny_all_traffic_to_endpoint], ::TrueClass, ::FalseClass, context: "#{context}[:deny_all_traffic_to_endpoint]")
      end
    end

    class DenyCustomRoutingTrafficOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DenyCustomRoutingTrafficOutput, context: context)
      end
    end

    class DeprovisionByoipCidrInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeprovisionByoipCidrInput, context: context)
        Hearth::Validator.validate!(input[:cidr], ::String, context: "#{context}[:cidr]")
      end
    end

    class DeprovisionByoipCidrOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeprovisionByoipCidrOutput, context: context)
        ByoipCidr.validate!(input[:byoip_cidr], context: "#{context}[:byoip_cidr]") unless input[:byoip_cidr].nil?
      end
    end

    class DescribeAcceleratorAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAcceleratorAttributesInput, context: context)
        Hearth::Validator.validate!(input[:accelerator_arn], ::String, context: "#{context}[:accelerator_arn]")
      end
    end

    class DescribeAcceleratorAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAcceleratorAttributesOutput, context: context)
        AcceleratorAttributes.validate!(input[:accelerator_attributes], context: "#{context}[:accelerator_attributes]") unless input[:accelerator_attributes].nil?
      end
    end

    class DescribeAcceleratorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAcceleratorInput, context: context)
        Hearth::Validator.validate!(input[:accelerator_arn], ::String, context: "#{context}[:accelerator_arn]")
      end
    end

    class DescribeAcceleratorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAcceleratorOutput, context: context)
        Accelerator.validate!(input[:accelerator], context: "#{context}[:accelerator]") unless input[:accelerator].nil?
      end
    end

    class DescribeCustomRoutingAcceleratorAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCustomRoutingAcceleratorAttributesInput, context: context)
        Hearth::Validator.validate!(input[:accelerator_arn], ::String, context: "#{context}[:accelerator_arn]")
      end
    end

    class DescribeCustomRoutingAcceleratorAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCustomRoutingAcceleratorAttributesOutput, context: context)
        CustomRoutingAcceleratorAttributes.validate!(input[:accelerator_attributes], context: "#{context}[:accelerator_attributes]") unless input[:accelerator_attributes].nil?
      end
    end

    class DescribeCustomRoutingAcceleratorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCustomRoutingAcceleratorInput, context: context)
        Hearth::Validator.validate!(input[:accelerator_arn], ::String, context: "#{context}[:accelerator_arn]")
      end
    end

    class DescribeCustomRoutingAcceleratorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCustomRoutingAcceleratorOutput, context: context)
        CustomRoutingAccelerator.validate!(input[:accelerator], context: "#{context}[:accelerator]") unless input[:accelerator].nil?
      end
    end

    class DescribeCustomRoutingEndpointGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCustomRoutingEndpointGroupInput, context: context)
        Hearth::Validator.validate!(input[:endpoint_group_arn], ::String, context: "#{context}[:endpoint_group_arn]")
      end
    end

    class DescribeCustomRoutingEndpointGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCustomRoutingEndpointGroupOutput, context: context)
        CustomRoutingEndpointGroup.validate!(input[:endpoint_group], context: "#{context}[:endpoint_group]") unless input[:endpoint_group].nil?
      end
    end

    class DescribeCustomRoutingListenerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCustomRoutingListenerInput, context: context)
        Hearth::Validator.validate!(input[:listener_arn], ::String, context: "#{context}[:listener_arn]")
      end
    end

    class DescribeCustomRoutingListenerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCustomRoutingListenerOutput, context: context)
        CustomRoutingListener.validate!(input[:listener], context: "#{context}[:listener]") unless input[:listener].nil?
      end
    end

    class DescribeEndpointGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEndpointGroupInput, context: context)
        Hearth::Validator.validate!(input[:endpoint_group_arn], ::String, context: "#{context}[:endpoint_group_arn]")
      end
    end

    class DescribeEndpointGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEndpointGroupOutput, context: context)
        EndpointGroup.validate!(input[:endpoint_group], context: "#{context}[:endpoint_group]") unless input[:endpoint_group].nil?
      end
    end

    class DescribeListenerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeListenerInput, context: context)
        Hearth::Validator.validate!(input[:listener_arn], ::String, context: "#{context}[:listener_arn]")
      end
    end

    class DescribeListenerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeListenerOutput, context: context)
        Listener.validate!(input[:listener], context: "#{context}[:listener]") unless input[:listener].nil?
      end
    end

    class DestinationAddresses
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DestinationPortMapping
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DestinationPortMapping, context: context)
        Hearth::Validator.validate!(input[:accelerator_arn], ::String, context: "#{context}[:accelerator_arn]")
        SocketAddresses.validate!(input[:accelerator_socket_addresses], context: "#{context}[:accelerator_socket_addresses]") unless input[:accelerator_socket_addresses].nil?
        Hearth::Validator.validate!(input[:endpoint_group_arn], ::String, context: "#{context}[:endpoint_group_arn]")
        Hearth::Validator.validate!(input[:endpoint_id], ::String, context: "#{context}[:endpoint_id]")
        Hearth::Validator.validate!(input[:endpoint_group_region], ::String, context: "#{context}[:endpoint_group_region]")
        SocketAddress.validate!(input[:destination_socket_address], context: "#{context}[:destination_socket_address]") unless input[:destination_socket_address].nil?
        Hearth::Validator.validate!(input[:ip_address_type], ::String, context: "#{context}[:ip_address_type]")
        Hearth::Validator.validate!(input[:destination_traffic_state], ::String, context: "#{context}[:destination_traffic_state]")
      end
    end

    class DestinationPortMappings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DestinationPortMapping.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DestinationPorts
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::Integer, context: "#{context}[#{index}]")
        end
      end
    end

    class EndpointAlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EndpointAlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class EndpointConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EndpointConfiguration, context: context)
        Hearth::Validator.validate!(input[:endpoint_id], ::String, context: "#{context}[:endpoint_id]")
        Hearth::Validator.validate!(input[:weight], ::Integer, context: "#{context}[:weight]")
        Hearth::Validator.validate!(input[:client_ip_preservation_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:client_ip_preservation_enabled]")
      end
    end

    class EndpointConfigurations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EndpointConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EndpointDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EndpointDescription, context: context)
        Hearth::Validator.validate!(input[:endpoint_id], ::String, context: "#{context}[:endpoint_id]")
        Hearth::Validator.validate!(input[:weight], ::Integer, context: "#{context}[:weight]")
        Hearth::Validator.validate!(input[:health_state], ::String, context: "#{context}[:health_state]")
        Hearth::Validator.validate!(input[:health_reason], ::String, context: "#{context}[:health_reason]")
        Hearth::Validator.validate!(input[:client_ip_preservation_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:client_ip_preservation_enabled]")
      end
    end

    class EndpointDescriptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EndpointDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EndpointGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EndpointGroup, context: context)
        Hearth::Validator.validate!(input[:endpoint_group_arn], ::String, context: "#{context}[:endpoint_group_arn]")
        Hearth::Validator.validate!(input[:endpoint_group_region], ::String, context: "#{context}[:endpoint_group_region]")
        EndpointDescriptions.validate!(input[:endpoint_descriptions], context: "#{context}[:endpoint_descriptions]") unless input[:endpoint_descriptions].nil?
        Hearth::Validator.validate!(input[:traffic_dial_percentage], ::Float, context: "#{context}[:traffic_dial_percentage]")
        Hearth::Validator.validate!(input[:health_check_port], ::Integer, context: "#{context}[:health_check_port]")
        Hearth::Validator.validate!(input[:health_check_protocol], ::String, context: "#{context}[:health_check_protocol]")
        Hearth::Validator.validate!(input[:health_check_path], ::String, context: "#{context}[:health_check_path]")
        Hearth::Validator.validate!(input[:health_check_interval_seconds], ::Integer, context: "#{context}[:health_check_interval_seconds]")
        Hearth::Validator.validate!(input[:threshold_count], ::Integer, context: "#{context}[:threshold_count]")
        PortOverrides.validate!(input[:port_overrides], context: "#{context}[:port_overrides]") unless input[:port_overrides].nil?
      end
    end

    class EndpointGroupAlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EndpointGroupAlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class EndpointGroupNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EndpointGroupNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class EndpointGroups
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EndpointGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EndpointIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class EndpointNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EndpointNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class IncorrectCidrStateException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IncorrectCidrStateException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InternalServiceErrorException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServiceErrorException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidArgumentException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidArgumentException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidNextTokenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidNextTokenException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidPortRangeException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidPortRangeException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class IpAddresses
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class IpSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IpSet, context: context)
        Hearth::Validator.validate!(input[:ip_family], ::String, context: "#{context}[:ip_family]")
        IpAddresses.validate!(input[:ip_addresses], context: "#{context}[:ip_addresses]") unless input[:ip_addresses].nil?
      end
    end

    class IpSets
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          IpSet.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListAcceleratorsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAcceleratorsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAcceleratorsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAcceleratorsOutput, context: context)
        Accelerators.validate!(input[:accelerators], context: "#{context}[:accelerators]") unless input[:accelerators].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListByoipCidrsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListByoipCidrsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListByoipCidrsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListByoipCidrsOutput, context: context)
        ByoipCidrs.validate!(input[:byoip_cidrs], context: "#{context}[:byoip_cidrs]") unless input[:byoip_cidrs].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListCustomRoutingAcceleratorsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCustomRoutingAcceleratorsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListCustomRoutingAcceleratorsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCustomRoutingAcceleratorsOutput, context: context)
        CustomRoutingAccelerators.validate!(input[:accelerators], context: "#{context}[:accelerators]") unless input[:accelerators].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListCustomRoutingEndpointGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCustomRoutingEndpointGroupsInput, context: context)
        Hearth::Validator.validate!(input[:listener_arn], ::String, context: "#{context}[:listener_arn]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListCustomRoutingEndpointGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCustomRoutingEndpointGroupsOutput, context: context)
        CustomRoutingEndpointGroups.validate!(input[:endpoint_groups], context: "#{context}[:endpoint_groups]") unless input[:endpoint_groups].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListCustomRoutingListenersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCustomRoutingListenersInput, context: context)
        Hearth::Validator.validate!(input[:accelerator_arn], ::String, context: "#{context}[:accelerator_arn]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListCustomRoutingListenersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCustomRoutingListenersOutput, context: context)
        CustomRoutingListeners.validate!(input[:listeners], context: "#{context}[:listeners]") unless input[:listeners].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListCustomRoutingPortMappingsByDestinationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCustomRoutingPortMappingsByDestinationInput, context: context)
        Hearth::Validator.validate!(input[:endpoint_id], ::String, context: "#{context}[:endpoint_id]")
        Hearth::Validator.validate!(input[:destination_address], ::String, context: "#{context}[:destination_address]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListCustomRoutingPortMappingsByDestinationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCustomRoutingPortMappingsByDestinationOutput, context: context)
        DestinationPortMappings.validate!(input[:destination_port_mappings], context: "#{context}[:destination_port_mappings]") unless input[:destination_port_mappings].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListCustomRoutingPortMappingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCustomRoutingPortMappingsInput, context: context)
        Hearth::Validator.validate!(input[:accelerator_arn], ::String, context: "#{context}[:accelerator_arn]")
        Hearth::Validator.validate!(input[:endpoint_group_arn], ::String, context: "#{context}[:endpoint_group_arn]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListCustomRoutingPortMappingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCustomRoutingPortMappingsOutput, context: context)
        PortMappings.validate!(input[:port_mappings], context: "#{context}[:port_mappings]") unless input[:port_mappings].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListEndpointGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEndpointGroupsInput, context: context)
        Hearth::Validator.validate!(input[:listener_arn], ::String, context: "#{context}[:listener_arn]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListEndpointGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEndpointGroupsOutput, context: context)
        EndpointGroups.validate!(input[:endpoint_groups], context: "#{context}[:endpoint_groups]") unless input[:endpoint_groups].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListListenersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListListenersInput, context: context)
        Hearth::Validator.validate!(input[:accelerator_arn], ::String, context: "#{context}[:accelerator_arn]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListListenersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListListenersOutput, context: context)
        Listeners.validate!(input[:listeners], context: "#{context}[:listeners]") unless input[:listeners].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class Listener
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Listener, context: context)
        Hearth::Validator.validate!(input[:listener_arn], ::String, context: "#{context}[:listener_arn]")
        PortRanges.validate!(input[:port_ranges], context: "#{context}[:port_ranges]") unless input[:port_ranges].nil?
        Hearth::Validator.validate!(input[:protocol], ::String, context: "#{context}[:protocol]")
        Hearth::Validator.validate!(input[:client_affinity], ::String, context: "#{context}[:client_affinity]")
      end
    end

    class ListenerNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListenerNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Listeners
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Listener.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PortMapping
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PortMapping, context: context)
        Hearth::Validator.validate!(input[:accelerator_port], ::Integer, context: "#{context}[:accelerator_port]")
        Hearth::Validator.validate!(input[:endpoint_group_arn], ::String, context: "#{context}[:endpoint_group_arn]")
        Hearth::Validator.validate!(input[:endpoint_id], ::String, context: "#{context}[:endpoint_id]")
        SocketAddress.validate!(input[:destination_socket_address], context: "#{context}[:destination_socket_address]") unless input[:destination_socket_address].nil?
        CustomRoutingProtocols.validate!(input[:protocols], context: "#{context}[:protocols]") unless input[:protocols].nil?
        Hearth::Validator.validate!(input[:destination_traffic_state], ::String, context: "#{context}[:destination_traffic_state]")
      end
    end

    class PortMappings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PortMapping.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PortOverride
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PortOverride, context: context)
        Hearth::Validator.validate!(input[:listener_port], ::Integer, context: "#{context}[:listener_port]")
        Hearth::Validator.validate!(input[:endpoint_port], ::Integer, context: "#{context}[:endpoint_port]")
      end
    end

    class PortOverrides
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PortOverride.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PortRange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PortRange, context: context)
        Hearth::Validator.validate!(input[:from_port], ::Integer, context: "#{context}[:from_port]")
        Hearth::Validator.validate!(input[:to_port], ::Integer, context: "#{context}[:to_port]")
      end
    end

    class PortRanges
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PortRange.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Protocols
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ProvisionByoipCidrInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProvisionByoipCidrInput, context: context)
        Hearth::Validator.validate!(input[:cidr], ::String, context: "#{context}[:cidr]")
        CidrAuthorizationContext.validate!(input[:cidr_authorization_context], context: "#{context}[:cidr_authorization_context]") unless input[:cidr_authorization_context].nil?
      end
    end

    class ProvisionByoipCidrOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProvisionByoipCidrOutput, context: context)
        ByoipCidr.validate!(input[:byoip_cidr], context: "#{context}[:byoip_cidr]") unless input[:byoip_cidr].nil?
      end
    end

    class RemoveCustomRoutingEndpointsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveCustomRoutingEndpointsInput, context: context)
        EndpointIds.validate!(input[:endpoint_ids], context: "#{context}[:endpoint_ids]") unless input[:endpoint_ids].nil?
        Hearth::Validator.validate!(input[:endpoint_group_arn], ::String, context: "#{context}[:endpoint_group_arn]")
      end
    end

    class RemoveCustomRoutingEndpointsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveCustomRoutingEndpointsOutput, context: context)
      end
    end

    class SocketAddress
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SocketAddress, context: context)
        Hearth::Validator.validate!(input[:ip_address], ::String, context: "#{context}[:ip_address]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
      end
    end

    class SocketAddresses
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SocketAddress.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TagKeys
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class Tags
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagKeys.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateAcceleratorAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAcceleratorAttributesInput, context: context)
        Hearth::Validator.validate!(input[:accelerator_arn], ::String, context: "#{context}[:accelerator_arn]")
        Hearth::Validator.validate!(input[:flow_logs_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:flow_logs_enabled]")
        Hearth::Validator.validate!(input[:flow_logs_s3_bucket], ::String, context: "#{context}[:flow_logs_s3_bucket]")
        Hearth::Validator.validate!(input[:flow_logs_s3_prefix], ::String, context: "#{context}[:flow_logs_s3_prefix]")
      end
    end

    class UpdateAcceleratorAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAcceleratorAttributesOutput, context: context)
        AcceleratorAttributes.validate!(input[:accelerator_attributes], context: "#{context}[:accelerator_attributes]") unless input[:accelerator_attributes].nil?
      end
    end

    class UpdateAcceleratorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAcceleratorInput, context: context)
        Hearth::Validator.validate!(input[:accelerator_arn], ::String, context: "#{context}[:accelerator_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:ip_address_type], ::String, context: "#{context}[:ip_address_type]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
      end
    end

    class UpdateAcceleratorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAcceleratorOutput, context: context)
        Accelerator.validate!(input[:accelerator], context: "#{context}[:accelerator]") unless input[:accelerator].nil?
      end
    end

    class UpdateCustomRoutingAcceleratorAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateCustomRoutingAcceleratorAttributesInput, context: context)
        Hearth::Validator.validate!(input[:accelerator_arn], ::String, context: "#{context}[:accelerator_arn]")
        Hearth::Validator.validate!(input[:flow_logs_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:flow_logs_enabled]")
        Hearth::Validator.validate!(input[:flow_logs_s3_bucket], ::String, context: "#{context}[:flow_logs_s3_bucket]")
        Hearth::Validator.validate!(input[:flow_logs_s3_prefix], ::String, context: "#{context}[:flow_logs_s3_prefix]")
      end
    end

    class UpdateCustomRoutingAcceleratorAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateCustomRoutingAcceleratorAttributesOutput, context: context)
        CustomRoutingAcceleratorAttributes.validate!(input[:accelerator_attributes], context: "#{context}[:accelerator_attributes]") unless input[:accelerator_attributes].nil?
      end
    end

    class UpdateCustomRoutingAcceleratorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateCustomRoutingAcceleratorInput, context: context)
        Hearth::Validator.validate!(input[:accelerator_arn], ::String, context: "#{context}[:accelerator_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:ip_address_type], ::String, context: "#{context}[:ip_address_type]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
      end
    end

    class UpdateCustomRoutingAcceleratorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateCustomRoutingAcceleratorOutput, context: context)
        CustomRoutingAccelerator.validate!(input[:accelerator], context: "#{context}[:accelerator]") unless input[:accelerator].nil?
      end
    end

    class UpdateCustomRoutingListenerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateCustomRoutingListenerInput, context: context)
        Hearth::Validator.validate!(input[:listener_arn], ::String, context: "#{context}[:listener_arn]")
        PortRanges.validate!(input[:port_ranges], context: "#{context}[:port_ranges]") unless input[:port_ranges].nil?
      end
    end

    class UpdateCustomRoutingListenerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateCustomRoutingListenerOutput, context: context)
        CustomRoutingListener.validate!(input[:listener], context: "#{context}[:listener]") unless input[:listener].nil?
      end
    end

    class UpdateEndpointGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateEndpointGroupInput, context: context)
        Hearth::Validator.validate!(input[:endpoint_group_arn], ::String, context: "#{context}[:endpoint_group_arn]")
        EndpointConfigurations.validate!(input[:endpoint_configurations], context: "#{context}[:endpoint_configurations]") unless input[:endpoint_configurations].nil?
        Hearth::Validator.validate!(input[:traffic_dial_percentage], ::Float, context: "#{context}[:traffic_dial_percentage]")
        Hearth::Validator.validate!(input[:health_check_port], ::Integer, context: "#{context}[:health_check_port]")
        Hearth::Validator.validate!(input[:health_check_protocol], ::String, context: "#{context}[:health_check_protocol]")
        Hearth::Validator.validate!(input[:health_check_path], ::String, context: "#{context}[:health_check_path]")
        Hearth::Validator.validate!(input[:health_check_interval_seconds], ::Integer, context: "#{context}[:health_check_interval_seconds]")
        Hearth::Validator.validate!(input[:threshold_count], ::Integer, context: "#{context}[:threshold_count]")
        PortOverrides.validate!(input[:port_overrides], context: "#{context}[:port_overrides]") unless input[:port_overrides].nil?
      end
    end

    class UpdateEndpointGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateEndpointGroupOutput, context: context)
        EndpointGroup.validate!(input[:endpoint_group], context: "#{context}[:endpoint_group]") unless input[:endpoint_group].nil?
      end
    end

    class UpdateListenerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateListenerInput, context: context)
        Hearth::Validator.validate!(input[:listener_arn], ::String, context: "#{context}[:listener_arn]")
        PortRanges.validate!(input[:port_ranges], context: "#{context}[:port_ranges]") unless input[:port_ranges].nil?
        Hearth::Validator.validate!(input[:protocol], ::String, context: "#{context}[:protocol]")
        Hearth::Validator.validate!(input[:client_affinity], ::String, context: "#{context}[:client_affinity]")
      end
    end

    class UpdateListenerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateListenerOutput, context: context)
        Listener.validate!(input[:listener], context: "#{context}[:listener]") unless input[:listener].nil?
      end
    end

    class WithdrawByoipCidrInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WithdrawByoipCidrInput, context: context)
        Hearth::Validator.validate!(input[:cidr], ::String, context: "#{context}[:cidr]")
      end
    end

    class WithdrawByoipCidrOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WithdrawByoipCidrOutput, context: context)
        ByoipCidr.validate!(input[:byoip_cidr], context: "#{context}[:byoip_cidr]") unless input[:byoip_cidr].nil?
      end
    end

  end
end
