# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::GlobalAccelerator
  module Stubs

    # Operation Stubber for AddCustomRoutingEndpoints
    class AddCustomRoutingEndpoints
      def self.default(visited=[])
        {
          endpoint_descriptions: CustomRoutingEndpointDescriptions.default(visited),
          endpoint_group_arn: 'endpoint_group_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['EndpointDescriptions'] = CustomRoutingEndpointDescriptions.stub(stub[:endpoint_descriptions]) unless stub[:endpoint_descriptions].nil?
        data['EndpointGroupArn'] = stub[:endpoint_group_arn] unless stub[:endpoint_group_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for CustomRoutingEndpointDescriptions
    class CustomRoutingEndpointDescriptions
      def self.default(visited=[])
        return nil if visited.include?('CustomRoutingEndpointDescriptions')
        visited = visited + ['CustomRoutingEndpointDescriptions']
        [
          CustomRoutingEndpointDescription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << CustomRoutingEndpointDescription.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CustomRoutingEndpointDescription
    class CustomRoutingEndpointDescription
      def self.default(visited=[])
        return nil if visited.include?('CustomRoutingEndpointDescription')
        visited = visited + ['CustomRoutingEndpointDescription']
        {
          endpoint_id: 'endpoint_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::CustomRoutingEndpointDescription.new
        data = {}
        data['EndpointId'] = stub[:endpoint_id] unless stub[:endpoint_id].nil?
        data
      end
    end

    # Operation Stubber for AdvertiseByoipCidr
    class AdvertiseByoipCidr
      def self.default(visited=[])
        {
          byoip_cidr: ByoipCidr.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ByoipCidr'] = ByoipCidr.stub(stub[:byoip_cidr]) unless stub[:byoip_cidr].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ByoipCidr
    class ByoipCidr
      def self.default(visited=[])
        return nil if visited.include?('ByoipCidr')
        visited = visited + ['ByoipCidr']
        {
          cidr: 'cidr',
          state: 'state',
          events: ByoipCidrEvents.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ByoipCidr.new
        data = {}
        data['Cidr'] = stub[:cidr] unless stub[:cidr].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['Events'] = ByoipCidrEvents.stub(stub[:events]) unless stub[:events].nil?
        data
      end
    end

    # List Stubber for ByoipCidrEvents
    class ByoipCidrEvents
      def self.default(visited=[])
        return nil if visited.include?('ByoipCidrEvents')
        visited = visited + ['ByoipCidrEvents']
        [
          ByoipCidrEvent.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ByoipCidrEvent.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ByoipCidrEvent
    class ByoipCidrEvent
      def self.default(visited=[])
        return nil if visited.include?('ByoipCidrEvent')
        visited = visited + ['ByoipCidrEvent']
        {
          message: 'message',
          timestamp: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ByoipCidrEvent.new
        data = {}
        data['Message'] = stub[:message] unless stub[:message].nil?
        data['Timestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:timestamp]).to_i unless stub[:timestamp].nil?
        data
      end
    end

    # Operation Stubber for AllowCustomRoutingTraffic
    class AllowCustomRoutingTraffic
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateAccelerator
    class CreateAccelerator
      def self.default(visited=[])
        {
          accelerator: Accelerator.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Accelerator'] = Accelerator.stub(stub[:accelerator]) unless stub[:accelerator].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Accelerator
    class Accelerator
      def self.default(visited=[])
        return nil if visited.include?('Accelerator')
        visited = visited + ['Accelerator']
        {
          accelerator_arn: 'accelerator_arn',
          name: 'name',
          ip_address_type: 'ip_address_type',
          enabled: false,
          ip_sets: IpSets.default(visited),
          dns_name: 'dns_name',
          status: 'status',
          created_time: Time.now,
          last_modified_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Accelerator.new
        data = {}
        data['AcceleratorArn'] = stub[:accelerator_arn] unless stub[:accelerator_arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['IpAddressType'] = stub[:ip_address_type] unless stub[:ip_address_type].nil?
        data['Enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data['IpSets'] = IpSets.stub(stub[:ip_sets]) unless stub[:ip_sets].nil?
        data['DnsName'] = stub[:dns_name] unless stub[:dns_name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data
      end
    end

    # List Stubber for IpSets
    class IpSets
      def self.default(visited=[])
        return nil if visited.include?('IpSets')
        visited = visited + ['IpSets']
        [
          IpSet.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << IpSet.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for IpSet
    class IpSet
      def self.default(visited=[])
        return nil if visited.include?('IpSet')
        visited = visited + ['IpSet']
        {
          ip_family: 'ip_family',
          ip_addresses: IpAddresses.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::IpSet.new
        data = {}
        data['IpFamily'] = stub[:ip_family] unless stub[:ip_family].nil?
        data['IpAddresses'] = IpAddresses.stub(stub[:ip_addresses]) unless stub[:ip_addresses].nil?
        data
      end
    end

    # List Stubber for IpAddresses
    class IpAddresses
      def self.default(visited=[])
        return nil if visited.include?('IpAddresses')
        visited = visited + ['IpAddresses']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for CreateCustomRoutingAccelerator
    class CreateCustomRoutingAccelerator
      def self.default(visited=[])
        {
          accelerator: CustomRoutingAccelerator.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Accelerator'] = CustomRoutingAccelerator.stub(stub[:accelerator]) unless stub[:accelerator].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for CustomRoutingAccelerator
    class CustomRoutingAccelerator
      def self.default(visited=[])
        return nil if visited.include?('CustomRoutingAccelerator')
        visited = visited + ['CustomRoutingAccelerator']
        {
          accelerator_arn: 'accelerator_arn',
          name: 'name',
          ip_address_type: 'ip_address_type',
          enabled: false,
          ip_sets: IpSets.default(visited),
          dns_name: 'dns_name',
          status: 'status',
          created_time: Time.now,
          last_modified_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::CustomRoutingAccelerator.new
        data = {}
        data['AcceleratorArn'] = stub[:accelerator_arn] unless stub[:accelerator_arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['IpAddressType'] = stub[:ip_address_type] unless stub[:ip_address_type].nil?
        data['Enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data['IpSets'] = IpSets.stub(stub[:ip_sets]) unless stub[:ip_sets].nil?
        data['DnsName'] = stub[:dns_name] unless stub[:dns_name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data
      end
    end

    # Operation Stubber for CreateCustomRoutingEndpointGroup
    class CreateCustomRoutingEndpointGroup
      def self.default(visited=[])
        {
          endpoint_group: CustomRoutingEndpointGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['EndpointGroup'] = CustomRoutingEndpointGroup.stub(stub[:endpoint_group]) unless stub[:endpoint_group].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for CustomRoutingEndpointGroup
    class CustomRoutingEndpointGroup
      def self.default(visited=[])
        return nil if visited.include?('CustomRoutingEndpointGroup')
        visited = visited + ['CustomRoutingEndpointGroup']
        {
          endpoint_group_arn: 'endpoint_group_arn',
          endpoint_group_region: 'endpoint_group_region',
          destination_descriptions: CustomRoutingDestinationDescriptions.default(visited),
          endpoint_descriptions: CustomRoutingEndpointDescriptions.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CustomRoutingEndpointGroup.new
        data = {}
        data['EndpointGroupArn'] = stub[:endpoint_group_arn] unless stub[:endpoint_group_arn].nil?
        data['EndpointGroupRegion'] = stub[:endpoint_group_region] unless stub[:endpoint_group_region].nil?
        data['DestinationDescriptions'] = CustomRoutingDestinationDescriptions.stub(stub[:destination_descriptions]) unless stub[:destination_descriptions].nil?
        data['EndpointDescriptions'] = CustomRoutingEndpointDescriptions.stub(stub[:endpoint_descriptions]) unless stub[:endpoint_descriptions].nil?
        data
      end
    end

    # List Stubber for CustomRoutingDestinationDescriptions
    class CustomRoutingDestinationDescriptions
      def self.default(visited=[])
        return nil if visited.include?('CustomRoutingDestinationDescriptions')
        visited = visited + ['CustomRoutingDestinationDescriptions']
        [
          CustomRoutingDestinationDescription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << CustomRoutingDestinationDescription.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CustomRoutingDestinationDescription
    class CustomRoutingDestinationDescription
      def self.default(visited=[])
        return nil if visited.include?('CustomRoutingDestinationDescription')
        visited = visited + ['CustomRoutingDestinationDescription']
        {
          from_port: 1,
          to_port: 1,
          protocols: Protocols.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CustomRoutingDestinationDescription.new
        data = {}
        data['FromPort'] = stub[:from_port] unless stub[:from_port].nil?
        data['ToPort'] = stub[:to_port] unless stub[:to_port].nil?
        data['Protocols'] = Protocols.stub(stub[:protocols]) unless stub[:protocols].nil?
        data
      end
    end

    # List Stubber for Protocols
    class Protocols
      def self.default(visited=[])
        return nil if visited.include?('Protocols')
        visited = visited + ['Protocols']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for CreateCustomRoutingListener
    class CreateCustomRoutingListener
      def self.default(visited=[])
        {
          listener: CustomRoutingListener.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Listener'] = CustomRoutingListener.stub(stub[:listener]) unless stub[:listener].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for CustomRoutingListener
    class CustomRoutingListener
      def self.default(visited=[])
        return nil if visited.include?('CustomRoutingListener')
        visited = visited + ['CustomRoutingListener']
        {
          listener_arn: 'listener_arn',
          port_ranges: PortRanges.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CustomRoutingListener.new
        data = {}
        data['ListenerArn'] = stub[:listener_arn] unless stub[:listener_arn].nil?
        data['PortRanges'] = PortRanges.stub(stub[:port_ranges]) unless stub[:port_ranges].nil?
        data
      end
    end

    # List Stubber for PortRanges
    class PortRanges
      def self.default(visited=[])
        return nil if visited.include?('PortRanges')
        visited = visited + ['PortRanges']
        [
          PortRange.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << PortRange.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PortRange
    class PortRange
      def self.default(visited=[])
        return nil if visited.include?('PortRange')
        visited = visited + ['PortRange']
        {
          from_port: 1,
          to_port: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::PortRange.new
        data = {}
        data['FromPort'] = stub[:from_port] unless stub[:from_port].nil?
        data['ToPort'] = stub[:to_port] unless stub[:to_port].nil?
        data
      end
    end

    # Operation Stubber for CreateEndpointGroup
    class CreateEndpointGroup
      def self.default(visited=[])
        {
          endpoint_group: EndpointGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['EndpointGroup'] = EndpointGroup.stub(stub[:endpoint_group]) unless stub[:endpoint_group].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for EndpointGroup
    class EndpointGroup
      def self.default(visited=[])
        return nil if visited.include?('EndpointGroup')
        visited = visited + ['EndpointGroup']
        {
          endpoint_group_arn: 'endpoint_group_arn',
          endpoint_group_region: 'endpoint_group_region',
          endpoint_descriptions: EndpointDescriptions.default(visited),
          traffic_dial_percentage: 1.0,
          health_check_port: 1,
          health_check_protocol: 'health_check_protocol',
          health_check_path: 'health_check_path',
          health_check_interval_seconds: 1,
          threshold_count: 1,
          port_overrides: PortOverrides.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::EndpointGroup.new
        data = {}
        data['EndpointGroupArn'] = stub[:endpoint_group_arn] unless stub[:endpoint_group_arn].nil?
        data['EndpointGroupRegion'] = stub[:endpoint_group_region] unless stub[:endpoint_group_region].nil?
        data['EndpointDescriptions'] = EndpointDescriptions.stub(stub[:endpoint_descriptions]) unless stub[:endpoint_descriptions].nil?
        data['TrafficDialPercentage'] = Hearth::NumberHelper.serialize(stub[:traffic_dial_percentage])
        data['HealthCheckPort'] = stub[:health_check_port] unless stub[:health_check_port].nil?
        data['HealthCheckProtocol'] = stub[:health_check_protocol] unless stub[:health_check_protocol].nil?
        data['HealthCheckPath'] = stub[:health_check_path] unless stub[:health_check_path].nil?
        data['HealthCheckIntervalSeconds'] = stub[:health_check_interval_seconds] unless stub[:health_check_interval_seconds].nil?
        data['ThresholdCount'] = stub[:threshold_count] unless stub[:threshold_count].nil?
        data['PortOverrides'] = PortOverrides.stub(stub[:port_overrides]) unless stub[:port_overrides].nil?
        data
      end
    end

    # List Stubber for PortOverrides
    class PortOverrides
      def self.default(visited=[])
        return nil if visited.include?('PortOverrides')
        visited = visited + ['PortOverrides']
        [
          PortOverride.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << PortOverride.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PortOverride
    class PortOverride
      def self.default(visited=[])
        return nil if visited.include?('PortOverride')
        visited = visited + ['PortOverride']
        {
          listener_port: 1,
          endpoint_port: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::PortOverride.new
        data = {}
        data['ListenerPort'] = stub[:listener_port] unless stub[:listener_port].nil?
        data['EndpointPort'] = stub[:endpoint_port] unless stub[:endpoint_port].nil?
        data
      end
    end

    # List Stubber for EndpointDescriptions
    class EndpointDescriptions
      def self.default(visited=[])
        return nil if visited.include?('EndpointDescriptions')
        visited = visited + ['EndpointDescriptions']
        [
          EndpointDescription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << EndpointDescription.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EndpointDescription
    class EndpointDescription
      def self.default(visited=[])
        return nil if visited.include?('EndpointDescription')
        visited = visited + ['EndpointDescription']
        {
          endpoint_id: 'endpoint_id',
          weight: 1,
          health_state: 'health_state',
          health_reason: 'health_reason',
          client_ip_preservation_enabled: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::EndpointDescription.new
        data = {}
        data['EndpointId'] = stub[:endpoint_id] unless stub[:endpoint_id].nil?
        data['Weight'] = stub[:weight] unless stub[:weight].nil?
        data['HealthState'] = stub[:health_state] unless stub[:health_state].nil?
        data['HealthReason'] = stub[:health_reason] unless stub[:health_reason].nil?
        data['ClientIPPreservationEnabled'] = stub[:client_ip_preservation_enabled] unless stub[:client_ip_preservation_enabled].nil?
        data
      end
    end

    # Operation Stubber for CreateListener
    class CreateListener
      def self.default(visited=[])
        {
          listener: Listener.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Listener'] = Listener.stub(stub[:listener]) unless stub[:listener].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Listener
    class Listener
      def self.default(visited=[])
        return nil if visited.include?('Listener')
        visited = visited + ['Listener']
        {
          listener_arn: 'listener_arn',
          port_ranges: PortRanges.default(visited),
          protocol: 'protocol',
          client_affinity: 'client_affinity',
        }
      end

      def self.stub(stub)
        stub ||= Types::Listener.new
        data = {}
        data['ListenerArn'] = stub[:listener_arn] unless stub[:listener_arn].nil?
        data['PortRanges'] = PortRanges.stub(stub[:port_ranges]) unless stub[:port_ranges].nil?
        data['Protocol'] = stub[:protocol] unless stub[:protocol].nil?
        data['ClientAffinity'] = stub[:client_affinity] unless stub[:client_affinity].nil?
        data
      end
    end

    # Operation Stubber for DeleteAccelerator
    class DeleteAccelerator
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteCustomRoutingAccelerator
    class DeleteCustomRoutingAccelerator
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteCustomRoutingEndpointGroup
    class DeleteCustomRoutingEndpointGroup
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteCustomRoutingListener
    class DeleteCustomRoutingListener
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteEndpointGroup
    class DeleteEndpointGroup
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteListener
    class DeleteListener
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DenyCustomRoutingTraffic
    class DenyCustomRoutingTraffic
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeprovisionByoipCidr
    class DeprovisionByoipCidr
      def self.default(visited=[])
        {
          byoip_cidr: ByoipCidr.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ByoipCidr'] = ByoipCidr.stub(stub[:byoip_cidr]) unless stub[:byoip_cidr].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeAccelerator
    class DescribeAccelerator
      def self.default(visited=[])
        {
          accelerator: Accelerator.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Accelerator'] = Accelerator.stub(stub[:accelerator]) unless stub[:accelerator].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeAcceleratorAttributes
    class DescribeAcceleratorAttributes
      def self.default(visited=[])
        {
          accelerator_attributes: AcceleratorAttributes.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AcceleratorAttributes'] = AcceleratorAttributes.stub(stub[:accelerator_attributes]) unless stub[:accelerator_attributes].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for AcceleratorAttributes
    class AcceleratorAttributes
      def self.default(visited=[])
        return nil if visited.include?('AcceleratorAttributes')
        visited = visited + ['AcceleratorAttributes']
        {
          flow_logs_enabled: false,
          flow_logs_s3_bucket: 'flow_logs_s3_bucket',
          flow_logs_s3_prefix: 'flow_logs_s3_prefix',
        }
      end

      def self.stub(stub)
        stub ||= Types::AcceleratorAttributes.new
        data = {}
        data['FlowLogsEnabled'] = stub[:flow_logs_enabled] unless stub[:flow_logs_enabled].nil?
        data['FlowLogsS3Bucket'] = stub[:flow_logs_s3_bucket] unless stub[:flow_logs_s3_bucket].nil?
        data['FlowLogsS3Prefix'] = stub[:flow_logs_s3_prefix] unless stub[:flow_logs_s3_prefix].nil?
        data
      end
    end

    # Operation Stubber for DescribeCustomRoutingAccelerator
    class DescribeCustomRoutingAccelerator
      def self.default(visited=[])
        {
          accelerator: CustomRoutingAccelerator.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Accelerator'] = CustomRoutingAccelerator.stub(stub[:accelerator]) unless stub[:accelerator].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeCustomRoutingAcceleratorAttributes
    class DescribeCustomRoutingAcceleratorAttributes
      def self.default(visited=[])
        {
          accelerator_attributes: CustomRoutingAcceleratorAttributes.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AcceleratorAttributes'] = CustomRoutingAcceleratorAttributes.stub(stub[:accelerator_attributes]) unless stub[:accelerator_attributes].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for CustomRoutingAcceleratorAttributes
    class CustomRoutingAcceleratorAttributes
      def self.default(visited=[])
        return nil if visited.include?('CustomRoutingAcceleratorAttributes')
        visited = visited + ['CustomRoutingAcceleratorAttributes']
        {
          flow_logs_enabled: false,
          flow_logs_s3_bucket: 'flow_logs_s3_bucket',
          flow_logs_s3_prefix: 'flow_logs_s3_prefix',
        }
      end

      def self.stub(stub)
        stub ||= Types::CustomRoutingAcceleratorAttributes.new
        data = {}
        data['FlowLogsEnabled'] = stub[:flow_logs_enabled] unless stub[:flow_logs_enabled].nil?
        data['FlowLogsS3Bucket'] = stub[:flow_logs_s3_bucket] unless stub[:flow_logs_s3_bucket].nil?
        data['FlowLogsS3Prefix'] = stub[:flow_logs_s3_prefix] unless stub[:flow_logs_s3_prefix].nil?
        data
      end
    end

    # Operation Stubber for DescribeCustomRoutingEndpointGroup
    class DescribeCustomRoutingEndpointGroup
      def self.default(visited=[])
        {
          endpoint_group: CustomRoutingEndpointGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['EndpointGroup'] = CustomRoutingEndpointGroup.stub(stub[:endpoint_group]) unless stub[:endpoint_group].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeCustomRoutingListener
    class DescribeCustomRoutingListener
      def self.default(visited=[])
        {
          listener: CustomRoutingListener.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Listener'] = CustomRoutingListener.stub(stub[:listener]) unless stub[:listener].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeEndpointGroup
    class DescribeEndpointGroup
      def self.default(visited=[])
        {
          endpoint_group: EndpointGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['EndpointGroup'] = EndpointGroup.stub(stub[:endpoint_group]) unless stub[:endpoint_group].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeListener
    class DescribeListener
      def self.default(visited=[])
        {
          listener: Listener.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Listener'] = Listener.stub(stub[:listener]) unless stub[:listener].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListAccelerators
    class ListAccelerators
      def self.default(visited=[])
        {
          accelerators: Accelerators.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Accelerators'] = Accelerators.stub(stub[:accelerators]) unless stub[:accelerators].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Accelerators
    class Accelerators
      def self.default(visited=[])
        return nil if visited.include?('Accelerators')
        visited = visited + ['Accelerators']
        [
          Accelerator.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Accelerator.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListByoipCidrs
    class ListByoipCidrs
      def self.default(visited=[])
        {
          byoip_cidrs: ByoipCidrs.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ByoipCidrs'] = ByoipCidrs.stub(stub[:byoip_cidrs]) unless stub[:byoip_cidrs].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ByoipCidrs
    class ByoipCidrs
      def self.default(visited=[])
        return nil if visited.include?('ByoipCidrs')
        visited = visited + ['ByoipCidrs']
        [
          ByoipCidr.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ByoipCidr.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListCustomRoutingAccelerators
    class ListCustomRoutingAccelerators
      def self.default(visited=[])
        {
          accelerators: CustomRoutingAccelerators.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Accelerators'] = CustomRoutingAccelerators.stub(stub[:accelerators]) unless stub[:accelerators].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for CustomRoutingAccelerators
    class CustomRoutingAccelerators
      def self.default(visited=[])
        return nil if visited.include?('CustomRoutingAccelerators')
        visited = visited + ['CustomRoutingAccelerators']
        [
          CustomRoutingAccelerator.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << CustomRoutingAccelerator.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListCustomRoutingEndpointGroups
    class ListCustomRoutingEndpointGroups
      def self.default(visited=[])
        {
          endpoint_groups: CustomRoutingEndpointGroups.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['EndpointGroups'] = CustomRoutingEndpointGroups.stub(stub[:endpoint_groups]) unless stub[:endpoint_groups].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for CustomRoutingEndpointGroups
    class CustomRoutingEndpointGroups
      def self.default(visited=[])
        return nil if visited.include?('CustomRoutingEndpointGroups')
        visited = visited + ['CustomRoutingEndpointGroups']
        [
          CustomRoutingEndpointGroup.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << CustomRoutingEndpointGroup.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListCustomRoutingListeners
    class ListCustomRoutingListeners
      def self.default(visited=[])
        {
          listeners: CustomRoutingListeners.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Listeners'] = CustomRoutingListeners.stub(stub[:listeners]) unless stub[:listeners].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for CustomRoutingListeners
    class CustomRoutingListeners
      def self.default(visited=[])
        return nil if visited.include?('CustomRoutingListeners')
        visited = visited + ['CustomRoutingListeners']
        [
          CustomRoutingListener.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << CustomRoutingListener.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListCustomRoutingPortMappings
    class ListCustomRoutingPortMappings
      def self.default(visited=[])
        {
          port_mappings: PortMappings.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PortMappings'] = PortMappings.stub(stub[:port_mappings]) unless stub[:port_mappings].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for PortMappings
    class PortMappings
      def self.default(visited=[])
        return nil if visited.include?('PortMappings')
        visited = visited + ['PortMappings']
        [
          PortMapping.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << PortMapping.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PortMapping
    class PortMapping
      def self.default(visited=[])
        return nil if visited.include?('PortMapping')
        visited = visited + ['PortMapping']
        {
          accelerator_port: 1,
          endpoint_group_arn: 'endpoint_group_arn',
          endpoint_id: 'endpoint_id',
          destination_socket_address: SocketAddress.default(visited),
          protocols: CustomRoutingProtocols.default(visited),
          destination_traffic_state: 'destination_traffic_state',
        }
      end

      def self.stub(stub)
        stub ||= Types::PortMapping.new
        data = {}
        data['AcceleratorPort'] = stub[:accelerator_port] unless stub[:accelerator_port].nil?
        data['EndpointGroupArn'] = stub[:endpoint_group_arn] unless stub[:endpoint_group_arn].nil?
        data['EndpointId'] = stub[:endpoint_id] unless stub[:endpoint_id].nil?
        data['DestinationSocketAddress'] = SocketAddress.stub(stub[:destination_socket_address]) unless stub[:destination_socket_address].nil?
        data['Protocols'] = CustomRoutingProtocols.stub(stub[:protocols]) unless stub[:protocols].nil?
        data['DestinationTrafficState'] = stub[:destination_traffic_state] unless stub[:destination_traffic_state].nil?
        data
      end
    end

    # List Stubber for CustomRoutingProtocols
    class CustomRoutingProtocols
      def self.default(visited=[])
        return nil if visited.include?('CustomRoutingProtocols')
        visited = visited + ['CustomRoutingProtocols']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SocketAddress
    class SocketAddress
      def self.default(visited=[])
        return nil if visited.include?('SocketAddress')
        visited = visited + ['SocketAddress']
        {
          ip_address: 'ip_address',
          port: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::SocketAddress.new
        data = {}
        data['IpAddress'] = stub[:ip_address] unless stub[:ip_address].nil?
        data['Port'] = stub[:port] unless stub[:port].nil?
        data
      end
    end

    # Operation Stubber for ListCustomRoutingPortMappingsByDestination
    class ListCustomRoutingPortMappingsByDestination
      def self.default(visited=[])
        {
          destination_port_mappings: DestinationPortMappings.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DestinationPortMappings'] = DestinationPortMappings.stub(stub[:destination_port_mappings]) unless stub[:destination_port_mappings].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DestinationPortMappings
    class DestinationPortMappings
      def self.default(visited=[])
        return nil if visited.include?('DestinationPortMappings')
        visited = visited + ['DestinationPortMappings']
        [
          DestinationPortMapping.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DestinationPortMapping.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DestinationPortMapping
    class DestinationPortMapping
      def self.default(visited=[])
        return nil if visited.include?('DestinationPortMapping')
        visited = visited + ['DestinationPortMapping']
        {
          accelerator_arn: 'accelerator_arn',
          accelerator_socket_addresses: SocketAddresses.default(visited),
          endpoint_group_arn: 'endpoint_group_arn',
          endpoint_id: 'endpoint_id',
          endpoint_group_region: 'endpoint_group_region',
          destination_socket_address: SocketAddress.default(visited),
          ip_address_type: 'ip_address_type',
          destination_traffic_state: 'destination_traffic_state',
        }
      end

      def self.stub(stub)
        stub ||= Types::DestinationPortMapping.new
        data = {}
        data['AcceleratorArn'] = stub[:accelerator_arn] unless stub[:accelerator_arn].nil?
        data['AcceleratorSocketAddresses'] = SocketAddresses.stub(stub[:accelerator_socket_addresses]) unless stub[:accelerator_socket_addresses].nil?
        data['EndpointGroupArn'] = stub[:endpoint_group_arn] unless stub[:endpoint_group_arn].nil?
        data['EndpointId'] = stub[:endpoint_id] unless stub[:endpoint_id].nil?
        data['EndpointGroupRegion'] = stub[:endpoint_group_region] unless stub[:endpoint_group_region].nil?
        data['DestinationSocketAddress'] = SocketAddress.stub(stub[:destination_socket_address]) unless stub[:destination_socket_address].nil?
        data['IpAddressType'] = stub[:ip_address_type] unless stub[:ip_address_type].nil?
        data['DestinationTrafficState'] = stub[:destination_traffic_state] unless stub[:destination_traffic_state].nil?
        data
      end
    end

    # List Stubber for SocketAddresses
    class SocketAddresses
      def self.default(visited=[])
        return nil if visited.include?('SocketAddresses')
        visited = visited + ['SocketAddresses']
        [
          SocketAddress.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << SocketAddress.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListEndpointGroups
    class ListEndpointGroups
      def self.default(visited=[])
        {
          endpoint_groups: EndpointGroups.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['EndpointGroups'] = EndpointGroups.stub(stub[:endpoint_groups]) unless stub[:endpoint_groups].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for EndpointGroups
    class EndpointGroups
      def self.default(visited=[])
        return nil if visited.include?('EndpointGroups')
        visited = visited + ['EndpointGroups']
        [
          EndpointGroup.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << EndpointGroup.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListListeners
    class ListListeners
      def self.default(visited=[])
        {
          listeners: Listeners.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Listeners'] = Listeners.stub(stub[:listeners]) unless stub[:listeners].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Listeners
    class Listeners
      def self.default(visited=[])
        return nil if visited.include?('Listeners')
        visited = visited + ['Listeners']
        [
          Listener.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Listener.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Tags
    class Tags
      def self.default(visited=[])
        return nil if visited.include?('Tags')
        visited = visited + ['Tags']
        [
          Tag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Tag.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Tag
    class Tag
      def self.default(visited=[])
        return nil if visited.include?('Tag')
        visited = visited + ['Tag']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::Tag.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for ProvisionByoipCidr
    class ProvisionByoipCidr
      def self.default(visited=[])
        {
          byoip_cidr: ByoipCidr.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ByoipCidr'] = ByoipCidr.stub(stub[:byoip_cidr]) unless stub[:byoip_cidr].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RemoveCustomRoutingEndpoints
    class RemoveCustomRoutingEndpoints
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UntagResource
    class UntagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateAccelerator
    class UpdateAccelerator
      def self.default(visited=[])
        {
          accelerator: Accelerator.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Accelerator'] = Accelerator.stub(stub[:accelerator]) unless stub[:accelerator].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateAcceleratorAttributes
    class UpdateAcceleratorAttributes
      def self.default(visited=[])
        {
          accelerator_attributes: AcceleratorAttributes.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AcceleratorAttributes'] = AcceleratorAttributes.stub(stub[:accelerator_attributes]) unless stub[:accelerator_attributes].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateCustomRoutingAccelerator
    class UpdateCustomRoutingAccelerator
      def self.default(visited=[])
        {
          accelerator: CustomRoutingAccelerator.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Accelerator'] = CustomRoutingAccelerator.stub(stub[:accelerator]) unless stub[:accelerator].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateCustomRoutingAcceleratorAttributes
    class UpdateCustomRoutingAcceleratorAttributes
      def self.default(visited=[])
        {
          accelerator_attributes: CustomRoutingAcceleratorAttributes.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AcceleratorAttributes'] = CustomRoutingAcceleratorAttributes.stub(stub[:accelerator_attributes]) unless stub[:accelerator_attributes].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateCustomRoutingListener
    class UpdateCustomRoutingListener
      def self.default(visited=[])
        {
          listener: CustomRoutingListener.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Listener'] = CustomRoutingListener.stub(stub[:listener]) unless stub[:listener].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateEndpointGroup
    class UpdateEndpointGroup
      def self.default(visited=[])
        {
          endpoint_group: EndpointGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['EndpointGroup'] = EndpointGroup.stub(stub[:endpoint_group]) unless stub[:endpoint_group].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateListener
    class UpdateListener
      def self.default(visited=[])
        {
          listener: Listener.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Listener'] = Listener.stub(stub[:listener]) unless stub[:listener].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for WithdrawByoipCidr
    class WithdrawByoipCidr
      def self.default(visited=[])
        {
          byoip_cidr: ByoipCidr.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ByoipCidr'] = ByoipCidr.stub(stub[:byoip_cidr]) unless stub[:byoip_cidr].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
