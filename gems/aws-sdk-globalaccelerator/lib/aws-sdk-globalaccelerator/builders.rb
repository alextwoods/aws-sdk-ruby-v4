# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::GlobalAccelerator
  module Builders

    # Operation Builder for AddCustomRoutingEndpoints
    class AddCustomRoutingEndpoints
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GlobalAccelerator_V20180706.AddCustomRoutingEndpoints'
        data = {}
        data['EndpointConfigurations'] = CustomRoutingEndpointConfigurations.build(input[:endpoint_configurations]) unless input[:endpoint_configurations].nil?
        data['EndpointGroupArn'] = input[:endpoint_group_arn] unless input[:endpoint_group_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for CustomRoutingEndpointConfigurations
    class CustomRoutingEndpointConfigurations
      def self.build(input)
        data = []
        input.each do |element|
          data << CustomRoutingEndpointConfiguration.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CustomRoutingEndpointConfiguration
    class CustomRoutingEndpointConfiguration
      def self.build(input)
        data = {}
        data['EndpointId'] = input[:endpoint_id] unless input[:endpoint_id].nil?
        data
      end
    end

    # Operation Builder for AdvertiseByoipCidr
    class AdvertiseByoipCidr
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GlobalAccelerator_V20180706.AdvertiseByoipCidr'
        data = {}
        data['Cidr'] = input[:cidr] unless input[:cidr].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AllowCustomRoutingTraffic
    class AllowCustomRoutingTraffic
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GlobalAccelerator_V20180706.AllowCustomRoutingTraffic'
        data = {}
        data['EndpointGroupArn'] = input[:endpoint_group_arn] unless input[:endpoint_group_arn].nil?
        data['EndpointId'] = input[:endpoint_id] unless input[:endpoint_id].nil?
        data['DestinationAddresses'] = DestinationAddresses.build(input[:destination_addresses]) unless input[:destination_addresses].nil?
        data['DestinationPorts'] = DestinationPorts.build(input[:destination_ports]) unless input[:destination_ports].nil?
        data['AllowAllTrafficToEndpoint'] = input[:allow_all_traffic_to_endpoint] unless input[:allow_all_traffic_to_endpoint].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for DestinationPorts
    class DestinationPorts
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for DestinationAddresses
    class DestinationAddresses
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateAccelerator
    class CreateAccelerator
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GlobalAccelerator_V20180706.CreateAccelerator'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['IpAddressType'] = input[:ip_address_type] unless input[:ip_address_type].nil?
        data['IpAddresses'] = IpAddresses.build(input[:ip_addresses]) unless input[:ip_addresses].nil?
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        data['IdempotencyToken'] = input[:idempotency_token] unless input[:idempotency_token].nil?
        data['Tags'] = Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for Tags
    class Tags
      def self.build(input)
        data = []
        input.each do |element|
          data << Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # List Builder for IpAddresses
    class IpAddresses
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateCustomRoutingAccelerator
    class CreateCustomRoutingAccelerator
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GlobalAccelerator_V20180706.CreateCustomRoutingAccelerator'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['IpAddressType'] = input[:ip_address_type] unless input[:ip_address_type].nil?
        data['IpAddresses'] = IpAddresses.build(input[:ip_addresses]) unless input[:ip_addresses].nil?
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        data['IdempotencyToken'] = input[:idempotency_token] unless input[:idempotency_token].nil?
        data['Tags'] = Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateCustomRoutingEndpointGroup
    class CreateCustomRoutingEndpointGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GlobalAccelerator_V20180706.CreateCustomRoutingEndpointGroup'
        data = {}
        data['ListenerArn'] = input[:listener_arn] unless input[:listener_arn].nil?
        data['EndpointGroupRegion'] = input[:endpoint_group_region] unless input[:endpoint_group_region].nil?
        data['DestinationConfigurations'] = CustomRoutingDestinationConfigurations.build(input[:destination_configurations]) unless input[:destination_configurations].nil?
        data['IdempotencyToken'] = input[:idempotency_token] unless input[:idempotency_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for CustomRoutingDestinationConfigurations
    class CustomRoutingDestinationConfigurations
      def self.build(input)
        data = []
        input.each do |element|
          data << CustomRoutingDestinationConfiguration.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CustomRoutingDestinationConfiguration
    class CustomRoutingDestinationConfiguration
      def self.build(input)
        data = {}
        data['FromPort'] = input[:from_port] unless input[:from_port].nil?
        data['ToPort'] = input[:to_port] unless input[:to_port].nil?
        data['Protocols'] = CustomRoutingProtocols.build(input[:protocols]) unless input[:protocols].nil?
        data
      end
    end

    # List Builder for CustomRoutingProtocols
    class CustomRoutingProtocols
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateCustomRoutingListener
    class CreateCustomRoutingListener
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GlobalAccelerator_V20180706.CreateCustomRoutingListener'
        data = {}
        data['AcceleratorArn'] = input[:accelerator_arn] unless input[:accelerator_arn].nil?
        data['PortRanges'] = PortRanges.build(input[:port_ranges]) unless input[:port_ranges].nil?
        data['IdempotencyToken'] = input[:idempotency_token] unless input[:idempotency_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for PortRanges
    class PortRanges
      def self.build(input)
        data = []
        input.each do |element|
          data << PortRange.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for PortRange
    class PortRange
      def self.build(input)
        data = {}
        data['FromPort'] = input[:from_port] unless input[:from_port].nil?
        data['ToPort'] = input[:to_port] unless input[:to_port].nil?
        data
      end
    end

    # Operation Builder for CreateEndpointGroup
    class CreateEndpointGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GlobalAccelerator_V20180706.CreateEndpointGroup'
        data = {}
        data['ListenerArn'] = input[:listener_arn] unless input[:listener_arn].nil?
        data['EndpointGroupRegion'] = input[:endpoint_group_region] unless input[:endpoint_group_region].nil?
        data['EndpointConfigurations'] = EndpointConfigurations.build(input[:endpoint_configurations]) unless input[:endpoint_configurations].nil?
        data['TrafficDialPercentage'] = Hearth::NumberHelper.serialize(input[:traffic_dial_percentage]) unless input[:traffic_dial_percentage].nil?
        data['HealthCheckPort'] = input[:health_check_port] unless input[:health_check_port].nil?
        data['HealthCheckProtocol'] = input[:health_check_protocol] unless input[:health_check_protocol].nil?
        data['HealthCheckPath'] = input[:health_check_path] unless input[:health_check_path].nil?
        data['HealthCheckIntervalSeconds'] = input[:health_check_interval_seconds] unless input[:health_check_interval_seconds].nil?
        data['ThresholdCount'] = input[:threshold_count] unless input[:threshold_count].nil?
        data['IdempotencyToken'] = input[:idempotency_token] unless input[:idempotency_token].nil?
        data['PortOverrides'] = PortOverrides.build(input[:port_overrides]) unless input[:port_overrides].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for PortOverrides
    class PortOverrides
      def self.build(input)
        data = []
        input.each do |element|
          data << PortOverride.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for PortOverride
    class PortOverride
      def self.build(input)
        data = {}
        data['ListenerPort'] = input[:listener_port] unless input[:listener_port].nil?
        data['EndpointPort'] = input[:endpoint_port] unless input[:endpoint_port].nil?
        data
      end
    end

    # List Builder for EndpointConfigurations
    class EndpointConfigurations
      def self.build(input)
        data = []
        input.each do |element|
          data << EndpointConfiguration.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for EndpointConfiguration
    class EndpointConfiguration
      def self.build(input)
        data = {}
        data['EndpointId'] = input[:endpoint_id] unless input[:endpoint_id].nil?
        data['Weight'] = input[:weight] unless input[:weight].nil?
        data['ClientIPPreservationEnabled'] = input[:client_ip_preservation_enabled] unless input[:client_ip_preservation_enabled].nil?
        data
      end
    end

    # Operation Builder for CreateListener
    class CreateListener
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GlobalAccelerator_V20180706.CreateListener'
        data = {}
        data['AcceleratorArn'] = input[:accelerator_arn] unless input[:accelerator_arn].nil?
        data['PortRanges'] = PortRanges.build(input[:port_ranges]) unless input[:port_ranges].nil?
        data['Protocol'] = input[:protocol] unless input[:protocol].nil?
        data['ClientAffinity'] = input[:client_affinity] unless input[:client_affinity].nil?
        data['IdempotencyToken'] = input[:idempotency_token] unless input[:idempotency_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteAccelerator
    class DeleteAccelerator
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GlobalAccelerator_V20180706.DeleteAccelerator'
        data = {}
        data['AcceleratorArn'] = input[:accelerator_arn] unless input[:accelerator_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteCustomRoutingAccelerator
    class DeleteCustomRoutingAccelerator
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GlobalAccelerator_V20180706.DeleteCustomRoutingAccelerator'
        data = {}
        data['AcceleratorArn'] = input[:accelerator_arn] unless input[:accelerator_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteCustomRoutingEndpointGroup
    class DeleteCustomRoutingEndpointGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GlobalAccelerator_V20180706.DeleteCustomRoutingEndpointGroup'
        data = {}
        data['EndpointGroupArn'] = input[:endpoint_group_arn] unless input[:endpoint_group_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteCustomRoutingListener
    class DeleteCustomRoutingListener
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GlobalAccelerator_V20180706.DeleteCustomRoutingListener'
        data = {}
        data['ListenerArn'] = input[:listener_arn] unless input[:listener_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteEndpointGroup
    class DeleteEndpointGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GlobalAccelerator_V20180706.DeleteEndpointGroup'
        data = {}
        data['EndpointGroupArn'] = input[:endpoint_group_arn] unless input[:endpoint_group_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteListener
    class DeleteListener
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GlobalAccelerator_V20180706.DeleteListener'
        data = {}
        data['ListenerArn'] = input[:listener_arn] unless input[:listener_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DenyCustomRoutingTraffic
    class DenyCustomRoutingTraffic
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GlobalAccelerator_V20180706.DenyCustomRoutingTraffic'
        data = {}
        data['EndpointGroupArn'] = input[:endpoint_group_arn] unless input[:endpoint_group_arn].nil?
        data['EndpointId'] = input[:endpoint_id] unless input[:endpoint_id].nil?
        data['DestinationAddresses'] = DestinationAddresses.build(input[:destination_addresses]) unless input[:destination_addresses].nil?
        data['DestinationPorts'] = DestinationPorts.build(input[:destination_ports]) unless input[:destination_ports].nil?
        data['DenyAllTrafficToEndpoint'] = input[:deny_all_traffic_to_endpoint] unless input[:deny_all_traffic_to_endpoint].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeprovisionByoipCidr
    class DeprovisionByoipCidr
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GlobalAccelerator_V20180706.DeprovisionByoipCidr'
        data = {}
        data['Cidr'] = input[:cidr] unless input[:cidr].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeAccelerator
    class DescribeAccelerator
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GlobalAccelerator_V20180706.DescribeAccelerator'
        data = {}
        data['AcceleratorArn'] = input[:accelerator_arn] unless input[:accelerator_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeAcceleratorAttributes
    class DescribeAcceleratorAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GlobalAccelerator_V20180706.DescribeAcceleratorAttributes'
        data = {}
        data['AcceleratorArn'] = input[:accelerator_arn] unless input[:accelerator_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeCustomRoutingAccelerator
    class DescribeCustomRoutingAccelerator
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GlobalAccelerator_V20180706.DescribeCustomRoutingAccelerator'
        data = {}
        data['AcceleratorArn'] = input[:accelerator_arn] unless input[:accelerator_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeCustomRoutingAcceleratorAttributes
    class DescribeCustomRoutingAcceleratorAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GlobalAccelerator_V20180706.DescribeCustomRoutingAcceleratorAttributes'
        data = {}
        data['AcceleratorArn'] = input[:accelerator_arn] unless input[:accelerator_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeCustomRoutingEndpointGroup
    class DescribeCustomRoutingEndpointGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GlobalAccelerator_V20180706.DescribeCustomRoutingEndpointGroup'
        data = {}
        data['EndpointGroupArn'] = input[:endpoint_group_arn] unless input[:endpoint_group_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeCustomRoutingListener
    class DescribeCustomRoutingListener
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GlobalAccelerator_V20180706.DescribeCustomRoutingListener'
        data = {}
        data['ListenerArn'] = input[:listener_arn] unless input[:listener_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeEndpointGroup
    class DescribeEndpointGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GlobalAccelerator_V20180706.DescribeEndpointGroup'
        data = {}
        data['EndpointGroupArn'] = input[:endpoint_group_arn] unless input[:endpoint_group_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeListener
    class DescribeListener
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GlobalAccelerator_V20180706.DescribeListener'
        data = {}
        data['ListenerArn'] = input[:listener_arn] unless input[:listener_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListAccelerators
    class ListAccelerators
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GlobalAccelerator_V20180706.ListAccelerators'
        data = {}
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListByoipCidrs
    class ListByoipCidrs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GlobalAccelerator_V20180706.ListByoipCidrs'
        data = {}
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListCustomRoutingAccelerators
    class ListCustomRoutingAccelerators
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GlobalAccelerator_V20180706.ListCustomRoutingAccelerators'
        data = {}
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListCustomRoutingEndpointGroups
    class ListCustomRoutingEndpointGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GlobalAccelerator_V20180706.ListCustomRoutingEndpointGroups'
        data = {}
        data['ListenerArn'] = input[:listener_arn] unless input[:listener_arn].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListCustomRoutingListeners
    class ListCustomRoutingListeners
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GlobalAccelerator_V20180706.ListCustomRoutingListeners'
        data = {}
        data['AcceleratorArn'] = input[:accelerator_arn] unless input[:accelerator_arn].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListCustomRoutingPortMappings
    class ListCustomRoutingPortMappings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GlobalAccelerator_V20180706.ListCustomRoutingPortMappings'
        data = {}
        data['AcceleratorArn'] = input[:accelerator_arn] unless input[:accelerator_arn].nil?
        data['EndpointGroupArn'] = input[:endpoint_group_arn] unless input[:endpoint_group_arn].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListCustomRoutingPortMappingsByDestination
    class ListCustomRoutingPortMappingsByDestination
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GlobalAccelerator_V20180706.ListCustomRoutingPortMappingsByDestination'
        data = {}
        data['EndpointId'] = input[:endpoint_id] unless input[:endpoint_id].nil?
        data['DestinationAddress'] = input[:destination_address] unless input[:destination_address].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListEndpointGroups
    class ListEndpointGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GlobalAccelerator_V20180706.ListEndpointGroups'
        data = {}
        data['ListenerArn'] = input[:listener_arn] unless input[:listener_arn].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListListeners
    class ListListeners
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GlobalAccelerator_V20180706.ListListeners'
        data = {}
        data['AcceleratorArn'] = input[:accelerator_arn] unless input[:accelerator_arn].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GlobalAccelerator_V20180706.ListTagsForResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ProvisionByoipCidr
    class ProvisionByoipCidr
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GlobalAccelerator_V20180706.ProvisionByoipCidr'
        data = {}
        data['Cidr'] = input[:cidr] unless input[:cidr].nil?
        data['CidrAuthorizationContext'] = CidrAuthorizationContext.build(input[:cidr_authorization_context]) unless input[:cidr_authorization_context].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for CidrAuthorizationContext
    class CidrAuthorizationContext
      def self.build(input)
        data = {}
        data['Message'] = input[:message] unless input[:message].nil?
        data['Signature'] = input[:signature] unless input[:signature].nil?
        data
      end
    end

    # Operation Builder for RemoveCustomRoutingEndpoints
    class RemoveCustomRoutingEndpoints
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GlobalAccelerator_V20180706.RemoveCustomRoutingEndpoints'
        data = {}
        data['EndpointIds'] = EndpointIds.build(input[:endpoint_ids]) unless input[:endpoint_ids].nil?
        data['EndpointGroupArn'] = input[:endpoint_group_arn] unless input[:endpoint_group_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for EndpointIds
    class EndpointIds
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GlobalAccelerator_V20180706.TagResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['Tags'] = Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GlobalAccelerator_V20180706.UntagResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['TagKeys'] = TagKeys.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagKeys
    class TagKeys
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateAccelerator
    class UpdateAccelerator
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GlobalAccelerator_V20180706.UpdateAccelerator'
        data = {}
        data['AcceleratorArn'] = input[:accelerator_arn] unless input[:accelerator_arn].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['IpAddressType'] = input[:ip_address_type] unless input[:ip_address_type].nil?
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateAcceleratorAttributes
    class UpdateAcceleratorAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GlobalAccelerator_V20180706.UpdateAcceleratorAttributes'
        data = {}
        data['AcceleratorArn'] = input[:accelerator_arn] unless input[:accelerator_arn].nil?
        data['FlowLogsEnabled'] = input[:flow_logs_enabled] unless input[:flow_logs_enabled].nil?
        data['FlowLogsS3Bucket'] = input[:flow_logs_s3_bucket] unless input[:flow_logs_s3_bucket].nil?
        data['FlowLogsS3Prefix'] = input[:flow_logs_s3_prefix] unless input[:flow_logs_s3_prefix].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateCustomRoutingAccelerator
    class UpdateCustomRoutingAccelerator
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GlobalAccelerator_V20180706.UpdateCustomRoutingAccelerator'
        data = {}
        data['AcceleratorArn'] = input[:accelerator_arn] unless input[:accelerator_arn].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['IpAddressType'] = input[:ip_address_type] unless input[:ip_address_type].nil?
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateCustomRoutingAcceleratorAttributes
    class UpdateCustomRoutingAcceleratorAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GlobalAccelerator_V20180706.UpdateCustomRoutingAcceleratorAttributes'
        data = {}
        data['AcceleratorArn'] = input[:accelerator_arn] unless input[:accelerator_arn].nil?
        data['FlowLogsEnabled'] = input[:flow_logs_enabled] unless input[:flow_logs_enabled].nil?
        data['FlowLogsS3Bucket'] = input[:flow_logs_s3_bucket] unless input[:flow_logs_s3_bucket].nil?
        data['FlowLogsS3Prefix'] = input[:flow_logs_s3_prefix] unless input[:flow_logs_s3_prefix].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateCustomRoutingListener
    class UpdateCustomRoutingListener
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GlobalAccelerator_V20180706.UpdateCustomRoutingListener'
        data = {}
        data['ListenerArn'] = input[:listener_arn] unless input[:listener_arn].nil?
        data['PortRanges'] = PortRanges.build(input[:port_ranges]) unless input[:port_ranges].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateEndpointGroup
    class UpdateEndpointGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GlobalAccelerator_V20180706.UpdateEndpointGroup'
        data = {}
        data['EndpointGroupArn'] = input[:endpoint_group_arn] unless input[:endpoint_group_arn].nil?
        data['EndpointConfigurations'] = EndpointConfigurations.build(input[:endpoint_configurations]) unless input[:endpoint_configurations].nil?
        data['TrafficDialPercentage'] = Hearth::NumberHelper.serialize(input[:traffic_dial_percentage]) unless input[:traffic_dial_percentage].nil?
        data['HealthCheckPort'] = input[:health_check_port] unless input[:health_check_port].nil?
        data['HealthCheckProtocol'] = input[:health_check_protocol] unless input[:health_check_protocol].nil?
        data['HealthCheckPath'] = input[:health_check_path] unless input[:health_check_path].nil?
        data['HealthCheckIntervalSeconds'] = input[:health_check_interval_seconds] unless input[:health_check_interval_seconds].nil?
        data['ThresholdCount'] = input[:threshold_count] unless input[:threshold_count].nil?
        data['PortOverrides'] = PortOverrides.build(input[:port_overrides]) unless input[:port_overrides].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateListener
    class UpdateListener
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GlobalAccelerator_V20180706.UpdateListener'
        data = {}
        data['ListenerArn'] = input[:listener_arn] unless input[:listener_arn].nil?
        data['PortRanges'] = PortRanges.build(input[:port_ranges]) unless input[:port_ranges].nil?
        data['Protocol'] = input[:protocol] unless input[:protocol].nil?
        data['ClientAffinity'] = input[:client_affinity] unless input[:client_affinity].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for WithdrawByoipCidr
    class WithdrawByoipCidr
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GlobalAccelerator_V20180706.WithdrawByoipCidr'
        data = {}
        data['Cidr'] = input[:cidr] unless input[:cidr].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
