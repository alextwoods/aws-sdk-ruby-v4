# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::GlobalAccelerator
  module Params

    module Accelerator
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Accelerator, context: context)
        type = Types::Accelerator.new
        type.accelerator_arn = params[:accelerator_arn]
        type.name = params[:name]
        type.ip_address_type = params[:ip_address_type]
        type.enabled = params[:enabled]
        type.ip_sets = IpSets.build(params[:ip_sets], context: "#{context}[:ip_sets]") unless params[:ip_sets].nil?
        type.dns_name = params[:dns_name]
        type.status = params[:status]
        type.created_time = params[:created_time]
        type.last_modified_time = params[:last_modified_time]
        type
      end
    end

    module AcceleratorAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AcceleratorAttributes, context: context)
        type = Types::AcceleratorAttributes.new
        type.flow_logs_enabled = params[:flow_logs_enabled]
        type.flow_logs_s3_bucket = params[:flow_logs_s3_bucket]
        type.flow_logs_s3_prefix = params[:flow_logs_s3_prefix]
        type
      end
    end

    module AcceleratorNotDisabledException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AcceleratorNotDisabledException, context: context)
        type = Types::AcceleratorNotDisabledException.new
        type.message = params[:message]
        type
      end
    end

    module AcceleratorNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AcceleratorNotFoundException, context: context)
        type = Types::AcceleratorNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module Accelerators
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Accelerator.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module AddCustomRoutingEndpointsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddCustomRoutingEndpointsInput, context: context)
        type = Types::AddCustomRoutingEndpointsInput.new
        type.endpoint_configurations = CustomRoutingEndpointConfigurations.build(params[:endpoint_configurations], context: "#{context}[:endpoint_configurations]") unless params[:endpoint_configurations].nil?
        type.endpoint_group_arn = params[:endpoint_group_arn]
        type
      end
    end

    module AddCustomRoutingEndpointsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddCustomRoutingEndpointsOutput, context: context)
        type = Types::AddCustomRoutingEndpointsOutput.new
        type.endpoint_descriptions = CustomRoutingEndpointDescriptions.build(params[:endpoint_descriptions], context: "#{context}[:endpoint_descriptions]") unless params[:endpoint_descriptions].nil?
        type.endpoint_group_arn = params[:endpoint_group_arn]
        type
      end
    end

    module AdvertiseByoipCidrInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdvertiseByoipCidrInput, context: context)
        type = Types::AdvertiseByoipCidrInput.new
        type.cidr = params[:cidr]
        type
      end
    end

    module AdvertiseByoipCidrOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdvertiseByoipCidrOutput, context: context)
        type = Types::AdvertiseByoipCidrOutput.new
        type.byoip_cidr = ByoipCidr.build(params[:byoip_cidr], context: "#{context}[:byoip_cidr]") unless params[:byoip_cidr].nil?
        type
      end
    end

    module AllowCustomRoutingTrafficInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AllowCustomRoutingTrafficInput, context: context)
        type = Types::AllowCustomRoutingTrafficInput.new
        type.endpoint_group_arn = params[:endpoint_group_arn]
        type.endpoint_id = params[:endpoint_id]
        type.destination_addresses = DestinationAddresses.build(params[:destination_addresses], context: "#{context}[:destination_addresses]") unless params[:destination_addresses].nil?
        type.destination_ports = DestinationPorts.build(params[:destination_ports], context: "#{context}[:destination_ports]") unless params[:destination_ports].nil?
        type.allow_all_traffic_to_endpoint = params[:allow_all_traffic_to_endpoint]
        type
      end
    end

    module AllowCustomRoutingTrafficOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AllowCustomRoutingTrafficOutput, context: context)
        type = Types::AllowCustomRoutingTrafficOutput.new
        type
      end
    end

    module AssociatedEndpointGroupFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociatedEndpointGroupFoundException, context: context)
        type = Types::AssociatedEndpointGroupFoundException.new
        type.message = params[:message]
        type
      end
    end

    module AssociatedListenerFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociatedListenerFoundException, context: context)
        type = Types::AssociatedListenerFoundException.new
        type.message = params[:message]
        type
      end
    end

    module ByoipCidr
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ByoipCidr, context: context)
        type = Types::ByoipCidr.new
        type.cidr = params[:cidr]
        type.state = params[:state]
        type.events = ByoipCidrEvents.build(params[:events], context: "#{context}[:events]") unless params[:events].nil?
        type
      end
    end

    module ByoipCidrEvent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ByoipCidrEvent, context: context)
        type = Types::ByoipCidrEvent.new
        type.message = params[:message]
        type.timestamp = params[:timestamp]
        type
      end
    end

    module ByoipCidrEvents
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ByoipCidrEvent.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ByoipCidrNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ByoipCidrNotFoundException, context: context)
        type = Types::ByoipCidrNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module ByoipCidrs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ByoipCidr.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CidrAuthorizationContext
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CidrAuthorizationContext, context: context)
        type = Types::CidrAuthorizationContext.new
        type.message = params[:message]
        type.signature = params[:signature]
        type
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type
      end
    end

    module CreateAcceleratorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAcceleratorInput, context: context)
        type = Types::CreateAcceleratorInput.new
        type.name = params[:name]
        type.ip_address_type = params[:ip_address_type]
        type.ip_addresses = IpAddresses.build(params[:ip_addresses], context: "#{context}[:ip_addresses]") unless params[:ip_addresses].nil?
        type.enabled = params[:enabled]
        type.idempotency_token = params[:idempotency_token] || ::SecureRandom.uuid
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateAcceleratorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAcceleratorOutput, context: context)
        type = Types::CreateAcceleratorOutput.new
        type.accelerator = Accelerator.build(params[:accelerator], context: "#{context}[:accelerator]") unless params[:accelerator].nil?
        type
      end
    end

    module CreateCustomRoutingAcceleratorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCustomRoutingAcceleratorInput, context: context)
        type = Types::CreateCustomRoutingAcceleratorInput.new
        type.name = params[:name]
        type.ip_address_type = params[:ip_address_type]
        type.ip_addresses = IpAddresses.build(params[:ip_addresses], context: "#{context}[:ip_addresses]") unless params[:ip_addresses].nil?
        type.enabled = params[:enabled]
        type.idempotency_token = params[:idempotency_token] || ::SecureRandom.uuid
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateCustomRoutingAcceleratorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCustomRoutingAcceleratorOutput, context: context)
        type = Types::CreateCustomRoutingAcceleratorOutput.new
        type.accelerator = CustomRoutingAccelerator.build(params[:accelerator], context: "#{context}[:accelerator]") unless params[:accelerator].nil?
        type
      end
    end

    module CreateCustomRoutingEndpointGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCustomRoutingEndpointGroupInput, context: context)
        type = Types::CreateCustomRoutingEndpointGroupInput.new
        type.listener_arn = params[:listener_arn]
        type.endpoint_group_region = params[:endpoint_group_region]
        type.destination_configurations = CustomRoutingDestinationConfigurations.build(params[:destination_configurations], context: "#{context}[:destination_configurations]") unless params[:destination_configurations].nil?
        type.idempotency_token = params[:idempotency_token] || ::SecureRandom.uuid
        type
      end
    end

    module CreateCustomRoutingEndpointGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCustomRoutingEndpointGroupOutput, context: context)
        type = Types::CreateCustomRoutingEndpointGroupOutput.new
        type.endpoint_group = CustomRoutingEndpointGroup.build(params[:endpoint_group], context: "#{context}[:endpoint_group]") unless params[:endpoint_group].nil?
        type
      end
    end

    module CreateCustomRoutingListenerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCustomRoutingListenerInput, context: context)
        type = Types::CreateCustomRoutingListenerInput.new
        type.accelerator_arn = params[:accelerator_arn]
        type.port_ranges = PortRanges.build(params[:port_ranges], context: "#{context}[:port_ranges]") unless params[:port_ranges].nil?
        type.idempotency_token = params[:idempotency_token] || ::SecureRandom.uuid
        type
      end
    end

    module CreateCustomRoutingListenerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCustomRoutingListenerOutput, context: context)
        type = Types::CreateCustomRoutingListenerOutput.new
        type.listener = CustomRoutingListener.build(params[:listener], context: "#{context}[:listener]") unless params[:listener].nil?
        type
      end
    end

    module CreateEndpointGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEndpointGroupInput, context: context)
        type = Types::CreateEndpointGroupInput.new
        type.listener_arn = params[:listener_arn]
        type.endpoint_group_region = params[:endpoint_group_region]
        type.endpoint_configurations = EndpointConfigurations.build(params[:endpoint_configurations], context: "#{context}[:endpoint_configurations]") unless params[:endpoint_configurations].nil?
        type.traffic_dial_percentage = params[:traffic_dial_percentage]
        type.health_check_port = params[:health_check_port]
        type.health_check_protocol = params[:health_check_protocol]
        type.health_check_path = params[:health_check_path]
        type.health_check_interval_seconds = params[:health_check_interval_seconds]
        type.threshold_count = params[:threshold_count]
        type.idempotency_token = params[:idempotency_token] || ::SecureRandom.uuid
        type.port_overrides = PortOverrides.build(params[:port_overrides], context: "#{context}[:port_overrides]") unless params[:port_overrides].nil?
        type
      end
    end

    module CreateEndpointGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEndpointGroupOutput, context: context)
        type = Types::CreateEndpointGroupOutput.new
        type.endpoint_group = EndpointGroup.build(params[:endpoint_group], context: "#{context}[:endpoint_group]") unless params[:endpoint_group].nil?
        type
      end
    end

    module CreateListenerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateListenerInput, context: context)
        type = Types::CreateListenerInput.new
        type.accelerator_arn = params[:accelerator_arn]
        type.port_ranges = PortRanges.build(params[:port_ranges], context: "#{context}[:port_ranges]") unless params[:port_ranges].nil?
        type.protocol = params[:protocol]
        type.client_affinity = params[:client_affinity]
        type.idempotency_token = params[:idempotency_token] || ::SecureRandom.uuid
        type
      end
    end

    module CreateListenerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateListenerOutput, context: context)
        type = Types::CreateListenerOutput.new
        type.listener = Listener.build(params[:listener], context: "#{context}[:listener]") unless params[:listener].nil?
        type
      end
    end

    module CustomRoutingAccelerator
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomRoutingAccelerator, context: context)
        type = Types::CustomRoutingAccelerator.new
        type.accelerator_arn = params[:accelerator_arn]
        type.name = params[:name]
        type.ip_address_type = params[:ip_address_type]
        type.enabled = params[:enabled]
        type.ip_sets = IpSets.build(params[:ip_sets], context: "#{context}[:ip_sets]") unless params[:ip_sets].nil?
        type.dns_name = params[:dns_name]
        type.status = params[:status]
        type.created_time = params[:created_time]
        type.last_modified_time = params[:last_modified_time]
        type
      end
    end

    module CustomRoutingAcceleratorAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomRoutingAcceleratorAttributes, context: context)
        type = Types::CustomRoutingAcceleratorAttributes.new
        type.flow_logs_enabled = params[:flow_logs_enabled]
        type.flow_logs_s3_bucket = params[:flow_logs_s3_bucket]
        type.flow_logs_s3_prefix = params[:flow_logs_s3_prefix]
        type
      end
    end

    module CustomRoutingAccelerators
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CustomRoutingAccelerator.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CustomRoutingDestinationConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomRoutingDestinationConfiguration, context: context)
        type = Types::CustomRoutingDestinationConfiguration.new
        type.from_port = params[:from_port]
        type.to_port = params[:to_port]
        type.protocols = CustomRoutingProtocols.build(params[:protocols], context: "#{context}[:protocols]") unless params[:protocols].nil?
        type
      end
    end

    module CustomRoutingDestinationConfigurations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CustomRoutingDestinationConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CustomRoutingDestinationDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomRoutingDestinationDescription, context: context)
        type = Types::CustomRoutingDestinationDescription.new
        type.from_port = params[:from_port]
        type.to_port = params[:to_port]
        type.protocols = Protocols.build(params[:protocols], context: "#{context}[:protocols]") unless params[:protocols].nil?
        type
      end
    end

    module CustomRoutingDestinationDescriptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CustomRoutingDestinationDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CustomRoutingEndpointConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomRoutingEndpointConfiguration, context: context)
        type = Types::CustomRoutingEndpointConfiguration.new
        type.endpoint_id = params[:endpoint_id]
        type
      end
    end

    module CustomRoutingEndpointConfigurations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CustomRoutingEndpointConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CustomRoutingEndpointDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomRoutingEndpointDescription, context: context)
        type = Types::CustomRoutingEndpointDescription.new
        type.endpoint_id = params[:endpoint_id]
        type
      end
    end

    module CustomRoutingEndpointDescriptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CustomRoutingEndpointDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CustomRoutingEndpointGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomRoutingEndpointGroup, context: context)
        type = Types::CustomRoutingEndpointGroup.new
        type.endpoint_group_arn = params[:endpoint_group_arn]
        type.endpoint_group_region = params[:endpoint_group_region]
        type.destination_descriptions = CustomRoutingDestinationDescriptions.build(params[:destination_descriptions], context: "#{context}[:destination_descriptions]") unless params[:destination_descriptions].nil?
        type.endpoint_descriptions = CustomRoutingEndpointDescriptions.build(params[:endpoint_descriptions], context: "#{context}[:endpoint_descriptions]") unless params[:endpoint_descriptions].nil?
        type
      end
    end

    module CustomRoutingEndpointGroups
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CustomRoutingEndpointGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CustomRoutingListener
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomRoutingListener, context: context)
        type = Types::CustomRoutingListener.new
        type.listener_arn = params[:listener_arn]
        type.port_ranges = PortRanges.build(params[:port_ranges], context: "#{context}[:port_ranges]") unless params[:port_ranges].nil?
        type
      end
    end

    module CustomRoutingListeners
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CustomRoutingListener.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CustomRoutingProtocols
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DeleteAcceleratorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAcceleratorInput, context: context)
        type = Types::DeleteAcceleratorInput.new
        type.accelerator_arn = params[:accelerator_arn]
        type
      end
    end

    module DeleteAcceleratorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAcceleratorOutput, context: context)
        type = Types::DeleteAcceleratorOutput.new
        type
      end
    end

    module DeleteCustomRoutingAcceleratorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCustomRoutingAcceleratorInput, context: context)
        type = Types::DeleteCustomRoutingAcceleratorInput.new
        type.accelerator_arn = params[:accelerator_arn]
        type
      end
    end

    module DeleteCustomRoutingAcceleratorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCustomRoutingAcceleratorOutput, context: context)
        type = Types::DeleteCustomRoutingAcceleratorOutput.new
        type
      end
    end

    module DeleteCustomRoutingEndpointGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCustomRoutingEndpointGroupInput, context: context)
        type = Types::DeleteCustomRoutingEndpointGroupInput.new
        type.endpoint_group_arn = params[:endpoint_group_arn]
        type
      end
    end

    module DeleteCustomRoutingEndpointGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCustomRoutingEndpointGroupOutput, context: context)
        type = Types::DeleteCustomRoutingEndpointGroupOutput.new
        type
      end
    end

    module DeleteCustomRoutingListenerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCustomRoutingListenerInput, context: context)
        type = Types::DeleteCustomRoutingListenerInput.new
        type.listener_arn = params[:listener_arn]
        type
      end
    end

    module DeleteCustomRoutingListenerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCustomRoutingListenerOutput, context: context)
        type = Types::DeleteCustomRoutingListenerOutput.new
        type
      end
    end

    module DeleteEndpointGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEndpointGroupInput, context: context)
        type = Types::DeleteEndpointGroupInput.new
        type.endpoint_group_arn = params[:endpoint_group_arn]
        type
      end
    end

    module DeleteEndpointGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEndpointGroupOutput, context: context)
        type = Types::DeleteEndpointGroupOutput.new
        type
      end
    end

    module DeleteListenerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteListenerInput, context: context)
        type = Types::DeleteListenerInput.new
        type.listener_arn = params[:listener_arn]
        type
      end
    end

    module DeleteListenerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteListenerOutput, context: context)
        type = Types::DeleteListenerOutput.new
        type
      end
    end

    module DenyCustomRoutingTrafficInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DenyCustomRoutingTrafficInput, context: context)
        type = Types::DenyCustomRoutingTrafficInput.new
        type.endpoint_group_arn = params[:endpoint_group_arn]
        type.endpoint_id = params[:endpoint_id]
        type.destination_addresses = DestinationAddresses.build(params[:destination_addresses], context: "#{context}[:destination_addresses]") unless params[:destination_addresses].nil?
        type.destination_ports = DestinationPorts.build(params[:destination_ports], context: "#{context}[:destination_ports]") unless params[:destination_ports].nil?
        type.deny_all_traffic_to_endpoint = params[:deny_all_traffic_to_endpoint]
        type
      end
    end

    module DenyCustomRoutingTrafficOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DenyCustomRoutingTrafficOutput, context: context)
        type = Types::DenyCustomRoutingTrafficOutput.new
        type
      end
    end

    module DeprovisionByoipCidrInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeprovisionByoipCidrInput, context: context)
        type = Types::DeprovisionByoipCidrInput.new
        type.cidr = params[:cidr]
        type
      end
    end

    module DeprovisionByoipCidrOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeprovisionByoipCidrOutput, context: context)
        type = Types::DeprovisionByoipCidrOutput.new
        type.byoip_cidr = ByoipCidr.build(params[:byoip_cidr], context: "#{context}[:byoip_cidr]") unless params[:byoip_cidr].nil?
        type
      end
    end

    module DescribeAcceleratorAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAcceleratorAttributesInput, context: context)
        type = Types::DescribeAcceleratorAttributesInput.new
        type.accelerator_arn = params[:accelerator_arn]
        type
      end
    end

    module DescribeAcceleratorAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAcceleratorAttributesOutput, context: context)
        type = Types::DescribeAcceleratorAttributesOutput.new
        type.accelerator_attributes = AcceleratorAttributes.build(params[:accelerator_attributes], context: "#{context}[:accelerator_attributes]") unless params[:accelerator_attributes].nil?
        type
      end
    end

    module DescribeAcceleratorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAcceleratorInput, context: context)
        type = Types::DescribeAcceleratorInput.new
        type.accelerator_arn = params[:accelerator_arn]
        type
      end
    end

    module DescribeAcceleratorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAcceleratorOutput, context: context)
        type = Types::DescribeAcceleratorOutput.new
        type.accelerator = Accelerator.build(params[:accelerator], context: "#{context}[:accelerator]") unless params[:accelerator].nil?
        type
      end
    end

    module DescribeCustomRoutingAcceleratorAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCustomRoutingAcceleratorAttributesInput, context: context)
        type = Types::DescribeCustomRoutingAcceleratorAttributesInput.new
        type.accelerator_arn = params[:accelerator_arn]
        type
      end
    end

    module DescribeCustomRoutingAcceleratorAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCustomRoutingAcceleratorAttributesOutput, context: context)
        type = Types::DescribeCustomRoutingAcceleratorAttributesOutput.new
        type.accelerator_attributes = CustomRoutingAcceleratorAttributes.build(params[:accelerator_attributes], context: "#{context}[:accelerator_attributes]") unless params[:accelerator_attributes].nil?
        type
      end
    end

    module DescribeCustomRoutingAcceleratorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCustomRoutingAcceleratorInput, context: context)
        type = Types::DescribeCustomRoutingAcceleratorInput.new
        type.accelerator_arn = params[:accelerator_arn]
        type
      end
    end

    module DescribeCustomRoutingAcceleratorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCustomRoutingAcceleratorOutput, context: context)
        type = Types::DescribeCustomRoutingAcceleratorOutput.new
        type.accelerator = CustomRoutingAccelerator.build(params[:accelerator], context: "#{context}[:accelerator]") unless params[:accelerator].nil?
        type
      end
    end

    module DescribeCustomRoutingEndpointGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCustomRoutingEndpointGroupInput, context: context)
        type = Types::DescribeCustomRoutingEndpointGroupInput.new
        type.endpoint_group_arn = params[:endpoint_group_arn]
        type
      end
    end

    module DescribeCustomRoutingEndpointGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCustomRoutingEndpointGroupOutput, context: context)
        type = Types::DescribeCustomRoutingEndpointGroupOutput.new
        type.endpoint_group = CustomRoutingEndpointGroup.build(params[:endpoint_group], context: "#{context}[:endpoint_group]") unless params[:endpoint_group].nil?
        type
      end
    end

    module DescribeCustomRoutingListenerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCustomRoutingListenerInput, context: context)
        type = Types::DescribeCustomRoutingListenerInput.new
        type.listener_arn = params[:listener_arn]
        type
      end
    end

    module DescribeCustomRoutingListenerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCustomRoutingListenerOutput, context: context)
        type = Types::DescribeCustomRoutingListenerOutput.new
        type.listener = CustomRoutingListener.build(params[:listener], context: "#{context}[:listener]") unless params[:listener].nil?
        type
      end
    end

    module DescribeEndpointGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEndpointGroupInput, context: context)
        type = Types::DescribeEndpointGroupInput.new
        type.endpoint_group_arn = params[:endpoint_group_arn]
        type
      end
    end

    module DescribeEndpointGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEndpointGroupOutput, context: context)
        type = Types::DescribeEndpointGroupOutput.new
        type.endpoint_group = EndpointGroup.build(params[:endpoint_group], context: "#{context}[:endpoint_group]") unless params[:endpoint_group].nil?
        type
      end
    end

    module DescribeListenerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeListenerInput, context: context)
        type = Types::DescribeListenerInput.new
        type.listener_arn = params[:listener_arn]
        type
      end
    end

    module DescribeListenerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeListenerOutput, context: context)
        type = Types::DescribeListenerOutput.new
        type.listener = Listener.build(params[:listener], context: "#{context}[:listener]") unless params[:listener].nil?
        type
      end
    end

    module DestinationAddresses
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DestinationPortMapping
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DestinationPortMapping, context: context)
        type = Types::DestinationPortMapping.new
        type.accelerator_arn = params[:accelerator_arn]
        type.accelerator_socket_addresses = SocketAddresses.build(params[:accelerator_socket_addresses], context: "#{context}[:accelerator_socket_addresses]") unless params[:accelerator_socket_addresses].nil?
        type.endpoint_group_arn = params[:endpoint_group_arn]
        type.endpoint_id = params[:endpoint_id]
        type.endpoint_group_region = params[:endpoint_group_region]
        type.destination_socket_address = SocketAddress.build(params[:destination_socket_address], context: "#{context}[:destination_socket_address]") unless params[:destination_socket_address].nil?
        type.ip_address_type = params[:ip_address_type]
        type.destination_traffic_state = params[:destination_traffic_state]
        type
      end
    end

    module DestinationPortMappings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DestinationPortMapping.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DestinationPorts
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module EndpointAlreadyExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EndpointAlreadyExistsException, context: context)
        type = Types::EndpointAlreadyExistsException.new
        type.message = params[:message]
        type
      end
    end

    module EndpointConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EndpointConfiguration, context: context)
        type = Types::EndpointConfiguration.new
        type.endpoint_id = params[:endpoint_id]
        type.weight = params[:weight]
        type.client_ip_preservation_enabled = params[:client_ip_preservation_enabled]
        type
      end
    end

    module EndpointConfigurations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EndpointConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EndpointDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EndpointDescription, context: context)
        type = Types::EndpointDescription.new
        type.endpoint_id = params[:endpoint_id]
        type.weight = params[:weight]
        type.health_state = params[:health_state]
        type.health_reason = params[:health_reason]
        type.client_ip_preservation_enabled = params[:client_ip_preservation_enabled]
        type
      end
    end

    module EndpointDescriptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EndpointDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EndpointGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EndpointGroup, context: context)
        type = Types::EndpointGroup.new
        type.endpoint_group_arn = params[:endpoint_group_arn]
        type.endpoint_group_region = params[:endpoint_group_region]
        type.endpoint_descriptions = EndpointDescriptions.build(params[:endpoint_descriptions], context: "#{context}[:endpoint_descriptions]") unless params[:endpoint_descriptions].nil?
        type.traffic_dial_percentage = params[:traffic_dial_percentage]
        type.health_check_port = params[:health_check_port]
        type.health_check_protocol = params[:health_check_protocol]
        type.health_check_path = params[:health_check_path]
        type.health_check_interval_seconds = params[:health_check_interval_seconds]
        type.threshold_count = params[:threshold_count]
        type.port_overrides = PortOverrides.build(params[:port_overrides], context: "#{context}[:port_overrides]") unless params[:port_overrides].nil?
        type
      end
    end

    module EndpointGroupAlreadyExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EndpointGroupAlreadyExistsException, context: context)
        type = Types::EndpointGroupAlreadyExistsException.new
        type.message = params[:message]
        type
      end
    end

    module EndpointGroupNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EndpointGroupNotFoundException, context: context)
        type = Types::EndpointGroupNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module EndpointGroups
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EndpointGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EndpointIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module EndpointNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EndpointNotFoundException, context: context)
        type = Types::EndpointNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module IncorrectCidrStateException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IncorrectCidrStateException, context: context)
        type = Types::IncorrectCidrStateException.new
        type.message = params[:message]
        type
      end
    end

    module InternalServiceErrorException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServiceErrorException, context: context)
        type = Types::InternalServiceErrorException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidArgumentException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidArgumentException, context: context)
        type = Types::InvalidArgumentException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidNextTokenException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidNextTokenException, context: context)
        type = Types::InvalidNextTokenException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidPortRangeException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidPortRangeException, context: context)
        type = Types::InvalidPortRangeException.new
        type.message = params[:message]
        type
      end
    end

    module IpAddresses
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module IpSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IpSet, context: context)
        type = Types::IpSet.new
        type.ip_family = params[:ip_family]
        type.ip_addresses = IpAddresses.build(params[:ip_addresses], context: "#{context}[:ip_addresses]") unless params[:ip_addresses].nil?
        type
      end
    end

    module IpSets
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << IpSet.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module ListAcceleratorsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAcceleratorsInput, context: context)
        type = Types::ListAcceleratorsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAcceleratorsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAcceleratorsOutput, context: context)
        type = Types::ListAcceleratorsOutput.new
        type.accelerators = Accelerators.build(params[:accelerators], context: "#{context}[:accelerators]") unless params[:accelerators].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListByoipCidrsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListByoipCidrsInput, context: context)
        type = Types::ListByoipCidrsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListByoipCidrsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListByoipCidrsOutput, context: context)
        type = Types::ListByoipCidrsOutput.new
        type.byoip_cidrs = ByoipCidrs.build(params[:byoip_cidrs], context: "#{context}[:byoip_cidrs]") unless params[:byoip_cidrs].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListCustomRoutingAcceleratorsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCustomRoutingAcceleratorsInput, context: context)
        type = Types::ListCustomRoutingAcceleratorsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListCustomRoutingAcceleratorsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCustomRoutingAcceleratorsOutput, context: context)
        type = Types::ListCustomRoutingAcceleratorsOutput.new
        type.accelerators = CustomRoutingAccelerators.build(params[:accelerators], context: "#{context}[:accelerators]") unless params[:accelerators].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListCustomRoutingEndpointGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCustomRoutingEndpointGroupsInput, context: context)
        type = Types::ListCustomRoutingEndpointGroupsInput.new
        type.listener_arn = params[:listener_arn]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListCustomRoutingEndpointGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCustomRoutingEndpointGroupsOutput, context: context)
        type = Types::ListCustomRoutingEndpointGroupsOutput.new
        type.endpoint_groups = CustomRoutingEndpointGroups.build(params[:endpoint_groups], context: "#{context}[:endpoint_groups]") unless params[:endpoint_groups].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListCustomRoutingListenersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCustomRoutingListenersInput, context: context)
        type = Types::ListCustomRoutingListenersInput.new
        type.accelerator_arn = params[:accelerator_arn]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListCustomRoutingListenersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCustomRoutingListenersOutput, context: context)
        type = Types::ListCustomRoutingListenersOutput.new
        type.listeners = CustomRoutingListeners.build(params[:listeners], context: "#{context}[:listeners]") unless params[:listeners].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListCustomRoutingPortMappingsByDestinationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCustomRoutingPortMappingsByDestinationInput, context: context)
        type = Types::ListCustomRoutingPortMappingsByDestinationInput.new
        type.endpoint_id = params[:endpoint_id]
        type.destination_address = params[:destination_address]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListCustomRoutingPortMappingsByDestinationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCustomRoutingPortMappingsByDestinationOutput, context: context)
        type = Types::ListCustomRoutingPortMappingsByDestinationOutput.new
        type.destination_port_mappings = DestinationPortMappings.build(params[:destination_port_mappings], context: "#{context}[:destination_port_mappings]") unless params[:destination_port_mappings].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListCustomRoutingPortMappingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCustomRoutingPortMappingsInput, context: context)
        type = Types::ListCustomRoutingPortMappingsInput.new
        type.accelerator_arn = params[:accelerator_arn]
        type.endpoint_group_arn = params[:endpoint_group_arn]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListCustomRoutingPortMappingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCustomRoutingPortMappingsOutput, context: context)
        type = Types::ListCustomRoutingPortMappingsOutput.new
        type.port_mappings = PortMappings.build(params[:port_mappings], context: "#{context}[:port_mappings]") unless params[:port_mappings].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListEndpointGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEndpointGroupsInput, context: context)
        type = Types::ListEndpointGroupsInput.new
        type.listener_arn = params[:listener_arn]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListEndpointGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEndpointGroupsOutput, context: context)
        type = Types::ListEndpointGroupsOutput.new
        type.endpoint_groups = EndpointGroups.build(params[:endpoint_groups], context: "#{context}[:endpoint_groups]") unless params[:endpoint_groups].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListListenersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListListenersInput, context: context)
        type = Types::ListListenersInput.new
        type.accelerator_arn = params[:accelerator_arn]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListListenersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListListenersOutput, context: context)
        type = Types::ListListenersOutput.new
        type.listeners = Listeners.build(params[:listeners], context: "#{context}[:listeners]") unless params[:listeners].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module Listener
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Listener, context: context)
        type = Types::Listener.new
        type.listener_arn = params[:listener_arn]
        type.port_ranges = PortRanges.build(params[:port_ranges], context: "#{context}[:port_ranges]") unless params[:port_ranges].nil?
        type.protocol = params[:protocol]
        type.client_affinity = params[:client_affinity]
        type
      end
    end

    module ListenerNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListenerNotFoundException, context: context)
        type = Types::ListenerNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module Listeners
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Listener.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PortMapping
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PortMapping, context: context)
        type = Types::PortMapping.new
        type.accelerator_port = params[:accelerator_port]
        type.endpoint_group_arn = params[:endpoint_group_arn]
        type.endpoint_id = params[:endpoint_id]
        type.destination_socket_address = SocketAddress.build(params[:destination_socket_address], context: "#{context}[:destination_socket_address]") unless params[:destination_socket_address].nil?
        type.protocols = CustomRoutingProtocols.build(params[:protocols], context: "#{context}[:protocols]") unless params[:protocols].nil?
        type.destination_traffic_state = params[:destination_traffic_state]
        type
      end
    end

    module PortMappings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PortMapping.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PortOverride
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PortOverride, context: context)
        type = Types::PortOverride.new
        type.listener_port = params[:listener_port]
        type.endpoint_port = params[:endpoint_port]
        type
      end
    end

    module PortOverrides
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PortOverride.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PortRange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PortRange, context: context)
        type = Types::PortRange.new
        type.from_port = params[:from_port]
        type.to_port = params[:to_port]
        type
      end
    end

    module PortRanges
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PortRange.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Protocols
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ProvisionByoipCidrInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProvisionByoipCidrInput, context: context)
        type = Types::ProvisionByoipCidrInput.new
        type.cidr = params[:cidr]
        type.cidr_authorization_context = CidrAuthorizationContext.build(params[:cidr_authorization_context], context: "#{context}[:cidr_authorization_context]") unless params[:cidr_authorization_context].nil?
        type
      end
    end

    module ProvisionByoipCidrOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProvisionByoipCidrOutput, context: context)
        type = Types::ProvisionByoipCidrOutput.new
        type.byoip_cidr = ByoipCidr.build(params[:byoip_cidr], context: "#{context}[:byoip_cidr]") unless params[:byoip_cidr].nil?
        type
      end
    end

    module RemoveCustomRoutingEndpointsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveCustomRoutingEndpointsInput, context: context)
        type = Types::RemoveCustomRoutingEndpointsInput.new
        type.endpoint_ids = EndpointIds.build(params[:endpoint_ids], context: "#{context}[:endpoint_ids]") unless params[:endpoint_ids].nil?
        type.endpoint_group_arn = params[:endpoint_group_arn]
        type
      end
    end

    module RemoveCustomRoutingEndpointsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveCustomRoutingEndpointsOutput, context: context)
        type = Types::RemoveCustomRoutingEndpointsOutput.new
        type
      end
    end

    module SocketAddress
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SocketAddress, context: context)
        type = Types::SocketAddress.new
        type.ip_address = params[:ip_address]
        type.port = params[:port]
        type
      end
    end

    module SocketAddresses
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SocketAddress.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Tag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Tag, context: context)
        type = Types::Tag.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module TagKeys
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
        type
      end
    end

    module Tags
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeys.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceOutput, context: context)
        type = Types::UntagResourceOutput.new
        type
      end
    end

    module UpdateAcceleratorAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAcceleratorAttributesInput, context: context)
        type = Types::UpdateAcceleratorAttributesInput.new
        type.accelerator_arn = params[:accelerator_arn]
        type.flow_logs_enabled = params[:flow_logs_enabled]
        type.flow_logs_s3_bucket = params[:flow_logs_s3_bucket]
        type.flow_logs_s3_prefix = params[:flow_logs_s3_prefix]
        type
      end
    end

    module UpdateAcceleratorAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAcceleratorAttributesOutput, context: context)
        type = Types::UpdateAcceleratorAttributesOutput.new
        type.accelerator_attributes = AcceleratorAttributes.build(params[:accelerator_attributes], context: "#{context}[:accelerator_attributes]") unless params[:accelerator_attributes].nil?
        type
      end
    end

    module UpdateAcceleratorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAcceleratorInput, context: context)
        type = Types::UpdateAcceleratorInput.new
        type.accelerator_arn = params[:accelerator_arn]
        type.name = params[:name]
        type.ip_address_type = params[:ip_address_type]
        type.enabled = params[:enabled]
        type
      end
    end

    module UpdateAcceleratorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAcceleratorOutput, context: context)
        type = Types::UpdateAcceleratorOutput.new
        type.accelerator = Accelerator.build(params[:accelerator], context: "#{context}[:accelerator]") unless params[:accelerator].nil?
        type
      end
    end

    module UpdateCustomRoutingAcceleratorAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateCustomRoutingAcceleratorAttributesInput, context: context)
        type = Types::UpdateCustomRoutingAcceleratorAttributesInput.new
        type.accelerator_arn = params[:accelerator_arn]
        type.flow_logs_enabled = params[:flow_logs_enabled]
        type.flow_logs_s3_bucket = params[:flow_logs_s3_bucket]
        type.flow_logs_s3_prefix = params[:flow_logs_s3_prefix]
        type
      end
    end

    module UpdateCustomRoutingAcceleratorAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateCustomRoutingAcceleratorAttributesOutput, context: context)
        type = Types::UpdateCustomRoutingAcceleratorAttributesOutput.new
        type.accelerator_attributes = CustomRoutingAcceleratorAttributes.build(params[:accelerator_attributes], context: "#{context}[:accelerator_attributes]") unless params[:accelerator_attributes].nil?
        type
      end
    end

    module UpdateCustomRoutingAcceleratorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateCustomRoutingAcceleratorInput, context: context)
        type = Types::UpdateCustomRoutingAcceleratorInput.new
        type.accelerator_arn = params[:accelerator_arn]
        type.name = params[:name]
        type.ip_address_type = params[:ip_address_type]
        type.enabled = params[:enabled]
        type
      end
    end

    module UpdateCustomRoutingAcceleratorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateCustomRoutingAcceleratorOutput, context: context)
        type = Types::UpdateCustomRoutingAcceleratorOutput.new
        type.accelerator = CustomRoutingAccelerator.build(params[:accelerator], context: "#{context}[:accelerator]") unless params[:accelerator].nil?
        type
      end
    end

    module UpdateCustomRoutingListenerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateCustomRoutingListenerInput, context: context)
        type = Types::UpdateCustomRoutingListenerInput.new
        type.listener_arn = params[:listener_arn]
        type.port_ranges = PortRanges.build(params[:port_ranges], context: "#{context}[:port_ranges]") unless params[:port_ranges].nil?
        type
      end
    end

    module UpdateCustomRoutingListenerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateCustomRoutingListenerOutput, context: context)
        type = Types::UpdateCustomRoutingListenerOutput.new
        type.listener = CustomRoutingListener.build(params[:listener], context: "#{context}[:listener]") unless params[:listener].nil?
        type
      end
    end

    module UpdateEndpointGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateEndpointGroupInput, context: context)
        type = Types::UpdateEndpointGroupInput.new
        type.endpoint_group_arn = params[:endpoint_group_arn]
        type.endpoint_configurations = EndpointConfigurations.build(params[:endpoint_configurations], context: "#{context}[:endpoint_configurations]") unless params[:endpoint_configurations].nil?
        type.traffic_dial_percentage = params[:traffic_dial_percentage]
        type.health_check_port = params[:health_check_port]
        type.health_check_protocol = params[:health_check_protocol]
        type.health_check_path = params[:health_check_path]
        type.health_check_interval_seconds = params[:health_check_interval_seconds]
        type.threshold_count = params[:threshold_count]
        type.port_overrides = PortOverrides.build(params[:port_overrides], context: "#{context}[:port_overrides]") unless params[:port_overrides].nil?
        type
      end
    end

    module UpdateEndpointGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateEndpointGroupOutput, context: context)
        type = Types::UpdateEndpointGroupOutput.new
        type.endpoint_group = EndpointGroup.build(params[:endpoint_group], context: "#{context}[:endpoint_group]") unless params[:endpoint_group].nil?
        type
      end
    end

    module UpdateListenerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateListenerInput, context: context)
        type = Types::UpdateListenerInput.new
        type.listener_arn = params[:listener_arn]
        type.port_ranges = PortRanges.build(params[:port_ranges], context: "#{context}[:port_ranges]") unless params[:port_ranges].nil?
        type.protocol = params[:protocol]
        type.client_affinity = params[:client_affinity]
        type
      end
    end

    module UpdateListenerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateListenerOutput, context: context)
        type = Types::UpdateListenerOutput.new
        type.listener = Listener.build(params[:listener], context: "#{context}[:listener]") unless params[:listener].nil?
        type
      end
    end

    module WithdrawByoipCidrInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WithdrawByoipCidrInput, context: context)
        type = Types::WithdrawByoipCidrInput.new
        type.cidr = params[:cidr]
        type
      end
    end

    module WithdrawByoipCidrOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WithdrawByoipCidrOutput, context: context)
        type = Types::WithdrawByoipCidrOutput.new
        type.byoip_cidr = ByoipCidr.build(params[:byoip_cidr], context: "#{context}[:byoip_cidr]") unless params[:byoip_cidr].nil?
        type
      end
    end

  end
end
