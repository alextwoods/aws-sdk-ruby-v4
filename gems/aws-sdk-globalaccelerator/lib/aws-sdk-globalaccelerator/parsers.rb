# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::GlobalAccelerator
  module Parsers

    # Operation Parser for AddCustomRoutingEndpoints
    class AddCustomRoutingEndpoints
      def self.parse(http_resp)
        data = Types::AddCustomRoutingEndpointsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.endpoint_descriptions = (CustomRoutingEndpointDescriptions.parse(map['EndpointDescriptions']) unless map['EndpointDescriptions'].nil?)
        data.endpoint_group_arn = map['EndpointGroupArn']
        data
      end
    end

    class CustomRoutingEndpointDescriptions
      def self.parse(list)
        list.map do |value|
          CustomRoutingEndpointDescription.parse(value) unless value.nil?
        end
      end
    end

    class CustomRoutingEndpointDescription
      def self.parse(map)
        data = Types::CustomRoutingEndpointDescription.new
        data.endpoint_id = map['EndpointId']
        return data
      end
    end

    # Error Parser for InvalidArgumentException
    class InvalidArgumentException
      def self.parse(http_resp)
        data = Types::InvalidArgumentException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InternalServiceErrorException
    class InternalServiceErrorException
      def self.parse(http_resp)
        data = Types::InternalServiceErrorException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp)
        data = Types::LimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for EndpointGroupNotFoundException
    class EndpointGroupNotFoundException
      def self.parse(http_resp)
        data = Types::EndpointGroupNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for EndpointAlreadyExistsException
    class EndpointAlreadyExistsException
      def self.parse(http_resp)
        data = Types::EndpointAlreadyExistsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for AdvertiseByoipCidr
    class AdvertiseByoipCidr
      def self.parse(http_resp)
        data = Types::AdvertiseByoipCidrOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.byoip_cidr = (ByoipCidr.parse(map['ByoipCidr']) unless map['ByoipCidr'].nil?)
        data
      end
    end

    class ByoipCidr
      def self.parse(map)
        data = Types::ByoipCidr.new
        data.cidr = map['Cidr']
        data.state = map['State']
        data.events = (ByoipCidrEvents.parse(map['Events']) unless map['Events'].nil?)
        return data
      end
    end

    class ByoipCidrEvents
      def self.parse(list)
        list.map do |value|
          ByoipCidrEvent.parse(value) unless value.nil?
        end
      end
    end

    class ByoipCidrEvent
      def self.parse(map)
        data = Types::ByoipCidrEvent.new
        data.message = map['Message']
        data.timestamp = Time.at(map['Timestamp'].to_i) if map['Timestamp']
        return data
      end
    end

    # Error Parser for ByoipCidrNotFoundException
    class ByoipCidrNotFoundException
      def self.parse(http_resp)
        data = Types::ByoipCidrNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for IncorrectCidrStateException
    class IncorrectCidrStateException
      def self.parse(http_resp)
        data = Types::IncorrectCidrStateException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for AllowCustomRoutingTraffic
    class AllowCustomRoutingTraffic
      def self.parse(http_resp)
        data = Types::AllowCustomRoutingTrafficOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for CreateAccelerator
    class CreateAccelerator
      def self.parse(http_resp)
        data = Types::CreateAcceleratorOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.accelerator = (Accelerator.parse(map['Accelerator']) unless map['Accelerator'].nil?)
        data
      end
    end

    class Accelerator
      def self.parse(map)
        data = Types::Accelerator.new
        data.accelerator_arn = map['AcceleratorArn']
        data.name = map['Name']
        data.ip_address_type = map['IpAddressType']
        data.enabled = map['Enabled']
        data.ip_sets = (IpSets.parse(map['IpSets']) unless map['IpSets'].nil?)
        data.dns_name = map['DnsName']
        data.status = map['Status']
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        return data
      end
    end

    class IpSets
      def self.parse(list)
        list.map do |value|
          IpSet.parse(value) unless value.nil?
        end
      end
    end

    class IpSet
      def self.parse(map)
        data = Types::IpSet.new
        data.ip_family = map['IpFamily']
        data.ip_addresses = (IpAddresses.parse(map['IpAddresses']) unless map['IpAddresses'].nil?)
        return data
      end
    end

    class IpAddresses
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for CreateCustomRoutingAccelerator
    class CreateCustomRoutingAccelerator
      def self.parse(http_resp)
        data = Types::CreateCustomRoutingAcceleratorOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.accelerator = (CustomRoutingAccelerator.parse(map['Accelerator']) unless map['Accelerator'].nil?)
        data
      end
    end

    class CustomRoutingAccelerator
      def self.parse(map)
        data = Types::CustomRoutingAccelerator.new
        data.accelerator_arn = map['AcceleratorArn']
        data.name = map['Name']
        data.ip_address_type = map['IpAddressType']
        data.enabled = map['Enabled']
        data.ip_sets = (IpSets.parse(map['IpSets']) unless map['IpSets'].nil?)
        data.dns_name = map['DnsName']
        data.status = map['Status']
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        return data
      end
    end

    # Operation Parser for CreateCustomRoutingEndpointGroup
    class CreateCustomRoutingEndpointGroup
      def self.parse(http_resp)
        data = Types::CreateCustomRoutingEndpointGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.endpoint_group = (CustomRoutingEndpointGroup.parse(map['EndpointGroup']) unless map['EndpointGroup'].nil?)
        data
      end
    end

    class CustomRoutingEndpointGroup
      def self.parse(map)
        data = Types::CustomRoutingEndpointGroup.new
        data.endpoint_group_arn = map['EndpointGroupArn']
        data.endpoint_group_region = map['EndpointGroupRegion']
        data.destination_descriptions = (CustomRoutingDestinationDescriptions.parse(map['DestinationDescriptions']) unless map['DestinationDescriptions'].nil?)
        data.endpoint_descriptions = (CustomRoutingEndpointDescriptions.parse(map['EndpointDescriptions']) unless map['EndpointDescriptions'].nil?)
        return data
      end
    end

    class CustomRoutingDestinationDescriptions
      def self.parse(list)
        list.map do |value|
          CustomRoutingDestinationDescription.parse(value) unless value.nil?
        end
      end
    end

    class CustomRoutingDestinationDescription
      def self.parse(map)
        data = Types::CustomRoutingDestinationDescription.new
        data.from_port = map['FromPort']
        data.to_port = map['ToPort']
        data.protocols = (Protocols.parse(map['Protocols']) unless map['Protocols'].nil?)
        return data
      end
    end

    class Protocols
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Error Parser for InvalidPortRangeException
    class InvalidPortRangeException
      def self.parse(http_resp)
        data = Types::InvalidPortRangeException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for AcceleratorNotFoundException
    class AcceleratorNotFoundException
      def self.parse(http_resp)
        data = Types::AcceleratorNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for EndpointGroupAlreadyExistsException
    class EndpointGroupAlreadyExistsException
      def self.parse(http_resp)
        data = Types::EndpointGroupAlreadyExistsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ListenerNotFoundException
    class ListenerNotFoundException
      def self.parse(http_resp)
        data = Types::ListenerNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateCustomRoutingListener
    class CreateCustomRoutingListener
      def self.parse(http_resp)
        data = Types::CreateCustomRoutingListenerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.listener = (CustomRoutingListener.parse(map['Listener']) unless map['Listener'].nil?)
        data
      end
    end

    class CustomRoutingListener
      def self.parse(map)
        data = Types::CustomRoutingListener.new
        data.listener_arn = map['ListenerArn']
        data.port_ranges = (PortRanges.parse(map['PortRanges']) unless map['PortRanges'].nil?)
        return data
      end
    end

    class PortRanges
      def self.parse(list)
        list.map do |value|
          PortRange.parse(value) unless value.nil?
        end
      end
    end

    class PortRange
      def self.parse(map)
        data = Types::PortRange.new
        data.from_port = map['FromPort']
        data.to_port = map['ToPort']
        return data
      end
    end

    # Operation Parser for CreateEndpointGroup
    class CreateEndpointGroup
      def self.parse(http_resp)
        data = Types::CreateEndpointGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.endpoint_group = (EndpointGroup.parse(map['EndpointGroup']) unless map['EndpointGroup'].nil?)
        data
      end
    end

    class EndpointGroup
      def self.parse(map)
        data = Types::EndpointGroup.new
        data.endpoint_group_arn = map['EndpointGroupArn']
        data.endpoint_group_region = map['EndpointGroupRegion']
        data.endpoint_descriptions = (EndpointDescriptions.parse(map['EndpointDescriptions']) unless map['EndpointDescriptions'].nil?)
        data.traffic_dial_percentage = Hearth::NumberHelper.deserialize(map['TrafficDialPercentage'])
        data.health_check_port = map['HealthCheckPort']
        data.health_check_protocol = map['HealthCheckProtocol']
        data.health_check_path = map['HealthCheckPath']
        data.health_check_interval_seconds = map['HealthCheckIntervalSeconds']
        data.threshold_count = map['ThresholdCount']
        data.port_overrides = (PortOverrides.parse(map['PortOverrides']) unless map['PortOverrides'].nil?)
        return data
      end
    end

    class PortOverrides
      def self.parse(list)
        list.map do |value|
          PortOverride.parse(value) unless value.nil?
        end
      end
    end

    class PortOverride
      def self.parse(map)
        data = Types::PortOverride.new
        data.listener_port = map['ListenerPort']
        data.endpoint_port = map['EndpointPort']
        return data
      end
    end

    class EndpointDescriptions
      def self.parse(list)
        list.map do |value|
          EndpointDescription.parse(value) unless value.nil?
        end
      end
    end

    class EndpointDescription
      def self.parse(map)
        data = Types::EndpointDescription.new
        data.endpoint_id = map['EndpointId']
        data.weight = map['Weight']
        data.health_state = map['HealthState']
        data.health_reason = map['HealthReason']
        data.client_ip_preservation_enabled = map['ClientIPPreservationEnabled']
        return data
      end
    end

    # Operation Parser for CreateListener
    class CreateListener
      def self.parse(http_resp)
        data = Types::CreateListenerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.listener = (Listener.parse(map['Listener']) unless map['Listener'].nil?)
        data
      end
    end

    class Listener
      def self.parse(map)
        data = Types::Listener.new
        data.listener_arn = map['ListenerArn']
        data.port_ranges = (PortRanges.parse(map['PortRanges']) unless map['PortRanges'].nil?)
        data.protocol = map['Protocol']
        data.client_affinity = map['ClientAffinity']
        return data
      end
    end

    # Operation Parser for DeleteAccelerator
    class DeleteAccelerator
      def self.parse(http_resp)
        data = Types::DeleteAcceleratorOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for AcceleratorNotDisabledException
    class AcceleratorNotDisabledException
      def self.parse(http_resp)
        data = Types::AcceleratorNotDisabledException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for AssociatedListenerFoundException
    class AssociatedListenerFoundException
      def self.parse(http_resp)
        data = Types::AssociatedListenerFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeleteCustomRoutingAccelerator
    class DeleteCustomRoutingAccelerator
      def self.parse(http_resp)
        data = Types::DeleteCustomRoutingAcceleratorOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteCustomRoutingEndpointGroup
    class DeleteCustomRoutingEndpointGroup
      def self.parse(http_resp)
        data = Types::DeleteCustomRoutingEndpointGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteCustomRoutingListener
    class DeleteCustomRoutingListener
      def self.parse(http_resp)
        data = Types::DeleteCustomRoutingListenerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for AssociatedEndpointGroupFoundException
    class AssociatedEndpointGroupFoundException
      def self.parse(http_resp)
        data = Types::AssociatedEndpointGroupFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeleteEndpointGroup
    class DeleteEndpointGroup
      def self.parse(http_resp)
        data = Types::DeleteEndpointGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteListener
    class DeleteListener
      def self.parse(http_resp)
        data = Types::DeleteListenerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DenyCustomRoutingTraffic
    class DenyCustomRoutingTraffic
      def self.parse(http_resp)
        data = Types::DenyCustomRoutingTrafficOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeprovisionByoipCidr
    class DeprovisionByoipCidr
      def self.parse(http_resp)
        data = Types::DeprovisionByoipCidrOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.byoip_cidr = (ByoipCidr.parse(map['ByoipCidr']) unless map['ByoipCidr'].nil?)
        data
      end
    end

    # Operation Parser for DescribeAccelerator
    class DescribeAccelerator
      def self.parse(http_resp)
        data = Types::DescribeAcceleratorOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.accelerator = (Accelerator.parse(map['Accelerator']) unless map['Accelerator'].nil?)
        data
      end
    end

    # Operation Parser for DescribeAcceleratorAttributes
    class DescribeAcceleratorAttributes
      def self.parse(http_resp)
        data = Types::DescribeAcceleratorAttributesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.accelerator_attributes = (AcceleratorAttributes.parse(map['AcceleratorAttributes']) unless map['AcceleratorAttributes'].nil?)
        data
      end
    end

    class AcceleratorAttributes
      def self.parse(map)
        data = Types::AcceleratorAttributes.new
        data.flow_logs_enabled = map['FlowLogsEnabled']
        data.flow_logs_s3_bucket = map['FlowLogsS3Bucket']
        data.flow_logs_s3_prefix = map['FlowLogsS3Prefix']
        return data
      end
    end

    # Operation Parser for DescribeCustomRoutingAccelerator
    class DescribeCustomRoutingAccelerator
      def self.parse(http_resp)
        data = Types::DescribeCustomRoutingAcceleratorOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.accelerator = (CustomRoutingAccelerator.parse(map['Accelerator']) unless map['Accelerator'].nil?)
        data
      end
    end

    # Operation Parser for DescribeCustomRoutingAcceleratorAttributes
    class DescribeCustomRoutingAcceleratorAttributes
      def self.parse(http_resp)
        data = Types::DescribeCustomRoutingAcceleratorAttributesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.accelerator_attributes = (CustomRoutingAcceleratorAttributes.parse(map['AcceleratorAttributes']) unless map['AcceleratorAttributes'].nil?)
        data
      end
    end

    class CustomRoutingAcceleratorAttributes
      def self.parse(map)
        data = Types::CustomRoutingAcceleratorAttributes.new
        data.flow_logs_enabled = map['FlowLogsEnabled']
        data.flow_logs_s3_bucket = map['FlowLogsS3Bucket']
        data.flow_logs_s3_prefix = map['FlowLogsS3Prefix']
        return data
      end
    end

    # Operation Parser for DescribeCustomRoutingEndpointGroup
    class DescribeCustomRoutingEndpointGroup
      def self.parse(http_resp)
        data = Types::DescribeCustomRoutingEndpointGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.endpoint_group = (CustomRoutingEndpointGroup.parse(map['EndpointGroup']) unless map['EndpointGroup'].nil?)
        data
      end
    end

    # Operation Parser for DescribeCustomRoutingListener
    class DescribeCustomRoutingListener
      def self.parse(http_resp)
        data = Types::DescribeCustomRoutingListenerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.listener = (CustomRoutingListener.parse(map['Listener']) unless map['Listener'].nil?)
        data
      end
    end

    # Operation Parser for DescribeEndpointGroup
    class DescribeEndpointGroup
      def self.parse(http_resp)
        data = Types::DescribeEndpointGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.endpoint_group = (EndpointGroup.parse(map['EndpointGroup']) unless map['EndpointGroup'].nil?)
        data
      end
    end

    # Operation Parser for DescribeListener
    class DescribeListener
      def self.parse(http_resp)
        data = Types::DescribeListenerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.listener = (Listener.parse(map['Listener']) unless map['Listener'].nil?)
        data
      end
    end

    # Operation Parser for ListAccelerators
    class ListAccelerators
      def self.parse(http_resp)
        data = Types::ListAcceleratorsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.accelerators = (Accelerators.parse(map['Accelerators']) unless map['Accelerators'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class Accelerators
      def self.parse(list)
        list.map do |value|
          Accelerator.parse(value) unless value.nil?
        end
      end
    end

    # Error Parser for InvalidNextTokenException
    class InvalidNextTokenException
      def self.parse(http_resp)
        data = Types::InvalidNextTokenException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for ListByoipCidrs
    class ListByoipCidrs
      def self.parse(http_resp)
        data = Types::ListByoipCidrsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.byoip_cidrs = (ByoipCidrs.parse(map['ByoipCidrs']) unless map['ByoipCidrs'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ByoipCidrs
      def self.parse(list)
        list.map do |value|
          ByoipCidr.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListCustomRoutingAccelerators
    class ListCustomRoutingAccelerators
      def self.parse(http_resp)
        data = Types::ListCustomRoutingAcceleratorsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.accelerators = (CustomRoutingAccelerators.parse(map['Accelerators']) unless map['Accelerators'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class CustomRoutingAccelerators
      def self.parse(list)
        list.map do |value|
          CustomRoutingAccelerator.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListCustomRoutingEndpointGroups
    class ListCustomRoutingEndpointGroups
      def self.parse(http_resp)
        data = Types::ListCustomRoutingEndpointGroupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.endpoint_groups = (CustomRoutingEndpointGroups.parse(map['EndpointGroups']) unless map['EndpointGroups'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class CustomRoutingEndpointGroups
      def self.parse(list)
        list.map do |value|
          CustomRoutingEndpointGroup.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListCustomRoutingListeners
    class ListCustomRoutingListeners
      def self.parse(http_resp)
        data = Types::ListCustomRoutingListenersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.listeners = (CustomRoutingListeners.parse(map['Listeners']) unless map['Listeners'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class CustomRoutingListeners
      def self.parse(list)
        list.map do |value|
          CustomRoutingListener.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListCustomRoutingPortMappings
    class ListCustomRoutingPortMappings
      def self.parse(http_resp)
        data = Types::ListCustomRoutingPortMappingsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.port_mappings = (PortMappings.parse(map['PortMappings']) unless map['PortMappings'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class PortMappings
      def self.parse(list)
        list.map do |value|
          PortMapping.parse(value) unless value.nil?
        end
      end
    end

    class PortMapping
      def self.parse(map)
        data = Types::PortMapping.new
        data.accelerator_port = map['AcceleratorPort']
        data.endpoint_group_arn = map['EndpointGroupArn']
        data.endpoint_id = map['EndpointId']
        data.destination_socket_address = (SocketAddress.parse(map['DestinationSocketAddress']) unless map['DestinationSocketAddress'].nil?)
        data.protocols = (CustomRoutingProtocols.parse(map['Protocols']) unless map['Protocols'].nil?)
        data.destination_traffic_state = map['DestinationTrafficState']
        return data
      end
    end

    class CustomRoutingProtocols
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class SocketAddress
      def self.parse(map)
        data = Types::SocketAddress.new
        data.ip_address = map['IpAddress']
        data.port = map['Port']
        return data
      end
    end

    # Operation Parser for ListCustomRoutingPortMappingsByDestination
    class ListCustomRoutingPortMappingsByDestination
      def self.parse(http_resp)
        data = Types::ListCustomRoutingPortMappingsByDestinationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.destination_port_mappings = (DestinationPortMappings.parse(map['DestinationPortMappings']) unless map['DestinationPortMappings'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class DestinationPortMappings
      def self.parse(list)
        list.map do |value|
          DestinationPortMapping.parse(value) unless value.nil?
        end
      end
    end

    class DestinationPortMapping
      def self.parse(map)
        data = Types::DestinationPortMapping.new
        data.accelerator_arn = map['AcceleratorArn']
        data.accelerator_socket_addresses = (SocketAddresses.parse(map['AcceleratorSocketAddresses']) unless map['AcceleratorSocketAddresses'].nil?)
        data.endpoint_group_arn = map['EndpointGroupArn']
        data.endpoint_id = map['EndpointId']
        data.endpoint_group_region = map['EndpointGroupRegion']
        data.destination_socket_address = (SocketAddress.parse(map['DestinationSocketAddress']) unless map['DestinationSocketAddress'].nil?)
        data.ip_address_type = map['IpAddressType']
        data.destination_traffic_state = map['DestinationTrafficState']
        return data
      end
    end

    class SocketAddresses
      def self.parse(list)
        list.map do |value|
          SocketAddress.parse(value) unless value.nil?
        end
      end
    end

    # Error Parser for EndpointNotFoundException
    class EndpointNotFoundException
      def self.parse(http_resp)
        data = Types::EndpointNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for ListEndpointGroups
    class ListEndpointGroups
      def self.parse(http_resp)
        data = Types::ListEndpointGroupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.endpoint_groups = (EndpointGroups.parse(map['EndpointGroups']) unless map['EndpointGroups'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class EndpointGroups
      def self.parse(list)
        list.map do |value|
          EndpointGroup.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListListeners
    class ListListeners
      def self.parse(http_resp)
        data = Types::ListListenersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.listeners = (Listeners.parse(map['Listeners']) unless map['Listeners'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class Listeners
      def self.parse(list)
        list.map do |value|
          Listener.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tags = (Tags.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    class Tags
      def self.parse(list)
        list.map do |value|
          Tag.parse(value) unless value.nil?
        end
      end
    end

    class Tag
      def self.parse(map)
        data = Types::Tag.new
        data.key = map['Key']
        data.value = map['Value']
        return data
      end
    end

    # Operation Parser for ProvisionByoipCidr
    class ProvisionByoipCidr
      def self.parse(http_resp)
        data = Types::ProvisionByoipCidrOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.byoip_cidr = (ByoipCidr.parse(map['ByoipCidr']) unless map['ByoipCidr'].nil?)
        data
      end
    end

    # Operation Parser for RemoveCustomRoutingEndpoints
    class RemoveCustomRoutingEndpoints
      def self.parse(http_resp)
        data = Types::RemoveCustomRoutingEndpointsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateAccelerator
    class UpdateAccelerator
      def self.parse(http_resp)
        data = Types::UpdateAcceleratorOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.accelerator = (Accelerator.parse(map['Accelerator']) unless map['Accelerator'].nil?)
        data
      end
    end

    # Operation Parser for UpdateAcceleratorAttributes
    class UpdateAcceleratorAttributes
      def self.parse(http_resp)
        data = Types::UpdateAcceleratorAttributesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.accelerator_attributes = (AcceleratorAttributes.parse(map['AcceleratorAttributes']) unless map['AcceleratorAttributes'].nil?)
        data
      end
    end

    # Operation Parser for UpdateCustomRoutingAccelerator
    class UpdateCustomRoutingAccelerator
      def self.parse(http_resp)
        data = Types::UpdateCustomRoutingAcceleratorOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.accelerator = (CustomRoutingAccelerator.parse(map['Accelerator']) unless map['Accelerator'].nil?)
        data
      end
    end

    # Operation Parser for UpdateCustomRoutingAcceleratorAttributes
    class UpdateCustomRoutingAcceleratorAttributes
      def self.parse(http_resp)
        data = Types::UpdateCustomRoutingAcceleratorAttributesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.accelerator_attributes = (CustomRoutingAcceleratorAttributes.parse(map['AcceleratorAttributes']) unless map['AcceleratorAttributes'].nil?)
        data
      end
    end

    # Operation Parser for UpdateCustomRoutingListener
    class UpdateCustomRoutingListener
      def self.parse(http_resp)
        data = Types::UpdateCustomRoutingListenerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.listener = (CustomRoutingListener.parse(map['Listener']) unless map['Listener'].nil?)
        data
      end
    end

    # Operation Parser for UpdateEndpointGroup
    class UpdateEndpointGroup
      def self.parse(http_resp)
        data = Types::UpdateEndpointGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.endpoint_group = (EndpointGroup.parse(map['EndpointGroup']) unless map['EndpointGroup'].nil?)
        data
      end
    end

    # Operation Parser for UpdateListener
    class UpdateListener
      def self.parse(http_resp)
        data = Types::UpdateListenerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.listener = (Listener.parse(map['Listener']) unless map['Listener'].nil?)
        data
      end
    end

    # Operation Parser for WithdrawByoipCidr
    class WithdrawByoipCidr
      def self.parse(http_resp)
        data = Types::WithdrawByoipCidrOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.byoip_cidr = (ByoipCidr.parse(map['ByoipCidr']) unless map['ByoipCidr'].nil?)
        data
      end
    end
  end
end
